@interface ARWorldAlignmentTechnique
- (ARWorldAlignmentTechnique)initWithAlignment:(int64_t)alignment cameraPosition:(int64_t)position;
- (BOOL)isBusy;
- (BOOL)isEqual:(id)equal;
- (float)_trackingAlignmentAngleForPoseData:(id)data deviceOrientation:(id)orientation;
- (id)_deviceOrientationPoseDataFromDeviceOrientation:(id)orientation;
- (id)_fullDescription;
- (id)_referenceTrackingAlignmentWithPoseData:(id)data deviceOrientation:(id)orientation;
- (id)_updateHeadingAlignmentWithPoseData:(id)data deviceOrientation:(id)orientation timestamp:(double)timestamp;
- (id)predictedResultDataAtTimestamp:(double)timestamp context:(id)context;
- (id)processData:(id)data;
- (id)resultDataClasses;
- (void)_handleTrackingStateChanges:(id)changes initialized:(BOOL *)initialized relocalized:(BOOL *)relocalized;
- (void)_referenceDeviceOrientation:(id)orientation;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation ARWorldAlignmentTechnique

- (ARWorldAlignmentTechnique)initWithAlignment:(int64_t)alignment cameraPosition:(int64_t)position
{
  v13.receiver = self;
  v13.super_class = ARWorldAlignmentTechnique;
  v6 = [(ARTechnique *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_alignment = alignment;
    v6->_cameraPosition = position;
    v8 = dispatch_semaphore_create(1);
    dataSemaphore = v7->_dataSemaphore;
    v7->_dataSemaphore = v8;

    v10 = [[ARTimeKeyedList alloc] initWithMaxSize:10];
    deviceOrientationDataByTime = v7->_deviceOrientationDataByTime;
    v7->_deviceOrientationDataByTime = v10;
  }

  return v7;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (id)processData:(id)data
{
  dataCopy = data;
  dispatch_semaphore_wait(self->_dataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceOrientationDataByTime = self->_deviceOrientationDataByTime;
    v6 = dataCopy;
    v7 = [v6 copy];
    [v6 timestamp];
    v9 = v8;

    [(ARTimeKeyedList *)deviceOrientationDataByTime appendObject:v7 forTime:v9];
  }

  dispatch_semaphore_signal(self->_dataSemaphore);

  return dataCopy;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v42[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [contextCopy resultDataOfClass:objc_opt_class()];
  lastObject = [v7 lastObject];

  dispatch_semaphore_wait(self->_dataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  imageMirrored = self->_imageMirrored;
  imageData = [contextCopy imageData];
  isMirrored = [imageData isMirrored];

  if (imageMirrored != isMirrored)
  {
    imageData2 = [contextCopy imageData];
    self->_imageMirrored = [imageData2 isMirrored];

    self->_deviceOrientationReferenced = 0;
    self->_trackingReferenced = 0;
  }

  v31 = 0;
  [(ARWorldAlignmentTechnique *)self _handleTrackingStateChanges:lastObject initialized:&v31 + 1 relocalized:&v31];
  worldTrackingState = [lastObject worldTrackingState];
  reason = [worldTrackingState reason];

  if (reason == 1)
  {

    lastObject = 0;
  }

  v15 = [(ARTimeKeyedList *)self->_deviceOrientationDataByTime nearestObjectForTime:timestamp];
  if (v15 && !self->_deviceOrientationReferenced)
  {
    [(ARWorldAlignmentTechnique *)self _referenceDeviceOrientation:v15];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (v31 != 1 || !self->_relocalizedAlignmentData)
  {
    if (v15)
    {
      if (lastObject)
      {
        if (!self->_trackingReferenced || HIBYTE(v31) == 1)
        {
          v18 = [(ARWorldAlignmentTechnique *)self _referenceTrackingAlignmentWithPoseData:lastObject deviceOrientation:v15];
          v19 = v18;
          if (HIBYTE(v31) == 1 && self->_trackingReferenced)
          {
            [v18 setSessionShouldResumeCameraPositionAndHeading:1];
          }

          else if (v16)
          {
            [v18 setReferenceOriginChanged:0];
          }

          v41 = v19;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
          self->_trackingReferenced = 1;
          goto LABEL_41;
        }

        if ([(ARWorldAlignmentTechnique *)self alignment]== 1)
        {
          v29 = [(ARWorldAlignmentTechnique *)self _updateHeadingAlignmentWithPoseData:lastObject deviceOrientation:v15 timestamp:timestamp];
          v19 = v29;
          if (!v29)
          {
            v17 = MEMORY[0x1E695E0F0];
            goto LABEL_41;
          }

          v40 = v29;
          v20 = MEMORY[0x1E695DEC8];
          v21 = &v40;
          goto LABEL_40;
        }

LABEL_35:
        v17 = MEMORY[0x1E695E0F0];
        goto LABEL_42;
      }

      v22 = [(ARWorldAlignmentTechnique *)self _deviceOrientationPoseDataFromDeviceOrientation:v15];
      v19 = v22;
      if (self->_trackingReferenced)
      {
        v23 = _ARLogTechnique_15();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          *buf = 138543618;
          v37 = v25;
          v38 = 2048;
          selfCopy = self;
          _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World Tracking Reference Cleared", buf, 0x16u);
        }

        self->_trackingReferenced = 0;
        v26 = objc_opt_new();
        [v26 setWorldAlignmentReset:1];
        [v26 setReferenceOriginChanged:1];
        if (reason == 1)
        {
          [v26 setSessionShouldResumeCameraPositionAndHeading:1];
        }

        else
        {
          [v26 setSessionShouldResumeCameraPosition:1];
        }

        v35[0] = v19;
        v35[1] = v26;
        v27 = MEMORY[0x1E695DEC8];
        v28 = v35;
        goto LABEL_38;
      }

      if (v16)
      {
        v26 = objc_opt_new();
        [v26 setWorldAlignmentReset:1];
        v34[0] = v19;
        v34[1] = v26;
        v27 = MEMORY[0x1E695DEC8];
        v28 = v34;
LABEL_38:
        v17 = [v27 arrayWithObjects:v28 count:2];

LABEL_41:
        goto LABEL_42;
      }

      v33 = v22;
      v20 = MEMORY[0x1E695DEC8];
      v21 = &v33;
    }

    else
    {
      if (reason != 1 || self->_trackingReferenced)
      {
        goto LABEL_35;
      }

      v19 = objc_opt_new();
      v32 = v19;
      v20 = MEMORY[0x1E695DEC8];
      v21 = &v32;
    }

LABEL_40:
    v17 = [v20 arrayWithObjects:v21 count:1];
    goto LABEL_41;
  }

  v42[0] = self->_relocalizedAlignmentData;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  self->_trackingReferenced = 1;
LABEL_42:

  dispatch_semaphore_signal(self->_dataSemaphore);
  delegate = [(ARTechnique *)self delegate];
  [delegate technique:self didOutputResultData:v17 timestamp:contextCopy context:timestamp];
}

- (id)predictedResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v39 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(self->_dataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (!self->_deviceOrientationReferenced || self->_trackingReferenced || [(ARWorldAlignmentTechnique *)self alignment]== 2)
  {
    goto LABEL_21;
  }

  motionManager = self->_motionManager;
  if (motionManager && [(CMMotionManager *)motionManager isPredictedDeviceMotionAvailable])
  {
    kdebug_trace();
    motionManager = [(ARWorldAlignmentTechnique *)self motionManager];
    v27 = 0;
    v8 = [motionManager predictedDeviceMotionAtTimestamp:&v27 error:timestamp];
    v9 = v27;

    [v8 timestamp];
    CFAbsoluteTimeGetCurrent();
    kdebug_trace();
    if (v8)
    {
      v10 = objc_opt_new();
      [v10 setDeviceMotion:v8];

      if (v10)
      {
LABEL_20:
        v24 = [(ARWorldAlignmentTechnique *)self _deviceOrientationPoseDataFromDeviceOrientation:v10];
        v28 = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];

        goto LABEL_22;
      }

      goto LABEL_18;
    }

    if (ARShouldUseLogTypeError_onceToken_19 != -1)
    {
      [ARWorldAlignmentTechnique predictedResultDataAtTimestamp:context:];
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_19;
    v12 = _ARLogSensor_6();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [v9 description];
        v17 = self->_motionManager;
        *buf = 138544386;
        v30 = v15;
        v31 = 2048;
        selfCopy2 = self;
        v33 = 2112;
        v34 = v16;
        v35 = 2048;
        timestampCopy2 = timestamp;
        v37 = 2048;
        v38 = v17;
        v18 = "%{public}@ <%p>: Error(%@) Failed to get device motion prediction at timestamp (%f) from motion manager (%p)";
        v19 = v13;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_16:
        _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v15 = NSStringFromClass(v21);
      v16 = [v9 description];
      v22 = self->_motionManager;
      *buf = 138544386;
      v30 = v15;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2112;
      v34 = v16;
      v35 = 2048;
      timestampCopy2 = timestamp;
      v37 = 2048;
      v38 = v22;
      v18 = "Error: %{public}@ <%p>: Error(%@) Failed to get device motion prediction at timestamp (%f) from motion manager (%p)";
      v19 = v13;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_16;
    }
  }

LABEL_18:
  v23 = [(ARTimeKeyedList *)self->_deviceOrientationDataByTime nearestObjectForTime:timestamp];
  if (v23)
  {
    v10 = v23;
    goto LABEL_20;
  }

LABEL_21:
  v25 = MEMORY[0x1E695E0F0];
LABEL_22:
  dispatch_semaphore_signal(self->_dataSemaphore);

  return v25;
}

- (void)_referenceDeviceOrientation:(id)orientation
{
  v22 = *MEMORY[0x1E69E9840];
  orientationCopy = orientation;
  if ([(ARWorldAlignmentTechnique *)self alignment]== 1 && !self->_relocalizing)
  {
    if (self->_cameraPosition == 2)
    {
      self->_deviceOrientationAlignmentAngle = 3.1416;
      v14 = _ARLogTechnique_15();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      v17 = objc_opt_class();
      v16 = NSStringFromClass(v17);
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = 0x4066800000000000;
    }

    else
    {
      self->_deviceOrientationAlignmentAngle = 0.0;
      v14 = _ARLogTechnique_15();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      v18 = objc_opt_class();
      v16 = NSStringFromClass(v18);
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = 0;
    }

    goto LABEL_10;
  }

  if (orientationCopy)
  {
    [orientationCopy rotationMatrix];
  }

  else
  {
    v21 = 0;
    memset(buf, 0, sizeof(buf));
  }

  v5.n128_f64[0] = ARCameraToWorldTransformFromCMRotationMatrix(buf, self->_cameraPosition, self->_imageMirrored);
  *&v8 = AREulerAnglesFromMatrix(v5, v6, v7);
  v19 = v8;
  v9 = *(&v8 + 1);
  v10 = -*(&v8 + 1);
  self->_deviceOrientationAlignmentAngle = -*(&v8 + 1);
  v11 = _ARLogTechnique_15();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544386;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2048;
    *&buf[24] = *&v19 * 0.318309886 * 180.0;
    *&buf[32] = 2048;
    *&buf[34] = v9 * 0.318309886 * 180.0;
    *&buf[42] = 2048;
    *&buf[44] = *(&v19 + 2) * 0.318309886 * 180.0;
    _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Device Orientation Referenced at (%0.2f° %0.2f° %0.2f°)", buf, 0x34u);
  }

  v14 = _ARLogTechnique_15();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543874;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2048;
    *&buf[24] = v10 * 0.318309886 * 180.0;
LABEL_10:
    _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Device Orientation Alignment (%0.2f°)", buf, 0x20u);
  }

LABEL_11:

  self->_deviceOrientationReferenced = 1;
}

- (float)_trackingAlignmentAngleForPoseData:(id)data deviceOrientation:(id)orientation
{
  dataCopy = data;
  if (orientation)
  {
    [orientation rotationMatrix];
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  v7.n128_f64[0] = ARCameraToWorldTransformFromCMRotationMatrix(v18, self->_cameraPosition, self->_imageMirrored);
  *v10.i64 = AREulerAnglesFromMatrix(v7, v8, v9);
  v17 = v10;
  [dataCopy cameraTransform];
  *v14.i64 = AREulerAnglesFromMatrix(v11, v12, v13);
  v15 = COERCE_FLOAT(vsubq_f32(v14, v17).i32[1]) - self->_deviceOrientationAlignmentAngle;

  return v15;
}

- (id)_referenceTrackingAlignmentWithPoseData:(id)data deviceOrientation:(id)orientation
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  orientationCopy = orientation;
  v8 = objc_opt_new();
  [v8 setReferenceOriginChanged:1];
  alignment = [(ARWorldAlignmentTechnique *)self alignment];
  v10 = 0.0;
  if (alignment != 16)
  {
    [(ARWorldAlignmentTechnique *)self _trackingAlignmentAngleForPoseData:dataCopy deviceOrientation:orientationCopy, 0.0];
  }

  self->_trackingAlignmentAngle = v10;
  [dataCopy cameraTransform];
  *self->_trackingAlignmentTranslation = v11;
  v12 = __sincosf_stret(self->_trackingAlignmentAngle * 0.5);
  v13 = vmulq_n_f32(xmmword_1C25C8BC0, v12.__sinval);
  v13.i32[3] = LODWORD(v12.__cosval);
  simd_matrix4x4(v13);
  ARMatrix4x4FromRotationAndTranslation();
  [v8 setWorldAlignmentTransform:?];
  v14 = _ARLogTechnique_15();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v8 worldAlignmentTransform];
    v21 = ARMatrix4x4Description(0, v17, v18, v19, v20);
    *buf = 138543874;
    v24 = v16;
    v25 = 2048;
    selfCopy = self;
    v27 = 2112;
    v28 = v21;
    _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World Tracking Referenced: %@", buf, 0x20u);
  }

  return v8;
}

- (id)_updateHeadingAlignmentWithPoseData:(id)data deviceOrientation:(id)orientation timestamp:(double)timestamp
{
  v7 = timestamp - self->_lastHeadingUpdateTimestamp;
  [(ARWorldAlignmentTechnique *)self _trackingAlignmentAngleForPoseData:data deviceOrientation:orientation];
  trackingAlignmentAngle = self->_trackingAlignmentAngle;
  v10 = vabds_f32(v8, trackingAlignmentAngle);
  v11 = (4.0 / sqrtf(v7)) + 2.0;
  v12 = v10 + -6.28318531;
  v13 = fabsf(v12);
  if (v10 > 3.14159265)
  {
    v10 = v13;
  }

  if (v11 * 3.14159265 / 180.0 >= v10)
  {
    v17 = 0;
  }

  else
  {
    self->_lastHeadingUpdateTimestamp = timestamp;
    if (v10 <= 0.523598776)
    {
      v14 = v10 * 0.125;
      v15 = v8 <= trackingAlignmentAngle;
      v8 = trackingAlignmentAngle - v14;
      v16 = trackingAlignmentAngle + v14;
      if (!v15)
      {
        v8 = v16;
      }
    }

    self->_trackingAlignmentAngle = v8;
    v17 = objc_opt_new();
    [v17 setReferenceOriginChanged:0];
    v18 = __sincosf_stret(self->_trackingAlignmentAngle * 0.5);
    v19 = vmulq_n_f32(xmmword_1C25C8BC0, v18.__sinval);
    v19.i32[3] = LODWORD(v18.__cosval);
    simd_matrix4x4(v19);
    ARMatrix4x4FromRotationAndTranslation();
    [v17 setWorldAlignmentTransform:?];
  }

  return v17;
}

- (id)_deviceOrientationPoseDataFromDeviceOrientation:(id)orientation
{
  orientationCopy = orientation;
  v5 = orientationCopy;
  if (orientationCopy)
  {
    [orientationCopy rotationMatrix];
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
  }

  *&v6 = ARCameraToWorldTransformFromCMRotationMatrix(&v23, self->_cameraPosition, self->_imageMirrored);
  v21 = v7;
  v22 = v6;
  v19 = v9;
  v20 = v8;
  v10 = objc_opt_new();
  [v5 timestamp];
  [v10 setTimestamp:?];
  v11 = __sincosf_stret(self->_deviceOrientationAlignmentAngle * 0.5);
  v12 = vmulq_n_f32(xmmword_1C25C8BC0, v11.__sinval);
  v12.i32[3] = LODWORD(v11.__cosval);
  *v13.i64 = simd_matrix4x4(v12);
  v17 = 0;
  v28[0] = v22;
  v28[1] = v21;
  v28[2] = v20;
  v28[3] = v19;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  do
  {
    *(&v23 + v17 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v28[v17])), v14, *&v28[v17], 1), v15, v28[v17], 2), v16, v28[v17], 3);
    ++v17;
  }

  while (v17 != 4);
  [v10 setCameraTransform:{*&v23, *&v24, *&v25, *&v26}];

  return v10;
}

- (void)_handleTrackingStateChanges:(id)changes initialized:(BOOL *)initialized relocalized:(BOOL *)relocalized
{
  changesCopy = changes;
  worldTrackingState = [changesCopy worldTrackingState];
  reason = [worldTrackingState reason];

  if (changesCopy)
  {
    lastTrackingStateReason = self->_lastTrackingStateReason;
    if (lastTrackingStateReason != reason)
    {
      if (reason == 1)
      {
        self->_relocalizing = 1;
        if (lastTrackingStateReason != 4)
        {
          memset(&v22[1], 0, 24);
          memset(&v22[5], 0, 24);
          v12 = objc_opt_new();
          v22[0] = 0x3FF0000000000000;
          v22[4] = 0x3FF0000000000000;
          v22[8] = 0x3FF0000000000000;
          [v12 setRotationMatrix:v22];
          [(ARWorldAlignmentTechnique *)self _referenceDeviceOrientation:v12];
          v13 = [(ARWorldAlignmentTechnique *)self _referenceTrackingAlignmentWithPoseData:changesCopy deviceOrientation:v12];
          relocalizedAlignmentData = self->_relocalizedAlignmentData;
          self->_relocalizedAlignmentData = v13;
        }

        [(ARTimeKeyedList *)self->_deviceOrientationDataByTime clear];
        self->_deviceOrientationReferenced = 0;
      }

      else
      {
        worldTrackingState2 = [changesCopy worldTrackingState];
        if ([worldTrackingState2 majorRelocalization])
        {
        }

        else
        {
          worldTrackingState3 = [changesCopy worldTrackingState];
          [worldTrackingState3 lastMajorRelocalizationTimestamp];
          v18 = v17;
          lastMajorRelocalizationTimestamp = self->_lastMajorRelocalizationTimestamp;

          if (v18 <= lastMajorRelocalizationTimestamp)
          {
            if (initialized && self->_lastTrackingStateReason == 1)
            {
              *initialized = 1;
            }

            goto LABEL_13;
          }
        }

        if (relocalized)
        {
          *relocalized = 1;
        }

        self->_relocalizing = 0;
        worldTrackingState4 = [changesCopy worldTrackingState];
        [worldTrackingState4 lastMajorRelocalizationTimestamp];
        self->_lastMajorRelocalizationTimestamp = v21;
      }

LABEL_13:
      self->_lastTrackingStateReason = reason;
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = ARWorldAlignmentTechnique;
  if ([(ARTechnique *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    alignment = [(ARWorldAlignmentTechnique *)self alignment];
    if (alignment == [v5 alignment])
    {
      cameraPosition = [(ARWorldAlignmentTechnique *)self cameraPosition];
      v8 = cameraPosition == [v5 cameraPosition];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v12.receiver = self;
  v12.super_class = ARWorldAlignmentTechnique;
  _fullDescription = [(ARTechnique *)&v12 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", _fullDescription];

  if (self->_relocalizing)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"\tRelocalizing %@\n", v6];
  if (self->_trackingReferenced)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v5 appendFormat:@"\tTrackingReferenced %@\n", v7];
  [v5 appendFormat:@"\tLatestTrakingStateReason %ld\n", self->_lastTrackingStateReason];
  v8 = [(ARTimeKeyedList *)self->_deviceOrientationDataByTime description];
  v9 = [v8 description];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v5 appendFormat:@"\tOrientationData %@\n", v10];

  return v5;
}

- (BOOL)isBusy
{
  v3 = dispatch_semaphore_wait(self->_dataSemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_dataSemaphore);
  }

  return v3 != 0;
}

@end