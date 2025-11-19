@interface AXMTCameraBasedLookAtPointTracker
+ (CGPoint)_defaultOnScreenPoint;
- (AXMTCameraBasedLookAtPointTracker)initWithInput:(id)a3 trackingType:(unint64_t)a4;
- (AXMTLookAtPointTrackerDelegate)delegate;
- (BOOL)_isStarted;
- (BOOL)_movementDetectedWithNewPoint:(CGPoint)a3;
- (CGPoint)_iOSConvertProjectedPointToScreenCoordinates:(CGPoint)a3 useSensitivity:(BOOL)a4;
- (CGPoint)_trackedOnScreenPoint;
- (CGSize)_physicalDisplaySizeMM;
- (UIView)debugOverlayRootView;
- (id)_handleDetectedFaceWithProjectedPoint:(double)a3 pose:(double)a4 poseTranslation:(double)a5;
- (void)_clearVideoPreviewLayer;
- (void)_handleDetectedFaceAbsoluteModeWithFaceBounds:(double)a3 pose:(double)a4;
- (void)_handleDetectedFaceHIDModeWithFaceBounds:(CGRect)a3 noseCenter:(CGPoint)a4 imageSize:(CGSize)a5;
- (void)_handleDetectedFaceJoystickModeWithPose:(double)a3 poseTranslation:(__n128)a4;
- (void)_iOSComputeAbsoluteModeForPoint:(CGPoint)a3;
- (void)_iOSComputeAccelerationModeForPoint:(CGPoint)a3;
- (void)_initializeFaceKitFaceTrackerWithInput:(id)a3;
- (void)_loadCalibrationValuesFromDefaults;
- (void)_setUpDebugOverlay;
- (void)_signalTrackedImageRelativePoint:(CGPoint)a3 inBounds:(CGSize)a4;
- (void)_signalTrackedUnboundedOnScreenPoint:(CGPoint)a3 boundPoint:(BOOL)a4 error:(id)a5;
- (void)_storeCalibrationValuesToDefaults;
- (void)_tearDownDebugOverlay;
- (void)_updateAccelerationFactorForPointerMovementMapper;
- (void)_updateDebugOverlay;
- (void)_updateForBacklightState:(int64_t)a3;
- (void)_updateMovementThresholdforPointerMovementMapper;
- (void)axmtUtilities_interfaceOrientationChanged:(int64_t)a3;
- (void)faceKitFaceTracker:(id)a3 updatedResult:(id)a4;
- (void)recalibrateFace;
- (void)setDebugOverlayEnabled:(BOOL)a3;
- (void)setInput:(id)a3;
- (void)setJoystickModeMovementThreshold:(double)a3;
- (void)setMotionTrackingMode:(unint64_t)a3;
- (void)setSensitivity:(double)a3;
- (void)startTracking;
- (void)stopTracking;
- (void)updateTrackedOnScreenPoint:(CGPoint)a3;
- (void)velocityBasedPointMapper:(id)a3 updatedPoint:(CGPoint)a4;
- (void)videoCapturer:(id)a3 didCaptureBufferResult:(id)a4;
- (void)videoCapturer:(id)a3 didCaptureTrackedFacesMetadataResult:(id)a4;
- (void)videoCapturer:(id)a3 didUpdateFieldOfView:(float)a4;
- (void)videoCapturer:(id)a3 didUpdateVideoResolution:(CGSize)a4;
- (void)videoCapturer:(id)a3 wasInterruptedWithError:(id)a4;
- (void)videoCapturerDidDropFrame:(id)a3;
- (void)videoCapturerReceivedNoMetadata:(id)a3;
- (void)videoFileReader:(id)a3 didReadSampleBuffer:(opaqueCMSampleBuffer *)a4 withMetadata:(id)a5;
- (void)videoFileReaderDidDropFrame:(id)a3;
- (void)visionKitEyeTracker:(id)a3 detectedGaze:(CGPoint)a4 withNonCriticalError:(id)a5;
- (void)visionKitEyeTrackerLostFace:(id)a3 error:(id)a4;
@end

@implementation AXMTCameraBasedLookAtPointTracker

- (AXMTCameraBasedLookAtPointTracker)initWithInput:(id)a3 trackingType:(unint64_t)a4
{
  v6 = a3;
  if (([v6 isCamera] & 1) != 0 || objc_msgSend(v6, "isVideoFile"))
  {
    v23.receiver = self;
    v23.super_class = AXMTCameraBasedLookAtPointTracker;
    v7 = [(AXMTCameraBasedLookAtPointTracker *)&v23 init];
    if (!v7)
    {
LABEL_11:
      self = v7;
      v13 = self;
      goto LABEL_12;
    }

    v8 = [v6 copy];
    input = v7->_input;
    v7->_input = v8;

    v7->_trackingType = a4;
    if ([v6 isCamera])
    {
      v10 = [[AXMTVideoCapturer alloc] initWithInput:v6];
      p_videoCapturer = &v7->__videoCapturer;
      videoCapturer = v7->__videoCapturer;
      v7->__videoCapturer = v10;

      [(AXMTVideoCapturer *)v7->__videoCapturer setPixelFormatType:875704438];
    }

    else
    {
      if (![v6 isVideoFile])
      {
LABEL_10:
        [(AXMTCameraBasedLookAtPointTracker *)v7 _initializeFaceKitFaceTrackerWithInput:v6];
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

      v14 = [[AXMTVideoFileReader alloc] initWithInput:v6];
      p_videoCapturer = &v7->__videoFileReader;
      videoFileReader = v7->__videoFileReader;
      v7->__videoFileReader = v14;
    }

    [*p_videoCapturer setDelegate:v7];
    goto LABEL_10;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)_initializeFaceKitFaceTrackerWithInput:(id)a3
{
  v4 = a3;
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

    v7 = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
LABEL_9:
    v10 = v7;
    [v7 setDelegate:self];

    goto LABEL_10;
  }

  if ([v4 isCamera])
  {
    v8 = AXSSLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AXMTCameraBasedLookAtPointTracker: Using FaceTracking with AVCaptureMetadataOutput for iOS!", v15, 2u);
    }

    v9 = [[AXMTFaceKitFaceTracker alloc] initWithFaceKitPipeline:0];
    [(AXMTCameraBasedLookAtPointTracker *)self set_faceKitFaceTracker:v9];

    v7 = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
    goto LABEL_9;
  }

  if ([v4 isVideoFile])
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

- (void)setDebugOverlayEnabled:(BOOL)a3
{
  if (self->_debugOverlayEnabled != a3)
  {
    self->_debugOverlayEnabled = a3;
    [(AXMTCameraBasedLookAtPointTracker *)self _updateDebugOverlay];
  }
}

- (void)setMotionTrackingMode:(unint64_t)a3
{
  if (self->_motionTrackingMode != a3)
  {
    self->_motionTrackingMode = a3;
    v4 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
    [v4 reset];

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
  v5 = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];
  [v5 setAccelerationFactor:v4];
}

- (void)_updateMovementThresholdforPointerMovementMapper
{
  v3 = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];

  if (v3)
  {
    [(AXMTCameraBasedLookAtPointTracker *)self joystickModeMovementThreshold];
    v5 = v4;
    v6 = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];
    [v6 setNormalizedMovementThreshold:v5];
  }
}

- (void)setSensitivity:(double)a3
{
  if (vabdd_f64(self->_sensitivity, a3) > 2.22044605e-16)
  {
    self->_sensitivity = a3;
    v5 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];

    if (v5)
    {
      v6 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
      [v6 setSensitivity:a3];
    }

    [(AXMTCameraBasedLookAtPointTracker *)self _updateAccelerationFactorForPointerMovementMapper];
  }
}

- (void)setJoystickModeMovementThreshold:(double)a3
{
  if (vabdd_f64(self->_joystickModeMovementThreshold, a3) > 2.22044605e-16)
  {
    self->_joystickModeMovementThreshold = a3;
    [(AXMTCameraBasedLookAtPointTracker *)self _updateMovementThresholdforPointerMovementMapper];
  }
}

- (void)setInput:(id)a3
{
  v4 = a3;
  if ((-[AXSSMotionTrackingInput isEqual:](self->_input, "isEqual:", v4) & 1) != 0 || ([v4 isCamera] & 1) == 0 && !objc_msgSend(v4, "isVideoFile"))
  {
    goto LABEL_30;
  }

  v5 = [v4 copy];
  input = self->_input;
  self->_input = v5;

  [(AXMTCameraBasedLookAtPointTracker *)self _loadCalibrationValuesFromDefaults];
  v7 = [(AXMTCameraBasedLookAtPointTracker *)self _isStarted];
  v8 = [(AXMTCameraBasedLookAtPointTracker *)self debugOverlayEnabled];
  if ([v4 isCamera])
  {
    v9 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if ([v4 isVideoFile])
  {
    v11 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    v12 = v11 == 0;
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
    [(AXMTCameraBasedLookAtPointTracker *)self _initializeFaceKitFaceTrackerWithInput:v4];
    if (v10)
    {
      v13 = AXSSLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1000168F0(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      v21 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
      [v21 stop];

      v22 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
      [v22 setDelegate:0];

      [(AXMTCameraBasedLookAtPointTracker *)self set_videoFileReader:0];
      v23 = [[AXMTVideoCapturer alloc] initWithInput:v4];
      [(AXMTCameraBasedLookAtPointTracker *)self set_videoCapturer:v23];

      v24 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [v24 setPixelFormatType:875704438];

      v25 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [v25 setDelegate:self];

      if (!v7)
      {
        goto LABEL_28;
      }

      v26 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
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

      v37 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [v37 stop];

      v38 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [v38 setDelegate:0];

      [(AXMTCameraBasedLookAtPointTracker *)self set_videoCapturer:0];
      v39 = [[AXMTVideoFileReader alloc] initWithInput:v4];
      [(AXMTCameraBasedLookAtPointTracker *)self set_videoFileReader:v39];

      v40 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
      [v40 setDelegate:self];

      if (!v7)
      {
        goto LABEL_28;
      }

      v26 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    }

    v41 = v26;
    [v26 start];
  }

  else
  {
    v27 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];

    if (v27)
    {
      v28 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
    }

    else
    {
      v42 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];

      if (!v42)
      {
        goto LABEL_28;
      }

      v28 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    }

    v41 = v28;
    [v28 setInput:v4];
  }

LABEL_28:
  if (v8)
  {
    v43 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
    [v43 removeFromSuperlayer];

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

    v24 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];

    if (v24)
    {
      v25 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
    }

    else
    {
      v26 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];

      if (!v26)
      {
LABEL_9:
        [(AXMTCameraBasedLookAtPointTracker *)self _updateDebugOverlay];
        [(AXMTCameraBasedLookAtPointTracker *)self _loadCalibrationValuesFromDefaults];
        return;
      }

      v25 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    }

    v27 = v25;
    [v25 start];

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
  v3 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
  [v3 reset];

  [(AXMTCameraBasedLookAtPointTracker *)self set_velocityBasedPointMapper:0];
  v4 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];

  if (v4)
  {
    v5 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
LABEL_7:
    v7 = v5;
    [v5 stop];

    goto LABEL_8;
  }

  v6 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];

  if (v6)
  {
    v5 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    goto LABEL_7;
  }

LABEL_8:
  [(AXMTCameraBasedLookAtPointTracker *)self _tearDownDebugOverlay];
  v8 = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
  [v8 setDelegate:0];

  [(AXMTCameraBasedLookAtPointTracker *)self set_faceKitFaceTracker:0];
  v9 = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
  [v9 setDelegate:0];

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
    v3 = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
    [v3 recalibrateFace];
  }

  [(AXMTCameraBasedLookAtPointTracker *)self set_needsRecalibration:1];
}

- (void)videoCapturer:(id)a3 didCaptureBufferResult:(id)a4
{
  v5 = a4;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    v9 = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
    v6 = [v5 buffer];
    v7 = [v5 metadataObjects];

    [v9 processSampleBuffer:v6 metadata:v7];
  }

  else
  {
    v9 = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
    v8 = [v5 buffer];

    [v9 processVideoFrame:v8];
  }
}

- (void)videoCapturer:(id)a3 didCaptureTrackedFacesMetadataResult:(id)a4
{
  v5 = a4;
  v7 = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
  v6 = [v5 metadataObjects];

  [v7 processTrackedFacesMetadata:v6];
}

- (void)videoCapturerDidDropFrame:(id)a3
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000169E0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)videoCapturerReceivedNoMetadata:(id)a3
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100016A18(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)videoCapturer:(id)a3 wasInterruptedWithError:(id)a4
{
  v5 = a4;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
  }

  else
  {
    [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
  }
  v6 = ;
  [v6 failedToTrackFaceWithError:v5];
}

- (void)videoCapturer:(id)a3 didUpdateFieldOfView:(float)a4
{
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    v7 = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
    *&v6 = a4;
    [v7 didUpdateFieldOfView:v6];
  }
}

- (void)videoCapturer:(id)a3 didUpdateVideoResolution:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
  [v6 didUpdateVideoResolution:{width, height}];
}

- (void)_updateForBacklightState:(int64_t)a3
{
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AXMTCameraBasedLookAtPointTracker _updateForBacklightState:]";
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: backlight state was updated to: %ld", &v7, 0x16u);
  }

  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    v6 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
    [v6 reconfigureCaptureDeviceForBacklightOff:a3 == 0];
  }
}

- (BOOL)_movementDetectedWithNewPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v3 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
  [v3 renderFaceKitResult:0];

  v4 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
  [v4 renderPointOfInterest:NSZeroPoint.x trackingArea:{NSZeroPoint.y, NSZeroRect.origin.x, NSZeroRect.origin.y, NSZeroRect.size.width, NSZeroRect.size.height}];
}

- (BOOL)_isStarted
{
  v3 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
  if ([v3 isStarted])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];
    v4 = [v5 isStarted];
  }

  return v4;
}

- (void)_loadCalibrationValuesFromDefaults
{
  v3 = +[NSUserDefaults motionTrackingUserDefaults];
  v4 = [v3 objectForKey:@"recalibratedValuesDict"];

  if (v4)
  {
    v5 = [(AXMTCameraBasedLookAtPointTracker *)self input];
    v6 = [v5 uniqueIdentifier];
    v7 = [v4 objectForKeyedSubscript:v6];

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
  v3 = [(AXMTCameraBasedLookAtPointTracker *)self input];
  v4 = [v3 uniqueIdentifier];

  if (v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = +[NSUserDefaults motionTrackingUserDefaults];
    v7 = [v6 objectForKey:@"recalibratedValuesDict"];

    if (v7)
    {
      [v5 setDictionary:v7];
    }

    v8 = +[NSMutableDictionary dictionary];
    v9 = [(AXMTCameraBasedLookAtPointTracker *)self input];
    v10 = [v9 uniqueIdentifier];
    v11 = [v7 objectForKey:v10];

    if (v11)
    {
      [v8 setDictionary:v11];
    }

    v12 = AXSSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100016B68(self, v12);
    }

    v13 = [(AXMTCameraBasedLookAtPointTracker *)self _calibratedYaw];
    [v8 setObject:v13 forKeyedSubscript:@"recalibratedYaw"];

    v14 = [(AXMTCameraBasedLookAtPointTracker *)self _calibratedPitch];
    [v8 setObject:v14 forKeyedSubscript:@"recalibratedPitch"];

    v15 = [(AXMTCameraBasedLookAtPointTracker *)self input];
    v16 = [v15 uniqueIdentifier];
    [v5 setObject:v8 forKeyedSubscript:v16];

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

- (void)axmtUtilities_interfaceOrientationChanged:(int64_t)a3
{
  v4 = +[AXMTUtilities sharedInstance];
  [v4 screenBoundsAccountingForInterfaceOrientation];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
  [v13 setBounds:{v6, v8, v10, v12}];

  v14 = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];
  [v14 setScreenBounds:{v6, v8, v10, v12}];
}

- (void)faceKitFaceTracker:(id)a3 updatedResult:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014204;
  v6[3] = &unk_100048948;
  v7 = a4;
  v8 = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)visionKitEyeTracker:(id)a3 detectedGaze:(CGPoint)a4 withNonCriticalError:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  [(AXMTCameraBasedLookAtPointTracker *)self set_hasFace:1];
  [(AXMTCameraBasedLookAtPointTracker *)self set_error:0];
  objc_initWeak(&location, self);
  v11 = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001495C;
  block[3] = &unk_100048EB0;
  objc_copyWeak(v15, &location);
  v15[1] = *&x;
  v15[2] = *&y;
  v14 = v10;
  v12 = v10;
  dispatch_async(v11, block);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

- (void)visionKitEyeTrackerLostFace:(id)a3 error:(id)a4
{
  v5 = a4;
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

  v7 = [(AXMTCameraBasedLookAtPointTracker *)self _error];
  v8 = [v7 isEqual:v5];

  if ((v8 & 1) == 0)
  {
LABEL_6:
    [(AXMTCameraBasedLookAtPointTracker *)self set_error:v5];
    v9 = [(AXMTCameraBasedLookAtPointTracker *)self delegate];
    [v9 lookAtPointTrackerLostFace:self error:v5];
  }

  [(AXMTCameraBasedLookAtPointTracker *)self _clearVideoPreviewLayer];
}

- (id)_handleDetectedFaceWithProjectedPoint:(double)a3 pose:(double)a4 poseTranslation:(double)a5
{
  result = [a1 motionTrackingMode];
  if (result == 1)
  {

    return [a1 _handleDetectedFaceJoystickModeWithPose:a4 poseTranslation:{a5, a6, a7, a8}];
  }

  else if (result != 3)
  {
    if (result == 2)
    {
      [a1 _iOSConvertProjectedPointToScreenCoordinates:0 useSensitivity:{a2, a3}];

      return [a1 _iOSComputeAccelerationModeForPoint:{v12, v13, v14, v15, v16}];
    }

    else
    {
      [a1 _iOSConvertProjectedPointToScreenCoordinates:1 useSensitivity:{a2, a3}];

      return [a1 _iOSComputeAbsoluteModeForPoint:{v17, v18, v19, v20, v21}];
    }
  }

  return result;
}

- (void)_handleDetectedFaceHIDModeWithFaceBounds:(CGRect)a3 noseCenter:(CGPoint)a4 imageSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a4.x / a5.width;
  v9 = a4.y / a5.height;
  v10 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer:a3.origin.x];
  [v10 renderPointOfInterest:1.0 - v8 trackingArea:{v9, NSZeroRect.origin.x, NSZeroRect.origin.y, NSZeroRect.size.width, NSZeroRect.size.height}];

  objc_initWeak(&location, self);
  v11 = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100014CC0;
  v12[3] = &unk_100048ED8;
  objc_copyWeak(v13, &location);
  v13[1] = *&v8;
  v13[2] = *&v9;
  v13[3] = *&width;
  v13[4] = *&height;
  dispatch_async(v11, v12);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)_handleDetectedFaceJoystickModeWithPose:(double)a3 poseTranslation:(__n128)a4
{
  v5 = AXMTYawUsingPose(a2.n128_f64[0], a3, a4.n128_f32[0]);
  v6 = AXMTPitchUsingPose(a2.n128_f64[0], a3, a4);
  if ([a1 _needsRecalibration])
  {
    *&v7 = v5;
    v8 = [NSNumber numberWithFloat:v7];
    [a1 set_calibratedYaw:v8];

    *&v9 = v6;
    v10 = [NSNumber numberWithFloat:v9];
    [a1 set_calibratedPitch:v10];

    [a1 _storeCalibrationValuesToDefaults];
    [a1 set_needsRecalibration:0];
  }

  v11 = [a1 _calibratedYaw];

  v12 = 0.0;
  v13 = 0.0;
  if (v11)
  {
    v14 = [a1 _calibratedYaw];
    [v14 floatValue];
    v13 = v15;
  }

  v16 = [a1 _calibratedPitch];

  if (v16)
  {
    v17 = [a1 _calibratedPitch];
    [v17 floatValue];
    v12 = v18;
  }

  v19 = [a1 _calibratedYaw];
  if (!v19)
  {
    [a1 _calibratedPitch];
  }

  v20 = v5 - v13;
  v21 = v6 - v12;
  v22 = +[AXMTUtilities sharedInstance];
  v23 = [v22 currentInterfaceOrientation];

  v24 = 0.0;
  if (v23 <= 2)
  {
    if (v23 >= 2)
    {
      v25 = 0.0;
      if (v23 == 2)
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

  if ((v23 - 5) < 2)
  {
    goto LABEL_15;
  }

  if (v23 != 3)
  {
    v25 = 0.0;
    if (v23 != 4)
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

  v36 = [a1 _pointerMovementMapper];

  if (!v36)
  {
    v37 = [[AXMTRelativePointerMovementMapper alloc] initWithScreenBounds:v29, v31, v33, v35];
    [a1 set_pointerMovementMapper:v37];

    [a1 _updateAccelerationFactorForPointerMovementMapper];
    [a1 _updateMovementThresholdforPointerMovementMapper];
  }

  v38 = [a1 _screenLookAtPoints];
  v39 = [v38 count];

  if (v39)
  {
    v40 = [a1 _pointerMovementMapper];
    v41 = [v40 processPointInNormalizedTrackingSpace:{v25, v24 + 0.05}];

    v42 = [a1 _screenLookAtPoints];
    v43 = [v42 lastObject];
    [v43 pointValue];
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
    [a1 set_screenLookAtPoints:v55];
  }

  else
  {
    v51 = v33 * 0.5;
    v53 = v35 * 0.5;
    *v64 = v51;
    *&v64[1] = v53;
    v41 = [NSValue valueWithBytes:v64 objCType:"{CGPoint=dd}"];
    v54 = [NSMutableArray arrayWithObject:v41];
    [a1 set_screenLookAtPoints:v54];
  }

  objc_initWeak(&location, a1);
  v56 = [a1 _controllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015218;
  block[3] = &unk_100048F00;
  objc_copyWeak(v61, &location);
  v61[1] = *&v51;
  v61[2] = *&v53;
  dispatch_async(v56, block);

  objc_destroyWeak(v61);
  objc_destroyWeak(&location);
}

- (void)_handleDetectedFaceAbsoluteModeWithFaceBounds:(double)a3 pose:(double)a4
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
  v18 = [v17 currentInterfaceOrientation];

  if (v18 <= 6)
  {
    if (((1 << v18) & 0x67) != 0)
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
  v27 = [a1 _pointerMovementMapper];
  v28 = [v27 processPointInNormalizedTrackingSpace:*&v64];

  [a1 _trackedOnScreenPoint];
  v30 = v29;
  v32 = v31;
  [v28 delta];
  v34 = v30 + v33;
  [v28 delta];
  v36 = v32 + v35;
  v37 = [a1 _videoPreviewLayer];
  [v37 bounds];
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
    v50 = [a1 _videoPreviewLayer];
    [v50 renderPointOfInterest:v49 trackingArea:{v48, a2, a3, a4, a5}];
  }

  objc_initWeak(&location, a1);
  v51 = [a1 _controllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015534;
  block[3] = &unk_100048F00;
  objc_copyWeak(v66, &location);
  v66[1] = *&v34;
  v66[2] = *&v36;
  dispatch_async(v51, block);

  objc_destroyWeak(v66);
  objc_destroyWeak(&location);
}

- (CGPoint)_iOSConvertProjectedPointToScreenCoordinates:(CGPoint)a3 useSensitivity:(BOOL)a4
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

- (void)_iOSComputeAbsoluteModeForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
  v7 = [v6 count];

  if (v7 == 5)
  {
    v8 = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
    [v8 removeObjectAtIndex:0];
  }

  v9 = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
  *v29 = x;
  *&v29[1] = y;
  v10 = [NSValue valueWithBytes:v29 objCType:"{CGPoint=dd}"];
  [v9 addObject:v10];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v25 + 1) + 8 * i) pointValue];
        v15 = v15 + v17;
        v14 = v14 + v18;
      }

      v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
    v15 = 0.0;
  }

  v19 = [(AXMTCameraBasedLookAtPointTracker *)self _screenLookAtPoints];
  v20 = [v19 count];

  objc_initWeak(&location, self);
  v21 = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100015958;
  v22[3] = &unk_100048F00;
  objc_copyWeak(v23, &location);
  *&v23[1] = v15 / v20;
  *&v23[2] = v14 / v20;
  dispatch_async(v21, v22);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)_iOSComputeAccelerationModeForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];

  if (!v6)
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

    v19 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
    [v19 setDelegate:self];
  }

  v20 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
  [v20 processPoint:{x, y}];
}

- (void)_signalTrackedImageRelativePoint:(CGPoint)a3 inBounds:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v10 = [(AXMTCameraBasedLookAtPointTracker *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(AXMTCameraBasedLookAtPointTracker *)self delegate];
    [v9 lookAtPointTracker:self trackedImageRelativePoint:x inBounds:{y, width, height}];
  }
}

- (void)_signalTrackedUnboundedOnScreenPoint:(CGPoint)a3 boundPoint:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v19 = a5;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _movementDetectedWithNewPoint:x, y])
  {
    if (v5)
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
    v17 = [(AXMTCameraBasedLookAtPointTracker *)self delegate];
    v18 = v17;
    if (v19)
    {
      [v17 lookAtPointTracker:self trackedOnScreenPoint:x error:y];
    }

    else
    {
      [v17 lookAtPointTracker:self trackedOnScreenPoint:{x, y}];
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

  v4 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];

  if (!v4)
  {
    v5 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];

    if (v5)
    {
      v6 = [AXMTVideoPreviewLayer alloc];
      v7 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      v8 = [v7 captureSession];
      v9 = [(AXMTCameraBasedLookAtPointTracker *)self _videoCapturer];
      [v9 resolution];
      v10 = [(AXMTVideoPreviewLayer *)v6 initWithAVCaptureSession:v8 captureDeviceResolution:?];
      [(AXMTCameraBasedLookAtPointTracker *)self set_videoPreviewLayer:v10];

      v11 = +[AXMTUtilities sharedInstance];
      [(AXMTVideoPreviewLayer *)v11 screenBoundsAccountingForInterfaceOrientation];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
      [v20 setFrame:{v13, v15, v17, v19}];

LABEL_8:
      goto LABEL_9;
    }

    v21 = [(AXMTCameraBasedLookAtPointTracker *)self _videoFileReader];

    if (v21)
    {
      v11 = [[AXMTVideoPreviewLayer alloc] initWithSampleBufferLayer];
      [(AXMTCameraBasedLookAtPointTracker *)self set_videoPreviewLayer:v11];
      goto LABEL_8;
    }
  }

LABEL_9:
  v22 = [UIView alloc];
  v23 = +[AXMTUtilities sharedInstance];
  [v23 screenBoundsAccountingForInterfaceOrientation];
  v24 = [v22 initWithFrame:?];
  [(AXMTCameraBasedLookAtPointTracker *)self set_rootView:v24];

  v25 = [(AXMTCameraBasedLookAtPointTracker *)self debugOverlayRootView];
  v26 = [(AXMTCameraBasedLookAtPointTracker *)self _rootView];
  [v25 addSubview:v26];

  v27 = [(AXMTCameraBasedLookAtPointTracker *)self _rootView];
  v28 = [v27 layer];
  v29 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
  [v28 addSublayer:v29];
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

- (void)updateTrackedOnScreenPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _isStarted])
  {
    [(AXMTCameraBasedLookAtPointTracker *)self _trackedOnScreenPoint];
    v32.x = v6;
    v32.y = v7;
    v31.x = x;
    v31.y = y;
    if (!NSEqualPoints(v31, v32))
    {
      v8 = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];

      if (v8)
      {
        v9 = [(AXMTCameraBasedLookAtPointTracker *)self _pointerMovementMapper];
        [v9 reset];
      }

      v10 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];

      if (v10)
      {
        v11 = +[AXMTUtilities sharedInstance];
        [v11 screenBoundsAccountingForInterfaceOrientation];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v20 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
        [v20 bounds];
        v22 = (x - v13) / v17 * v21;
        v23 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
        [v23 bounds];
        v25 = (y - v15) / v19 * v24;

        v26 = [(AXMTCameraBasedLookAtPointTracker *)self _velocityBasedPointMapper];
        [v26 resetToPoint:{v22, v25}];
      }

      objc_initWeak(&location, self);
      v27 = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100016240;
      v28[3] = &unk_100048F00;
      objc_copyWeak(v29, &location);
      v29[1] = *&x;
      v29[2] = *&y;
      dispatch_async(v27, v28);

      objc_destroyWeak(v29);
      objc_destroyWeak(&location);
    }
  }
}

- (void)velocityBasedPointMapper:(id)a3 updatedPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  objc_initWeak(&location, self);
  v8 = [(AXMTCameraBasedLookAtPointTracker *)self _controllerQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000163A8;
  v9[3] = &unk_100048F00;
  objc_copyWeak(v10, &location);
  v10[1] = *&x;
  v10[2] = *&y;
  dispatch_async(v8, v9);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)videoFileReaderDidDropFrame:(id)a3
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000169E0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)videoFileReader:(id)a3 didReadSampleBuffer:(opaqueCMSampleBuffer *)a4 withMetadata:(id)a5
{
  v7 = a5;
  if ([(AXMTCameraBasedLookAtPointTracker *)self _trackingTypeSupportsOnDeviceGaze])
  {
    v9 = [(AXMTCameraBasedLookAtPointTracker *)self _visionKitEyeTracker];
    [v9 processSampleBuffer:a4 metadata:v7];
  }

  else
  {
    v8 = [(AXMTCameraBasedLookAtPointTracker *)self _faceKitFaceTracker];
    [v8 processVideoFrame:a4 metadata:v7];

    v9 = [(AXMTCameraBasedLookAtPointTracker *)self _videoPreviewLayer];
    [v9 drawSample:a4];
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