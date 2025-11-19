@interface ServiceBackgroundAssetConsentViewController
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissViewService;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation ServiceBackgroundAssetConsentViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[_TtC17StoreKitUIService21objc_LockscreenStatus isDeviceUnlocked])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C118();
    }

    exit(0);
  }

  v8 = [v6 actions];
  v9 = [v8 allObjects];
  v10 = [v9 firstObject];
  [(ServiceBackgroundAssetConsentViewController *)self setDidProvideConsentAction:v10];

  v11 = [(ServiceBackgroundAssetConsentViewController *)self _remoteViewControllerProxy];
  [v11 setDesiredHardwareButtonEvents:16];
  [v11 setAllowsMenuButtonDismissal:1];
  [v11 setAllowsBanners:1];
  [v11 setWallpaperTunnelActive:1];
  [v11 setAllowsAlertStacking:1];
  [v11 setDismissalAnimationStyle:2];
  [v11 setReachabilityDisabled:1];
  v12 = +[UIDevice currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = +[UIApplication sharedApplication];
    v15 = [v14 statusBarOrientation];

    [v11 setLaunchingInterfaceOrientation:v15];
  }

  v16 = objc_alloc_init(SKBackgroundAssetConsentViewController);
  objc_initWeak(&location, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100006948;
  v21 = &unk_100051100;
  objc_copyWeak(&v22, &location);
  [v16 setResponseBlock:&v18];
  [(ServiceBackgroundAssetConsentViewController *)self setChildViewController:v16, v18, v19, v20, v21];
  v17 = [(ServiceBackgroundAssetConsentViewController *)self childViewController];
  [v17 setModalPresentationStyle:2];

  [(ServiceBackgroundAssetConsentViewController *)self presentViewController:v16 animated:1 completion:&stru_100051120];
  if (v7)
  {
    v7[2](v7);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(ServiceBackgroundAssetConsentViewController *)self _dismissViewService];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_dismissViewService
{
  v3 = [(ServiceBackgroundAssetConsentViewController *)self didProvideConsentAction];
  v4 = [v3 canSendResponse];

  if (v4)
  {
    v5 = objc_alloc_init(BSMutableSettings);
    v6 = [(ServiceBackgroundAssetConsentViewController *)self consentProvided];
    [v5 setObject:v6 forSetting:1];

    v7 = [(ServiceBackgroundAssetConsentViewController *)self didProvideConsentAction];
    v8 = [BSActionResponse responseWithInfo:v5];
    [v7 sendResponse:v8];
  }

  v9 = [(ServiceBackgroundAssetConsentViewController *)self childViewController];

  if (v9)
  {
    v10 = [(ServiceBackgroundAssetConsentViewController *)self childViewController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006C90;
    v12[3] = &unk_100051148;
    v12[4] = self;
    [v10 dismissViewControllerAnimated:1 completion:v12];
  }

  else
  {
    v11 = [(ServiceBackgroundAssetConsentViewController *)self _remoteViewControllerProxy];
    [v11 deactivate];
  }
}

@end