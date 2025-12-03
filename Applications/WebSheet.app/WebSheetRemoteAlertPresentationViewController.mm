@interface WebSheetRemoteAlertPresentationViewController
- (void)_willAppearInRemoteViewController;
- (void)dismissPresentationController:(BOOL)controller;
- (void)handleHomeButtonPressed;
@end

@implementation WebSheetRemoteAlertPresentationViewController

- (void)dismissPresentationController:(BOOL)controller
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000022A8;
  v3[3] = &unk_100008350;
  v3[4] = self;
  controllerCopy = controller;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)handleHomeButtonPressed
{
  presentedViewController = [(WebSheetRemoteAlertPresentationViewController *)self presentedViewController];
  if (presentedViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [presentedViewController dismissViewController:1];
    }
  }
}

- (void)_willAppearInRemoteViewController
{
  _remoteViewControllerProxy = [(WebSheetRemoteAlertPresentationViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:1];
  [_remoteViewControllerProxy setLaunchingInterfaceOrientation:{objc_msgSend(UIApp, "activeInterfaceOrientation")}];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setShouldDisableFadeInAnimation:1];
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];

  [delegate setRemotePresentationController:self];
}

@end