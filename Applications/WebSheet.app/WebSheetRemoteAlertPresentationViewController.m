@interface WebSheetRemoteAlertPresentationViewController
- (void)_willAppearInRemoteViewController;
- (void)dismissPresentationController:(BOOL)a3;
- (void)handleHomeButtonPressed;
@end

@implementation WebSheetRemoteAlertPresentationViewController

- (void)dismissPresentationController:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000022A8;
  v3[3] = &unk_100008350;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)handleHomeButtonPressed
{
  v2 = [(WebSheetRemoteAlertPresentationViewController *)self presentedViewController];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 dismissViewController:1];
    }
  }
}

- (void)_willAppearInRemoteViewController
{
  v5 = [(WebSheetRemoteAlertPresentationViewController *)self _remoteViewControllerProxy];
  [v5 setDesiredHardwareButtonEvents:16];
  [v5 setSwipeDismissalStyle:1];
  [v5 setLaunchingInterfaceOrientation:{objc_msgSend(UIApp, "activeInterfaceOrientation")}];
  [v5 setAllowsAlertStacking:1];
  [v5 setAllowsBanners:1];
  [v5 setShouldDisableFadeInAnimation:1];
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];

  [v4 setRemotePresentationController:self];
}

@end