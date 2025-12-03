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
  v4 = objc_opt_class();
  v6 = objc_msgSend_requestViewController_fromServiceWithBundleIdentifier_connectionHandler_(v4, v5, @"HCSRemoteViewController", @"com.apple.Home.HomeControlService", handlerCopy);

  return v6;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v8 = objc_msgSend_delegate(self, v5, v6);
  objc_msgSend_remoteDashboard_viewServiceDidTerminateWithError_(v8, v7, self, errorCopy);
}

- (void)authorizeIfLocked
{
  v5 = objc_msgSend_delegate(self, a2, v2);
  objc_msgSend_requestLockAuthenticationForRemoteDashboard_(v5, v4, self);
}

- (void)requestDismissal
{
  v5 = objc_msgSend_delegate(self, a2, v2);
  objc_msgSend_requestDismissal(v5, v3, v4);
}

- (HUCCRemoteDashboardDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end