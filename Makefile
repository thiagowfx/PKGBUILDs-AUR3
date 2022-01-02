# Abort if urlwatch is not installed.
ifeq (, $(shell which urlwatch))
  $(error "No urlwatch in $$PATH, install it first")
endif

setup:
	aurpublish setup

	# https://github.com/eli-schwartz/aurpublish/issues/21
	git config --add core.hooksPath .git/hooks

urlwatch:
	urlwatch --urls urlwatch.yml

.PHONY: setup urlwatch
