@interface SFPasswordRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (SFPasswordRemoteViewControllerDelegate)delegate;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)willDismissServiceViewController;
@end

@implementation SFPasswordRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_class();
  passwordServiceViewControllerName = [self passwordServiceViewControllerName];
  v7 = [v5 requestViewController:passwordServiceViewControllerName fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:handlerCopy];

  return v7;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self viewServiceDidTerminateWithError:errorCopy];
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