@interface CarDisplayConfigAuxiliaryTask
+ (unint64_t)_countScenesForInstrumentCluster:(BOOL)cluster;
- (CarDisplayConfigAuxiliaryTask)init;
- (void)_processChromeVCNotification:(id)notification;
- (void)_processSceneChange:(id)change;
- (void)_updateCarDisplayConfig;
- (void)dealloc;
- (void)sceneDidActivateNotification:(id)notification;
- (void)sceneDidDisconnectNotification:(id)notification;
- (void)sceneDidEnterBackgroundNotification:(id)notification;
@end

@implementation CarDisplayConfigAuxiliaryTask

- (CarDisplayConfigAuxiliaryTask)init
{
  v10.receiver = self;
  v10.super_class = CarDisplayConfigAuxiliaryTask;
  v2 = [(CarDisplayConfigAuxiliaryTask *)&v10 init];
  if (v2)
  {
    v3 = sub_10002325C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"sceneDidActivateNotification:" name:UISceneDidActivateNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"sceneDidEnterBackgroundNotification:" name:UISceneDidEnterBackgroundNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"sceneDidDisconnectNotification:" name:UISceneDidDisconnectNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"chromeViewControllerDidLoadMapViewNotification:" name:@"ChromeViewControllerDidLoadMapViewNotification" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"chromeDeactivationReasonsDidChangeNotification:" name:@"ChromeViewControllerDidChangeDeactivationReasonsNotification" object:0];

    [(CarDisplayConfigAuxiliaryTask *)v2 _updateCarDisplayConfig];
  }

  return v2;
}

- (void)_updateCarDisplayConfig
{
  v3 = sub_10002325C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Updating car display config", buf, 0xCu);
  }

  v4 = +[UIApplication _maps_carPlayScenes];
  v39 = +[NSMutableArray array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v46;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v45 + 1) + 8 * i);
        if ([v9 activationState] < 2)
        {
          delegate = [v9 delegate];
          carChromeViewController = [delegate carChromeViewController];
          mapView = [carChromeViewController mapView];
          if (mapView && (v13 = mapView, v14 = [carChromeViewController isInactive], v13, (v14 & 1) == 0))
          {
            v20 = sub_10002325C();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 134349314;
              selfCopy7 = self;
              v52 = 2112;
              v53 = v9;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] Processing scene: %@", buf, 0x16u);
            }

            mapView2 = [carChromeViewController mapView];
            _mapLayer = [mapView2 _mapLayer];
            [v39 addObject:_mapLayer];
          }

          else
          {
            mapView3 = [carChromeViewController mapView];

            mapView2 = sub_10002325C();
            v17 = os_log_type_enabled(mapView2, OS_LOG_TYPE_INFO);
            if (mapView3)
            {
              if (v17)
              {
                *buf = 134349314;
                selfCopy7 = self;
                v52 = 2112;
                v53 = v9;
                v18 = mapView2;
                v19 = "[%{public}p] Skipping inactive scene: %@";
                goto LABEL_21;
              }
            }

            else if (v17)
            {
              *buf = 134349314;
              selfCopy7 = self;
              v52 = 2112;
              v53 = v9;
              v18 = mapView2;
              v19 = "[%{public}p] Skipping scene with no map view: %@";
LABEL_21:
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, buf, 0x16u);
            }
          }

          goto LABEL_23;
        }

        delegate = sub_10002325C();
        if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
        {
          *buf = 134349314;
          selfCopy7 = self;
          v52 = 2112;
          v53 = v9;
          _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_INFO, "[%{public}p] Skipping inactive scene: %@", buf, 0x16u);
        }

LABEL_23:
      }

      v6 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
    }

    while (v6);
  }

  v22 = [v39 count];
  v23 = v22;
  v24 = v22;
  if (v22)
  {
    if (v22 == 1 || (GEOConfigGetBOOL() & 1) == 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  v25 = +[NSUserDefaults standardUserDefaults];
  v26 = [v25 BOOLForKey:@"CarDisplayConfigForceDualDisplayKey"];

  if (v26)
  {
    v27 = sub_10002325C();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy7 = self;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] Forcing dual display config from user default", buf, 0xCu);
    }

    v24 = 2;
  }

  v28 = sub_10002325C();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    BOOL = GEOConfigGetBOOL();
    v30 = @"NO";
    if (BOOL)
    {
      v30 = @"YES";
    }

    v31 = v30;
    v32 = *(&off_101622F98 + v24);
    *buf = 134350082;
    selfCopy7 = self;
    v52 = 2048;
    v53 = v23;
    v54 = 2112;
    v55 = v39;
    v56 = 2112;
    v57 = v31;
    v58 = 2112;
    v59 = v32;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Detected %lu map views: %@; InstrumentClusterConnectionCameraStyleToggleEnabled: %@; updating VKCarDisplayConfigs to %@", buf, 0x34u);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = v39;
  v34 = [v33 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v42;
    do
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v41 + 1) + 8 * j) setCarDisplayConfig:v24 animated:1];
      }

      v35 = [v33 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v35);
  }

  v38 = +[NSNotificationCenter defaultCenter];
  [v38 postNotificationName:@"CarDisplayConfigDidChangeNotification" object:0];
}

- (void)_processSceneChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "[CarDisplayConfigAuxiliaryTask _processSceneChange:]";
      v10 = 2080;
      v11 = "CarDisplayConfigAuxiliaryTask.m";
      v12 = 1024;
      v13 = 174;
      v14 = 2080;
      v15 = "scene != nil";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v8, 0x26u);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
      }
    }
  }

  if ([changeCopy isCarScene])
  {
    [(CarDisplayConfigAuxiliaryTask *)self _updateCarDisplayConfig];
  }
}

- (void)_processChromeVCNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[CarDisplayConfigAuxiliaryTask _processChromeVCNotification:]";
      v18 = 2080;
      v19 = "CarDisplayConfigAuxiliaryTask.m";
      v20 = 1024;
      v21 = 125;
      v22 = 2080;
      v23 = "[notification.object isKindOfClass:ChromeViewController.class]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }
  }

  object2 = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = object2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  viewIfLoaded = [v9 viewIfLoaded];

  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    [(CarDisplayConfigAuxiliaryTask *)self _processSceneChange:windowScene];
  }
}

- (void)sceneDidDisconnectNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[CarDisplayConfigAuxiliaryTask sceneDidDisconnectNotification:]";
      v15 = 2080;
      v16 = "CarDisplayConfigAuxiliaryTask.m";
      v17 = 1024;
      v18 = 109;
      v19 = 2080;
      v20 = "[notification.object isKindOfClass:UIScene.class]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }

  object2 = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = object2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(CarDisplayConfigAuxiliaryTask *)self _processSceneChange:v9];
}

- (void)sceneDidEnterBackgroundNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[CarDisplayConfigAuxiliaryTask sceneDidEnterBackgroundNotification:]";
      v15 = 2080;
      v16 = "CarDisplayConfigAuxiliaryTask.m";
      v17 = 1024;
      v18 = 103;
      v19 = 2080;
      v20 = "[notification.object isKindOfClass:UIScene.class]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }

  object2 = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = object2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(CarDisplayConfigAuxiliaryTask *)self _processSceneChange:v9];
}

- (void)sceneDidActivateNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[CarDisplayConfigAuxiliaryTask sceneDidActivateNotification:]";
      v15 = 2080;
      v16 = "CarDisplayConfigAuxiliaryTask.m";
      v17 = 1024;
      v18 = 97;
      v19 = 2080;
      v20 = "[notification.object isKindOfClass:UIScene.class]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }

  object2 = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = object2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(CarDisplayConfigAuxiliaryTask *)self _processSceneChange:v9];
}

- (void)dealloc
{
  v3 = sub_10002325C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarDisplayConfigAuxiliaryTask;
  [(CarDisplayConfigAuxiliaryTask *)&v4 dealloc];
}

+ (unint64_t)_countScenesForInstrumentCluster:(BOOL)cluster
{
  clusterCopy = cluster;
  v4 = +[UIApplication _maps_carPlayScenes];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v35;
    while (1)
    {
      v9 = 0;
      v33 = v6;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        activationState = [v10 activationState];
        if (!activationState || activationState == 1 && ([v10 _FBSScene], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "uiSettings"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "deactivationReasons"), v13, v12, (v14 & 0x80) != 0))
        {
          _FBSScene = [v10 _FBSScene];
          settings = [_FBSScene settings];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = settings;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          if (v18 && ((v19 = [v18 displayLocation]) != 0 ? (v20 = v19 == 3) : (v20 = 1), v20))
          {
            if (clusterCopy)
            {
              goto LABEL_21;
            }
          }

          else if (!clusterCopy)
          {
LABEL_21:
            delegate = [v10 delegate];
            carChromeViewController = [delegate carChromeViewController];
            mapView = [carChromeViewController mapView];
            if (mapView)
            {
              v24 = mapView;
              v25 = v8;
              v26 = v4;
              v27 = clusterCopy;
              v28 = v7;
              isInactive = [carChromeViewController isInactive];

              v30 = isInactive ^ 1;
              v31 = v28;
              clusterCopy = v27;
              v4 = v26;
              v8 = v25;
              v6 = v33;
              v7 = v31 + v30;
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v6)
      {
        goto LABEL_29;
      }
    }
  }

  v7 = 0;
LABEL_29:

  return v7;
}

@end