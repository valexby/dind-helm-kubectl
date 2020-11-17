FROM docker:19.03.12
ADD https://get.helm.sh/helm-v3.4.1-linux-amd64.tar.gz /tmp/helm.tar.gz
ADD https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl /tmp/kubectl
RUN chmod +x /tmp/kubectl && \
    mv /tmp/kubectl /usr/local/bin/kubectl && \
    tar -zxvf /tmp/helm.tar.gz && \
    mv /linux-amd64/helm /usr/local/bin/helm && \
    rm -r /linux-amd64 /tmp/helm.tar.gz
