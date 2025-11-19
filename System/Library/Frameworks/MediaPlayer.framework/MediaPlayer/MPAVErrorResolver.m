@interface MPAVErrorResolver
- (MPAVErrorResolverDelegate)delegate;
- (void)sendDidResolveError:(id)a3 withResolution:(int64_t)a4;
@end

@implementation MPAVErrorResolver

- (MPAVErrorResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendDidResolveError:(id)a3 withResolution:(int64_t)a4
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained errorResolver:self didResolveError:v7 withResolution:a4];
  }
}

@end