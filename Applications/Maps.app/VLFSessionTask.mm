@interface VLFSessionTask
+ (BOOL)isVLFModeSupported;
- (PlatformController)platformController;
- (VLFSessionTask)initWithPlatformController:(id)controller;
- (void)clearMapState;
- (void)clearUserState;
- (void)dealloc;
- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)saveMapState;
- (void)saveUserState;
- (void)setCanShowVLFPuckUI:(BOOL)i;
- (void)setNavigationSession:(id)session;
- (void)showVLFUI;
- (void)updateVLFPuckUIForState:(int64_t)state;
- (void)vlfContaineeViewControllerDidAppearNotification:(id)notification;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification;
- (void)vlfContaineeViewControllerWillCancelNotification:(id)notification;
- (void)vlfSessionDidStartNotification:(id)notification;
- (void)vlfSessionDidStopNotification:(id)notification;
@end

@implementation VLFSessionTask

+ (BOOL)isVLFModeSupported
{
  if (qword_10195CFF8 != -1)
  {
    dispatch_once(&qword_10195CFF8, &stru_1016272E0);
  }

  if (byte_10195CFF0)
  {
    v2 = 0;
  }

  else
  {
    if (qword_10195CDD8 != -1)
    {
      dispatch_once(&qword_10195CDD8, &stru_101624DC0);
    }

    v2 = byte_10195CDD0;
  }

  return v2 & 1;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)vlfContaineeViewControllerWillCancelNotification:(id)notification
{
  v4 = sub_10065CC94();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "VLF will cancel", &v16, 2u);
  }

  platformController = [(VLFSessionTask *)self platformController];
  chromeViewController = [platformController chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = chromeViewController;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    mapView = [v8 mapView];
    userTrackingMode = [mapView userTrackingMode];

    if (userTrackingMode == 2)
    {
      mapView2 = [v8 mapView];
      [mapView2 setUserTrackingMode:1 animated:0];
    }

    mapView3 = [v8 mapView];
    [mapView3 setUserTrackingMode:0 animated:0];
  }

  else
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[VLFSessionTask vlfContaineeViewControllerWillCancelNotification:]";
      v18 = 2080;
      v19 = "VLFSessionTask.m";
      v20 = 1024;
      v21 = 521;
      v22 = 2080;
      v23 = "chromeVC != nil";
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

    mapView3 = sub_10065CC94();
    if (os_log_type_enabled(mapView3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, mapView3, OS_LOG_TYPE_ERROR, "chromeVC was not an IOSBased one; ignoring", &v16, 2u);
    }
  }
}

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification
{
  v4 = sub_10065CC94();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "VLF mode VC did disappear", buf, 2u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"VLFContaineeViewControllerDidDisappearNotification" object:0];

  platformController = [(VLFSessionTask *)self platformController];
  chromeViewController = [platformController chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = chromeViewController;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    wasLastLocalizationSuccessful = [(VLFSessionTask *)self wasLastLocalizationSuccessful];
    originalMapState = [(VLFSessionTask *)self originalMapState];
    originalUserState = [(VLFSessionTask *)self originalUserState];
    v13 = originalUserState;
    memset(buf, 0, sizeof(buf));
    if (originalUserState)
    {
      [originalUserState originalUserTrackingBehavior];
    }

    if ([v13 originalUserTrackingMode] || wasLastLocalizationSuccessful)
    {
      [v13 originalCenterCoordinateDistance];
      *&buf[8] = v14;
      buf[17] = 1;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10065D0B4;
    block[3] = &unk_101624E08;
    v23 = originalMapState;
    v15 = v9;
    v26 = *buf;
    v27 = *&buf[16];
    v24 = v15;
    v25 = v13;
    v28 = wasLastLocalizationSuccessful;
    v16 = v13;
    v17 = originalMapState;
    dispatch_async(&_dispatch_main_q, block);
    [(VLFSessionTask *)self clearUserState];
    [(VLFSessionTask *)self clearMapState];
  }

  else
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[VLFSessionTask vlfContaineeViewControllerDidDisappearNotification:]";
      *&buf[12] = 2080;
      *&buf[14] = "VLFSessionTask.m";
      *&buf[22] = 1024;
      v30 = 465;
      v31 = 2080;
      v32 = "chromeVC != nil";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v21 = sub_10065CC94();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "chromeVC was not an IOSBased one; ignoring", buf, 2u);
    }
  }
}

- (void)vlfContaineeViewControllerDidAppearNotification:(id)notification
{
  v4 = sub_10065CC94();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "VLF mode VC did appear", buf, 2u);
  }

  platformController = [(VLFSessionTask *)self platformController];
  chromeViewController = [platformController chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = chromeViewController;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10065D8B8;
    v17 = &unk_101661A90;
    v18 = v8;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, &v14);
    v9 = [NSNotificationCenter defaultCenter:v14];
    [v9 addObserver:self selector:"vlfContaineeViewControllerDidDisappearNotification:" name:@"VLFContaineeViewControllerDidDisappearNotification" object:0];

    v10 = v18;
  }

  else
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v21 = "[VLFSessionTask vlfContaineeViewControllerDidAppearNotification:]";
      v22 = 2080;
      v23 = "VLFSessionTask.m";
      v24 = 1024;
      v25 = 426;
      v26 = 2080;
      v27 = "chromeVC != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v10 = sub_10065CC94();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "chromeVC was not an IOSBased one; ignoring", buf, 2u);
    }
  }
}

- (void)vlfSessionDidStopNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_10065CC94();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "VLF session stopped", &v15, 2u);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:@"VLFSessionDidStopNotification" object:0];

  v7 = sub_10065CC94();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Enabling idle timer", &v15, 2u);
  }

  v8 = +[UIApplication sharedMapsDelegate];
  idleTimerController = [v8 idleTimerController];
  [idleTimerController setDesiredIdleTimerState:0 forReason:3];

  object = [notificationCopy object];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315906;
      v16 = "[VLFSessionTask vlfSessionDidStopNotification:]";
      v17 = 2080;
      v18 = "VLFSessionTask.m";
      v19 = 1024;
      v20 = 412;
      v21 = 2080;
      v22 = "[session isKindOfClass:[VLFSession class]]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v15, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[VLFSessionTask setWasLastLocalizationSuccessful:](self, "setWasLastLocalizationSuccessful:", [object wasLastLocalizationSuccessful]);
  }

  else
  {
    v11 = sub_10065CC94();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = object;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Notification object (%@), was not a VLFSession; ignoring", &v15, 0xCu);
    }
  }
}

- (void)vlfSessionDidStartNotification:(id)notification
{
  v4 = sub_10065CC94();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "VLF session started", buf, 2u);
  }

  v5 = sub_10065CC94();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Disabling idle timer", v9, 2u);
  }

  v6 = +[UIApplication sharedMapsDelegate];
  idleTimerController = [v6 idleTimerController];
  [idleTimerController setDesiredIdleTimerState:1 forReason:3];

  [(VLFSessionTask *)self setWasLastLocalizationSuccessful:0];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"vlfSessionDidStopNotification:" name:@"VLFSessionDidStopNotification" object:0];
}

- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type
{
  v5 = [objc_opt_class() isSupportedForTransportType:type];

  [(VLFSessionTask *)self setCanShowVLFPuckUI:v5];
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = toSessionCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(VLFSessionTask *)self setNavigationSession:v7];

  navigationSession = [(VLFSessionTask *)self navigationSession];

  if (!navigationSession)
  {
    goto LABEL_7;
  }

  v9 = objc_opt_class();
  navigationSession2 = [(VLFSessionTask *)self navigationSession];
  v11 = [v9 isSupportedForTransportType:{objc_msgSend(navigationSession2, "currentTransportType")}];

  if (!v11)
  {
    goto LABEL_9;
  }

  navigationSession3 = [(VLFSessionTask *)self navigationSession];
  currentTransportType = [navigationSession3 currentTransportType];

  if (currentTransportType != 3)
  {
    navigationSession4 = [(VLFSessionTask *)self navigationSession];
    v11 = [navigationSession4 navigationType] != 2;
  }

  else
  {
LABEL_7:
    v11 = 1;
  }

LABEL_9:
  [(VLFSessionTask *)self setCanShowVLFPuckUI:v11];
}

- (void)clearMapState
{
  v3 = sub_10065CC94();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Clearing map state", v4, 2u);
  }

  [(VLFSessionTask *)self setOriginalMapState:0];
}

- (void)saveMapState
{
  v3 = sub_10065CC94();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Saving map state", &v32, 2u);
  }

  platformController = [(VLFSessionTask *)self platformController];
  chromeViewController = [platformController chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = chromeViewController;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_opt_new();
    mapView = [v7 mapView];
    [v8 setScrollEnabled:{objc_msgSend(mapView, "isScrollEnabled")}];

    mapView2 = [v7 mapView];
    [v8 setRotateEnabled:{objc_msgSend(mapView2, "isRotateEnabled")}];

    mapView3 = [v7 mapView];
    [v8 setZoomEnabled:{objc_msgSend(mapView3, "isZoomEnabled")}];

    mapView4 = [v7 mapView];
    [v8 setPitchEnabled:{objc_msgSend(mapView4, "isPitchEnabled")}];

    [(VLFSessionTask *)self setOriginalMapState:v8];
    v13 = sub_10065CC94();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      originalMapState = [(VLFSessionTask *)self originalMapState];
      if ([originalMapState scrollEnabled])
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v16 = v15;
      v32 = 138412290;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Original scroll enabled: %@", &v32, 0xCu);
    }

    v17 = sub_10065CC94();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      originalMapState2 = [(VLFSessionTask *)self originalMapState];
      if ([originalMapState2 rotateEnabled])
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v20 = v19;
      v32 = 138412290;
      v33 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Original rotate enabled: %@", &v32, 0xCu);
    }

    v21 = sub_10065CC94();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      originalMapState3 = [(VLFSessionTask *)self originalMapState];
      if ([originalMapState3 zoomEnabled])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v24 = v23;
      v32 = 138412290;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Original zoom enabled: %@", &v32, 0xCu);
    }

    v25 = sub_10065CC94();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      originalMapState4 = [(VLFSessionTask *)self originalMapState];
      if ([originalMapState4 pitchEnabled])
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v28 = v27;
      v32 = 138412290;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Original pitch enabled: %@", &v32, 0xCu);
    }
  }

  else
  {
    v29 = sub_10006D178();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315906;
      v33 = "[VLFSessionTask saveMapState]";
      v34 = 2080;
      v35 = "VLFSessionTask.m";
      v36 = 1024;
      v37 = 293;
      v38 = 2080;
      v39 = "chromeVC != nil";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v32, 0x26u);
    }

    if (sub_100E03634())
    {
      v30 = sub_10006D178();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = +[NSThread callStackSymbols];
        v32 = 138412290;
        v33 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", &v32, 0xCu);
      }
    }

    v25 = sub_10065CC94();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "chromeVC was not an IOSBased one; ignoring", &v32, 2u);
    }
  }
}

- (void)clearUserState
{
  v3 = sub_10065CC94();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Clearing user state", v4, 2u);
  }

  [(VLFSessionTask *)self setOriginalUserState:0];
}

- (void)saveUserState
{
  v3 = sub_10065CC94();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Saving user state", buf, 2u);
  }

  platformController = [(VLFSessionTask *)self platformController];
  chromeViewController = [platformController chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = chromeViewController;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_opt_new();
    mapView = [v7 mapView];
    camera = [mapView camera];
    [camera centerCoordinateDistance];
    [v8 setOriginalCenterCoordinateDistance:?];

    mapView2 = [v7 mapView];
    [v8 setOriginalUserTrackingMode:{objc_msgSend(mapView2, "userTrackingMode")}];

    mapView3 = [v7 mapView];
    v13 = mapView3;
    if (mapView3)
    {
      [mapView3 _userTrackingBehavior];
    }

    else
    {
      v27 = 0uLL;
      v28 = 0;
    }

    *buf = v27;
    *&buf[16] = v28;
    [v8 setOriginalUserTrackingBehavior:buf];

    [(VLFSessionTask *)self setOriginalUserState:v8];
    memset(buf, 0, sizeof(buf));
    originalUserState = [(VLFSessionTask *)self originalUserState];
    v15 = originalUserState;
    if (originalUserState)
    {
      [originalUserState originalUserTrackingBehavior];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v16 = sub_10065CC94();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      originalUserState2 = [(VLFSessionTask *)self originalUserState];
      [originalUserState2 originalCenterCoordinateDistance];
      *v29 = 134217984;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Original center coordinate distance: %f", v29, 0xCu);
    }

    v19 = sub_10065CC94();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      originalUserState3 = [(VLFSessionTask *)self originalUserState];
      originalUserTrackingMode = [originalUserState3 originalUserTrackingMode];
      *v29 = 134217984;
      v30 = originalUserTrackingMode;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Original tracking mode: %ld", v29, 0xCu);
    }

    v22 = sub_10065CC94();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = VKStringForAnnotationTrackingBehavior();
      *v29 = 138412290;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Original tracking behavior: %@", v29, 0xCu);
    }
  }

  else
  {
    v24 = sub_10006D178();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[VLFSessionTask saveUserState]";
      *&buf[12] = 2080;
      *&buf[14] = "VLFSessionTask.m";
      *&buf[22] = 1024;
      v32 = 261;
      v33 = 2080;
      v34 = "chromeVC != nil";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v22 = sub_10065CC94();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "chromeVC was not an IOSBased one; ignoring", buf, 2u);
    }
  }
}

- (void)updateVLFPuckUIForState:(int64_t)state
{
  platformController = [(VLFSessionTask *)self platformController];
  chromeViewController = [platformController chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = chromeViewController;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    userLocationView = sub_10065CC94();
    if (os_log_type_enabled(userLocationView, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, userLocationView, OS_LOG_TYPE_INFO, "chromeVC was not an IOSBased one; ignoring", v11, 2u);
    }

    goto LABEL_12;
  }

  if (![(VLFSessionTask *)self canShowVLFPuckUI])
  {
    userLocationView = [v8 userLocationView];
    [userLocationView setVlfMode:0];
LABEL_12:

    goto LABEL_13;
  }

  if (state != 2)
  {
    state = state == 1;
  }

  userLocationView2 = [v8 userLocationView];
  [userLocationView2 setVlfMode:state];

LABEL_13:
}

- (void)setCanShowVLFPuckUI:(BOOL)i
{
  if (self->_canShowVLFPuckUI != i)
  {
    self->_canShowVLFPuckUI = i;
    v4 = sub_10065CC94();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_canShowVLFPuckUI)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Can show VLF puck UI: %@", &v8, 0xCu);
    }

    stateManager = [(VLFSessionTask *)self stateManager];
    -[VLFSessionTask updateVLFPuckUIForState:](self, "updateVLFPuckUIForState:", [stateManager currentState]);
  }
}

- (void)setNavigationSession:(id)session
{
  sessionCopy = session;
  navigationSession = self->_navigationSession;
  if (navigationSession != sessionCopy)
  {
    v7 = sessionCopy;
    [(NavigationSession *)navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, session);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)showVLFUI
{
  platformController = [(VLFSessionTask *)self platformController];
  currentSession = [platformController currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = currentSession;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  currentTransportType = [v6 currentTransportType];
  if (currentTransportType == 2)
  {
    v10 = 0;
    v9 = 1;
LABEL_10:
    platformController2 = [(VLFSessionTask *)self platformController];
    chromeViewController = [platformController2 chromeViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = chromeViewController;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (!v14)
    {
      v35 = sub_10006D178();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v41 = 136315906;
        v42 = "[VLFSessionTask showVLFUI]";
        v43 = 2080;
        v44 = "VLFSessionTask.m";
        v45 = 1024;
        v46 = 173;
        v47 = 2080;
        v48 = "chromeVC != nil";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v41, 0x26u);
      }

      if (sub_100E03634())
      {
        v36 = sub_10006D178();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = +[NSThread callStackSymbols];
          v41 = 138412290;
          v42 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%@", &v41, 0xCu);
        }
      }

      v23 = sub_10065CC94();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "chromeVC was not an IOSBased one; ignoring", &v41, 2u);
      }

      goto LABEL_39;
    }

    originalUserState = [(VLFSessionTask *)self originalUserState];

    if (!originalUserState)
    {
      [(VLFSessionTask *)self saveUserState];
    }

    originalMapState = [(VLFSessionTask *)self originalMapState];

    if (!originalMapState)
    {
      [(VLFSessionTask *)self saveMapState];
    }

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:@"VLFSessionTaskWillShowVLFUINotification" object:0];

    mapView = [v14 mapView];
    userTrackingMode = [mapView userTrackingMode];

    if (userTrackingMode == 2)
    {
      mapView2 = [v14 mapView];
      [mapView2 setUserTrackingMode:1 animated:0];
    }

    mapView3 = [v14 mapView];
    [mapView3 setUserTrackingMode:0 animated:0];

    appCoordinator = [v14 appCoordinator];
    v23 = appCoordinator;
    if (v9)
    {
      navModeController = [appCoordinator navModeController];
    }

    else if (v10)
    {
      navModeController = [appCoordinator stepModeController];
      if (!navModeController)
      {
        transitNavigationContext = [v23 transitNavigationContext];
        if (transitNavigationContext)
        {
          actionCoordinator = transitNavigationContext;
        }

        else
        {
          v38 = sub_10006D178();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v41 = 136315906;
            v42 = "[VLFSessionTask showVLFUI]";
            v43 = 2080;
            v44 = "VLFSessionTask.m";
            v45 = 1024;
            v46 = 204;
            v47 = 2080;
            v48 = "transitNavigationContext != nil";
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v41, 0x26u);
          }

          if (sub_100E03634())
          {
            v39 = sub_10006D178();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = +[NSThread callStackSymbols];
              v41 = 138412290;
              v42 = v40;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@", &v41, 0xCu);
            }
          }

          actionCoordinator = 0;
        }

        v27 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      navModeController = [appCoordinator baseModeController];
    }

    v27 = navModeController;
    actionCoordinator = [navModeController actionCoordinator];
LABEL_38:
    [actionCoordinator showVLF];

    platformController3 = [(VLFSessionTask *)self platformController];
    auxiliaryTasksManager = [platformController3 auxiliaryTasksManager];
    v34 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

    [v34 cancelNavigationAutoLaunchIfNeccessary];
LABEL_39:

    goto LABEL_40;
  }

  v8 = currentTransportType;
  if (currentTransportType == 3)
  {
    v9 = 0;
    v10 = 1;
    goto LABEL_10;
  }

  v28 = sub_10006D178();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v41 = 136315650;
    v42 = "[VLFSessionTask showVLFUI]";
    v43 = 2080;
    v44 = "VLFSessionTask.m";
    v45 = 1024;
    v46 = 166;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v41, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v29 = sub_10006D178();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = +[NSThread callStackSymbols];
      v41 = 138412290;
      v42 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", &v41, 0xCu);
    }
  }

  v14 = sub_10065CC94();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if ((v8 - 1) > 4)
    {
      v31 = @"Undefined";
    }

    else
    {
      v31 = off_101624E48[(v8 - 1)];
    }

    v41 = 138412290;
    v42 = v31;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid transport type for VLF during navigation: %@", &v41, 0xCu);
  }

LABEL_40:
}

- (void)dealloc
{
  [(VLFSessionStateManager *)self->_stateManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = VLFSessionTask;
  [(VLFSessionTask *)&v3 dealloc];
}

- (VLFSessionTask)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "[VLFSessionTask initWithPlatformController:]";
      v24 = 2080;
      v25 = "VLFSessionTask.m";
      v26 = 1024;
      v27 = 97;
      v28 = 2080;
      v29 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v23 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v21.receiver = self;
  v21.super_class = VLFSessionTask;
  v5 = [(VLFSessionTask *)&v21 init];
  v6 = v5;
  if (v5)
  {
    v5->_canShowVLFPuckUI = 1;
    objc_storeWeak(&v5->_platformController, controllerCopy);
    v7 = objc_alloc_init(VLFSessionAnalyticsTracker);
    analyticsTracker = v6->_analyticsTracker;
    v6->_analyticsTracker = v7;

    v9 = [VLFSessionStateManager alloc];
    WeakRetained = objc_loadWeakRetained(&v6->_platformController);
    v11 = [(VLFSessionStateManager *)v9 initWithPlatformController:WeakRetained];
    stateManager = v6->_stateManager;
    v6->_stateManager = v11;

    [(VLFSessionStateManager *)v6->_stateManager addObserver:v6];
    v13 = +[MKLocationManager sharedLocationManager];
    [v13 setFusionInfoEnabled:1];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v6 selector:"vlfSessionDidStartNotification:" name:@"VLFSessionDidStartNotification" object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v6 selector:"vlfContaineeViewControllerDidAppearNotification:" name:@"VLFContaineeViewControllerDidAppearNotification" object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v6 selector:"vlfContaineeViewControllerWillCancelNotification:" name:@"VLFContaineeViewControllerWillCancelNotification" object:0];
  }

  return v6;
}

@end