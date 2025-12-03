@interface CarSceneDelegate
+ (void)initialize;
- (BOOL)shouldIgnoreActivationStateForBanner;
- (CarSceneController)sceneController;
- (ChromeViewController)chromeViewController;
- (Class)_windowClass;
- (NSString)description;
- (NSString)sceneIdentifier;
- (PPTTestCoordinatorProtocol)testCoordinator;
- (UIScene)scene;
- (id)appSessionController;
- (id)entryPointsCoordinator;
- (void)_objc_initiateDealloc;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)dealloc;
- (void)rebuildContextsForCurrentAppState;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation CarSceneDelegate

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    __class_setCustomDeallocInitiation(self);
  }
}

- (UIScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (BOOL)shouldIgnoreActivationStateForBanner
{
  sceneType = self->_sceneType;
  if (sceneType == 6)
  {
    chromeViewController = [(CarSceneDelegate *)self chromeViewController];
    topContext = [chromeViewController topContext];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = topContext;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      currentDesiredCards = [v6 currentDesiredCards];
      v8 = [currentDesiredCards containsObject:@"Guidance"] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = sceneType > 3;
  }

  return v8;
}

- (CarSceneController)sceneController
{
  sceneController = self->_sceneController;
  if (!sceneController)
  {
    sceneType = [(CarSceneDelegate *)self sceneType];
    if (sceneType <= 6)
    {
      v5 = sceneType;
      if (((1 << sceneType) & 0x54) != 0)
      {
        v6 = CarMapWidgetController;
        goto LABEL_7;
      }

      if (((1 << sceneType) & 0x28) != 0)
      {
        v6 = CarSmallWidgetController;
LABEL_7:
        v7 = [[v6 alloc] initWithCarSceneType:v5];
LABEL_8:
        v8 = self->_sceneController;
        self->_sceneController = v7;

        sceneController = self->_sceneController;
        goto LABEL_9;
      }

      if (sceneType == 1)
      {
        v7 = +[CarDisplayController sharedInstance];
        goto LABEL_8;
      }
    }

    v7 = objc_alloc_init(CarUnspecifiedWidgetController);
    goto LABEL_8;
  }

LABEL_9:

  return sceneController;
}

- (id)entryPointsCoordinator
{
  appSessionController = [(CarSceneDelegate *)self appSessionController];
  primaryPlatformController = [appSessionController primaryPlatformController];
  entryPointsCoordinator = [primaryPlatformController entryPointsCoordinator];

  delegate = [entryPointsCoordinator delegate];

  if (!delegate)
  {
    v7 = [CarMapsActionController alloc];
    appSessionController2 = [(CarSceneDelegate *)self appSessionController];
    primaryPlatformController2 = [appSessionController2 primaryPlatformController];
    v10 = [(CarMapsActionController *)v7 initWithPlatformController:primaryPlatformController2];

    [entryPointsCoordinator setDelegate:v10];
    carActionController = self->_carActionController;
    self->_carActionController = v10;
  }

  return entryPointsCoordinator;
}

- (id)appSessionController
{
  v2 = +[UIApplication sharedMapsDelegate];
  appSessionController = [v2 appSessionController];

  return appSessionController;
}

- (ChromeViewController)chromeViewController
{
  sceneController = [(CarSceneDelegate *)self sceneController];
  chromeViewController = [sceneController chromeViewController];

  return chromeViewController;
}

- (NSString)sceneIdentifier
{
  sceneType = [(CarSceneDelegate *)self sceneType];
  if (sceneType > 6)
  {
    v3 = @".Unknown";
  }

  else
  {
    v3 = off_1016386B8[sceneType];
  }

  return [NSString stringWithFormat:@"CarPlay%@", v3];
}

- (void)_objc_initiateDealloc
{
  if (!pthread_main_np())
  {
    v3 = sub_100005610();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "CarSceneDelegate deallocation initiated from the background", buf, 2u);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007154C4;
  block[3] = &unk_101627770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (PPTTestCoordinatorProtocol)testCoordinator
{
  if ([(CarSceneDelegate *)self sceneType]!= 1)
  {
    goto LABEL_6;
  }

  carTestCoordinator = self->_carTestCoordinator;
  if (!carTestCoordinator)
  {
    v4 = objc_alloc_init(CarTestCoordinator);
    v5 = self->_carTestCoordinator;
    self->_carTestCoordinator = v4;

    carTestCoordinator = self->_carTestCoordinator;
  }

  if ([(CarTestCoordinator *)carTestCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestCoordinatorProtocol])
  {
    v6 = self->_carTestCoordinator;
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  return v6;
}

- (void)rebuildContextsForCurrentAppState
{
  sceneController = [(CarSceneDelegate *)self sceneController];
  [sceneController _mapsCar_rebuildContextsForCurrentAppState];
}

- (Class)_windowClass
{
  sceneType = [(CarSceneDelegate *)self sceneType];
  if (sceneType <= 6 && (((1 << sceneType) & 0xD) != 0 || ((1 << sceneType) & 0x70) != 0))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v6 = sub_100005610();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sceneType2 = [(CarSceneDelegate *)self sceneType];
      if (sceneType2 > 6)
      {
        v8 = @".Unknown";
      }

      else
      {
        v8 = off_1016386B8[sceneType2];
      }

      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "windowClass called for carSceneType: %@, which is invalid", &v9, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  scene = [(CarSceneDelegate *)self scene];

  if (scene != sceneCopy)
  {
    v18 = sub_100005610();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      scene2 = [(CarSceneDelegate *)self scene];
      _FBSScene = [scene2 _FBSScene];
      *buf = 138412546;
      v93 = _FBSScene;
      v94 = 2112;
      v95 = sSceneCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CarSceneController - FBSceneUpdateAction: received callback for _FBScene that differs from current scene's _FBScene, current: %@ new: %@", buf, 0x16u);
    }

    goto LABEL_68;
  }

  v89 = contextCopy;
  v90 = diffCopy;
  sceneType = [(CarSceneDelegate *)self sceneType];
  v22 = sSceneCopy;
  settings = [(__CFString *)v22 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  settings2 = [(__CFString *)v22 settings];
  settings3 = settings2;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if ((v29 & 1) == 0)
    {
      v28 = 1;
      goto LABEL_27;
    }

    if (GEOConfigGetBOOL() && (GEOConfigGetBOOL() & 1) != 0)
    {
      v28 = 6;
      goto LABEL_27;
    }

    settings3 = [(__CFString *)v22 settings];
    itemType = [settings3 itemType];
    if (itemType > 1)
    {
      if (itemType == 2)
      {
        v28 = 5;
        goto LABEL_26;
      }

      if (itemType != 3)
      {
        goto LABEL_23;
      }
    }

    else if (itemType)
    {
      if (itemType == 1)
      {
        v28 = 4;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (GEOConfigGetBOOL())
    {
      v28 = 6;
    }

    else
    {
      v28 = 4;
    }

    goto LABEL_26;
  }

  widgetStyle = [settings2 widgetStyle];
  if ((widgetStyle - 1) < 2)
  {
    v28 = 3;
LABEL_26:

LABEL_27:
    settings4 = [(__CFString *)v22 settings];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = settings4;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    v18 = v33;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v18;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    v36 = settingsCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    v39 = v38;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    v42 = v18 | v39;
    if (v18 | v39)
    {
      [v18 safeAreaInsetsPortrait];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v39 safeAreaInsetsPortrait];
      v87 = v46 != v51 || v44 != v52 || v50 != v53 || v48 != v54;
      v55 = v18;
      selfCopy = self;
      v57 = v28;
      v58 = sceneCopy;
      v59 = sSceneCopy;
      v60 = sceneType;
      v61 = v41;
      layoutJustification = [v41 layoutJustification];
      v63 = layoutJustification == [v35 layoutJustification];
      v41 = v61;
      sceneType = v60;
      sSceneCopy = v59;
      sceneCopy = v58;
      v28 = v57;
      self = selfCopy;
      v18 = v55;
      v64 = !v63;
      v42 = v87 | v64;
    }

    if (sceneType == v28)
    {
      if (((sceneType == 6) & v42) == 0)
      {
        goto LABEL_67;
      }
    }

    else if (sceneType < 4 || v28 <= 3)
    {
      v88 = v41;
      sceneController4 = sub_100005610();
      if (os_log_type_enabled(sceneController4, OS_LOG_TYPE_ERROR))
      {
        if (sceneType > 6)
        {
          v68 = @".Unknown";
        }

        else
        {
          v68 = off_1016386B8[sceneType];
        }

        v85 = off_101638688[v28 - 1];
        *buf = 138412546;
        v93 = v68;
        v94 = 2112;
        v95 = v85;
        _os_log_impl(&_mh_execute_header, sceneController4, OS_LOG_TYPE_ERROR, "CarSceneController - FBSceneUpdateAction: scene was of type: %@, update to scenetype: %@, which is not supported -> ignoring the call.", buf, 0x16u);
      }

      goto LABEL_66;
    }

    v86 = v35;
    v88 = v41;
    v65 = sub_100005610();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      if (sceneType - 4 > 2)
      {
        v66 = @".Unknown";
      }

      else
      {
        v66 = off_101638670[sceneType - 4];
      }

      v69 = v28;
      v70 = off_101638688[v28 - 1];
      scene3 = [(CarSceneDelegate *)self scene];
      *buf = 138412802;
      v93 = v66;
      v94 = 2112;
      v95 = v70;
      v28 = v69;
      v96 = 2048;
      activationState = [scene3 activationState];
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "CarSceneController - FBSceneUpdateAction: updating scene type from: %@, to: %@, sceneState: %ld", buf, 0x20u);
    }

    window = [(CarSceneDelegate *)self window];
    [window setRootViewController:0];

    sceneController = [(CarSceneDelegate *)self sceneController];
    scene4 = [(CarSceneDelegate *)self scene];
    [sceneController sceneDidDisconnect:scene4];

    [(CarSceneDelegate *)self setSceneController:0];
    [(CarSceneDelegate *)self setSceneType:v28];
    sceneController2 = [(CarSceneDelegate *)self sceneController];
    scene5 = [(CarSceneDelegate *)self scene];
    scene6 = [(CarSceneDelegate *)self scene];
    session = [scene6 session];
    [sceneController2 _mapsCar_scene:scene5 willConnectToSession:session options:0];

    sceneController3 = [(CarSceneDelegate *)self sceneController];
    chromeViewController = [sceneController3 chromeViewController];
    window2 = [(CarSceneDelegate *)self window];
    [window2 setRootViewController:chromeViewController];

    if ([(CarSceneDelegate *)self sceneType]== 6)
    {
      [(CarSceneDelegate *)self rebuildContextsForCurrentAppState];
    }

    scene7 = [(CarSceneDelegate *)self scene];
    activationState2 = [scene7 activationState];

    v35 = v86;
    if (activationState2 >= 2)
    {
      v41 = v88;
      if (activationState2 != 2)
      {
LABEL_67:

        contextCopy = v89;
        diffCopy = v90;
        goto LABEL_68;
      }

      sceneController4 = [(CarSceneDelegate *)self sceneController];
      scene8 = [(CarSceneDelegate *)self scene];
      [sceneController4 sceneDidEnterBackground:scene8];
    }

    else
    {
      sceneController4 = [(CarSceneDelegate *)self sceneController];
      scene8 = [(CarSceneDelegate *)self scene];
      [sceneController4 sceneWillEnterForeground:scene8];
    }

LABEL_66:
    v41 = v88;
    goto LABEL_67;
  }

  if (widgetStyle == 3)
  {
    v28 = 2;
    goto LABEL_26;
  }

LABEL_23:

  v18 = sub_100005610();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CarSceneController - FBSceneUpdateAction: received an update request to .Unspecified scene type. Ignoring.", buf, 2u);
  }

LABEL_68:
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sceneCopy = scene;
  contextsCopy = contexts;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v22 = "[CarSceneDelegate scene:openURLContexts:]";
        v23 = 2080;
        v24 = "CarSceneDelegate.m";
        v25 = 1024;
        v26 = 265;
        v27 = 2080;
        v28 = "dispatch_get_main_queue()";
        v29 = 2080;
        v30 = dispatch_queue_get_label(&_dispatch_main_q);
        v31 = 2080;
        v32 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v22 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v11 = sceneCopy;
  [contextsCopy anyObject];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B26F70;
  v17[3] = &unk_101656A00;
  v18 = v17[4] = self;
  v19 = v11;
  v20 = v11;
  v12 = v11;
  v13 = v18;
  dispatch_async(&_dispatch_main_q, v17);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v21 = "[CarSceneDelegate scene:continueUserActivity:]";
        v22 = 2080;
        v23 = "CarSceneDelegate.m";
        v24 = 1024;
        v25 = 251;
        v26 = 2080;
        v27 = "dispatch_get_main_queue()";
        v28 = 2080;
        v29 = dispatch_queue_get_label(&_dispatch_main_q);
        v30 = 2080;
        v31 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v21 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100B272B8;
  v16[3] = &unk_101656A00;
  v16[4] = self;
  v17 = activityCopy;
  v18 = sceneCopy;
  v19 = v18;
  v11 = activityCopy;
  v12 = v18;
  dispatch_async(&_dispatch_main_q, v16);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidEnterBackground", "", &v16, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [backgroundCopy description];
    sceneType = [(CarSceneDelegate *)self sceneType];
    if (sceneType > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[sceneType];
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-sceneDidEnterBackground: %@, carSceneType: %@", &v16, 0x16u);
  }

  sceneController = [(CarSceneDelegate *)self sceneController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    sceneController2 = [(CarSceneDelegate *)self sceneController];
    [sceneController2 sceneDidEnterBackground:backgroundCopy];
  }

  entryPointsCoordinator = [(CarSceneDelegate *)self entryPointsCoordinator];
  session = [backgroundCopy session];
  [entryPointsCoordinator didEnterBackgroundWithSession:session];

  v15 = sub_100005610();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidEnterBackground", "", &v16, 2u);
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneWillEnterForeground", "", &v16, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [foregroundCopy description];
    sceneType = [(CarSceneDelegate *)self sceneType];
    if (sceneType > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[sceneType];
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-sceneWillEnterForeground: %@, carSceneType: %@", &v16, 0x16u);
  }

  sceneController = [(CarSceneDelegate *)self sceneController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    sceneController2 = [(CarSceneDelegate *)self sceneController];
    [sceneController2 sceneWillEnterForeground:foregroundCopy];
  }

  entryPointsCoordinator = [(CarSceneDelegate *)self entryPointsCoordinator];
  session = [foregroundCopy session];
  [entryPointsCoordinator willEnterForegroundWithSession:session];

  v15 = sub_100005610();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneWillEnterForeground", "", &v16, 2u);
  }
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneWillResignActive", "", &v16, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [activeCopy description];
    sceneType = [(CarSceneDelegate *)self sceneType];
    if (sceneType > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[sceneType];
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-sceneWillResignActive: %@, carSceneType: %@", &v16, 0x16u);
  }

  sceneController = [(CarSceneDelegate *)self sceneController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    sceneController2 = [(CarSceneDelegate *)self sceneController];
    [sceneController2 sceneWillResignActive:activeCopy];
  }

  entryPointsCoordinator = [(CarSceneDelegate *)self entryPointsCoordinator];
  session = [activeCopy session];
  [entryPointsCoordinator willResignActiveWithSession:session];

  v15 = sub_100005610();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneWillResignActive", "", &v16, 2u);
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidBecomeActive", "", &v16, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [activeCopy description];
    sceneType = [(CarSceneDelegate *)self sceneType];
    if (sceneType > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[sceneType];
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-sceneDidBecomeActive: %@, carSceneType: %@", &v16, 0x16u);
  }

  sceneController = [(CarSceneDelegate *)self sceneController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    sceneController2 = [(CarSceneDelegate *)self sceneController];
    [sceneController2 sceneDidBecomeActive:activeCopy];
  }

  entryPointsCoordinator = [(CarSceneDelegate *)self entryPointsCoordinator];
  session = [activeCopy session];
  [entryPointsCoordinator didBecomeActiveWithSession:session];

  v15 = sub_100005610();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidBecomeActive", "", &v16, 2u);
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidDisconnect", "", buf, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [disconnectCopy description];
    sceneType = [(CarSceneDelegate *)self sceneType];
    if (sceneType > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[sceneType];
    }

    *buf = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-sceneDidDisconnect: %@, carSceneType: %@", buf, 0x16u);
  }

  label = dispatch_queue_get_label(&_dispatch_main_q);
  v11 = dispatch_queue_get_label(0);
  if (label != v11 && (!label || !v11 || strcmp(label, v11)))
  {
    v23 = sub_10006D178();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = dispatch_queue_get_label(&_dispatch_main_q);
      v25 = dispatch_queue_get_label(0);
      *buf = 136316418;
      v29 = "[CarSceneDelegate sceneDidDisconnect:]";
      v30 = 2080;
      v31 = "CarSceneDelegate.m";
      v32 = 1024;
      v33 = 181;
      v34 = 2080;
      v35 = "dispatch_get_main_queue()";
      v36 = 2080;
      v37 = v24;
      v38 = 2080;
      v39 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v29 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v12 = disconnectCopy;
  sceneType2 = [(CarSceneDelegate *)self sceneType];
  if (sceneType2 > 6)
  {
    v14 = @".Unknown";
  }

  else
  {
    v14 = off_1016386B8[sceneType2];
  }

  v15 = [NSString stringWithFormat:@"%@_%p", v14, self];
  [v12 _unregisterSettingsDiffActionArrayForKey:v15];

  if ([(CarSceneDelegate *)self sceneType]!= 1)
  {
    window = [(CarSceneDelegate *)self window];
    [window setHidden:1];

    window2 = [(CarSceneDelegate *)self window];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      window3 = [(CarSceneDelegate *)self window];
      [window3 invalidate];
    }

    [(CarSceneDelegate *)self setWindow:0];
  }

  sceneController = [(CarSceneDelegate *)self sceneController];
  [sceneController sceneDidDisconnect:v12];

  v21 = +[UIApplication sharedMapsDelegate];
  [v21 updateNavigationIdleTimerConfiguration];

  v22 = sub_100005610();
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidDisconnect", "", buf, 2u);
  }
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sub_100005610();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WillConnectToSession", "", buf, 2u);
  }

  v12 = sub_100005610();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CarDisplayControllerPrepare", "", buf, 2u);
  }

  v13 = +[CarDisplayController sharedInstance];
  [v13 prepareCarPlay];

  v14 = sub_100005610();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CarDisplayControllerPrepare", "", buf, 2u);
  }

  v15 = sceneCopy;
  [(CarSceneDelegate *)self setScene:v15];
  _FBSScene = [v15 _FBSScene];
  settings = [_FBSScene settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  settings2 = [_FBSScene settings];
  settings3 = settings2;
  if (isKindOfClass)
  {
    widgetStyle = [settings2 widgetStyle];
    v22 = 2;
    if (widgetStyle != 3)
    {
      v22 = 0;
    }

    if ((widgetStyle - 1) >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 3;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  v24 = objc_opt_isKindOfClass();

  if (v24)
  {
    if (GEOConfigGetBOOL() && (GEOConfigGetBOOL() & 1) != 0)
    {
      v23 = 6;
      goto LABEL_19;
    }

    settings3 = [_FBSScene settings];
    itemType = [settings3 itemType];
    if (itemType > 1)
    {
      if (itemType == 2)
      {
        v23 = 5;
        goto LABEL_13;
      }

      if (itemType != 3)
      {
        goto LABEL_71;
      }
    }

    else if (itemType)
    {
      if (itemType == 1)
      {
        v23 = 4;
LABEL_13:

        goto LABEL_19;
      }

LABEL_71:
      v23 = 0;
      goto LABEL_13;
    }

    if (GEOConfigGetBOOL())
    {
      v23 = 6;
    }

    else
    {
      v23 = 4;
    }

    goto LABEL_13;
  }

  v23 = 1;
LABEL_19:

  [(CarSceneDelegate *)self setSceneType:v23];
  selfCopy = self;
  v25 = [NSArray arrayWithObjects:&selfCopy count:1];
  sceneType = [(CarSceneDelegate *)self sceneType];
  if (sceneType > 6)
  {
    v27 = @".Unknown";
  }

  else
  {
    v27 = off_1016386B8[sceneType];
  }

  v28 = [NSString stringWithFormat:@"%@_%p", v27, self];
  [v15 _registerSettingsDiffActionArray:v25 forKey:v28];

  v29 = sub_100005610();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [v15 description];
    sceneType2 = [(CarSceneDelegate *)self sceneType];
    if (sceneType2 > 6)
    {
      v32 = @".Unknown";
    }

    else
    {
      v32 = off_1016386B8[sceneType2];
    }

    *buf = 138413058;
    v69 = v30;
    v70 = 2112;
    v71 = sessionCopy;
    v72 = 2112;
    v73 = optionsCopy;
    v74 = 2112;
    v75 = v32;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "-scene:willConnectToSession:withOptions: %@, %@, %@, carSceneType: %@", buf, 0x2Au);
  }

  v33 = sub_100005610();
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PlatformController", "", buf, 2u);
  }

  appSessionController = [(CarSceneDelegate *)self appSessionController];
  primaryPlatformController = [appSessionController primaryPlatformController];

  v36 = +[CarDisplayController sharedInstance];
  [v36 setPlatformController:primaryPlatformController];

  v37 = sub_100005610();
  if (os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlatformController", "", buf, 2u);
  }

  v38 = sub_100005610();
  if (os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IdleTimerConfiguration", "", buf, 2u);
  }

  v39 = +[UIApplication sharedMapsDelegate];
  [v39 updateNavigationIdleTimerConfiguration];

  v40 = sub_100005610();
  if (os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IdleTimerConfiguration", "", buf, 2u);
  }

  v41 = sub_100005610();
  if (os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneController", "", buf, 2u);
  }

  sceneController = [(CarSceneDelegate *)self sceneController];
  [sceneController _mapsCar_scene:v15 willConnectToSession:sessionCopy options:optionsCopy];

  v43 = sub_100005610();
  if (os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneController", "", buf, 2u);
  }

  chromeViewController = [primaryPlatformController chromeViewController];

  if (!chromeViewController)
  {
    v45 = +[CarDisplayController sharedInstance];
    chromeViewController2 = [v45 chromeViewController];
    [primaryPlatformController setChromeViewController:chromeViewController2];
  }

  if ([(CarSceneDelegate *)self sceneType]!= 1)
  {
    v47 = sub_100005610();
    if (os_signpost_enabled(v47))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateWindow", "", buf, 2u);
    }

    v48 = [objc_alloc(-[CarSceneDelegate _windowClass](self "_windowClass"))];
    [(CarSceneDelegate *)self setWindow:v48];

    sceneType3 = [(CarSceneDelegate *)self sceneType];
    if (sceneType3 > 6)
    {
      v50 = @".Unknown";
    }

    else
    {
      v50 = off_1016386B8[sceneType3];
    }

    v51 = [@"Maps" stringByAppendingString:v50];
    window = [(CarSceneDelegate *)self window];
    [window setAccessibilityIdentifier:v51];

    sceneController2 = [(CarSceneDelegate *)self sceneController];
    chromeViewController3 = [sceneController2 chromeViewController];
    window2 = [(CarSceneDelegate *)self window];
    [window2 setRootViewController:chromeViewController3];

    window3 = [(CarSceneDelegate *)self window];
    [window3 setHidden:0];

    v57 = sub_100005610();
    if (os_signpost_enabled(v57))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateWindow", "", buf, 2u);
    }

    if ([(CarSceneDelegate *)self sceneType]== 6)
    {
      v58 = sub_100005610();
      if (os_signpost_enabled(v58))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RebuildContexts", "", buf, 2u);
      }

      [(CarSceneDelegate *)self rebuildContextsForCurrentAppState];
      v59 = sub_100005610();
      if (os_signpost_enabled(v59))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RebuildContexts", "", buf, 2u);
      }
    }
  }

  v60 = sub_100005610();
  if (os_signpost_enabled(v60))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EntryPointCoordinator", "", buf, 2u);
  }

  entryPointsCoordinator = [(CarSceneDelegate *)self entryPointsCoordinator];
  coordinateSpace = [v15 coordinateSpace];
  [coordinateSpace bounds];
  [entryPointsCoordinator willConnectToSession:sessionCopy options:optionsCopy windowSize:v15 scene:{v63, v64}];

  v65 = sub_100005610();
  if (os_signpost_enabled(v65))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EntryPointCoordinator", "", buf, 2u);
  }

  v66 = sub_100005610();
  if (os_signpost_enabled(v66))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WillConnectToSession", "", buf, 2u);
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  sceneType = self->_sceneType;
  if (sceneType > 6)
  {
    v5 = @".Unknown";
  }

  else
  {
    v5 = off_1016386B8[sceneType];
  }

  return [NSString stringWithFormat:@"<%@ %p: %@>", v3, self, v5];
}

- (void)dealloc
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v11 = "[CarSceneDelegate dealloc]";
        v12 = 2080;
        v13 = "CarSceneDelegate.m";
        v14 = 1024;
        v15 = 111;
        v16 = 2080;
        v17 = "dispatch_get_main_queue()";
        v18 = 2080;
        v19 = dispatch_queue_get_label(&_dispatch_main_q);
        v20 = 2080;
        v21 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v7 = sub_10006D178();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v11 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v9.receiver = self;
  v9.super_class = CarSceneDelegate;
  [(CarSceneDelegate *)&v9 dealloc];
}

@end