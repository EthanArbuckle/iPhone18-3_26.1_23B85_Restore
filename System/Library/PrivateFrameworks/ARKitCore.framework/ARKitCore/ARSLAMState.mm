@interface ARSLAMState
- (ARPointCloud)pointCloud;
- (ARSLAMState)initWithCoder:(id)coder;
- (ARSLAMState)initWithSLAMState:(CV3DSLAMStateContext *)state;
- (BOOL)setSLAMState:(CV3DSLAMStateContext *)state;
- (NSDictionary)tracingEntry;
- (NSString)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARSLAMState

- (ARSLAMState)initWithSLAMState:(CV3DSLAMStateContext *)state
{
  v7.receiver = self;
  v7.super_class = ARSLAMState;
  v4 = [(ARSLAMState *)&v7 init];
  if (!v4)
  {
    goto LABEL_5;
  }

  if (ARMinVergenceAngleCosineDefault_onceToken != -1)
  {
    [ARSLAMState initWithSLAMState:];
  }

  *&v4->_minVergenceAngleCosine = ARMinVergenceAngleCosineDefault_sMinVergenceAngleCosine;
  if (![(ARSLAMState *)v4 setSLAMState:state])
  {
    v5 = 0;
  }

  else
  {
LABEL_5:
    v5 = v4;
  }

  return v5;
}

- (BOOL)setSLAMState:(CV3DSLAMStateContext *)state
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_slamState)
  {
    CV3DSLAMStateRelease();
    self->_timestamp = 0.0;
    self->_slamState = 0;
  }

  Timestamp = CV3DSLAMStateGetTimestamp();
  v6 = *MEMORY[0x1E698BD80];
  if (Timestamp != *MEMORY[0x1E698BD80])
  {
    if (ARShouldUseLogTypeError_onceToken_29 != -1)
    {
      [ARSLAMState setSLAMState:];
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_29;
    v8 = _ARLogGeneral_19();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromCV3DSLAMReturn(Timestamp);
        *buf = 138543874;
        v19 = v11;
        v20 = 2048;
        selfCopy2 = self;
        v22 = 2114;
        v23 = v12;
        v13 = "%{public}@ <%p>: Failed to get timestamp for SLAM state: %{public}@";
        v14 = v9;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v14, v15, v13, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v11 = NSStringFromClass(v16);
      v12 = NSStringFromCV3DSLAMReturn(Timestamp);
      *buf = 138543874;
      v19 = v11;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = v12;
      v13 = "Error: %{public}@ <%p>: Failed to get timestamp for SLAM state: %{public}@";
      v14 = v9;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    return Timestamp == v6;
  }

  self->_slamState = state;
  self->_timestamp = 0.0;
  CV3DSLAMStateRetain();
  return Timestamp == v6;
}

- (void)dealloc
{
  CV3DSLAMStateRelease();
  v3.receiver = self;
  v3.super_class = ARSLAMState;
  [(ARSLAMState *)&v3 dealloc];
}

- (ARPointCloud)pointCloud
{
  v29 = *MEMORY[0x1E69E9840];
  trackingState = [(ARSLAMState *)self trackingState];
  if (trackingState)
  {
    v4 = trackingState;
    data = _ARLogGeneral_19();
    if (os_log_type_enabled(data, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromCV3DVIOTrackingState(v4);
      v23 = 138543874;
      v24 = v7;
      v25 = 2048;
      selfCopy3 = self;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_1C241C000, data, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Point cloud rejected because tracking state is %{public}@", &v23, 0x20u);
    }

    goto LABEL_15;
  }

  data = [MEMORY[0x1E695DF88] data];
  PointCloud = CV3DSLAMStateGetPointCloud();
  if (PointCloud == *MEMORY[0x1E698BD80])
  {
    v10 = [[ARPointCloud alloc] initWithCV3DPointData:data minVergenceAngleCosine:self->_minVergenceAngleCosine];
    goto LABEL_16;
  }

  v11 = PointCloud;
  if (ARShouldUseLogTypeError_onceToken_29 != -1)
  {
    [ARSLAMState pointCloud];
  }

  v12 = ARShouldUseLogTypeError_internalOSVersion_29;
  v13 = _ARLogGeneral_19();
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromCV3DSLAMReturn(v11);
      v23 = 138543874;
      v24 = v16;
      v25 = 2048;
      selfCopy3 = self;
      v27 = 2114;
      v28 = v17;
      v18 = "%{public}@ <%p>: Unable to retrieve point cloud from SLAM state: %{public}@";
      v19 = v14;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_13:
      _os_log_impl(&dword_1C241C000, v19, v20, v18, &v23, 0x20u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v21 = objc_opt_class();
    v16 = NSStringFromClass(v21);
    v17 = NSStringFromCV3DSLAMReturn(v11);
    v23 = 138543874;
    v24 = v16;
    v25 = 2048;
    selfCopy3 = self;
    v27 = 2114;
    v28 = v17;
    v18 = "Error: %{public}@ <%p>: Unable to retrieve point cloud from SLAM state: %{public}@";
    v19 = v14;
    v20 = OS_LOG_TYPE_INFO;
    goto LABEL_13;
  }

LABEL_15:
  v10 = 0;
LABEL_16:

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [(ARSLAMState *)self timestamp];
  [v6 appendFormat:@" timestamp=%f", v7];
  LODWORD(v5) = [(ARSLAMState *)self slamMode];
  v8 = NSStringFromCV3DSLAMMode(v5);
  [v6 appendFormat:@" mode=%@", v8];

  if (v5 == *MEMORY[0x1E698BD50])
  {
    v9 = NSStringFromCV3DVisualSLAMState([(ARSLAMState *)self visualSLAMState]);
    [v6 appendFormat:@" visualSLAMState=%@", v9];

    [v6 appendFormat:@" visualSLAMTransitions=%i", CV3DSLAMStateGetNumberOfVOToVIOStateTransitions()];
    if (CV3DSLAMStateIsGravityUpdated())
    {
      v10 = @"yes";
    }

    else
    {
      v10 = @"no";
    }

    [v6 appendFormat:@" gravityUpdated=%@", v10];
  }

  v11 = NSStringFromCV3DVIOTrackingState([(ARSLAMState *)self trackingState]);
  [v6 appendFormat:@" trackingState=%@", v11];

  CV3DSLAMStateNumReinit();
  [v6 appendFormat:@" reinitCount=%i", 0];
  CV3DSLAMStateIsPoseLocked();
  [v6 appendFormat:@" poseLocked=%@", @"no"];
  v12 = CV3DSLAMStateCopyCurrentTrackingCameraIds();
  v13 = CV3DSLAMStateCopyCameraFrameRates();
  v14 = [v12 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@" cameras={%@}", v14];

  v15 = [v13 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@" frameRates={%@}", v15];

  [v6 appendString:@">"];

  return v6;
}

- (NSDictionary)tracingEntry
{
  v54[9] = *MEMORY[0x1E69E9840];
  v3 = ARQATraceableDefaultEntryForResultData(self);
  v4 = [v3 mutableCopy];

  LODWORD(v3) = [(ARSLAMState *)self slamMode];
  v5 = NSStringFromCV3DSLAMMode(v3);
  [v4 setObject:v5 forKeyedSubscript:@"mode"];

  v6 = NSStringFromCV3DVIOTrackingState([(ARSLAMState *)self trackingState]);
  [v4 setObject:v6 forKeyedSubscript:@"trackingState"];

  if (v3 == *MEMORY[0x1E698BD50])
  {
    v7 = NSStringFromCV3DVisualSLAMState([(ARSLAMState *)self visualSLAMState]);
    [v4 setObject:v7 forKeyedSubscript:@"visualSLAMState"];

    v8 = [MEMORY[0x1E696AD98] numberWithInt:CV3DSLAMStateGetNumberOfVOToVIOStateTransitions()];
    [v4 setObject:v8 forKeyedSubscript:@"visualSLAMTransitions"];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:CV3DSLAMStateIsGravityUpdated()];
    [v4 setObject:v9 forKeyedSubscript:@"gravityUpdated"];
  }

  memset(v54, 0, 72);
  memset(&v53[2], 0, 24);
  if (CV3DSLAMStateGetPoseInCameraFrame() == *MEMORY[0x1E698BD80])
  {
    *v56.columns[0].i64 = ARMatrix4x4MakeRowMajorTransform(v54);
    v57 = __invert_f4(v56);
    v36 = v57.columns[1];
    v38 = v57.columns[0];
    v32 = v57.columns[3];
    v34 = v57.columns[2];
    *v10.i64 = ARVisionToRenderingCoordinateTransform();
    v14 = 0;
    v40 = v38;
    v41 = v36;
    v42 = v34;
    v43 = v32;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    do
    {
      *(&v44 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*(&v40 + v14))), v11, *&v40.f32[v14 / 4], 1), v12, *(&v40 + v14), 2), v13, *(&v40 + v14), 3);
      v14 += 16;
    }

    while (v14 != 64);
    v37 = v45;
    v39 = v44;
    v33 = v47;
    v35 = v46;
    *v15.i64 = ARRenderingToVisionCoordinateTransform();
    v16 = 0;
    v40 = v15;
    v41 = v17;
    v42 = v18;
    v43 = v19;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    do
    {
      *(&v44 + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*(&v40 + v16))), v37, *&v40.f32[v16 / 4], 1), v35, *(&v40 + v16), 2), v33, *(&v40 + v16), 3);
      v16 += 16;
    }

    while (v16 != 64);
    v20 = [ARQAHelper arrayWithMatrix4x4:*v44.i64, *v45.i64, *v46.i64, *v47.i64];
    [v4 setObject:v20 forKeyedSubscript:@"cameraPose"];
  }

  v40.i32[0] = 0;
  CV3DSLAMStateGetMapSize();
  CV3DSLAMStateWasTrackingMap();
  v52[0] = @"size";
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", v40.u32[0]];
  v52[1] = @"tracking";
  v53[0] = v21;
  v53[1] = @"no";
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  [v4 setObject:v22 forKeyedSubscript:@"map"];

  CV3DSLAMStateIsInitFinished();
  CV3DSLAMStateNumReinit();
  v50[0] = @"finished";
  v50[1] = @"reinitCount";
  v51[0] = @"no";
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", 0];
  v51[1] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
  [v4 setObject:v24 forKeyedSubscript:@"initialization"];

  v25 = CV3DSLAMStateCopyCurrentTrackingCameraIds();
  v26 = CV3DSLAMStateCopyCameraFrameRates();
  CameraTrackRatiosPerCamera = CV3DSLAMStateGetCameraTrackRatiosPerCamera();
  [v4 setObject:v25 forKeyedSubscript:@"cameraIDs"];
  [v4 setObject:v26 forKeyedSubscript:@"frameRates"];
  [v4 setObject:CameraTrackRatiosPerCamera forKeyedSubscript:@"trackRatios"];
  CV3DSLAMStateRelocalizationEvent();
  v44.i64[0] = 0;
  CV3DSLAMStateGetRelocalizationTimestamp();
  CV3DSLAMStateIsGlobalRelocalization();
  CV3DSLAMStateRelocalizationSucceeded();
  v49[0] = @"no";
  v48[0] = @"event";
  v48[1] = @"timestamp";
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:*v44.i64];
  v49[1] = v28;
  v49[2] = @"no";
  v48[2] = @"global";
  v48[3] = @"success";
  v49[3] = @"no";
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];
  [v4 setObject:v29 forKeyedSubscript:@"relocalization"];

  if (CV3DSLAMStateShouldUseVisualSLAM())
  {
    v30 = @"yes";
  }

  else
  {
    v30 = @"no";
  }

  [v4 setObject:v30 forKeyedSubscript:@"useVisualSLAM"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [(ARSLAMState *)self slamState];
  v5 = CV3DSLAMStateSerializeToData();
  if (!v5 || (v6 = v5, !CFDataGetLength(v5)))
  {
    if (ARShouldUseLogTypeError_onceToken_29 != -1)
    {
      [ARSLAMState pointCloud];
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_29;
    v8 = _ARLogGeneral_19();
    v6 = v8;
    if (v7 == 1)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v15 = 138543618;
      v16 = v10;
      v17 = 2048;
      selfCopy2 = self;
      v11 = "%{public}@ <%p>: Failed to serialize SLAM state";
      v12 = v6;
      v13 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v14 = objc_opt_class();
      v10 = NSStringFromClass(v14);
      v15 = 138543618;
      v16 = v10;
      v17 = 2048;
      selfCopy2 = self;
      v11 = "Error: %{public}@ <%p>: Failed to serialize SLAM state";
      v12 = v6;
      v13 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v12, v13, v11, &v15, 0x16u);

    goto LABEL_12;
  }

  [coderCopy encodeObject:v6 forKey:@"slamState"];
LABEL_12:
}

- (ARSLAMState)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slamState"];
  if (!v5)
  {
    if (ARShouldUseLogTypeError_onceToken_29 != -1)
    {
      [ARSLAMState pointCloud];
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_29;
    v9 = _ARLogGeneral_19();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543618;
        v24 = v12;
        v25 = 2048;
        selfCopy4 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to deserialize SLAM state", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543618;
      v24 = v18;
      v25 = 2048;
      selfCopy4 = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to deserialize SLAM state", buf, 0x16u);
    }

    goto LABEL_21;
  }

  v6 = CV3DSLAMStateCreateFromData();
  if (!v6)
  {
    if (ARShouldUseLogTypeError_onceToken_29 != -1)
    {
      [ARSLAMState pointCloud];
    }

    v13 = ARShouldUseLogTypeError_internalOSVersion_29;
    v14 = _ARLogGeneral_19();
    v10 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138543618;
        v24 = v16;
        v25 = 2048;
        selfCopy4 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to create SLAM state from data", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543618;
      v24 = v20;
      v25 = 2048;
      selfCopy4 = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to create SLAM state from data", buf, 0x16u);
    }

LABEL_21:

    selfCopy5 = 0;
    goto LABEL_22;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __29__ARSLAMState_initWithCoder___block_invoke;
  v22[3] = &__block_descriptor_40_e5_v8__0l;
  v22[4] = v6;
  self = [(ARSLAMState *)self initWithSLAMState:v6];
  (__29__ARSLAMState_initWithCoder___block_invoke)(v22);
  selfCopy5 = self;
LABEL_22:

  return selfCopy5;
}

@end