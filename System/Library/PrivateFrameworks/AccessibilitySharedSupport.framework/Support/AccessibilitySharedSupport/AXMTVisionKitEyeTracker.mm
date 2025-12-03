@interface AXMTVisionKitEyeTracker
+ (unsigned)_imageOrientationForGazeRequest;
- ($1AB5FA073B851C12C2339EC22442E995)_currentAcceleration;
- ($1AB5FA073B851C12C2339EC22442E995)_lastAccelerationUpdate;
- (AXMTVisionKitEyeTracker)init;
- (AXMTVisionKitEyeTrackerDelegate)delegate;
- (CGPoint)_interfaceOrientedScreenPointForNormalizedDeviceOrientedPoint:(CGPoint)point;
- (CGPoint)_normalizeRawPoint:(CGPoint)point;
- (CGRect)_orientAVMetadataFaceBoundingBoxForCurrentOrientation:(CGRect)orientation;
- (CGSize)_deviceOrientedScreenSize;
- (CGSize)_screenSizeInCM;
- (CGVector)_cameraOffsetInCM;
- (CGVector)_deviceOrientedCameraOffset;
- (double)_calculateMaxBoundingAreaBoxForFOV:(float)v;
- (double)_calculateMinBoundingAreaBoxForFOV:(float)v;
- (double)_minDistBetweenAngleA:(double)a angleB:(double)b;
- (id)_detectCriticalErrorsForFace:(id)face;
- (id)_detectNonCriticalErrorsForFace:(id)face;
- (id)_initializeScreenGazeRequestForFaceMetadata:(id)metadata;
- (void)_computeScreenAndCameraPositions;
- (void)_notifyDelegateFaceLost;
- (void)axmtUtilities_accelerometerDataUpdated:(id)updated;
- (void)dealloc;
- (void)didUpdateFieldOfView:(float)view;
- (void)failedToTrackFaceWithError:(id)error;
- (void)processSampleBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata;
- (void)recalibrateFace;
@end

@implementation AXMTVisionKitEyeTracker

- (AXMTVisionKitEyeTracker)init
{
  v7.receiver = self;
  v7.super_class = AXMTVisionKitEyeTracker;
  v2 = [(AXMTVisionKitEyeTracker *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(AXMTVisionKitEyeTracker *)v2 _computeScreenAndCameraPositions];
    v4 = +[AXMTUtilities sharedInstance];
    [v4 registerListener:v3 needsPhysicalOrientationEvents:1];

    v5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&v3->$83A9B0F16167884A9BDC45564D3E7367::x = v5;
    *&v3->$83A9B0F16167884A9BDC45564D3E7367::z = v5;
    *&v3->$83A9B0F16167884A9BDC45564D3E7367::y = v5;
    v3->__lastTimePoseRecorded = mach_absolute_time();
  }

  return v3;
}

- (id)_initializeScreenGazeRequestForFaceMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_alloc_init(VNDetectScreenGazeRequest);
  [v5 setRevision:2];
  if (AXDeviceIsPad())
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v5 setScreenSize:v6];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10001E9B4;
  v22 = sub_10001E9C4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10001E9B4;
  v16 = sub_10001E9C4;
  v17 = 0;
  v7 = [v5 supportedComputeStageDevicesAndReturnError:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001E9CC;
  v11[3] = &unk_100049098;
  v11[4] = &v18;
  v11[5] = &v12;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  if (v19[5] && v13[5])
  {
    [v5 setComputeDevice:? forComputeStage:?];
  }

  [v5 setTemporalSmoothingFrameCount:1];
  [metadataCopy bounds];
  [(AXMTVisionKitEyeTracker *)self _orientAVMetadataFaceBoundingBoxForCurrentOrientation:?];
  v8 = [VNFaceObservation faceObservationWithRequestRevision:0 boundingBox:0 roll:0 yaw:0 pitch:?];
  v24 = v8;
  v9 = [NSArray arrayWithObjects:&v24 count:1];
  [v5 setInputFaceObservations:v9];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v5;
}

- (void)_computeScreenAndCameraPositions
{
  intValue = [MGCopyAnswer() intValue];
  intValue2 = [MGCopyAnswer() intValue];
  intValue3 = [MGCopyAnswer() intValue];
  [MGCopyAnswer() floatValue];
  v7 = v6;
  v8 = intValue3 / intValue * 25.4;
  v9 = intValue2 / intValue * 25.4;
  v10 = MGCopyAnswer();
  firstObject = [v10 firstObject];
  [firstObject floatValue];
  v13 = v12;

  v14 = -1.0;
  if ([v10 count] >= 2)
  {
    v15 = [v10 objectAtIndexedSubscript:1];
    [v15 floatValue];
    v14 = v16;
  }

  [(AXMTVisionKitEyeTracker *)self set_cameraOffsetInCM:(v9 * 0.5 + v14) / 10.0, (v8 * 0.5 - v13) / 10.0];
  [(AXMTVisionKitEyeTracker *)self set_screenSizeInCM:v9 / 10.0, v8 / 10.0];
  v17 = AXSSLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136316418;
    v20 = "[AXMTVisionKitEyeTracker _computeScreenAndCameraPositions]";
    v21 = 1024;
    v22 = intValue;
    v23 = 1024;
    v24 = intValue2;
    v25 = 1024;
    v26 = intValue3;
    v27 = 2048;
    v28 = v7;
    v29 = 2112;
    v30 = v10;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s pitch %d, width %d, height %d, scale %f --> %@", &v19, 0x32u);
  }

  v18 = AXSSLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1000207BC(self, v18);
  }
}

- (void)processSampleBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata
{
  metadataCopy = metadata;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_10001E9B4;
  v77 = sub_10001E9C4;
  v78 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  v72[3] = 0x10000000000000;
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10001F2F0;
  v71[3] = &unk_1000490C0;
  v71[4] = v72;
  v71[5] = &v73;
  [metadataCopy enumerateObjectsUsingBlock:v71];
  if (v74[5])
  {
    v7 = [(AXMTVisionKitEyeTracker *)self _detectCriticalErrorsForFace:?];
    if (v7)
    {
      [(AXMTVisionKitEyeTracker *)self _notifyDelegateFaceLost];
LABEL_35:

      goto LABEL_36;
    }

    v16 = [(AXMTVisionKitEyeTracker *)self _initializeScreenGazeRequestForFaceMetadata:v74[5]];
    v65 = [[VNImageRequestHandler alloc] initWithCMSampleBuffer:buffer orientation:objc_msgSend(objc_opt_class() options:{"_imageOrientationForGazeRequest"), 0}];
    v64 = v16;
    if (!buffer)
    {
      v39 = AXSSLogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_100020A28(v39, v40, v41, v42, v43, v44, v45, v46);
      }

      goto LABEL_34;
    }

    v80 = v16;
    v17 = [NSArray arrayWithObjects:&v80 count:1];
    v70 = 0;
    v18 = [v65 performRequests:v17 error:&v70];
    v63 = v70;

    if (v18)
    {
      results = [v16 results];
      if ([results count])
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v20 = results;
        v21 = [v20 countByEnumeratingWithState:&v66 objects:v79 count:16];
        if (v21)
        {
          delegate2 = 0;
          v23 = *v67;
          v24 = 2.22507386e-308;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v67 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v66 + 1) + 8 * i);
              [v26 boundingBox];
              v28 = v27;
              [v26 boundingBox];
              v30 = v28 * v29;
              if (v30 > v24)
              {
                v31 = v26;

                delegate2 = v31;
                v24 = v30;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v66 objects:v79 count:16];
          }

          while (v21);

          if (delegate2)
          {
            faceScreenGaze = [delegate2 faceScreenGaze];
            [faceScreenGaze screenGazeRawOutputInCentimeters];
            [(AXMTVisionKitEyeTracker *)self _normalizeRawPoint:?];
            [(AXMTVisionKitEyeTracker *)self _interfaceOrientedScreenPointForNormalizedDeviceOrientedPoint:?];
            v34 = v33;
            v36 = v35;
            v37 = [(AXMTVisionKitEyeTracker *)self _detectNonCriticalErrorsForFace:v74[5]];
            delegate = [(AXMTVisionKitEyeTracker *)self delegate];
            [delegate visionKitEyeTracker:self detectedGaze:v37 withNonCriticalError:{v34, v36}];

LABEL_26:
            results = v20;
LABEL_33:

            v39 = v63;
LABEL_34:

            goto LABEL_35;
          }
        }

        else
        {
        }

        v48 = AXSSLogForCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_100020938(v48, v56, v57, v58, v59, v60, v61, v62);
        }
      }

      else
      {
        v48 = AXSSLogForCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000209B0(v48, v49, v50, v51, v52, v53, v54, v55);
        }
      }

      [(AXMTVisionKitEyeTracker *)self _notifyDelegateFaceLost];
      goto LABEL_33;
    }

    v47 = AXSSLogForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000208AC(v63, v47);
    }

    v20 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:0 userInfo:0];
    delegate2 = [(AXMTVisionKitEyeTracker *)self delegate];
    [delegate2 visionKitEyeTrackerLostFace:self error:v20];
    goto LABEL_26;
  }

  v8 = AXSSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100020AA0(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(AXMTVisionKitEyeTracker *)self _notifyDelegateFaceLost];
LABEL_36:
  _Block_object_dispose(v72, 8);
  _Block_object_dispose(&v73, 8);
}

- (void)_notifyDelegateFaceLost
{
  delegate = [(AXMTVisionKitEyeTracker *)self delegate];
  v3 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:1 userInfo:0];
  [delegate visionKitEyeTrackerLostFace:self error:v3];
}

- (void)recalibrateFace
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AXMTVisionKitEyeTracker recalibrateFace]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  [(AXMTVisionKitEyeTracker *)self set_baselineFaceBounds:0];
  [(AXMTVisionKitEyeTracker *)self set_baselineYaw:0];
  [(AXMTVisionKitEyeTracker *)self set_baselinePitch:0];
  [(AXMTVisionKitEyeTracker *)self set_currentAcceleration:1.79769313e308, 1.79769313e308, 1.79769313e308];
  [(AXMTVisionKitEyeTracker *)self set_lastAccelerationUpdate:1.79769313e308, 1.79769313e308, 1.79769313e308];
}

- (id)_detectCriticalErrorsForFace:(id)face
{
  [face bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (v3 >= 0.0 && ((v11 = v3 + v5, v12 = v4 + v6, v8 >= 0.0) ? (v13 = v11 <= 1.0) : (v13 = 0), v13 ? (v14 = v12 <= 1.0) : (v14 = 0), v14))
  {
    v15 = 0;
  }

  else
  {
    v16 = AXSSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27.origin.x = v7;
      v27.origin.y = v8;
      v27.size.width = v9;
      v27.size.height = v10;
      v18 = NSStringFromRect(v27);
      v19 = +[AXMTUtilities sharedInstance];
      v20 = 136315650;
      v21 = "[AXMTVisionKitEyeTracker _detectCriticalErrorsForFace:]";
      v22 = 2112;
      v23 = v18;
      v24 = 2048;
      currentDeviceOrientation = [v19 currentDeviceOrientation];
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: faceBounds is out of bounds! face bounds: %@, orientation: %ld", &v20, 0x20u);
    }

    v15 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:1 userInfo:0];
  }

  return v15;
}

- (id)_detectNonCriticalErrorsForFace:(id)face
{
  faceCopy = face;
  if ([faceCopy hasYawAngle])
  {
    _baselineYaw = [(AXMTVisionKitEyeTracker *)self _baselineYaw];

    if (_baselineYaw)
    {
      _baselineYaw2 = [(AXMTVisionKitEyeTracker *)self _baselineYaw];
      [_baselineYaw2 doubleValue];
      v8 = v7;
      [faceCopy yawAngle];
      [(AXMTVisionKitEyeTracker *)self _minDistBetweenAngleA:v8 angleB:v9];
      v11 = v10;

      if (v11 > 20.0)
      {
        v12 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      v13 = AXSSLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        [faceCopy yawAngle];
        *buf = 134217984;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "using baseline yaw: %f", buf, 0xCu);
      }

      [faceCopy yawAngle];
      v15 = [NSNumber numberWithDouble:?];
      [(AXMTVisionKitEyeTracker *)self set_baselineYaw:v15];
    }
  }

  v12 = 0;
LABEL_9:
  if ([faceCopy hasPitchAngle])
  {
    _baselinePitch = [(AXMTVisionKitEyeTracker *)self _baselinePitch];
    v17 = _baselinePitch == 0;

    if (v17)
    {
      v25 = AXSSLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        [faceCopy pitchAngle];
        *buf = 134217984;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "using baseline pitch: %f", buf, 0xCu);
      }

      [faceCopy pitchAngle];
      v27 = [NSNumber numberWithDouble:?];
      [(AXMTVisionKitEyeTracker *)self set_baselinePitch:v27];
    }

    else
    {
      _baselinePitch2 = [(AXMTVisionKitEyeTracker *)self _baselinePitch];
      [_baselinePitch2 doubleValue];
      v20 = v19;
      [faceCopy pitchAngle];
      [(AXMTVisionKitEyeTracker *)self _minDistBetweenAngleA:v20 angleB:v21];
      v23 = v22 > 20.0;

      if (v23)
      {
        v24 = 1;
        goto LABEL_17;
      }
    }
  }

  v24 = 0;
LABEL_17:
  _baselineFaceBounds = [(AXMTVisionKitEyeTracker *)self _baselineFaceBounds];
  v29 = _baselineFaceBounds == 0;

  if (v29)
  {
    v30 = AXSSLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      [faceCopy bounds];
      v31 = NSStringFromRect(v85);
      *buf = 138412290;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "using baseline bounding box: %@", buf, 0xCu);
    }

    [faceCopy bounds];
    v32 = [NSValue valueWithRect:?];
    [(AXMTVisionKitEyeTracker *)self set_baselineFaceBounds:v32];
  }

  v33 = mach_absolute_time();
  _lastTimePoseRecorded = [(AXMTVisionKitEyeTracker *)self _lastTimePoseRecorded];
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v35 = off_1000545D8;
  v80 = off_1000545D8;
  if (!off_1000545D8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100020608;
    v82 = COERCE_DOUBLE(&unk_100048BA8);
    v83 = &v77;
    sub_100020608(buf);
    v35 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v35)
  {
    sub_100029794();
    __break(1u);
  }

  if (v35(v33 - _lastTimePoseRecorded) / 1000000000.0 > 1.0)
  {
    v36 = AXSSLogForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      [faceCopy bounds];
      v37 = NSStringFromRect(v86);
      v38 = -1.0;
      if ([faceCopy hasYawAngle])
      {
        [faceCopy yawAngle];
        v38 = v39;
      }

      hasPitchAngle = [faceCopy hasPitchAngle];
      v41 = -1.0;
      if (hasPitchAngle)
      {
        [faceCopy pitchAngle];
      }

      *buf = 138412802;
      *&buf[4] = v37;
      *&buf[12] = 2048;
      *&buf[14] = v38;
      *&buf[22] = 2048;
      v82 = v41;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "bounding box: %@, yaw: %f, pitch: %f", buf, 0x20u);
    }

    [(AXMTVisionKitEyeTracker *)self set_lastTimePoseRecorded:mach_absolute_time()];
  }

  _baselineFaceBounds2 = [(AXMTVisionKitEyeTracker *)self _baselineFaceBounds];
  [_baselineFaceBounds2 rectValue];
  v44 = v43;
  [faceCopy bounds];
  if (vabdd_f64(v44, v45) > 0.1)
  {

    v51 = v12 | v24;
    v50 = 1;
    goto LABEL_37;
  }

  _baselineFaceBounds3 = [(AXMTVisionKitEyeTracker *)self _baselineFaceBounds];
  [_baselineFaceBounds3 rectValue];
  v48 = v47;
  [faceCopy bounds];
  v50 = vabdd_f64(v48, v49) > 0.1;

  v51 = v12 | v24;
  if ((v12 | v24 | v50) == 1)
  {
LABEL_37:
    v63 = AXSSLogForCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = @"NO";
      if (v50)
      {
        v65 = @"YES";
      }

      else
      {
        v65 = @"NO";
      }

      if (v51)
      {
        v64 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v65;
      *&buf[12] = 2112;
      *&buf[14] = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "facePositionChangedSignificantly: %@, poseChangedSignificantly: %@", buf, 0x16u);
    }

    v62 = 4;
    goto LABEL_45;
  }

  [(AXMTVisionKitEyeTracker *)self fieldOfView];
  v53 = v52;
  [faceCopy bounds];
  v55 = v54;
  [faceCopy bounds];
  v57 = v56;
  LODWORD(v58) = v53;
  [(AXMTVisionKitEyeTracker *)self _calculateMinBoundingAreaBoxForFOV:v58];
  v60 = v59;
  LODWORD(v59) = v53;
  [(AXMTVisionKitEyeTracker *)self _calculateMaxBoundingAreaBoxForFOV:v59];
  if (v55 * v57 < v60)
  {
    v62 = 2;
LABEL_45:
    v66 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:v62 userInfo:0];
    goto LABEL_46;
  }

  if (v55 * v57 > v61)
  {
    v62 = 3;
    goto LABEL_45;
  }

  [(AXMTVisionKitEyeTracker *)self _currentAcceleration];
  if (![(AXMTVisionKitEyeTracker *)self _accelerationIsInvalid:?])
  {
    [(AXMTVisionKitEyeTracker *)self _lastAccelerationUpdate];
    if (![(AXMTVisionKitEyeTracker *)self _accelerationIsInvalid:?])
    {
      [(AXMTVisionKitEyeTracker *)self _currentAcceleration];
      v69 = v68;
      v71 = v70;
      v73 = v72;
      [(AXMTVisionKitEyeTracker *)self _lastAccelerationUpdate];
      if (![(AXMTVisionKitEyeTracker *)self _accelerationsAreWithinThreshold:v69 acceleration2:v71 threshold:v73, v74, v75, v76, 0.1])
      {
        v62 = 8;
        goto LABEL_45;
      }
    }
  }

  v66 = 0;
LABEL_46:

  return v66;
}

- (double)_calculateMinBoundingAreaBoxForFOV:(float)v
{
  v3 = v * -0.00225022 + 0.225222;
  v4 = v3 > 0.0 && v > 0.0;
  result = 0.04;
  if (v4)
  {
    return v3;
  }

  return result;
}

- (double)_calculateMaxBoundingAreaBoxForFOV:(float)v
{
  v3 = v * -0.00457768 + 0.477992;
  v4 = v3 > 0.0 && v > 0.0;
  result = 0.1;
  if (v4)
  {
    return v3;
  }

  return result;
}

- (double)_minDistBetweenAngleA:(double)a angleB:(double)b
{
  result = vabdd_f64(a, b);
  if (360.0 - result < result)
  {
    return 360.0 - result;
  }

  return result;
}

- (void)failedToTrackFaceWithError:(id)error
{
  errorCopy = error;
  delegate = [(AXMTVisionKitEyeTracker *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AXMTVisionKitEyeTracker *)self delegate];
    [delegate2 visionKitEyeTrackerLostFace:self error:errorCopy];
  }
}

- (void)didUpdateFieldOfView:(float)view
{
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AXMTVisionKitEyeTracker didUpdateFieldOfView:]";
    v9 = 2048;
    viewCopy = view;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: %f", &v7, 0x16u);
  }

  *&v6 = view;
  [(AXMTVisionKitEyeTracker *)self setFieldOfView:v6];
}

- (CGRect)_orientAVMetadataFaceBoundingBoxForCurrentOrientation:(CGRect)orientation
{
  height = orientation.size.height;
  width = orientation.size.width;
  x = orientation.origin.x;
  v6 = 1.0 - (orientation.origin.y + orientation.size.height);
  v7 = +[AXMTUtilities sharedInstance];
  currentDeviceOrientation = [v7 currentDeviceOrientation];

  if (currentDeviceOrientation == 2)
  {
    v6 = 1.0 - (height + v6);
    v12 = width;
    width = height;
    v11 = x;
  }

  else if (currentDeviceOrientation == 4)
  {
    v12 = height;
    v11 = v6;
    v6 = x;
  }

  else
  {
    v9 = x + width;
    if (currentDeviceOrientation == 3)
    {
      v10 = height + v6;
      v6 = 1.0 - v9;
      v11 = 1.0 - v10;
      v12 = height;
    }

    else
    {
      v11 = 1.0 - v9;
      v12 = width;
      width = height;
    }
  }

  v13 = v6;
  v14 = width;
  result.size.height = v12;
  result.size.width = v14;
  result.origin.y = v11;
  result.origin.x = v13;
  return result;
}

- (CGPoint)_normalizeRawPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AXMTVisionKitEyeTracker *)self _deviceOrientedCameraOffset];
  v7 = v6;
  v9 = v8;
  [(AXMTVisionKitEyeTracker *)self _deviceOrientedScreenSize];
  v11 = (x + v7) / v10;
  v13 = (v9 - y) / v12;
  result.y = v13;
  result.x = v11;
  return result;
}

- (CGVector)_deviceOrientedCameraOffset
{
  v3 = +[AXMTUtilities sharedInstance];
  currentDeviceOrientation = [v3 currentDeviceOrientation];

  [(AXMTVisionKitEyeTracker *)self _cameraOffsetInCM];
  v7 = v6;
  v8 = v5;
  if (currentDeviceOrientation == 4)
  {
    [(AXMTVisionKitEyeTracker *)self _screenSizeInCM];
    v9 = v7;
    v7 = v13 - v8;
  }

  else if (currentDeviceOrientation == 3)
  {
    [(AXMTVisionKitEyeTracker *)self _screenSizeInCM];
    v9 = v12 - v7;
    v7 = v8;
  }

  else
  {
    v9 = v5;
    if (currentDeviceOrientation == 2)
    {
      [(AXMTVisionKitEyeTracker *)self _screenSizeInCM];
      v9 = v10 - v8;
      [(AXMTVisionKitEyeTracker *)self _screenSizeInCM];
      v7 = v11 - v7;
    }
  }

  v14 = v7;
  v15 = v9;
  result.dy = v15;
  result.dx = v14;
  return result;
}

- (CGSize)_deviceOrientedScreenSize
{
  v3 = +[AXMTUtilities sharedInstance];
  currentDeviceOrientation = [v3 currentDeviceOrientation];

  if ((currentDeviceOrientation - 3) < 2)
  {
    [(AXMTVisionKitEyeTracker *)self _screenSizeInCM];
    v8 = v7;
    [(AXMTVisionKitEyeTracker *)self _screenSizeInCM];
    v6 = v9;
    v5 = v8;
  }

  else
  {

    [(AXMTVisionKitEyeTracker *)self _screenSizeInCM];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (CGPoint)_interfaceOrientedScreenPointForNormalizedDeviceOrientedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = +[AXMTUtilities sharedInstance];
  [v5 screenBoundsAccountingForPhysicalDeviceOrientation];
  v7 = v6;
  v9 = v8;

  v10 = +[AXMTUtilities sharedInstance];
  [v10 convertPointFromDeviceOrientation:{x * v7, y * v9}];
  v12 = v11;
  v14 = v13;

  v15 = +[AXMTUtilities sharedInstance];
  [v15 convertPointToInterfaceOrientation:{v12, v14}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)axmtUtilities_accelerometerDataUpdated:(id)updated
{
  updatedCopy = updated;
  [(AXMTVisionKitEyeTracker *)self _currentAcceleration];
  [(AXMTVisionKitEyeTracker *)self set_lastAccelerationUpdate:?];
  [updatedCopy acceleration];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [(AXMTVisionKitEyeTracker *)self set_currentAcceleration:v6, v8, v10];
}

- (void)dealloc
{
  v3 = +[AXMTUtilities sharedInstance];
  [v3 unregisterListener:self];

  v4.receiver = self;
  v4.super_class = AXMTVisionKitEyeTracker;
  [(AXMTVisionKitEyeTracker *)&v4 dealloc];
}

+ (unsigned)_imageOrientationForGazeRequest
{
  v2 = +[AXMTUtilities sharedInstance];
  currentDeviceOrientation = [v2 currentDeviceOrientation];

  if ((currentDeviceOrientation - 2) > 2)
  {
    return 6;
  }

  else
  {
    return dword_100034578[(currentDeviceOrientation - 2)];
  }
}

- (AXMTVisionKitEyeTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGVector)_cameraOffsetInCM
{
  dx = self->__cameraOffsetInCM.dx;
  dy = self->__cameraOffsetInCM.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGSize)_screenSizeInCM
{
  width = self->__screenSizeInCM.width;
  height = self->__screenSizeInCM.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_currentAcceleration
{
  x = self->$83A9B0F16167884A9BDC45564D3E7367::x;
  y = self->$83A9B0F16167884A9BDC45564D3E7367::y;
  z = self->$83A9B0F16167884A9BDC45564D3E7367::z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_lastAccelerationUpdate
{
  x = self->$83A9B0F16167884A9BDC45564D3E7367::x;
  y = self->$83A9B0F16167884A9BDC45564D3E7367::y;
  z = self->$83A9B0F16167884A9BDC45564D3E7367::z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end