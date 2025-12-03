@interface HUCCRemoteDashboardViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (HUCCRemoteDashboardDelegate)delegate;
- (void)authorizeIfLocked;
- (void)requestDismissal;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation HUCCRemoteDashboardViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"HCSRemoteViewController" fromServiceWithBundleIdentifier:@"com.apple.Home.HomeControlService" connectionHandler:handlerCopy];

  return v4;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(HUCCRemoteDashboardViewController *)self delegate];
  [delegate remoteDashboard:self viewServiceDidTerminateWithError:errorCopy];
}

- (void)authorizeIfLocked
{
  delegate = [(HUCCRemoteDashboardViewController *)self delegate];
  [delegate requestLockAuthenticationForRemoteDashboard:self];
}

- (void)requestDismissal
{
  delegate = [(HUCCRemoteDashboardViewController *)self delegate];
  [delegate requestDismissal];
}

- (HUCCRemoteDashboardDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end