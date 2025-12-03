@interface CBSceneManager
+ (double)windowLevel:(unint64_t)level;
+ (id)rootViewController:(unint64_t)controller;
+ (id)sceneIdentifier:(unint64_t)identifier;
+ (id)sharedInstance;
- (CBSceneManager)init;
- (UIEdgeInsets)_additionalSafeAreaInsets;
- (id)_rootStatusBarViewController;
- (id)presentViewController:(id)controller completion:(id)completion;
- (void)_removeAllScenes;
- (void)_showSceneStatusBar:(BOOL)bar;
- (void)addScene:(unint64_t)scene;
- (void)hideSceneStatusBar;
- (void)showSceneStatusBar;
- (void)statusBarStyle:(int64_t)style;
@end

@implementation CBSceneManager

+ (id)sharedInstance
{
  if (qword_100092408 != -1)
  {
    sub_10004797C();
  }

  v3 = qword_100092400;

  return v3;
}

- (CBSceneManager)init
{
  v7.receiver = self;
  v7.super_class = CBSceneManager;
  v2 = [(CBSceneManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    windowDict = v2->_windowDict;
    v2->_windowDict = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_removeAllScenes" name:@"AppManagerPrimaryAppDidExit" object:0];
  }

  return v2;
}

- (void)addScene:(unint64_t)scene
{
  v5 = [CBSceneManager sceneIdentifier:?];
  windowDict = [(CBSceneManager *)self windowDict];
  v7 = [windowDict objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CBSceneManager: %@ already exists", buf, 0xCu);
    }
  }

  else
  {
    [CBSceneManager windowLevel:scene];
    v10 = v9;
    v8 = [CBSceneManager rootViewController:scene];
    v11 = +[FBSMutableSceneDefinition definition];
    v12 = [FBSSceneIdentity identityForIdentifier:v5];
    [v11 setIdentity:v12];

    v13 = +[FBSSceneClientIdentity localIdentity];
    [v11 setClientIdentity:v13];

    v14 = +[UIWindowSceneSpecification specification];
    [v11 setSpecification:v14];

    specification = [v11 specification];
    v16 = [FBSMutableSceneParameters parametersForSpecification:specification];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100029B98;
    v37[3] = &unk_10007DC58;
    v37[4] = v10;
    [v16 updateSettingsWithBlock:v37];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100029C60;
    v35[3] = &unk_10007E358;
    v17 = v16;
    v36 = v17;
    [v17 updateClientSettingsWithBlock:v35];
    v18 = +[FBSceneManager sharedInstance];
    v19 = [v18 createSceneWithDefinition:v11 initialParameters:v17];

    v20 = +[FBLocalSynchronousSceneClientProvider sharedInstance];
    v34 = v19;
    identifier = [v19 identifier];
    v22 = [v20 fbsSceneWithIdentifier:identifier];

    v23 = +[FBLocalSynchronousSceneClientProvider sharedInstance];
    identifier2 = [v22 identifier];
    v25 = [v23 fbsSceneWithIdentifier:identifier2];
    v26 = [UIWindowScene _sceneForFBSScene:v25];

    v27 = [CBSceneWindow alloc];
    v28 = +[UIScreen mainScreen];
    [v28 _referenceBounds];
    v29 = [(CBSceneWindow *)v27 _initWithFrame:v5 debugName:v22 scene:1 attached:?];

    [v29 setWindowScene:v26];
    [v29 setHidden:0];
    [v29 setLevel:1.0];
    v30 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Creating CBRecordingIndicatorManager for scene status bar", buf, 2u);
    }

    v31 = [[CBRecordingIndicatorManager alloc] initWithWindowScene:v26];
    [v29 setRecordingIndicatorManager:v31];
    [v29 setRootViewController:v8];
    windowDict2 = [(CBSceneManager *)self windowDict];
    [windowDict2 setObject:v29 forKeyedSubscript:v5];

    v33 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v5;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "CBSceneManager: created scene %@", buf, 0xCu);
    }
  }
}

- (id)presentViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CBSceneManager: presenting %@", &v15, 0xCu);
  }

  v9 = [CBSceneManager sceneIdentifier:0];
  windowDict = [(CBSceneManager *)self windowDict];
  v11 = [windowDict objectForKeyedSubscript:v9];

  if (!v11)
  {
    [(CBSceneManager *)self addScene:0];
  }

  [controllerCopy setModalPresentationStyle:0];
  [(CBSceneManager *)self _additionalSafeAreaInsets];
  [controllerCopy setAdditionalSafeAreaInsets:?];
  windowDict2 = [(CBSceneManager *)self windowDict];
  v13 = [windowDict2 objectForKeyedSubscript:v9];

  [v13 presentViewController:controllerCopy animated:1 completion:completionCopy];

  return v13;
}

- (void)statusBarStyle:(int64_t)style
{
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    styleCopy = style;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CBSceneManager: statusBarStyle %li", &v8, 0xCu);
  }

  _rootStatusBarViewController = [(CBSceneManager *)self _rootStatusBarViewController];
  v7 = _rootStatusBarViewController;
  if (_rootStatusBarViewController)
  {
    [_rootStatusBarViewController statusBarStyle:style];
  }
}

- (void)showSceneStatusBar
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBSceneManager: showSceneStatusBar", v4, 2u);
  }

  [(CBSceneManager *)self _showSceneStatusBar:1];
}

- (void)hideSceneStatusBar
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBSceneManager: hideSceneStatusBar", v4, 2u);
  }

  [(CBSceneManager *)self _showSceneStatusBar:0];
}

- (void)_showSceneStatusBar:(BOOL)bar
{
  barCopy = bar;
  _rootStatusBarViewController = [(CBSceneManager *)self _rootStatusBarViewController];
  if (_rootStatusBarViewController)
  {
    v5 = _rootStatusBarViewController;
    if (barCopy)
    {
      [_rootStatusBarViewController showStatusBar];
    }

    else
    {
      [_rootStatusBarViewController hideStatusBar];
    }

    _rootStatusBarViewController = v5;
  }
}

- (id)_rootStatusBarViewController
{
  v3 = [CBSceneManager sceneIdentifier:2];
  windowDict = [(CBSceneManager *)self windowDict];
  v5 = [windowDict objectForKeyedSubscript:v3];

  rootViewController = [v5 rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rootViewController2 = [v5 rootViewController];
  }

  else
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CBSceneManager: CBRootStatusBarViewController is nil", v11, 2u);
    }

    rootViewController2 = 0;
  }

  return rootViewController2;
}

- (void)_removeAllScenes
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBSceneManager: _removeAllScenes", buf, 2u);
  }

  windowDict = [(CBSceneManager *)self windowDict];
  v5 = [windowDict copy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A2D4;
  block[3] = &unk_10007D540;
  v9 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);
  windowDict2 = [(CBSceneManager *)self windowDict];
  [windowDict2 removeAllObjects];
}

+ (id)sceneIdentifier:(unint64_t)identifier
{
  if (identifier == 2)
  {
    identifier = @"checkerboard-diagnostics-statusbar";
  }

  else if (identifier == 1)
  {
    v4 = +[FBSceneManager keyboardScene];
    identifier = [v4 identifier];
  }

  else if (identifier)
  {
    identifier = 0;
  }

  else
  {
    identifier = @"checkerboard-diagnostics-viewcontroller";
  }

  return identifier;
}

+ (double)windowLevel:(unint64_t)level
{
  result = UIWindowLevelStatusBar;
  if (!level)
  {
    result = UIWindowLevelStatusBar + 1.0;
  }

  if (level == 1)
  {
    result = UIWindowLevelStatusBar + 2.0;
  }

  if (level == 2)
  {
    return UIWindowLevelStatusBar + 3.0;
  }

  return result;
}

+ (id)rootViewController:(unint64_t)controller
{
  if (!controller)
  {
    v4 = &off_10007CA60;
LABEL_5:
    v5 = objc_alloc_init(*v4);

    return v5;
  }

  if (controller == 2)
  {
    v4 = off_10007CA58;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (UIEdgeInsets)_additionalSafeAreaInsets
{
  v2 = +[UIScreen mainScreen];
  [v2 _peripheryInsets];
  v4 = v3;

  v5 = +[UIApplication sharedApplication];
  windows = [v5 windows];
  firstObject = [windows firstObject];
  windowScene = [firstObject windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v11 = v10;

  v12 = 0.0;
  if (v4 <= 0.0)
  {
    v12 = v11;
  }

  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

@end