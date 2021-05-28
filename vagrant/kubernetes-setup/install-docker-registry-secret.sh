#!/bin/bash

NAMESPACE=jenkins-system
SECRET_NAME=regcred
DOCKER_REGISTRY_URL=https://index.docker.io/v2/
DOCKER_REGISTRY_USERNAME=test
DOCKER_REGISTRY_PASSWORD=test
DOCKER_REGISTRY_EMAIL=test@gmail.com

# Functions #########################################################################

create-docker-registry-secret(){
kubectl -n {NAMESPACE} create secret docker-registry ${SECRET_NAME} --docker-server=${DOCKER_REGISTRY_URL} --docker-username=${DOCKER_REGISTRY_USERNAME} --docker-password=${DOCKER_REGISTRY_PASSWORD} --docker-email=${DOCKER_REGISTRY_EMAIL}
}


# Let's go ###################################################################################
create-docker-registry-secret