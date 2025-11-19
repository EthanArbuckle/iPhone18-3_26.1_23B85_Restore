@interface HUCCRemoteDashboardViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (HUCCRemoteDashboardDelegate)delegate;
- (void)authorizeIfLocked;
- (void)requestDismissal;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation HUCCRemoteDashboardViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"HCSRemoteViewController" fromServiceWithBundleIdentifier:@"com.apple.Home.HomeControlService" connectionHandler:v3];

  return v4;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = [(HUCCRemoteDashboardViewController *)self delegate];
  [v5 remoteDashboard:self viewServiceDidTerminateWithError:v4];
}

- (void)authorizeIfLocked
{
  v3 = [(HUCCRemoteDashboardViewController *)self delegate];
  [v3 requestLockAuthenticationForRemoteDashboard:self];
}

- (void)requestDismissal
{
  v2 = [(HUCCRemoteDashboardViewController *)self delegate];
  [v2 requestDismissal];
}

- (HUCCRemoteDashboardDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end