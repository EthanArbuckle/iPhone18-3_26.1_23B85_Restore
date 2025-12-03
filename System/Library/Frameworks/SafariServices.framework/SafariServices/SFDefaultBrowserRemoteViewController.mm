@interface SFDefaultBrowserRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (SFDefaultBrowserRemoteViewControllerDelegate)delegate;
- (void)serviceViewControllerDidFinishWithResult:(int64_t)result;
- (void)serviceViewControllerFailed;
@end

@implementation SFDefaultBrowserRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"SFDefaultBrowserServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:handlerCopy];

  return v4;
}

- (void)serviceViewControllerDidFinishWithResult:(int64_t)result
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self didFinishWithResult:result];
}

- (void)serviceViewControllerFailed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewControllerFailed:self];
}

- (SFDefaultBrowserRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end