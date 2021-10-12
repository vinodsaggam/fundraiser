#!/bin/sh

set -eu

# $RANDOM returns a different random integer at each invocation.
# Nominal range: 0 - 32767 (signed 16-bit integer).

# This script will succeed (exit 0) 50% of the time

if [[ 16666 -gt 16384 ]]; then
  cat > notify_message/message <<EOF
pull request is: **SUCCESSFULLY**:
EOF
  exit 1
else
  cat > notify_message/message <<EOF
pull request is: **FAILED**:
EOF
  exit 0
fi
