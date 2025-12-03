@interface MPAVErrorResolverBlockHandler
- (MPAVErrorResolverBlockHandler)initWithErrorResolver:(id)resolver;
- (void)errorResolver:(id)resolver didResolveError:(id)error withResolution:(int64_t)resolution;
- (void)resolveError:(id)error;
@end

@implementation MPAVErrorResolverBlockHandler

- (void)resolveError:(id)error
{
  objc_storeStrong(&self->_strongSelf, self);
  errorCopy = error;
  [(MPAVErrorResolver *)self->_errorResolver resolveError:errorCopy];
}

- (void)errorResolver:(id)resolver didResolveError:(id)error withResolution:(int64_t)resolution
{
  resolutionHandler = self->_resolutionHandler;
  if (resolutionHandler)
  {
    resolutionHandler[2](resolutionHandler, resolution, resolver, error);
    v7 = self->_resolutionHandler;
    self->_resolutionHandler = 0;

    strongSelf = self->_strongSelf;
    self->_strongSelf = 0;
  }
}

- (MPAVErrorResolverBlockHandler)initWithErrorResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = MPAVErrorResolverBlockHandler;
  v6 = [(MPAVErrorResolverBlockHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_errorResolver, resolver);
    [(MPAVErrorResolver *)v7->_errorResolver setDelegate:v7];
  }

  return v7;
}

@end