@interface SFAddToHomeScreenRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (SFAddToHomeScreenRemoteViewControllerDelegate)delegate;
- (void)serviceViewControllerDidFinishWithResult:(BOOL)a3;
@end

@implementation SFAddToHomeScreenRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"SFAddToHomeScreenServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:v3];

  return v4;
}

- (void)serviceViewControllerDidFinishWithResult:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self didFinishWithResult:v3];
}

- (SFAddToHomeScreenRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end