@interface AXMTARKitBasedLookAtPointTracker
- (AXMTARKitBasedLookAtPointTracker)initWithInput:(id)a3 trackingType:(unint64_t)a4;
- (AXMTLookAtPointTrackerDelegate)delegate;
- (BOOL)_isStarted;
- (UIView)debugOverlayRootView;
- (void)_updateWindowForDebugOverlay;
- (void)arKitCameraInputSource:(id)a3 didFailToTrackFaceWithError:(id)a4;
- (void)arKitCameraInputSource:(id)a3 didReceiveExpressionEnd:(unint64_t)a4;
- (void)arKitCameraInputSource:(id)a3 didReceiveExpressionStart:(unint64_t)a4;
- (void)arKitCameraInputSource:(id)a3 didReceivePoint:(CGPoint)a4;
- (void)arKitCameraInputSourceWasInterrupted:(id)a3;
- (void)setDebugOverlayEnabled:(BOOL)a3;
- (void)setExpressionConfiguration:(id)a3;
- (void)setJoystickModeMovementThreshold:(double)a3;
- (void)setMotionTrackingMode:(unint64_t)a3;
- (void)setSensitivity:(double)a3;
- (void)startTracking;
- (void)stopTracking;
@end

@implementation AXMTARKitBasedLookAtPointTracker

- (AXMTARKitBasedLookAtPointTracker)initWithInput:(id)a3 trackingType:(unint64_t)a4
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AXMTARKitBasedLookAtPointTracker;
  v6 = [(AXMTARKitBasedLookAtPointTracker *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
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

- (void)setDebugOverlayEnabled:(BOOL)a3
{
  if (self->_debugOverlayEnabled != a3)
  {
    v3 = a3;
    v5 = AXSSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"false";
      if (v3)
      {
        v6 = @"true";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTARKitBasedLookAtPointTracker: setDebugOverlayEnabled: %@", &v8, 0xCu);
    }

    self->_debugOverlayEnabled = v3;
    v7 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v7 setDebugOverlayEnabled:v3];

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
    v15 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSourceWindow];
    v16 = [(AXMTARKitCameraInputSource *)v14 initInsideView:v15];
    [(AXMTARKitBasedLookAtPointTracker *)self set_arkitCameraInputSource:v16];

    v17 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v17 setDelegate:self];

    [(AXMTARKitBasedLookAtPointTracker *)self sensitivity];
    v19 = v18;
    v20 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v20 setSensitivity:v19];

    v21 = [(AXMTARKitBasedLookAtPointTracker *)self motionTrackingMode];
    v22 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v22 setMotionTrackingMode:v21];

    [(AXMTARKitBasedLookAtPointTracker *)self joystickModeMovementThreshold];
    v24 = v23;
    v25 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v25 setJoystickModeMovementThreshold:v24];

    v26 = [(AXMTARKitBasedLookAtPointTracker *)self debugOverlayEnabled];
    v27 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v27 setDebugOverlayEnabled:v26];

    v28 = [(AXMTARKitBasedLookAtPointTracker *)self expressionConfiguration];
    v29 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v29 setExpressionConfiguration:v28];

    [(AXMTARKitBasedLookAtPointTracker *)self _updateWindowForDebugOverlay];
    v30 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v30 startRunning];

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

    v4 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSourceWindow];
    [v4 setHidden:1];

    [(AXMTARKitBasedLookAtPointTracker *)self set_arkitCameraInputSourceWindow:0];
    v5 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v5 stopRunning];

    v6 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v6 setDelegate:0];

    [(AXMTARKitBasedLookAtPointTracker *)self set_arkitCameraInputSource:0];
  }
}

- (void)setMotionTrackingMode:(unint64_t)a3
{
  if (self->_motionTrackingMode != a3)
  {
    self->_motionTrackingMode = a3;
    v5 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v5 setMotionTrackingMode:a3];
  }
}

- (void)setSensitivity:(double)a3
{
  if (vabdd_f64(self->_sensitivity, a3) > 2.22044605e-16)
  {
    self->_sensitivity = a3;
    v4 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v4 setSensitivity:a3];
  }
}

- (void)setJoystickModeMovementThreshold:(double)a3
{
  if (vabdd_f64(self->_joystickModeMovementThreshold, a3) > 2.22044605e-16)
  {
    self->_joystickModeMovementThreshold = a3;
    v4 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v4 setJoystickModeMovementThreshold:a3];
  }
}

- (void)setExpressionConfiguration:(id)a3
{
  v6 = a3;
  if (([(AXSSMotionTrackingExpressionConfiguration *)self->_expressionConfiguration isEqualToMotionTrackingExpressionConfiguration:?]& 1) == 0)
  {
    objc_storeStrong(&self->_expressionConfiguration, a3);
    v5 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
    [v5 setExpressionConfiguration:v6];
  }
}

- (void)arKitCameraInputSource:(id)a3 didReceivePoint:(CGPoint)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009A44;
  block[3] = &unk_1000489E8;
  v5 = a4;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)arKitCameraInputSource:(id)a3 didReceiveExpressionStart:(unint64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009BE4;
  v4[3] = &unk_1000489C0;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)arKitCameraInputSource:(id)a3 didReceiveExpressionEnd:(unint64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009D38;
  v4[3] = &unk_1000489C0;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)arKitCameraInputSourceWasInterrupted:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009E8C;
  block[3] = &unk_1000488F8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)arKitCameraInputSource:(id)a3 didFailToTrackFaceWithError:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009FE8;
  v6[3] = &unk_100048948;
  v7 = a4;
  v8 = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

- (BOOL)_isStarted
{
  v2 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSource];
  v3 = v2 != 0;

  return v3;
}

- (void)_updateWindowForDebugOverlay
{
  v3 = [(AXMTARKitBasedLookAtPointTracker *)self debugOverlayEnabled];
  v4 = [(AXMTARKitBasedLookAtPointTracker *)self _arkitCameraInputSourceWindow];
  v5 = v4;
  if (v3)
  {
    [v4 makeKeyAndVisible];
  }

  else
  {
    [v4 setHidden:1];
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