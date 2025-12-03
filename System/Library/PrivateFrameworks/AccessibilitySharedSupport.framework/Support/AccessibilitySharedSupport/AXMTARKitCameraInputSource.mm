@interface AXMTARKitCameraInputSource
+ (BOOL)isAvailable;
- (AXMTARKitCameraInputSourceDelegate)delegate;
- (BOOL)_didUpdateAnchors:(id)anchors;
- (BOOL)_isStarted;
- (CGPoint)_computeAbsoluteModeForPoint:(CGPoint)point;
- (CGPoint)_computeAccelerationModeForPoint:(CGPoint)point;
- (CGPoint)_computeJoystickModeForPoint:(CGPoint)point;
- (CGPoint)_convertProjectedPointToScreenCoordinates:(CGPoint)coordinates useSensitivity:(BOOL)sensitivity;
- (CGPoint)_project3DVertexOnto2DPlane:(AXMTARKitCameraInputSource *)self;
- (CGRect)_headTrackingBounds;
- (NSMutableArray)_screenLookAtPoints;
- (id)initInsideView:(id)view;
- (void)_captureSessionDidStartRunningNotification:(id)notification;
- (void)_captureSessionDidStopRunningNotification:(id)notification;
- (void)_captureSessionRuntimeErrorNotification:(id)notification;
- (void)_captureSessionWasInterruptedNotification:(id)notification;
- (void)_handleFaceBlendShapes:(id)shapes;
- (void)_notifyClientOfLostFaceWithReason:(int64_t)reason underlyingError:(id)error;
- (void)_restartTracking;
- (void)_setUpDebugOverlay;
- (void)_setupARSessionInsideView:(id)view;
- (void)_tearDownDebugOverlay;
- (void)_updateAccelerationFactorForPointerMovementMapper;
- (void)_updateDebugOverlay;
- (void)_updateMovementThresholdforPointerMovementMapper;
- (void)axmtUtilities_interfaceOrientationChanged:(int64_t)changed;
- (void)handleEventWithProjectedPoint:(CGPoint)point;
- (void)session:(id)session cameraDidChangeTrackingState:(id)state;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)setDebugOverlayEnabled:(BOOL)enabled;
- (void)setJoystickModeMovementThreshold:(double)threshold;
- (void)setMotionTrackingMode:(unint64_t)mode;
- (void)setSensitivity:(double)sensitivity;
- (void)startRunning;
- (void)stopRunning;
@end

@implementation AXMTARKitCameraInputSource

- (id)initInsideView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = AXMTARKitCameraInputSource;
  v5 = [(AXMTARKitCameraInputSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXMTARKitCameraInputSource *)v5 _setupARSessionInsideView:viewCopy];
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

- (void)_setupARSessionInsideView:(id)view
{
  viewCopy = view;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = viewCopy;
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

  _session = [(AXMTARKitCameraInputSource *)self _session];
  [_session setDelegate:self];

  [(AXMTARKitCameraInputSource *)self set_rootView:viewCopy];
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
  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  v6 = [supportedVideoFormats countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    framesPerSecond = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 1.79769313e308;
    v12 = 1.79769313e308;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(supportedVideoFormats);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([v14 framesPerSecond] <= framesPerSecond && objc_msgSend(v14, "framesPerSecond") >= 30)
        {
          [v14 imageResolution];
          if (v15 <= v12 || ([v14 imageResolution], v16 <= v11))
          {
            framesPerSecond = [v14 framesPerSecond];
            [v14 imageResolution];
            v12 = v17;
            [v14 imageResolution];
            v11 = v18;
            v19 = v14;

            v8 = v19;
          }
        }
      }

      v7 = [supportedVideoFormats countByEnumeratingWithState:&v22 objects:v28 count:16];
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
  _session = [(AXMTARKitCameraInputSource *)self _session];
  [_session runWithConfiguration:v4 options:3];

  [(AXMTARKitCameraInputSource *)self debugOverlayEnabled];
}

- (void)setDebugOverlayEnabled:(BOOL)enabled
{
  if (self->_debugOverlayEnabled != enabled)
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
  _rootView = [(AXMTARKitCameraInputSource *)self _rootView];

  if (_rootView)
  {
    _rootView2 = [(AXMTARKitCameraInputSource *)self _rootView];
    v5 = +[AXMTUtilities sharedInstance];
    [v5 screenBoundsAccountingForInterfaceOrientation];
    v7 = v6;
    v9 = v8;

    widthAnchor = [_rootView2 widthAnchor];
    v29 = [widthAnchor constraintEqualToConstant:v7];
    v31[0] = v29;
    heightAnchor = [_rootView2 heightAnchor];
    v10 = [heightAnchor constraintEqualToConstant:v9];
    v31[1] = v10;
    topAnchor = [_rootView2 topAnchor];
    topAnchor2 = [_rootView2 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v31[2] = v13;
    leadingAnchor = [_rootView2 leadingAnchor];
    leadingAnchor2 = [_rootView2 leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v31[3] = v16;
    v17 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    [(AXMTARKitCameraInputSource *)self set_headTrackingBounds:NSZeroRect.origin.x, NSZeroRect.origin.y, NSZeroRect.size.width, NSZeroRect.size.height];
    v18 = [UIView alloc];
    [(AXMTARKitCameraInputSource *)self _headTrackingBounds];
    v19 = [v18 initWithFrame:?];
    [(AXMTARKitCameraInputSource *)self set_headTrackingRect:v19];

    v20 = +[UIColor redColor];
    cGColor = [v20 CGColor];
    _headTrackingRect = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
    layer = [_headTrackingRect layer];
    [layer setBorderColor:cGColor];

    _headTrackingRect2 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
    layer2 = [_headTrackingRect2 layer];
    [layer2 setBorderWidth:3.0];

    _headTrackingRect3 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
    [_rootView2 addSubview:_headTrackingRect3];

    _rootView3 = [(AXMTARKitCameraInputSource *)self _rootView];
    [_rootView3 setAlpha:1.0];
  }
}

- (void)_tearDownDebugOverlay
{
  _headTrackingRect = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
  [_headTrackingRect setHidden:1];

  _headTrackingRect2 = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
  [_headTrackingRect2 removeFromSuperview];

  _rootView = [(AXMTARKitCameraInputSource *)self _rootView];
  [_rootView setAlpha:0.0];
}

- (BOOL)_isStarted
{
  _session = [(AXMTARKitCameraInputSource *)self _session];
  v3 = [_session state] == 1;

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
    _session = [(AXMTARKitCameraInputSource *)self _session];
    [_session pause];

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

- (void)setMotionTrackingMode:(unint64_t)mode
{
  if (self->_motionTrackingMode != mode)
  {
    self->_motionTrackingMode = mode;
    v4 = +[NSMutableArray array];
    [(AXMTARKitCameraInputSource *)self set_screenLookAtPoints:v4];

    if ([(AXMTARKitCameraInputSource *)self debugOverlayEnabled])
    {
      y = NSZeroRect.origin.y;
      width = NSZeroRect.size.width;
      height = NSZeroRect.size.height;
      [(AXMTARKitCameraInputSource *)self set_headTrackingBounds:NSZeroRect.origin.x, y, width, height];
      _headTrackingRect = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
      [_headTrackingRect setFrame:{NSZeroRect.origin.x, y, width, height}];
    }
  }
}

- (void)setSensitivity:(double)sensitivity
{
  if (vabdd_f64(self->_sensitivity, sensitivity) > 2.22044605e-16)
  {
    self->_sensitivity = sensitivity;
    _velocityBasedPointMapper = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];

    if (_velocityBasedPointMapper)
    {
      _velocityBasedPointMapper2 = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];
      [_velocityBasedPointMapper2 setSensitivity:sensitivity];
    }

    [(AXMTARKitCameraInputSource *)self _updateAccelerationFactorForPointerMovementMapper];
  }
}

- (void)setJoystickModeMovementThreshold:(double)threshold
{
  if (vabdd_f64(self->_joystickModeMovementThreshold, threshold) > 2.22044605e-16)
  {
    self->_joystickModeMovementThreshold = threshold;
    [(AXMTARKitCameraInputSource *)self _updateMovementThresholdforPointerMovementMapper];
  }
}

- (void)axmtUtilities_interfaceOrientationChanged:(int64_t)changed
{
  v4 = +[AXMTUtilities sharedInstance];
  [v4 screenBoundsAccountingForInterfaceOrientation];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  _velocityBasedPointMapper = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];
  [_velocityBasedPointMapper setBounds:{v6, v8, v10, v12}];

  _pointerMovementMapper = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];
  [_pointerMovementMapper setScreenBounds:{v6, v8, v10, v12}];
}

- (void)_captureSessionDidStartRunningNotification:(id)notification
{
  notificationCopy = notification;
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    object = [notificationCopy object];
    userInfo = [notificationCopy userInfo];
    v7 = 138412546;
    v8 = object;
    v9 = 2112;
    v10 = userInfo;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ARKitCameraInputSource:_captureSessionDidStartRunningNotification: notification.object: %@, userInfo: %@", &v7, 0x16u);
  }
}

- (void)_captureSessionDidStopRunningNotification:(id)notification
{
  notificationCopy = notification;
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    object = [notificationCopy object];
    userInfo = [notificationCopy userInfo];
    v7 = 138412546;
    v8 = object;
    v9 = 2112;
    v10 = userInfo;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ARKitCameraInputSource:_captureSessionDidStopRunningNotification: notification.object: %@, userInfo: %@", &v7, 0x16u);
  }
}

- (void)_captureSessionRuntimeErrorNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKeyedSubscript:AVCaptureSessionErrorKey];
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000088F4();
  }
}

- (void)_captureSessionWasInterruptedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:AVCaptureSessionInterruptionReasonKey];
  -[AXMTARKitCameraInputSource set_avCaptureSessionInterruptionReason:](self, "set_avCaptureSessionInterruptionReason:", [v5 integerValue]);

  v6 = [userInfo objectForKeyedSubscript:AVCaptureSessionInterruptionSystemPressureStateKey];
  v7 = AXSSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100008970(self, v6, v7);
  }
}

- (void)session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100008A00(errorCopy, v6);
  }

  if (![(AXMTARKitCameraInputSource *)self _interrupted])
  {
    [(AXMTARKitCameraInputSource *)self _notifyClientOfLostFaceWithReason:0 underlyingError:errorCopy];
  }

  [(AXMTARKitCameraInputSource *)self set_interrupted:1];
}

- (void)sessionWasInterrupted:(id)interrupted
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

- (void)sessionInterruptionEnded:(id)ended
{
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ARKitCameraInputSource: sessionInterruptionEnded:", v6, 2u);
  }

  [(AXMTARKitCameraInputSource *)self set_interrupted:0];
  [(AXMTARKitCameraInputSource *)self set_avCaptureSessionInterruptionReason:0x7FFFFFFFFFFFFFFFLL];
  delegate = [(AXMTARKitCameraInputSource *)self delegate];
  [delegate arKitCameraInputSourceInterruptionEnded:self];

  [(AXMTARKitCameraInputSource *)self _restartTracking];
}

- (void)session:(id)session cameraDidChangeTrackingState:(id)state
{
  stateCopy = state;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    trackingState = [stateCopy trackingState];
    v8 = 2048;
    trackingStateReason = [stateCopy trackingStateReason];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ARKitCameraInputSource: cameraDidChangeTrackingState: trackingState %ld reason %ld", &v6, 0x16u);
  }
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  frameCopy = frame;
  AXMTLogFPS();
  anchors = [frameCopy anchors];
  v6 = [(AXMTARKitCameraInputSource *)self _didUpdateAnchors:anchors];
  _lastReportedFailure = [(AXMTARKitCameraInputSource *)self _lastReportedFailure];
  if (v6)
  {
    if (_lastReportedFailure != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(AXMTARKitCameraInputSource *)self set_lastReportedFailure:0x7FFFFFFFFFFFFFFFLL];
    }
  }

  else
  {
    if (_lastReportedFailure == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = [NSNumber numberWithInteger:[(AXMTARKitCameraInputSource *)self _lastReportedFailure]];
    }

    faceData = [frameCopy faceData];
    faceMeshPayload = [faceData faceMeshPayload];
    v11 = [AXMTUtilities errorCodeForFaceKitPayload:faceMeshPayload lastReportedFailureNumber:v8];

    [(AXMTARKitCameraInputSource *)self _notifyClientOfLostFaceWithReason:v11 underlyingError:0];
  }
}

- (BOOL)_didUpdateAnchors:(id)anchors
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  anchorsCopy = anchors;
  v4 = [anchorsCopy countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(anchorsCopy);
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
            blendShapes = [v10 blendShapes];
            [(AXMTARKitCameraInputSource *)self _handleFaceBlendShapes:blendShapes];

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

      v4 = [anchorsCopy countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v4);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)_notifyClientOfLostFaceWithReason:(int64_t)reason underlyingError:(id)error
{
  errorCopy = error;
  if ([(AXMTARKitCameraInputSource *)self _lastReportedFailure]== 0x7FFFFFFFFFFFFFFFLL || [(AXMTARKitCameraInputSource *)self _lastReportedFailure]!= reason)
  {
    [(AXMTARKitCameraInputSource *)self set_lastReportedFailure:reason];
    if (errorCopy)
    {
      v6 = [NSDictionary dictionaryWithObject:errorCopy forKey:NSUnderlyingErrorKey];
    }

    else
    {
      v6 = 0;
    }

    v7 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:reason userInfo:v6];
    delegate = [(AXMTARKitCameraInputSource *)self delegate];
    [delegate arKitCameraInputSource:self didFailToTrackFaceWithError:v7];
  }
}

- (CGPoint)_project3DVertexOnto2DPlane:(AXMTARKitCameraInputSource *)self
{
  v22 = v2;
  _currentlyTrackedFaceAnchor = [(AXMTARKitCameraInputSource *)self _currentlyTrackedFaceAnchor];
  [_currentlyTrackedFaceAnchor transform];
  v23 = vaddq_f32(v8, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v22.f32[0]), v6, *v22.f32, 1), v7, v22, 2));

  v9 = +[AXMTUtilities sharedInstance];
  v10 = AXMTConvertFromDeviceToInterfaceOrientation([v9 currentInterfaceOrientation]);

  _session = [(AXMTARKitCameraInputSource *)self _session];
  currentFrame = [_session currentFrame];
  camera = [currentFrame camera];

  [camera imageResolution];
  [camera projectPoint:v10 orientation:*vdivq_f32(v23 viewportSize:{vdupq_laneq_s32(v23, 3)).i64, v14, v15}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)handleEventWithProjectedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  motionTrackingMode = [(AXMTARKitCameraInputSource *)self motionTrackingMode];
  if (motionTrackingMode == 2)
  {
    [(AXMTARKitCameraInputSource *)self _convertProjectedPointToScreenCoordinates:0 useSensitivity:x, y];
    [(AXMTARKitCameraInputSource *)self _computeAccelerationModeForPoint:?];
  }

  else if (motionTrackingMode == 1)
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
  delegate = [(AXMTARKitCameraInputSource *)self delegate];
  [delegate arKitCameraInputSource:self didReceivePoint:{v9, v10}];
}

- (CGPoint)_computeAbsoluteModeForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _screenLookAtPoints = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
  v7 = [_screenLookAtPoints count];

  if (v7 == 5)
  {
    _screenLookAtPoints2 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
    [_screenLookAtPoints2 removeObjectAtIndex:0];
  }

  _screenLookAtPoints3 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
  *v28 = x;
  *&v28[1] = y;
  v10 = [NSValue valueWithBytes:v28 objCType:"{CGPoint=dd}"];
  [_screenLookAtPoints3 addObject:v10];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  _screenLookAtPoints4 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
  v12 = [_screenLookAtPoints4 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(_screenLookAtPoints4);
        }

        [*(*(&v24 + 1) + 8 * i) pointValue];
        v15 = v15 + v18;
        v16 = v16 + v19;
      }

      v13 = [_screenLookAtPoints4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
    v16 = 0.0;
  }

  _screenLookAtPoints5 = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
  v21 = [_screenLookAtPoints5 count];

  v22 = v15 / v21;
  v23 = v16 / v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)_computeAccelerationModeForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _velocityBasedPointMapper = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];

  if (!_velocityBasedPointMapper)
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

  _velocityBasedPointMapper2 = [(AXMTARKitCameraInputSource *)self _velocityBasedPointMapper];
  [_velocityBasedPointMapper2 processPoint:{x, y}];
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGPoint)_computeJoystickModeForPoint:(CGPoint)point
{
  v4 = [AXMTUtilities sharedInstance:point.x];
  [v4 screenBoundsAccountingForInterfaceOrientation];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  _pointerMovementMapper = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];

  if (!_pointerMovementMapper)
  {
    v14 = [[AXMTRelativePointerMovementMapper alloc] initWithScreenBounds:v6, v8, v10, v12];
    [(AXMTARKitCameraInputSource *)self set_pointerMovementMapper:v14];

    [(AXMTARKitCameraInputSource *)self _updateAccelerationFactorForPointerMovementMapper];
    [(AXMTARKitCameraInputSource *)self _updateMovementThresholdforPointerMovementMapper];
  }

  _currentlyTrackedFaceAnchor = [(AXMTARKitCameraInputSource *)self _currentlyTrackedFaceAnchor];
  geometry = [_currentlyTrackedFaceAnchor geometry];

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
  [geometry positionForLabeledFacePosition:*v17];
  [(AXMTARKitCameraInputSource *)self _project3DVertexOnto2DPlane:?];
  v20 = v19;
  v22 = v21;
  x = NSZeroPoint.x;
  y = NSZeroPoint.y;
  v60 = v8;
  if ([geometry vertexCount])
  {
    v25 = 0;
    v26 = 1.79769313e308;
    v27 = 1.79769313e308;
    do
    {
      -[AXMTARKitCameraInputSource _project3DVertexOnto2DPlane:](self, "_project3DVertexOnto2DPlane:", *([geometry vertices] + 2 * v25));
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

    while (v25 < [geometry vertexCount]);
  }

  else
  {
    v27 = 1.79769313e308;
    v26 = 1.79769313e308;
  }

  v30 = x - v26;
  _trackingAreaPointMapper = [(AXMTARKitCameraInputSource *)self _trackingAreaPointMapper];

  if (_trackingAreaPointMapper)
  {
    _trackingAreaPointMapper2 = [(AXMTARKitCameraInputSource *)self _trackingAreaPointMapper];
    [_trackingAreaPointMapper2 setTrackingAreaBounds:{v26, v27, v30, y - v27}];

    _trackingAreaPointMapper3 = [(AXMTARKitCameraInputSource *)self _trackingAreaPointMapper];
    [_trackingAreaPointMapper3 updateTrackedPoint:{v20, v22}];

    _trackingAreaPointMapper4 = [(AXMTARKitCameraInputSource *)self _trackingAreaPointMapper];
    [_trackingAreaPointMapper4 normalizedTrackedPoint];
    v36 = v35;
    v38 = v37;

    if ([(AXMTARKitCameraInputSource *)self debugOverlayEnabled])
    {
      [(AXMTARKitCameraInputSource *)self set_headTrackingBounds:v26, v27, v30, y - v27];
      _headTrackingRect = [(AXMTARKitCameraInputSource *)self _headTrackingRect];
      [_headTrackingRect setFrame:{v26, v27, v30, y - v27}];
    }

    _pointerMovementMapper2 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];
    v41 = [_pointerMovementMapper2 processPointInNormalizedTrackingSpace:{v36, v38}];

    _screenLookAtPoints = [(AXMTARKitCameraInputSource *)self _screenLookAtPoints];
    lastObject = [_screenLookAtPoints lastObject];
    [lastObject pointValue];
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
  _pointerMovementMapper = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];

  if (_pointerMovementMapper)
  {
    [(AXMTARKitCameraInputSource *)self sensitivity];
    v5 = (2.0 - 1.0) * v4 + 1.0;
    _pointerMovementMapper2 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];
    [_pointerMovementMapper2 setAccelerationFactor:v5];
  }
}

- (void)_updateMovementThresholdforPointerMovementMapper
{
  _pointerMovementMapper = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];

  if (_pointerMovementMapper)
  {
    [(AXMTARKitCameraInputSource *)self joystickModeMovementThreshold];
    v5 = v4;
    _pointerMovementMapper2 = [(AXMTARKitCameraInputSource *)self _pointerMovementMapper];
    [_pointerMovementMapper2 setNormalizedMovementThreshold:v5];
  }
}

- (CGPoint)_convertProjectedPointToScreenCoordinates:(CGPoint)coordinates useSensitivity:(BOOL)sensitivity
{
  sensitivityCopy = sensitivity;
  y = coordinates.y;
  x = coordinates.x;
  v8 = +[AXMTUtilities sharedInstance];
  [v8 screenBoundsAccountingForInterfaceOrientation];
  v10 = v9;
  v12 = v11;

  v13 = +[AXMTUtilities sharedInstance];
  currentInterfaceOrientation = [v13 currentInterfaceOrientation];

  v15 = v10 * 1.15358884 + -199.61;
  if ((currentInterfaceOrientation - 3) >= 2)
  {
    v15 = v10 * 1.0676812 + -9.52;
  }

  v16 = v15 + x * (v10 * 0.00061318 + -0.00385488);
  v17 = v12 * 0.562768306 + 73.26 + y * (v12 * 0.00032351 + -0.01486606);
  if (sensitivityCopy)
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

- (void)_handleFaceBlendShapes:(id)shapes
{
  shapesCopy = shapes;
  delegate = [(AXMTARKitCameraInputSource *)self delegate];
  if (delegate)
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

    v9 = [shapesCopy objectForKey:*v7];
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

    v12 = [shapesCopy objectForKey:*v10];
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

    v15 = [shapesCopy objectForKey:*v13];
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

    v18 = [shapesCopy objectForKey:*v16];
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

    v21 = [shapesCopy objectForKey:*v19];
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

    v24 = [shapesCopy objectForKey:*v22];
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

    v27 = [shapesCopy objectForKey:*v25];
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

    v30 = [shapesCopy objectForKey:*v28];
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

    v33 = [shapesCopy objectForKey:*v31];
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

    v36 = [shapesCopy objectForKey:*v34];
    [v6 setObject:v36 forKeyedSubscript:AXMTBlendShapeEyeBlinkRight];

    _previousExpressions = [(AXMTARKitCameraInputSource *)self _previousExpressions];
    expressionConfiguration = [(AXMTARKitCameraInputSource *)self expressionConfiguration];
    v61 = 0;
    v62 = 0;
    v39 = [AXSSMotionTrackingExpressionConfiguration processIncomingExpressions:v6 previousExpressions:_previousExpressions expressionConfiguration:expressionConfiguration startExpressionsOutSet:&v62 endExpressionsOutSet:&v61];
    v52 = v62;
    v50 = v61;

    LOBYTE(expressionConfiguration) = objc_opt_respondsToSelector();
    v40 = objc_opt_respondsToSelector();
    if (expressionConfiguration)
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

            [delegate arKitCameraInputSource:self didReceiveExpressionStart:{objc_msgSend(*(*(&v57 + 1) + 8 * i), "unsignedIntegerValue")}];
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

            [delegate arKitCameraInputSource:self didReceiveExpressionEnd:{objc_msgSend(*(*(&v53 + 1) + 8 * j), "unsignedIntegerValue", v50)}];
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