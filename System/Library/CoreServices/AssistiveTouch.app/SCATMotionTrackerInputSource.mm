@interface SCATMotionTrackerInputSource
- (BOOL)didForceDimissCalibration;
- (BOOL)hasCalibrated;
- (BOOL)isEyeTracking;
- (BOOL)isHeadTracking;
- (BOOL)needsRecalibration;
- (CGPoint)_motionTrackerInputSourceTrackedEyesAtPoint:(CGPoint)a3;
- (CGPoint)clampPointToDisplay:(CGPoint)a3;
- (CGPoint)clampPointToDisplay:(CGPoint)a3 withOffset:(double)a4;
- (CGRect)rotatedScreenBounds;
- (SCATMotionTrackerInputSource)init;
- (id)_actionForExpression:(unint64_t)a3;
- (id)_axActionForCameraSwitchType:(unint64_t)a3;
- (id)_axSwitchForCameraSwitchType:(unint64_t)a3;
- (id)currentDisplayManager;
- (id)mainDisplayManager;
- (void)_cleanUpIdleTimerAssertion;
- (void)_cleanUpPowerAssertionIfNecessary;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5;
- (void)_motionTrackerInputSourceTrackedFaceAtPoint:(CGPoint)a3;
- (void)_powerAssertionTimerFired;
- (void)_setError:(id)a3;
- (void)_setExpressions:(id)a3;
- (void)_setUpIdleTimerAssertion;
- (void)_setUpPowerAssertionIfNecessary;
- (void)_setupEyeTracking;
- (void)_setupHeadTracking;
- (void)_setupMotionTracking;
- (void)_startEyeTracking;
- (void)_startHeadTracking;
- (void)_startMotionTracking;
- (void)_stopMotionTracking;
- (void)_tearDownEyeTracking;
- (void)_tearDownHeadTracking;
- (void)_updateCameraSwitchCache;
- (void)_updateMotionTrackerExpressionConfig;
- (void)didCompleteFaceGuidance;
- (void)didDismissCalibrationUI;
- (void)didShowCalibrationUI;
- (void)dismissEyeTrackingCalibration;
- (void)motionTracker:(id)a3 updatedState:(id)a4;
- (void)overrideLookAtPoint:(CGPoint)a3;
- (void)setAllowedTrackingTypes:(id)a3;
- (void)setIsTrackingInputActive:(BOOL)a3;
- (void)setJoystickModeMovementThreshold:(double)a3;
- (void)setMotionTrackingMode:(unint64_t)a3;
- (void)setNeedsRecalibration:(BOOL)a3;
- (void)setSensitivity:(double)a3;
- (void)startRunning;
- (void)stopRunning;
- (void)willShowCalibrationUI;
@end

@implementation SCATMotionTrackerInputSource

- (SCATMotionTrackerInputSource)init
{
  v12.receiver = self;
  v12.super_class = SCATMotionTrackerInputSource;
  v2 = [(SCATInputSource *)&v12 init];
  v3 = v2;
  if (v2)
  {
    motionTracker = v2->__motionTracker;
    v2->__motionTracker = 0;

    v5 = objc_alloc_init(AXSSMotionTrackingInputConfiguration);
    motionTrackerConfig = v3->__motionTrackerConfig;
    v3->__motionTrackerConfig = v5;

    v7 = [NSSet setWithObjects:&off_1001E5670, 0];
    [(AXSSMotionTrackingInputConfiguration *)v3->__motionTrackerConfig setAllowedTrackingTypes:v7];

    [(SCATMotionTrackerInputSource *)v3 _setupHeadTracking];
    v8 = +[NSSet set];
    expressions = v3->__expressions;
    v3->__expressions = v8;

    error = v3->__error;
    v3->__error = 0;

    v3->_isShowingCalibrationUI = 0;
    v3->_shouldShowUncalibratedPoints = 0;
    v3->_powerAssertionID = 0;
  }

  return v3;
}

- (void)setAllowedTrackingTypes:(id)a3
{
  v4 = a3;
  v5 = SWCHLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating Motion Tracker allowed types: %@", buf, 0xCu);
  }

  motionTracker = self->__motionTracker;
  if (motionTracker && [(AXSSMotionTracker *)motionTracker isTracking])
  {
    [(SCATMotionTrackerInputSource *)self stopRunning];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  [(AXSSMotionTrackingInputConfiguration *)self->__motionTrackerConfig setAllowedTrackingTypes:v4];
  v8 = self->__motionTracker;
  if (v8)
  {
    [(AXSSMotionTracker *)v8 setInputConfiguration:self->__motionTrackerConfig];
  }

  if (v7)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (BOOL)isHeadTracking
{
  v2 = [(SCATMotionTrackerInputSource *)self allowedTrackingTypes];
  v3 = [v2 containsObject:&off_1001E5670];

  return v3;
}

- (BOOL)isEyeTracking
{
  v2 = [(SCATMotionTrackerInputSource *)self allowedTrackingTypes];
  v3 = [v2 containsObject:&off_1001E5688];

  return v3;
}

- (BOOL)hasCalibrated
{
  if (!self->_gazeEnrollmentManager)
  {
    return 0;
  }

  if ([(SCATMotionTrackerInputSource *)self shouldShowUncalibratedPoints])
  {
    return 1;
  }

  gazeEnrollmentManager = self->_gazeEnrollmentManager;

  return [(ASTUIGazeEnrollmentManager *)gazeEnrollmentManager enrollmentComplete];
}

- (void)setMotionTrackingMode:(unint64_t)a3
{
  v4 = [(SCATMotionTrackerInputSource *)self _motionTracker];
  [v4 setMotionTrackingMode:a3];
}

- (void)setSensitivity:(double)a3
{
  v4 = [(SCATMotionTrackerInputSource *)self _motionTracker];
  [v4 setSensitivity:a3];
}

- (void)setJoystickModeMovementThreshold:(double)a3
{
  v4 = [(SCATMotionTrackerInputSource *)self _motionTracker];
  [v4 setJoystickModeMovementThreshold:a3];
}

- (void)overrideLookAtPoint:(CGPoint)a3
{
  v5 = [NSValue valueWithPoint:a3.x, a3.y];
  v4 = [(SCATMotionTrackerInputSource *)self _motionTracker];
  [v4 setLookAtPoint:v5];
}

- (void)dismissEyeTrackingCalibration
{
  v2 = [(SCATMotionTrackerInputSource *)self currentDisplayManager];
  [v2 dismissCalibrationUI];
}

- (void)_setupMotionTracking
{
  motionTracker = self->__motionTracker;
  if (!motionTracker)
  {
    v4 = objc_alloc_init(AXSSMotionTracker);
    v5 = self->__motionTracker;
    self->__motionTracker = v4;

    [(AXSSMotionTracker *)self->__motionTracker setDelegate:self];
    motionTracker = self->__motionTracker;
  }

  motionTrackerConfig = self->__motionTrackerConfig;

  [(AXSSMotionTracker *)motionTracker setInputConfiguration:motionTrackerConfig];
}

- (void)_startMotionTracking
{
  if (!self->__motionTracker)
  {
    [(SCATMotionTrackerInputSource *)self _setupMotionTracking];
  }

  [(SCATMotionTrackerInputSource *)self _setError:0];
  [(SCATMotionTrackerInputSource *)self _setExpressions:0];
  motionTracker = self->__motionTracker;

  [(AXSSMotionTracker *)motionTracker start];
}

- (void)_stopMotionTracking
{
  motionTracker = self->__motionTracker;
  if (motionTracker && [(AXSSMotionTracker *)motionTracker isTracking])
  {
    [(AXSSMotionTracker *)self->__motionTracker stop];
    [(AXSSMotionTracker *)self->__motionTracker invalidate];
  }

  [(SCATMotionTrackerInputSource *)self _setError:0];
  [(SCATMotionTrackerInputSource *)self _setExpressions:0];
  v4 = self->__motionTracker;
  self->__motionTracker = 0;
}

- (void)_setupHeadTracking
{
  [(SCATMotionTrackerInputSource *)self _setupMotionTracking];
  v3 = [NSSet setWithObjects:&off_1001E5670, 0];
  v4 = [(AXSSMotionTracker *)self->__motionTracker inputConfiguration];
  [v4 setAllowedTrackingTypes:v3];

  [(SCATMotionTrackerInputSource *)self _updateCameraSwitchCache];
  [(SCATMotionTrackerInputSource *)self _updateMotionTrackerExpressionConfig];
  objc_initWeak(&location, self);
  v5 = +[AXSettings sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D8C4C;
  v6[3] = &unk_1001D3460;
  objc_copyWeak(&v7, &location);
  [v5 registerUpdateBlock:v6 forRetrieveSelector:"assistiveTouchCameraPointPickerSwitches" withListener:self];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_startHeadTracking
{
  motionTracker = self->__motionTracker;
  if (!motionTracker)
  {
    [(SCATMotionTrackerInputSource *)self _setupHeadTracking];
    motionTracker = self->__motionTracker;
  }

  [(AXSSMotionTracker *)motionTracker start];
}

- (void)_tearDownHeadTracking
{
  v4 = +[AXSettings sharedInstance];
  v3 = [NSNumber numberWithUnsignedLongLong:self];
  [v4 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchCameraPointPickerSwitches" withListenerID:v3];
}

- (void)_setupEyeTracking
{
  if (!self->_pointSmoother)
  {
    v3 = +[AXSettings sharedInstance];
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize]);

    v5 = objc_opt_new();
    [v5 setBufferSize:{objc_msgSend(v4, "unsignedIntegerValue")}];
    v6 = +[AXSettings sharedInstance];
    [v5 setUseWeightedMovingAverage:{objc_msgSend(v6, "assistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages")}];

    v7 = +[AXSettings sharedInstance];
    [v5 setUseMedianFilter:{objc_msgSend(v7, "assistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter")}];

    v8 = +[AXSettings sharedInstance];
    [v5 setUseGaussianBlur:{objc_msgSend(v8, "assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur")}];

    [v5 setDelegate:self];
    pointSmoother = self->_pointSmoother;
    self->_pointSmoother = v5;
  }

  v10 = +[HNDHandManager sharedManager];
  v11 = [v10 mainDisplayManager];
  [v11 addEyeTrackingUIDelegate:self];

  v12 = +[ASTUIGazeEnrollmentManager sharedManager];
  gazeEnrollmentManager = self->_gazeEnrollmentManager;
  self->_gazeEnrollmentManager = v12;

  _objc_release_x1(v12, gazeEnrollmentManager);
}

- (void)_startEyeTracking
{
  [(SCATMotionTrackerInputSource *)self _setupEyeTracking];
  [(SCATMotionTrackerInputSource *)self _setupMotionTracking];
  v3 = [NSSet setWithObjects:&off_1001E5688, 0];
  v4 = [(AXSSMotionTracker *)self->__motionTracker inputConfiguration];
  [v4 setAllowedTrackingTypes:v3];

  motionTracker = self->__motionTracker;

  [(AXSSMotionTracker *)motionTracker start];
}

- (void)_tearDownEyeTracking
{
  pointSmoother = self->_pointSmoother;
  self->_pointSmoother = 0;

  v4 = [(SCATMotionTrackerInputSource *)self mainDisplayManager];
  [v4 removeEyeTrackingUIDelegate:self];

  v5 = [(SCATMotionTrackerInputSource *)self mainDisplayManager];
  [v5 setGazePointManager:0];

  [(ASTUIGazeEnrollmentManager *)self->_gazeEnrollmentManager resetGazeEnrollment];
  gazeEnrollmentManager = self->_gazeEnrollmentManager;
  self->_gazeEnrollmentManager = 0;
}

- (void)startRunning
{
  if ([(SCATMotionTrackerInputSource *)self isHeadTracking])
  {
    v3 = SWCHLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Head Tracking", buf, 2u);
    }

    [(SCATMotionTrackerInputSource *)self _setupHeadTracking];
    [(SCATMotionTrackerInputSource *)self _startHeadTracking];
  }

  else if ([(SCATMotionTrackerInputSource *)self isEyeTracking])
  {
    v4 = SWCHLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting Eye Tracking", v5, 2u);
    }

    [(SCATMotionTrackerInputSource *)self _setupEyeTracking];
    [(SCATMotionTrackerInputSource *)self _startEyeTracking];
    [(SCATMotionTrackerInputSource *)self setNeedsRecalibration:1];
  }
}

- (void)stopRunning
{
  if (self->__motionTracker)
  {
    if ([(SCATMotionTrackerInputSource *)self isHeadTracking])
    {
      v3 = SWCHLogCommon();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping Head Tracking", buf, 2u);
      }

      [(SCATMotionTrackerInputSource *)self _stopHeadTracking];
      [(SCATMotionTrackerInputSource *)self _tearDownHeadTracking];
    }

    else if ([(SCATMotionTrackerInputSource *)self isEyeTracking])
    {
      v4 = SWCHLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping Eye Tracking", v5, 2u);
      }

      [(SCATMotionTrackerInputSource *)self _stopEyeTracking];
      [(SCATMotionTrackerInputSource *)self _tearDownEyeTracking];
    }
  }
}

- (id)_actionForExpression:(unint64_t)a3
{
  v5 = +[AXSwitch expressionToSwitchTypeMapping];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = -[SCATMotionTrackerInputSource _axActionForCameraSwitchType:](self, "_axActionForCameraSwitchType:", [v7 unsignedIntegerValue]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setError:(id)a3
{
  v5 = a3;
  if ([v5 isEqual:self->__error])
  {
    goto LABEL_12;
  }

  objc_storeStrong(&self->__error, a3);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v5 code];
  v7 = v6;
  v8 = v6 < 0xA;
  if (![(SCATMotionTrackerInputSource *)self isEyeTracking])
  {
    goto LABEL_6;
  }

  v9 = v8 & (0x281u >> v7);
  if ([(SCATMotionTrackerInputSource *)self hasCalibrated])
  {
    if ((v9 & [(SCATMotionTrackerInputSource *)self needsRecalibration]& 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v9)
  {
LABEL_6:
    v10 = [(SCATInputSource *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(SCATInputSource *)self delegate];
      [v12 motionTrackerInputSource:self failedToTrackFaceWithError:v5];
    }

    goto LABEL_12;
  }

  v13 = AXSSHumanReadableDescriptionForMotionTrackingErrorCode();
  v14 = SWCHLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring error from Motion Tracker because eye tracking calibration hasn't been completed yet. Error: %@.", &v15, 0xCu);
  }

LABEL_12:
}

- (void)_setExpressions:(id)a3
{
  v4 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D95EC;
  v16[3] = &unk_1001D7420;
  v16[4] = self;
  v5 = objc_retainBlock(v16);
  if (([(NSSet *)self->__expressions isEqual:v4]& 1) == 0)
  {
    expressions = self->__expressions;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D96C0;
    v13[3] = &unk_1001D35A0;
    v7 = v4;
    v14 = v7;
    v8 = v5;
    v15 = v8;
    [(NSSet *)expressions enumerateObjectsUsingBlock:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D972C;
    v11[3] = &unk_1001D35A0;
    v11[4] = self;
    v12 = v8;
    [v7 enumerateObjectsUsingBlock:v11];
    v9 = [v7 copy];
    v10 = self->__expressions;
    self->__expressions = v9;
  }
}

- (void)motionTracker:(id)a3 updatedState:(id)a4
{
  v5 = a4;
  if ([v5 hasFace])
  {
    v6 = [v5 error];
    [(SCATMotionTrackerInputSource *)self setIsTrackingInputActive:v6 == 0];
  }

  else
  {
    [(SCATMotionTrackerInputSource *)self setIsTrackingInputActive:0];
  }

  if ([v5 hasFace])
  {
    v11 = v5;
    AXPerformBlockAsynchronouslyOnMainThread();
    v7 = [v11 expressions];
    v8 = [v7 copy];
    [(SCATMotionTrackerInputSource *)self _setExpressions:v8];

    [(SCATMotionTrackerInputSource *)self _setError:0];
  }

  else
  {
    v9 = +[NSSet set];
    [(SCATMotionTrackerInputSource *)self _setExpressions:v9];

    v10 = [v5 error];
    [(SCATMotionTrackerInputSource *)self _setError:v10];
  }
}

- (void)_motionTrackerInputSourceTrackedFaceAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(SCATMotionTrackerInputSource *)self isEyeTracking]&& AXDeviceSupportsOnDeviceEyeTracking())
  {
    [(SCATMotionTrackerInputSource *)self _motionTrackerInputSourceTrackedEyesAtPoint:x, y];
  }

  else
  {
    [(SCATMotionTrackerInputSource *)self clampPointToDisplay:x withOffset:y, 10.0];
  }

  v8 = v6;
  v9 = v7;
  v10 = [(SCATInputSource *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(SCATInputSource *)self delegate];
    [v12 motionTrackerInputSource:self didReceivePoint:{v8, v9}];
  }
}

- (void)setIsTrackingInputActive:(BOOL)a3
{
  if (self->_isTrackingInputActive != a3)
  {
    v5 = SWCHLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromBOOL();
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MotionTrackingInput isTrackingInputActive: %@", &v7, 0xCu);
    }

    self->_isTrackingInputActive = a3;
    [(SCATMotionTrackerInputSource *)self setLastTimePointReceived:mach_absolute_time()];
  }
}

- (CGPoint)_motionTrackerInputSourceTrackedEyesAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(SCATMotionTrackerInputSource *)self isEyeTracking]&& AXDeviceSupportsOnDeviceEyeTracking())
  {
    v6 = [(SCATMotionTrackerInputSource *)self pointSmoother];
    [v6 addPoint:{x, y}];

    v7 = [(SCATMotionTrackerInputSource *)self pointSmoother];
    [v7 point];
    v9 = v8;
    v11 = v10;

    if ([(SCATMotionTrackerInputSource *)self shouldShowUncalibratedPoints])
    {
      v12 = self;
      v13 = 0;
    }

    else
    {
      if ([(ASTUIGazeEnrollmentManager *)self->_gazeEnrollmentManager enrollmentComplete])
      {
        [(ASTUIGazeEnrollmentManager *)self->_gazeEnrollmentManager calibratedGazePointForGazePoint:v9, v11];
        v9 = v14;
        v11 = v15;
        goto LABEL_10;
      }

      if ([(SCATMotionTrackerInputSource *)self isShowingCalibrationUI]|| [(SCATMotionTrackerInputSource *)self needsRecalibration])
      {
        goto LABEL_10;
      }

      v20 = SWCHLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Eye Tracking needs to recalibrate.", v21, 2u);
      }

      v12 = self;
      v13 = 1;
    }

    [(SCATMotionTrackerInputSource *)v12 setNeedsRecalibration:v13];
LABEL_10:
    [(SCATMotionTrackerInputSource *)self clampPointToDisplay:v9, v11];
    x = v16;
    y = v17;
  }

  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

- (id)_axActionForCameraSwitchType:(unint64_t)a3
{
  v3 = [(SCATMotionTrackerInputSource *)self _axSwitchForCameraSwitchType:a3];
  v4 = [SCATActionItem fromSwitch:v3 longPress:0];

  return v4;
}

- (id)_axSwitchForCameraSwitchType:(unint64_t)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(SCATMotionTrackerInputSource *)self cachedCameraPointPickerSwitches];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = SCATSwitchSourceMotionTracker;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 source];
        if ([v11 isEqualToString:v8])
        {
          v12 = [v10 cameraSwitch];

          if (v12 == a3)
          {
            v13 = v10;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5
{
  v6 = a3;
  v5 = v6;
  AXPerformBlockAsynchronouslyOnMainThread();
  HNDTestingSetLastFiredAction(v5);
}

- (void)_updateCameraSwitchCache
{
  v4 = +[AXSettings sharedInstance];
  v3 = [v4 assistiveTouchCameraPointPickerSwitches];
  [(SCATMotionTrackerInputSource *)self setCachedCameraPointPickerSwitches:v3];
}

- (void)_updateMotionTrackerExpressionConfig
{
  v3 = [(SCATMotionTrackerInputSource *)self _motionTracker];
  v4 = [v3 expressionConfiguration];
  v5 = [v4 copy];

  if (!v5)
  {
    v5 = +[AXSSMotionTrackingExpressionConfiguration defaultExpressionConfiguration];
  }

  v6 = +[AXSwitch expressionToSwitchTypeMapping];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 unsignedIntegerValue];
        v14 = [v6 objectForKeyedSubscript:v12];
        v15 = [v14 unsignedIntegerValue];

        v16 = [(SCATMotionTrackerInputSource *)self _axSwitchForCameraSwitchType:v15];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 expressionSensitivity];
          if (v18)
          {
            v19 = v18;
            if ([v5 sensitivityForFacialExpression:v13] != v18)
            {
              [v5 setSensitivity:v19 forFacialExpression:v13];
              v9 = 1;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
    if (v9)
    {
      v20 = [(SCATMotionTrackerInputSource *)self _motionTracker];
      [v20 setExpressionConfiguration:v5];
    }
  }
}

- (BOOL)needsRecalibration
{
  v2 = [(SCATMotionTrackerInputSource *)self isEyeTracking];
  if (v2)
  {
    v3 = +[HNDHandManager sharedManager];
    v4 = [v3 mainDisplayManager];
    v5 = [v4 needsRecalibration];

    LOBYTE(v2) = v5;
  }

  return v2;
}

- (void)setNeedsRecalibration:(BOOL)a3
{
  if (a3)
  {
    v4 = SWCHLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Recalibrating SCAT Motion Tracker", buf, 2u);
    }

    v5 = [(SCATMotionTrackerInputSource *)self _motionTracker];
    [v5 recalibrateFace];
  }

  if ([(SCATMotionTrackerInputSource *)self isEyeTracking])
  {
    v6 = +[SCATScannerManager sharedManager];
    [v6 isLoaded];

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (BOOL)didForceDimissCalibration
{
  v2 = [(SCATMotionTrackerInputSource *)self mainDisplayManager];
  v3 = [v2 didForceDimissCalibration];

  return v3;
}

- (id)mainDisplayManager
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 mainDisplayManager];

  return v3;
}

- (id)currentDisplayManager
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 currentDisplayManager];

  return v3;
}

- (CGPoint)clampPointToDisplay:(CGPoint)a3
{
  [(SCATMotionTrackerInputSource *)self clampPointToDisplay:a3.x withOffset:a3.y, 0.0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)clampPointToDisplay:(CGPoint)a3 withOffset:(double)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(SCATMotionTrackerInputSource *)self currentDisplayManager];
  [v7 screenBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  v16 = CGRectGetMinX(v24) + a4;
  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  v17 = CGRectGetMaxX(v25) - a4;
  if (x < v17)
  {
    v17 = x;
  }

  if (v16 >= v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  v19 = CGRectGetMinY(v26) + a4;
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v20 = CGRectGetMaxY(v27) - a4;
  if (y < v20)
  {
    v20 = y;
  }

  if (v19 >= v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = v18;
  result.y = v21;
  result.x = v22;
  return result;
}

- (CGRect)rotatedScreenBounds
{
  v2 = [(SCATMotionTrackerInputSource *)self mainDisplayManager];
  [v2 screenBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)didDismissCalibrationUI
{
  v3 = SWCHLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Motion tracking did dismiss calibration ui.", buf, 2u);
  }

  [(SCATMotionTrackerInputSource *)self _cleanUpPowerAssertionIfNecessary];
  self->_isShowingCalibrationUI = 0;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)didShowCalibrationUI
{
  v3 = SWCHLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Motion tracking did show calibration ui.", v5, 2u);
  }

  self->_isShowingCalibrationUI = 1;
  v4 = +[SCATScannerManager sharedManager];
  [v4 hideUIContext:1];
}

- (void)willShowCalibrationUI
{
  v3 = SWCHLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Motion tracking will show calibration ui.", buf, 2u);
  }

  [(SCATMotionTrackerInputSource *)self _setUpPowerAssertionIfNecessary];
  [(SCATMotionTrackerInputSource *)self _setUpIdleTimerAssertion];
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)didCompleteFaceGuidance
{
  v2 = SWCHLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Motion tracking completed face guidance.", v3, 2u);
  }
}

- (void)_setUpPowerAssertionIfNecessary
{
  if (![(SCATMotionTrackerInputSource *)self powerAssertionID])
  {
    v3 = IOPMAssertionCreateWithDescription(@"PreventUserIdleDisplaySleep", @"Accessibility Switch Control", @"Eye Tracker actively in use", 0, 0, 0.0, 0, &self->_powerAssertionID);
    v4 = SWCHLogCommon();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10012B2AC(v3, v5);
      }

      [(SCATMotionTrackerInputSource *)self setPowerAssertionID:0];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[SCATMotionTrackerInputSource _setUpPowerAssertionIfNecessary]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: successfully obtained power assertion.", &v8, 0xCu);
      }

      v6 = [(SCATMotionTrackerInputSource *)self powerAssertionTimer];
      [v6 invalidate];

      v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_powerAssertionTimerFired" selector:0 userInfo:1 repeats:30.0];
      [(SCATMotionTrackerInputSource *)self setPowerAssertionTimer:v7];
    }
  }
}

- (void)_powerAssertionTimerFired
{
  if (!+[NSThread isMainThread])
  {
    sub_10012B338(a2, self);
  }

  mach_absolute_time();
  [(SCATMotionTrackerInputSource *)self lastTimePointReceived];
  if (AXMachTimeToNanoseconds() / 1000000000.0 <= 30.0)
  {
    [(SCATMotionTrackerInputSource *)self _setUpPowerAssertionIfNecessary];

    [(SCATMotionTrackerInputSource *)self _setUpIdleTimerAssertion];
  }

  else
  {
    [(SCATMotionTrackerInputSource *)self _cleanUpPowerAssertionIfNecessary];

    [(SCATMotionTrackerInputSource *)self _cleanUpIdleTimerAssertion];
  }
}

- (void)_cleanUpPowerAssertionIfNecessary
{
  v3 = SWCHLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SCATMotionTrackerInputSource _cleanUpPowerAssertionIfNecessary]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: releasing power assertion", &v5, 0xCu);
  }

  if ([(SCATMotionTrackerInputSource *)self powerAssertionID])
  {
    IOPMAssertionRelease([(SCATMotionTrackerInputSource *)self powerAssertionID]);
    [(SCATMotionTrackerInputSource *)self setPowerAssertionID:0];
  }

  v4 = [(SCATMotionTrackerInputSource *)self powerAssertionTimer];
  [v4 invalidate];

  [(SCATMotionTrackerInputSource *)self setPowerAssertionTimer:0];
}

- (void)_setUpIdleTimerAssertion
{
  if (self->_disableIdleTimerAssertion)
  {
    v2 = SWCHLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10012B3AC(v2);
    }
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v4 = qword_100218C28;
    v12 = qword_100218C28;
    if (!qword_100218C28)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v14 = sub_1000DB394;
      v15 = &unk_1001D4B88;
      v16 = &v9;
      sub_1000DB394(&buf);
      v4 = v10[3];
    }

    v5 = v4;
    _Block_object_dispose(&v9, 8);
    v6 = [v4 sharedInstance];
    v7 = [v6 acquireAssertionToDisableIdleTimerWithReason:@"LiveCaptions"];
    disableIdleTimerAssertion = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = v7;

    v2 = SWCHLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[SCATMotionTrackerInputSource _setUpIdleTimerAssertion]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: successfully obtained idle timer assertion.", &buf, 0xCu);
    }
  }
}

- (void)_cleanUpIdleTimerAssertion
{
  disableIdleTimerAssertion = self->_disableIdleTimerAssertion;
  if (disableIdleTimerAssertion)
  {
    [(BSInvalidatable *)disableIdleTimerAssertion invalidate];
    v4 = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = 0;

    v5 = SWCHLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SCATMotionTrackerInputSource _cleanUpIdleTimerAssertion]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: idle timer assertion is invalidated.", &v6, 0xCu);
    }
  }

  else
  {
    v5 = SWCHLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10012B430(v5);
    }
  }
}

@end