#!/usr/bin/env bash

# generate code coverage
./gradlew clean jacocoTestReport

find . -name "*coverage.ec" -print

# upload jacoco report to codecov
bash <(curl -s https://codecov.io/bash) -t "$CODECOV_TOKEN"
