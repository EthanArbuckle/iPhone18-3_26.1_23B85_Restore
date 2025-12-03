@interface _FPFilePresenterObserver
- (NSFileProviderManager)parentConnection;
- (void)observePresentedFilesDidChange:(id)change;
@end

@implementation _FPFilePresenterObserver

- (void)observePresentedFilesDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_parentConnection);
  [WeakRetained setPresentedFiles:changeCopy];
}

- (NSFileProviderManager)parentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_parentConnection);

  return WeakRetained;
}

@end