@interface AXMTARKitCameraInputSource
+ (BOOL)isAvailable;
- (AXMTARKitCameraInputSourceDelegate)delegate;
- (BOOL)_didUpdateAnchors:(id)a3;
- (BOOL)_isStarted;
- (CGPoint)_computeAbsoluteModeForPoint:(CGPoint)a3;
- (CGPoint)_computeAccelerationModeForPoint:(CGPoint)a3;
- (CGPoint)_computeJoystickModeForPoint:(CGPoint)a3;
- (CGPoint)_convertProjectedPointToScreenCoordinates:(CGPoint)a3 useSensitivity:(BOOL)a4;
- (CGPoint)_project3DVertexOnto2DPlane:(AXMTARKitCameraInputSource *)self;
- (CGRect)_headTrackingBounds;
- (NSMutableArray)_screenLookAtPoints;
- (id)initInsideView:(id)a3;
- (void)_captureSessionDidStartRunningNotification:(id)a3;
- (void)_captureSessionDidStopRunningNotification:(id)a3;
- (void)_captureSessionRuntimeErrorNotification:(id)a3;
- (void)_captureSessionWasInterruptedNotification:(id)a3;
- (void)_handleFaceBlendShapes:(id)a3;
- (void)_notifyClientOfLostFaceWithReason:(int64_t)a3 underlyingError:(id)a4;
- (void)_restartTracking;
- (void)_setUpDebugOverlay;
- (void)_setupARSessionInsideView:(id)a3;
- (void)_tearDownDebugOverlay;
- (void)_updateAccelerationFactorForPointerMovementMapper;
- (void)_updateDebugOverlay;
- (void)_updateMovementThresholdforPointerMovementMapper;
- (void)axmtUtilities_interfaceOrientationChanged:(int64_t)a3;
- (void)handleEventWithProjectedPoint:(CGPoint)a3;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionWasInterrupted:(id)a3;
- (void)setDebugOverlayEnabled:(BOOL)a3;
- (void)setJoystickModeMovementThreshold:(double)a3;
- (void)setMotionTrackingMode:(unint64_t)a3;
- (void)setSensitivity:(double)a3;
- (void)startRunning;
- (void)stopRunning;
@end

@implementation AXMTARKitCameraInputSource

- (id)initInsideView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXMTARKitCameraInputSource;
  v5 = [(AXMTARKitCameraInputSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXMTARKitCameraInputSource *)v5 _setupARSessionInsideView:v4];
  }

  return v6;
}

+ (BOOL)isAvailable
{
  v2 = sub_100004EF8();

  return [v2 isSupported];
}

- (NSMutableArray)_screenLookAtPoints
{
  screenLookAtPoints = self->__screenLookAtPoints;
  if (!screenLookAtPoints)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = self->__screenLookAtPoints;
    self->__screenLookAtPoints = v4;

    screenLookAtPoints = self->__screenLookAtPoints;
  }

  return screenLookAtPoints;
}

- (void)_setupARSessionInsideView:(id)a3
{
  v4 = a3;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ARKitCameraInputSource:_setupARSessionInsideView: called with rootView: %@", &buf, 0xCu);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v6 = qword_1000544B8;
  v13 = qword_1000544B8;
  if (!qword_1000544B8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v15 = sub_1000084C0;
    v16 = &unk_100048BA8;
    v17 = &v10;
    sub_1000084C0(&buf);
    v6 = v11[3];
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);
  v8 = objc_alloc_init(v6);
  [(AXMTARKitCameraInputSource *)self set_session:v8, v10];

  v9 = [(AXMTARKitCameraInputSource *)self _session];
  [v9 setDelegate:self];

  [(AXMTARKitCameraInputSource *)self set_rootView:v4];
}

- (void)_restartTracking
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "ARKitCameraInputSource:_restartTracking: called", buf, 2u);
  }

  [(AXMTARKitCameraInputSource *)self set_interrupted:0];
  [(AXMTARKitCameraInputSource *)self set_avCaptureSessionInterruptionReason:0x7FFFFFFFFFFFFFFFLL];
  [(AXMTARKitCameraInputSource *)self set_lastReportedFailure:0x7FFFFFFFFFFFFFFFLL];
  v4 = objc_alloc_init(sub_100004EF8());
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [objc_opt_class() supportedVideoFormats];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 1.79769313e308;
    v12 = 1.79769313e308;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([v14 framesPerSecond] <= v10 && objc_msgSend(v14, "framesPerSecond") >= 30)
        {
          [v14 imageResolution];
          if (v15 <= v12 || ([v14 imageResolution], v16 <= v11))
          {
            v10 = [v14 framesPerSecond];
            [v14 imageResolution];
            v12 = v17;
            [v14 imageResolution];
            v11 = v18;
            v19 = v14;

            v8 = v19;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v20 = AXSSLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "ARKitCameraInputSource:_restartTracking: setVideoFormat:%@", buf, 0xCu);
  }

  if (v8)
  {
    [v4 setVideoFormat:v8];
  }

  [v4 setLightEstimationEnabled:1];
  v21 = [(AXMTARKitCameraInputSource *)self _session];
  [v21 runWithConfiguration:v4 options:3];

  [(AXMTARKitCameraInputSource *)self debugOverlayEnabled];
}

- (void)setDebugOverlayEnabled:(BOOL)a3
{
  if (self->_debugOverlayEnabled != a3)
  {
    self->_debugOverlayEnabled = 0;
    [(AXMTARKitCameraInputSource *)self _updateDebugOverlay];
  }
}

- (void)_updateDebugOverlay
{
  if ([(AXMTARKitCameraInputSource *)self debugOverlayEnabled])
  {

    [(AXMTARKitCameraInputSource *)self _setUpDebugOverlay];
  }

  else
  {

    [(AXMTARKitCameraInputSource *)self _tearDownDebugOverlay];
  }
}

- (void)_setUpDebugOverlay
{
  v3 = [(AXMTARKitCameraInputSource *)self _rootView];

  if (v3)
  {
    v4 = [(AXMTARKitCameraInputSource *)self _rootView];
    v5 = +[AXMTUtilities sharedInstance];
    [v5 screenBoundsAccountingForInterfaceOrientation];
    v7 = v6;
    v9 = v8;

    v30 = [v4 widthAnchor];
    v29 = [v30 constraintEqualToConstant:v7];
    v31[0] = v29;
    v28 = [v4 heightAnchor];
    v10 = [v28 constraintEqualToConstant:v9];
    v31[1] = v10;
    v11 = [v4 topAnchor];
    v12 = [v4 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];
    v31[2] = v13;
    v14 = [v4 leadingAnchor];
    v15 = [v4 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
    v31[3] = v16;
    v17 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    [(AXMTARKitCameraInputSource *)self set_headTrackingBounds:NSZeroRect.origin.x, NSZeroRect.origin.y, NSZeroRect.size.width, NSZeroRect.size.height];
    v18 = [UIView alloc];
    [(AXMTARKitCameraInputSource *)self _headTrackingBounds];
    v19 = [v18 initWithFrame:?];
    [(AXMTARKitCameraInputSource *)self set_headTrackingRect:v19];

    v20 = +[UIColor redColor];
    v21 = [v20 CGColor];
    v22 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
    v23 = [v22 layer];
    [v23 setBorderColor:v21];

    v24 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
    v25 = [v24 layer];
    [v25 setBorderWidth:3.0];

    v26 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
    [v4 addSubview:v26];

    v27 = [(AXMTARKitCameraInputSource *)self _rootView];
    [v27 setAlpha:1.0];
  }
}

- (void)_tearDownDebugOverlay
{
  v3 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
  [v3 setHidden:1];

  v4 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
  [v4 removeFromSuperview];

  v5 = [(AXMTARKitCameraInputSource *)self _rootView];
  [v5 setAlpha:0.0];
}

- (BOOL)_isStarted
{
  v2 = [(AXMTARKitCameraInputSource *)self _session];
  v3 = [v2 state] == 1;

  return v3;
}

- (void)startRunning
{
  if (![(AXMTARKitCameraInputSource *)self _isStarted])
  {
    v3 = AXSSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "ARKitCameraInputSource:startRunning: called", v6, 2u);
    }

    v4 = +[AXMTUtilities sharedInstance];
    [v4 registerListener:self needsPhysicalOrientationEvents:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_captureSessionDidStartRunningNotification:" name:AVCaptureSessionDidStartRunningNotification object:0];
    [v5 addObserver:self selector:"_captureSessionDidStopRunningNotification:" name:AVCaptureSessionDidStopRunningNotification object:0];
    [v5 addObserver:self selector:"_captureSessionRuntimeErrorNotification:" name:AVCaptureSessionRuntimeErrorNotification object:0];
    [v5 addObserver:self selector:"_captureSessionWasInterruptedNotification:" name:AVCaptureSessionWasInterruptedNotification object:0];
    [(AXMTARKitCameraInputSource *)self _updateDebugOverlay];
    [(AXMTARKitCameraInputSource *)self set_interrupted:0];
    [(AXMTARKitCameraInputSource *)self set_avCaptureSessionInterruptionReason:0x7FFFFFFFFFFFFFFFLL];
    [(AXMTARKitCameraInputSource *)self set_lastReportedFailure:0x7FFFFFFFFFFFFFFFLL];
    [(AXMTARKitCameraInputSource *)self _restartTracking];
  }
}

- (void)stopRunning
{
  if ([(AXMTARKitCameraInputSource *)self _isStarted])
  {
    v3 = AXSSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "ARKitCameraInputSource:stopRunning: called", v7, 2u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:AVCaptureSessionDidStartRunningNotification object:0];
    [v4 removeObserver:self name:AVCaptureSessionDidStopRunningNotification object:0];
    [v4 removeObserver:self name:AVCaptureSessionRuntimeErrorNotification object:0];
    [v4 removeObserver:self name:AVCaptureSessionWasInterruptedNotification object:0];
    v5 = [(AXMTARKitCameraInputSource *)self _session];
    [v5 pause];

    [(AXMTARKitCameraInputSource *)self set_session:0];
    [(AXMTARKitCameraInputSource *)self setDebugOverlayEnabled:0];
    [(AXMTARKitCameraInputSource *)self set_screenLookAtPoints:0];
    [(AXMTARKitCameraInputSource *)self set_velocityBasedPointMapper:0];
    [(AXMTARKitCameraInputSource *)self set_pointerMovementMapper:0];
    [(AXMTARKitCameraInputSource *)self set_interrupted:0];
    [(AXMTARKitCameraInputSource *)self set_avCaptureSessionInterruptionReason:0x7FFFFFFFFFFFFFFFLL];
    [(AXMTARKitCameraInputSource *)self set_lastReportedFailure:0x7FFFFFFFFFFFFFFFLL];
    v6 = +[AXMTUtilities sharedInstance];
    [v6 unregisterListener:self];
  }
}

- (void)setMotionTrackingMode:(unint64_t)a3
{
  if (self->_motionTrackingMode != a3)
  {
    self->_motionTrackingMode = a3;
    v4 = +[NSMutableArray array];
    [(AXMTARKitCameraInputSource *)self set_screenLookAtPoints:v4];

    if ([(AXMTARKitCameraInputSource *)self debugOverlayEnabled])
    {
      y = NSZeroRect.origin.y;
      width = NSZeroRect.size.width;
      height = NSZeroRect.size.height;
      [(AXMTARKitCameraInputSource *)self set_headTrackingBounds:NSZeroRect.origin.x, y, width, height];
      v8 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
      [v8 setFrame:{NSZeroRect.origin.x, y, width, height}];
    }
  }
}

- (void)setSensitivity:(double)a3
{
  if (vabdd_f64(self->_sensitivity, a3) > 2.22044605e-16)
  {
    self->_sensitivity = a3;
    v5 = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];

    if (v5)
    {
      v6 = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];
      [v6 setSensitivity:a3];
    }

    [(AXMTARKitCameraInputSource *)self _updateAccelerationFactorForPointerMovementMapper];
  }
}

- (void)setJoystickModeMovementThreshold:(double)a3
{
  if (vabdd_f64(self->_joystickModeMovementThreshold, a3) > 2.22044605e-16)
  {
    self->_joystickModeMovementThreshold = a3;
    [(AXMTARKitCameraInputSource *)self _updateMovementThresholdforPointerMovementMapper];
  }
}

- (void)axmtUtilities_interfaceOrientationChanged:(int64_t)a3
{
  v4 = +[AXMTUtilities sharedInstance];
  [v4 screenBoundsAccountingForInterfaceOrientation];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];
  [v13 setBounds:{v6, v8, v10, v12}];

  v14 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];
  [v14 setScreenBounds:{v6, v8, v10, v12}];
}

- (void)_captureSessionDidStartRunningNotification:(id)a3
{
  v3 = a3;
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 object];
    v6 = [v3 userInfo];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ARKitCameraInputSource:_captureSessionDidStartRunningNotification: notification.object: %@, userInfo: %@", &v7, 0x16u);
  }
}

- (void)_captureSessionDidStopRunningNotification:(id)a3
{
  v3 = a3;
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 object];
    v6 = [v3 userInfo];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ARKitCameraInputSource:_captureSessionDidStopRunningNotification: notification.object: %@, userInfo: %@", &v7, 0x16u);
  }
}

- (void)_captureSessionRuntimeErrorNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:AVCaptureSessionErrorKey];
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000088F4();
  }
}

- (void)_captureSessionWasInterruptedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:AVCaptureSessionInterruptionReasonKey];
  -[AXMTARKitCameraInputSource set_avCaptureSessionInterruptionReason:](self, "set_avCaptureSessionInterruptionReason:", [v5 integerValue]);

  v6 = [v4 objectForKeyedSubscript:AVCaptureSessionInterruptionSystemPressureStateKey];
  v7 = AXSSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100008970(self, v6, v7);
  }
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100008A00(v5, v6);
  }

  if (![(AXMTARKitCameraInputSource *)self _interrupted])
  {
    [(AXMTARKitCameraInputSource *)self _notifyClientOfLostFaceWithReason:0 underlyingError:v5];
  }

  [(AXMTARKitCameraInputSource *)self set_interrupted:1];
}

- (void)sessionWasInterrupted:(id)a3
{
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ARKitCameraInputSource: sessionWasInterrupted:", v6, 2u);
  }

  if (![(AXMTARKitCameraInputSource *)self _interrupted])
  {
    if ([(AXMTARKitCameraInputSource *)self _avCaptureSessionInterruptionReason]== 3)
    {
      v5 = 7;
    }

    else
    {
      v5 = 0;
    }

    [(AXMTARKitCameraInputSource *)self _notifyClientOfLostFaceWithReason:v5 underlyingError:0];
  }

  [(AXMTARKitCameraInputSource *)self set_interrupted:1];
}

- (void)sessionInterruptionEnded:(id)a3
{
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ARKitCameraInputSource: sessionInterruptionEnded:", v6, 2u);
  }

  [(AXMTARKitCameraInputSource *)self set_interrupted:0];
  [(AXMTARKitCameraInputSource *)self set_avCaptureSessionInterruptionReason:0x7FFFFFFFFFFFFFFFLL];
  v5 = [(AXMTARKitCameraInputSource *)self delegate];
  [v5 arKitCameraInputSourceInterruptionEnded:self];

  [(AXMTARKitCameraInputSource *)self _restartTracking];
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v4 = a4;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    v7 = [v4 trackingState];
    v8 = 2048;
    v9 = [v4 trackingStateReason];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ARKitCameraInputSource: cameraDidChangeTrackingState: trackingState %ld reason %ld", &v6, 0x16u);
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v12 = a4;
  AXMTLogFPS();
  v5 = [v12 anchors];
  v6 = [(AXMTARKitCameraInputSource *)self _didUpdateAnchors:v5];
  v7 = [(AXMTARKitCameraInputSource *)self _lastReportedFailure];
  if (v6)
  {
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(AXMTARKitCameraInputSource *)self set_lastReportedFailure:0x7FFFFFFFFFFFFFFFLL];
    }
  }

  else
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = [NSNumber numberWithInteger:[(AXMTARKitCameraInputSource *)self _lastReportedFailure]];
    }

    v9 = [v12 faceData];
    v10 = [v9 faceMeshPayload];
    v11 = [AXMTUtilities errorCodeForFaceKitPayload:v10 lastReportedFailureNumber:v8];

    [(AXMTARKitCameraInputSource *)self _notifyClientOfLostFaceWithReason:v11 underlyingError:0];
  }
}

- (BOOL)_didUpdateAnchors:(id)a3
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v8 = qword_1000544C0;
        v27 = qword_1000544C0;
        if (!qword_1000544C0)
        {
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100008518;
          v23[3] = &unk_100048BA8;
          v23[4] = &v24;
          sub_100008518(v23);
          v8 = v25[3];
        }

        v9 = v8;
        _Block_object_dispose(&v24, 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v7;
          if ([v10 isTracked])
          {
            [(AXMTARKitCameraInputSource *)self set_currentlyTrackedFaceAnchor:v10];
            [(AXMTARKitCameraInputSource *)self _project3DVertexOnto2DPlane:0.0];
            v12 = v11;
            v14 = v13;
            v15 = [v10 blendShapes];
            [(AXMTARKitCameraInputSource *)self _handleFaceBlendShapes:v15];

            [(AXMTARKitCameraInputSource *)self handleEventWithProjectedPoint:-v12, -v14];
            v16 = 1;
            goto LABEL_15;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v4);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)_notifyClientOfLostFaceWithReason:(int64_t)a3 underlyingError:(id)a4
{
  v9 = a4;
  if ([(AXMTARKitCameraInputSource *)self _lastReportedFailure]== 0x7FFFFFFFFFFFFFFFLL || [(AXMTARKitCameraInputSource *)self _lastReportedFailure]!= a3)
  {
    [(AXMTARKitCameraInputSource *)self set_lastReportedFailure:a3];
    if (v9)
    {
      v6 = [NSDictionary dictionaryWithObject:v9 forKey:NSUnderlyingErrorKey];
    }

    else
    {
      v6 = 0;
    }

    v7 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:a3 userInfo:v6];
    v8 = [(AXMTARKitCameraInputSource *)self delegate];
    [v8 arKitCameraInputSource:self didFailToTrackFaceWithError:v7];
  }
}

- (CGPoint)_project3DVertexOnto2DPlane:(AXMTARKitCameraInputSource *)self
{
  v22 = v2;
  v4 = [(AXMTARKitCameraInputSource *)self _currentlyTrackedFaceAnchor];
  [v4 transform];
  v23 = vaddq_f32(v8, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v22.f32[0]), v6, *v22.f32, 1), v7, v22, 2));

  v9 = +[AXMTUtilities sharedInstance];
  v10 = AXMTConvertFromDeviceToInterfaceOrientation([v9 currentInterfaceOrientation]);

  v11 = [(AXMTARKitCameraInputSource *)self _session];
  v12 = [v11 currentFrame];
  v13 = [v12 camera];

  [v13 imageResolution];
  [v13 projectPoint:v10 orientation:*vdivq_f32(v23 viewportSize:{vdupq_laneq_s32(v23, 3)).i64, v14, v15}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)handleEventWithProjectedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXMTARKitCameraInputSource *)self motionTrackingMode];
  if (v6 == 2)
  {
    [(AXMTARKitCameraInputSource *)self _convertProjectedPointToScreenCoordinates:0 useSensitivity:x, y];
    [(AXMTARKitCameraInputSource *)self _computeAccelerationModeForPoint:?];
  }

  else if (v6 == 1)
  {
    [(AXMTARKitCameraInputSource *)self _convertProjectedPointToScreenCoordinates:0 useSensitivity:x, y];
    [(AXMTARKitCameraInputSource *)self _computeJoystickModeForPoint:?];
  }

  else
  {
    [(AXMTARKitCameraInputSource *)self _convertProjectedPointToScreenCoordinates:1 useSensitivity:x, y];
    [(AXMTARKitCameraInputSource *)self _computeAbsoluteModeForPoint:?];
  }

  v9 = v7;
  v10 = v8;
  v11 = [(AXMTARKitCameraInputSource *)self delegate];
  [v11 arKitCameraInputSource:self didReceivePoint:{v9, v10}];
}

- (CGPoint)_computeAbsoluteModeForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
  v7 = [v6 count];

  if (v7 == 5)
  {
    v8 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
    [v8 removeObjectAtIndex:0];
  }

  v9 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
  *v28 = x;
  *&v28[1] = y;
  v10 = [NSValue valueWithBytes:v28 objCType:"{CGPoint=dd}"];
  [v9 addObject:v10];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v24 + 1) + 8 * i) pointValue];
        v15 = v15 + v18;
        v16 = v16 + v19;
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
    v16 = 0.0;
  }

  v20 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
  v21 = [v20 count];

  v22 = v15 / v21;
  v23 = v16 / v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)_computeAccelerationModeForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];

  if (!v6)
  {
    v7 = [AXMTVelocityBasedPointMapper alloc];
    v8 = +[AXMTUtilities sharedInstance];
    [v8 screenBoundsAccountingForInterfaceOrientation];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(AXMTARKitCameraInputSource *)self sensitivity];
    v18 = [(AXMTVelocityBasedPointMapper *)v7 initWithBounds:v10 sensitivity:v12, v14, v16, v17];
    [(AXMTARKitCameraInputSource *)self set_velocityBasedPointMapper:v18];
  }

  v19 = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];
  [v19 processPoint:{x, y}];
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGPoint)_computeJoystickModeForPoint:(CGPoint)a3
{
  v4 = [AXMTUtilities sharedInstance:a3.x];
  [v4 screenBoundsAccountingForInterfaceOrientation];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];

  if (!v13)
  {
    v14 = [[AXMTRelativePointerMovementMapper alloc] initWithScreenBounds:v6, v8, v10, v12];
    [(AXMTARKitCameraInputSource *)self set_pointerMovementMapper:v14];

    [(AXMTARKitCameraInputSource *)self _updateAccelerationFactorForPointerMovementMapper];
    [(AXMTARKitCameraInputSource *)self _updateMovementThresholdforPointerMovementMapper];
  }

  v15 = [(AXMTARKitCameraInputSource *)self _currentlyTrackedFaceAnchor];
  v16 = [v15 geometry];

  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v17 = qword_1000544C8;
  v70 = qword_1000544C8;
  if (!qword_1000544C8)
  {
    v65[2] = _NSConcreteStackBlock;
    v65[3] = 3221225472;
    v65[4] = sub_100008570;
    v65[5] = &unk_100048BA8;
    v66 = &v67;
    v18 = sub_10000834C();
    v68[3] = dlsym(v18, "ARNoseRidgeTip");
    qword_1000544C8 = *(v66[1] + 24);
    v17 = v68[3];
  }

  _Block_object_dispose(&v67, 8);
  if (!v17)
  {
    v59 = sub_100029794();
    _Block_object_dispose(&v67, 8);
    _Unwind_Resume(v59);
  }

  v62 = v6;
  v63 = v12;
  [v16 positionForLabeledFacePosition:*v17];
  [(AXMTARKitCameraInputSource *)self _project3DVertexOnto2DPlane:?];
  v20 = v19;
  v22 = v21;
  x = NSZeroPoint.x;
  y = NSZeroPoint.y;
  v60 = v8;
  if ([v16 vertexCount])
  {
    v25 = 0;
    v26 = 1.79769313e308;
    v27 = 1.79769313e308;
    do
    {
      -[AXMTARKitCameraInputSource _project3DVertexOnto2DPlane:](self, "_project3DVertexOnto2DPlane:", *([v16 vertices] + 2 * v25));
      if (v28 < v26)
      {
        v26 = v28;
      }

      if (v29 < v27)
      {
        v27 = v29;
      }

      if (v28 >= x)
      {
        x = v28;
      }

      if (v29 >= y)
      {
        y = v29;
      }

      ++v25;
    }

    while (v25 < [v16 vertexCount]);
  }

  else
  {
    v27 = 1.79769313e308;
    v26 = 1.79769313e308;
  }

  v30 = x - v26;
  v31 = [(AXMTARKitCameraInputSource *)self _trackingAreaPointMapper];

  if (v31)
  {
    v32 = [(AXMTARKitCameraInputSource *)self _trackingAreaPointMapper];
    [v32 setTrackingAreaBounds:{v26, v27, v30, y - v27}];

    v33 = [(AXMTARKitCameraInputSource *)self _trackingAreaPointMapper];
    [v33 updateTrackedPoint:{v20, v22}];

    v34 = [(AXMTARKitCameraInputSource *)self _trackingAreaPointMapper];
    [v34 normalizedTrackedPoint];
    v36 = v35;
    v38 = v37;

    if ([(AXMTARKitCameraInputSource *)self debugOverlayEnabled])
    {
      [(AXMTARKitCameraInputSource *)self set_headTrackingBounds:v26, v27, v30, y - v27];
      v39 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
      [v39 setFrame:{v26, v27, v30, y - v27}];
    }

    v40 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];
    v41 = [v40 processPointInNormalizedTrackingSpace:{v36, v38}];

    v42 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
    v43 = [v42 lastObject];
    [v43 pointValue];
    v45 = v44;
    v47 = v46;

    [v41 delta];
    v49 = fmin(fmax(v10 * -0.0055844577 + 9.311967, 3.593), 7.0) * v48;
    [v41 delta];
    v51 = AXMTConstrainPointWithinBounds(v45 - v49, v47 + fmin(fmax(v63 * 0.0108096 + -8.68544, 1.0), 2.384) * v50, v62, v61, v10);
    v53 = v52;
    *v64 = v51;
    *&v64[1] = v52;
    v54 = [NSValue valueWithBytes:v64 objCType:"{CGPoint=dd}"];
    v55 = [NSMutableArray arrayWithObject:v54];
    [(AXMTARKitCameraInputSource *)self set_screenLookAtPoints:v55];
  }

  else
  {
    v56 = [[AXMTTrackingAreaPointMapper alloc] initWithTrackingAreaBounds:0 lockTrackingAreaPosition:v26, v27, v30, y - v27];
    [(AXMTARKitCameraInputSource *)self set_trackingAreaPointMapper:v56];

    v51 = v10 * 0.5;
    v53 = v63 * 0.5;
    *v65 = v51;
    *&v65[1] = v63 * 0.5;
    v41 = [NSValue valueWithBytes:v65 objCType:"{CGPoint=dd}"];
    v54 = [NSMutableArray arrayWithObject:v41];
    [(AXMTARKitCameraInputSource *)self set_screenLookAtPoints:v54];
  }

  v57 = v51;
  v58 = v53;
  result.y = v58;
  result.x = v57;
  return result;
}

- (void)_updateAccelerationFactorForPointerMovementMapper
{
  v3 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];

  if (v3)
  {
    [(AXMTARKitCameraInputSource *)self sensitivity];
    v5 = (2.0 - 1.0) * v4 + 1.0;
    v6 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];
    [v6 setAccelerationFactor:v5];
  }
}

- (void)_updateMovementThresholdforPointerMovementMapper
{
  v3 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];

  if (v3)
  {
    [(AXMTARKitCameraInputSource *)self joystickModeMovementThreshold];
    v5 = v4;
    v6 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];
    [v6 setNormalizedMovementThreshold:v5];
  }
}

- (CGPoint)_convertProjectedPointToScreenCoordinates:(CGPoint)a3 useSensitivity:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = +[AXMTUtilities sharedInstance];
  [v8 screenBoundsAccountingForInterfaceOrientation];
  v10 = v9;
  v12 = v11;

  v13 = +[AXMTUtilities sharedInstance];
  v14 = [v13 currentInterfaceOrientation];

  v15 = v10 * 1.15358884 + -199.61;
  if ((v14 - 3) >= 2)
  {
    v15 = v10 * 1.0676812 + -9.52;
  }

  v16 = v15 + x * (v10 * 0.00061318 + -0.00385488);
  v17 = v12 * 0.562768306 + 73.26 + y * (v12 * 0.00032351 + -0.01486606);
  if (v4)
  {
    [(AXMTARKitCameraInputSource *)self sensitivity];
    v19 = v18 * 2.9995 + 1.0005;
    v16 = v10 * 0.5 + (v16 - v10 * 0.5) / (v10 * 0.5) * v19 * (v10 * 0.5);
    v17 = v12 * 0.5 + (v17 - v12 * 0.5) / (v12 * 0.5) * v19 * (v12 * 0.5);
  }

  v20 = v16;
  v21 = v17;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)_handleFaceBlendShapes:(id)a3
{
  v4 = a3;
  v5 = [(AXMTARKitCameraInputSource *)self delegate];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v7 = qword_1000544D0;
    v71 = qword_1000544D0;
    if (!qword_1000544D0)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000085C0;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v8 = sub_10000834C();
      v69[3] = dlsym(v8, "ARBlendShapeLocationTongueOut");
      qword_1000544D0 = *(v67[1] + 24);
      v7 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v7)
    {
      goto LABEL_52;
    }

    v9 = [v4 objectForKey:*v7];
    [v6 setObject:v9 forKeyedSubscript:AXMTBlendShapeTongueOut];

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v10 = qword_1000544D8;
    v71 = qword_1000544D8;
    if (!qword_1000544D8)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_100008610;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v11 = sub_10000834C();
      v69[3] = dlsym(v11, "ARBlendShapeLocationMouthSmileLeft");
      qword_1000544D8 = *(v67[1] + 24);
      v10 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v10)
    {
      goto LABEL_52;
    }

    v12 = [v4 objectForKey:*v10];
    [v6 setObject:v12 forKeyedSubscript:AXMTBlendShapeMouthSmileLeft];

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v13 = qword_1000544E0;
    v71 = qword_1000544E0;
    if (!qword_1000544E0)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_100008660;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v14 = sub_10000834C();
      v69[3] = dlsym(v14, "ARBlendShapeLocationMouthSmileRight");
      qword_1000544E0 = *(v67[1] + 24);
      v13 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v13)
    {
      goto LABEL_52;
    }

    v15 = [v4 objectForKey:*v13];
    [v6 setObject:v15 forKeyedSubscript:AXMTBlendShapeMouthSmileRight];

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v16 = qword_1000544E8;
    v71 = qword_1000544E8;
    if (!qword_1000544E8)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000086B0;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v17 = sub_10000834C();
      v69[3] = dlsym(v17, "ARBlendShapeLocationJawOpen");
      qword_1000544E8 = *(v67[1] + 24);
      v16 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v16)
    {
      goto LABEL_52;
    }

    v18 = [v4 objectForKey:*v16];
    [v6 setObject:v18 forKeyedSubscript:AXMTBlendShapeJawOpen];

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v19 = qword_1000544F0;
    v71 = qword_1000544F0;
    if (!qword_1000544F0)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_100008700;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v20 = sub_10000834C();
      v69[3] = dlsym(v20, "ARBlendShapeLocationMouthClose");
      qword_1000544F0 = *(v67[1] + 24);
      v19 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v19)
    {
      goto LABEL_52;
    }

    v21 = [v4 objectForKey:*v19];
    [v6 setObject:v21 forKeyedSubscript:AXMTBlendShapeMouthClose];

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v22 = qword_1000544F8;
    v71 = qword_1000544F8;
    if (!qword_1000544F8)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_100008750;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v23 = sub_10000834C();
      v69[3] = dlsym(v23, "ARBlendShapeLocationBrowOuterUpLeft");
      qword_1000544F8 = *(v67[1] + 24);
      v22 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v22)
    {
      goto LABEL_52;
    }

    v24 = [v4 objectForKey:*v22];
    [v6 setObject:v24 forKeyedSubscript:AXMTBlendShapeBrowOuterUpLeft];

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v25 = qword_100054500;
    v71 = qword_100054500;
    if (!qword_100054500)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000087A0;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v26 = sub_10000834C();
      v69[3] = dlsym(v26, "ARBlendShapeLocationBrowOuterUpRight");
      qword_100054500 = *(v67[1] + 24);
      v25 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v25)
    {
      goto LABEL_52;
    }

    v27 = [v4 objectForKey:*v25];
    [v6 setObject:v27 forKeyedSubscript:AXMTBlendShapeBrowOuterUpRight];

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v28 = qword_100054508;
    v71 = qword_100054508;
    if (!qword_100054508)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000087F0;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v29 = sub_10000834C();
      v69[3] = dlsym(v29, "ARBlendShapeLocationMouthPucker");
      qword_100054508 = *(v67[1] + 24);
      v28 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v28)
    {
      goto LABEL_52;
    }

    v30 = [v4 objectForKey:*v28];
    [v6 setObject:v30 forKeyedSubscript:AXMTBlendShapeMouthPucker];

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v31 = qword_100054510;
    v71 = qword_100054510;
    if (!qword_100054510)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_100008840;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v32 = sub_10000834C();
      v69[3] = dlsym(v32, "ARBlendShapeLocationEyeBlinkLeft");
      qword_100054510 = *(v67[1] + 24);
      v31 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v31)
    {
      goto LABEL_52;
    }

    v33 = [v4 objectForKey:*v31];
    [v6 setObject:v33 forKeyedSubscript:AXMTBlendShapeEyeBlinkLeft];

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v34 = qword_100054518;
    v71 = qword_100054518;
    if (!qword_100054518)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_100008890;
      v66 = &unk_100048BA8;
      v67 = &v68;
      v35 = sub_10000834C();
      v69[3] = dlsym(v35, "ARBlendShapeLocationEyeBlinkRight");
      qword_100054518 = *(v67[1] + 24);
      v34 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v34)
    {
LABEL_52:
      sub_100029794();
      __break(1u);
    }

    v36 = [v4 objectForKey:*v34];
    [v6 setObject:v36 forKeyedSubscript:AXMTBlendShapeEyeBlinkRight];

    v37 = [(AXMTARKitCameraInputSource *)self _previousExpressions];
    v38 = [(AXMTARKitCameraInputSource *)self expressionConfiguration];
    v61 = 0;
    v62 = 0;
    v39 = [AXSSMotionTrackingExpressionConfiguration processIncomingExpressions:v6 previousExpressions:v37 expressionConfiguration:v38 startExpressionsOutSet:&v62 endExpressionsOutSet:&v61];
    v52 = v62;
    v50 = v61;

    LOBYTE(v38) = objc_opt_respondsToSelector();
    v40 = objc_opt_respondsToSelector();
    if (v38)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v41 = v52;
      v42 = [v41 countByEnumeratingWithState:&v57 objects:v73 count:{16, v50}];
      if (v42)
      {
        v43 = *v58;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v58 != v43)
            {
              objc_enumerationMutation(v41);
            }

            [v5 arKitCameraInputSource:self didReceiveExpressionStart:{objc_msgSend(*(*(&v57 + 1) + 8 * i), "unsignedIntegerValue")}];
          }

          v42 = [v41 countByEnumeratingWithState:&v57 objects:v73 count:16];
        }

        while (v42);
      }
    }

    if (v40)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v45 = v50;
      v46 = [v45 countByEnumeratingWithState:&v53 objects:v72 count:16];
      if (v46)
      {
        v47 = *v54;
        do
        {
          for (j = 0; j != v46; j = j + 1)
          {
            if (*v54 != v47)
            {
              objc_enumerationMutation(v45);
            }

            [v5 arKitCameraInputSource:self didReceiveExpressionEnd:{objc_msgSend(*(*(&v53 + 1) + 8 * j), "unsignedIntegerValue", v50)}];
          }

          v46 = [v45 countByEnumeratingWithState:&v53 objects:v72 count:16];
        }

        while (v46);
      }
    }

    v49 = [v39 copy];
    [(AXMTARKitCameraInputSource *)self set_previousExpressions:v49];
  }
}

- (AXMTARKitCameraInputSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)_headTrackingBounds
{
  x = self->__headTrackingBounds.origin.x;
  y = self->__headTrackingBounds.origin.y;
  width = self->__headTrackingBounds.size.width;
  height = self->__headTrackingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end