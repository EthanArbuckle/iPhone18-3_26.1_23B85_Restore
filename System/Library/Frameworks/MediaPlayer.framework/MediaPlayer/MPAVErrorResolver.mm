@interface MPAVErrorResolver
- (MPAVErrorResolverDelegate)delegate;
- (void)sendDidResolveError:(id)error withResolution:(int64_t)resolution;
@end

@implementation MPAVErrorResolver

- (MPAVErrorResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendDidResolveError:(id)error withResolution:(int64_t)resolution
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained errorResolver:self didResolveError:errorCopy withResolution:resolution];
  }
}

@end