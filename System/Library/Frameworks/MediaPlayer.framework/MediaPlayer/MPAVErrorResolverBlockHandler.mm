@interface MPAVErrorResolverBlockHandler
- (MPAVErrorResolverBlockHandler)initWithErrorResolver:(id)a3;
- (void)errorResolver:(id)a3 didResolveError:(id)a4 withResolution:(int64_t)a5;
- (void)resolveError:(id)a3;
@end

@implementation MPAVErrorResolverBlockHandler

- (void)resolveError:(id)a3
{
  objc_storeStrong(&self->_strongSelf, self);
  v5 = a3;
  [(MPAVErrorResolver *)self->_errorResolver resolveError:v5];
}

- (void)errorResolver:(id)a3 didResolveError:(id)a4 withResolution:(int64_t)a5
{
  resolutionHandler = self->_resolutionHandler;
  if (resolutionHandler)
  {
    resolutionHandler[2](resolutionHandler, a5, a3, a4);
    v7 = self->_resolutionHandler;
    self->_resolutionHandler = 0;

    strongSelf = self->_strongSelf;
    self->_strongSelf = 0;
  }
}

- (MPAVErrorResolverBlockHandler)initWithErrorResolver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPAVErrorResolverBlockHandler;
  v6 = [(MPAVErrorResolverBlockHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_errorResolver, a3);
    [(MPAVErrorResolver *)v7->_errorResolver setDelegate:v7];
  }

  return v7;
}

@end