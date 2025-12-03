@interface PassbookSettingsContainerController
- (BOOL)_shouldResetToRoot;
- (PassbookSettingsContainerController)init;
- (void)_applicationDidBecomeActive;
- (void)_applicationDidEnterBackground;
- (void)_applicationDidRemoveDeactivationReasonNotification:(id)notification;
- (void)_applicationDidResignActive;
- (void)_applicationWillAddDeactivationReasonNotification:(id)notification;
- (void)_fadeView:(id)view visible:(BOOL)visible completion:(id)completion;
- (void)_handleDeepLinkResourceDictionaryIfNecessary;
- (void)_loadCurrentScreen;
- (void)_restrictToShield;
- (void)dealloc;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCurrentScreen:(unint64_t)screen;
- (void)setSpecifier:(id)specifier;
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
  view = [(PassbookSettingsContainerController *)self view];
  v4 = +[UIColor systemGroupedBackgroundColor];
  [view setBackgroundColor:v4];

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
    view = [(UIViewController *)self->_shieldViewController view];
    view2 = [(PassbookSettingsContainerController *)self view];
    [view2 bounds];
    [view setFrame:?];
  }

  view3 = [(PassbookSettingsListController *)self->_listSettingsController view];
  view4 = [(PassbookSettingsContainerController *)self view];
  [view4 bounds];
  [view3 setFrame:?];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  navigationItem = [(PassbookSettingsContainerController *)self navigationItem];
  name = [specifierCopy name];
  [navigationItem setTitle:name];

  v7 = [specifierCopy objectForKeyedSubscript:@"PassbookSettingsDeferredURLStateKey"];
  deferredURLState = self->_deferredURLState;
  self->_deferredURLState = v7;

  v9 = self->_deferredURLState;
  v10 = NSStringFromSelector("resourceDictionary");
  [(PassbookSettingsDeferredURLState *)v9 addObserver:self forKeyPath:v10 options:0 context:&unk_197B0];

  v11.receiver = self;
  v11.super_class = PassbookSettingsContainerController;
  [(PassbookSettingsContainerController *)&v11 setSpecifier:specifierCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &unk_197B0)
  {

    [(PassbookSettingsContainerController *)self _handleDeepLinkResourceDictionaryIfNecessary:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = PassbookSettingsContainerController;
    [(PassbookSettingsContainerController *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
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

- (void)setCurrentScreen:(unint64_t)screen
{
  if (self->_currentScreen != screen)
  {
    v5 = 0;
    if (screen > 1)
    {
      if (screen == 2)
      {
        [(PKAppProtectionCoordinator *)self->_appProtectionCoordinator requestAccess];
      }

      else
      {
        v6 = 0;
        if (screen != 3)
        {
LABEL_21:
          parentViewController = [(PassbookSettingsListController *)self->_listSettingsController parentViewController];

          if (v6 | v5)
          {
            if (parentViewController)
            {
              goto LABEL_27;
            }

            view = [(PassbookSettingsListController *)self->_listSettingsController view];
            [(PassbookSettingsContainerController *)self addChildViewController:self->_listSettingsController];
            view2 = [(PassbookSettingsContainerController *)self view];
            [view2 addSubview:view];

            [(PassbookSettingsListController *)self->_listSettingsController didMoveToParentViewController:self];
            [(PassbookSettingsContainerController *)self _fadeView:view visible:1 completion:0];
          }

          else
          {
            if (!parentViewController)
            {
              goto LABEL_27;
            }

            [(PassbookSettingsListController *)self->_listSettingsController view];
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_2A70;
            v27 = v26[3] = &unk_14778;
            selfCopy = self;
            view = v27;
            [(PassbookSettingsContainerController *)self _fadeView:view visible:0 completion:v26];
          }

LABEL_27:
          view3 = [(PassbookSettingsListController *)self->_listSettingsController view];
          [view3 setAccessibilityElementsHidden:v5];

          if (v5)
          {
            [(PassbookSettingsContainerController *)self _resetToRootAnimated:self->_isInAppSwitcher];
            parentViewController2 = [(UIViewController *)self->_shieldViewController parentViewController];

            if (parentViewController2)
            {
              goto LABEL_33;
            }

            view4 = [(UIViewController *)self->_shieldViewController view];
            [(PassbookSettingsContainerController *)self addChildViewController:self->_shieldViewController];
            view5 = [(PassbookSettingsContainerController *)self view];
            [view5 addSubview:view4];

            [(UIViewController *)self->_shieldViewController didMoveToParentViewController:self];
            [(PassbookSettingsContainerController *)self _fadeView:view4 visible:1 completion:0];
          }

          else
          {
            parentViewController3 = [(UIViewController *)self->_shieldViewController parentViewController];

            if (!parentViewController3)
            {
              goto LABEL_33;
            }

            [(UIViewController *)self->_shieldViewController view];
            v20 = _NSConcreteStackBlock;
            v21 = 3221225472;
            v22 = sub_2AC8;
            v24 = v23 = &unk_14778;
            selfCopy2 = self;
            view4 = v24;
            [(PassbookSettingsContainerController *)self _fadeView:view4 visible:0 completion:&v20];
          }

LABEL_33:
          self->_currentScreen = screen;
          v19 = [(PassbookSettingsContainerController *)self view:v20];
          [v19 setNeedsLayout];

          if (screen == 1)
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

    else if (screen)
    {
      v6 = 0;
      if (screen != 1)
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
  navigationController = [(PassbookSettingsContainerController *)self navigationController];
  pkui_frontMostViewController = [navigationController pkui_frontMostViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentingViewController = [pkui_frontMostViewController presentingViewController];

    pkui_frontMostViewController = presentingViewController;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    pkui_disablesAutomaticDismissalUponEnteringBackground = [pkui_frontMostViewController pkui_disablesAutomaticDismissalUponEnteringBackground];
    viewControllers = 0;
    goto LABEL_10;
  }

  viewControllers = [pkui_frontMostViewController viewControllers];
  pkui_disablesAutomaticDismissalUponEnteringBackground = [pkui_frontMostViewController pkui_disablesAutomaticDismissalUponEnteringBackground];
  if ((pkui_disablesAutomaticDismissalUponEnteringBackground & 1) != 0 || !viewControllers)
  {
LABEL_10:
    if ((pkui_disablesAutomaticDismissalUponEnteringBackground & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  firstObject = [viewControllers firstObject];
  if ([firstObject pkui_disablesAutomaticDismissalUponEnteringBackground])
  {
LABEL_16:
    LOBYTE(v10) = 0;
LABEL_22:

    goto LABEL_23;
  }

  lastObject = [viewControllers lastObject];
  pkui_disablesAutomaticDismissalUponEnteringBackground2 = [lastObject pkui_disablesAutomaticDismissalUponEnteringBackground];

  if ((pkui_disablesAutomaticDismissalUponEnteringBackground2 & 1) == 0)
  {
LABEL_12:
    v11 = viewControllers;
    childViewControllers = [pkui_frontMostViewController childViewControllers];
    firstObject = [childViewControllers lastObject];

    if (firstObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        viewControllers = [firstObject viewControllers];

        firstObject2 = [viewControllers firstObject];
        if ([firstObject2 pkui_disablesAutomaticDismissalUponEnteringBackground])
        {

          goto LABEL_16;
        }

        lastObject2 = [viewControllers lastObject];
        pkui_disablesAutomaticDismissalUponEnteringBackground3 = [lastObject2 pkui_disablesAutomaticDismissalUponEnteringBackground];

        if ((pkui_disablesAutomaticDismissalUponEnteringBackground3 & 1) == 0)
        {
          v11 = viewControllers;
          goto LABEL_21;
        }

        goto LABEL_11;
      }

      pkui_disablesAutomaticDismissalUponEnteringBackground4 = [firstObject pkui_disablesAutomaticDismissalUponEnteringBackground];

      if (pkui_disablesAutomaticDismissalUponEnteringBackground4)
      {
        LOBYTE(v10) = 0;
        viewControllers = v11;
        goto LABEL_23;
      }
    }

LABEL_21:
    firstObject = +[PKDismissalPreventionAssertionManager sharedInstance];
    v10 = [firstObject shouldPreventAutomaticDismissal] ^ 1;
    viewControllers = v11;
    goto LABEL_22;
  }

LABEL_11:
  LOBYTE(v10) = 0;
LABEL_23:

  return v10;
}

- (void)_fadeView:(id)view visible:(BOOL)visible completion:(id)completion
{
  visibleCopy = visible;
  viewCopy = view;
  completionCopy = completion;
  if (visibleCopy)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [viewCopy alpha];
  if (v10 == v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (visibleCopy)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    [viewCopy setAlpha:v11];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2F98;
    v14[3] = &unk_147A0;
    v15 = viewCopy;
    v16 = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2FA8;
    v12[3] = &unk_147F0;
    v13 = completionCopy;
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

- (void)_applicationWillAddDeactivationReasonNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:_UIApplicationDeactivationReasonUserInfoKey];
  longLongValue = [v5 longLongValue];

  if (longLongValue == 3)
  {
    self->_isInAppSwitcher = 1;
    if (!self->_isActive)
    {

      [(PassbookSettingsContainerController *)self _restrictToShield];
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
      resourceDictionary = [(PassbookSettingsDeferredURLState *)self->_deferredURLState resourceDictionary];
      v6 = resourceDictionary;
      if (resourceDictionary)
      {
        v8 = _NSConcreteStackBlock;
        v9 = 3221225472;
        v10 = sub_33AC;
        v11 = &unk_14778;
        selfCopy = self;
        v13 = resourceDictionary;
        dispatch_async(&_dispatch_main_q, &v8);
        [(PassbookSettingsDeferredURLState *)self->_deferredURLState setResourceDictionary:0, v8, v9, v10, v11, selfCopy];
      }

      else
      {
        pendingURLResourceDictionary = [(PassbookSettingsListController *)self->_listSettingsController pendingURLResourceDictionary];

        if (pendingURLResourceDictionary)
        {
          [(PassbookSettingsListController *)self->_listSettingsController handlePendingURL];
        }
      }
    }
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  currentScreen = self->_currentScreen;
  if (currentScreen - 2 < 2 || currentScreen == 0)
  {
    [(PassbookSettingsListController *)self->_listSettingsController setPendingURLResourceDictionary:lCopy];
    [(PassbookSettingsListController *)self->_listSettingsController setUrlHandlingCompletion:completionCopy];
  }

  else if (currentScreen == 1)
  {
    [(PassbookSettingsListController *)self->_listSettingsController handleURL:lCopy withCompletion:completionCopy];
  }
}

@end