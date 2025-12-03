@interface AXMTCameraBasedLookAtPointTracker
+ (CGPoint)_defaultOnScreenPoint;
- (AXMTCameraBasedLookAtPointTracker)initWithInput:(id)input trackingType:(unint64_t)type;
- (AXMTLookAtPointTrackerDelegate)delegate;
- (BOOL)_isStarted;
- (BOOL)_movementDetectedWithNewPoint:(CGPoint)point;
- (CGPoint)_iOSConvertProjectedPointToScreenCoordinates:(CGPoint)coordinates useSensitivity:(BOOL)sensitivity;
- (CGPoint)_trackedOnScreenPoint;
- (CGSize)_physicalDisplaySizeMM;
- (UIView)debugOverlayRootView;
- (id)_handleDetectedFaceWithProjectedPoint:(double)point pose:(double)pose poseTranslation:(double)translation;
- (void)_clearVideoPreviewLayer;
- (void)_handleDetectedFaceAbsoluteModeWithFaceBounds:(double)bounds pose:(double)pose;
- (void)_handleDetectedFaceHIDModeWithFaceBounds:(CGRect)bounds noseCenter:(CGPoint)center imageSize:(CGSize)size;
- (void)_handleDetectedFaceJoystickModeWithPose:(double)pose poseTranslation:(__n128)translation;
- (void)_iOSComputeAbsoluteModeForPoint:(CGPoint)point;
- (void)_iOSComputeAccelerationModeForPoint:(CGPoint)point;
- (void)_initializeFaceKitFaceTrackerWithInput:(id)input;
- (void)_loadCalibrationValuesFromDefaults;
- (void)_setUpDebugOverlay;
- (void)_signalTrackedImageRelativePoint:(CGPoint)point inBounds:(CGSize)bounds;
- (void)_signalTrackedUnboundedOnScreenPoint:(CGPoint)point boundPoint:(BOOL)boundPoint error:(id)error;
- (void)_storeCalibrationValuesToDefaults;
- (void)_tearDownDebugOverlay;
- (void)_updateAccelerationFactorForPointerMovementMapper;
- (void)_updateDebugOverlay;
- (void)_updateForBacklightState:(int64_t)state;
- (void)_updateMovementThresholdforPointerMovementMapper;
- (void)axmtUtilities_interfaceOrientationChanged:(int64_t)changed;
- (void)faceKitFaceTracker:(id)tracker updatedResult:(id)result;
- (void)recalibrateFace;
- (void)setDebugOverlayEnabled:(BOOL)enabled;
- (void)setInput:(id)input;
- (void)setJoystickModeMovementThreshold:(double)threshold;
- (void)setMotionTrackingMode:(unint64_t)mode;
- (void)setSensitivity:(double)sensitivity;
- (void)startTracking;
- (void)stopTracking;
- (void)updateTrackedOnScreenPoint:(CGPoint)point;
- (void)velocityBasedPointMapper:(id)mapper updatedPoint:(CGPoint)point;
- (void)videoCapturer:(id)capturer didCaptureBufferResult:(id)result;
- (void)videoCapturer:(id)capturer didCaptureTrackedFacesMetadataResult:(id)result;
- (void)videoCapturer:(id)capturer didUpdateFieldOfView:(float)view;
- (void)videoCapturer:(id)capturer didUpdateVideoResolution:(CGSize)resolution;
- (void)videoCapturer:(id)capturer wasInterruptedWithError:(id)error;
- (void)videoCapturerDidDropFrame:(id)frame;
- (void)videoCapturerReceivedNoMetadata:(id)metadata;
- (void)videoFileReader:(id)reader didReadSampleBuffer:(opaqueCMSampleBuffer *)buffer withMetadata:(id)metadata;
- (void)videoFileReaderDidDropFrame:(id)frame;
- (void)visionKitEyeTracker:(id)tracker detectedGaze:(CGPoint)gaze withNonCriticalError:(id)error;
- (void)visionKitEyeTrackerLostFace:(id)face error:(id)error;
@end

@implementation AXMTCameraBasedLookAtPointTracker

- (AXMTCameraBasedLookAtPointTracker)initWithInput:(id)input trackingType:(unint64_t)type
{
  inputCopy = input;
  if (([inputCopy isCamera] & 1) != 0 || objc_msgSend(inputCopy, "isVideoFile"))
  {
    v23.receiver = self;
    v23.super_class = AXMTCameraBasedLookAtPointTracker;
    v7 = [(AXMTCameraBasedLookAtPointTracker *)&v23 init];
    if (!v7)
    {
LABEL_11:
      self = v7;
      selfCopy = self;
      goto LABEL_12;
    }

    v8 = [inputCopy copy];
    input = v7->_input;
    v7->_input = v8;

    v7->_trackingType = type;
    if ([inputCopy isCamera])
    {
      v10 = [[AXMTVideoCapturer alloc] initWithInput:inputCopy];
      p_videoCapturer = &v7->__videoCapturer;
      videoCapturer = v7->__videoCapturer;
      v7->__videoCapturer = v10;

      [(AXMTVideoCapturer *)v7->__videoCapturer setPixelFormatType:875704438];
    }

    else
    {
      if (![inputCopy isVideoFile])
      {
LABEL_10:
        [(AXMTCameraBasedLookAtPointTracker *)v7 _initializeFaceKitFaceTrackerWithInput:inputCopy];
        v16 = dispatch_queue_create("com.apple.accessibility.AXMTCameraBasedLookAtPointTracker.queue", 0);
        controllerQueue = v7->__controllerQueue;
        v7->__controllerQueue = v16;

        v7->_motionTrackingMode = AXSSMotionTrackingDefaultMode;
        *&v7->_sensitivity = AXSSMotionTrackingDefaultSensitivity;
        *&v7->_joystickModeMovementThreshold = AXSSMotionTrackingDefaultJoystickModeMovementThreshold;
        v18 = +[AXSSMotionTrackingExpressionConfiguration defaultExpressionConfiguration];
        expressionConfiguration = v7->_expressionConfiguration;
        v7->_expressionConfiguration = v18;

        v20 = objc_alloc_init(NSMutableArray);
        screenLookAtPoints = v7->__screenLookAtPoints;
        v7->__screenLookAtPoints = v20;

        goto LABEL_11;
      }

      v14 = [[AXMTVideoFileReader alloc] initWithInput:inputCopy];
      p_videoCapturer = &v7->__videoFileReader;
      videoFileReader = v7->__videoFileReader;
      v7->__videoFileReader = v14;
    }

    [*p_videoCapturer setDelegate:v7];
    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (void)_initializeFaceKitFaceTrackerWithInput:(id)input
{
  inputCopy = input;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    v5 = AXSSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTCameraBasedLookAtPointTracker: Using On Device Eye Tracking for iOS!", buf, 2u);
    }

    v6 = objc_alloc_init(AXMTVisionKitEyeTracker);
    [(AXMTCameraBasedLookAtPointTracker *)self set_visionKitEyeTracker:v6];

    _visionKitEyeTracker = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
LABEL_9:
    v10 = _visionKitEyeTracker;
    [_visionKitEyeTracker setDelegate:self];

    goto LABEL_10;
  }

  if ([inputCopy isCamera])
  {
    v8 = AXSSLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AXMTCameraBasedLookAtPointTracker: Using FaceTracking with AVCaptureMetadataOutput for iOS!", v15, 2u);
    }

    v9 = [[AXMTFaceKitFaceTracker alloc] initWithFaceKitPipeline:0];
    [(AXMTCameraBasedLookAtPointTracker *)self set_faceKitFaceTracker:v9];

    _visionKitEyeTracker = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
    goto LABEL_9;
  }

  if ([inputCopy isVideoFile])
  {
    v11 = AXSSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "AXMTCameraBasedLookAtPointTracker: Using FaceKit pipline since input is a video file!", v14, 2u);
    }

    v12 = [[AXMTFaceKitFaceTracker alloc] initWithFaceKitPipeline:1];
    faceKitFaceTracker = self->__faceKitFaceTracker;
    self->__faceKitFaceTracker = v12;

    [(AXMTFaceKitFaceTracker *)self->__faceKitFaceTracker setDelegate:self];
  }

LABEL_10:
}

- (void)setDebugOverlayEnabled:(BOOL)enabled
{
  if (self->_debugOverlayEnabled != enabled)
  {
    self->_debugOverlayEnabled = enabled;
    [(AXMTCameraBasedLookAtPointTracker *)self _updateDebugOverlay];
  }
}

- (void)setMotionTrackingMode:(unint64_t)mode
{
  if (self->_motionTrackingMode != mode)
  {
    self->_motionTrackingMode = mode;
    _velocityBasedPointMapper = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
    [_velocityBasedPointMapper reset];

    [(AXMTCameraBasedLookAtPointTracker *)self set_velocityBasedPointMapper:0];
    [(AXMTCameraBasedLookAtPointTracker *)self _clearVideoPreviewLayer];
  }

  v5 = +[NSMutableArray array];
  [(AXMTCameraBasedLookAtPointTracker *)self set_screenLookAtPoints:v5];
}

- (void)_updateAccelerationFactorForPointerMovementMapper
{
  [(AXMTCameraBasedLookAtPointTracker *)self sensitivity];
  v4 = (2.0 - 1.0) * v3 + 1.0;
  _pointerMovementMapper = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];
  [_pointerMovementMapper setAccelerationFactor:v4];
}

- (void)_updateMovementThresholdforPointerMovementMapper
{
  _pointerMovementMapper = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];

  if (_pointerMovementMapper)
  {
    [(AXMTCameraBasedLookAtPointTracker *)self joystickModeMovementThreshold];
    v5 = v4;
    _pointerMovementMapper2 = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];
    [_pointerMovementMapper2 setNormalizedMovementThreshold:v5];
  }
}

- (void)setSensitivity:(double)sensitivity
{
  if (vabdd_f64(self->_sensitivity, sensitivity) > 2.22044605e-16)
  {
    self->_sensitivity = sensitivity;
    _velocityBasedPointMapper = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];

    if (_velocityBasedPointMapper)
    {
      _velocityBasedPointMapper2 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
      [_velocityBasedPointMapper2 setSensitivity:sensitivity];
    }

    [(AXMTCameraBasedLookAtPointTracker *)self _updateAccelerationFactorForPointerMovementMapper];
  }
}

- (void)setJoystickModeMovementThreshold:(double)threshold
{
  if (vabdd_f64(self->_joystickModeMovementThreshold, threshold) > 2.22044605e-16)
  {
    self->_joystickModeMovementThreshold = threshold;
    [(AXMTCameraBasedLookAtPointTracker *)self _updateMovementThresholdforPointerMovementMapper];
  }
}

- (void)setInput:(id)input
{
  inputCopy = input;
  if ((-[AXSSMotionTrackingInput isEqual:](self->_input, "isEqual:", inputCopy) & 1) != 0 || ([inputCopy isCamera] & 1) == 0 && !objc_msgSend(inputCopy, "isVideoFile"))
  {
    goto LABEL_30;
  }

  v5 = [inputCopy copy];
  input = self->_input;
  self->_input = v5;

  [(AXMTCameraBasedLookAtPointTracker *)self _loadCalibrationValuesFromDefaults];
  _isStarted = [(AXMTCameraBasedLookAtPointTracker *)self _isStarted];
  debugOverlayEnabled = [(AXMTCameraBasedLookAtPointTracker *)self debugOverlayEnabled];
  if ([inputCopy isCamera])
  {
    _videoCapturer = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
    v10 = _videoCapturer == 0;
  }

  else
  {
    v10 = 0;
  }

  if ([inputCopy isVideoFile])
  {
    _videoFileReader = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    v12 = _videoFileReader == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v10 || v12)
  {
    [(AXMTCameraBasedLookAtPointTracker *)self set_hasFace:0];
    [(AXMTCameraBasedLookAtPointTracker *)self set_error:0];
    [(AXMTCameraBasedLookAtPointTracker *)self set_previousExpressions:0];
    [objc_opt_class() _defaultOnScreenPoint];
    [(AXMTCameraBasedLookAtPointTracker *)self set_trackedOnScreenPoint:?];
    [(AXMTCameraBasedLookAtPointTracker *)self set_faceKitFaceTracker:0];
    [(AXMTCameraBasedLookAtPointTracker *)self set_visionKitEyeTracker:0];
    [(AXMTCameraBasedLookAtPointTracker *)self _initializeFaceKitFaceTrackerWithInput:inputCopy];
    if (v10)
    {
      v13 = AXSSLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1000168F0(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      _videoFileReader2 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
      [_videoFileReader2 stop];

      _videoFileReader3 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
      [_videoFileReader3 setDelegate:0];

      [(AXMTCameraBasedLookAtPointTracker *)self set_videoFileReader:0];
      v23 = [[AXMTVideoCapturer alloc] initWithInput:inputCopy];
      [(AXMTCameraBasedLookAtPointTracker *)self set_videoCapturer:v23];

      _videoCapturer2 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [_videoCapturer2 setPixelFormatType:875704438];

      _videoCapturer3 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [_videoCapturer3 setDelegate:self];

      if (!_isStarted)
      {
        goto LABEL_28;
      }

      _videoCapturer4 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
    }

    else
    {
      if (!v12)
      {
        goto LABEL_28;
      }

      v29 = AXSSLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_100016878(v29, v30, v31, v32, v33, v34, v35, v36);
      }

      _videoCapturer5 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [_videoCapturer5 stop];

      _videoCapturer6 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [_videoCapturer6 setDelegate:0];

      [(AXMTCameraBasedLookAtPointTracker *)self set_videoCapturer:0];
      v39 = [[AXMTVideoFileReader alloc] initWithInput:inputCopy];
      [(AXMTCameraBasedLookAtPointTracker *)self set_videoFileReader:v39];

      _videoFileReader4 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
      [_videoFileReader4 setDelegate:self];

      if (!_isStarted)
      {
        goto LABEL_28;
      }

      _videoCapturer4 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    }

    v41 = _videoCapturer4;
    [_videoCapturer4 start];
  }

  else
  {
    _videoCapturer7 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];

    if (_videoCapturer7)
    {
      _videoCapturer8 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
    }

    else
    {
      _videoFileReader5 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];

      if (!_videoFileReader5)
      {
        goto LABEL_28;
      }

      _videoCapturer8 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    }

    v41 = _videoCapturer8;
    [_videoCapturer8 setInput:inputCopy];
  }

LABEL_28:
  if (debugOverlayEnabled)
  {
    _videoPreviewLayer = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
    [_videoPreviewLayer removeFromSuperlayer];

    [(AXMTCameraBasedLookAtPointTracker *)self set_videoPreviewLayer:0];
    [(AXMTCameraBasedLookAtPointTracker *)self _updateDebugOverlay];
  }

LABEL_30:
}

- (void)startTracking
{
  if (![(AXMTCameraBasedLookAtPointTracker *)self _isStarted])
  {
    v3 = +[AXMTUtilities sharedInstance];
    [v3 registerListener:self needsPhysicalOrientationEvents:0];

    v4 = +[BLSBacklight sharedBacklight];
    [v4 addObserver:self];

    v5 = +[BLSBacklight sharedBacklight];
    -[AXMTCameraBasedLookAtPointTracker _updateForBacklightState:](self, "_updateForBacklightState:", [v5 backlightState]);

    [(AXMTCameraBasedLookAtPointTracker *)self set_hasFace:0];
    [(AXMTCameraBasedLookAtPointTracker *)self set_error:0];
    v6 = +[AXMTUtilities sharedInstance];
    [v6 screenBoundsAccountingForInterfaceOrientation];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [[AXMTRelativePointerMovementMapper alloc] initWithScreenBounds:v8, v10, v12, v14];
    [(AXMTCameraBasedLookAtPointTracker *)self set_pointerMovementMapper:v15];

    [(AXMTCameraBasedLookAtPointTracker *)self _updateMovementThresholdforPointerMovementMapper];
    [objc_opt_class() _defaultOnScreenPoint];
    [(AXMTCameraBasedLookAtPointTracker *)self set_trackedOnScreenPoint:?];
    [(AXMTCameraBasedLookAtPointTracker *)self _updateAccelerationFactorForPointerMovementMapper];
    v16 = AXSSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100016968(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    _videoCapturer = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];

    if (_videoCapturer)
    {
      _videoCapturer2 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
    }

    else
    {
      _videoFileReader = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];

      if (!_videoFileReader)
      {
LABEL_9:
        [(AXMTCameraBasedLookAtPointTracker *)self _updateDebugOverlay];
        [(AXMTCameraBasedLookAtPointTracker *)self _loadCalibrationValuesFromDefaults];
        return;
      }

      _videoCapturer2 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    }

    v27 = _videoCapturer2;
    [_videoCapturer2 start];

    goto LABEL_9;
  }
}

- (void)stopTracking
{
  if (![(AXMTCameraBasedLookAtPointTracker *)self _isStarted])
  {
    return;
  }

  [(AXMTCameraBasedLookAtPointTracker *)self set_hasFace:0];
  [(AXMTCameraBasedLookAtPointTracker *)self set_error:0];
  [(AXMTCameraBasedLookAtPointTracker *)self set_pointerMovementMapper:0];
  _velocityBasedPointMapper = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
  [_velocityBasedPointMapper reset];

  [(AXMTCameraBasedLookAtPointTracker *)self set_velocityBasedPointMapper:0];
  _videoCapturer = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];

  if (_videoCapturer)
  {
    _videoCapturer2 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
LABEL_7:
    v7 = _videoCapturer2;
    [_videoCapturer2 stop];

    goto LABEL_8;
  }

  _videoFileReader = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];

  if (_videoFileReader)
  {
    _videoCapturer2 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    goto LABEL_7;
  }

LABEL_8:
  [(AXMTCameraBasedLookAtPointTracker *)self _tearDownDebugOverlay];
  _faceKitFaceTracker = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
  [_faceKitFaceTracker setDelegate:0];

  [(AXMTCameraBasedLookAtPointTracker *)self set_faceKitFaceTracker:0];
  _visionKitEyeTracker = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
  [_visionKitEyeTracker setDelegate:0];

  [(AXMTCameraBasedLookAtPointTracker *)self set_visionKitEyeTracker:0];
  [(AXMTCameraBasedLookAtPointTracker *)self set_screenLookAtPoints:0];
  v10 = +[BLSBacklight sharedBacklight];
  [v10 removeObserver:self];

  v11 = +[AXMTUtilities sharedInstance];
  [v11 unregisterListener:self];
}

- (void)recalibrateFace
{
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    _visionKitEyeTracker = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
    [_visionKitEyeTracker recalibrateFace];
  }

  [(AXMTCameraBasedLookAtPointTracker *)self set_needsRecalibration:1];
}

- (void)videoCapturer:(id)capturer didCaptureBufferResult:(id)result
{
  resultCopy = result;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    _visionKitEyeTracker = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
    buffer = [resultCopy buffer];
    metadataObjects = [resultCopy metadataObjects];

    [_visionKitEyeTracker processSampleBuffer:buffer metadata:metadataObjects];
  }

  else
  {
    _visionKitEyeTracker = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
    buffer2 = [resultCopy buffer];

    [_visionKitEyeTracker processVideoFrame:buffer2];
  }
}

- (void)videoCapturer:(id)capturer didCaptureTrackedFacesMetadataResult:(id)result
{
  resultCopy = result;
  _faceKitFaceTracker = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
  metadataObjects = [resultCopy metadataObjects];

  [_faceKitFaceTracker processTrackedFacesMetadata:metadataObjects];
}

- (void)videoCapturerDidDropFrame:(id)frame
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000169E0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)videoCapturerReceivedNoMetadata:(id)metadata
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100016A18(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)videoCapturer:(id)capturer wasInterruptedWithError:(id)error
{
  errorCopy = error;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
  }

  else
  {
    [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
  }
  v6 = ;
  [v6 failedToTrackFaceWithError:errorCopy];
}

- (void)videoCapturer:(id)capturer didUpdateFieldOfView:(float)view
{
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    _visionKitEyeTracker = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
    *&v6 = view;
    [_visionKitEyeTracker didUpdateFieldOfView:v6];
  }
}

- (void)videoCapturer:(id)capturer didUpdateVideoResolution:(CGSize)resolution
{
  height = resolution.height;
  width = resolution.width;
  _faceKitFaceTracker = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
  [_faceKitFaceTracker didUpdateVideoResolution:{width, height}];
}

- (void)_updateForBacklightState:(int64_t)state
{
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AXMTCameraBasedLookAtPointTracker _updateForBacklightState:]";
    v9 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: backlight state was updated to: %ld", &v7, 0x16u);
  }

  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    _videoCapturer = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
    [_videoCapturer reconfigureCaptureDeviceForBacklightOff:state == 0];
  }
}

- (BOOL)_movementDetectedWithNewPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AXMTCameraBasedLookAtPointTracker *)self _trackedOnScreenPoint];
  if (vabdd_f64(x, v6) > 2.22044605e-16)
  {
    return 1;
  }

  [(AXMTCameraBasedLookAtPointTracker *)self _trackedOnScreenPoint];
  return vabdd_f64(y, v8) > 2.22044605e-16;
}

- (void)_clearVideoPreviewLayer
{
  _videoPreviewLayer = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
  [_videoPreviewLayer renderFaceKitResult:0];

  _videoPreviewLayer2 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
  [_videoPreviewLayer2 renderPointOfInterest:NSZeroPoint.x trackingArea:{NSZeroPoint.y, NSZeroRect.origin.x, NSZeroRect.origin.y, NSZeroRect.size.width, NSZeroRect.size.height}];
}

- (BOOL)_isStarted
{
  _videoCapturer = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
  if ([_videoCapturer isStarted])
  {
    isStarted = 1;
  }

  else
  {
    _videoFileReader = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    isStarted = [_videoFileReader isStarted];
  }

  return isStarted;
}

- (void)_loadCalibrationValuesFromDefaults
{
  v3 = +[NSUserDefaults motionTrackingUserDefaults];
  v4 = [v3 objectForKey:@"recalibratedValuesDict"];

  if (v4)
  {
    input = [(AXMTCameraBasedLookAtPointTracker *)self input];
    uniqueIdentifier = [input uniqueIdentifier];
    v7 = [v4 objectForKeyedSubscript:uniqueIdentifier];

    if (v7)
    {
      v8 = [v7 objectForKeyedSubscript:@"recalibratedYaw"];
      v9 = [v7 objectForKeyedSubscript:@"recalibratedPitch"];
      if (v8)
      {
        v10 = AXSSLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100016A50(v8);
        }

        [(AXMTCameraBasedLookAtPointTracker *)self set_calibratedYaw:v8];
      }

      if (v9)
      {
        v11 = AXSSLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_100016ADC(v9);
        }

        [(AXMTCameraBasedLookAtPointTracker *)self set_calibratedPitch:v9];
      }
    }
  }
}

- (void)_storeCalibrationValuesToDefaults
{
  input = [(AXMTCameraBasedLookAtPointTracker *)self input];
  uniqueIdentifier = [input uniqueIdentifier];

  if (uniqueIdentifier)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = +[NSUserDefaults motionTrackingUserDefaults];
    v7 = [v6 objectForKey:@"recalibratedValuesDict"];

    if (v7)
    {
      [v5 setDictionary:v7];
    }

    v8 = +[NSMutableDictionary dictionary];
    input2 = [(AXMTCameraBasedLookAtPointTracker *)self input];
    uniqueIdentifier2 = [input2 uniqueIdentifier];
    v11 = [v7 objectForKey:uniqueIdentifier2];

    if (v11)
    {
      [v8 setDictionary:v11];
    }

    v12 = AXSSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100016B68(self, v12);
    }

    _calibratedYaw = [(AXMTCameraBasedLookAtPointTracker *)self _calibratedYaw];
    [v8 setObject:_calibratedYaw forKeyedSubscript:@"recalibratedYaw"];

    _calibratedPitch = [(AXMTCameraBasedLookAtPointTracker *)self _calibratedPitch];
    [v8 setObject:_calibratedPitch forKeyedSubscript:@"recalibratedPitch"];

    input3 = [(AXMTCameraBasedLookAtPointTracker *)self input];
    uniqueIdentifier3 = [input3 uniqueIdentifier];
    [v5 setObject:v8 forKeyedSubscript:uniqueIdentifier3];

    v17 = +[NSUserDefaults motionTrackingUserDefaults];
    [v17 setObject:v5 forKey:@"recalibratedValuesDict"];
  }

  else
  {
    v5 = AXSSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100016C4C(v5);
    }
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

  _velocityBasedPointMapper = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
  [_velocityBasedPointMapper setBounds:{v6, v8, v10, v12}];

  _pointerMovementMapper = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];
  [_pointerMovementMapper setScreenBounds:{v6, v8, v10, v12}];
}

- (void)faceKitFaceTracker:(id)tracker updatedResult:(id)result
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014204;
  v6[3] = &unk_100048948;
  resultCopy = result;
  selfCopy = self;
  v5 = resultCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)visionKitEyeTracker:(id)tracker detectedGaze:(CGPoint)gaze withNonCriticalError:(id)error
{
  y = gaze.y;
  x = gaze.x;
  trackerCopy = tracker;
  errorCopy = error;
  [(AXMTCameraBasedLookAtPointTracker *)self set_hasFace:1];
  [(AXMTCameraBasedLookAtPointTracker *)self set_error:0];
  objc_initWeak(&location, self);
  _controllerQueue = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001495C;
  block[3] = &unk_100048EB0;
  objc_copyWeak(v15, &location);
  v15[1] = *&x;
  v15[2] = *&y;
  v14 = errorCopy;
  v12 = errorCopy;
  dispatch_async(_controllerQueue, block);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

- (void)visionKitEyeTrackerLostFace:(id)face error:(id)error
{
  errorCopy = error;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _hasFace])
  {
    v6 = AXSSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100016D3C();
    }

    [(AXMTCameraBasedLookAtPointTracker *)self set_hasFace:0];
    goto LABEL_6;
  }

  _error = [(AXMTCameraBasedLookAtPointTracker *)self _error];
  v8 = [_error isEqual:errorCopy];

  if ((v8 & 1) == 0)
  {
LABEL_6:
    [(AXMTCameraBasedLookAtPointTracker *)self set_error:errorCopy];
    delegate = [(AXMTCameraBasedLookAtPointTracker *)self delegate];
    [delegate lookAtPointTrackerLostFace:self error:errorCopy];
  }

  [(AXMTCameraBasedLookAtPointTracker *)self _clearVideoPreviewLayer];
}

- (id)_handleDetectedFaceWithProjectedPoint:(double)point pose:(double)pose poseTranslation:(double)translation
{
  result = [self motionTrackingMode];
  if (result == 1)
  {

    return [self _handleDetectedFaceJoystickModeWithPose:pose poseTranslation:{translation, a6, a7, a8}];
  }

  else if (result != 3)
  {
    if (result == 2)
    {
      [self _iOSConvertProjectedPointToScreenCoordinates:0 useSensitivity:{a2, point}];

      return [self _iOSComputeAccelerationModeForPoint:{v12, v13, v14, v15, v16}];
    }

    else
    {
      [self _iOSConvertProjectedPointToScreenCoordinates:1 useSensitivity:{a2, point}];

      return [self _iOSComputeAbsoluteModeForPoint:{v17, v18, v19, v20, v21}];
    }
  }

  return result;
}

- (void)_handleDetectedFaceHIDModeWithFaceBounds:(CGRect)bounds noseCenter:(CGPoint)center imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = center.x / size.width;
  v9 = center.y / size.height;
  v10 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer:bounds.origin.x];
  [v10 renderPointOfInterest:1.0 - v8 trackingArea:{v9, NSZeroRect.origin.x, NSZeroRect.origin.y, NSZeroRect.size.width, NSZeroRect.size.height}];

  objc_initWeak(&location, self);
  _controllerQueue = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100014CC0;
  v12[3] = &unk_100048ED8;
  objc_copyWeak(v13, &location);
  v13[1] = *&v8;
  v13[2] = *&v9;
  v13[3] = *&width;
  v13[4] = *&height;
  dispatch_async(_controllerQueue, v12);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)_handleDetectedFaceJoystickModeWithPose:(double)pose poseTranslation:(__n128)translation
{
  v5 = AXMTYawUsingPose(a2.n128_f64[0], pose, translation.n128_f32[0]);
  v6 = AXMTPitchUsingPose(a2.n128_f64[0], pose, translation);
  if ([self _needsRecalibration])
  {
    *&v7 = v5;
    v8 = [NSNumber numberWithFloat:v7];
    [self set_calibratedYaw:v8];

    *&v9 = v6;
    v10 = [NSNumber numberWithFloat:v9];
    [self set_calibratedPitch:v10];

    [self _storeCalibrationValuesToDefaults];
    [self set_needsRecalibration:0];
  }

  _calibratedYaw = [self _calibratedYaw];

  v12 = 0.0;
  v13 = 0.0;
  if (_calibratedYaw)
  {
    _calibratedYaw2 = [self _calibratedYaw];
    [_calibratedYaw2 floatValue];
    v13 = v15;
  }

  _calibratedPitch = [self _calibratedPitch];

  if (_calibratedPitch)
  {
    _calibratedPitch2 = [self _calibratedPitch];
    [_calibratedPitch2 floatValue];
    v12 = v18;
  }

  _calibratedYaw3 = [self _calibratedYaw];
  if (!_calibratedYaw3)
  {
    [self _calibratedPitch];
  }

  v20 = v5 - v13;
  v21 = v6 - v12;
  v22 = +[AXMTUtilities sharedInstance];
  currentInterfaceOrientation = [v22 currentInterfaceOrientation];

  v24 = 0.0;
  if (currentInterfaceOrientation <= 2)
  {
    if (currentInterfaceOrientation >= 2)
    {
      v25 = 0.0;
      if (currentInterfaceOrientation == 2)
      {
        v25 = -v21;
        v24 = v20;
      }

      goto LABEL_17;
    }

LABEL_15:
    v25 = v21;
    v26 = -v20;
LABEL_16:
    v24 = v26;
    goto LABEL_17;
  }

  if ((currentInterfaceOrientation - 5) < 2)
  {
    goto LABEL_15;
  }

  if (currentInterfaceOrientation != 3)
  {
    v25 = 0.0;
    if (currentInterfaceOrientation != 4)
    {
      goto LABEL_17;
    }

    v25 = -v20;
    v26 = -v21;
    goto LABEL_16;
  }

  v25 = v20;
  v24 = v21;
LABEL_17:
  v27 = +[AXMTUtilities sharedInstance];
  [v27 screenBoundsAccountingForInterfaceOrientation];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  _pointerMovementMapper = [self _pointerMovementMapper];

  if (!_pointerMovementMapper)
  {
    v37 = [[AXMTRelativePointerMovementMapper alloc] initWithScreenBounds:v29, v31, v33, v35];
    [self set_pointerMovementMapper:v37];

    [self _updateAccelerationFactorForPointerMovementMapper];
    [self _updateMovementThresholdforPointerMovementMapper];
  }

  _screenLookAtPoints = [self _screenLookAtPoints];
  v39 = [_screenLookAtPoints count];

  if (v39)
  {
    _pointerMovementMapper2 = [self _pointerMovementMapper];
    v41 = [_pointerMovementMapper2 processPointInNormalizedTrackingSpace:{v25, v24 + 0.05}];

    _screenLookAtPoints2 = [self _screenLookAtPoints];
    lastObject = [_screenLookAtPoints2 lastObject];
    [lastObject pointValue];
    v45 = v44;
    v47 = v46;

    [v41 delta];
    v49 = fmin(fmax(v33 * -0.0055844577 + 9.311967, 3.593), 7.0) * v48;
    [v41 delta];
    v51 = AXMTConstrainPointWithinBounds(v45 + v49, v47 + fmin(fmax(v35 * 0.0108096 + -8.68544, 1.0), 2.384) * v50, v29, v31, v33);
    v53 = v52;
    *v63 = v51;
    *&v63[1] = v52;
    v54 = [NSValue valueWithBytes:v63 objCType:"{CGPoint=dd}"];
    v55 = [NSMutableArray arrayWithObject:v54];
    [self set_screenLookAtPoints:v55];
  }

  else
  {
    v51 = v33 * 0.5;
    v53 = v35 * 0.5;
    *v64 = v51;
    *&v64[1] = v53;
    v41 = [NSValue valueWithBytes:v64 objCType:"{CGPoint=dd}"];
    v54 = [NSMutableArray arrayWithObject:v41];
    [self set_screenLookAtPoints:v54];
  }

  objc_initWeak(&location, self);
  _controllerQueue = [self _controllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015218;
  block[3] = &unk_100048F00;
  objc_copyWeak(v61, &location);
  v61[1] = *&v51;
  v61[2] = *&v53;
  dispatch_async(_controllerQueue, block);

  objc_destroyWeak(v61);
  objc_destroyWeak(&location);
}

- (void)_handleDetectedFaceAbsoluteModeWithFaceBounds:(double)bounds pose:(double)pose
{
  v10 = +[AXMTUtilities sharedInstance];
  [v10 screenBoundsAccountingForInterfaceOrientation];
  v52 = v12;
  v54 = v11;
  v14 = v13;
  v16 = v15;

  v69 = 0;
  v68 = 0;
  [VNFaceObservation computeYawPitchRollFromPoseMatrix:&v69 + 4 outputYaw:&v69 outputPitch:&v68 outputRoll:a6, a7, a8, a9];
  v17 = +[AXMTUtilities sharedInstance];
  currentInterfaceOrientation = [v17 currentInterfaceOrientation];

  if (currentInterfaceOrientation <= 6)
  {
    if (((1 << currentInterfaceOrientation) & 0x67) != 0)
    {
      *&v69 = -*&v69;
    }

    else
    {
      *(&v69 + 1) = -*(&v69 + 1);
    }
  }

  v19 = vcvtq_f64_f32(vmul_f32(__PAIR64__(v69, HIDWORD(v69)), 0xC1A0000040000000));
  __asm { FMOV            V1.2D, #1.0 }

  v25 = vbslq_s8(vcgtq_f64(v19, _Q1), _Q1, v19);
  __asm { FMOV            V1.2D, #-1.0 }

  v64 = vmaxnmq_f64(v25, _Q1);
  _pointerMovementMapper = [self _pointerMovementMapper];
  v28 = [_pointerMovementMapper processPointInNormalizedTrackingSpace:*&v64];

  [self _trackedOnScreenPoint];
  v30 = v29;
  v32 = v31;
  [v28 delta];
  v34 = v30 + v33;
  [v28 delta];
  v36 = v32 + v35;
  _videoPreviewLayer = [self _videoPreviewLayer];
  [_videoPreviewLayer bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v70.origin.x = v39;
  v70.origin.y = v41;
  v70.size.width = v43;
  v70.size.height = v45;
  if (!CGRectIsEmpty(v70))
  {
    v46 = AXMTConstrainPointWithinBounds(v34, v36, v55, v53, v14);
    v48 = v47 / v16;
    v49 = 1.0 - v46 / v14;
    _videoPreviewLayer2 = [self _videoPreviewLayer];
    [_videoPreviewLayer2 renderPointOfInterest:v49 trackingArea:{v48, a2, bounds, pose, a5}];
  }

  objc_initWeak(&location, self);
  _controllerQueue = [self _controllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015534;
  block[3] = &unk_100048F00;
  objc_copyWeak(v66, &location);
  v66[1] = *&v34;
  v66[2] = *&v36;
  dispatch_async(_controllerQueue, block);

  objc_destroyWeak(v66);
  objc_destroyWeak(&location);
}

- (CGPoint)_iOSConvertProjectedPointToScreenCoordinates:(CGPoint)coordinates useSensitivity:(BOOL)sensitivity
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
    [(AXMTCameraBasedLookAtPointTracker *)self sensitivity];
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

- (void)_iOSComputeAbsoluteModeForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _screenLookAtPoints = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
  v7 = [_screenLookAtPoints count];

  if (v7 == 5)
  {
    _screenLookAtPoints2 = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
    [_screenLookAtPoints2 removeObjectAtIndex:0];
  }

  _screenLookAtPoints3 = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
  *v29 = x;
  *&v29[1] = y;
  v10 = [NSValue valueWithBytes:v29 objCType:"{CGPoint=dd}"];
  [_screenLookAtPoints3 addObject:v10];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  _screenLookAtPoints4 = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
  v12 = [_screenLookAtPoints4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = *v26;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(_screenLookAtPoints4);
        }

        [*(*(&v25 + 1) + 8 * i) pointValue];
        v15 = v15 + v17;
        v14 = v14 + v18;
      }

      v12 = [_screenLookAtPoints4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
    v15 = 0.0;
  }

  _screenLookAtPoints5 = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
  v20 = [_screenLookAtPoints5 count];

  objc_initWeak(&location, self);
  _controllerQueue = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100015958;
  v22[3] = &unk_100048F00;
  objc_copyWeak(v23, &location);
  *&v23[1] = v15 / v20;
  *&v23[2] = v14 / v20;
  dispatch_async(_controllerQueue, v22);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)_iOSComputeAccelerationModeForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _velocityBasedPointMapper = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];

  if (!_velocityBasedPointMapper)
  {
    v7 = [AXMTVelocityBasedPointMapper alloc];
    v8 = +[AXMTUtilities sharedInstance];
    [v8 screenBoundsAccountingForInterfaceOrientation];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(AXMTCameraBasedLookAtPointTracker *)self sensitivity];
    v18 = [(AXMTVelocityBasedPointMapper *)v7 initWithBounds:v10 sensitivity:v12, v14, v16, v17];
    [(AXMTCameraBasedLookAtPointTracker *)self set_velocityBasedPointMapper:v18];

    _velocityBasedPointMapper2 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
    [_velocityBasedPointMapper2 setDelegate:self];
  }

  _velocityBasedPointMapper3 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
  [_velocityBasedPointMapper3 processPoint:{x, y}];
}

- (void)_signalTrackedImageRelativePoint:(CGPoint)point inBounds:(CGSize)bounds
{
  height = bounds.height;
  width = bounds.width;
  y = point.y;
  x = point.x;
  delegate = [(AXMTCameraBasedLookAtPointTracker *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(AXMTCameraBasedLookAtPointTracker *)self delegate];
    [delegate2 lookAtPointTracker:self trackedImageRelativePoint:x inBounds:{y, width, height}];
  }
}

- (void)_signalTrackedUnboundedOnScreenPoint:(CGPoint)point boundPoint:(BOOL)boundPoint error:(id)error
{
  boundPointCopy = boundPoint;
  y = point.y;
  x = point.x;
  errorCopy = error;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _movementDetectedWithNewPoint:x, y])
  {
    if (boundPointCopy)
    {
      v9 = +[AXMTUtilities sharedInstance];
      [v9 screenBoundsAccountingForInterfaceOrientation];
      v11 = v10;
      v13 = v12;
      v15 = v14;

      x = AXMTConstrainPointWithinBounds(x, y, v11, v13, v15);
      y = v16;
    }

    [(AXMTCameraBasedLookAtPointTracker *)self set_trackedOnScreenPoint:x, y];
    delegate = [(AXMTCameraBasedLookAtPointTracker *)self delegate];
    v18 = delegate;
    if (errorCopy)
    {
      [delegate lookAtPointTracker:self trackedOnScreenPoint:x error:y];
    }

    else
    {
      [delegate lookAtPointTracker:self trackedOnScreenPoint:{x, y}];
    }
  }
}

- (void)_updateDebugOverlay
{
  if ([(AXMTCameraBasedLookAtPointTracker *)self debugOverlayEnabled])
  {

    [(AXMTCameraBasedLookAtPointTracker *)self _setUpDebugOverlay];
  }

  else
  {

    [(AXMTCameraBasedLookAtPointTracker *)self _tearDownDebugOverlay];
  }
}

- (void)_setUpDebugOverlay
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTCameraBasedLookAtPointTracker: _setupDebugOverlay:", v30, 2u);
  }

  _videoPreviewLayer = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];

  if (!_videoPreviewLayer)
  {
    _videoCapturer = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];

    if (_videoCapturer)
    {
      v6 = [AXMTVideoPreviewLayer alloc];
      _videoCapturer2 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      captureSession = [_videoCapturer2 captureSession];
      _videoCapturer3 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [_videoCapturer3 resolution];
      v10 = [(AXMTVideoPreviewLayer *)v6 initWithAVCaptureSession:captureSession captureDeviceResolution:?];
      [(AXMTCameraBasedLookAtPointTracker *)self set_videoPreviewLayer:v10];

      initWithSampleBufferLayer = +[AXMTUtilities sharedInstance];
      [(AXMTVideoPreviewLayer *)initWithSampleBufferLayer screenBoundsAccountingForInterfaceOrientation];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      _videoPreviewLayer2 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
      [_videoPreviewLayer2 setFrame:{v13, v15, v17, v19}];

LABEL_8:
      goto LABEL_9;
    }

    _videoFileReader = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];

    if (_videoFileReader)
    {
      initWithSampleBufferLayer = [[AXMTVideoPreviewLayer alloc] initWithSampleBufferLayer];
      [(AXMTCameraBasedLookAtPointTracker *)self set_videoPreviewLayer:initWithSampleBufferLayer];
      goto LABEL_8;
    }
  }

LABEL_9:
  v22 = [UIView alloc];
  v23 = +[AXMTUtilities sharedInstance];
  [v23 screenBoundsAccountingForInterfaceOrientation];
  v24 = [v22 initWithFrame:?];
  [(AXMTCameraBasedLookAtPointTracker *)self set_rootView:v24];

  debugOverlayRootView = [(AXMTCameraBasedLookAtPointTracker *)self debugOverlayRootView];
  _rootView = [(AXMTCameraBasedLookAtPointTracker *)self _rootView];
  [debugOverlayRootView addSubview:_rootView];

  _rootView2 = [(AXMTCameraBasedLookAtPointTracker *)self _rootView];
  layer = [_rootView2 layer];
  _videoPreviewLayer3 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
  [layer addSublayer:_videoPreviewLayer3];
}

- (void)_tearDownDebugOverlay
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AXMTCameraBasedLookAtPointTracker: _tearDownDebugOverlay:", v3, 2u);
  }
}

+ (CGPoint)_defaultOnScreenPoint
{
  v2 = +[AXMTUtilities sharedInstance];
  [v2 screenBoundsAccountingForInterfaceOrientation];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4 + v8 * 0.5;
  v12 = v6 + v10 * 0.5;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)updateTrackedOnScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _isStarted])
  {
    [(AXMTCameraBasedLookAtPointTracker *)self _trackedOnScreenPoint];
    v32.x = v6;
    v32.y = v7;
    v31.x = x;
    v31.y = y;
    if (!NSEqualPoints(v31, v32))
    {
      _pointerMovementMapper = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];

      if (_pointerMovementMapper)
      {
        _pointerMovementMapper2 = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];
        [_pointerMovementMapper2 reset];
      }

      _velocityBasedPointMapper = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];

      if (_velocityBasedPointMapper)
      {
        v11 = +[AXMTUtilities sharedInstance];
        [v11 screenBoundsAccountingForInterfaceOrientation];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        _velocityBasedPointMapper2 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
        [_velocityBasedPointMapper2 bounds];
        v22 = (x - v13) / v17 * v21;
        _velocityBasedPointMapper3 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
        [_velocityBasedPointMapper3 bounds];
        v25 = (y - v15) / v19 * v24;

        _velocityBasedPointMapper4 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
        [_velocityBasedPointMapper4 resetToPoint:{v22, v25}];
      }

      objc_initWeak(&location, self);
      _controllerQueue = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100016240;
      v28[3] = &unk_100048F00;
      objc_copyWeak(v29, &location);
      v29[1] = *&x;
      v29[2] = *&y;
      dispatch_async(_controllerQueue, v28);

      objc_destroyWeak(v29);
      objc_destroyWeak(&location);
    }
  }
}

- (void)velocityBasedPointMapper:(id)mapper updatedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  mapperCopy = mapper;
  objc_initWeak(&location, self);
  _controllerQueue = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000163A8;
  v9[3] = &unk_100048F00;
  objc_copyWeak(v10, &location);
  v10[1] = *&x;
  v10[2] = *&y;
  dispatch_async(_controllerQueue, v9);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)videoFileReaderDidDropFrame:(id)frame
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000169E0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)videoFileReader:(id)reader didReadSampleBuffer:(opaqueCMSampleBuffer *)buffer withMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    _visionKitEyeTracker = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
    [_visionKitEyeTracker processSampleBuffer:buffer metadata:metadataCopy];
  }

  else
  {
    _faceKitFaceTracker = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
    [_faceKitFaceTracker processVideoFrame:buffer metadata:metadataCopy];

    _visionKitEyeTracker = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
    [_visionKitEyeTracker drawSample:buffer];
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

- (CGPoint)_trackedOnScreenPoint
{
  x = self->__trackedOnScreenPoint.x;
  y = self->__trackedOnScreenPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)_physicalDisplaySizeMM
{
  width = self->__physicalDisplaySizeMM.width;
  height = self->__physicalDisplaySizeMM.height;
  result.height = height;
  result.width = width;
  return result;
}

@end