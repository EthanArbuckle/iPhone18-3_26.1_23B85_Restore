@interface ServiceBackgroundAssetConsentViewController
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissViewService;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation ServiceBackgroundAssetConsentViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!+[_TtC17StoreKitUIService21objc_LockscreenStatus isDeviceUnlocked])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C118();
    }

    exit(0);
  }

  actions = [contextCopy actions];
  allObjects = [actions allObjects];
  firstObject = [allObjects firstObject];
  [(ServiceBackgroundAssetConsentViewController *)self setDidProvideConsentAction:firstObject];

  _remoteViewControllerProxy = [(ServiceBackgroundAssetConsentViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setWallpaperTunnelActive:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setDismissalAnimationStyle:2];
  [_remoteViewControllerProxy setReachabilityDisabled:1];
  v12 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = +[UIApplication sharedApplication];
    statusBarOrientation = [v14 statusBarOrientation];

    [_remoteViewControllerProxy setLaunchingInterfaceOrientation:statusBarOrientation];
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
  childViewController = [(ServiceBackgroundAssetConsentViewController *)self childViewController];
  [childViewController setModalPresentationStyle:2];

  [(ServiceBackgroundAssetConsentViewController *)self presentViewController:v16 animated:1 completion:&stru_100051120];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(ServiceBackgroundAssetConsentViewController *)self _dismissViewService];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  didProvideConsentAction = [(ServiceBackgroundAssetConsentViewController *)self didProvideConsentAction];
  canSendResponse = [didProvideConsentAction canSendResponse];

  if (canSendResponse)
  {
    v5 = objc_alloc_init(BSMutableSettings);
    consentProvided = [(ServiceBackgroundAssetConsentViewController *)self consentProvided];
    [v5 setObject:consentProvided forSetting:1];

    didProvideConsentAction2 = [(ServiceBackgroundAssetConsentViewController *)self didProvideConsentAction];
    v8 = [BSActionResponse responseWithInfo:v5];
    [didProvideConsentAction2 sendResponse:v8];
  }

  childViewController = [(ServiceBackgroundAssetConsentViewController *)self childViewController];

  if (childViewController)
  {
    childViewController2 = [(ServiceBackgroundAssetConsentViewController *)self childViewController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006C90;
    v12[3] = &unk_100051148;
    v12[4] = self;
    [childViewController2 dismissViewControllerAnimated:1 completion:v12];
  }

  else
  {
    _remoteViewControllerProxy = [(ServiceBackgroundAssetConsentViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy deactivate];
  }
}

@end