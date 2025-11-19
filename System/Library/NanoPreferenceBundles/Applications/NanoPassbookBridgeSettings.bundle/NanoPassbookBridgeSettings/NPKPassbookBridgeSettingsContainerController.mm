@interface NPKPassbookBridgeSettingsContainerController
- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5;
- (BOOL)suppressMirrorOption;
- (BOOL)suppressSendToNotificationCenterOption;
- (NPKPassbookBridgeSettingsContainerController)init;
- (id)_currentViewControllerForScreen:(unint64_t)a3;
- (id)applicationBundleIdentifier;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (void)_applicationDidBecomeActive;
- (void)_applicationDidRemoveDeactivationReasonNotification:(id)a3;
- (void)_applicationDidResignActive;
- (void)_applicationWillAddDeactivationReasonNotification:(id)a3;
- (void)_loadCurrentScreen;
- (void)_restrictToShield;
- (void)_setCurrentScreen:(unint64_t)a3;
- (void)dealloc;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NPKPassbookBridgeSettingsContainerController

- (NPKPassbookBridgeSettingsContainerController)init
{
  v10.receiver = self;
  v10.super_class = NPKPassbookBridgeSettingsContainerController;
  v2 = [(NPKPassbookBridgeSettingsContainerController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(NPKPassbookBridgeSettingsContainerController *)v2 setCurrentScreen:0];
    v4 = +[UIApplication sharedApplication];
    -[NPKPassbookBridgeSettingsContainerController setIsActive:](v3, "setIsActive:", [v4 applicationState] == 0);

    [(NPKPassbookBridgeSettingsContainerController *)v3 setIsInAppSwitcher:0];
    [(NPKPassbookBridgeSettingsContainerController *)v3 setIsViewVisible:1];
    v5 = +[PKAppProtectionCoordinator shared];
    [(NPKPassbookBridgeSettingsContainerController *)v3 setAppProtectionCoordinator:v5];

    v6 = [(NPKPassbookBridgeSettingsContainerController *)v3 appProtectionCoordinator];
    [v6 registerObserver:v3];

    v7 = objc_alloc_init(NPKPassbookBridgeSettingsController);
    [(NPKPassbookBridgeSettingsContainerController *)v3 setListSettingsController:v7];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"_applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
    [v8 addObserver:v3 selector:"_applicationDidEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
    [v8 addObserver:v3 selector:"_applicationDidResignActive" name:UIApplicationWillResignActiveNotification object:0];
    [v8 addObserver:v3 selector:"_applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];
    [v8 addObserver:v3 selector:"_applicationWillAddDeactivationReasonNotification:" name:_UIApplicationWillAddDeactivationReasonNotification object:0];
    [v8 addObserver:v3 selector:"_applicationDidRemoveDeactivationReasonNotification:" name:_UIApplicationDidRemoveDeactivationReasonNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = NPKPassbookBridgeSettingsContainerController;
  [(NPKPassbookBridgeSettingsContainerController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = NPKPassbookBridgeSettingsContainerController;
  [(NPKPassbookBridgeSettingsContainerController *)&v8 viewDidLoad];
  v3 = [(NPKPassbookBridgeSettingsContainerController *)self view];
  v4 = +[UIColor systemGroupedBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(NPKPassbookBridgeSettingsContainerController *)self navigationItem];
  v6 = [(NPKPassbookBridgeSettingsContainerController *)self specifier];
  v7 = [v6 name];
  [v5 setTitle:v7];

  [(NPKPassbookBridgeSettingsContainerController *)self _loadCurrentScreen];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = NPKPassbookBridgeSettingsContainerController;
  [(NPKPassbookBridgeSettingsContainerController *)&v8 viewWillLayoutSubviews];
  v3 = [(NPKPassbookBridgeSettingsContainerController *)self currentScreen];
  if (v3 - 2 >= 2)
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  }

  else
  {
    v4 = [(NPKPassbookBridgeSettingsContainerController *)self shieldViewController];
  }

  v5 = v4;
  v6 = [v4 view];
  v7 = [(NPKPassbookBridgeSettingsContainerController *)self view];
  [v7 bounds];
  [v6 setFrame:?];
}

- (void)_loadCurrentScreen
{
  if ([(NPKPassbookBridgeSettingsContainerController *)self isActive]&& ![(NPKPassbookBridgeSettingsContainerController *)self isInAppSwitcher]&& [(NPKPassbookBridgeSettingsContainerController *)self isViewVisible])
  {
    v3 = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
    v4 = [v3 isEffectivelyLocked];

    if (v4)
    {
      objc_initWeak(&location, self);
      v5 = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_FA04;
      v7[3] = &unk_2CEA0;
      objc_copyWeak(&v8, &location);
      [v5 isShieldRequiredWithCompletion:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_FA60;
      block[3] = &unk_2C6C0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)_restrictToShield
{
  v3 = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
  v4 = [v3 isEffectivelyLocked];

  if (v4 && ([(NPKPassbookBridgeSettingsContainerController *)self currentScreen]== &dword_0 + 1 || ![(NPKPassbookBridgeSettingsContainerController *)self currentScreen]))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_FB2C;
    block[3] = &unk_2C6C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_setCurrentScreen:(unint64_t)a3
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(NPKPassbookBridgeSettingsContainerController *)self currentScreen]== a3)
  {
    return;
  }

  v5 = [(NPKPassbookBridgeSettingsContainerController *)self _currentViewControllerForScreen:[(NPKPassbookBridgeSettingsContainerController *)self currentScreen]];
  v6 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v10 = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
      [v10 requestAccess];
    }

    else if (a3 != 3)
    {
      goto LABEL_21;
    }

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Settings screen: Shield", v30, 2u);
    }

    v12 = [(NPKPassbookBridgeSettingsContainerController *)self shieldViewController];

    if (!v12)
    {
      v13 = objc_alloc_init(PKAppProtectionShieldConfiguration);
      [v13 setShowAuthOnAppear:0];
      v14 = [PKAppProtectionShieldViewController createShieldViewControllerWithConfiguration:v13];
      [(NPKPassbookBridgeSettingsContainerController *)self setShieldViewController:v14];
    }

    v8 = [(NPKPassbookBridgeSettingsContainerController *)self shieldViewController];
    goto LABEL_20;
  }

  if (!a3)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Settings screen: Undetermined", v32, 2u);
    }

    v6 = 0;
    goto LABEL_21;
  }

  if (a3 == 1)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Settings screen: List Settings", buf, 2u);
    }

    v8 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
LABEL_20:
    v6 = v8;
  }

LABEL_21:
  if (v5)
  {
    v15 = [(NPKPassbookBridgeSettingsContainerController *)self isInAppSwitcher];
    v16 = [(NPKPassbookBridgeSettingsContainerController *)self navigationController];
    v17 = [v5 presentedViewController];
    v18 = v17;
    if (v17)
    {
      [v17 dismissViewControllerAnimated:v15 completion:0];
    }

    v19 = [v16 presentedViewController];

    if (v19)
    {
      [v19 dismissViewControllerAnimated:v15 completion:0];
    }

    v20 = [v16 viewControllers];
    if ([v20 indexOfObject:self] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [(NPKPassbookBridgeSettingsContainerController *)self parentViewController];
      if ([v20 indexOfObject:v21] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = [v16 popToViewController:v21 animated:v15];
      }
    }

    else
    {
      v23 = [v16 popToViewController:self animated:v15];
    }

    v24 = [v5 view];
    [v24 removeFromSuperview];

    [v5 removeFromParentViewController];
    [v5 didMoveToParentViewController:0];
  }

  if (v6)
  {
    [(NPKPassbookBridgeSettingsContainerController *)self addChildViewController:v6];
    v25 = [(NPKPassbookBridgeSettingsContainerController *)self view];
    v26 = [v6 view];
    [v25 addSubview:v26];

    [v6 didMoveToParentViewController:self];
    v27 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];

    if (v6 == v27)
    {
      v28 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
      [v28 handlePendingURL];
    }
  }

  [(NPKPassbookBridgeSettingsContainerController *)self setCurrentScreen:a3];
  v29 = [(NPKPassbookBridgeSettingsContainerController *)self view];
  [v29 setNeedsLayout];
}

- (id)_currentViewControllerForScreen:(unint64_t)a3
{
  if (a3 - 2 >= 2)
  {
    if (a3 == 1)
    {
      v3 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [(NPKPassbookBridgeSettingsContainerController *)self shieldViewController];
  }

  return v3;
}

- (void)_applicationDidResignActive
{
  [(NPKPassbookBridgeSettingsContainerController *)self setIsActive:0];
  if ([(NPKPassbookBridgeSettingsContainerController *)self isInAppSwitcher])
  {

    [(NPKPassbookBridgeSettingsContainerController *)self _restrictToShield];
  }
}

- (void)_applicationDidBecomeActive
{
  [(NPKPassbookBridgeSettingsContainerController *)self setIsActive:1];

  [(NPKPassbookBridgeSettingsContainerController *)self _loadCurrentScreen];
}

- (void)_applicationWillAddDeactivationReasonNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:_UIApplicationDeactivationReasonUserInfoKey];
  v6 = [v5 longLongValue];

  if (v6 == 3)
  {
    [(NPKPassbookBridgeSettingsContainerController *)self setIsInAppSwitcher:1];
    if (![(NPKPassbookBridgeSettingsContainerController *)self isActive])
    {

      [(NPKPassbookBridgeSettingsContainerController *)self _restrictToShield];
    }
  }
}

- (void)_applicationDidRemoveDeactivationReasonNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:_UIApplicationDeactivationReasonUserInfoKey];
  v6 = [v5 longLongValue];

  if (v6 == 3)
  {
    [(NPKPassbookBridgeSettingsContainerController *)self setIsInAppSwitcher:0];

    [(NPKPassbookBridgeSettingsContainerController *)self _loadCurrentScreen];
  }
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  LOBYTE(a5) = [v10 prepareHandlingURLForSpecifierID:v9 resourceDictionary:v8 animatePush:a5];

  return a5;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NPKPassbookBridgeSettingsContainerController *)self currentScreen];
  if (v7 - 2 >= 2 && v7)
  {
    if (v7 != 1)
    {
      goto LABEL_7;
    }

    v8 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
    [v8 handleURL:v10 withCompletion:v6];
  }

  else
  {
    v9 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
    [v9 setPendingURLResourceDictionary:v10];

    v8 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
    [v8 setUrlHandlingCompletion:v6];
  }

LABEL_7:
}

- (id)localizedPaneTitle
{
  v2 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  v3 = [v2 localizedPaneTitle];

  return v3;
}

- (id)applicationBundleIdentifier
{
  v2 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  v3 = [v2 applicationBundleIdentifier];

  return v3;
}

- (id)localizedMirroringDetailFooter
{
  v2 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  v3 = [v2 localizedMirroringDetailFooter];

  return v3;
}

- (BOOL)suppressSendToNotificationCenterOption
{
  v2 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  v3 = [v2 suppressSendToNotificationCenterOption];

  return v3;
}

- (BOOL)suppressMirrorOption
{
  v2 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  v3 = [v2 suppressMirrorOption];

  return v3;
}

@end