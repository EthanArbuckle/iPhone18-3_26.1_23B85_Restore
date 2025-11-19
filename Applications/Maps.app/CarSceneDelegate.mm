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
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)dealloc;
- (void)rebuildContextsForCurrentAppState;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation CarSceneDelegate

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    __class_setCustomDeallocInitiation(a1);
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
    v3 = [(CarSceneDelegate *)self chromeViewController];
    v4 = [v3 topContext];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v7 = [v6 currentDesiredCards];
      v8 = [v7 containsObject:@"Guidance"] ^ 1;
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
    v4 = [(CarSceneDelegate *)self sceneType];
    if (v4 <= 6)
    {
      v5 = v4;
      if (((1 << v4) & 0x54) != 0)
      {
        v6 = CarMapWidgetController;
        goto LABEL_7;
      }

      if (((1 << v4) & 0x28) != 0)
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

      if (v4 == 1)
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
  v3 = [(CarSceneDelegate *)self appSessionController];
  v4 = [v3 primaryPlatformController];
  v5 = [v4 entryPointsCoordinator];

  v6 = [v5 delegate];

  if (!v6)
  {
    v7 = [CarMapsActionController alloc];
    v8 = [(CarSceneDelegate *)self appSessionController];
    v9 = [v8 primaryPlatformController];
    v10 = [(CarMapsActionController *)v7 initWithPlatformController:v9];

    [v5 setDelegate:v10];
    carActionController = self->_carActionController;
    self->_carActionController = v10;
  }

  return v5;
}

- (id)appSessionController
{
  v2 = +[UIApplication sharedMapsDelegate];
  v3 = [v2 appSessionController];

  return v3;
}

- (ChromeViewController)chromeViewController
{
  v2 = [(CarSceneDelegate *)self sceneController];
  v3 = [v2 chromeViewController];

  return v3;
}

- (NSString)sceneIdentifier
{
  v2 = [(CarSceneDelegate *)self sceneType];
  if (v2 > 6)
  {
    v3 = @".Unknown";
  }

  else
  {
    v3 = off_1016386B8[v2];
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
  v2 = [(CarSceneDelegate *)self sceneController];
  [v2 _mapsCar_rebuildContextsForCurrentAppState];
}

- (Class)_windowClass
{
  v3 = [(CarSceneDelegate *)self sceneType];
  if (v3 <= 6 && (((1 << v3) & 0xD) != 0 || ((1 << v3) & 0x70) != 0))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v6 = sub_100005610();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(CarSceneDelegate *)self sceneType];
      if (v7 > 6)
      {
        v8 = @".Unknown";
      }

      else
      {
        v8 = off_1016386B8[v7];
      }

      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "windowClass called for carSceneType: %@, which is invalid", &v9, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v91 = a6;
  v16 = a7;
  v17 = [(CarSceneDelegate *)self scene];

  if (v17 != v13)
  {
    v18 = sub_100005610();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(CarSceneDelegate *)self scene];
      v20 = [v19 _FBSScene];
      *buf = 138412546;
      v93 = v20;
      v94 = 2112;
      v95 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CarSceneController - FBSceneUpdateAction: received callback for _FBScene that differs from current scene's _FBScene, current: %@ new: %@", buf, 0x16u);
    }

    goto LABEL_68;
  }

  v89 = v16;
  v90 = v15;
  v21 = [(CarSceneDelegate *)self sceneType];
  v22 = v14;
  v23 = [(__CFString *)v22 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v25 = [(__CFString *)v22 settings];
  v26 = v25;
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

    v26 = [(__CFString *)v22 settings];
    v30 = [v26 itemType];
    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v28 = 5;
        goto LABEL_26;
      }

      if (v30 != 3)
      {
        goto LABEL_23;
      }
    }

    else if (v30)
    {
      if (v30 == 1)
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

  v27 = [v25 widgetStyle];
  if ((v27 - 1) < 2)
  {
    v28 = 3;
LABEL_26:

LABEL_27:
    v31 = [(__CFString *)v22 settings];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
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

    v36 = v91;
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
      v56 = self;
      v57 = v28;
      v58 = v13;
      v59 = v14;
      v60 = v21;
      v61 = v41;
      v62 = [v41 layoutJustification];
      v63 = v62 == [v35 layoutJustification];
      v41 = v61;
      v21 = v60;
      v14 = v59;
      v13 = v58;
      v28 = v57;
      self = v56;
      v18 = v55;
      v64 = !v63;
      v42 = v87 | v64;
    }

    if (v21 == v28)
    {
      if (((v21 == 6) & v42) == 0)
      {
        goto LABEL_67;
      }
    }

    else if (v21 < 4 || v28 <= 3)
    {
      v88 = v41;
      v67 = sub_100005610();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        if (v21 > 6)
        {
          v68 = @".Unknown";
        }

        else
        {
          v68 = off_1016386B8[v21];
        }

        v85 = off_101638688[v28 - 1];
        *buf = 138412546;
        v93 = v68;
        v94 = 2112;
        v95 = v85;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "CarSceneController - FBSceneUpdateAction: scene was of type: %@, update to scenetype: %@, which is not supported -> ignoring the call.", buf, 0x16u);
      }

      goto LABEL_66;
    }

    v86 = v35;
    v88 = v41;
    v65 = sub_100005610();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      if (v21 - 4 > 2)
      {
        v66 = @".Unknown";
      }

      else
      {
        v66 = off_101638670[v21 - 4];
      }

      v69 = v28;
      v70 = off_101638688[v28 - 1];
      v71 = [(CarSceneDelegate *)self scene];
      *buf = 138412802;
      v93 = v66;
      v94 = 2112;
      v95 = v70;
      v28 = v69;
      v96 = 2048;
      v97 = [v71 activationState];
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "CarSceneController - FBSceneUpdateAction: updating scene type from: %@, to: %@, sceneState: %ld", buf, 0x20u);
    }

    v72 = [(CarSceneDelegate *)self window];
    [v72 setRootViewController:0];

    v73 = [(CarSceneDelegate *)self sceneController];
    v74 = [(CarSceneDelegate *)self scene];
    [v73 sceneDidDisconnect:v74];

    [(CarSceneDelegate *)self setSceneController:0];
    [(CarSceneDelegate *)self setSceneType:v28];
    v75 = [(CarSceneDelegate *)self sceneController];
    v76 = [(CarSceneDelegate *)self scene];
    v77 = [(CarSceneDelegate *)self scene];
    v78 = [v77 session];
    [v75 _mapsCar_scene:v76 willConnectToSession:v78 options:0];

    v79 = [(CarSceneDelegate *)self sceneController];
    v80 = [v79 chromeViewController];
    v81 = [(CarSceneDelegate *)self window];
    [v81 setRootViewController:v80];

    if ([(CarSceneDelegate *)self sceneType]== 6)
    {
      [(CarSceneDelegate *)self rebuildContextsForCurrentAppState];
    }

    v82 = [(CarSceneDelegate *)self scene];
    v83 = [v82 activationState];

    v35 = v86;
    if (v83 >= 2)
    {
      v41 = v88;
      if (v83 != 2)
      {
LABEL_67:

        v16 = v89;
        v15 = v90;
        goto LABEL_68;
      }

      v67 = [(CarSceneDelegate *)self sceneController];
      v84 = [(CarSceneDelegate *)self scene];
      [v67 sceneDidEnterBackground:v84];
    }

    else
    {
      v67 = [(CarSceneDelegate *)self sceneController];
      v84 = [(CarSceneDelegate *)self scene];
      [v67 sceneWillEnterForeground:v84];
    }

LABEL_66:
    v41 = v88;
    goto LABEL_67;
  }

  if (v27 == 3)
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

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v11 = v6;
  [v7 anyObject];
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

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v17 = v7;
  v18 = v6;
  v19 = v18;
  v11 = v7;
  v12 = v18;
  dispatch_async(&_dispatch_main_q, v16);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidEnterBackground", "", &v16, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v8 = [(CarSceneDelegate *)self sceneType];
    if (v8 > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[v8];
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-sceneDidEnterBackground: %@, carSceneType: %@", &v16, 0x16u);
  }

  v10 = [(CarSceneDelegate *)self sceneController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CarSceneDelegate *)self sceneController];
    [v12 sceneDidEnterBackground:v4];
  }

  v13 = [(CarSceneDelegate *)self entryPointsCoordinator];
  v14 = [v4 session];
  [v13 didEnterBackgroundWithSession:v14];

  v15 = sub_100005610();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidEnterBackground", "", &v16, 2u);
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneWillEnterForeground", "", &v16, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v8 = [(CarSceneDelegate *)self sceneType];
    if (v8 > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[v8];
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-sceneWillEnterForeground: %@, carSceneType: %@", &v16, 0x16u);
  }

  v10 = [(CarSceneDelegate *)self sceneController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CarSceneDelegate *)self sceneController];
    [v12 sceneWillEnterForeground:v4];
  }

  v13 = [(CarSceneDelegate *)self entryPointsCoordinator];
  v14 = [v4 session];
  [v13 willEnterForegroundWithSession:v14];

  v15 = sub_100005610();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneWillEnterForeground", "", &v16, 2u);
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneWillResignActive", "", &v16, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v8 = [(CarSceneDelegate *)self sceneType];
    if (v8 > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[v8];
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-sceneWillResignActive: %@, carSceneType: %@", &v16, 0x16u);
  }

  v10 = [(CarSceneDelegate *)self sceneController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CarSceneDelegate *)self sceneController];
    [v12 sceneWillResignActive:v4];
  }

  v13 = [(CarSceneDelegate *)self entryPointsCoordinator];
  v14 = [v4 session];
  [v13 willResignActiveWithSession:v14];

  v15 = sub_100005610();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneWillResignActive", "", &v16, 2u);
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidBecomeActive", "", &v16, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v8 = [(CarSceneDelegate *)self sceneType];
    if (v8 > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[v8];
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-sceneDidBecomeActive: %@, carSceneType: %@", &v16, 0x16u);
  }

  v10 = [(CarSceneDelegate *)self sceneController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CarSceneDelegate *)self sceneController];
    [v12 sceneDidBecomeActive:v4];
  }

  v13 = [(CarSceneDelegate *)self entryPointsCoordinator];
  v14 = [v4 session];
  [v13 didBecomeActiveWithSession:v14];

  v15 = sub_100005610();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidBecomeActive", "", &v16, 2u);
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SceneDidDisconnect", "", buf, 2u);
  }

  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 description];
    v8 = [(CarSceneDelegate *)self sceneType];
    if (v8 > 6)
    {
      v9 = @".Unknown";
    }

    else
    {
      v9 = off_1016386B8[v8];
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

  v12 = v4;
  v13 = [(CarSceneDelegate *)self sceneType];
  if (v13 > 6)
  {
    v14 = @".Unknown";
  }

  else
  {
    v14 = off_1016386B8[v13];
  }

  v15 = [NSString stringWithFormat:@"%@_%p", v14, self];
  [v12 _unregisterSettingsDiffActionArrayForKey:v15];

  if ([(CarSceneDelegate *)self sceneType]!= 1)
  {
    v16 = [(CarSceneDelegate *)self window];
    [v16 setHidden:1];

    v17 = [(CarSceneDelegate *)self window];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = [(CarSceneDelegate *)self window];
      [v19 invalidate];
    }

    [(CarSceneDelegate *)self setWindow:0];
  }

  v20 = [(CarSceneDelegate *)self sceneController];
  [v20 sceneDidDisconnect:v12];

  v21 = +[UIApplication sharedMapsDelegate];
  [v21 updateNavigationIdleTimerConfiguration];

  v22 = sub_100005610();
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneDidDisconnect", "", buf, 2u);
  }
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v15 = v8;
  [(CarSceneDelegate *)self setScene:v15];
  v16 = [v15 _FBSScene];
  v17 = [v16 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v19 = [v16 settings];
  v20 = v19;
  if (isKindOfClass)
  {
    v21 = [v19 widgetStyle];
    v22 = 2;
    if (v21 != 3)
    {
      v22 = 0;
    }

    if ((v21 - 1) >= 2)
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

    v20 = [v16 settings];
    v67 = [v20 itemType];
    if (v67 > 1)
    {
      if (v67 == 2)
      {
        v23 = 5;
        goto LABEL_13;
      }

      if (v67 != 3)
      {
        goto LABEL_71;
      }
    }

    else if (v67)
    {
      if (v67 == 1)
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
  v76 = self;
  v25 = [NSArray arrayWithObjects:&v76 count:1];
  v26 = [(CarSceneDelegate *)self sceneType];
  if (v26 > 6)
  {
    v27 = @".Unknown";
  }

  else
  {
    v27 = off_1016386B8[v26];
  }

  v28 = [NSString stringWithFormat:@"%@_%p", v27, self];
  [v15 _registerSettingsDiffActionArray:v25 forKey:v28];

  v29 = sub_100005610();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [v15 description];
    v31 = [(CarSceneDelegate *)self sceneType];
    if (v31 > 6)
    {
      v32 = @".Unknown";
    }

    else
    {
      v32 = off_1016386B8[v31];
    }

    *buf = 138413058;
    v69 = v30;
    v70 = 2112;
    v71 = v9;
    v72 = 2112;
    v73 = v10;
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

  v34 = [(CarSceneDelegate *)self appSessionController];
  v35 = [v34 primaryPlatformController];

  v36 = +[CarDisplayController sharedInstance];
  [v36 setPlatformController:v35];

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

  v42 = [(CarSceneDelegate *)self sceneController];
  [v42 _mapsCar_scene:v15 willConnectToSession:v9 options:v10];

  v43 = sub_100005610();
  if (os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SceneController", "", buf, 2u);
  }

  v44 = [v35 chromeViewController];

  if (!v44)
  {
    v45 = +[CarDisplayController sharedInstance];
    v46 = [v45 chromeViewController];
    [v35 setChromeViewController:v46];
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

    v49 = [(CarSceneDelegate *)self sceneType];
    if (v49 > 6)
    {
      v50 = @".Unknown";
    }

    else
    {
      v50 = off_1016386B8[v49];
    }

    v51 = [@"Maps" stringByAppendingString:v50];
    v52 = [(CarSceneDelegate *)self window];
    [v52 setAccessibilityIdentifier:v51];

    v53 = [(CarSceneDelegate *)self sceneController];
    v54 = [v53 chromeViewController];
    v55 = [(CarSceneDelegate *)self window];
    [v55 setRootViewController:v54];

    v56 = [(CarSceneDelegate *)self window];
    [v56 setHidden:0];

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

  v61 = [(CarSceneDelegate *)self entryPointsCoordinator];
  v62 = [v15 coordinateSpace];
  [v62 bounds];
  [v61 willConnectToSession:v9 options:v10 windowSize:v15 scene:{v63, v64}];

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