@interface CBWindowManager
+ (id)sharedInstance;
- (BOOL)_hasLaunchedPrimaryAppProcess;
- (CBWindowManager)init;
- (double)_maxLevelForLayer:(unint64_t)layer;
- (id)_presentVC:(id)c onLayer:(unint64_t)layer backgroundTunnel:(BOOL)tunnel statusBarVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (id)createRepresentationWithIdentifier:(id)identifier;
- (id)presentViewController:(id)controller onLayer:(unint64_t)layer backgroundTunnel:(BOOL)tunnel statusBarVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)_adjustBackgroundWindowLevel;
- (void)_rekeyWindows;
- (void)windowDidAppear:(id)appear;
- (void)windowDidDismiss:(id)dismiss;
- (void)windowWillAppear:(id)appear;
- (void)windowWillDismiss:(id)dismiss;
@end

@implementation CBWindowManager

+ (id)sharedInstance
{
  if (qword_100092418 != -1)
  {
    sub_100047990();
  }

  v3 = qword_100092410;

  return v3;
}

- (CBWindowManager)init
{
  v20.receiver = self;
  v20.super_class = CBWindowManager;
  v2 = [(CBWindowManager *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = +[UIColor blackColor];
    view = [v3 view];
    [view setBackgroundColor:v4];

    v6 = objc_alloc_init(CBWindow);
    backgroundWindow = v2->_backgroundWindow;
    v2->_backgroundWindow = v6;

    [(CBWindow *)v2->_backgroundWindow setWindowLevel:-5000.0];
    [(CBWindow *)v2->_backgroundWindow setRootViewController:v3];
    rootViewController = [(CBWindow *)v2->_backgroundWindow rootViewController];
    [(CBWindow *)v2->_backgroundWindow setPresentedView:rootViewController];

    [(CBWindow *)v2->_backgroundWindow makeKeyAndVisible];
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating recording indicator manager for root window", v19, 2u);
    }

    v10 = [CBRecordingIndicatorManager alloc];
    windowScene = [(CBWindow *)v2->_backgroundWindow windowScene];
    v12 = [(CBRecordingIndicatorManager *)v10 initWithWindowScene:windowScene];
    rootWindowRecordingIndicatorManager = v2->_rootWindowRecordingIndicatorManager;
    v2->_rootWindowRecordingIndicatorManager = v12;

    v14 = [NSMutableArray arrayWithCapacity:3];
    for (i = 0; i != 3; ++i)
    {
      v16 = +[NSMutableArray array];
      [(NSArray *)v14 insertObject:v16 atIndex:i];
    }

    layers = v2->_layers;
    v2->_layers = v14;
  }

  return v2;
}

- (id)createRepresentationWithIdentifier:(id)identifier
{
  v4 = [CBWindowRepresentation windowRepresentationForIdentifier:identifier];
  [(CBWindowManager *)self _maxLevelForLayer:1];
  [v4 setWindowLevel:v5 + 10.0];
  [v4 setBackgroundTunnel:1];
  [v4 setWindowManager:self];
  [v4 setWindowManagerLayer:1];

  return v4;
}

- (id)presentViewController:(id)controller onLayer:(unint64_t)layer backgroundTunnel:(BOOL)tunnel statusBarVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  tunnelCopy = tunnel;
  controllerCopy = controller;
  completionCopy = completion;
  if ([(CBWindowManager *)self _hasLaunchedPrimaryAppProcess])
  {
    v16 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CBSceneManager: present viewController %@ to be on top of the Diagnostics app", &v20, 0xCu);
    }

    v17 = +[CBSceneManager sharedInstance];
    v18 = [v17 presentViewController:controllerCopy completion:completionCopy];
  }

  else
  {
    v18 = [(CBWindowManager *)self _presentVC:controllerCopy onLayer:layer backgroundTunnel:tunnelCopy statusBarVisible:visibleCopy animated:animatedCopy completion:completionCopy];
  }

  return v18;
}

- (id)_presentVC:(id)c onLayer:(unint64_t)layer backgroundTunnel:(BOOL)tunnel statusBarVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  tunnelCopy = tunnel;
  completionCopy = completion;
  cCopy = c;
  v16 = [[CBWindow alloc] initWithBackgroundTunnel:tunnelCopy];
  [(CBWindow *)v16 setWindowManager:self];
  [(CBWindow *)v16 setWindowManagerLayer:layer];
  [(CBWindowManager *)self _maxLevelForLayer:layer];
  [(CBWindow *)v16 setWindowLevel:v17 + 10.0];
  v18 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    [(CBWindow *)v16 windowLevel];
    *buf = 134217984;
    v32 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Set window level to: %f", buf, 0xCu);
  }

  [(CBWindow *)v16 setPresentViewControllerWithStatusBarShown:visibleCopy];
  [(CBWindow *)v16 setPresentedView:cCopy];
  [cCopy setModalPresentationStyle:0];
  v20 = objc_alloc_init(CBWindowRootViewController);
  [(CBWindowRootViewController *)v20 setWindow:v16];
  [(CBWindow *)v16 setRootViewController:v20];
  v21 = +[UIColor clearColor];
  [(CBWindow *)v16 setBackgroundColor:v21];

  windowManager = [(CBWindow *)v16 windowManager];
  [windowManager windowWillAppear:v16];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10002AC9C;
  v28[3] = &unk_10007E148;
  v23 = v16;
  v29 = v23;
  v30 = completionCopy;
  v24 = completionCopy;
  [(CBWindowRootViewController *)v20 presentViewController:cCopy animated:animatedCopy completion:v28];

  v25 = v30;
  v26 = v23;

  return v23;
}

- (void)windowWillAppear:(id)appear
{
  appearCopy = appear;
  [appearCopy setHidden:0];
}

- (void)windowDidAppear:(id)appear
{
  objc_initWeak(&location, appear);
  layers = [(CBWindowManager *)self layers];
  v5 = objc_loadWeakRetained(&location);
  v6 = [layers objectAtIndex:{objc_msgSend(v5, "windowManagerLayer")}];
  v7 = objc_loadWeakRetained(&location);
  [v6 addObject:v7];

  [(CBWindowManager *)self _adjustBackgroundWindowLevel];
  [(CBWindowManager *)self _rekeyWindows];
  objc_destroyWeak(&location);
}

- (void)windowWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  for (i = 0; i != 3; ++i)
  {
    layers = [(CBWindowManager *)self layers];
    v6 = [layers objectAtIndex:i];

    [v6 removeObject:dismissCopy];
  }

  [(CBWindowManager *)self _adjustBackgroundWindowLevel];
  [(CBWindowManager *)self _rekeyWindows];
}

- (void)windowDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  [dismissCopy setHidden:1];
}

- (BOOL)_hasLaunchedPrimaryAppProcess
{
  v2 = +[CBAppManager sharedInstance];
  primaryAppBundleID = [v2 primaryAppBundleID];
  v4 = +[FBProcessManager sharedInstance];
  v5 = [v4 applicationProcessesForBundleIdentifier:primaryAppBundleID];

  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 description];
    v10 = 138412546;
    v11 = v7;
    v12 = 2048;
    v13 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Number of primary app processes (%@): %lu", &v10, 0x16u);
  }

  v8 = [v5 count] != 0;
  return v8;
}

- (void)_rekeyWindows
{
  v3 = 2;
  while (1)
  {
    layers = [(CBWindowManager *)self layers];
    v5 = [layers objectAtIndex:v3];

    if ([v5 count])
    {
      break;
    }

    if (!--v3)
    {
      return;
    }
  }

  lastObject = [v5 lastObject];
  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = lastObject;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Making %@ the key window.", &v8, 0xCu);
  }

  [lastObject makeKeyWindow];
}

- (double)_maxLevelForLayer:(unint64_t)layer
{
  if (layer)
  {
    if (layer == 2)
    {
      v4 = &UIWindowLevelAlert;
    }

    else
    {
      v4 = &UIWindowLevelNormal;
    }

    v5 = *v4;
  }

  else
  {
    v5 = -4990.0;
  }

  layers = [(CBWindowManager *)self layers];
  v7 = [layers objectAtIndex:layer];

  if ([v7 count])
  {
    v8 = 0;
    do
    {
      v9 = [v7 objectAtIndex:v8];
      [v9 windowLevel];
      if (v5 < v10)
      {
        [v9 windowLevel];
        v5 = v11;
      }

      ++v8;
    }

    while (v8 < [v7 count]);
  }

  return v5;
}

- (void)_adjustBackgroundWindowLevel
{
  v4 = 0;
  v5 = 0.0;
  *&v2 = 138412546;
  v18 = v2;
  do
  {
    layers = [(CBWindowManager *)self layers];
    v7 = [layers objectAtIndex:v4];

    if ([v7 count])
    {
      v8 = 0;
      do
      {
        v9 = [v7 objectAtIndex:v8];
        if ([v9 backgroundTunnel])
        {
          v10 = CheckerBoardLogHandleForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            [v9 windowLevel];
            *buf = v18;
            v20 = *&v9;
            v21 = 2048;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Examining %@ for background leveling: %f", buf, 0x16u);
          }

          [v9 windowLevel];
          v5 = v12 + -1.0;
        }

        ++v8;
      }

      while (v8 < [v7 count]);
    }

    ++v4;
  }

  while (v4 != 3);
  backgroundWindow = [(CBWindowManager *)self backgroundWindow];
  [backgroundWindow windowLevel];
  v15 = v14;

  if (v15 != v5)
  {
    v16 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting background to level %f.", buf, 0xCu);
    }

    backgroundWindow2 = [(CBWindowManager *)self backgroundWindow];
    [backgroundWindow2 setWindowLevel:v5];
  }
}

@end