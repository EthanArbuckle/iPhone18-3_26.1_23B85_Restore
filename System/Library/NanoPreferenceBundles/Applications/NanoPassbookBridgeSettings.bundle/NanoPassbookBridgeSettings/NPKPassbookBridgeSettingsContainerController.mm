@interface NPKPassbookBridgeSettingsContainerController
- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push;
- (BOOL)suppressMirrorOption;
- (BOOL)suppressSendToNotificationCenterOption;
- (NPKPassbookBridgeSettingsContainerController)init;
- (id)_currentViewControllerForScreen:(unint64_t)screen;
- (id)applicationBundleIdentifier;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (void)_applicationDidBecomeActive;
- (void)_applicationDidRemoveDeactivationReasonNotification:(id)notification;
- (void)_applicationDidResignActive;
- (void)_applicationWillAddDeactivationReasonNotification:(id)notification;
- (void)_loadCurrentScreen;
- (void)_restrictToShield;
- (void)_setCurrentScreen:(unint64_t)screen;
- (void)dealloc;
- (void)handleURL:(id)l withCompletion:(id)completion;
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

    appProtectionCoordinator = [(NPKPassbookBridgeSettingsContainerController *)v3 appProtectionCoordinator];
    [appProtectionCoordinator registerObserver:v3];

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
  appProtectionCoordinator = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
  [appProtectionCoordinator unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = NPKPassbookBridgeSettingsContainerController;
  [(NPKPassbookBridgeSettingsContainerController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = NPKPassbookBridgeSettingsContainerController;
  [(NPKPassbookBridgeSettingsContainerController *)&v8 viewDidLoad];
  view = [(NPKPassbookBridgeSettingsContainerController *)self view];
  v4 = +[UIColor systemGroupedBackgroundColor];
  [view setBackgroundColor:v4];

  navigationItem = [(NPKPassbookBridgeSettingsContainerController *)self navigationItem];
  specifier = [(NPKPassbookBridgeSettingsContainerController *)self specifier];
  name = [specifier name];
  [navigationItem setTitle:name];

  [(NPKPassbookBridgeSettingsContainerController *)self _loadCurrentScreen];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = NPKPassbookBridgeSettingsContainerController;
  [(NPKPassbookBridgeSettingsContainerController *)&v8 viewWillLayoutSubviews];
  currentScreen = [(NPKPassbookBridgeSettingsContainerController *)self currentScreen];
  if (currentScreen - 2 >= 2)
  {
    if (currentScreen != 1)
    {
      return;
    }

    listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  }

  else
  {
    listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self shieldViewController];
  }

  v5 = listSettingsController;
  view = [listSettingsController view];
  view2 = [(NPKPassbookBridgeSettingsContainerController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)_loadCurrentScreen
{
  if ([(NPKPassbookBridgeSettingsContainerController *)self isActive]&& ![(NPKPassbookBridgeSettingsContainerController *)self isInAppSwitcher]&& [(NPKPassbookBridgeSettingsContainerController *)self isViewVisible])
  {
    appProtectionCoordinator = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
    isEffectivelyLocked = [appProtectionCoordinator isEffectivelyLocked];

    if (isEffectivelyLocked)
    {
      objc_initWeak(&location, self);
      appProtectionCoordinator2 = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_FA04;
      v7[3] = &unk_2CEA0;
      objc_copyWeak(&v8, &location);
      [appProtectionCoordinator2 isShieldRequiredWithCompletion:v7];

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
  appProtectionCoordinator = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
  isEffectivelyLocked = [appProtectionCoordinator isEffectivelyLocked];

  if (isEffectivelyLocked && ([(NPKPassbookBridgeSettingsContainerController *)self currentScreen]== &dword_0 + 1 || ![(NPKPassbookBridgeSettingsContainerController *)self currentScreen]))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_FB2C;
    block[3] = &unk_2C6C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_setCurrentScreen:(unint64_t)screen
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(NPKPassbookBridgeSettingsContainerController *)self currentScreen]== screen)
  {
    return;
  }

  v5 = [(NPKPassbookBridgeSettingsContainerController *)self _currentViewControllerForScreen:[(NPKPassbookBridgeSettingsContainerController *)self currentScreen]];
  v6 = 0;
  if (screen > 1)
  {
    if (screen == 2)
    {
      appProtectionCoordinator = [(NPKPassbookBridgeSettingsContainerController *)self appProtectionCoordinator];
      [appProtectionCoordinator requestAccess];
    }

    else if (screen != 3)
    {
      goto LABEL_21;
    }

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Settings screen: Shield", v30, 2u);
    }

    shieldViewController = [(NPKPassbookBridgeSettingsContainerController *)self shieldViewController];

    if (!shieldViewController)
    {
      v13 = objc_alloc_init(PKAppProtectionShieldConfiguration);
      [v13 setShowAuthOnAppear:0];
      v14 = [PKAppProtectionShieldViewController createShieldViewControllerWithConfiguration:v13];
      [(NPKPassbookBridgeSettingsContainerController *)self setShieldViewController:v14];
    }

    shieldViewController2 = [(NPKPassbookBridgeSettingsContainerController *)self shieldViewController];
    goto LABEL_20;
  }

  if (!screen)
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

  if (screen == 1)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Settings screen: List Settings", buf, 2u);
    }

    shieldViewController2 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
LABEL_20:
    v6 = shieldViewController2;
  }

LABEL_21:
  if (v5)
  {
    isInAppSwitcher = [(NPKPassbookBridgeSettingsContainerController *)self isInAppSwitcher];
    navigationController = [(NPKPassbookBridgeSettingsContainerController *)self navigationController];
    presentedViewController = [v5 presentedViewController];
    v18 = presentedViewController;
    if (presentedViewController)
    {
      [presentedViewController dismissViewControllerAnimated:isInAppSwitcher completion:0];
    }

    presentedViewController2 = [navigationController presentedViewController];

    if (presentedViewController2)
    {
      [presentedViewController2 dismissViewControllerAnimated:isInAppSwitcher completion:0];
    }

    viewControllers = [navigationController viewControllers];
    if ([viewControllers indexOfObject:self] == 0x7FFFFFFFFFFFFFFFLL)
    {
      parentViewController = [(NPKPassbookBridgeSettingsContainerController *)self parentViewController];
      if ([viewControllers indexOfObject:parentViewController] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = [navigationController popToViewController:parentViewController animated:isInAppSwitcher];
      }
    }

    else
    {
      v23 = [navigationController popToViewController:self animated:isInAppSwitcher];
    }

    view = [v5 view];
    [view removeFromSuperview];

    [v5 removeFromParentViewController];
    [v5 didMoveToParentViewController:0];
  }

  if (v6)
  {
    [(NPKPassbookBridgeSettingsContainerController *)self addChildViewController:v6];
    view2 = [(NPKPassbookBridgeSettingsContainerController *)self view];
    view3 = [v6 view];
    [view2 addSubview:view3];

    [v6 didMoveToParentViewController:self];
    listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];

    if (v6 == listSettingsController)
    {
      listSettingsController2 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
      [listSettingsController2 handlePendingURL];
    }
  }

  [(NPKPassbookBridgeSettingsContainerController *)self setCurrentScreen:screen];
  view4 = [(NPKPassbookBridgeSettingsContainerController *)self view];
  [view4 setNeedsLayout];
}

- (id)_currentViewControllerForScreen:(unint64_t)screen
{
  if (screen - 2 >= 2)
  {
    if (screen == 1)
    {
      listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
    }

    else
    {
      listSettingsController = 0;
    }
  }

  else
  {
    listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self shieldViewController];
  }

  return listSettingsController;
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

- (void)_applicationWillAddDeactivationReasonNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:_UIApplicationDeactivationReasonUserInfoKey];
  longLongValue = [v5 longLongValue];

  if (longLongValue == 3)
  {
    [(NPKPassbookBridgeSettingsContainerController *)self setIsInAppSwitcher:1];
    if (![(NPKPassbookBridgeSettingsContainerController *)self isActive])
    {

      [(NPKPassbookBridgeSettingsContainerController *)self _restrictToShield];
    }
  }
}

- (void)_applicationDidRemoveDeactivationReasonNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:_UIApplicationDeactivationReasonUserInfoKey];
  longLongValue = [v5 longLongValue];

  if (longLongValue == 3)
  {
    [(NPKPassbookBridgeSettingsContainerController *)self setIsInAppSwitcher:0];

    [(NPKPassbookBridgeSettingsContainerController *)self _loadCurrentScreen];
  }
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push
{
  dictionaryCopy = dictionary;
  dCopy = d;
  listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  LOBYTE(push) = [listSettingsController prepareHandlingURLForSpecifierID:dCopy resourceDictionary:dictionaryCopy animatePush:push];

  return push;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  currentScreen = [(NPKPassbookBridgeSettingsContainerController *)self currentScreen];
  if (currentScreen - 2 >= 2 && currentScreen)
  {
    if (currentScreen != 1)
    {
      goto LABEL_7;
    }

    listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
    [listSettingsController handleURL:lCopy withCompletion:completionCopy];
  }

  else
  {
    listSettingsController2 = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
    [listSettingsController2 setPendingURLResourceDictionary:lCopy];

    listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
    [listSettingsController setUrlHandlingCompletion:completionCopy];
  }

LABEL_7:
}

- (id)localizedPaneTitle
{
  listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  localizedPaneTitle = [listSettingsController localizedPaneTitle];

  return localizedPaneTitle;
}

- (id)applicationBundleIdentifier
{
  listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  applicationBundleIdentifier = [listSettingsController applicationBundleIdentifier];

  return applicationBundleIdentifier;
}

- (id)localizedMirroringDetailFooter
{
  listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  localizedMirroringDetailFooter = [listSettingsController localizedMirroringDetailFooter];

  return localizedMirroringDetailFooter;
}

- (BOOL)suppressSendToNotificationCenterOption
{
  listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  suppressSendToNotificationCenterOption = [listSettingsController suppressSendToNotificationCenterOption];

  return suppressSendToNotificationCenterOption;
}

- (BOOL)suppressMirrorOption
{
  listSettingsController = [(NPKPassbookBridgeSettingsContainerController *)self listSettingsController];
  suppressMirrorOption = [listSettingsController suppressMirrorOption];

  return suppressMirrorOption;
}

@end