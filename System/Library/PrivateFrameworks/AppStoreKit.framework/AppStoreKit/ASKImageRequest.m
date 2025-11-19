@interface ASKImageRequest
- (ASKImageRequest)init;
- (ASKImageRequest)initWithURLRequest:(id)a3 loadOperation:(id)a4 dataConsumer:(id)a5 delegate:(id)a6;
- (ASKImageRequestDelegate)delegate;
- (id)description;
- (void)didLoadResource:(id)a3 error:(id)a4;
@end

@implementation ASKImageRequest

- (ASKImageRequest)initWithURLRequest:(id)a3 loadOperation:(id)a4 dataConsumer:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = ASKImageRequest;
  v14 = [(ASKResourceRequest *)&v18 init];
  if (v14)
  {
    v15 = [v10 copy];
    urlRequest = v14->_urlRequest;
    v14->_urlRequest = v15;

    objc_storeStrong(&v14->_loadOperation, a4);
    objc_storeStrong(&v14->_dataConsumer, a5);
    objc_storeWeak(&v14->_delegate, v13);
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
  v6 = [(ASKImageRequest *)self urlRequest];
  v7 = [(ASKImageRequest *)self loadOperation];
  v8 = [(ASKImageRequest *)self dataConsumer];
  v9 = [v3 stringWithFormat:@"<%@:%p urlRequest = %@, loadOperation = %@, dataConsumer = %@>", v5, self, v6, v7, v8];

  return v9;
}

- (void)didLoadResource:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ASKImageRequest *)self delegate];
  v8 = v7;
  if (v6)
  {
    [v7 imageRequest:self didFailWithError:v6];
  }

  else
  {
    [v7 imageRequest:self didLoadImage:v9];
  }
}

- (ASKImageRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end