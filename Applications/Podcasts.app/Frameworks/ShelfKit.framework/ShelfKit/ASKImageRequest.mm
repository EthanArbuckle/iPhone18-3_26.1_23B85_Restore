@interface ASKImageRequest
+ (NSArray)searchBundles;
+ (void)setSearchBundles:(id)a3;
- (ASKImageRequest)init;
- (ASKImageRequest)initWithURLRequest:(id)a3 dataConsumer:(id)a4 delegate:(id)a5;
- (ASKImageRequestDelegate)delegate;
- (BOOL)isMonogramRequest;
- (BOOL)isResourceRequest;
- (id)description;
- (id)makeLoadOperation;
- (unint64_t)cacheOptions;
- (void)didLoadResource:(id)a3 error:(id)a4;
@end

@implementation ASKImageRequest

- (ASKImageRequest)initWithURLRequest:(id)a3 dataConsumer:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ASKImageRequest;
  v11 = [(ASKResourceRequest *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    urlRequest = v11->_urlRequest;
    v11->_urlRequest = v12;

    objc_storeStrong(&v11->_dataConsumer, a4);
    objc_storeWeak(&v11->_delegate, v10);
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
  v5 = [(ASKImageRequest *)self urlRequest];
  v6 = [(ASKImageRequest *)self dataConsumer];
  v7 = [NSString stringWithFormat:@"<%@:%p urlRequest = %@, dataConsumer = %@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isResourceRequest
{
  v3 = +[PUIArtworkURLScheme resource];
  v4 = [(ASKImageRequest *)self urlRequest];
  v5 = [v4 URL];
  v6 = [v5 scheme];
  v7 = [v3 isEqual:v6];

  return v7;
}

- (BOOL)isMonogramRequest
{
  v3 = +[PUIArtworkURLScheme monogram];
  v4 = [(ASKImageRequest *)self urlRequest];
  v5 = [v4 URL];
  v6 = [v5 scheme];
  v7 = [v3 isEqual:v6];

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

+ (void)setSearchBundles:(id)a3
{
  _searchBundles = [a3 copy];

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
    v4 = [(ASKImageRequest *)self urlRequest];
    v5 = [v4 URL];
    v6 = [v5 host];
    v7 = [objc_opt_class() searchBundles];
    v8 = [(ASKLoadBundleResourceOperation *)v3 initWithResourceName:v6 searchBundles:v7];

LABEL_5:
    goto LABEL_7;
  }

  if ([(ASKImageRequest *)self isMonogramRequest])
  {
    v9 = [ASKLoadMonogramResourceOperation alloc];
    v4 = [(ASKImageRequest *)self urlRequest];
    v5 = [v4 URL];
    v6 = [(ASKImageRequest *)self dataConsumer];
    [v6 size];
    v8 = [(ASKLoadMonogramResourceOperation *)v9 initWithMonogramResourceURL:v5 size:?];
    goto LABEL_5;
  }

  v10 = [ASKLoadImageResourceOperation alloc];
  v4 = [(ASKImageRequest *)self urlRequest];
  v5 = [(ASKImageRequest *)self dataConsumer];
  v8 = [(ASKLoadImageResourceOperation *)v10 initWithURLRequest:v4 dataConsumer:v5];
LABEL_7:

  return v8;
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