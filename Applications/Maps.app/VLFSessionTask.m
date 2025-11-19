@interface VLFSessionTask
+ (BOOL)isVLFModeSupported;
- (PlatformController)platformController;
- (VLFSessionTask)initWithPlatformController:(id)a3;
- (void)clearMapState;
- (void)clearUserState;
- (void)dealloc;
- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)saveMapState;
- (void)saveUserState;
- (void)setCanShowVLFPuckUI:(BOOL)a3;
- (void)setNavigationSession:(id)a3;
- (void)showVLFUI;
- (void)updateVLFPuckUIForState:(int64_t)a3;
- (void)vlfContaineeViewControllerDidAppearNotification:(id)a3;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3;
- (void)vlfContaineeViewControllerWillCancelNotification:(id)a3;
- (void)vlfSessionDidStartNotification:(id)a3;
- (void)vlfSessionDidStopNotification:(id)a3;
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

- (void)vlfContaineeViewControllerWillCancelNotification:(id)a3
{
  v4 = sub_10065CC94();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "VLF will cancel", &v16, 2u);
  }

  v5 = [(VLFSessionTask *)self platformController];
  v6 = [v5 chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 mapView];
    v10 = [v9 userTrackingMode];

    if (v10 == 2)
    {
      v11 = [v8 mapView];
      [v11 setUserTrackingMode:1 animated:0];
    }

    v12 = [v8 mapView];
    [v12 setUserTrackingMode:0 animated:0];
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

    v12 = sub_10065CC94();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "chromeVC was not an IOSBased one; ignoring", &v16, 2u);
    }
  }
}

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3
{
  v4 = sub_10065CC94();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "VLF mode VC did disappear", buf, 2u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"VLFContaineeViewControllerDidDisappearNotification" object:0];

  v6 = [(VLFSessionTask *)self platformController];
  v7 = [v6 chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(VLFSessionTask *)self wasLastLocalizationSuccessful];
    v11 = [(VLFSessionTask *)self originalMapState];
    v12 = [(VLFSessionTask *)self originalUserState];
    v13 = v12;
    memset(buf, 0, sizeof(buf));
    if (v12)
    {
      [v12 originalUserTrackingBehavior];
    }

    if ([v13 originalUserTrackingMode] || v10)
    {
      [v13 originalCenterCoordinateDistance];
      *&buf[8] = v14;
      buf[17] = 1;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10065D0B4;
    block[3] = &unk_101624E08;
    v23 = v11;
    v15 = v9;
    v26 = *buf;
    v27 = *&buf[16];
    v24 = v15;
    v25 = v13;
    v28 = v10;
    v16 = v13;
    v17 = v11;
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

- (void)vlfContaineeViewControllerDidAppearNotification:(id)a3
{
  v4 = sub_10065CC94();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "VLF mode VC did appear", buf, 2u);
  }

  v5 = [(VLFSessionTask *)self platformController];
  v6 = [v5 chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
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
    v19 = self;
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

- (void)vlfSessionDidStopNotification:(id)a3
{
  v4 = a3;
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
  v9 = [v8 idleTimerController];
  [v9 setDesiredIdleTimerState:0 forReason:3];

  v10 = [v4 object];

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
    -[VLFSessionTask setWasLastLocalizationSuccessful:](self, "setWasLastLocalizationSuccessful:", [v10 wasLastLocalizationSuccessful]);
  }

  else
  {
    v11 = sub_10065CC94();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Notification object (%@), was not a VLFSession; ignoring", &v15, 0xCu);
    }
  }
}

- (void)vlfSessionDidStartNotification:(id)a3
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
  v7 = [v6 idleTimerController];
  [v7 setDesiredIdleTimerState:1 forReason:3];

  [(VLFSessionTask *)self setWasLastLocalizationSuccessful:0];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"vlfSessionDidStopNotification:" name:@"VLFSessionDidStopNotification" object:0];
}

- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4
{
  v5 = [objc_opt_class() isSupportedForTransportType:a4];

  [(VLFSessionTask *)self setCanShowVLFPuckUI:v5];
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v15 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v15;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(VLFSessionTask *)self setNavigationSession:v7];

  v8 = [(VLFSessionTask *)self navigationSession];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = objc_opt_class();
  v10 = [(VLFSessionTask *)self navigationSession];
  v11 = [v9 isSupportedForTransportType:{objc_msgSend(v10, "currentTransportType")}];

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = [(VLFSessionTask *)self navigationSession];
  v13 = [v12 currentTransportType];

  if (v13 != 3)
  {
    v14 = [(VLFSessionTask *)self navigationSession];
    v11 = [v14 navigationType] != 2;
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

  v4 = [(VLFSessionTask *)self platformController];
  v5 = [v4 chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v7 mapView];
    [v8 setScrollEnabled:{objc_msgSend(v9, "isScrollEnabled")}];

    v10 = [v7 mapView];
    [v8 setRotateEnabled:{objc_msgSend(v10, "isRotateEnabled")}];

    v11 = [v7 mapView];
    [v8 setZoomEnabled:{objc_msgSend(v11, "isZoomEnabled")}];

    v12 = [v7 mapView];
    [v8 setPitchEnabled:{objc_msgSend(v12, "isPitchEnabled")}];

    [(VLFSessionTask *)self setOriginalMapState:v8];
    v13 = sub_10065CC94();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(VLFSessionTask *)self originalMapState];
      if ([v14 scrollEnabled])
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
      v18 = [(VLFSessionTask *)self originalMapState];
      if ([v18 rotateEnabled])
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
      v22 = [(VLFSessionTask *)self originalMapState];
      if ([v22 zoomEnabled])
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
      v26 = [(VLFSessionTask *)self originalMapState];
      if ([v26 pitchEnabled])
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

  v4 = [(VLFSessionTask *)self platformController];
  v5 = [v4 chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v7 mapView];
    v10 = [v9 camera];
    [v10 centerCoordinateDistance];
    [v8 setOriginalCenterCoordinateDistance:?];

    v11 = [v7 mapView];
    [v8 setOriginalUserTrackingMode:{objc_msgSend(v11, "userTrackingMode")}];

    v12 = [v7 mapView];
    v13 = v12;
    if (v12)
    {
      [v12 _userTrackingBehavior];
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
    v14 = [(VLFSessionTask *)self originalUserState];
    v15 = v14;
    if (v14)
    {
      [v14 originalUserTrackingBehavior];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v16 = sub_10065CC94();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(VLFSessionTask *)self originalUserState];
      [v17 originalCenterCoordinateDistance];
      *v29 = 134217984;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Original center coordinate distance: %f", v29, 0xCu);
    }

    v19 = sub_10065CC94();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(VLFSessionTask *)self originalUserState];
      v21 = [v20 originalUserTrackingMode];
      *v29 = 134217984;
      v30 = v21;
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

- (void)updateVLFPuckUIForState:(int64_t)a3
{
  v5 = [(VLFSessionTask *)self platformController];
  v6 = [v5 chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    v10 = sub_10065CC94();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "chromeVC was not an IOSBased one; ignoring", v11, 2u);
    }

    goto LABEL_12;
  }

  if (![(VLFSessionTask *)self canShowVLFPuckUI])
  {
    v10 = [v8 userLocationView];
    [v10 setVlfMode:0];
LABEL_12:

    goto LABEL_13;
  }

  if (a3 != 2)
  {
    a3 = a3 == 1;
  }

  v9 = [v8 userLocationView];
  [v9 setVlfMode:a3];

LABEL_13:
}

- (void)setCanShowVLFPuckUI:(BOOL)a3
{
  if (self->_canShowVLFPuckUI != a3)
  {
    self->_canShowVLFPuckUI = a3;
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

    v7 = [(VLFSessionTask *)self stateManager];
    -[VLFSessionTask updateVLFPuckUIForState:](self, "updateVLFPuckUIForState:", [v7 currentState]);
  }
}

- (void)setNavigationSession:(id)a3
{
  v5 = a3;
  navigationSession = self->_navigationSession;
  if (navigationSession != v5)
  {
    v7 = v5;
    [(NavigationSession *)navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, a3);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
    v5 = v7;
  }
}

- (void)showVLFUI
{
  v3 = [(VLFSessionTask *)self platformController];
  v4 = [v3 currentSession];

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

  if (!v6)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v7 = [v6 currentTransportType];
  if (v7 == 2)
  {
    v10 = 0;
    v9 = 1;
LABEL_10:
    v11 = [(VLFSessionTask *)self platformController];
    v12 = [v11 chromeViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
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

    v15 = [(VLFSessionTask *)self originalUserState];

    if (!v15)
    {
      [(VLFSessionTask *)self saveUserState];
    }

    v16 = [(VLFSessionTask *)self originalMapState];

    if (!v16)
    {
      [(VLFSessionTask *)self saveMapState];
    }

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:@"VLFSessionTaskWillShowVLFUINotification" object:0];

    v18 = [v14 mapView];
    v19 = [v18 userTrackingMode];

    if (v19 == 2)
    {
      v20 = [v14 mapView];
      [v20 setUserTrackingMode:1 animated:0];
    }

    v21 = [v14 mapView];
    [v21 setUserTrackingMode:0 animated:0];

    v22 = [v14 appCoordinator];
    v23 = v22;
    if (v9)
    {
      v24 = [v22 navModeController];
    }

    else if (v10)
    {
      v24 = [v22 stepModeController];
      if (!v24)
      {
        v25 = [v23 transitNavigationContext];
        if (v25)
        {
          v26 = v25;
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

          v26 = 0;
        }

        v27 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      v24 = [v22 baseModeController];
    }

    v27 = v24;
    v26 = [v24 actionCoordinator];
LABEL_38:
    [v26 showVLF];

    v32 = [(VLFSessionTask *)self platformController];
    v33 = [v32 auxiliaryTasksManager];
    v34 = [v33 auxilaryTaskForClass:objc_opt_class()];

    [v34 cancelNavigationAutoLaunchIfNeccessary];
LABEL_39:

    goto LABEL_40;
  }

  v8 = v7;
  if (v7 == 3)
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

- (VLFSessionTask)initWithPlatformController:(id)a3
{
  v4 = a3;
  if (!v4)
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
    objc_storeWeak(&v5->_platformController, v4);
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