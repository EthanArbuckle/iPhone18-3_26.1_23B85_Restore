@interface SFDefaultBrowserRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (SFDefaultBrowserRemoteViewControllerDelegate)delegate;
- (void)serviceViewControllerDidFinishWithResult:(int64_t)a3;
- (void)serviceViewControllerFailed;
@end

@implementation SFDefaultBrowserRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"SFDefaultBrowserServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:v3];

  return v4;
}

- (void)serviceViewControllerDidFinishWithResult:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self didFinishWithResult:a3];
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