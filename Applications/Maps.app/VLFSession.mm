@interface VLFSession
- (ARConfiguration)configuration;
- (VLFSession)initWithMode:(int64_t)a3;
- (VLFSessionDelegate)delegate;
- (void)_processVLDebugInfo:(id)a3;
- (void)checkForSuccessWithFusionLocation:(id)a3 accuracyLocation:(id)a4;
- (void)dealloc;
- (void)endRecordingIfNecessary;
- (void)locationManager:(id)a3 didUpdateLocation:(id)a4;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4;
- (void)registerFailureWithResult:(int64_t)a3 error:(id)a4 initializationFailureDetails:(id)a5;
- (void)registerSuccessWithVLFLocation:(id)a3;
- (void)sendAnalytics:(id)a3;
- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionManager:(id)a3 didGainSessionOwnership:(id)a4;
- (void)sessionManager:(id)a3 didResignSessionOwnership:(id)a4;
- (void)start;
- (void)startLocationUpdates;
- (void)stop;
- (void)stopLocationUpdates;
@end

@implementation VLFSession

- (VLFSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4
{
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009881E4;
  v6[3] = &unk_101651D38;
  v6[4] = self;
  v7[1] = a4;
  objc_copyWeak(v7, &location);
  dispatch_async(&_dispatch_main_q, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"PedestrianARAutoFocusDistanceKey"] && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == v11))
  {
    if (self->_session && (configuration = self->_configuration) != 0)
    {
      v15 = [(ARConfiguration *)configuration isAutoFocusEnabled]^ 1;
    }

    else
    {
      v15 = 0;
    }

    [(VLFSession *)self setShouldUpdateCameraFocusLensPosition:v15];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VLFSession;
    [(VLFSession *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136316418;
        v17 = "[VLFSession locationManagerUpdatedLocation:]";
        v18 = 2080;
        v19 = "VLFSession.m";
        v20 = 1024;
        v21 = 619;
        v22 = 2080;
        v23 = "dispatch_get_main_queue()";
        v24 = 2080;
        v25 = dispatch_queue_get_label(&_dispatch_main_q);
        v26 = 2080;
        v27 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v16, 0x3Au);
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
  }

  v8 = sub_1009882CC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v4 lastLocation];
    v16 = 134349315;
    v17 = self;
    v18 = 2113;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Got MK location update: (%{private}@)", &v16, 0x16u);
  }

  v10 = +[VLFLocationManager sharedLocationManager];
  v11 = [v10 lastLocation];
  v12 = [v4 lastLocation];
  [(VLFSession *)self checkForSuccessWithFusionLocation:v11 accuracyLocation:v12];
}

- (void)locationManager:(id)a3 didUpdateLocation:(id)a4
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
        v17 = 136316418;
        v18 = "[VLFSession locationManager:didUpdateLocation:]";
        v19 = 2080;
        v20 = "VLFSession.m";
        v21 = 1024;
        v22 = 608;
        v23 = 2080;
        v24 = "dispatch_get_main_queue()";
        v25 = 2080;
        v26 = dispatch_queue_get_label(&_dispatch_main_q);
        v27 = 2080;
        v28 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v17, 0x3Au);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          v17 = 138412290;
          v18 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }
    }
  }

  v11 = sub_1009882CC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134349315;
    v18 = self;
    v19 = 2113;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] Got VLF location update: (%{private}@)", &v17, 0x16u);
  }

  v12 = +[MKLocationManager sharedLocationManager];
  v13 = [v12 lastLocation];
  [(VLFSession *)self checkForSuccessWithFusionLocation:v7 accuracyLocation:v13];
}

- (void)sessionManager:(id)a3 didResignSessionOwnership:(id)a4
{
  v5 = sub_1009882CC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134349314;
    v12 = self;
    v13 = 2080;
    v14 = "[VLFSession sessionManager:didResignSessionOwnership:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s", &v11, 0x16u);
  }

  v6 = [(VLFSession *)self session];
  [v6 _removeObserver:self];

  [(VLFSession *)self setTimeoutTimer:0];
  if ([(VLFSession *)self mode]== 1)
  {
    [(VLFSession *)self endRecordingIfNecessary];
  }

  else
  {
    v7 = sub_1009882CC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134349314;
      v12 = self;
      v13 = 2112;
      v14 = @"VLFSessionModeNonUI";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Will not end recording because we were not started for mode: %@", &v11, 0x16u);
    }
  }

  session = self->_session;
  self->_session = 0;

  configuration = self->_configuration;
  self->_configuration = 0;

  [(VLFSession *)self stopLocationUpdates];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"VLFSessionDidStopNotification" object:self];
}

- (void)sessionManager:(id)a3 didGainSessionOwnership:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1009882CC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v25 = self;
    v26 = 2080;
    v27 = "[VLFSession sessionManager:didGainSessionOwnership:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] %s", buf, 0x16u);
  }

  objc_storeStrong(&self->_session, a4);
  [(VLFSession *)self setShouldObserveFrames:0];
  [(VLFSession *)self setNotifiedFirstFrame:0];
  [(ARSession *)self->_session _addObserver:self];
  v9 = [(VLFSession *)self configuration];
  -[VLFSession setShouldUpdateCameraFocusLensPosition:](self, "setShouldUpdateCameraFocusLensPosition:", [v9 isAutoFocusEnabled] ^ 1);
  [(ARSession *)self->_session runWithConfiguration:v9 options:3];
  if ([(ARSession *)self->_session state]== 1 && [(VLFSession *)self mode]== 1)
  {
    [(VLFSession *)self startLocationUpdates];
  }

  [(VLFSession *)self timeout];
  v11 = v10;
  if (v10 <= 0.0 || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 BOOLForKey:@"VLFSessionKeepARSessionRunningForeverKey"], v12, (v13 & 1) != 0))
  {
    v14 = +[NSUserDefaults standardUserDefaults];
    v15 = [v14 BOOLForKey:@"VLFSessionKeepARSessionRunningForeverKey"];

    v16 = sub_1009882CC();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 134349056;
        v25 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}p] Debug option to keep VLF running forever is enabled; not starting the timeout timer", buf, 0xCu);
      }
    }

    else if (v17)
    {
      *buf = 134349312;
      v25 = self;
      v26 = 2048;
      v27 = *&v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}p] Timeout was <= 0 (%f); not starting the timeout timer", buf, 0x16u);
    }
  }

  else
  {
    v18 = sub_1009882CC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      v25 = self;
      v26 = 2048;
      v27 = *&v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}p] Starting timeout timer for %f seconds", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v19 = &_dispatch_main_q;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100988F24;
    v22[3] = &unk_1016616E8;
    objc_copyWeak(&v23, buf);
    v20 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v22 block:v11];
    [(VLFSession *)self setTimeoutTimer:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 postNotificationName:@"VLFSessionDidStartNotification" object:self];
}

- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label == v9 || (label ? (v10 = v9 == 0) : (v10 = 1), !v10 && !strcmp(label, v9)))
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *location = 136316162;
      *&location[4] = "[VLFSession session:didChangeGeoTrackingStatus:]";
      v23 = 2080;
      v24 = "VLFSession.m";
      v25 = 1024;
      v26 = 507;
      v27 = 2080;
      v28 = "dispatch_get_main_queue()";
      v29 = 2080;
      v30 = dispatch_queue_get_label(&_dispatch_main_q);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", location, 0x30u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  [objc_opt_class() setLastGeoTrackingStatus:v7];
  v11 = [v6 currentFrame];
  v12 = [v11 vlDebugInfo];

  objc_initWeak(location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009892E0;
  block[3] = &unk_101661480;
  objc_copyWeak(&v21, location);
  v19 = v7;
  v20 = v12;
  v13 = v12;
  v14 = v7;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(location);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label == v9 || (label ? (v10 = v9 == 0) : (v10 = 1), !v10 && !strcmp(label, v9)))
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *location = 136316162;
      *&location[4] = "[VLFSession session:didFailWithError:]";
      v25 = 2080;
      v26 = "VLFSession.m";
      v27 = 1024;
      v28 = 488;
      v29 = 2080;
      v30 = "dispatch_get_main_queue()";
      v31 = 2080;
      v32 = dispatch_queue_get_label(&_dispatch_main_q);
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", location, 0x30u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  v11 = objc_alloc_init(GEOVLFInitializationFailureDetails);
  [v11 setArkitErrorCode:{objc_msgSend(v7, "code")}];
  v12 = [v7 underlyingErrors];
  v13 = [v12 firstObject];

  if (v13)
  {
    v14 = [v13 domain];
    [v11 setArkitUnderlyingErrorDomain:v14];

    [v11 setArkitUnderlyingErrorCode:{objc_msgSend(v13, "code")}];
  }

  objc_initWeak(location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100989718;
  block[3] = &unk_101661480;
  objc_copyWeak(&v23, location);
  v21 = v7;
  v22 = v11;
  v15 = v11;
  v16 = v7;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label == v9 || (label ? (v10 = v9 == 0) : (v10 = 1), !v10 && !strcmp(label, v9)))
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *location = 136316162;
      *&location[4] = "[VLFSession session:didUpdateFrame:]";
      v25 = 2080;
      v26 = "VLFSession.m";
      v27 = 1024;
      v28 = 450;
      v29 = 2080;
      v30 = "dispatch_get_main_queue()";
      v31 = 2080;
      v32 = dispatch_queue_get_label(&_dispatch_main_q);
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", location, 0x30u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  v11 = [v7 vlDebugInfo];
  v12 = [v7 geoTrackingStatus];
  v13 = v12;
  if (v12 && [v12 state] == 2)
  {
    v14 = [(VLFSession *)self indoorOutdoorRecorder];
    [v14 recordFrame:v7];
  }

  objc_initWeak(location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100989A44;
  block[3] = &unk_101661480;
  objc_copyWeak(&v23, location);
  v21 = v13;
  v22 = v11;
  v15 = v11;
  v16 = v13;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v8 = dispatch_queue_get_label(0);
  if (label == v8 || (label ? (v9 = v8 == 0) : (v9 = 1), !v9 && !strcmp(label, v8)))
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 136316162;
      *&location[4] = "[VLFSession session:didChangeState:]";
      v16 = 2080;
      v17 = "VLFSession.m";
      v18 = 1024;
      v19 = 422;
      v20 = 2080;
      v21 = "dispatch_get_main_queue()";
      v22 = 2080;
      v23 = dispatch_queue_get_label(&_dispatch_main_q);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", location, 0x30u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  objc_initWeak(location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100989E3C;
  v13[3] = &unk_10165FBC0;
  objc_copyWeak(v14, location);
  v14[1] = a4;
  dispatch_async(&_dispatch_main_q, v13);

  objc_destroyWeak(v14);
  objc_destroyWeak(location);
}

- (void)_processVLDebugInfo:(id)a3
{
  v5 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v7 = dispatch_queue_get_label(0);
  if (label != v7)
  {
    v8 = !label || v7 == 0;
    if (v8 || strcmp(label, v7))
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136316418;
        v16 = "[VLFSession _processVLDebugInfo:]";
        v17 = 2080;
        v18 = "VLFSession.m";
        v19 = 1024;
        v20 = 410;
        v21 = 2080;
        v22 = "dispatch_get_main_queue()";
        v23 = 2080;
        v24 = dispatch_queue_get_label(&_dispatch_main_q);
        v25 = 2080;
        v26 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v15, 0x3Au);
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
  }

  if (v5)
  {
    lastDebugInfo = self->_lastDebugInfo;
    if (lastDebugInfo != v5 && ([(VLLocalizationDebugInfo *)lastDebugInfo isEqual:v5]& 1) == 0)
    {
      objc_storeStrong(&self->_lastDebugInfo, a3);
      v10 = [(VLFSession *)self traceRecorder];
      [v10 recordAttempt:self->_lastDebugInfo];

      v11 = [(VLFSession *)self analyticsCapturer];
      [v11 recordAttempt:self->_lastDebugInfo];
    }
  }
}

- (void)registerFailureWithResult:(int64_t)a3 error:(id)a4 initializationFailureDetails:(id)a5
{
  v8 = a4;
  v9 = a5;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v11 = dispatch_queue_get_label(0);
  if (label != v11)
  {
    v12 = !label || v11 == 0;
    if (v12 || strcmp(label, v11))
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = 136316418;
        v21 = "[VLFSession registerFailureWithResult:error:initializationFailureDetails:]";
        v22 = 2080;
        v23 = "VLFSession.m";
        v24 = 1024;
        *v25 = 386;
        *&v25[4] = 2080;
        *&v25[6] = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v20, 0x3Au);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          v20 = 138412290;
          v21 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
        }
      }
    }
  }

  v13 = [(VLFSession *)self session];
  [v13 _removeObserver:self];

  if (![(VLFSession *)self hasNotifiedDelegate])
  {
    v14 = sub_1009882CC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 134349570;
      v21 = self;
      v22 = 2048;
      v23 = a3;
      v24 = 2112;
      *v25 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Registering failure with result: %ld, error: %@", &v20, 0x20u);
    }

    [(VLFSession *)self setWasLastLocalizationSuccessful:0];
    self->_lastLocalizationResult = a3;
    objc_storeStrong(&self->_initializationFailureDetails, a5);
    [(VLFSession *)self setNotifiedDelegate:1];
    v15 = [(VLFSession *)self delegate];
    [v15 VLFSessionLocalizationFailedWithError:v8];

    [(VLFSession *)self stop];
    if ([(VLFSession *)self mode])
    {
      v16 = [(VLFSession *)self notificationGenerator];
      [v16 notificationOccurred:2];
    }
  }
}

- (void)registerSuccessWithVLFLocation:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136316418;
        v17 = "[VLFSession registerSuccessWithVLFLocation:]";
        v18 = 2080;
        v19 = "VLFSession.m";
        v20 = 1024;
        v21 = 364;
        v22 = 2080;
        v23 = "dispatch_get_main_queue()";
        v24 = 2080;
        v25 = dispatch_queue_get_label(&_dispatch_main_q);
        v26 = 2080;
        v27 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v16, 0x3Au);
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
  }

  if (![(VLFSession *)self hasNotifiedDelegate])
  {
    v8 = sub_1009882CC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = 134349314;
      v17 = self;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Registering success with vlf location: %@", &v16, 0x16u);
    }

    v9 = [(VLFSession *)self session];
    v10 = [v9 technique];
    [v10 setVlfLocation:v4];

    [(VLFSession *)self setWasLastLocalizationSuccessful:1];
    self->_lastLocalizationResult = 4;
    [(VLFSession *)self setNotifiedDelegate:1];
    v11 = [(VLFSession *)self delegate];
    [v11 VLFSessionLocalizationSucceeded];

    [(VLFSession *)self stop];
    if ([(VLFSession *)self mode])
    {
      v12 = [(VLFSession *)self notificationGenerator];
      [v12 notificationOccurred:0];
    }
  }
}

- (void)checkForSuccessWithFusionLocation:(id)a3 accuracyLocation:(id)a4
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
      v49 = sub_10006D178();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v52 = 136316418;
        v53 = "[VLFSession checkForSuccessWithFusionLocation:accuracyLocation:]";
        v54 = 2080;
        v55 = "VLFSession.m";
        v56 = 1024;
        *v57 = 291;
        *&v57[4] = 2080;
        *&v57[6] = "dispatch_get_main_queue()";
        *&v57[14] = 2080;
        *&v57[16] = dispatch_queue_get_label(&_dispatch_main_q);
        v58 = 2080;
        v59 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v52, 0x3Au);
      }

      if (sub_100E03634())
      {
        v50 = sub_10006D178();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = +[NSThread callStackSymbols];
          v52 = 138412290;
          v53 = v51;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%@", &v52, 0xCu);
        }
      }
    }
  }

  if ([(VLFSession *)self mode]!= 1)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v52 = 136315650;
      v53 = "[VLFSession checkForSuccessWithFusionLocation:accuracyLocation:]";
      v54 = 2080;
      v55 = "VLFSession.m";
      v56 = 1024;
      *v57 = 294;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v52, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        v52 = 138412290;
        v53 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v52, 0xCu);
      }
    }

    v13 = sub_1009882CC();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v52 = 134349314;
    v53 = self;
    v54 = 2112;
    v55 = @"VLFSessionModeNonUI";
    v14 = "[%{public}p] Mode must be %@ to check location based success criteria";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
    v20 = 22;
    goto LABEL_27;
  }

  if (!v6)
  {
    v13 = sub_1009882CC();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_28;
    }

    v52 = 134349056;
    v53 = self;
    v14 = "[%{public}p] fusionLocation was nil; ignoring";
LABEL_25:
    v15 = v13;
    v16 = OS_LOG_TYPE_DEBUG;
    goto LABEL_26;
  }

  if (!v7)
  {
    v13 = sub_1009882CC();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_28;
    }

    v52 = 134349056;
    v53 = self;
    v14 = "[%{public}p] accuracyLocation was nil; ignoring";
    goto LABEL_25;
  }

  [objc_opt_class() setLastLocation:v6];
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 BOOLForKey:@"VLFSessionKeepARSessionRunningForeverKey"];

  if (v12)
  {
    v13 = sub_1009882CC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v52 = 134349056;
      v53 = self;
      v14 = "[%{public}p] Debug switch to keep the session running forever is set; ignoring location update";
      v15 = v13;
      v16 = OS_LOG_TYPE_INFO;
LABEL_26:
      v20 = 12;
LABEL_27:
      _os_log_impl(&_mh_execute_header, v15, v16, v14, &v52, v20);
    }

LABEL_28:

    goto LABEL_29;
  }

  UInteger = GEOConfigGetUInteger();
  v22 = sub_1009882CC();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 134349312;
    v53 = self;
    v54 = 2048;
    v55 = UInteger;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}p] Checking success criteria for mode: %lu", &v52, 0x16u);
  }

  v23 = [v6 isCoordinateFused];
  v24 = [(VLFSession *)self session];
  v25 = [v24 configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!v23)
    {
      goto LABEL_42;
    }

LABEL_38:
    v30 = sub_1009882CC();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v52 = 134349056;
      v53 = self;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}p] Location is fused", &v52, 0xCu);
    }

    v31 = UInteger != 1;
    v32 = 1;
    goto LABEL_46;
  }

  v27 = +[NSUserDefaults standardUserDefaults];
  v28 = [v27 BOOLForKey:@"VLFSessionIgnoreFusedLocationForReplayKey"];

  if (v28)
  {
    v29 = sub_1009882CC();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v52 = 134349056;
      v53 = self;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{public}p] Replaying from a recording; pretending as though the location is fused", &v52, 0xCu);
    }

    goto LABEL_38;
  }

  v33 = [objc_opt_class() lastGeoTrackingStatus];
  v34 = [v33 state];

  if (v34 == 3)
  {
    goto LABEL_38;
  }

LABEL_42:
  v35 = sub_1009882CC();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v52 = 134349056;
    v53 = self;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "[%{public}p] Location is not fused", &v52, 0xCu);
  }

  if (UInteger == 1)
  {
    goto LABEL_29;
  }

  v32 = 0;
  v31 = 1;
LABEL_46:
  [v7 horizontalAccuracy];
  v37 = v36;
  GEOConfigGetDouble();
  v39 = v38;
  v40 = sub_1009882CC();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
  if (v37 > v39)
  {
    if (!v41)
    {
      goto LABEL_52;
    }

    v52 = 134349569;
    v53 = self;
    v54 = 2049;
    v55 = *&v37;
    v56 = 2049;
    *v57 = v39;
    v42 = "[%{public}p] Horizontal accuracy (%{private}f) is above the minimum threshold: (%{private}f)";
  }

  else
  {
    if (!v41)
    {
      goto LABEL_52;
    }

    v52 = 134349569;
    v53 = self;
    v54 = 2049;
    v55 = *&v37;
    v56 = 2049;
    *v57 = v39;
    v42 = "[%{public}p] Horizontal accuracy (%{private}f) fell below minimum threshold: (%{private}f)";
  }

  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, v42, &v52, 0x20u);
LABEL_52:

  if (v37 <= v39)
  {
    v43 = 1;
  }

  else
  {
    v43 = v32;
  }

  if (UInteger || (v43 & 1) == 0)
  {
    v44 = v32 ^ 1;
    if (v37 > v39)
    {
      v44 = 1;
    }

    if ((v31 | v44))
    {
      v13 = sub_1009882CC();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      v52 = 134349056;
      v53 = self;
      v14 = "[%{public}p] Not localized yet";
      goto LABEL_25;
    }
  }

  v45 = sub_1009882CC();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [(VLFSession *)self session];
    v47 = [v46 currentFrame];
    v48 = [v47 location];
    v52 = 134349827;
    v53 = self;
    v54 = 2113;
    v55 = v6;
    v56 = 2113;
    *v57 = v7;
    *&v57[8] = 2113;
    *&v57[10] = v48;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%{public}p] Localization succeeded with CL fusion location: (%{private}@), accuracy location: (%{private}@), ARKit location: (%{private}@)", &v52, 0x2Au);
  }

  [(VLFSession *)self stopLocationUpdates];
  [(VLFSession *)self registerSuccessWithVLFLocation:v6];
LABEL_29:
}

- (void)stopLocationUpdates
{
  v3 = +[VLFLocationManager sharedLocationManager];
  [v3 removeObserver:self];

  v4 = +[MKLocationManager sharedLocationManager];
  [v4 stopListeningForLocationUpdates:self];
}

- (void)startLocationUpdates
{
  v3 = +[VLFLocationManager sharedLocationManager];
  [v3 addObserver:self];

  v4 = +[MKLocationManager sharedLocationManager];
  [v4 listenForLocationUpdates:self];
}

- (void)endRecordingIfNecessary
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_configuration;
    v4 = [(ARConfiguration *)v3 fileURL];
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10098B160;
    v6[3] = &unk_10165D288;
    objc_copyWeak(&v8, &location);
    v5 = v4;
    v7 = v5;
    [(ARConfiguration *)v3 finishRecordingWithHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (ARConfiguration)configuration
{
  p_configuration = &self->_configuration;
  configuration = self->_configuration;
  if (!configuration)
  {
    v5 = objc_alloc_init(ARGeoTrackingConfiguration);
    [v5 setSupportEnablementOptions:4];
    if ([(VLFSession *)self mode]== 1)
    {
      GEOConfigGetDouble();
      [v5 setVisualLocalizationCallInterval:?];
      [v5 setUseLidarIfAvailable:GEOConfigGetBOOL()];
      GEOConfigGetDouble();
      v7 = v6;
      v8 = sub_1009882CC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v41 = self;
        v42 = 2048;
        v43 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Configuring VLF with framerate: %f", buf, 0x16u);
      }

      v9 = [NSNumber numberWithDouble:v7];
      v46[0] = v9;
      v10 = [NSNumber numberWithDouble:v7];
      v46[1] = v10;
      v11 = [NSNumber numberWithDouble:v7];
      v46[2] = v11;
      v12 = [NSArray arrayWithObjects:v46 count:3];
      v13 = [v5 videoFormat];
      [v13 setFrameRatesByPowerUsage:v12];
    }

    else
    {
      GEOConfigGetDouble();
      [v5 setVisualLocalizationCallInterval:?];
      [v5 setEnvironmentTexturing:0];
      v14 = +[NSUserDefaults standardUserDefaults];
      [v5 setAutoFocusEnabled:{objc_msgSend(v14, "BOOLForKey:", @"PedestrianARAutoFocusEnabledKey"}];

      [v5 setUseLidarIfAvailable:GEOConfigGetBOOL()];
    }

    v15 = sub_1009882CC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [v5 visualLocalizationCallInterval];
      *buf = 134349312;
      v41 = self;
      v42 = 2048;
      v43 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Configuring VLF with call interval: %f", buf, 0x16u);
    }

    objc_storeStrong(p_configuration, v5);
    v17 = +[NSUserDefaults standardUserDefaults];
    v18 = [v17 BOOLForKey:@"MapsARSessionRecordingEnabledKey"];

    if (v18)
    {
      v19 = sub_1009882CC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v41 = self;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] ARKit session recording is enabled; trying to create recording configuration", buf, 0xCu);
      }

      v20 = [(VLFSession *)self mode];
      v21 = @"pedestrianar";
      if (v20 == 1)
      {
        v21 = @"vlf";
      }

      v22 = self->_configuration;
      v23 = v21;
      +[NSDate now];
      v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [*&v24 timeIntervalSince1970];
      v26 = [NSString stringWithFormat:@"%@.%.0f.mov", v23, v25 * 1000.0];

      v27 = [(ARConfiguration *)v22 recordingConfigurationWithFileName:v26];
      v28 = self->_configuration;
      self->_configuration = v27;
    }

    else
    {
      if (!_GEOConfigHasValue())
      {
LABEL_24:

        configuration = *p_configuration;
        goto LABEL_25;
      }

      GEOConfigGetString();
      v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v29 = +[NSUserDefaults standardUserDefaults];
      v30 = [v29 integerForKey:@"MapsARSessionPlaybackModeKey"];

      v31 = sub_1009882CC();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        NSStringFromARReplayMode();
        v32 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 134349570;
        v41 = self;
        v42 = 2112;
        v43 = v32;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%{public}p] Replaying ARSession recording with mode: %@, file: %@", buf, 0x20u);
      }

      v33 = [ARReplayConfiguration alloc];
      v34 = *p_configuration;
      v35 = [NSURL fileURLWithPath:*&v24];
      v39 = 0;
      v28 = [v33 initWithBaseConfiguration:v34 fileURL:v35 replayMode:v30 outError:&v39];
      v26 = v39;

      if (v28)
      {
        v36 = v28;
        v37 = *p_configuration;
        *p_configuration = v36;
      }

      else
      {
        v37 = sub_1009882CC();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349570;
          v41 = self;
          v42 = 2112;
          v43 = v24;
          v44 = 2112;
          v45 = *&v26;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "[%{public}p] Error configuring replay configuration for file path %@: %@", buf, 0x20u);
        }
      }
    }

    goto LABEL_24;
  }

LABEL_25:

  return configuration;
}

- (void)sendAnalytics:(id)a3
{
  v6 = a3;
  v4 = [(VLFSession *)self analyticsCapturer];

  if (v4)
  {
    v5 = [(VLFSession *)self analyticsCapturer];
    [v5 sessionEndedWithResult:self->_lastLocalizationResult initializationFailureDetails:self->_initializationFailureDetails arFailureTypes:v6];

    [(VLFSession *)self setAnalyticsCapturer:0];
  }

  [(VLFSession *)self setIndoorOutdoorRecorder:0];
}

- (void)stop
{
  v3 = sub_1009882CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134349056;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}p] Stopping", &v11, 0xCu);
  }

  v4 = +[MapsARSessionManager sharedManager];
  [v4 resignSessionWithOwner:self];

  v5 = [(VLFSession *)self traceRecorder];

  if (v5)
  {
    v6 = [(VLFSession *)self traceRecorder];
    [v6 finish];

    [(VLFSession *)self setTraceRecorder:0];
    [VLLocalizer _setDebugInfoRecorder:0];
  }

  v7 = [(VLFSession *)self pocketStateManager];
  [v7 setDelegate:0];

  [(VLFSession *)self setPocketStateManager:0];
  if (![(VLFSession *)self hasNotifiedDelegate])
  {
    v8 = sub_1009882CC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}p] Detected user cancelled", &v11, 0xCu);
    }

    self->_lastLocalizationResult = 2;
    [(VLFSession *)self setWasLastLocalizationSuccessful:0];
    [(VLFSession *)self setNotifiedDelegate:1];
    v9 = [(VLFSession *)self delegate];
    v10 = [NSError errorWithDomain:@"com.apple.Maps.VLFSession" code:2 userInfo:0];
    [v9 VLFSessionLocalizationFailedWithError:v10];
  }

  if ([(VLFSession *)self mode]== 1)
  {
    [(VLFSession *)self sendAnalytics:0];
  }
}

- (void)start
{
  v3 = sub_1009882CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v30 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}p] Starting", buf, 0xCu);
  }

  if (GEOConfigGetBOOL())
  {
    v4 = sub_1009882CC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v30 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}p] Recording VL trace", buf, 0xCu);
    }

    v5 = objc_alloc_init(VisualLocalizationTraceRecorder);
    [(VLFSession *)self setTraceRecorder:v5];

    v6 = [(VLFSession *)self traceRecorder];
    [v6 start];
  }

  v7 = [(VLFSession *)self analyticsCapturer];
  v8 = v7 == 0;

  if (v8)
  {
    v9 = objc_alloc_init(VLFSessionAnalyticsCapturer);
    [(VLFSession *)self setAnalyticsCapturer:v9];

    v10 = [(VLFSession *)self analyticsCapturer];
    [v10 sessionStartedWithEntryPoint:self->_entryPoint];
  }

  BOOL = GEOConfigGetBOOL();
  if (GEOVisualLocalizationCrowdsourcingIsSupported() && GEOVisualLocalizationCrowdsourcingIsAllowed())
  {
    v12 = GEOVisualLocalizationCrowdsourcingIsEnabled() ^ 1;
  }

  else
  {
    v12 = 1;
  }

  if (!(([(VLFSession *)self mode]!= 0 || (BOOL & 1) == 0) | v12 & 1))
  {
    v13 = objc_alloc_init(VLFSessionIndoorOutdoorAnalyticsRecorder);
    [(VLFSession *)self setIndoorOutdoorRecorder:v13];
  }

  if (GEOConfigGetBOOL() && +[CMPocketStateManager isPocketStateAvailable])
  {
    v14 = objc_alloc_init(CMPocketStateManager);
    [(VLFSession *)self setPocketStateManager:v14];

    v15 = [(VLFSession *)self pocketStateManager];
    [v15 setDelegate:self];

    objc_initWeak(buf, self);
    v16 = [(VLFSession *)self pocketStateManager];
    v17 = &_dispatch_main_q;
    [(VLFSession *)self timeout];
    v18 = 15.0;
    if (v19 < 15.0)
    {
      [(VLFSession *)self timeout];
      v18 = v20;
    }

    [(VLFSession *)self timeout];
    v21 = 15.0;
    if (v22 < 15.0)
    {
      [(VLFSession *)self timeout];
      v21 = v23;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10098BEF0;
    v27[3] = &unk_101661B70;
    objc_copyWeak(&v28, buf);
    [v16 queryStateOntoQueue:&_dispatch_main_q andMonitorFor:v27 withTimeout:v18 andHandler:v21];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  if ([(VLFSession *)self mode])
  {
    v24 = [(VLFSession *)self notificationGenerator];
    [v24 prepare];
  }

  [(VLFSession *)self setNotifiedDelegate:0];
  initializationFailureDetails = self->_initializationFailureDetails;
  self->_initializationFailureDetails = 0;

  v26 = +[MapsARSessionManager sharedManager];
  [v26 requestSessionWithOwner:self];
}

- (void)dealloc
{
  v3 = sub_1009882CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(CMPocketStateManager *)self->_pocketStateManager setDelegate:0];
  if (self->_session)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v14 = "[VLFSession dealloc]";
      v15 = 2080;
      v16 = "VLFSession.m";
      v17 = 1024;
      v18 = 107;
      v19 = 2080;
      v20 = "_session == nil";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    if (self->_session)
    {
      v8 = sub_1009882CC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v14 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] VLFSession being dealloc'd while still being the active ARSession owner", buf, 0xCu);
      }

      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = "[VLFSession dealloc]";
        v15 = 2080;
        v16 = "VLFSession.m";
        v17 = 1024;
        v18 = 110;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v14 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:@"PedestrianARAutoFocusDistanceKey"];

  v12.receiver = self;
  v12.super_class = VLFSession;
  [(VLFSession *)&v12 dealloc];
}

- (VLFSession)initWithMode:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = VLFSession;
  v4 = [(VLFSession *)&v14 init];
  if (v4)
  {
    v5 = sub_1009882CC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v6 = @"VLFSessionModeNonUI";
        }

        else
        {
          v7 = sub_10006D178();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v16 = "NSString * _Nonnull NSStringFromVLFSessionMode(VLFSessionMode)";
            v17 = 2080;
            v18 = "VLFSession.h";
            v19 = 1024;
            v20 = 58;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v8 = sub_10006D178();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v9 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v16 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }

          v6 = 0;
        }
      }

      else
      {
        v6 = @"VLFSessionModeUI";
      }

      *buf = 134349314;
      v16 = v4;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}p] Configuring with mode: %{public}@", buf, 0x16u);
    }

    v4->_mode = a3;
    if (a3)
    {
      v10 = objc_alloc_init(UINotificationFeedbackGenerator);
      notificationGenerator = v4->_notificationGenerator;
      v4->_notificationGenerator = v10;
    }

    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 addObserver:v4 forKeyPath:@"PedestrianARAutoFocusDistanceKey" options:0 context:0];
  }

  return v4;
}

@end