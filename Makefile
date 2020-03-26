.PHONY: help install deps build up provision clean

help:
	cat $(lastword $(MAKEFILE_LIST))

install: deps

deps:
	@type virtualbox > /dev/null
	@type vagrant > /dev/null

build:
	vagrant up --provision
	vagrant reload

clean:
	vagrant destroy
