#!/usr/bin/env bash

export WORKING_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)/src

export LIBSIG_VERSION="3.0.3"
export CARES_VERSION="v1.34.0"
export CURL_VERSION="8.14.1"
export MKTORRENT_VERSION="v1.1"
export GEOIP2_PHPEXT_VERSION="1.3.1"

export LIBTORRENT_VERSION="stable-0.15"
# export LIBTORRENT_VERSION=v0.16.0
export RTORRENT_VERSION="v0.16.0"
export DUMP_TORRENT_VERSION="v1.7.0"

# c-ares
export BRANCH="${CARES_VERSION}"
export REPO_URL="https://github.com/c-ares/c-ares.git"
export SRC_DIR="${WORKING_DIR}/src-c-are-${BRANCH}"
git clone -b "${BRANCH}" "${REPO_URL}" "$SRC_DIR"
# git --work-tree="${SRC_DIR}" --git-dir="${SRC_DIR}/.git" switch --detach "${BRANCH}"
# git --work-tree="${SRC_DIR}" --git-dir="${SRC_DIR}/.git" reset --hard "${BRANCH}"

exit

# libtorrent
export BRANCH="${LIBTORRENT_VERSION}"
export REPO_URL="https://github.com/rakshasa/libtorrent.git"
export SRC_DIR="${WORKING_DIR}/src-libtorrent-${BRANCH}"
git clone -b "${BRANCH}" "${REPO_URL}" "$SRC_DIR"
git --work-tree="${SRC_DIR}" --git-dir="${SRC_DIR}/.git" reset --hard "${BRANCH}"

# rtorrent
export BRANCH="${RTORRENT_VERSION}"
export REPO_URL="https://github.com/rakshasa/rtorrent.git"
export SRC_DIR="${WORKING_DIR}/src-rtorrent-${BRANCH}"
git clone -b "${RTORRENT_VERSION}" "${REPO_URL}" "${SRC_DIR}"
git --work-tree="${SRC_DIR}" --git-dir="${SRC_DIR}/.git" reset --hard "${BRANCH}"

#dump torrent
export BRANCH="${DUMP_TORRENT_VERSION}"
export REPO_URL="https://github.com/tomcdj71/dumptorrent.git"
export SRC_DIR="${WORKING_DIR}/src-dumptorrent-${BRANCH}"
git clone -b "${RTORRENT_VERSION}" "${REPO_URL}" "${SRC_DIR}"
git --work-tree="${SRC_DIR}" --git-dir="${SRC_DIR}/.git" reset --hard "${BRANCH}"
