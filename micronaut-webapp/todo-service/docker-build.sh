#!/bin/sh
image_name=todo-service-native
docker_file=Dockerfile

case "$1" in
    graalvm* )
    image_name=todo-service-graalvm
    docker_file=Dockerfile-graalvm
    ;;
    hotspot*)
    image_name=todo-service-hotspot
    docker_file=Dockerfile-hotspot
    ;;
esac

docker build -f $docker_file .  -t $image_name
echo
echo
echo "To run the docker container execute:"
echo "    $ docker run -p 8080:8080 $image_name"

