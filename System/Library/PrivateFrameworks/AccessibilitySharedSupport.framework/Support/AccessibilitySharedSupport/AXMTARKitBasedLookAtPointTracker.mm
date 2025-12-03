@interface AXMTARKitBasedLookAtPointTracker
- (AXMTARKitBasedLookAtPointTracker)initWithInput:(id)input trackingType:(unint64_t)type;
- (AXMTLookAtPointTrackerDelegate)delegate;
- (BOOL)_isStarted;
- (UIView)debugOverlayRootView;
- (void)_updateWindowForDebugOverlay;
- (void)arKitCameraInputSource:(id)source didFailToTrackFaceWithError:(id)error;
- (void)arKitCameraInputSource:(id)source didReceiveExpressionEnd:(unint64_t)end;
- (void)arKitCameraInputSource:(id)source didReceiveExpressionStart:(unint64_t)start;
- (void)arKitCameraInputSource:(id)source didReceivePoint:(CGPoint)point;
- (void)arKitCameraInputSourceWasInterrupted:(id)interrupted;
- (void)setDebugOverlayEnabled:(BOOL)enabled;
- (void)setExpressionConfiguration:(id)configuration;
- (void)setJoystickModeMovementThreshold:(double)threshold;
- (void)setMotionTrackingMode:(unint64_t)mode;
- (void)setSensitivity:(double)sensitivity;
- (void)startTracking;
- (void)stopTracking;
@end

@implementation AXMTARKitBasedLookAtPointTracker

- (AXMTARKitBasedLookAtPointTracker)initWithInput:(id)input trackingType:(unint64_t)type
{
  inputCopy = input;
  v12.receiver = self;
  v12.super_class = AXMTARKitBasedLookAtPointTracker;
  v6 = [(AXMTARKitBasedLookAtPointTracker *)&v12 init];
  if (v6)
  {
    v7 = [inputCopy copy];
    input = v6->_input;
    v6->_input = v7;

    v6->_motionTrackingMode = AXSSMotionTrackingDefaultMode;
    *&v6->_sensitivity = AXSSMotionTrackingDefaultSensitivity;
    *&v6->_joystickModeMovementThreshold = AXSSMotionTrackingDefaultJoystickModeMovementThreshold;
    v9 = +[AXSSMotionTrackingExpressionConfiguration defaultExpressionConfiguration];
    expressionConfiguration = v6->_expressionConfiguration;
    v6->_expressionConfiguration = v9;
  }

  return v6;
}

- (void)setDebugOverlayEnabled:(BOOL)enabled
{
  if (self->_debugOverlayEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = AXSSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"false";
      if (enabledCopy)
      {
        v6 = @"true";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTARKitBasedLookAtPointTracker: setDebugOverlayEnabled: %@", &v8, 0xCu);
    }

    self->_debugOverlayEnabled = enabledCopy;
    _arkitCameraInputSource = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource setDebugOverlayEnabled:enabledCopy];

    [(AXMTARKitBasedLookAtPointTracker *)self _updateWindowForDebugOverlay];
  }
}

- (void)startTracking
{
  if (![(AXMTARKitBasedLookAtPointTracker *)self _isStarted])
  {
    v3 = AXSSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTARKitBasedLookAtPointTracker: startTracking: called", buf, 2u);
    }

    v4 = +[AXMTUtilities sharedInstance];
    [v4 screenBoundsAccountingForInterfaceOrientation];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if ([(AXMTARKitBasedLookAtPointTracker *)self debugOverlayEnabled])
    {
      v13 = [[_AXMTARKitInvisibleWindow alloc] initWithFrame:v6, v8, v10, v12];
      [(AXMTARKitBasedLookAtPointTracker *)self set_arkitCameraInputSourceWindow:v13];
    }

    v14 = [AXMTARKitCameraInputSource alloc];
    _arkitCameraInputSourceWindow = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSourceWindow];
    v16 = [(AXMTARKitCameraInputSource *)v14 initInsideView:_arkitCameraInputSourceWindow];
    [(AXMTARKitBasedLookAtPointTracker *)self set_arkitCameraInputSource:v16];

    _arkitCameraInputSource = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource setDelegate:self];

    [(AXMTARKitBasedLookAtPointTracker *)self sensitivity];
    v19 = v18;
    _arkitCameraInputSource2 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource2 setSensitivity:v19];

    motionTrackingMode = [(AXMTARKitBasedLookAtPointTracker *)self motionTrackingMode];
    _arkitCameraInputSource3 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource3 setMotionTrackingMode:motionTrackingMode];

    [(AXMTARKitBasedLookAtPointTracker *)self joystickModeMovementThreshold];
    v24 = v23;
    _arkitCameraInputSource4 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource4 setJoystickModeMovementThreshold:v24];

    debugOverlayEnabled = [(AXMTARKitBasedLookAtPointTracker *)self debugOverlayEnabled];
    _arkitCameraInputSource5 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource5 setDebugOverlayEnabled:debugOverlayEnabled];

    expressionConfiguration = [(AXMTARKitBasedLookAtPointTracker *)self expressionConfiguration];
    _arkitCameraInputSource6 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource6 setExpressionConfiguration:expressionConfiguration];

    [(AXMTARKitBasedLookAtPointTracker *)self _updateWindowForDebugOverlay];
    _arkitCameraInputSource7 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource7 startRunning];

    v31 = AXSSLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "AXMTARKitBasedLookAtPointTracker: startTracking: started running ARKitCameraInputSource", v32, 2u);
    }
  }
}

- (void)stopTracking
{
  if ([(AXMTARKitBasedLookAtPointTracker *)self _isStarted])
  {
    v3 = AXSSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTARKitBasedLookAtPointTracker: stopTracking", v7, 2u);
    }

    _arkitCameraInputSourceWindow = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSourceWindow];
    [_arkitCameraInputSourceWindow setHidden:1];

    [(AXMTARKitBasedLookAtPointTracker *)self set_arkitCameraInputSourceWindow:0];
    _arkitCameraInputSource = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource stopRunning];

    _arkitCameraInputSource2 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource2 setDelegate:0];

    [(AXMTARKitBasedLookAtPointTracker *)self set_arkitCameraInputSource:0];
  }
}

- (void)setMotionTrackingMode:(unint64_t)mode
{
  if (self->_motionTrackingMode != mode)
  {
    self->_motionTrackingMode = mode;
    _arkitCameraInputSource = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource setMotionTrackingMode:mode];
  }
}

- (void)setSensitivity:(double)sensitivity
{
  if (vabdd_f64(self->_sensitivity, sensitivity) > 2.22044605e-16)
  {
    self->_sensitivity = sensitivity;
    _arkitCameraInputSource = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource setSensitivity:sensitivity];
  }
}

- (void)setJoystickModeMovementThreshold:(double)threshold
{
  if (vabdd_f64(self->_joystickModeMovementThreshold, threshold) > 2.22044605e-16)
  {
    self->_joystickModeMovementThreshold = threshold;
    _arkitCameraInputSource = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource setJoystickModeMovementThreshold:threshold];
  }
}

- (void)setExpressionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(AXSSMotionTrackingExpressionConfiguration *)self->_expressionConfiguration isEqualToMotionTrackingExpressionConfiguration:?]& 1) == 0)
  {
    objc_storeStrong(&self->_expressionConfiguration, configuration);
    _arkitCameraInputSource = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [_arkitCameraInputSource setExpressionConfiguration:configurationCopy];
  }
}

- (void)arKitCameraInputSource:(id)source didReceivePoint:(CGPoint)point
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009A44;
  block[3] = &unk_1000489E8;
  pointCopy = point;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)arKitCameraInputSource:(id)source didReceiveExpressionStart:(unint64_t)start
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009BE4;
  v4[3] = &unk_1000489C0;
  v4[4] = self;
  v4[5] = start;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)arKitCameraInputSource:(id)source didReceiveExpressionEnd:(unint64_t)end
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009D38;
  v4[3] = &unk_1000489C0;
  v4[4] = self;
  v4[5] = end;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)arKitCameraInputSourceWasInterrupted:(id)interrupted
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009E8C;
  block[3] = &unk_1000488F8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)arKitCameraInputSource:(id)source didFailToTrackFaceWithError:(id)error
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009FE8;
  v6[3] = &unk_100048948;
  errorCopy = error;
  selfCopy = self;
  v5 = errorCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (BOOL)_isStarted
{
  _arkitCameraInputSource = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
  v3 = _arkitCameraInputSource != 0;

  return v3;
}

- (void)_updateWindowForDebugOverlay
{
  debugOverlayEnabled = [(AXMTARKitBasedLookAtPointTracker *)self debugOverlayEnabled];
  _arkitCameraInputSourceWindow = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSourceWindow];
  v5 = _arkitCameraInputSourceWindow;
  if (debugOverlayEnabled)
  {
    [_arkitCameraInputSourceWindow makeKeyAndVisible];
  }

  else
  {
    [_arkitCameraInputSourceWindow setHidden:1];
  }
}

- (AXMTLookAtPointTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)debugOverlayRootView
{
  WeakRetained = objc_loadWeakRetained(&self->_debugOverlayRootView);

  return WeakRetained;
}

@end