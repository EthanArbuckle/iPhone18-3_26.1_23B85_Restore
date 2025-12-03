@interface ASKImageRequest
- (ASKImageRequest)init;
- (ASKImageRequest)initWithURLRequest:(id)request loadOperation:(id)operation dataConsumer:(id)consumer delegate:(id)delegate;
- (ASKImageRequestDelegate)delegate;
- (id)description;
- (void)didLoadResource:(id)resource error:(id)error;
@end

@implementation ASKImageRequest

- (ASKImageRequest)initWithURLRequest:(id)request loadOperation:(id)operation dataConsumer:(id)consumer delegate:(id)delegate
{
  requestCopy = request;
  operationCopy = operation;
  consumerCopy = consumer;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = ASKImageRequest;
  v14 = [(ASKResourceRequest *)&v18 init];
  if (v14)
  {
    v15 = [requestCopy copy];
    urlRequest = v14->_urlRequest;
    v14->_urlRequest = v15;

    objc_storeStrong(&v14->_loadOperation, operation);
    objc_storeStrong(&v14->_dataConsumer, consumer);
    objc_storeWeak(&v14->_delegate, delegateCopy);
  }

  return v14;
}

- (ASKImageRequest)init
{
  [(ASKImageRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  urlRequest = [(ASKImageRequest *)self urlRequest];
  loadOperation = [(ASKImageRequest *)self loadOperation];
  dataConsumer = [(ASKImageRequest *)self dataConsumer];
  v9 = [v3 stringWithFormat:@"<%@:%p urlRequest = %@, loadOperation = %@, dataConsumer = %@>", v5, self, urlRequest, loadOperation, dataConsumer];

  return v9;
}

- (void)didLoadResource:(id)resource error:(id)error
{
  resourceCopy = resource;
  errorCopy = error;
  delegate = [(ASKImageRequest *)self delegate];
  v8 = delegate;
  if (errorCopy)
  {
    [delegate imageRequest:self didFailWithError:errorCopy];
  }

  else
  {
    [delegate imageRequest:self didLoadImage:resourceCopy];
  }
}

- (ASKImageRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end