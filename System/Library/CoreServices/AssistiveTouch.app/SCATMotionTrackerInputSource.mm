@interface SCATMotionTrackerInputSource
- (BOOL)didForceDimissCalibration;
- (BOOL)hasCalibrated;
- (BOOL)isEyeTracking;
- (BOOL)isHeadTracking;
- (BOOL)needsRecalibration;
- (CGPoint)_motionTrackerInputSourceTrackedEyesAtPoint:(CGPoint)point;
- (CGPoint)clampPointToDisplay:(CGPoint)display;
- (CGPoint)clampPointToDisplay:(CGPoint)display withOffset:(double)offset;
- (CGRect)rotatedScreenBounds;
- (SCATMotionTrackerInputSource)init;
- (id)_actionForExpression:(unint64_t)expression;
- (id)_axActionForCameraSwitchType:(unint64_t)type;
- (id)_axSwitchForCameraSwitchType:(unint64_t)type;
- (id)currentDisplayManager;
- (id)mainDisplayManager;
- (void)_cleanUpIdleTimerAssertion;
- (void)_cleanUpPowerAssertionIfNecessary;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)_motionTrackerInputSourceTrackedFaceAtPoint:(CGPoint)point;
- (void)_powerAssertionTimerFired;
- (void)_setError:(id)error;
- (void)_setExpressions:(id)expressions;
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
- (void)motionTracker:(id)tracker updatedState:(id)state;
- (void)overrideLookAtPoint:(CGPoint)point;
- (void)setAllowedTrackingTypes:(id)types;
- (void)setIsTrackingInputActive:(BOOL)active;
- (void)setJoystickModeMovementThreshold:(double)threshold;
- (void)setMotionTrackingMode:(unint64_t)mode;
- (void)setNeedsRecalibration:(BOOL)recalibration;
- (void)setSensitivity:(double)sensitivity;
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

- (void)setAllowedTrackingTypes:(id)types
{
  typesCopy = types;
  v5 = SWCHLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = typesCopy;
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

  [(AXSSMotionTrackingInputConfiguration *)self->__motionTrackerConfig setAllowedTrackingTypes:typesCopy];
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
  allowedTrackingTypes = [(SCATMotionTrackerInputSource *)self allowedTrackingTypes];
  v3 = [allowedTrackingTypes containsObject:&off_1001E5670];

  return v3;
}

- (BOOL)isEyeTracking
{
  allowedTrackingTypes = [(SCATMotionTrackerInputSource *)self allowedTrackingTypes];
  v3 = [allowedTrackingTypes containsObject:&off_1001E5688];

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

- (void)setMotionTrackingMode:(unint64_t)mode
{
  _motionTracker = [(SCATMotionTrackerInputSource *)self _motionTracker];
  [_motionTracker setMotionTrackingMode:mode];
}

- (void)setSensitivity:(double)sensitivity
{
  _motionTracker = [(SCATMotionTrackerInputSource *)self _motionTracker];
  [_motionTracker setSensitivity:sensitivity];
}

- (void)setJoystickModeMovementThreshold:(double)threshold
{
  _motionTracker = [(SCATMotionTrackerInputSource *)self _motionTracker];
  [_motionTracker setJoystickModeMovementThreshold:threshold];
}

- (void)overrideLookAtPoint:(CGPoint)point
{
  v5 = [NSValue valueWithPoint:point.x, point.y];
  _motionTracker = [(SCATMotionTrackerInputSource *)self _motionTracker];
  [_motionTracker setLookAtPoint:v5];
}

- (void)dismissEyeTrackingCalibration
{
  currentDisplayManager = [(SCATMotionTrackerInputSource *)self currentDisplayManager];
  [currentDisplayManager dismissCalibrationUI];
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
  inputConfiguration = [(AXSSMotionTracker *)self->__motionTracker inputConfiguration];
  [inputConfiguration setAllowedTrackingTypes:v3];

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
  mainDisplayManager = [v10 mainDisplayManager];
  [mainDisplayManager addEyeTrackingUIDelegate:self];

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
  inputConfiguration = [(AXSSMotionTracker *)self->__motionTracker inputConfiguration];
  [inputConfiguration setAllowedTrackingTypes:v3];

  motionTracker = self->__motionTracker;

  [(AXSSMotionTracker *)motionTracker start];
}

- (void)_tearDownEyeTracking
{
  pointSmoother = self->_pointSmoother;
  self->_pointSmoother = 0;

  mainDisplayManager = [(SCATMotionTrackerInputSource *)self mainDisplayManager];
  [mainDisplayManager removeEyeTrackingUIDelegate:self];

  mainDisplayManager2 = [(SCATMotionTrackerInputSource *)self mainDisplayManager];
  [mainDisplayManager2 setGazePointManager:0];

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

- (id)_actionForExpression:(unint64_t)expression
{
  v5 = +[AXSwitch expressionToSwitchTypeMapping];
  v6 = [NSNumber numberWithUnsignedInteger:expression];
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

- (void)_setError:(id)error
{
  errorCopy = error;
  if ([errorCopy isEqual:self->__error])
  {
    goto LABEL_12;
  }

  objc_storeStrong(&self->__error, error);
  if (!errorCopy)
  {
    goto LABEL_12;
  }

  code = [errorCopy code];
  v7 = code;
  v8 = code < 0xA;
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
    delegate = [(SCATInputSource *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(SCATInputSource *)self delegate];
      [delegate2 motionTrackerInputSource:self failedToTrackFaceWithError:errorCopy];
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

- (void)_setExpressions:(id)expressions
{
  expressionsCopy = expressions;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D95EC;
  v16[3] = &unk_1001D7420;
  v16[4] = self;
  v5 = objc_retainBlock(v16);
  if (([(NSSet *)self->__expressions isEqual:expressionsCopy]& 1) == 0)
  {
    expressions = self->__expressions;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D96C0;
    v13[3] = &unk_1001D35A0;
    v7 = expressionsCopy;
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

- (void)motionTracker:(id)tracker updatedState:(id)state
{
  stateCopy = state;
  if ([stateCopy hasFace])
  {
    error = [stateCopy error];
    [(SCATMotionTrackerInputSource *)self setIsTrackingInputActive:error == 0];
  }

  else
  {
    [(SCATMotionTrackerInputSource *)self setIsTrackingInputActive:0];
  }

  if ([stateCopy hasFace])
  {
    v11 = stateCopy;
    AXPerformBlockAsynchronouslyOnMainThread();
    expressions = [v11 expressions];
    v8 = [expressions copy];
    [(SCATMotionTrackerInputSource *)self _setExpressions:v8];

    [(SCATMotionTrackerInputSource *)self _setError:0];
  }

  else
  {
    v9 = +[NSSet set];
    [(SCATMotionTrackerInputSource *)self _setExpressions:v9];

    error2 = [stateCopy error];
    [(SCATMotionTrackerInputSource *)self _setError:error2];
  }
}

- (void)_motionTrackerInputSourceTrackedFaceAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
  delegate = [(SCATInputSource *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(SCATInputSource *)self delegate];
    [delegate2 motionTrackerInputSource:self didReceivePoint:{v8, v9}];
  }
}

- (void)setIsTrackingInputActive:(BOOL)active
{
  if (self->_isTrackingInputActive != active)
  {
    v5 = SWCHLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromBOOL();
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MotionTrackingInput isTrackingInputActive: %@", &v7, 0xCu);
    }

    self->_isTrackingInputActive = active;
    [(SCATMotionTrackerInputSource *)self setLastTimePointReceived:mach_absolute_time()];
  }
}

- (CGPoint)_motionTrackerInputSourceTrackedEyesAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(SCATMotionTrackerInputSource *)self isEyeTracking]&& AXDeviceSupportsOnDeviceEyeTracking())
  {
    pointSmoother = [(SCATMotionTrackerInputSource *)self pointSmoother];
    [pointSmoother addPoint:{x, y}];

    pointSmoother2 = [(SCATMotionTrackerInputSource *)self pointSmoother];
    [pointSmoother2 point];
    v9 = v8;
    v11 = v10;

    if ([(SCATMotionTrackerInputSource *)self shouldShowUncalibratedPoints])
    {
      selfCopy2 = self;
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

      selfCopy2 = self;
      v13 = 1;
    }

    [(SCATMotionTrackerInputSource *)selfCopy2 setNeedsRecalibration:v13];
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

- (id)_axActionForCameraSwitchType:(unint64_t)type
{
  v3 = [(SCATMotionTrackerInputSource *)self _axSwitchForCameraSwitchType:type];
  v4 = [SCATActionItem fromSwitch:v3 longPress:0];

  return v4;
}

- (id)_axSwitchForCameraSwitchType:(unint64_t)type
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  cachedCameraPointPickerSwitches = [(SCATMotionTrackerInputSource *)self cachedCameraPointPickerSwitches];
  v5 = [cachedCameraPointPickerSwitches countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(cachedCameraPointPickerSwitches);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        source = [v10 source];
        if ([source isEqualToString:v8])
        {
          cameraSwitch = [v10 cameraSwitch];

          if (cameraSwitch == type)
          {
            v13 = v10;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v6 = [cachedCameraPointPickerSwitches countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
  HNDTestingSetLastFiredAction(v5);
}

- (void)_updateCameraSwitchCache
{
  v4 = +[AXSettings sharedInstance];
  assistiveTouchCameraPointPickerSwitches = [v4 assistiveTouchCameraPointPickerSwitches];
  [(SCATMotionTrackerInputSource *)self setCachedCameraPointPickerSwitches:assistiveTouchCameraPointPickerSwitches];
}

- (void)_updateMotionTrackerExpressionConfig
{
  _motionTracker = [(SCATMotionTrackerInputSource *)self _motionTracker];
  expressionConfiguration = [_motionTracker expressionConfiguration];
  v5 = [expressionConfiguration copy];

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
        unsignedIntegerValue = [v12 unsignedIntegerValue];
        v14 = [v6 objectForKeyedSubscript:v12];
        unsignedIntegerValue2 = [v14 unsignedIntegerValue];

        v16 = [(SCATMotionTrackerInputSource *)self _axSwitchForCameraSwitchType:unsignedIntegerValue2];
        v17 = v16;
        if (v16)
        {
          expressionSensitivity = [v16 expressionSensitivity];
          if (expressionSensitivity)
          {
            v19 = expressionSensitivity;
            if ([v5 sensitivityForFacialExpression:unsignedIntegerValue] != expressionSensitivity)
            {
              [v5 setSensitivity:v19 forFacialExpression:unsignedIntegerValue];
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
      _motionTracker2 = [(SCATMotionTrackerInputSource *)self _motionTracker];
      [_motionTracker2 setExpressionConfiguration:v5];
    }
  }
}

- (BOOL)needsRecalibration
{
  isEyeTracking = [(SCATMotionTrackerInputSource *)self isEyeTracking];
  if (isEyeTracking)
  {
    v3 = +[HNDHandManager sharedManager];
    mainDisplayManager = [v3 mainDisplayManager];
    needsRecalibration = [mainDisplayManager needsRecalibration];

    LOBYTE(isEyeTracking) = needsRecalibration;
  }

  return isEyeTracking;
}

- (void)setNeedsRecalibration:(BOOL)recalibration
{
  if (recalibration)
  {
    v4 = SWCHLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Recalibrating SCAT Motion Tracker", buf, 2u);
    }

    _motionTracker = [(SCATMotionTrackerInputSource *)self _motionTracker];
    [_motionTracker recalibrateFace];
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
  mainDisplayManager = [(SCATMotionTrackerInputSource *)self mainDisplayManager];
  didForceDimissCalibration = [mainDisplayManager didForceDimissCalibration];

  return didForceDimissCalibration;
}

- (id)mainDisplayManager
{
  v2 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v2 mainDisplayManager];

  return mainDisplayManager;
}

- (id)currentDisplayManager
{
  v2 = +[HNDHandManager sharedManager];
  currentDisplayManager = [v2 currentDisplayManager];

  return currentDisplayManager;
}

- (CGPoint)clampPointToDisplay:(CGPoint)display
{
  [(SCATMotionTrackerInputSource *)self clampPointToDisplay:display.x withOffset:display.y, 0.0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)clampPointToDisplay:(CGPoint)display withOffset:(double)offset
{
  y = display.y;
  x = display.x;
  currentDisplayManager = [(SCATMotionTrackerInputSource *)self currentDisplayManager];
  [currentDisplayManager screenBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  v16 = CGRectGetMinX(v24) + offset;
  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  v17 = CGRectGetMaxX(v25) - offset;
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
  v19 = CGRectGetMinY(v26) + offset;
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v20 = CGRectGetMaxY(v27) - offset;
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
  mainDisplayManager = [(SCATMotionTrackerInputSource *)self mainDisplayManager];
  [mainDisplayManager screenBounds];
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

      powerAssertionTimer = [(SCATMotionTrackerInputSource *)self powerAssertionTimer];
      [powerAssertionTimer invalidate];

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

  powerAssertionTimer = [(SCATMotionTrackerInputSource *)self powerAssertionTimer];
  [powerAssertionTimer invalidate];

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
    sharedInstance = [v4 sharedInstance];
    v7 = [sharedInstance acquireAssertionToDisableIdleTimerWithReason:@"LiveCaptions"];
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