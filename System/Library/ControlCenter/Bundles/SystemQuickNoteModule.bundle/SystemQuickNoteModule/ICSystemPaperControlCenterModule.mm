@interface ICSystemPaperControlCenterModule
- (BOOL)isOnCoverSheetOrAppSwitcher;
- (CCUIButtonModuleViewController)moduleViewController;
- (FBSDisplayLayoutMonitor)layoutMonitor;
- (id)_primaryApplicationBundleIdentifier;
- (id)contentViewControllerForContext:(id)context;
- (id)iconGlyph;
- (void)_cleanupRemoteAlertHandle:(id)handle;
- (void)_updateIconGlyph;
- (void)activateAlert;
- (void)activateAlertWithPresentationTarget:(id)target;
- (void)activateSystemPaper;
- (void)dealloc;
- (void)handleTapWithTouchType:(int64_t)type;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation ICSystemPaperControlCenterModule

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v3.receiver = self;
  v3.super_class = ICSystemPaperControlCenterModule;
  [(ICSystemPaperControlCenterModule *)&v3 dealloc];
}

- (void)handleTapWithTouchType:(int64_t)type
{
  isOnCoverSheetOrAppSwitcher = [(ICSystemPaperControlCenterModule *)self isOnCoverSheetOrAppSwitcher];
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "About to open System Paper from the Control Center", buf, 2u);
  }

  contentModuleContext = [(ICSystemPaperControlCenterModule *)self contentModuleContext];
  [contentModuleContext dismissControlCenter];

  if (isOnCoverSheetOrAppSwitcher)
  {
    v16[0] = FBSOpenApplicationOptionKeyUnlockDevice;
    v16[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v17[0] = &__kCFBooleanTrue;
    v17[1] = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    v8 = [FBSOpenApplicationOptions optionsWithDictionary:v7];

    _primaryApplicationBundleIdentifier = [(ICSystemPaperControlCenterModule *)self _primaryApplicationBundleIdentifier];
    v10 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v11 = v10;
    if (_primaryApplicationBundleIdentifier)
    {
      v12 = _primaryApplicationBundleIdentifier;
    }

    else
    {
      v12 = @"com.apple.springboard";
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10A4;
    v14[3] = &unk_8278;
    v14[4] = self;
    [v10 openApplication:v12 withOptions:v8 completion:v14];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_117C;
    v13[3] = &unk_8250;
    v13[4] = self;
    dispatch_async(&_dispatch_main_q, v13);
  }
}

- (void)activateSystemPaper
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = [[SBSSystemNotesPresentationConfiguration alloc] initWithSceneBundleIdentifier:@"com.apple.mobilenotes" userActivity:0 preferredPresentationMode:0];
    v5 = [[SBSSystemNotesPresentationHandle alloc] initWithConfiguration:v6];
    [v5 activate];
  }

  else if (_os_feature_enabled_impl())
  {

    [(ICSystemPaperControlCenterModule *)self activateAlert];
  }
}

- (void)activateAlert
{
  _primaryApplicationBundleIdentifier = [(ICSystemPaperControlCenterModule *)self _primaryApplicationBundleIdentifier];
  if ([_primaryApplicationBundleIdentifier length])
  {
    v4 = [RBSProcessPredicate predicateMatchingBundleIdentifier:_primaryApplicationBundleIdentifier];
    v5 = +[RBSProcessStateDescriptor descriptor];
    v6 = [RBSProcessState statesForPredicate:v4 withDescriptor:v5 error:0];
    firstObject = [v6 firstObject];

    v12 = 0;
    if ([firstObject isRunning])
    {
      process = [firstObject process];
      v9 = [process pid];

      v10 = [BSProcessHandle processHandleForPID:v9];
      v12 = [[SBSRemoteAlertPresentationTarget alloc] initWithTargetProcess:v10];
    }

    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = v11;
  [(ICSystemPaperControlCenterModule *)self activateAlertWithPresentationTarget:v11];
}

- (void)activateAlertWithPresentationTarget:(id)target
{
  remoteAlertHandle = [(ICSystemPaperControlCenterModule *)self remoteAlertHandle];

  if (remoteAlertHandle)
  {
    v5 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[ICSystemPaperControlCenterModule activateAlertWithPresentationTarget:]";
      v12 = 1024;
      v13 = 118;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Not activating SystemPaperViewService because handle already exists%s:%d", buf, 0x12u);
    }
  }

  else
  {
    v9 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SystemPaperViewService" viewControllerClassName:@"ViewController"];
    v6 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v7 = [SBSRemoteAlertHandle newHandleWithDefinition:v9 configurationContext:v6];
    v8 = objc_alloc_init(SBSRemoteAlertActivationContext);
    [v7 registerObserver:self];
    [v7 activateWithContext:v8];
    [(ICSystemPaperControlCenterModule *)self setRemoteAlertHandle:v7];
  }
}

- (FBSDisplayLayoutMonitor)layoutMonitor
{
  layoutMonitor = self->_layoutMonitor;
  if (!layoutMonitor)
  {
    objc_initWeak(&location, self);
    v4 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_16B4;
    v11 = &unk_82A0;
    objc_copyWeak(&v12, &location);
    [v4 setTransitionHandler:&v8];
    v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v4, v8, v9, v10, v11];
    v6 = self->_layoutMonitor;
    self->_layoutMonitor = v5;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    layoutMonitor = self->_layoutMonitor;
  }

  return layoutMonitor;
}

- (BOOL)isOnCoverSheetOrAppSwitcher
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  layoutMonitor = [(ICSystemPaperControlCenterModule *)self layoutMonitor];
  currentLayout = [layoutMonitor currentLayout];
  elements = [currentLayout elements];

  v5 = [elements countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = FBSDisplayLayoutElementLockScreenIdentifier;
    v9 = SBSDisplayLayoutElementAppSwitcherIdentifier;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(elements);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        identifier = [v11 identifier];
        if ([identifier isEqualToString:v8])
        {

LABEL_13:
          v15 = 1;
          goto LABEL_14;
        }

        identifier2 = [v11 identifier];
        v14 = [identifier2 isEqualToString:v9];

        if (v14)
        {
          goto LABEL_13;
        }
      }

      v6 = [elements countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_14:

  return v15;
}

- (id)_primaryApplicationBundleIdentifier
{
  layoutMonitor = [(ICSystemPaperControlCenterModule *)self layoutMonitor];
  currentLayout = [layoutMonitor currentLayout];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  elements = [currentLayout elements];
  bundleIdentifier = [elements countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (bundleIdentifier)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != bundleIdentifier; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(elements);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isUIApplicationElement] && objc_msgSend(v8, "layoutRole") == &dword_0 + 1)
        {
          bundleIdentifier = [v8 bundleIdentifier];
          goto LABEL_12;
        }
      }

      bundleIdentifier = [elements countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (bundleIdentifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return bundleIdentifier;
}

- (id)contentViewControllerForContext:(id)context
{
  v7.receiver = self;
  v7.super_class = ICSystemPaperControlCenterModule;
  v4 = [(ICSystemPaperControlCenterModule *)&v7 contentViewControllerForContext:context];
  objc_opt_class();
  v5 = ICDynamicCast();
  [(ICSystemPaperControlCenterModule *)self setModuleViewController:v5];

  return v4;
}

- (void)_updateIconGlyph
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1AE8;
  block[3] = &unk_8250;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)iconGlyph
{
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:-1 scale:30.0];
  v4 = +[UIScreen mainScreen];
  traitCollection = [v4 traitCollection];
  v6 = [v3 configurationWithTraitCollection:traitCollection];

  v7 = [UIImage _systemImageNamed:@"quicknote" withConfiguration:v6];
  [v7 size];
  v9 = v8;
  [v7 size];
  v11 = v10;
  [v7 alignmentRectInsets];
  v16 = v13 + 0.0;
  v17 = v12 + 0.0;
  v18 = v9 - (v13 + v15);
  v19 = v11 - (v12 + v14);
  if (v13 < v15)
  {
    v13 = v15;
  }

  if (v12 < v14)
  {
    v12 = v14;
  }

  v20 = -v13;
  v21 = -v12;
  v49.origin.x = v16;
  v49.origin.y = v17;
  v49.size.width = v18;
  v49.size.height = v19;
  v50 = CGRectInset(v49, v20, v21);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  v26 = -CGRectGetMinX(v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v27 = -CGRectGetMinY(v51);
  v28 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v28 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == &dword_0 + 1)
  {
    imageWithHorizontallyFlippedOrientation = [v7 imageWithHorizontallyFlippedOrientation];

    v7 = imageWithHorizontallyFlippedOrientation;
  }

  remoteAlertHandle = [(ICSystemPaperControlCenterModule *)self remoteAlertHandle];
  isActive = [remoteAlertHandle isActive];

  v33 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v40 = _NSConcreteStackBlock;
  v41 = 3221225472;
  v42 = sub_1E3C;
  v43 = &unk_82C8;
  v47 = isActive;
  v44 = v7;
  v45 = v26;
  v46 = v27;
  v34 = v7;
  v35 = [v33 imageWithActions:&v40];
  v36 = [v35 imageWithRenderingMode:{2, v40, v41, v42, v43}];

  if (userInterfaceLayoutDirection == &dword_0 + 1)
  {
    imageWithHorizontallyFlippedOrientation2 = [v36 imageWithHorizontallyFlippedOrientation];
  }

  else
  {
    imageWithHorizontallyFlippedOrientation2 = v36;
  }

  v38 = imageWithHorizontallyFlippedOrientation2;

  return v38;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v3 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_22E0(v3);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2324(v5);
  }

  [(ICSystemPaperControlCenterModule *)self _cleanupRemoteAlertHandle:deactivateCopy];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  handleCopy = handle;
  domain = [errorCopy domain];
  if ([domain isEqualToString:SBSRemoteAlertHandleInvalidationErrorDomain])
  {
    if (![errorCopy code] || objc_msgSend(errorCopy, "code") == &dword_4 + 1)
    {

      goto LABEL_11;
    }

    v9 = [errorCopy code] == &dword_4;
  }

  else
  {
    v9 = 0;
  }

  if (!errorCopy || v9)
  {
LABEL_11:
    v10 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_23E0(errorCopy, v10);
    }

    goto LABEL_13;
  }

  v10 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_2368(errorCopy, v10);
  }

LABEL_13:

  [(ICSystemPaperControlCenterModule *)self _cleanupRemoteAlertHandle:handleCopy];
}

- (void)_cleanupRemoteAlertHandle:(id)handle
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_20FC;
  v5[3] = &unk_82F0;
  handleCopy = handle;
  selfCopy = self;
  v4 = handleCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (CCUIButtonModuleViewController)moduleViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_moduleViewController);

  return WeakRetained;
}

@end