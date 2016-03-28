#!/usr/bin/env bash
rm /tmp/dashed_unittests.db
rm -f .coverage
export DASHED_CONFIG=tests.dashed_test_config
dashed/bin/dashed db upgrade
python setup.py nosetests
#python tests/core_tests.py
