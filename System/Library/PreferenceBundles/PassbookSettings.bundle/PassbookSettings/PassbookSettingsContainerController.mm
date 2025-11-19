@interface PassbookSettingsContainerController
- (BOOL)_shouldResetToRoot;
- (PassbookSettingsContainerController)init;
- (void)_applicationDidBecomeActive;
- (void)_applicationDidEnterBackground;
- (void)_applicationDidRemoveDeactivationReasonNotification:(id)a3;
- (void)_applicationDidResignActive;
- (void)_applicationWillAddDeactivationReasonNotification:(id)a3;
- (void)_fadeView:(id)a3 visible:(BOOL)a4 completion:(id)a5;
- (void)_handleDeepLinkResourceDictionaryIfNecessary;
- (void)_loadCurrentScreen;
- (void)_restrictToShield;
- (void)dealloc;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCurrentScreen:(unint64_t)a3;
- (void)setSpecifier:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PassbookSettingsContainerController

- (PassbookSettingsContainerController)init
{
  v10.receiver = self;
  v10.super_class = PassbookSettingsContainerController;
  v2 = [(PassbookSettingsContainerController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentScreen = 0;
    v2->_isActive = 1;
    v2->_isInAppSwitcher = 0;
    v4 = +[PKAppProtectionCoordinator shared];
    appProtectionCoordinator = v3->_appProtectionCoordinator;
    v3->_appProtectionCoordinator = v4;

    [(PKAppProtectionCoordinator *)v3->_appProtectionCoordinator registerObserver:v3];
    v6 = objc_alloc_init(PassbookSettingsListController);
    listSettingsController = v3->_listSettingsController;
    v3->_listSettingsController = v6;

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
  [(PKAppProtectionCoordinator *)self->_appProtectionCoordinator unregisterObserver:self];
  deferredURLState = self->_deferredURLState;
  v4 = NSStringFromSelector("resourceDictionary");
  [(PassbookSettingsDeferredURLState *)deferredURLState removeObserver:self forKeyPath:v4 context:&unk_197B0];

  v5.receiver = self;
  v5.super_class = PassbookSettingsContainerController;
  [(PassbookSettingsContainerController *)&v5 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PassbookSettingsContainerController;
  [(PassbookSettingsContainerController *)&v5 loadView];
  v3 = [(PassbookSettingsContainerController *)self view];
  v4 = +[UIColor systemGroupedBackgroundColor];
  [v3 setBackgroundColor:v4];

  [(PassbookSettingsContainerController *)self _loadCurrentScreen];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PassbookSettingsContainerController;
  [(PassbookSettingsContainerController *)&v8 viewWillLayoutSubviews];
  currentScreen = self->_currentScreen;
  if (currentScreen - 2 >= 2)
  {
    if (currentScreen != 1)
    {
      return;
    }
  }

  else
  {
    v4 = [(UIViewController *)self->_shieldViewController view];
    v5 = [(PassbookSettingsContainerController *)self view];
    [v5 bounds];
    [v4 setFrame:?];
  }

  v6 = [(PassbookSettingsListController *)self->_listSettingsController view];
  v7 = [(PassbookSettingsContainerController *)self view];
  [v7 bounds];
  [v6 setFrame:?];
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PassbookSettingsContainerController *)self navigationItem];
  v6 = [v4 name];
  [v5 setTitle:v6];

  v7 = [v4 objectForKeyedSubscript:@"PassbookSettingsDeferredURLStateKey"];
  deferredURLState = self->_deferredURLState;
  self->_deferredURLState = v7;

  v9 = self->_deferredURLState;
  v10 = NSStringFromSelector("resourceDictionary");
  [(PassbookSettingsDeferredURLState *)v9 addObserver:self forKeyPath:v10 options:0 context:&unk_197B0];

  v11.receiver = self;
  v11.super_class = PassbookSettingsContainerController;
  [(PassbookSettingsContainerController *)&v11 setSpecifier:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &unk_197B0)
  {

    [(PassbookSettingsContainerController *)self _handleDeepLinkResourceDictionaryIfNecessary:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = PassbookSettingsContainerController;
    [(PassbookSettingsContainerController *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_loadCurrentScreen
{
  if ([(PKAppProtectionCoordinator *)self->_appProtectionCoordinator isEffectivelyLocked])
  {
    objc_initWeak(&location, self);
    appProtectionCoordinator = self->_appProtectionCoordinator;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_2484;
    v5[3] = &unk_14728;
    objc_copyWeak(&v6, &location);
    [(PKAppProtectionCoordinator *)appProtectionCoordinator isShieldRequiredWithCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_24E0;
    block[3] = &unk_14750;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_restrictToShield
{
  if ([(PKAppProtectionCoordinator *)self->_appProtectionCoordinator isEffectivelyLocked])
  {
    if (self->_currentScreen <= 1)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_2594;
      block[3] = &unk_14750;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)setCurrentScreen:(unint64_t)a3
{
  if (self->_currentScreen != a3)
  {
    v5 = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        [(PKAppProtectionCoordinator *)self->_appProtectionCoordinator requestAccess];
      }

      else
      {
        v6 = 0;
        if (a3 != 3)
        {
LABEL_21:
          v11 = [(PassbookSettingsListController *)self->_listSettingsController parentViewController];

          if (v6 | v5)
          {
            if (v11)
            {
              goto LABEL_27;
            }

            v12 = [(PassbookSettingsListController *)self->_listSettingsController view];
            [(PassbookSettingsContainerController *)self addChildViewController:self->_listSettingsController];
            v13 = [(PassbookSettingsContainerController *)self view];
            [v13 addSubview:v12];

            [(PassbookSettingsListController *)self->_listSettingsController didMoveToParentViewController:self];
            [(PassbookSettingsContainerController *)self _fadeView:v12 visible:1 completion:0];
          }

          else
          {
            if (!v11)
            {
              goto LABEL_27;
            }

            [(PassbookSettingsListController *)self->_listSettingsController view];
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_2A70;
            v27 = v26[3] = &unk_14778;
            v28 = self;
            v12 = v27;
            [(PassbookSettingsContainerController *)self _fadeView:v12 visible:0 completion:v26];
          }

LABEL_27:
          v14 = [(PassbookSettingsListController *)self->_listSettingsController view];
          [v14 setAccessibilityElementsHidden:v5];

          if (v5)
          {
            [(PassbookSettingsContainerController *)self _resetToRootAnimated:self->_isInAppSwitcher];
            v15 = [(UIViewController *)self->_shieldViewController parentViewController];

            if (v15)
            {
              goto LABEL_33;
            }

            v16 = [(UIViewController *)self->_shieldViewController view];
            [(PassbookSettingsContainerController *)self addChildViewController:self->_shieldViewController];
            v17 = [(PassbookSettingsContainerController *)self view];
            [v17 addSubview:v16];

            [(UIViewController *)self->_shieldViewController didMoveToParentViewController:self];
            [(PassbookSettingsContainerController *)self _fadeView:v16 visible:1 completion:0];
          }

          else
          {
            v18 = [(UIViewController *)self->_shieldViewController parentViewController];

            if (!v18)
            {
              goto LABEL_33;
            }

            [(UIViewController *)self->_shieldViewController view];
            v20 = _NSConcreteStackBlock;
            v21 = 3221225472;
            v22 = sub_2AC8;
            v24 = v23 = &unk_14778;
            v25 = self;
            v16 = v24;
            [(PassbookSettingsContainerController *)self _fadeView:v16 visible:0 completion:&v20];
          }

LABEL_33:
          self->_currentScreen = a3;
          v19 = [(PassbookSettingsContainerController *)self view:v20];
          [v19 setNeedsLayout];

          if (a3 == 1)
          {
            [(PassbookSettingsContainerController *)self _handleDeepLinkResourceDictionaryIfNecessary];
          }

          return;
        }
      }

      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Settings screen: Shield", buf, 2u);
      }

      if (self->_shieldViewController)
      {
        v6 = 0;
        v5 = 1;
        goto LABEL_21;
      }

      v7 = objc_alloc_init(PKAppProtectionShieldConfiguration);
      [v7 setShowAuthOnAppear:0];
      v9 = [PKAppProtectionShieldViewController createShieldViewControllerWithConfiguration:v7];
      shieldViewController = self->_shieldViewController;
      self->_shieldViewController = v9;

      v6 = 0;
      v5 = 1;
    }

    else if (a3)
    {
      v6 = 0;
      if (a3 != 1)
      {
        goto LABEL_21;
      }

      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Settings screen: List Settings", buf, 2u);
      }

      v5 = 0;
      v6 = 1;
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Settings screen: Undetermined", buf, 2u);
      }

      v5 = 0;
      v6 = 0;
    }

    goto LABEL_21;
  }
}

- (BOOL)_shouldResetToRoot
{
  v2 = [(PassbookSettingsContainerController *)self navigationController];
  v3 = [v2 pkui_frontMostViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 presentingViewController];

    v3 = v4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [v3 pkui_disablesAutomaticDismissalUponEnteringBackground];
    v5 = 0;
    goto LABEL_10;
  }

  v5 = [v3 viewControllers];
  v6 = [v3 pkui_disablesAutomaticDismissalUponEnteringBackground];
  if ((v6 & 1) != 0 || !v5)
  {
LABEL_10:
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v7 = [v5 firstObject];
  if ([v7 pkui_disablesAutomaticDismissalUponEnteringBackground])
  {
LABEL_16:
    LOBYTE(v10) = 0;
LABEL_22:

    goto LABEL_23;
  }

  v8 = [v5 lastObject];
  v9 = [v8 pkui_disablesAutomaticDismissalUponEnteringBackground];

  if ((v9 & 1) == 0)
  {
LABEL_12:
    v11 = v5;
    v12 = [v3 childViewControllers];
    v7 = [v12 lastObject];

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v7 viewControllers];

        v13 = [v5 firstObject];
        if ([v13 pkui_disablesAutomaticDismissalUponEnteringBackground])
        {

          goto LABEL_16;
        }

        v15 = [v5 lastObject];
        v16 = [v15 pkui_disablesAutomaticDismissalUponEnteringBackground];

        if ((v16 & 1) == 0)
        {
          v11 = v5;
          goto LABEL_21;
        }

        goto LABEL_11;
      }

      v14 = [v7 pkui_disablesAutomaticDismissalUponEnteringBackground];

      if (v14)
      {
        LOBYTE(v10) = 0;
        v5 = v11;
        goto LABEL_23;
      }
    }

LABEL_21:
    v7 = +[PKDismissalPreventionAssertionManager sharedInstance];
    v10 = [v7 shouldPreventAutomaticDismissal] ^ 1;
    v5 = v11;
    goto LABEL_22;
  }

LABEL_11:
  LOBYTE(v10) = 0;
LABEL_23:

  return v10;
}

- (void)_fadeView:(id)a3 visible:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (v6)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [v7 alpha];
  if (v10 == v9)
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    if (v6)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    [v7 setAlpha:v11];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2F98;
    v14[3] = &unk_147A0;
    v15 = v7;
    v16 = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2FA8;
    v12[3] = &unk_147F0;
    v13 = v8;
    [UIView animateWithDuration:v14 animations:v12 completion:0.15];
  }
}

- (void)_applicationDidEnterBackground
{
  [(PassbookSettingsContainerController *)self _restrictToShield];
  if ([(PassbookSettingsContainerController *)self _shouldResetToRoot])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_30D8;
    block[3] = &unk_14750;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_applicationDidResignActive
{
  self->_isActive = 0;
  if (self->_isInAppSwitcher)
  {
    [(PassbookSettingsContainerController *)self _restrictToShield];
  }
}

- (void)_applicationDidBecomeActive
{
  self->_isActive = 1;
  if (!self->_isInAppSwitcher)
  {
    [(PassbookSettingsContainerController *)self _loadCurrentScreen];
  }
}

- (void)_applicationWillAddDeactivationReasonNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:_UIApplicationDeactivationReasonUserInfoKey];
  v6 = [v5 longLongValue];

  if (v6 == 3)
  {
    self->_isInAppSwitcher = 1;
    if (!self->_isActive)
    {

      [(PassbookSettingsContainerController *)self _restrictToShield];
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
    self->_isInAppSwitcher = 0;
    if (self->_isActive)
    {

      [(PassbookSettingsContainerController *)self _loadCurrentScreen];
    }
  }
}

- (void)_handleDeepLinkResourceDictionaryIfNecessary
{
  if (self->_visibility == 2)
  {
    v14 = v2;
    v15 = v3;
    if (self->_currentScreen == 1)
    {
      v5 = [(PassbookSettingsDeferredURLState *)self->_deferredURLState resourceDictionary];
      v6 = v5;
      if (v5)
      {
        v8 = _NSConcreteStackBlock;
        v9 = 3221225472;
        v10 = sub_33AC;
        v11 = &unk_14778;
        v12 = self;
        v13 = v5;
        dispatch_async(&_dispatch_main_q, &v8);
        [(PassbookSettingsDeferredURLState *)self->_deferredURLState setResourceDictionary:0, v8, v9, v10, v11, v12];
      }

      else
      {
        v7 = [(PassbookSettingsListController *)self->_listSettingsController pendingURLResourceDictionary];

        if (v7)
        {
          [(PassbookSettingsListController *)self->_listSettingsController handlePendingURL];
        }
      }
    }
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  currentScreen = self->_currentScreen;
  if (currentScreen - 2 < 2 || currentScreen == 0)
  {
    [(PassbookSettingsListController *)self->_listSettingsController setPendingURLResourceDictionary:v9];
    [(PassbookSettingsListController *)self->_listSettingsController setUrlHandlingCompletion:v6];
  }

  else if (currentScreen == 1)
  {
    [(PassbookSettingsListController *)self->_listSettingsController handleURL:v9 withCompletion:v6];
  }
}

@end