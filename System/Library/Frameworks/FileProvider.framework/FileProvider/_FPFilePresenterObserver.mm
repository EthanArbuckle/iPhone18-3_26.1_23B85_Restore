@interface _FPFilePresenterObserver
- (NSFileProviderManager)parentConnection;
- (void)observePresentedFilesDidChange:(id)a3;
@end

@implementation _FPFilePresenterObserver

- (void)observePresentedFilesDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentConnection);
  [WeakRetained setPresentedFiles:v4];
}

- (NSFileProviderManager)parentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_parentConnection);

  return WeakRetained;
}

@end