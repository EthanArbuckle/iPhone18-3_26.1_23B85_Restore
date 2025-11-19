@interface SFPasswordRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (SFPasswordRemoteViewControllerDelegate)delegate;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)willDismissServiceViewController;
@end

@implementation SFPasswordRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 passwordServiceViewControllerName];
  v7 = [v5 requestViewController:v6 fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:v4];

  return v7;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self viewServiceDidTerminateWithError:v4];
}

- (void)willDismissServiceViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewControllerWillDismiss:self];
}

- (SFPasswordRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end