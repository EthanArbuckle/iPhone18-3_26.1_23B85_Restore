@interface PedestrianARMotionMonitorTask
- (BOOL)_isDeviceAngleAboveTopBound;
- (BOOL)_isDeviceAngleBelowBottomBound;
- (BOOL)_shouldShowPedestrianAR;
- (BOOL)isARSessionReplayingFromRecording;
- (BOOL)isNavRunning;
- (CMMotionManager)motionManager;
- (NSString)currentRouteID;
- (PedestrianARCoordination)coordinator;
- (PedestrianARMotionMonitorTask)initWithPlatformController:(id)a3 stateManager:(id)a4 usageTracker:(id)a5;
- (id)_topContext;
- (id)containerViewController;
- (int64_t)interfaceOrientation;
- (void)_start;
- (void)_startIfNecessary;
- (void)_startMonitoringDeviceMotionChanges;
- (void)_stop;
- (void)applicationDidBecomeActiveNotification:(id)a3;
- (void)applicationDidEnterBackgroundNotification:(id)a3;
- (void)dealloc;
- (void)pedestrianARViewControllerDidAppearNotification:(id)a3;
- (void)pedestrianARViewControllerDidDisappearNotification:(id)a3;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)stateManager:(id)a3 didChangeState:(BOOL)a4;
- (void)updateVisibilityWithCurrentPitch:(double)a3 currentRoll:(double)a4;
@end

@implementation PedestrianARMotionMonitorTask

- (void)_stop
{
  v3 = [(PedestrianARMotionMonitorTask *)self session];
  [v3 _removeObserver:self];

  v4 = [(PedestrianARMotionMonitorTask *)self motionManager];
  v5 = [v4 isDeviceMotionActive];

  if (v5)
  {
    v6 = sub_100076A84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 134349056;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Ending device motion updates", &v8, 0xCu);
    }

    v7 = [(PedestrianARMotionMonitorTask *)self motionManager];
    [v7 stopDeviceMotionUpdates];
  }

  [(PedestrianARMotionMonitorTask *)self setForegroundRestartTimer:0];
}

- (CMMotionManager)motionManager
{
  motionManager = self->_motionManager;
  if (!motionManager)
  {
    v4 = sub_100076A84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Creating CMMotionManager", buf, 0xCu);
    }

    v5 = objc_alloc_init(CMMotionManager);
    v6 = self->_motionManager;
    self->_motionManager = v5;

    GEOConfigGetDouble();
    v8 = v7;
    v9 = sub_100076A84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      v20 = self;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Configuring motion manager with update interval: %f", buf, 0x16u);
    }

    [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:v8];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [NSString stringWithFormat:@"%@.%@.deviceMotionUpdatesQueue.%p", v11, objc_opt_class(), self];

    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);

    v16 = objc_opt_new();
    deviceMotionUpdatesQueue = self->_deviceMotionUpdatesQueue;
    self->_deviceMotionUpdatesQueue = v16;

    [(NSOperationQueue *)self->_deviceMotionUpdatesQueue setUnderlyingQueue:v15];
    motionManager = self->_motionManager;
  }

  return motionManager;
}

- (void)pedestrianARViewControllerDidDisappearNotification:(id)a3
{
  if (![(PedestrianARMotionMonitorTask *)self waitingToExit])
  {
    v4 = sub_100076A84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 134349056;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Detected Pedestrian AR disappeared via button press; suppressing raise to start", &v8, 0xCu);
    }

    [(PedestrianARMotionMonitorTask *)self setSuppressRaiseToStart:1];
    [(PedestrianARMotionMonitorTask *)self setSuppressLowerToExit:0];
  }

  [(PedestrianARMotionMonitorTask *)self setWaitingToExit:0];
  v5 = [(PedestrianARMotionMonitorTask *)self stateManager];
  v6 = [v5 shouldShowPedestrianAR];

  if ((v6 & 1) == 0)
  {
    v7 = sub_100076A84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134349056;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Pedestrian AR disappeared and the feature is no longer available; stopping motion updates", &v8, 0xCu);
    }

    [(PedestrianARMotionMonitorTask *)self _stop];
  }
}

- (void)pedestrianARViewControllerDidAppearNotification:(id)a3
{
  if (![(PedestrianARMotionMonitorTask *)self waitingToStart])
  {
    v4 = sub_100076A84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Detected Pedestrian AR appeared via button press; suppressing lower to exit", &v5, 0xCu);
    }

    [(PedestrianARMotionMonitorTask *)self setSuppressRaiseToStart:0];
    [(PedestrianARMotionMonitorTask *)self setSuppressLowerToExit:1];
  }

  [(PedestrianARMotionMonitorTask *)self setWaitingToStart:0];
}

- (void)applicationDidBecomeActiveNotification:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v16 = "[PedestrianARMotionMonitorTask applicationDidBecomeActiveNotification:]";
        v17 = 2080;
        v18 = "PedestrianARMotionMonitorTask.m";
        v19 = 1024;
        v20 = 491;
        v21 = 2080;
        v22 = "dispatch_get_main_queue()";
        v23 = 2080;
        v24 = dispatch_queue_get_label(&_dispatch_main_q);
        v25 = 2080;
        v26 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v16 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v8 = sub_100076A84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] App foregrounded; will re-start motion updates soon", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100BC03E4;
  v13[3] = &unk_1016616E8;
  objc_copyWeak(&v14, buf);
  v9 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v13 block:1.0];
  [(PedestrianARMotionMonitorTask *)self setForegroundRestartTimer:v9];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)applicationDidEnterBackgroundNotification:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[PedestrianARMotionMonitorTask applicationDidEnterBackgroundNotification:]";
        v14 = 2080;
        v15 = "PedestrianARMotionMonitorTask.m";
        v16 = 1024;
        v17 = 482;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  v8 = sub_100076A84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 134349056;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] App backgrounded", &v12, 0xCu);
  }

  [(PedestrianARMotionMonitorTask *)self _stop];
}

- (void)stateManager:(id)a3 didChangeState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = sub_100076A84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v17 = 134349056;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Pedestrian AR became available; starting motion updates", &v17, 0xCu);
    }

    [(PedestrianARMotionMonitorTask *)self _startIfNecessary];
    goto LABEL_20;
  }

  v8 = [(PedestrianARMotionMonitorTask *)self coordinator];
  if ([v8 isPedestrianARActive])
  {

LABEL_8:
    v10 = sub_100076A84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(PedestrianARMotionMonitorTask *)self coordinator];
      if ([v11 isPedestrianARActive])
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = v12;
      if ([(PedestrianARMotionMonitorTask *)self waitingToStart])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = v14;
      v17 = 134349570;
      v18 = self;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Pedestrian AR became unavailable but either AR is currently active (%@) or we're waiting for it to be active (%@); will not stop motion updates yet", &v17, 0x20u);
    }

    goto LABEL_20;
  }

  v9 = [(PedestrianARMotionMonitorTask *)self waitingToStart];

  if (v9)
  {
    goto LABEL_8;
  }

  v16 = sub_100076A84();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = 134349056;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Pedestrian AR became unavailable and is not currently active nor becoming active; stopping motion updates", &v17, 0xCu);
  }

  [(PedestrianARMotionMonitorTask *)self _stop];
LABEL_20:
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BC09DC;
  block[3] = &unk_101661340;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateVisibilityWithCurrentPitch:(double)a3 currentRoll:(double)a4
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v8 = dispatch_queue_get_label(0);
  if (label != v8)
  {
    v9 = !label || v8 == 0;
    if (v9 || strcmp(label, v8))
    {
      v37 = sub_10006D178();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v40 = 136316418;
        v41 = "[PedestrianARMotionMonitorTask updateVisibilityWithCurrentPitch:currentRoll:]";
        v42 = 2080;
        v43 = COERCE_DOUBLE("PedestrianARMotionMonitorTask.m");
        v44 = 1024;
        *v45 = 426;
        *&v45[4] = 2080;
        *&v45[6] = "dispatch_get_main_queue()";
        *&v45[14] = 2080;
        *&v45[16] = dispatch_queue_get_label(&_dispatch_main_q);
        *&v45[24] = 2080;
        *&v45[26] = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v40, 0x3Au);
      }

      if (sub_100E03634())
      {
        v38 = sub_10006D178();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = +[NSThread callStackSymbols];
          v40 = 138412290;
          v41 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%@", &v40, 0xCu);
        }
      }
    }
  }

  v10 = sub_100076A84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if ([(PedestrianARMotionMonitorTask *)self isARSessionReplayingFromRecording])
    {
      v11 = @"NO";
    }

    else
    {
      v11 = @"YES";
    }

    v12 = v11;
    v13 = [(PedestrianARMotionMonitorTask *)self pitchValues];
    v14 = [v13 lastObject];
    [v14 doubleValue];
    v16 = v15;
    v17 = [(PedestrianARMotionMonitorTask *)self rollValues];
    v18 = [v17 lastObject];
    [v18 doubleValue];
    v40 = 134350338;
    v41 = self;
    v42 = 2048;
    v43 = a3;
    v44 = 2048;
    *v45 = a4;
    *&v45[8] = 2112;
    *&v45[10] = v11;
    *&v45[18] = 2048;
    *&v45[20] = v16;
    *&v45[28] = 2048;
    *&v45[30] = v19;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating visibility with pitch: %f, roll: %f, fromCoreMotion: %@, previous device pitch: %f, previous device roll: %f", &v40, 0x3Eu);
  }

  v20 = [(PedestrianARMotionMonitorTask *)self pitchValues];
  v21 = [NSNumber numberWithDouble:a3];
  [v20 push:v21];

  v22 = [(PedestrianARMotionMonitorTask *)self rollValues];
  v23 = [NSNumber numberWithDouble:a4];
  [v22 push:v23];

  v24 = [(PedestrianARMotionMonitorTask *)self _shouldShowPedestrianAR];
  v25 = [(PedestrianARMotionMonitorTask *)self coordinator];
  v26 = [v25 isPedestrianARActive];

  if (!v24 || (v26 & 1) != 0)
  {
    v32 = v24 | ~v26;
    v33 = sub_100076A84();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
    if (v32)
    {
      if (v34)
      {
        v35 = [(PedestrianARMotionMonitorTask *)self _topContext];
        v40 = 134349314;
        v41 = self;
        v42 = 2112;
        v43 = *&v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}p] Not raising nor lowering. Current top context: %@", &v40, 0x16u);
      }
    }

    else
    {
      if (v34)
      {
        v40 = 134349056;
        v41 = self;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}p] Lowering to exit pedestrian AR", &v40, 0xCu);
      }

      [(PedestrianARMotionMonitorTask *)self setWaitingToExit:1];
      v36 = [(PedestrianARMotionMonitorTask *)self coordinator];
      [v36 exitPedestrianAR];
    }
  }

  else
  {
    v27 = sub_100076A84();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v40 = 134349056;
      v41 = self;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] Raising to enter pedestrian AR", &v40, 0xCu);
    }

    [(PedestrianARMotionMonitorTask *)self setWaitingToStart:1];
    v28 = [(PedestrianARMotionMonitorTask *)self coordinator];
    [v28 enterPedestrianAR];

    v29 = [(PedestrianARMotionMonitorTask *)self platformController];
    v30 = [v29 currentSession];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 302;
    }

    else
    {
      v31 = 402;
    }

    [GEOAPPortal captureUserAction:124 target:v31 value:0];
  }
}

- (BOOL)_shouldShowPedestrianAR
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v45 = sub_10006D178();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *v48 = 136316418;
        *&v48[4] = "[PedestrianARMotionMonitorTask _shouldShowPedestrianAR]";
        *&v48[12] = 2080;
        *&v48[14] = "PedestrianARMotionMonitorTask.m";
        *&v48[22] = 1024;
        *v49 = 358;
        *&v49[4] = 2080;
        *&v49[6] = "dispatch_get_main_queue()";
        *&v49[14] = 2080;
        *&v49[16] = dispatch_queue_get_label(&_dispatch_main_q);
        v50 = 2080;
        v51 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", v48, 0x3Au);
      }

      if (sub_100E03634())
      {
        v46 = sub_10006D178();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = +[NSThread callStackSymbols];
          *v48 = 138412290;
          *&v48[4] = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%@", v48, 0xCu);
        }
      }
    }
  }

  v6 = [(PedestrianARMotionMonitorTask *)self _isDeviceAngleAboveTopBound];
  v7 = [(PedestrianARMotionMonitorTask *)self _isDeviceAngleBelowBottomBound];
  v8 = sub_100076A84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(PedestrianARMotionMonitorTask *)self interfaceOrientation];
    if (v9 >= 5)
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v48 = 136315650;
        *&v48[4] = "NSString * _Nonnull NSStringFromUIInterfaceOrientation(UIInterfaceOrientation)";
        *&v48[12] = 2080;
        *&v48[14] = "PedestrianARMotionMonitorTask.m";
        *&v48[22] = 1024;
        *v49 = 61;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", v48, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          *v48 = 138412290;
          *&v48[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", v48, 0xCu);
        }
      }

      v10 = @"?";
    }

    else
    {
      v10 = *(&off_10164CA50 + v9);
    }

    *v48 = 134349826;
    *&v48[4] = self;
    if (v6)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    *&v48[14] = v10;
    *&v48[12] = 2112;
    if (v7)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    *&v48[22] = 2112;
    *v49 = v14;
    *&v49[8] = 2112;
    *&v49[10] = v15;
    v16 = v14;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] interface orientation: %@, isAboveTopBound: %@, isBelowBottomBound: %@", v48, 0x2Au);
  }

  if (v6)
  {
    [(PedestrianARMotionMonitorTask *)self setSuppressLowerToExit:0];
    v18 = +[NSUserDefaults standardUserDefaults];
    v19 = [v18 BOOLForKey:@"MapsEnablePedestrianARRaiseToStart"];

    if ((v19 & 1) == 0)
    {
      v20 = sub_100076A84();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v48 = 134349056;
        *&v48[4] = self;
        v21 = "[%{public}p] User has not enabled raise to start; will not raise to start";
        goto LABEL_41;
      }

LABEL_42:

      goto LABEL_43;
    }

    if (+[PedestrianARFeatureIntroTeachableMomentContaineeViewController shouldShowTeachableMoment])
    {
      v20 = sub_100076A84();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v48 = 134349056;
        *&v48[4] = self;
        v21 = "[%{public}p] The feature intro teachable moment card is eligible to be shown; will not raise to start";
LABEL_41:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v21, v48, 0xCu);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    v24 = [(PedestrianARMotionMonitorTask *)self coordinator];
    v25 = [v24 isTeachableMomentCardActive];

    if (v25)
    {
      v20 = sub_100076A84();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v48 = 134349056;
        *&v48[4] = self;
        v26 = "[%{public}p] Teachable moment card is currently active; will not raise to start";
LABEL_53:
        v34 = v20;
        v35 = OS_LOG_TYPE_INFO;
LABEL_54:
        _os_log_impl(&_mh_execute_header, v34, v35, v26, v48, 0xCu);
      }
    }

    else
    {
      v32 = [(PedestrianARMotionMonitorTask *)self coordinator];
      v33 = [v32 isWeatherPopoverActive];

      if (v33)
      {
        v20 = sub_100798A3C();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v48 = 134349056;
          *&v48[4] = self;
          v26 = "[%{public}p] User is currently viewing the weather; will not raise to start";
          goto LABEL_53;
        }
      }

      else
      {
        v36 = [(PedestrianARMotionMonitorTask *)self containerViewController];
        v37 = [v36 isVLFCrowdsourcingPermissionCardActive];

        if (!v37)
        {
          v38 = +[PedestrianARSessionUsageTracker sharedInstance];
          v39 = [v38 hasAREverLocalized];

          if (v39)
          {
            v40 = [(PedestrianARMotionMonitorTask *)self usageTracker];
            v41 = [(PedestrianARMotionMonitorTask *)self currentRouteID];
            v42 = [v40 hasAREverLocalizedForRoute:v41];

            if (v42)
            {
              if ([(PedestrianARMotionMonitorTask *)self suppressRaiseToStart])
              {
                v20 = sub_100076A84();
                if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_42;
                }

                *v48 = 134349056;
                *&v48[4] = self;
                v21 = "[%{public}p] Device is above top bound but we need to suppress the raise; will not raise to start";
              }

              else
              {
                v43 = [(PedestrianARMotionMonitorTask *)self interfaceOrientation]- 1;
                v20 = sub_100076A84();
                v44 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
                if (v43 < 2)
                {
                  if (v44)
                  {
                    *v48 = 134349056;
                    *&v48[4] = self;
                    v27 = 1;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] Allowing raise to start", v48, 0xCu);
                  }

                  else
                  {
                    v27 = 1;
                  }

                  goto LABEL_44;
                }

                if (!v44)
                {
                  goto LABEL_42;
                }

                *v48 = 134349056;
                *&v48[4] = self;
                v21 = "[%{public}p] Device is above top bound but not in portrait orientation; will not raise to start";
              }
            }

            else
            {
              v20 = sub_100076A84();
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                goto LABEL_42;
              }

              *v48 = 134349056;
              *&v48[4] = self;
              v21 = "[%{public}p] Device is above top bound but user has not localized for the current route; will not raise to start";
            }
          }

          else
          {
            v20 = sub_100076A84();
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              goto LABEL_42;
            }

            *v48 = 134349056;
            *&v48[4] = self;
            v21 = "[%{public}p] User has never successfully localized; will not raise to start";
          }

          goto LABEL_41;
        }

        v20 = sub_100076A84();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *v48 = 134349056;
          *&v48[4] = self;
          v26 = "[%{public}p] VLF crowdsourcing permission card is currently active; will not raise to start";
          v34 = v20;
          v35 = OS_LOG_TYPE_DEBUG;
          goto LABEL_54;
        }
      }
    }

    v27 = 0;
    goto LABEL_44;
  }

  if (v7)
  {
    [(PedestrianARMotionMonitorTask *)self setSuppressRaiseToStart:0];
    v22 = +[NSUserDefaults standardUserDefaults];
    v23 = [v22 BOOLForKey:@"PedestrianAREnableLowerToExitKey"];

    if (v23)
    {
      if (![(PedestrianARMotionMonitorTask *)self suppressLowerToExit])
      {
        v29 = [(PedestrianARMotionMonitorTask *)self coordinator];
        v30 = [v29 isPedestrianARShowingFailureView];

        if (!v30)
        {
          return 0;
        }

        v31 = sub_100076A84();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *v48 = 134349056;
          *&v48[4] = self;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%{public}p] Device is below bottom bound but user is on the failure view; will not lower to exit, and suppressing lower to exit", v48, 0xCu);
        }

        [(PedestrianARMotionMonitorTask *)self setSuppressLowerToExit:1];
        goto LABEL_43;
      }

      v20 = sub_100076A84();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_42;
      }

      *v48 = 134349056;
      *&v48[4] = self;
      v21 = "[%{public}p] Device is below bottom bound but we need to suppress the lower; will not lower to exit";
      goto LABEL_41;
    }

    v20 = sub_100076A84();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v48 = 134349056;
      *&v48[4] = self;
      v21 = "[%{public}p] User has not enabled lower to exit; will not lower to exit";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

LABEL_43:
  v20 = [(PedestrianARMotionMonitorTask *)self coordinator:*v48];
  v27 = [v20 isPedestrianARActive];
LABEL_44:

  return v27;
}

- (void)_startMonitoringDeviceMotionChanges
{
  v3 = sub_100076A84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Will start monitoring device motion updates", buf, 0xCu);
  }

  v4 = [(PedestrianARMotionMonitorTask *)self motionManager];
  v5 = [v4 isDeviceMotionAvailable];

  if ((v5 & 1) == 0)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "[PedestrianARMotionMonitorTask _startMonitoringDeviceMotionChanges]";
      v21 = 2080;
      v22 = "PedestrianARMotionMonitorTask.m";
      v23 = 1024;
      v24 = 309;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v11 = sub_100076A84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}p] Device motion updates are not available on this device", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v6 = [(PedestrianARMotionMonitorTask *)self motionManager];
  v7 = [v6 isDeviceMotionActive];

  if (v7)
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "[PedestrianARMotionMonitorTask _startMonitoringDeviceMotionChanges]";
      v21 = 2080;
      v22 = "PedestrianARMotionMonitorTask.m";
      v23 = 1024;
      v24 = 315;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v11 = sub_100076A84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}p] Already monitoring device motion changes; cannot start again", buf, 0xCu);
    }

LABEL_13:

    return;
  }

  objc_initWeak(buf, self);
  v15 = [(PedestrianARMotionMonitorTask *)self motionManager];
  v16 = [(PedestrianARMotionMonitorTask *)self deviceMotionUpdatesQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100BC1CDC;
  v17[3] = &unk_101655538;
  objc_copyWeak(&v18, buf);
  [v15 startDeviceMotionUpdatesToQueue:v16 withHandler:v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (BOOL)_isDeviceAngleBelowBottomBound
{
  if ([(PedestrianARMotionMonitorTask *)self isARSessionReplayingFromRecording])
  {
    v3 = [(PedestrianARMotionMonitorTask *)self pitchValues];
    v4 = v3;
    v5 = &stru_10164C9B0;
  }

  else
  {
    v6 = [(PedestrianARMotionMonitorTask *)self interfaceOrientation];
    if ((v6 - 1) > 1)
    {
      v7 = v6;
      v3 = [(PedestrianARMotionMonitorTask *)self rollValues];
      v4 = v3;
      if (v7 == 4)
      {
        v5 = &stru_10164C9F0;
      }

      else
      {
        v5 = &stru_10164CA10;
      }
    }

    else
    {
      v3 = [(PedestrianARMotionMonitorTask *)self pitchValues];
      v4 = v3;
      v5 = &stru_10164C9D0;
    }
  }

  v8 = sub_1006F7930(v3, v5);

  return v8;
}

- (BOOL)_isDeviceAngleAboveTopBound
{
  if ([(PedestrianARMotionMonitorTask *)self isARSessionReplayingFromRecording])
  {
    v3 = [(PedestrianARMotionMonitorTask *)self pitchValues];
    v4 = v3;
    v5 = &stru_10164C930;
  }

  else
  {
    v6 = [(PedestrianARMotionMonitorTask *)self interfaceOrientation];
    if ((v6 - 1) > 1)
    {
      v7 = v6;
      v3 = [(PedestrianARMotionMonitorTask *)self rollValues];
      v4 = v3;
      if (v7 == 4)
      {
        v5 = &stru_10164C970;
      }

      else
      {
        v5 = &stru_10164C990;
      }
    }

    else
    {
      v3 = [(PedestrianARMotionMonitorTask *)self pitchValues];
      v4 = v3;
      v5 = &stru_10164C950;
    }
  }

  v8 = sub_1006F7930(v3, v5);

  return v8;
}

- (int64_t)interfaceOrientation
{
  v2 = [(PedestrianARMotionMonitorTask *)self platformController];
  v3 = [v2 chromeViewController];
  v4 = [v3 view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 interfaceOrientation];

  return v7;
}

- (NSString)currentRouteID
{
  v3 = [(PedestrianARMotionMonitorTask *)self platformController];
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

  v7 = [(PedestrianARMotionMonitorTask *)self platformController];
  v8 = [v7 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v6)
  {
    v11 = v6;
LABEL_11:
    v12 = [v11 currentRouteCollection];
    v13 = [v12 currentRoute];
    v14 = [v13 uniqueRouteID];
    v15 = [v14 UUIDString];

    goto LABEL_12;
  }

  if (v10)
  {
    v11 = v10;
    goto LABEL_11;
  }

  v17 = sub_10006D178();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315650;
    v21 = "[PedestrianARMotionMonitorTask currentRouteID]";
    v22 = 2080;
    v23 = "PedestrianARMotionMonitorTask.m";
    v24 = 1024;
    v25 = 244;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v20, 0x1Cu);
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

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)containerViewController
{
  v3 = [(PedestrianARMotionMonitorTask *)self isNavRunning];
  v4 = [(PedestrianARMotionMonitorTask *)self platformController];
  v5 = [v4 iosBasedChromeViewController];
  v6 = [v5 appCoordinator];
  v7 = v6;
  if (v3)
  {
    v8 = [v6 navModeController];
    [v8 navActionCoordinator];
  }

  else
  {
    v8 = [v6 baseModeController];
    [v8 actionCoordinator];
  }
  v9 = ;
  v10 = [v9 containerViewController];

  return v10;
}

- (PedestrianARCoordination)coordinator
{
  v3 = [(PedestrianARMotionMonitorTask *)self isNavRunning];
  v4 = [(PedestrianARMotionMonitorTask *)self platformController];
  v5 = [v4 iosBasedChromeViewController];
  v6 = [v5 appCoordinator];
  v7 = v6;
  if (v3)
  {
    v8 = [v6 navModeController];
    [v8 navActionCoordinator];
  }

  else
  {
    v8 = [v6 baseModeController];
    [v8 actionCoordinator];
  }
  v9 = ;

  return v9;
}

- (BOOL)isNavRunning
{
  v2 = [(PedestrianARMotionMonitorTask *)self platformController];
  v3 = [v2 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = v5 && [v5 sessionState] == 1 && objc_msgSend(v5, "guidanceType") != 2;
  return v6;
}

- (BOOL)isARSessionReplayingFromRecording
{
  v2 = [(PedestrianARMotionMonitorTask *)self session];
  v3 = [v2 configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_topContext
{
  v2 = [(PedestrianARMotionMonitorTask *)self platformController];
  v3 = [v2 iosBasedChromeViewController];
  v4 = [v3 topContext];

  return v4;
}

- (void)_start
{
  v3 = sub_100076A84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 134349056;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Will start monitoring motion changes", &v9, 0xCu);
  }

  if ([(PedestrianARMotionMonitorTask *)self isARSessionReplayingFromRecording])
  {
    v4 = sub_100076A84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134349056;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] ARSession is being replayed from a trace; observing ARKit for motion updates", &v9, 0xCu);
    }

    v5 = [(PedestrianARMotionMonitorTask *)self session];
    [v5 _addObserver:self];
LABEL_7:

    return;
  }

  v6 = [(PedestrianARMotionMonitorTask *)self motionManager];
  v7 = [v6 isDeviceMotionActive];

  v5 = sub_100076A84();
  v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v8)
    {
      v9 = 134349056;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] We're already monitoring device motion updates; ignoring", &v9, 0xCu);
    }

    goto LABEL_7;
  }

  if (v8)
  {
    v9 = 134349056;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] ARSession is not being replayed from a trace; observing CoreMotion for motion updates", &v9, 0xCu);
  }

  [(PedestrianARMotionMonitorTask *)self _startMonitoringDeviceMotionChanges];
}

- (void)_startIfNecessary
{
  v3 = [(PedestrianARMotionMonitorTask *)self stateManager];
  v4 = [v3 shouldShowPedestrianAR];

  if ((v4 & 1) == 0)
  {
    v5 = sub_100076A84();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_10:

      return;
    }

    v7 = 134349056;
    v8 = self;
    v6 = "[%{public}p] Pedestrian AR should not be shown; will not start";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v6, &v7, 0xCu);
    goto LABEL_10;
  }

  if (![UIApplication _maps_isAnySceneForegroundForRole:UIWindowSceneSessionRoleApplication]&& ![UIApplication _maps_isAnySceneForegroundForRole:_UIWindowSceneSessionTypeCoverSheet])
  {
    v5 = sub_100076A84();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    v7 = 134349056;
    v8 = self;
    v6 = "[%{public}p] Application is not foreground; will not start";
    goto LABEL_9;
  }

  [(PedestrianARMotionMonitorTask *)self _start];
}

- (void)dealloc
{
  v3 = sub_100076A84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocing", buf, 0xCu);
  }

  [(PedestrianARMotionMonitorTask *)self _stop];
  v4.receiver = self;
  v4.super_class = PedestrianARMotionMonitorTask;
  [(PedestrianARMotionMonitorTask *)&v4 dealloc];
}

- (PedestrianARMotionMonitorTask)initWithPlatformController:(id)a3 stateManager:(id)a4 usageTracker:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v39 = "[PedestrianARMotionMonitorTask initWithPlatformController:stateManager:usageTracker:]";
      v40 = 2080;
      v41 = "PedestrianARMotionMonitorTask.m";
      v42 = 1024;
      v43 = 112;
      v44 = 2080;
      v45 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v10)
  {
    v31 = sub_10006D178();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v39 = "[PedestrianARMotionMonitorTask initWithPlatformController:stateManager:usageTracker:]";
      v40 = 2080;
      v41 = "PedestrianARMotionMonitorTask.m";
      v42 = 1024;
      v43 = 113;
      v44 = 2080;
      v45 = "stateManager != nil";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v39 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v11)
  {
    v34 = sub_10006D178();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v39 = "[PedestrianARMotionMonitorTask initWithPlatformController:stateManager:usageTracker:]";
      v40 = 2080;
      v41 = "PedestrianARMotionMonitorTask.m";
      v42 = 1024;
      v43 = 114;
      v44 = 2080;
      v45 = "usageTracker != nil";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v35 = sub_10006D178();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v39 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v37.receiver = self;
  v37.super_class = PedestrianARMotionMonitorTask;
  v12 = [(PedestrianARMotionMonitorTask *)&v37 init];
  if (v12)
  {
    v13 = sub_100076A84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v39 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v14 = +[MapsARSessionManager sharedManager];
    v15 = [v14 session];
    session = v12->_session;
    v12->_session = v15;

    objc_storeStrong(&v12->_platformController, a3);
    objc_storeStrong(&v12->_stateManager, a4);
    [(PedestrianARSessionStateManager *)v12->_stateManager addObserver:v12];
    objc_storeStrong(&v12->_usageTracker, a5);
    UInteger = GEOConfigGetUInteger();
    v18 = sub_100076A84();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v39 = v12;
      v40 = 2048;
      v41 = UInteger;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] Creating ring buffers with sample size: %lu", buf, 0x16u);
    }

    v19 = [[MapsRingBuffer alloc] initWithLength:UInteger];
    pitchValues = v12->_pitchValues;
    v12->_pitchValues = v19;

    v21 = [[MapsRingBuffer alloc] initWithLength:UInteger];
    rollValues = v12->_rollValues;
    v12->_rollValues = v21;

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v12 selector:"applicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v12 selector:"applicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v12 selector:"pedestrianARViewControllerDidAppearNotification:" name:@"PedestrianARViewControllerDidAppearNotification" object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v12 selector:"pedestrianARViewControllerDidDisappearNotification:" name:@"PedestrianARViewControllerDidDisappearNotification" object:0];

    [(PedestrianARMotionMonitorTask *)v12 _startIfNecessary];
  }

  return v12;
}

@end