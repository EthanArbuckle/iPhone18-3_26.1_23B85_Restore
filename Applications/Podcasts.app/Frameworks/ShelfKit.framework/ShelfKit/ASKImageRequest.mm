@interface ASKImageRequest
+ (NSArray)searchBundles;
+ (void)setSearchBundles:(id)bundles;
- (ASKImageRequest)init;
- (ASKImageRequest)initWithURLRequest:(id)request dataConsumer:(id)consumer delegate:(id)delegate;
- (ASKImageRequestDelegate)delegate;
- (BOOL)isMonogramRequest;
- (BOOL)isResourceRequest;
- (id)description;
- (id)makeLoadOperation;
- (unint64_t)cacheOptions;
- (void)didLoadResource:(id)resource error:(id)error;
@end

@implementation ASKImageRequest

- (ASKImageRequest)initWithURLRequest:(id)request dataConsumer:(id)consumer delegate:(id)delegate
{
  requestCopy = request;
  consumerCopy = consumer;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = ASKImageRequest;
  v11 = [(ASKResourceRequest *)&v15 init];
  if (v11)
  {
    v12 = [requestCopy copy];
    urlRequest = v11->_urlRequest;
    v11->_urlRequest = v12;

    objc_storeStrong(&v11->_dataConsumer, consumer);
    objc_storeWeak(&v11->_delegate, delegateCopy);
  }

  return v11;
}

- (ASKImageRequest)init
{
  [(ASKImageRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  urlRequest = [(ASKImageRequest *)self urlRequest];
  dataConsumer = [(ASKImageRequest *)self dataConsumer];
  v7 = [NSString stringWithFormat:@"<%@:%p urlRequest = %@, dataConsumer = %@>", v4, self, urlRequest, dataConsumer];

  return v7;
}

- (BOOL)isResourceRequest
{
  v3 = +[PUIArtworkURLScheme resource];
  urlRequest = [(ASKImageRequest *)self urlRequest];
  v5 = [urlRequest URL];
  scheme = [v5 scheme];
  v7 = [v3 isEqual:scheme];

  return v7;
}

- (BOOL)isMonogramRequest
{
  v3 = +[PUIArtworkURLScheme monogram];
  urlRequest = [(ASKImageRequest *)self urlRequest];
  v5 = [urlRequest URL];
  scheme = [v5 scheme];
  v7 = [v3 isEqual:scheme];

  return v7;
}

- (unint64_t)cacheOptions
{
  if ([(ASKImageRequest *)self isResourceRequest])
  {
    return 6;
  }

  else
  {
    return 2;
  }
}

+ (void)setSearchBundles:(id)bundles
{
  _searchBundles = [bundles copy];

  _objc_release_x1();
}

+ (NSArray)searchBundles
{
  if (_searchBundles)
  {
    v2 = [_searchBundles copy];
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v6[0] = v3;
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.ShelfKit"];
    v6[1] = v4;
    v2 = [NSArray arrayWithObjects:v6 count:2];
  }

  return v2;
}

- (id)makeLoadOperation
{
  if ([(ASKImageRequest *)self isResourceRequest])
  {
    v3 = [ASKLoadBundleResourceOperation alloc];
    urlRequest = [(ASKImageRequest *)self urlRequest];
    dataConsumer = [urlRequest URL];
    host = [dataConsumer host];
    searchBundles = [objc_opt_class() searchBundles];
    v8 = [(ASKLoadBundleResourceOperation *)v3 initWithResourceName:host searchBundles:searchBundles];

LABEL_5:
    goto LABEL_7;
  }

  if ([(ASKImageRequest *)self isMonogramRequest])
  {
    v9 = [ASKLoadMonogramResourceOperation alloc];
    urlRequest = [(ASKImageRequest *)self urlRequest];
    dataConsumer = [urlRequest URL];
    host = [(ASKImageRequest *)self dataConsumer];
    [host size];
    v8 = [(ASKLoadMonogramResourceOperation *)v9 initWithMonogramResourceURL:dataConsumer size:?];
    goto LABEL_5;
  }

  v10 = [ASKLoadImageResourceOperation alloc];
  urlRequest = [(ASKImageRequest *)self urlRequest];
  dataConsumer = [(ASKImageRequest *)self dataConsumer];
  v8 = [(ASKLoadImageResourceOperation *)v10 initWithURLRequest:urlRequest dataConsumer:dataConsumer];
LABEL_7:

  return v8;
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