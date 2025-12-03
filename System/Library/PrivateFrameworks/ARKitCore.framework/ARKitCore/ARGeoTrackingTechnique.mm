@interface ARGeoTrackingTechnique
+ (BOOL)isCameraUp:(float)up;
+ (BOOL)isSupportedWithOptions:(unint64_t)options;
+ (int64_t)getFailureReasonFromVLError:(int64_t)error;
- (ARGeoTrackingTechnique)init;
- (ARGeoTrackingTechnique)initWithAuditToken:(id)token;
- (BOOL)reconfigurableFrom:(id)from;
- (__n128)getLocationFromWorldPosition:(int8x16_t *)position@<X8> error:(__n128)error@<Q0>;
- (id)processData:(id)data;
- (id)resultDataClasses;
- (int64_t)_getHighestPriorityFailureWithTechniqueStateObject:(id)object;
- (void)_callVLWithHandle:(double)handle pixelBuffer:(__n128)buffer deviceLocation:(__n128)location heading:(__n128)heading inputGravity:(__n128)gravity vioTransform:(uint64_t)transform cameraIntrinsics:(void *)intrinsics radialDistortion:(uint64_t)self0 exposureTargetOffset:(void *)self1 timestamp:(__int128 *)self2 vlDeterminismSemaphore:(void *)self3 completionHandler:(void *)self4;
- (void)_estimateEnuFromVioFromCLCM:(id)m;
- (void)_estimatePose:(id)pose pose:(id)a4;
- (void)_logVioTransform:(float32x4_t)transform withTimestamp:(float32x4_t)timestamp withSuffix:(float32x4_t)suffix;
- (void)_setTrackingState:(int64_t)state techniqueStateObject:(id)object;
- (void)_simulateReplayLocationUpdates:(id)updates;
- (void)_updateVLStateData:(double)data;
- (void)dealloc;
- (void)prepare:(BOOL)prepare;
- (void)reconfigureFrom:(id)from;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation ARGeoTrackingTechnique

- (ARGeoTrackingTechnique)init
{
  v28 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = ARGeoTrackingTechnique;
  v2 = [(ARTechnique *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_resultLock._os_unfair_lock_opaque = 0;
    v4 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.visualLocalizationQueue");
    visualLocalizationQueue = v3->_visualLocalizationQueue;
    v3->_visualLocalizationQueue = v4;

    v3->_resetLock._os_unfair_lock_opaque = 0;
    [(ARGeoTrackingTechnique *)v3 setVLPoseEstimationExecuting:0];
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.geotracking.visualLocalizationCallInterval"];
    [(ARGeoTrackingTechnique *)v3 setVisualLocalizationCallInterval:v6];
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.geotracking.posteriorVisualLocalizationCallInterval"];
    [(ARGeoTrackingTechnique *)v3 setPosteriorVisualLocalizationCallInterval:v7];
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.geotracking.visualLocalizationCallIntervalTimeThreshold"];
    [(ARGeoTrackingTechnique *)v3 setVisualLocalizationCallIntervalTimeThreshold:v8];
    [(ARGeoTrackingTechnique *)v3 setVisualLocalizationUpdatesRequested:1];
    [(ARGeoTrackingTechnique *)v3 setSupportEnablementOptions:0];
    v3->_statusLock._os_unfair_lock_opaque = 0;
    [(ARGeoTrackingTechnique *)v3 setVLTraceRecorder:0];
    v9 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.geotracking.useclfusion"];
    v3->_useCoreLocationFusion = v9;
    if (v9)
    {
      v10 = _ARLogTechnique_1();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543618;
        v23 = v12;
        v24 = 2048;
        v25 = v3;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: CL fusion is enabled.", buf, 0x16u);
      }
    }

    v3->_useGradualCorrection = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.geotracking.usegradualcorrection"];
    v3->_useVLTraceRecorder = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.geotracking.useVLTraceRecorder"];
    v13 = [[ARGeoTrackingTechniqueState alloc] initWithResetCount:0];
    state = v3->_state;
    v3->_state = v13;

    [MEMORY[0x1E69E0300] maximumHorizontalAccuracyThreshold];
    v3->_maxHorizontalAccuracy = v15;
    v16 = _ARLogTechnique_1();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      maxHorizontalAccuracy = v3->_maxHorizontalAccuracy;
      *buf = 138543874;
      v23 = v18;
      v24 = 2048;
      v25 = v3;
      v26 = 2048;
      v27 = maxHorizontalAccuracy;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: self.maxHorizontalAccuracy %fm", buf, 0x20u);
    }

    v3->_requestResultDataAtTimestampCallCount = 0;
  }

  return v3;
}

- (ARGeoTrackingTechnique)initWithAuditToken:(id)token
{
  tokenCopy = token;
  v6 = [(ARGeoTrackingTechnique *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auditToken, token);
  }

  return v7;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v14 = v5;
    v15 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  if (self->_VLTraceRecorder)
  {
    vLTraceRecorder = [(ARGeoTrackingTechnique *)self VLTraceRecorder];
    [vLTraceRecorder finish];
  }

  v7 = _ARLogTechnique_1();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138543618;
    v14 = v9;
    v15 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Stopping location simulation", buf, 0x16u);
  }

  locationSimulationManager = [(ARGeoTrackingTechnique *)self locationSimulationManager];
  [locationSimulationManager clearSimulatedLocations];

  locationSimulationManager2 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
  [locationSimulationManager2 stopLocationSimulation];

  v12.receiver = self;
  v12.super_class = ARGeoTrackingTechnique;
  [(ARGeoTrackingTechnique *)&v12 dealloc];
}

- (void)prepare:(BOOL)prepare
{
  v26 = *MEMORY[0x1E69E9840];
  self->_deterministic = prepare;
  vLHandle = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];

  if (!vLHandle)
  {
    if (self->_auditToken)
    {
      v5 = [objc_alloc(MEMORY[0x1E69E0300]) initWithAuditToken:self->_auditToken];
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;
    [(ARGeoTrackingTechniqueState *)self->_state setVLHandle:v5];

    v7 = _ARLogTechnique_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      vLHandle2 = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];
      v20 = 138543874;
      v21 = v9;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2048;
      v25 = vLHandle2;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VLHandle created,%p", &v20, 0x20u);
    }
  }

  if (!self->_VLTraceRecorder && self->_useVLTraceRecorder)
  {
    vLHandle3 = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];
    [vLHandle3 _setDebugInfoShouldPreserveImageData:1];

    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/Caches/VisualLocalization/Traces"];
    v13 = _ARLogTechnique_1();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      absoluteString = [v12 absoluteString];
      uTF8String = [absoluteString UTF8String];
      v20 = 138543874;
      v21 = v15;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2080;
      v25 = uTF8String;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Capturing traces at %s", &v20, 0x20u);
    }

    v18 = [objc_alloc(MEMORY[0x1E69E0308]) initWithDirectory:v12];
    [(ARGeoTrackingTechnique *)self setVLTraceRecorder:v18];

    vLTraceRecorder = [(ARGeoTrackingTechnique *)self VLTraceRecorder];
    [vLTraceRecorder start];
  }
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (BOOL)reconfigurableFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (void)reconfigureFrom:(id)from
{
  v14 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = _ARLogTechnique_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reconfiguring existing geo tracking technique.", &v10, 0x16u);
  }

  v8 = fromCopy;
  [v8 visualLocalizationCallInterval];
  [(ARGeoTrackingTechnique *)self setVisualLocalizationCallInterval:?];
  [v8 posteriorVisualLocalizationCallInterval];
  [(ARGeoTrackingTechnique *)self setPosteriorVisualLocalizationCallInterval:?];
  [v8 visualLocalizationCallIntervalTimeThreshold];
  [(ARGeoTrackingTechnique *)self setVisualLocalizationCallIntervalTimeThreshold:?];
  visualLocalizationUpdatesRequested = [v8 visualLocalizationUpdatesRequested];

  [(ARGeoTrackingTechnique *)self setVisualLocalizationUpdatesRequested:visualLocalizationUpdatesRequested];
}

- (void)_simulateReplayLocationUpdates:(id)updates
{
  v27 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if (([updatesCopy isSecure] & 1) == 0)
  {
    location = [updatesCopy location];
    v6 = [location copy];

    v7 = _ARLogTechnique_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v21 = 138543874;
      v22 = v9;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Simulating Location to CL: %@", &v21, 0x20u);
    }

    locationSimulationManager = [(ARGeoTrackingTechnique *)self locationSimulationManager];

    if (!locationSimulationManager)
    {
      v11 = _ARLogTechnique_1();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v21 = 138543618;
        v22 = v13;
        v23 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Creating location simulation manager.", &v21, 0x16u);
      }

      v14 = objc_alloc_init(MEMORY[0x1E695FC40]);
      [(ARGeoTrackingTechnique *)self setLocationSimulationManager:v14];

      locationSimulationManager2 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
      [locationSimulationManager2 stopLocationSimulation];

      locationSimulationManager3 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
      [locationSimulationManager3 clearSimulatedLocations];
    }

    locationSimulationManager4 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
    [locationSimulationManager4 setLocationDistance:1.0];

    locationSimulationManager5 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
    [locationSimulationManager5 setLocationRepeatBehavior:1];

    locationSimulationManager6 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
    [locationSimulationManager6 appendSimulatedLocation:v6];

    locationSimulationManager7 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
    [locationSimulationManager7 startLocationSimulation];
  }
}

- (id)processData:(id)data
{
  v138 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  os_unfair_lock_lock(&self->_resetLock);
  v5 = self->_state;
  os_unfair_lock_unlock(&self->_resetLock);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_52;
    }

    v35 = dataCopy;
    deviceMotion = [v35 deviceMotion];
    if ([deviceMotion magneticFieldCalibrationLevel] != -1)
    {
      deviceMotion2 = [v35 deviceMotion];
      magneticFieldCalibrationLevel = [deviceMotion2 magneticFieldCalibrationLevel];

      if (!magneticFieldCalibrationLevel)
      {
LABEL_13:

        goto LABEL_52;
      }

      deviceMotion = [v35 copy];
      [(ARGeoTrackingTechniqueState *)v5 setLastCMDeviceMotion:deviceMotion];
      if (self->_useCoreMotionFusion)
      {
        [(ARGeoTrackingTechniqueState *)v5 addDeviceMotionData:deviceMotion];
      }
    }

    goto LABEL_13;
  }

  v6 = dataCopy;
  v7 = _ARLogTechnique_1();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    location = [v6 location];
    [location coordinate];
    v11 = v10;
    location2 = [v6 location];
    [location2 coordinate];
    v13 = v12;
    location3 = [v6 location];
    [location3 altitude];
    v15 = v14;
    location4 = [v6 location];
    [location4 altitudeWgs84];
    v17 = v16;
    location5 = [v6 location];
    isAltitudeWgs84Available = [location5 isAltitudeWgs84Available];
    location6 = [v6 location];
    isCoordinateFused = [location6 isCoordinateFused];
    location7 = [v6 location];
    [location7 rawCoordinate];
    v19 = v18;
    [v6 location];
    v20 = v103 = dataCopy;
    [v20 rawCoordinate];
    v22 = v21;
    [v6 location];
    v23 = v102 = v5;
    [v23 horizontalAccuracy];
    v25 = v24;
    location8 = [v6 location];
    [location8 rawHorizontalAccuracy];
    v28 = v27;
    location9 = [v6 location];
    isCoordinateFusedWithVL = [location9 isCoordinateFusedWithVL];
    location10 = [v6 location];
    [location10 ellipsoidalAltitude];
    *buf = 138546691;
    v111 = v9;
    v112 = 2048;
    selfCopy11 = self;
    v114 = 2049;
    v115 = v11;
    v116 = 2049;
    v117 = v13;
    v118 = 2049;
    v119 = v15;
    v120 = 2049;
    v121 = v17;
    v122 = 1024;
    v123 = isAltitudeWgs84Available;
    v124 = 1024;
    v125 = isCoordinateFused;
    v126 = 2049;
    v127 = v19;
    v128 = 2049;
    v129 = v22;
    v130 = 2049;
    v131 = v25;
    v132 = 2049;
    v133 = v28;
    v134 = 1024;
    v135 = isCoordinateFusedWithVL;
    v136 = 2049;
    v137 = v32;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received new location point: lat=%{private}.8f, lon=%{private}.8f, alt=%{private}.3f, alt_wgs84=%{private}.3f, wgs84_available=%d, fused=%d, rawLat=%{private}.8f, rawLon=%{private}.8f, acc=%{private}.3f, rawAcc=%{private}.3f, fusedWithVL=%d, ellipsoidalAltitude=%{private}.3f.", buf, 0x82u);

    v5 = v102;
    dataCopy = v103;
  }

  [(ARGeoTrackingTechnique *)self _simulateReplayLocationUpdates:v6];
  location11 = [v6 location];
  if ([location11 type] == 6)
  {
    goto LABEL_5;
  }

  location12 = [v6 location];
  type = [location12 type];

  if (type == 10)
  {
    v34 = 0;
    goto LABEL_16;
  }

  location11 = [v6 location];
  [location11 horizontalAccuracy];
  if ((v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v34 = 0;
  }

  else
  {
    location13 = [v6 location];
    [location13 horizontalAccuracy];
    if (v51 >= 0.0)
    {
      location14 = [v6 location];
      [location14 horizontalAccuracy];
      v34 = v75 < self->_maxHorizontalAccuracy;
    }

    else
    {
      v34 = 0;
    }
  }

LABEL_16:
  if (!-[ARGeoTrackingTechniqueState hasStartedAvailabilityCheck](v5, "hasStartedAvailabilityCheck") && ([v6 isUndulationValid] & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_7 != -1)
    {
      [ARGeoTrackingTechnique processData:];
    }

    v41 = ARShouldUseLogTypeError_internalOSVersion_7;
    v42 = _ARLogTechnique_1();
    v43 = v42;
    if (v41 == 1)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        *buf = 138543618;
        v111 = v45;
        v112 = 2048;
        selfCopy11 = self;
        v46 = "%{public}@ <%p>: Location to set ENU origin must have undulation.";
        v47 = v43;
        v48 = OS_LOG_TYPE_ERROR;
LABEL_28:
        _os_log_impl(&dword_1C241C000, v47, v48, v46, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v52 = objc_opt_class();
      v45 = NSStringFromClass(v52);
      *buf = 138543618;
      v111 = v45;
      v112 = 2048;
      selfCopy11 = self;
      v46 = "Error: %{public}@ <%p>: Location to set ENU origin must have undulation.";
      v47 = v43;
      v48 = OS_LOG_TYPE_INFO;
      goto LABEL_28;
    }

    v34 = 0;
  }

  if (([v6 isAltitudeValid] & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_7 != -1)
    {
      [ARGeoTrackingTechnique processData:];
    }

    v61 = ARShouldUseLogTypeError_internalOSVersion_7;
    v62 = _ARLogTechnique_1();
    v63 = v62;
    if (v61 == 1)
    {
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        *buf = 138543618;
        v111 = v65;
        v112 = 2048;
        selfCopy11 = self;
        v66 = "%{public}@ <%p>: Received location must have valid altitude.";
        v67 = v63;
        v68 = OS_LOG_TYPE_ERROR;
LABEL_46:
        _os_log_impl(&dword_1C241C000, v67, v68, v66, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v69 = objc_opt_class();
      v65 = NSStringFromClass(v69);
      *buf = 138543618;
      v111 = v65;
      v112 = 2048;
      selfCopy11 = self;
      v66 = "Error: %{public}@ <%p>: Received location must have valid altitude.";
      v67 = v63;
      v68 = OS_LOG_TYPE_INFO;
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (v34)
  {
    v53 = _ARLogTechnique_1();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      *buf = 138543618;
      v111 = v55;
      v112 = 2048;
      selfCopy11 = self;
      _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received location valid for geo tracking.", buf, 0x16u);
    }

    [(ARGeoTrackingTechniqueState *)v5 removeFailureReason:1024];
    v56 = [v6 copy];
    [(ARGeoTrackingTechniqueState *)v5 setLastCLLocation:v56];
    if (![(ARGeoTrackingTechniqueState *)v5 hasStartedAvailabilityCheck])
    {
      v57 = _ARLogTechnique_1();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        *buf = 138543618;
        v111 = v59;
        v112 = 2048;
        selfCopy11 = self;
        _os_log_impl(&dword_1C241C000, v57, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received candidate location for ENU origin. Checking geo tracking availability.", buf, 0x16u);
      }

      [(ARGeoTrackingTechniqueState *)v5 setHasStartedAvailabilityCheck:1];
      [(ARGeoTrackingTechniqueState *)v5 addFailureReason:4096];
      if (self->_deterministic)
      {
        v60 = dispatch_semaphore_create(0);
      }

      else
      {
        v60 = 0;
      }

      location15 = [v56 location];
      [location15 coordinate];
      v78 = v77;
      v80 = v79;
      supportEnablementOptions = [(ARGeoTrackingTechnique *)self supportEnablementOptions];
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __38__ARGeoTrackingTechnique_processData___block_invoke;
      v105[3] = &unk_1E817C3A0;
      v82 = v60;
      v106 = v82;
      selfCopy8 = self;
      v108 = v5;
      v109 = v56;
      [ARGeoTrackingConfiguration checkAvailabilityAtCoordinate:supportEnablementOptions withOptions:v105 completionHandler:v78, v80];

      if (v82)
      {
        v83 = _ARLogTechnique_1();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          v84 = objc_opt_class();
          v85 = NSStringFromClass(v84);
          *buf = 138543618;
          v111 = v85;
          v112 = 2048;
          selfCopy11 = self;
          _os_log_impl(&dword_1C241C000, v83, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Waiting for availability check to finish", buf, 0x16u);
        }

        dispatch_semaphore_wait(v82, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    vLHandle = [(ARGeoTrackingTechniqueState *)v5 VLHandle];
    if (!vLHandle)
    {
      goto LABEL_51;
    }

    v87 = vLHandle;
    visualLocalizationUpdatesRequested = [(ARGeoTrackingTechnique *)self visualLocalizationUpdatesRequested];

    if (!visualLocalizationUpdatesRequested)
    {
      goto LABEL_51;
    }

    v89 = _ARLogTechnique_1();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      v90 = objc_opt_class();
      v91 = NSStringFromClass(v90);
      *buf = 138543618;
      v111 = v91;
      v112 = 2048;
      selfCopy11 = self;
      _os_log_impl(&dword_1C241C000, v89, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Pre-warming VL with this location.", buf, 0x16u);
    }

    vLHandle2 = [(ARGeoTrackingTechniqueState *)v5 VLHandle];
    location16 = [v6 location];
    [vLHandle2 prepareWithDeviceLocation:location16];

    goto LABEL_50;
  }

LABEL_48:
  v56 = _ARLogTechnique_1();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    v70 = objc_opt_class();
    vLHandle2 = NSStringFromClass(v70);
    *buf = 138543618;
    v111 = vLHandle2;
    v112 = 2048;
    selfCopy11 = self;
    _os_log_impl(&dword_1C241C000, v56, OS_LOG_TYPE_INFO, "%{public}@ <%p>: New location is not valid for geo tracking.", buf, 0x16u);
LABEL_50:
  }

LABEL_51:

LABEL_52:
  v104.receiver = self;
  v104.super_class = ARGeoTrackingTechnique;
  v72 = [(ARTechnique *)&v104 processData:dataCopy];

  return v72;
}

void __38__ARGeoTrackingTechnique_processData___block_invoke(id *a1, char a2, void *a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v55 = __38__ARGeoTrackingTechnique_processData___block_invoke_2;
  v56 = &unk_1E817BFE8;
  v57 = a1[4];
  os_unfair_lock_lock(a1[5] + 26);
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(v6 + 14);
  os_unfair_lock_unlock(v6 + 26);
  if (v7 == v8)
  {
    [a1[6] setHasReturnedAvailabilityCheck:1];
    [a1[6] removeFailureReason:4096];
    if (a2)
    {
      [a1[6] setEnuOrigin:a1[7]];
      v13 = _ARLogTechnique_1();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v49 = NSStringFromClass(v14);
        v46 = a1[5];
        v48 = [a1[7] location];
        [v48 coordinate];
        v16 = v15;
        v47 = [a1[7] location];
        [v47 coordinate];
        v18 = v17;
        v19 = [a1[7] location];
        [v19 horizontalAccuracy];
        v21 = v20;
        v22 = [a1[7] location];
        [v22 altitude];
        v24 = v23;
        v25 = [a1[7] location];
        v26 = [v25 isAltitudeWgs84Available];
        v27 = [a1[7] location];
        [v27 altitudeWgs84];
        v29 = v28;
        [a1[7] timestamp];
        *buf = 138545411;
        v59 = v49;
        v60 = 2048;
        v61 = v46;
        v62 = 2049;
        v63 = v16;
        v64 = 2049;
        v65 = v18;
        v66 = 2049;
        v67 = v21;
        v68 = 2049;
        v69 = v24;
        v70 = 1024;
        *v71 = v26;
        *&v71[4] = 2049;
        *&v71[6] = v29;
        *&v71[14] = 2048;
        *&v71[16] = v30;
        _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL ENU origin set: latitude,%{private}.08f,longitude,%{private}.08f,horizAccuracy,%{private}f,altitude,%{private}.06f,isAltitudeWgs84Available:%d,altitudeWGS84:%{private}.06f,timestamp:%.06f", buf, 0x58u);
      }

      v31 = _ARLogTechnique_1();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = a1[5];
        v35 = a1[7];
        if (v35)
        {
          [v35 locationECEF];
          v35 = a1[7];
          v36 = v53;
          if (v35)
          {
            [v35 locationECEF];
            v35 = a1[7];
            v37 = v52;
            if (v35)
            {
              [v35 locationECEF];
              v50 = v51;
              v35 = a1[7];
            }

            else
            {
              v50 = 0;
            }
          }

          else
          {
            v50 = 0;
            v37 = 0;
          }
        }

        else
        {
          v50 = 0;
          v37 = 0;
          v36 = 0;
        }

        [v35 timestamp];
        *buf = 138544643;
        v59 = v33;
        v60 = 2048;
        v61 = v34;
        v62 = 2049;
        v63 = v36;
        v64 = 2049;
        v65 = v37;
        v66 = 2049;
        v67 = v50;
        v68 = 2048;
        v69 = v41;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL ECEFxENUorigin,%{private}f,ECEFyENUorigin,%{private}f,ECEFzENUorigin,%{private}f,ts,%f", buf, 0x3Eu);
      }

      v42 = a1[7];
      if (v42)
      {
        [v42 ecefFromlocation];
      }

      v9 = _ARLogTechnique_1();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = a1[5];
        *buf = 138547714;
        v59 = v44;
        v60 = 2048;
        v61 = v45;
        v62 = 2048;
        v63 = 0;
        v64 = 2048;
        v65 = 0;
        v66 = 2048;
        v67 = 0;
        v68 = 2048;
        v69 = 0;
        v70 = 2048;
        *v71 = 0;
        *&v71[8] = 2048;
        *&v71[10] = 0;
        *&v71[18] = 2048;
        *&v71[20] = 0;
        v72 = 2048;
        v73 = 0;
        v74 = 2048;
        v75 = 0;
        v76 = 2048;
        v77 = 0;
        v78 = 2048;
        v79 = 0;
        v80 = 2048;
        v81 = 0;
        v82 = 2048;
        v83 = 0;
        v84 = 2048;
        v85 = 0;
        v86 = 2048;
        v87 = 0;
        v88 = 2048;
        v89 = 0;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ECEFxENUorigin:-ecefFromEnu %f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f", buf, 0xB6u);
      }
    }

    else
    {
      [a1[6] addFailureReason:512];
      [a1[5] _setTrackingState:0 techniqueStateObject:a1[6]];
      v9 = _ARLogTechnique_1();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = a1[5];
        *buf = 138543618;
        v59 = v39;
        v60 = 2048;
        v61 = v40;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Geo tracking is not available at received location. Cannot run geo tracking.", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = _ARLogTechnique_1();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = a1[5];
      *buf = 138543618;
      v59 = v11;
      v60 = 2048;
      v61 = v12;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Geo tracking was reset while availability check was running.", buf, 0x16u);
    }
  }

  v55(v54);
}

NSObject *__38__ARGeoTrackingTechnique_processData___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  STACK[0x6C8] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  ++self->_requestResultDataAtTimestampCallCount;
  [(ARGeoTrackingTechniqueState *)self->_state firstRequestResultTimestamp];
  if (v7 <= 0.0)
  {
    [(ARGeoTrackingTechniqueState *)self->_state setFirstRequestResultTimestamp:timestamp];
  }

  imageData = [contextCopy imageData];
  cameraType = [imageData cameraType];
  v10 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(cameraType);

  if (v10)
  {
    v11 = [contextCopy resultDataOfClass:objc_opt_class()];
    v12 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
    if (![v11 count])
    {
      [(ARGeoTrackingTechniqueState *)self->_state firstRequestResultTimestamp];
      if (timestamp - v25 > 1.5)
      {
        [(ARGeoTrackingTechniqueState *)self->_state addFailureReason:64];
      }

      goto LABEL_91;
    }

    v13 = [v11 objectAtIndexedSubscript:0];
    [(ARGeoTrackingTechniqueState *)self->_state lastPoseOriginTimestamp];
    if (v14 == 0.0)
    {
      worldTrackingState = [v13 worldTrackingState];
      [worldTrackingState originTimestamp];
      [(ARGeoTrackingTechniqueState *)self->_state setLastPoseOriginTimestamp:?];
    }

    worldTrackingState2 = [v13 worldTrackingState];
    [worldTrackingState2 originTimestamp];
    v18 = v17;
    [(ARGeoTrackingTechniqueState *)self->_state lastPoseOriginTimestamp];
    v20 = v19;

    if (v18 > v20)
    {
      os_unfair_lock_lock(&self->_resetLock);
      v21 = [[ARGeoTrackingTechniqueState alloc] initWithResetCount:[(ARGeoTrackingTechniqueState *)self->_state resetCount]+ 1];
      state = self->_state;
      self->_state = v21;

      worldTrackingState3 = [v13 worldTrackingState];
      [worldTrackingState3 originTimestamp];
      [(ARGeoTrackingTechniqueState *)self->_state setLastPoseOriginTimestamp:?];

      if (self->_auditToken)
      {
        v24 = [objc_alloc(MEMORY[0x1E69E0300]) initWithAuditToken:self->_auditToken];
      }

      else
      {
        v24 = objc_opt_new();
      }

      v26 = v24;
      [(ARGeoTrackingTechniqueState *)self->_state setVLHandle:v24];

      useVLTraceRecorder = self->_useVLTraceRecorder;
      vLHandle = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];
      [vLHandle _setDebugInfoShouldPreserveImageData:useVLTraceRecorder];

      os_unfair_lock_unlock(&self->_resetLock);
      v29 = _ARLogTechnique_1();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        vLHandle2 = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];
        LODWORD(STACK[0x610]) = 138543874;
        STACK[0x614] = v31;
        LOWORD(STACK[0x61C]) = 2048;
        STACK[0x61E] = self;
        LOWORD(STACK[0x626]) = 2048;
        STACK[0x628] = vLHandle2;
        _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reset detected. VLHandle created,%p", &STACK[0x610], 0x20u);
      }
    }

    v235 = 0u;
    *&STACK[0x600] = 0u;
    v233 = 0u;
    __x = 0u;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    [v13 visionCameraTransform];
    ARMatrix4x4FloatToDouble(&v221, v33, v34, v35, v36);
    v37 = v226;
    *&STACK[0x650] = v225;
    *&STACK[0x660] = v37;
    v38 = v228;
    *&STACK[0x670] = v227;
    *&STACK[0x680] = v38;
    v39 = v222;
    *&STACK[0x610] = v221;
    *&STACK[0x620] = v39;
    v40 = v224;
    *&STACK[0x630] = v223;
    *&STACK[0x640] = v40;
    __invert_d4();
    v41 = acos(__x.f64[0]) * 0.318309886;
    v42 = v41 * 180.0;
    *&v41 = v41 * 180.0;
    v43 = [ARGeoTrackingTechnique isCameraUp:v41];
    v44 = self->_state;
    if (v43)
    {
      [(ARGeoTrackingTechniqueState *)v44 removeFailureReason:128];
    }

    else
    {
      [(ARGeoTrackingTechniqueState *)v44 addFailureReason:128];
    }

    worldTrackingState4 = [v13 worldTrackingState];
    vioTrackingState = [worldTrackingState4 vioTrackingState];

    v47 = self->_state;
    if (vioTrackingState)
    {
      [(ARGeoTrackingTechniqueState *)v47 addFailureReason:64];
    }

    else
    {
      [(ARGeoTrackingTechniqueState *)v47 removeFailureReason:64];
    }

    if (([(ARGeoTrackingTechniqueState *)self->_state failureReasons]& 0x40) != 0 || ([(ARGeoTrackingTechniqueState *)self->_state failureReasons]& 0x80) != 0)
    {
LABEL_90:

      v12 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
LABEL_91:
      [imageData timestamp];
      [(ARGeoTrackingTechnique *)self _updateVLStateData:?];
      v186 = v12[145];
      os_unfair_lock_lock((self + v186));
      v187 = objc_alloc(MEMORY[0x1E695DEC8]);
      resultDatas = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
      v189 = [v187 initWithArray:resultDatas];

      resultDatas2 = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
      [resultDatas2 removeAllObjects];

      os_unfair_lock_unlock((self + v186));
      delegate = [(ARTechnique *)self delegate];
      LOBYTE(v186) = objc_opt_respondsToSelector();

      if (v186)
      {
        delegate2 = [(ARTechnique *)self delegate];
        [delegate2 technique:self didOutputResultData:v189 timestamp:contextCopy context:timestamp];
      }

      goto LABEL_94;
    }

    [(ARGeoTrackingTechniqueState *)self->_state removeFailureReason:64];
    [(ARGeoTrackingTechniqueState *)self->_state addVioPoseData:v13];
    if ([(ARGeoTrackingTechniqueState *)self->_state VLHasExecuted])
    {
      lastCLLocation = [(ARGeoTrackingTechniqueState *)self->_state lastCLLocation];
      if (self->_useCoreLocationFusion || self->_useCoreMotionFusion)
      {
        [(ARGeoTrackingTechnique *)self _estimateEnuFromVioFromCLCM:lastCLLocation];
      }

      if (self->_useGradualCorrection)
      {
        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        [v13 visionCameraTransform];
        v53 = [(ARGeoTrackingTechniqueState *)self->_state gradualCorrectionFilter:ARMatrix4x4FloatToDouble(&v221];
        [v13 timestamp];
        v54 = v226;
        *&STACK[0x650] = v225;
        *&STACK[0x660] = v54;
        v55 = v228;
        *&STACK[0x670] = v227;
        *&STACK[0x680] = v55;
        v56 = v222;
        *&STACK[0x610] = v221;
        *&STACK[0x620] = v56;
        v57 = v224;
        *&STACK[0x630] = v223;
        *&STACK[0x640] = v57;
        [v53 updateWithVIOPose:&STACK[0x610] timestamp:?];

        v219 = 0u;
        v220 = 0u;
        v217 = 0u;
        v218 = 0u;
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        gradualCorrectionFilter = [(ARGeoTrackingTechniqueState *)self->_state gradualCorrectionFilter];
        v59 = [gradualCorrectionFilter getCurrentENUFromVIO:&v213];

        if (v59)
        {
          v60 = v218;
          *&STACK[0x650] = v217;
          *&STACK[0x660] = v60;
          v61 = v220;
          *&STACK[0x670] = v219;
          *&STACK[0x680] = v61;
          v62 = v214;
          *&STACK[0x610] = v213;
          *&STACK[0x620] = v62;
          v63 = v216;
          *&STACK[0x630] = v215;
          *&STACK[0x640] = v63;
          [(ARGeoTrackingTechniqueState *)self->_state setEnuFromVIO:&STACK[0x610]];
          v64 = v218;
          *&STACK[0x650] = v217;
          *&STACK[0x660] = v64;
          v65 = v220;
          *&STACK[0x670] = v219;
          *&STACK[0x680] = v65;
          v66 = v214;
          *&STACK[0x610] = v213;
          *&STACK[0x620] = v66;
          v67 = v216;
          *&STACK[0x630] = v215;
          *&STACK[0x640] = v67;
          __invert_d4();
          v68 = ARMatrix4x4DoubleToFloat(&v205);
          v195 = v69;
          latitudea = v68;
          v193 = v71;
          v194 = v70;
          v72 = [ARGeoTrackingData alloc];
          enuOrigin = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];
          v193 = [(ARGeoTrackingData *)v72 initWithENUOrigin:enuOrigin vioFromENU:latitudea, v195, v194, v193];

          os_unfair_lock_lock(&self->_resultLock);
          resultDatas3 = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
          [resultDatas3 addObject:v193];

          os_unfair_lock_unlock(&self->_resultLock);
        }
      }

      *&STACK[0x670] = 0u;
      *&STACK[0x680] = 0u;
      *&STACK[0x650] = 0u;
      *&STACK[0x660] = 0u;
      *&STACK[0x630] = 0u;
      *&STACK[0x640] = 0u;
      *&STACK[0x610] = 0u;
      *&STACK[0x620] = 0u;
      enuOrigin2 = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];
      v77 = enuOrigin2;
      if (enuOrigin2)
      {
        [enuOrigin2 ecefFromlocation];
      }

      else
      {
        *&STACK[0x670] = 0u;
        *&STACK[0x680] = 0u;
        *&STACK[0x650] = 0u;
        *&STACK[0x660] = 0u;
        *&STACK[0x630] = 0u;
        *&STACK[0x640] = 0u;
        *&STACK[0x610] = 0u;
        *&STACK[0x620] = 0u;
      }

      v78 = self->_state;
      v79 = 0uLL;
      if (v78)
      {
        [(ARGeoTrackingTechniqueState *)v78 enuFromVIO];
        v79 = 0uLL;
        v80 = v213;
        v81 = v214;
        v82 = v215;
        v83 = v216;
        v84 = v217;
        v85 = v218;
        v86 = v219;
        v87 = v220;
      }

      else
      {
        v86 = 0uLL;
        v87 = 0uLL;
        v84 = 0uLL;
        v85 = 0uLL;
        v82 = 0uLL;
        v83 = 0uLL;
        v80 = 0uLL;
        v81 = 0uLL;
      }

      v88 = 0;
      v209 = v233;
      v210 = __x;
      v89 = *&STACK[0x600];
      v211 = v235;
      v212 = v89;
      v205 = v229;
      v206 = v230;
      v207 = v231;
      v208 = v232;
      v221 = v79;
      v222 = v79;
      v223 = v79;
      v224 = v79;
      v225 = v79;
      v226 = v79;
      v227 = v79;
      v228 = v79;
      do
      {
        v91 = *(&v205 + v88);
        v90 = *(&v205 + v88 + 16);
        v92 = (&v221 + v88);
        *v92 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v80, v91.f64[0]), v82, v91, 1), v84, v90.f64[0]), v86, v90, 1);
        v92[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v81, v91.f64[0]), v83, v91, 1), v85, v90.f64[0]), v87, v90, 1);
        v88 += 32;
      }

      while (v88 != 128);
      v93 = 0;
      v95 = *&STACK[0x610];
      v94 = *&STACK[0x620];
      v97 = *&STACK[0x630];
      v96 = *&STACK[0x640];
      v99 = *&STACK[0x650];
      v98 = *&STACK[0x660];
      v101 = *&STACK[0x670];
      v100 = *&STACK[0x680];
      v209 = v225;
      v210 = v226;
      v211 = v227;
      v212 = v228;
      v205 = v221;
      v206 = v222;
      v207 = v223;
      v208 = v224;
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      do
      {
        v103 = *(&v205 + v93);
        v102 = *(&v205 + v93 + 16);
        v104 = (&v213 + v93);
        *v104 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v95, v103.f64[0]), v97, v103, 1), v99, v102.f64[0]), v101, v102, 1);
        v104[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v94, v103.f64[0]), v96, v103, 1), v98, v102.f64[0]), v100, v102, 1);
        v93 += 32;
      }

      while (v93 != 128);
      v205 = v219;
      v206 = v220;
      ARECEFToLLA(&vars0);
      *latitudeb = vars0;
      v105 = objc_opt_class();
      v209 = v225;
      v210 = v226;
      v211 = v227;
      v212 = v228;
      v205 = v221;
      v206 = v222;
      v207 = v223;
      v208 = v224;
      [v105 getHeadingForEnuFromCam:&v205];
      v107 = v106 * 0.318309886 * 180.0;
      enuOrigin3 = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];
      [enuOrigin3 undulation];
      v110 = ARWGS84ToMSLAltitude(v204, v109);

      v111 = [ARLocationEstimationData alloc];
      v112 = CLLocationCoordinate2DMake(latitudeb[0], latitudeb[1]);
      v107 = [(ARLocationEstimationData *)v111 initWithCoordinates:v112.latitude altitude:v112.longitude heading:v110, v107];
      os_unfair_lock_lock(&self->_resultLock);
      resultDatas4 = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
      [resultDatas4 addObject:v107];

      os_unfair_lock_unlock(&self->_resultLock);
    }

    if (0xEEEEEEEEEEEEEEEFLL * self->_requestResultDataAtTimestampCallCount + 0x888888888888888 > 0x1111111111111110)
    {
LABEL_75:
      lastCMDeviceMotion = [(ARGeoTrackingTechniqueState *)self->_state lastCMDeviceMotion];
      if (lastCMDeviceMotion)
      {
        v167 = lastCMDeviceMotion;
        lastCLLocation2 = [(ARGeoTrackingTechniqueState *)self->_state lastCLLocation];
        if (lastCLLocation2)
        {
          v169 = lastCLLocation2;
          enuOrigin4 = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];

          if (enuOrigin4)
          {
            [(ARGeoTrackingTechniqueState *)self->_state firstVLExecutionAttemptTimestamp];
            if (v171 < 0.0)
            {
              [imageData timestamp];
              [(ARGeoTrackingTechniqueState *)self->_state setFirstVLExecutionAttemptTimestamp:?];
            }

            [imageData timestamp];
            v173 = v172;
            [(ARGeoTrackingTechniqueState *)self->_state firstVLExecutionAttemptTimestamp];
            v175 = v173 - v174;
            [(ARGeoTrackingTechnique *)self visualLocalizationCallIntervalTimeThreshold];
            if (v175 >= v176)
            {
              [(ARGeoTrackingTechnique *)self posteriorVisualLocalizationCallInterval];
            }

            else
            {
              [(ARGeoTrackingTechnique *)self visualLocalizationCallInterval];
            }

            v178 = v177;
            if (![(ARGeoTrackingTechnique *)self VLPoseEstimationExecuting])
            {
              if ([(ARGeoTrackingTechnique *)self visualLocalizationUpdatesRequested])
              {
                [imageData timestamp];
                v180 = v179;
                [(ARGeoTrackingTechniqueState *)self->_state lastVLExecutionAttemptTimestamp];
                if (v180 - v181 > v178)
                {
                  [imageData timestamp];
                  [(ARGeoTrackingTechniqueState *)self->_state setLastVLExecutionAttemptTimestamp:?];
                  [(ARGeoTrackingTechniqueState *)self->_state setFailureReasons:0];
                  v182 = _ARLogTechnique_1();
                  if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
                  {
                    v183 = objc_opt_class();
                    v184 = NSStringFromClass(v183);
                    [MEMORY[0x1E69E0300] minimumTiltAngle];
                    LODWORD(STACK[0x610]) = 138544130;
                    STACK[0x614] = v184;
                    LOWORD(STACK[0x61C]) = 2048;
                    STACK[0x61E] = self;
                    LOWORD(STACK[0x626]) = 2048;
                    *&STACK[0x628] = v42;
                    LOWORD(STACK[0x630]) = 2048;
                    *&STACK[0x632] = 180.0 - v185;
                    _os_log_impl(&dword_1C241C000, v182, OS_LOG_TYPE_INFO, "%{public}@ <%p>: pitchDegs<- %f minimumTiltAngle<- %f", &STACK[0x610], 0x2Au);
                  }

                  [(ARGeoTrackingTechnique *)self _estimatePose:imageData pose:v13];
                }
              }
            }
          }
        }

        else
        {
        }
      }

      goto LABEL_90;
    }

    if ([(ARGeoTrackingTechniqueState *)self->_state trackingState]== 3)
    {
      v227 = 0u;
      v228 = 0u;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v115 = self->_state;
      if (v115)
      {
        [(ARGeoTrackingTechniqueState *)v115 enuFromVIO];
      }

      else
      {
        v219 = 0uLL;
        v220 = 0uLL;
        v217 = 0uLL;
        v218 = 0uLL;
        v215 = 0uLL;
        v216 = 0uLL;
        v213 = 0uLL;
        v214 = 0uLL;
      }

      v116 = v218;
      *&STACK[0x650] = v217;
      *&STACK[0x660] = v116;
      v117 = v220;
      *&STACK[0x670] = v219;
      *&STACK[0x680] = v117;
      v118 = v214;
      *&STACK[0x610] = v213;
      *&STACK[0x620] = v118;
      v119 = v216;
      *&STACK[0x630] = v215;
      *&STACK[0x640] = v119;
      __invert_d4();
      v120 = _ARLogTechnique_1();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        v121 = objc_opt_class();
        v122 = NSStringFromClass(v121);
        v124 = v221;
        v123 = v222;
        v126 = v223;
        v125 = v224;
        v128 = v225;
        v127 = v226;
        v130 = v227;
        v129 = v228;
        LODWORD(STACK[0x610]) = 138547714;
        STACK[0x614] = v122;
        LOWORD(STACK[0x61C]) = 2048;
        STACK[0x61E] = self;
        LOWORD(STACK[0x626]) = 2048;
        STACK[0x628] = *&v124.f64[0];
        LOWORD(STACK[0x630]) = 2048;
        STACK[0x632] = *&v126.f64[0];
        LOWORD(STACK[0x63A]) = 2048;
        STACK[0x63C] = *&v128.f64[0];
        LOWORD(STACK[0x644]) = 2048;
        STACK[0x646] = *&v130.f64[0];
        LOWORD(STACK[0x64E]) = 2048;
        STACK[0x650] = *&v124.f64[1];
        LOWORD(STACK[0x658]) = 2048;
        STACK[0x65A] = *&v126.f64[1];
        LOWORD(STACK[0x662]) = 2048;
        STACK[0x664] = *&v128.f64[1];
        LOWORD(STACK[0x66C]) = 2048;
        STACK[0x66E] = *&v130.f64[1];
        LOWORD(STACK[0x676]) = 2048;
        STACK[0x678] = *&v123.f64[0];
        LOWORD(STACK[0x680]) = 2048;
        STACK[0x682] = *&v125.f64[0];
        LOWORD(STACK[0x68A]) = 2048;
        STACK[0x68C] = *&v127.f64[0];
        LOWORD(STACK[0x694]) = 2048;
        STACK[0x696] = *&v129.f64[0];
        LOWORD(STACK[0x69E]) = 2048;
        STACK[0x6A0] = *&v123.f64[1];
        LOWORD(STACK[0x6A8]) = 2048;
        STACK[0x6AA] = *&v125.f64[1];
        LOWORD(STACK[0x6B2]) = 2048;
        STACK[0x6B4] = *&v127.f64[1];
        LOWORD(STACK[0x6BC]) = 2048;
        STACK[0x6BE] = *&v129.f64[1];
        _os_log_impl(&dword_1C241C000, v120, OS_LOG_TYPE_INFO, "%{public}@ <%p>: anchorsForCameraWithTransform:vioFromENU<- %f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f", &STACK[0x610], 0xB6u);
      }
    }

    [v13 visionCameraTransform];
    v237 = __invert_f4(v236);
    *v237.columns[0].i64 = v237.columns[3].f32[2];
    latitude = v237.columns[0];
    v200 = vcvtq_f64_f32(*v237.columns[3].f32);
    [(ARGeoTrackingTechniqueState *)self->_state lastLoggedVioTimestamp];
    v131 = 0.0;
    if (v132 >= 0.0)
    {
      [(ARGeoTrackingTechniqueState *)self->_state lastLoggedVioTimestamp];
      v135 = timestamp - v134;
      if (timestamp - v134 > 0.0)
      {
        v136 = vextq_s8(v200, v200, 8uLL).u64[0];
        v137 = self->_state;
        if (v137)
        {
          v196 = v136;
          [(ARGeoTrackingTechniqueState *)v137 lastLoggedVioPosition];
          v136 = v196;
          v138 = v201;
          v139 = vextq_s8(v138, v138, 8uLL).u64[0];
          v133.f64[0] = v202;
        }

        else
        {
          v138.f64[0] = 0.0;
          v139 = 0;
          v133.f64[0] = 0.0;
        }

        *&v138.f64[1] = v139;
        *&v140.f64[0] = v200.i64[0];
        *&v140.f64[1] = v136;
        v141 = vsubq_f64(v140, v138);
        v142 = vsubq_f64(latitude, v133);
        v131 = sqrt(vmulq_f64(v142, v142).f64[0] + vaddvq_f64(vmulq_f64(v141, v141))) / v135;
      }
    }

    worldTrackingState5 = [v13 worldTrackingState];
    vioTrackingState2 = [worldTrackingState5 vioTrackingState];

    v145 = _ARLogTechnique_1();
    v146 = os_log_type_enabled(v145, OS_LOG_TYPE_INFO);
    if (vioTrackingState2)
    {
      if (!v146)
      {
        goto LABEL_62;
      }

      v147 = objc_opt_class();
      v148 = NSStringFromClass(v147);
      resetCount = [(ARGeoTrackingTechniqueState *)self->_state resetCount];
      LODWORD(STACK[0x610]) = 138543874;
      STACK[0x614] = v148;
      LOWORD(STACK[0x61C]) = 2048;
      STACK[0x61E] = self;
      LOWORD(STACK[0x626]) = 2048;
      STACK[0x628] = resetCount;
      v150 = "%{public}@ <%p>: _VIO<state: limited resets= %ld";
    }

    else
    {
      if (!v146)
      {
        goto LABEL_62;
      }

      v151 = objc_opt_class();
      v148 = NSStringFromClass(v151);
      resetCount2 = [(ARGeoTrackingTechniqueState *)self->_state resetCount];
      LODWORD(STACK[0x610]) = 138543874;
      STACK[0x614] = v148;
      LOWORD(STACK[0x61C]) = 2048;
      STACK[0x61E] = self;
      LOWORD(STACK[0x626]) = 2048;
      STACK[0x628] = resetCount2;
      v150 = "%{public}@ <%p>: _VIO<state: nominal resets= %ld";
    }

    _os_log_impl(&dword_1C241C000, v145, OS_LOG_TYPE_INFO, v150, &STACK[0x610], 0x20u);

LABEL_62:
    [(ARGeoTrackingTechniqueState *)self->_state setLastLoggedVioTimestamp:timestamp];
    v153 = self->_state;
    *&STACK[0x610] = v200;
    *&STACK[0x620] = latitude;
    [(ARGeoTrackingTechniqueState *)v153 setLastLoggedVioPosition:&STACK[0x610]];
    v154 = _ARLogTechnique_1();
    if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
    {
      v155 = objc_opt_class();
      v156 = NSStringFromClass(v155);
      LODWORD(STACK[0x610]) = 138543874;
      STACK[0x614] = v156;
      LOWORD(STACK[0x61C]) = 2048;
      STACK[0x61E] = self;
      LOWORD(STACK[0x626]) = 2048;
      *&STACK[0x628] = v131;
      _os_log_impl(&dword_1C241C000, v154, OS_LOG_TYPE_INFO, "%{public}@ <%p>: _VIO< speed: %f m/s", &STACK[0x610], 0x20u);
    }

    if (v131 <= 5.0)
    {
      goto LABEL_74;
    }

    if (ARShouldUseLogTypeError_onceToken_7 != -1)
    {
      [ARGeoTrackingTechnique processData:];
    }

    v157 = ARShouldUseLogTypeError_internalOSVersion_7;
    v158 = _ARLogTechnique_1();
    v159 = v158;
    if (v157 == 1)
    {
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        v160 = objc_opt_class();
        v161 = NSStringFromClass(v160);
        LODWORD(STACK[0x610]) = 138544642;
        STACK[0x614] = v161;
        LOWORD(STACK[0x61C]) = 2048;
        STACK[0x61E] = self;
        LOWORD(STACK[0x626]) = 2048;
        *&STACK[0x628] = v131;
        LOWORD(STACK[0x630]) = 2048;
        STACK[0x632] = v200.i64[0];
        LOWORD(STACK[0x63A]) = 2048;
        STACK[0x63C] = v200.u64[1];
        LOWORD(STACK[0x644]) = 2048;
        STACK[0x646] = *&latitude.f64[0];
        v162 = "%{public}@ <%p>: _VIO< speed EXCESSIVE: %f m/s at position:(%f,%f,%f)";
        v163 = v159;
        v164 = OS_LOG_TYPE_ERROR;
LABEL_72:
        _os_log_impl(&dword_1C241C000, v163, v164, v162, &STACK[0x610], 0x3Eu);
      }
    }

    else if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
    {
      v165 = objc_opt_class();
      v161 = NSStringFromClass(v165);
      LODWORD(STACK[0x610]) = 138544642;
      STACK[0x614] = v161;
      LOWORD(STACK[0x61C]) = 2048;
      STACK[0x61E] = self;
      LOWORD(STACK[0x626]) = 2048;
      *&STACK[0x628] = v131;
      LOWORD(STACK[0x630]) = 2048;
      STACK[0x632] = v200.i64[0];
      LOWORD(STACK[0x63A]) = 2048;
      STACK[0x63C] = v200.u64[1];
      LOWORD(STACK[0x644]) = 2048;
      STACK[0x646] = *&latitude.f64[0];
      v162 = "Error: %{public}@ <%p>: _VIO< speed EXCESSIVE: %f m/s at position:(%f,%f,%f)";
      v163 = v159;
      v164 = OS_LOG_TYPE_INFO;
      goto LABEL_72;
    }

LABEL_74:
    [v13 visionCameraTransform];
    [ARGeoTrackingTechnique _logVioTransform:"_logVioTransform:withTimestamp:withSuffix:" withTimestamp:"heartbeat" withSuffix:?];
    goto LABEL_75;
  }

LABEL_94:
}

+ (BOOL)isSupportedWithOptions:(unint64_t)options
{
  optionsCopy = options;
  HasGPSCapability = +[ARWorldTrackingTechnique isSupported];
  if (HasGPSCapability)
  {
    HasGPSCapability = [MEMORY[0x1E69E0300] isVisualLocalizationSupported];
    if (HasGPSCapability)
    {
      if ((optionsCopy & 2) != 0 || (HasGPSCapability = ARDeviceHasGPSCapability()) != 0)
      {
        if ((optionsCopy & 4) != 0)
        {
          LOBYTE(HasGPSCapability) = 1;
        }

        else
        {

          LOBYTE(HasGPSCapability) = ARAppleNeuralEngine();
        }
      }
    }
  }

  return HasGPSCapability;
}

+ (int64_t)getFailureReasonFromVLError:(int64_t)error
{
  result = error;
  if (error <= 200)
  {
    if (error <= 99)
    {
      if (error == 1)
      {
        return result;
      }

      if (error == 2)
      {
        return 256;
      }
    }

    else
    {
      switch(error)
      {
        case 100:
          return 2;
        case 101:
          return 4;
        case 200:
          return 8;
      }
    }
  }

  else if (error > 299)
  {
    switch(error)
    {
      case 300:
        return 32;
      case 400:
        return 128;
      case 404:
        return 1024;
    }
  }

  else if ((error - 201) < 7)
  {
    return 16;
  }

  return 2048;
}

+ (BOOL)isCameraUp:(float)up
{
  upCopy = up;
  [MEMORY[0x1E69E0300] minimumTiltAngle];
  return 180.0 - v4 >= upCopy;
}

- (void)_setTrackingState:(int64_t)state techniqueStateObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v7 = _ARLogTechnique_1();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromARGeoTrackingState(state);
    v11 = 138543874;
    v12 = v9;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting new tracking state: %@", &v11, 0x20u);
  }

  [objectCopy setTrackingState:state];
}

- (int64_t)_getHighestPriorityFailureWithTechniqueStateObject:(id)object
{
  v31 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  failureReasons = [objectCopy failureReasons];
  if ([objectCopy lastLoggedFailureReasons] != failureReasons)
  {
    v7 = 1;
    *&v6 = 138543874;
    v22 = v6;
    while (1)
    {
      v8 = [objectCopy lastLoggedFailureReasons] & v7;
      if ((v7 & failureReasons) == 0 || v8)
      {
        if ((v7 & failureReasons) != 0 || !v8)
        {
          goto LABEL_12;
        }

        v9 = _ARLogTechnique_1();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = NSStringFromARGeoTrackingInternalFailureReason(v7);
          *buf = v22;
          v24 = v15;
          v25 = 2048;
          selfCopy2 = self;
          v27 = 2112;
          v28 = v16;
          _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ARGeoTrackingTechnique failure reason: ended %@", buf, 0x20u);
        }
      }

      else
      {
        [objectCopy setFailureLogCount:{objc_msgSend(objectCopy, "failureLogCount") + 1}];
        v9 = _ARLogTechnique_1();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          failureLogCount = [objectCopy failureLogCount];
          v13 = NSStringFromARGeoTrackingInternalFailureReason(v7);
          *buf = 138544130;
          v24 = v11;
          v25 = 2048;
          selfCopy2 = self;
          v27 = 2048;
          v28 = failureLogCount;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ARGeoTrackingTechnique failure reason: %ld started %@", buf, 0x2Au);
        }
      }

LABEL_12:
      v7 *= 2;
      if (v7 == 0x2000)
      {
        [objectCopy setLastLoggedFailureReasons:failureReasons];
        break;
      }
    }
  }

  if ([objectCopy trackingState] == 3)
  {
    v17 = 0;
    goto LABEL_35;
  }

  if (failureReasons)
  {
LABEL_28:
    v18 = 8;
    goto LABEL_29;
  }

  if ((failureReasons & 0x400) != 0)
  {
    v18 = 4;
    goto LABEL_29;
  }

  if ((failureReasons & 0x1000) != 0)
  {
    v18 = 5;
    goto LABEL_29;
  }

  if ((failureReasons & 0x200) != 0)
  {
    v18 = 1;
    goto LABEL_29;
  }

  if ((failureReasons & 6) == 0)
  {
    if ((failureReasons & 0x80) != 0)
    {
      v18 = 7;
      goto LABEL_29;
    }

    if ((failureReasons & 0x40) != 0)
    {
      v18 = 3;
      goto LABEL_29;
    }

    if ((failureReasons & 0x138) == 0)
    {
      v18 = (failureReasons >> 8) & 8;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v18 = 6;
LABEL_29:
  trackingState = [objectCopy trackingState];
  if (failureReasons)
  {
    v20 = 0;
  }

  else
  {
    v20 = trackingState == 2;
  }

  if (v20)
  {
    v17 = 8;
  }

  else
  {
    v17 = v18;
  }

LABEL_35:

  return v17;
}

- (void)_logVioTransform:(float32x4_t)transform withTimestamp:(float32x4_t)timestamp withSuffix:(float32x4_t)suffix
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(&v20[8], 0, 64);
  ARMatrix4x4FloatToDouble(v20, a2, transform, timestamp, suffix);
  *v27 = v20[4];
  *&v27[16] = v20[5];
  v28 = v20[6];
  v29 = v20[7];
  *buf = v20[0];
  *&buf[16] = v20[1];
  *v26 = v20[2];
  *&v26[16] = v20[3];
  __invert_d4();
  v11 = atan2(*&v21, *(&v21 + 1)) * 0.318309886 * 180.0;
  os_unfair_lock_lock((self + 104));
  v12 = *(self + 112);
  poseOkCount = [v12 poseOkCount];
  poseOkCount2 = [v12 poseOkCount];
  failureLogCount = [v12 failureLogCount];
  os_unfair_lock_unlock((self + 104));
  v16 = _ARLogTechnique_1();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = poseOkCount2 + failureLogCount;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138545666;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2048;
    *&buf[24] = v23;
    *v26 = 2048;
    *&v26[2] = *(&v23 + 1);
    *&v26[10] = 2048;
    *&v26[12] = v24;
    *&v26[20] = 2048;
    *&v26[22] = v11 + ceil(v11 / -360.0) * 360.0;
    *&v26[30] = 1024;
    *v27 = v17;
    *&v27[4] = 1024;
    *&v27[6] = poseOkCount;
    *&v27[10] = 2048;
    *&v27[12] = a6;
    *&v27[20] = 2080;
    *&v27[22] = a8;
    _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: _VIO<--x,y,z,yaw-( %f,%f,%f,%f°)- %i,%i ts %f %s", buf, 0x5Eu);
  }
}

- (void)_estimatePose:(id)pose pose:(id)a4
{
  v103 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  v7 = a4;
  [poseCopy timestamp];
  kdebug_trace();
  pixelBuffer = [poseCopy pixelBuffer];
  if (!pixelBuffer)
  {
    if (ARShouldUseLogTypeError_onceToken_7 != -1)
    {
      [ARGeoTrackingTechnique _estimatePose:pose:];
    }

    v39 = ARShouldUseLogTypeError_internalOSVersion_7;
    v40 = _ARLogTechnique_1();
    v41 = v40;
    if (v39 == 1)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        *buf = 138543618;
        *&buf[4] = v43;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v44 = "%{public}@ <%p>: Pixel buffer is nil";
        v45 = v41;
        v46 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v45, v46, v44, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v69 = objc_opt_class();
      v43 = NSStringFromClass(v69);
      *buf = 138543618;
      *&buf[4] = v43;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v44 = "Error: %{public}@ <%p>: Pixel buffer is nil";
      v45 = v41;
      v46 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    kdebug_trace();
    goto LABEL_20;
  }

  v9 = pixelBuffer;
  CVPixelBufferRetain(pixelBuffer);
  os_unfair_lock_lock(&self->_resetLock);
  v10 = self->_state;
  os_unfair_lock_unlock(&self->_resetLock);
  v11 = [ARWorldTrackingPoseData alloc];
  [v7 timestamp];
  v12 = [(ARWorldTrackingPoseData *)v11 initWithTimestamp:?];
  [v7 visionCameraTransform];
  v88 = v13;
  [v7 visionCameraTransform];
  v85 = v14;
  [v7 visionCameraTransform];
  v82 = v15;
  [v7 visionCameraTransform];
  [(ARWorldTrackingPoseData *)v12 setVisionCameraTransform:v88, v85, v82];
  [v7 cameraTransform];
  [(ARWorldTrackingPoseData *)v12 setCameraTransform:?];
  worldTrackingState = [v7 worldTrackingState];
  [(ARWorldTrackingPoseData *)v12 setWorldTrackingState:worldTrackingState];

  lastCMDeviceMotion = [(ARGeoTrackingTechniqueState *)v10 lastCMDeviceMotion];
  deviceMotion = [lastCMDeviceMotion deviceMotion];
  [deviceMotion gravity];
  v89 = v19;
  v70 = v20;
  v72 = v21;

  deviceMotion2 = [lastCMDeviceMotion deviceMotion];
  attitude = [deviceMotion2 attitude];
  v24 = ARCameraDirectionFromCMAttitude(attitude);
  v73 = lastCMDeviceMotion;
  deviceMotion3 = [lastCMDeviceMotion deviceMotion];
  [deviceMotion3 headingAccuracy];
  v27 = v26;

  lastCLLocation = [(ARGeoTrackingTechniqueState *)v10 lastCLLocation];
  [(ARWorldTrackingPoseData *)v12 visionCameraTransform];
  v76 = v30;
  v77 = v29;
  v74 = v32;
  v75 = v31;
  [poseCopy cameraIntrinsics];
  v83 = v34;
  v86 = v33;
  v80 = v35;
  if (poseCopy)
  {
    [poseCopy radialDistortion];
    v36 = v101;
    v78 = v36;
    [poseCopy radialDistortion];
    *&v37 = v78;
    v38 = *(&v100 + 1);
  }

  else
  {
    v38 = 0.0;
    LODWORD(v37) = 0;
  }

  v47 = v38;
  *(&v37 + 1) = v47;
  v79 = v37;
  requestResultDataAtTimestampCallCount = self->_requestResultDataAtTimestampCallCount;
  [(ARGeoTrackingTechnique *)self setVLPoseEstimationExecuting:1];
  if (self->_deterministic)
  {
    v48 = dispatch_semaphore_create(0);
  }

  else
  {
    v48 = 0;
  }

  *&v49 = v89;
  *(&v49 + 1) = v70;
  v90 = v49;
  v50 = v24;
  v51 = v86;
  HIDWORD(v51) = 0;
  v87 = v51;
  v52 = v83;
  HIDWORD(v52) = 0;
  v84 = v52;
  v53 = v80;
  HIDWORD(v53) = 0;
  v81 = v53;
  [poseCopy timestamp];
  [(ARGeoTrackingTechnique *)self _logVioTransform:"estimatePose" withTimestamp:v77 withSuffix:v76, v75, v74, v54];
  [(ARGeoTrackingTechniqueState *)self->_state setHasStartedLocalization:1];
  [poseCopy timestamp];
  kdebug_trace();
  v55 = _ARLogTechnique_1();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    [poseCopy timestamp];
    *buf = 138543874;
    *&buf[4] = v57;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2048;
    *&buf[24] = v58;
    _os_log_impl(&dword_1C241C000, v55, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL pose is estimating (%f)", buf, 0x20u);
  }

  [poseCopy timestamp];
  kdebug_trace();
  vLHandle = [(ARGeoTrackingTechniqueState *)v10 VLHandle];
  location = [lastCLLocation location];
  [poseCopy exposureTargetOffset];
  v62 = v61;
  [poseCopy timestamp];
  v64 = v63;
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __45__ARGeoTrackingTechnique__estimatePose_pose___block_invoke;
  v91[3] = &unk_1E817C3C8;
  v92 = v10;
  selfCopy = self;
  v94 = v48;
  v95 = lastCLLocation;
  v98 = v9;
  v99 = requestResultDataAtTimestampCallCount;
  v96 = poseCopy;
  v97 = v12;
  *buf = v90;
  *&buf[16] = v72;
  v65 = v12;
  v66 = lastCLLocation;
  v67 = v48;
  v68 = v10;
  [(ARGeoTrackingTechnique *)self _callVLWithHandle:vLHandle pixelBuffer:v9 deviceLocation:location heading:buf inputGravity:v67 vioTransform:v91 cameraIntrinsics:v50 radialDistortion:v27 exposureTargetOffset:v77 timestamp:v76 vlDeterminismSemaphore:v75 completionHandler:v74, v87, v84, v81, v79, *&v62, v64];

  kdebug_trace();
  kdebug_trace();

LABEL_20:
}

void __45__ARGeoTrackingTechnique__estimatePose_pose___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45)
{
  STACK[0xFC8] = *MEMORY[0x1E69E9840];
  v47 = a2;
  v48 = a3;
  v49 = a1;
  v50 = v48;
  [v47 confidence];
  kdebug_trace();
  CVPixelBufferRelease(*(a1 + 80));
  v51 = [*(a1 + 32) VLHandle];
  v52 = [v51 _algorithmVersion];

  if (v47)
  {
    v53 = [v47 debugInfo];
  }

  else
  {
    v54 = [v50 userInfo];
    v53 = [v54 objectForKeyedSubscript:*MEMORY[0x1E69E0310]];
  }

  v55 = *(a1 + 40);
  if (*(v55 + 168))
  {
    v56 = _ARLogTechnique_1();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = *(a1 + 40);
      [v53 pngData];
      v61 = v60 = v53;
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v58;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v59;
      LOWORD(STACK[0xF46]) = 2048;
      STACK[0xF48] = v61;
      _os_log_impl(&dword_1C241C000, v56, OS_LOG_TYPE_INFO, "%{public}@ <%p>: writing VL trace with image data %p", &STACK[0xF30], 0x20u);

      v53 = v60;
    }

    v62 = v50;

    v63 = [*(v49 + 40) VLTraceRecorder];
    [v63 recordAttempt:v53];

    v55 = *(v49 + 40);
  }

  else
  {
    v62 = v50;
  }

  os_unfair_lock_lock((v55 + 104));
  v64 = v49;
  v65 = *(v49 + 32);
  v66 = *(v64 + 40);
  v67 = *(v66 + 112);
  os_unfair_lock_unlock((v66 + 104));
  if (v65 == v67)
  {
    vars0 = v52;
    [*(*(v64 + 40) + 112) setHasReturnedLocalization:1];
    v69 = v64;
    v68 = v62;
    if (v62)
    {
      v79 = v53;
      v80 = _ARLogTechnique_1();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        v83 = *(v69 + 40);
        v84 = [v68 localizedDescription];
        LODWORD(STACK[0xF30]) = 138543874;
        STACK[0xF34] = v82;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v83;
        LOWORD(STACK[0xF46]) = 2112;
        STACK[0xF48] = v84;
        _os_log_impl(&dword_1C241C000, v80, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Visual localization error: %@", &STACK[0xF30], 0x20u);
      }

      v85 = [v68 code];
      v86 = [objc_opt_class() getFailureReasonFromVLError:v85];
      v87 = [[ARVisualLocalizationResultData alloc] initWithVLLocalizationResult:0 errorCode:v85 debugInfo:v79 heading:*(v69 + 56) inputLocation:v52 algorithmVersion:NAN undulation:NAN];
      os_unfair_lock_lock((*(v69 + 40) + 56));
      v88 = [*(v69 + 32) resultDatas];
      [v88 addObject:v87];

      os_unfair_lock_unlock((*(v69 + 40) + 56));
      os_unfair_lock_lock((*(v69 + 40) + 88));
      [*(v69 + 32) addFailureReason:v86];
      if ([*(v69 + 32) trackingState] == 1 && (v86 & 6) == 0)
      {
        [*(v69 + 40) _setTrackingState:2 techniqueStateObject:*(v69 + 32)];
      }

      os_unfair_lock_unlock((*(v69 + 40) + 88));

      v53 = v79;
    }

    [v47 confidence];
    kdebug_trace();
    if (!v47)
    {
LABEL_109:
      [*(v69 + 40) setVLPoseEstimationExecuting:0];
      if (*(*(v69 + 40) + 72) != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    [v47 location];
    v91 = *&STACK[0xF00];
    *&STACK[0xF40] = *&STACK[0xF10];
    *&STACK[0xF30] = v91;
    ARECEFToLLA(&STACK[0xEB0]);
    v353 = *&STACK[0xEB0];
    v357 = *&STACK[0xEC0];
    v92 = _ARLogTechnique_1();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      v93 = objc_opt_class();
      v94 = NSStringFromClass(v93);
      v95 = *(v69 + 40);
      v96 = *(v69 + 88);
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v94;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v95;
      LOWORD(STACK[0xF46]) = 2048;
      STACK[0xF48] = v96;
      _os_log_impl(&dword_1C241C000, v92, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Result: at frame = %ld", &STACK[0xF30], 0x20u);
    }

    v97 = _ARLogTechnique_1();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v98 = objc_opt_class();
      v99 = NSStringFromClass(v98);
      v100 = *(v69 + 40);
      Current = CFAbsoluteTimeGetCurrent();
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v99;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v100;
      LOWORD(STACK[0xF46]) = 2048;
      *&STACK[0xF48] = Current;
      _os_log_impl(&dword_1C241C000, v97, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VL Result: iOSTime = %f", &STACK[0xF30], 0x20u);
    }

    v102 = _ARLogTechnique_1();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      v103 = objc_opt_class();
      v104 = NSStringFromClass(v103);
      v105 = *(v69 + 40);
      [v47 inputTimestamp];
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v104;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v105;
      LOWORD(STACK[0xF46]) = 2048;
      STACK[0xF48] = v106;
      _os_log_impl(&dword_1C241C000, v102, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Result: sensorTimestamp = %f", &STACK[0xF30], 0x20u);
    }

    vars8 = v53;

    v107 = _ARLogTechnique_1();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
    {
      v108 = objc_opt_class();
      v109 = NSStringFromClass(v108);
      v110 = *(v69 + 40);
      [v47 location];
      v111 = STACK[0xEF0];
      LODWORD(STACK[0xF30]) = 138544643;
      STACK[0xF34] = v109;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v110;
      LOWORD(STACK[0xF46]) = 2049;
      STACK[0xF48] = v353;
      LOWORD(STACK[0xF50]) = 2049;
      STACK[0xF52] = *(&v353 + 1);
      LOWORD(STACK[0xF5A]) = 2049;
      STACK[0xF5C] = v357;
      LOWORD(STACK[0xF64]) = 2049;
      STACK[0xF66] = v111;
      _os_log_impl(&dword_1C241C000, v107, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Result: lat,lon,alt,accuracy = %{private}f, %{private}f, %{private}f, %{private}f", &STACK[0xF30], 0x3Eu);
    }

    v344 = v68;

    v112 = _ARLogTechnique_1();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
    {
      v113 = objc_opt_class();
      v114 = NSStringFromClass(v113);
      v115 = *(v69 + 40);
      [v47 transform];
      v116.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0xF30]);
      v120 = ARMatrix4x4Description(1, v116, v117, v118, v119);
      LODWORD(STACK[0xF30]) = 138543875;
      STACK[0xF34] = v114;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v115;
      LOWORD(STACK[0xF46]) = 2113;
      STACK[0xF48] = v120;
      _os_log_impl(&dword_1C241C000, v112, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Result: ecefFromCam = %{private}@", &STACK[0xF30], 0x20u);
    }

    for (i = 0; i != 6; ++i)
    {
      v122 = _ARLogTechnique_1();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
      {
        v123 = objc_opt_class();
        v124 = NSStringFromClass(v123);
        v125 = *(v69 + 40);
        [v47 covariance];
        *&v126 = *(&STACK[0xE20] + i);
        [v47 covariance];
        *&v127 = *(&STACK[0xDA8] + i);
        [v47 covariance];
        *&v128 = *(&STACK[0xD30] + i);
        [v47 covariance];
        *&v129 = *(&STACK[0xCB8] + i);
        [v47 covariance];
        *&v130 = *(&STACK[0xC40] + i);
        [v47 covariance];
        *&v131 = *(&STACK[0xBC8] + i);
        LODWORD(STACK[0xF30]) = 138545410;
        STACK[0xF34] = v124;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v125;
        LOWORD(STACK[0xF46]) = 2048;
        STACK[0xF48] = i + 1;
        LOWORD(STACK[0xF50]) = 2048;
        STACK[0xF52] = v126;
        LOWORD(STACK[0xF5A]) = 2048;
        STACK[0xF5C] = v127;
        LOWORD(STACK[0xF64]) = 2048;
        STACK[0xF66] = v128;
        LOWORD(STACK[0xF6E]) = 2048;
        STACK[0xF70] = v129;
        LOWORD(STACK[0xF78]) = 2048;
        STACK[0xF7A] = v130;
        LOWORD(STACK[0xF82]) = 2048;
        STACK[0xF84] = v131;
        _os_log_impl(&dword_1C241C000, v122, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VL Result: covariance col %zu = %f, %f, %f, %f, %f, %f", &STACK[0xF30], 0x5Cu);
      }
    }

    v132 = _ARLogTechnique_1();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
    {
      v133 = objc_opt_class();
      v134 = NSStringFromClass(v133);
      v135 = *(v69 + 40);
      [v47 confidence];
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v134;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v135;
      LOWORD(STACK[0xF46]) = 2048;
      *&STACK[0xF48] = v136;
      _os_log_impl(&dword_1C241C000, v132, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VL Result: confidence = %f", &STACK[0xF30], 0x20u);
    }

    *&STACK[0xB30] = 0u;
    *&STACK[0xB40] = 0u;
    *&STACK[0xB10] = 0u;
    *&STACK[0xB20] = 0u;
    *&STACK[0xAF0] = 0u;
    *&STACK[0xB00] = 0u;
    *&STACK[0xAD0] = 0u;
    *&STACK[0xAE0] = 0u;
    [v47 transform];
    *&STACK[0xAB0] = 0u;
    *&STACK[0xAC0] = 0u;
    *&STACK[0xA90] = 0u;
    *&STACK[0xAA0] = 0u;
    a45 = 0u;
    *&STACK[0xA80] = 0u;
    a43 = 0u;
    a44 = 0u;
    v137 = [*(v69 + 32) enuOrigin];
    v138 = v137;
    if (v137)
    {
      [v137 ecefFromlocation];
    }

    else
    {
      a41 = 0u;
      a42 = 0u;
      a39 = 0u;
      a40 = 0u;
      a37 = 0u;
      a38 = 0u;
      a35 = 0u;
      a36 = 0u;
    }

    v139 = a40;
    *&STACK[0xF70] = a39;
    *&STACK[0xF80] = v139;
    v140 = a42;
    *&STACK[0xF90] = a41;
    *&STACK[0xFA0] = v140;
    v141 = a36;
    *&STACK[0xF30] = a35;
    *&STACK[0xF40] = v141;
    v142 = a38;
    *&STACK[0xF50] = a37;
    *&STACK[0xF60] = v142;
    __invert_d4();

    v341 = *&STACK[0xA80];
    v342 = a44;
    v349 = *&STACK[0xAC0];
    v351 = *&STACK[0xAA0];
    v340 = a43;
    v347 = a45;
    v343 = *&STACK[0xA90];
    v354 = *&STACK[0xAB0];
    v143 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a43, *&STACK[0xAD0]), a45, *&STACK[0xAD0], 1), *&STACK[0xA90], *&STACK[0xAE0]), *&STACK[0xAB0], *&STACK[0xAE0], 1);
    v144 = (1.57079633 - atan2(v143.f64[1], v143.f64[0])) * 0.318309886 * 180.0;
    v338 = *&STACK[0xB30];
    v339 = *&STACK[0xB40];
    v145 = _ARLogTechnique_1();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
    {
      v355 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v340, v338.f64[0]), v347, v338, 1), v343, v339.f64[0]), v354, v339, 1);
      v146 = objc_opt_class();
      v147 = NSStringFromClass(v146);
      v148 = *(v69 + 40);
      v149 = [*(v69 + 32) poseOkCount];
      [*(v69 + 64) timestamp];
      LODWORD(STACK[0xF30]) = 138545155;
      STACK[0xF34] = v147;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v148;
      LOWORD(STACK[0xF46]) = 2048;
      STACK[0xF48] = v355;
      LOWORD(STACK[0xF50]) = 2048;
      STACK[0xF52] = *(&v355 + 1);
      LOWORD(STACK[0xF5A]) = 2048;
      STACK[0xF5C] = *&vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v342, v338.f64[0]), v341, v338, 1), v351, v339.f64[0]), v349, v339, 1);
      LOWORD(STACK[0xF64]) = 2049;
      *&STACK[0xF66] = v144 + ceil(v144 / -360.0) * 360.0;
      LOWORD(STACK[0xF6E]) = 1024;
      LODWORD(STACK[0xF70]) = v149;
      LOWORD(STACK[0xF74]) = 2048;
      STACK[0xF76] = v150;
      _os_log_impl(&dword_1C241C000, v145, OS_LOG_TYPE_INFO, "%{public}@ <%p>: _VL_VIO<-x,y,z,yaw-( %f,%f,%f,%{private}f°)- %i ts %f vlPose", &STACK[0xF30], 0x4Eu);
    }

    v151 = [ARVisualLocalizationResultData alloc];
    v152 = *(v69 + 56);
    v153 = [*(v69 + 32) enuOrigin];
    [v153 undulation];
    v155 = [(ARVisualLocalizationResultData *)v151 initWithVLLocalizationResult:v47 errorCode:0 debugInfo:vars8 heading:v152 inputLocation:vars0 algorithmVersion:v144 undulation:v154];

    [*(v69 + 32) setPoseOkCount:{objc_msgSend(*(v69 + 32), "poseOkCount") + 1}];
    v156 = _ARLogTechnique_1();
    if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
    {
      v157 = objc_opt_class();
      v158 = NSStringFromClass(v157);
      v159 = *(v69 + 40);
      v160 = [*(v69 + 32) poseOkCount];
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v158;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v159;
      LOWORD(STACK[0xF46]) = 1024;
      LODWORD(STACK[0xF48]) = v160;
      _os_log_impl(&dword_1C241C000, v156, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Pose is OK %d ! ", &STACK[0xF30], 0x1Cu);
    }

    a41 = 0u;
    a42 = 0u;
    a39 = 0u;
    a40 = 0u;
    a37 = 0u;
    a38 = 0u;
    a35 = 0u;
    a36 = 0u;
    [*(v69 + 72) visionCameraTransform];
    v165 = [*(v69 + 32) consensusAverageFilter];
    if (v165)
    {

      v53 = vars8;
    }

    else
    {
      v166 = *(v69 + 40);
      v53 = vars8;
      if (*(v166 + 73) != 1 || (*(v166 + 74) & 1) == 0)
      {
        v167 = [ARGeoTrackingConsensusAndAverageFilter alloc];
        v168 = *&STACK[0xAA0];
        *&STACK[0xF70] = *&STACK[0xA90];
        *&STACK[0xF80] = v168;
        v169 = *&STACK[0xAC0];
        *&STACK[0xF90] = *&STACK[0xAB0];
        *&STACK[0xFA0] = v169;
        v170 = a44;
        *&STACK[0xF30] = a43;
        *&STACK[0xF40] = v170;
        v171 = *&STACK[0xA80];
        *&STACK[0xF50] = a45;
        *&STACK[0xF60] = v171;
        v172 = [(ARGeoTrackingConsensusAndAverageFilter *)v167 initWithENUFromECEF:&STACK[0xF30] maxHistory:20 minInlierScore:1.0];
        [*(v69 + 32) setConsensusAverageFilter:v172];
      }
    }

    a33 = 0u;
    a34 = 0u;
    a31 = 0u;
    a32 = 0u;
    a29 = 0u;
    a30 = 0u;
    a27 = 0u;
    a28 = 0u;
    v173 = *(v69 + 40);
    if (*(v173 + 73) == 1 && *(v173 + 74) == 1)
    {
      v174 = 0;
      a23 = a39;
      a24 = a40;
      a25 = a41;
      a26 = a42;
      a19 = a35;
      a20 = a36;
      a21 = a37;
      a22 = a38;
      *&STACK[0xF30] = 0u;
      *&STACK[0xF40] = 0u;
      *&STACK[0xF50] = 0u;
      *&STACK[0xF60] = 0u;
      *&STACK[0xF70] = 0u;
      *&STACK[0xF80] = 0u;
      *&STACK[0xF90] = 0u;
      *&STACK[0xFA0] = 0u;
      do
      {
        v176 = *(&a19 + v174);
        v175 = *(&a19 + v174 + 16);
        v177 = (&STACK[0xF30] + v174);
        *v177 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1C25C88F0, v176.f64[0]), 0, v176, 1), xmmword_1C25C8900, v175.f64[0]), 0, v175, 1);
        v177[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v176.f64[0]), xmmword_1C25C8900, v176, 1), 0, v175.f64[0]), xmmword_1C25C88F0, v175, 1);
        v174 += 32;
      }

      while (v174 != 128);
      v178 = 0;
      v180 = *&STACK[0xAD0];
      v179 = *&STACK[0xAE0];
      v182 = *&STACK[0xAF0];
      v181 = *&STACK[0xB00];
      v184 = *&STACK[0xB10];
      v183 = *&STACK[0xB20];
      v186 = *&STACK[0xB30];
      v185 = *&STACK[0xB40];
      a19 = 0u;
      a20 = 0u;
      a21 = 0u;
      a22 = 0u;
      a23 = 0u;
      a24 = 0u;
      a25 = 0u;
      a26 = 0u;
      do
      {
        v188 = *(&STACK[0xF30] + v178);
        v187 = *(&STACK[0xF30] + v178 + 16);
        v189 = (&a19 + v178);
        *v189 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v180, v188.f64[0]), v182, v188, 1), v184, v187.f64[0]), v186, v187, 1);
        v189[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v179, v188.f64[0]), v181, v188, 1), v183, v187.f64[0]), v185, v187, 1);
        v178 += 32;
      }

      while (v178 != 128);
      v190 = 0;
      v192 = a43;
      v191 = a44;
      v194 = a45;
      v193 = *&STACK[0xA80];
      v196 = *&STACK[0xA90];
      v195 = *&STACK[0xAA0];
      v198 = *&STACK[0xAB0];
      v197 = *&STACK[0xAC0];
      *&STACK[0xF30] = 0u;
      *&STACK[0xF40] = 0u;
      *&STACK[0xF50] = 0u;
      *&STACK[0xF60] = 0u;
      *&STACK[0xF70] = 0u;
      *&STACK[0xF80] = 0u;
      *&STACK[0xF90] = 0u;
      *&STACK[0xFA0] = 0u;
      do
      {
        v200 = *(&a19 + v190);
        v199 = *(&a19 + v190 + 16);
        v201 = (&STACK[0xF30] + v190);
        *v201 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v192, v200.f64[0]), v194, v200, 1), v196, v199.f64[0]), v198, v199, 1);
        v201[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v191, v200.f64[0]), v193, v200, 1), v195, v199.f64[0]), v197, v199, 1);
        v190 += 32;
      }

      while (v190 != 128);
    }

    else
    {
      v202 = [*(v69 + 32) consensusAverageFilter];
      v203 = a40;
      *&STACK[0xF70] = a39;
      *&STACK[0xF80] = v203;
      v204 = a42;
      *&STACK[0xF90] = a41;
      *&STACK[0xFA0] = v204;
      v205 = a36;
      *&STACK[0xF30] = a35;
      *&STACK[0xF40] = v205;
      v206 = a38;
      *&STACK[0xF50] = a37;
      *&STACK[0xF60] = v206;
      v207 = *&STACK[0xB20];
      a23 = *&STACK[0xB10];
      a24 = v207;
      v208 = *&STACK[0xB40];
      a25 = *&STACK[0xB30];
      a26 = v208;
      v209 = *&STACK[0xAE0];
      a19 = *&STACK[0xAD0];
      a20 = v209;
      v210 = *&STACK[0xB00];
      a21 = *&STACK[0xAF0];
      a22 = v210;
      [v202 updateWithVIOPose:&STACK[0xF30] VLPose:&a19];

      v211 = [*(v69 + 32) consensusAverageFilter];
      [*(v69 + 64) timestamp];
      v212 = [v211 getCurrentENUFromVIO:&a27 ENUFromVIO:?];

      if (v212)
      {
        goto LABEL_74;
      }

      v213 = 0;
      a23 = a39;
      a24 = a40;
      a25 = a41;
      a26 = a42;
      a19 = a35;
      a20 = a36;
      a21 = a37;
      a22 = a38;
      *&STACK[0xF30] = 0u;
      *&STACK[0xF40] = 0u;
      *&STACK[0xF50] = 0u;
      *&STACK[0xF60] = 0u;
      *&STACK[0xF70] = 0u;
      *&STACK[0xF80] = 0u;
      *&STACK[0xF90] = 0u;
      *&STACK[0xFA0] = 0u;
      do
      {
        v215 = *(&a19 + v213);
        v214 = *(&a19 + v213 + 16);
        v216 = (&STACK[0xF30] + v213);
        *v216 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1C25C88F0, v215.f64[0]), 0, v215, 1), xmmword_1C25C8900, v214.f64[0]), 0, v214, 1);
        v216[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v215.f64[0]), xmmword_1C25C8900, v215, 1), 0, v214.f64[0]), xmmword_1C25C88F0, v214, 1);
        v213 += 32;
      }

      while (v213 != 128);
      v217 = 0;
      v219 = *&STACK[0xAD0];
      v218 = *&STACK[0xAE0];
      v221 = *&STACK[0xAF0];
      v220 = *&STACK[0xB00];
      v223 = *&STACK[0xB10];
      v222 = *&STACK[0xB20];
      v225 = *&STACK[0xB30];
      v224 = *&STACK[0xB40];
      a19 = 0u;
      a20 = 0u;
      a21 = 0u;
      a22 = 0u;
      a23 = 0u;
      a24 = 0u;
      a25 = 0u;
      a26 = 0u;
      do
      {
        v227 = *(&STACK[0xF30] + v217);
        v226 = *(&STACK[0xF30] + v217 + 16);
        v228 = (&a19 + v217);
        *v228 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v219, v227.f64[0]), v221, v227, 1), v223, v226.f64[0]), v225, v226, 1);
        v228[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v218, v227.f64[0]), v220, v227, 1), v222, v226.f64[0]), v224, v226, 1);
        v217 += 32;
      }

      while (v217 != 128);
      v229 = 0;
      v231 = a43;
      v230 = a44;
      v233 = a45;
      v232 = *&STACK[0xA80];
      v235 = *&STACK[0xA90];
      v234 = *&STACK[0xAA0];
      v237 = *&STACK[0xAB0];
      v236 = *&STACK[0xAC0];
      *&STACK[0xF30] = 0u;
      *&STACK[0xF40] = 0u;
      *&STACK[0xF50] = 0u;
      *&STACK[0xF60] = 0u;
      *&STACK[0xF70] = 0u;
      *&STACK[0xF80] = 0u;
      *&STACK[0xF90] = 0u;
      *&STACK[0xFA0] = 0u;
      do
      {
        v239 = *(&a19 + v229);
        v238 = *(&a19 + v229 + 16);
        v240 = (&STACK[0xF30] + v229);
        *v240 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v231, v239.f64[0]), v233, v239, 1), v235, v238.f64[0]), v237, v238, 1);
        v240[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v230, v239.f64[0]), v232, v239, 1), v234, v238.f64[0]), v236, v238, 1);
        v229 += 32;
      }

      while (v229 != 128);
    }

    v241 = *&STACK[0xF80];
    a31 = *&STACK[0xF70];
    a32 = v241;
    v242 = *&STACK[0xFA0];
    a33 = *&STACK[0xF90];
    a34 = v242;
    v243 = *&STACK[0xF40];
    a27 = *&STACK[0xF30];
    a28 = v243;
    v244 = *&STACK[0xF60];
    a29 = *&STACK[0xF50];
    a30 = v244;
LABEL_74:
    v245 = _ARLogTechnique_1();
    if (os_log_type_enabled(v245, OS_LOG_TYPE_INFO))
    {
      v246 = objc_opt_class();
      v247 = NSStringFromClass(v246);
      v248 = *(v69 + 40);
      v249 = a32;
      *&STACK[0xF70] = a31;
      *&STACK[0xF80] = v249;
      v250 = a34;
      *&STACK[0xF90] = a33;
      *&STACK[0xFA0] = v250;
      v251 = a28;
      *&STACK[0xF30] = a27;
      *&STACK[0xF40] = v251;
      v252 = a30;
      *&STACK[0xF50] = a29;
      *&STACK[0xF60] = v252;
      v253.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0xF30]);
      v257 = ARMatrix4x4Description(0, v253, v254, v255, v256);
      LODWORD(STACK[0xF30]) = 138543875;
      STACK[0xF34] = v247;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v248;
      LOWORD(STACK[0xF46]) = 2113;
      STACK[0xF48] = v257;
      _os_log_impl(&dword_1C241C000, v245, OS_LOG_TYPE_INFO, "%{public}@ <%p>: New ENUFromVIO = %{private}@", &STACK[0xF30], 0x20u);

      v53 = vars8;
    }

    v258 = _ARLogTechnique_1();
    v68 = v344;
    if (os_log_type_enabled(v258, OS_LOG_TYPE_DEBUG))
    {
      v259 = objc_opt_class();
      v260 = NSStringFromClass(v259);
      v261 = *(v69 + 40);
      v262 = *&STACK[0xAA0];
      *&STACK[0xF70] = *&STACK[0xA90];
      *&STACK[0xF80] = v262;
      v263 = *&STACK[0xAC0];
      *&STACK[0xF90] = *&STACK[0xAB0];
      *&STACK[0xFA0] = v263;
      v264 = a44;
      *&STACK[0xF30] = a43;
      *&STACK[0xF40] = v264;
      v265 = *&STACK[0xA80];
      *&STACK[0xF50] = a45;
      *&STACK[0xF60] = v265;
      v266.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0xF30]);
      v270 = ARMatrix4x4Description(1, v266, v267, v268, v269);
      LODWORD(STACK[0xF30]) = 138543875;
      STACK[0xF34] = v260;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v261;
      LOWORD(STACK[0xF46]) = 2113;
      STACK[0xF48] = v270;
      _os_log_impl(&dword_1C241C000, v258, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: enuFromEcef = %{private}@", &STACK[0xF30], 0x20u);

      v53 = vars8;
    }

    v271 = _ARLogTechnique_1();
    if (os_log_type_enabled(v271, OS_LOG_TYPE_DEBUG))
    {
      v272 = objc_opt_class();
      v273 = NSStringFromClass(v272);
      v274 = *(v69 + 40);
      v275 = a40;
      *&STACK[0xF70] = a39;
      *&STACK[0xF80] = v275;
      v276 = a42;
      *&STACK[0xF90] = a41;
      *&STACK[0xFA0] = v276;
      v277 = a36;
      *&STACK[0xF30] = a35;
      *&STACK[0xF40] = v277;
      v278 = a38;
      *&STACK[0xF50] = a37;
      *&STACK[0xF60] = v278;
      v279.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0xF30]);
      v283 = ARMatrix4x4Description(0, v279, v280, v281, v282);
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v273;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v274;
      LOWORD(STACK[0xF46]) = 2112;
      STACK[0xF48] = v283;
      _os_log_impl(&dword_1C241C000, v271, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: camCVFromVIO = %@", &STACK[0xF30], 0x20u);

      v53 = vars8;
    }

    v284 = a32;
    *&STACK[0xF70] = a31;
    *&STACK[0xF80] = v284;
    v285 = a34;
    *&STACK[0xF90] = a33;
    *&STACK[0xFA0] = v285;
    v286 = a28;
    *&STACK[0xF30] = a27;
    *&STACK[0xF40] = v286;
    v287 = a30;
    *&STACK[0xF50] = a29;
    *&STACK[0xF60] = v287;
    __invert_d4();
    v348 = ARMatrix4x4DoubleToFloat(&a19);
    v350 = v288;
    v352 = v289;
    v356 = v290;
    v291 = *(*(v69 + 40) + 75);
    v292 = _ARLogTechnique_1();
    v293 = os_log_type_enabled(v292, OS_LOG_TYPE_INFO);
    if (v291 == 1)
    {
      if (v293)
      {
        v294 = objc_opt_class();
        v295 = NSStringFromClass(v294);
        v296 = *(v69 + 40);
        v297 = *(v296 + 73);
        v298 = *(v296 + 74);
        LODWORD(STACK[0xF30]) = 138544130;
        STACK[0xF34] = v295;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v296;
        LOWORD(STACK[0xF46]) = 1024;
        LODWORD(STACK[0xF48]) = v297;
        LOWORD(STACK[0xF4C]) = 1024;
        LODWORD(STACK[0xF4E]) = v298;
        _os_log_impl(&dword_1C241C000, v292, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting target ENUFromVIO for GCF, _useCoreLocationFusion=%d, _useCoreMotionFusion=%d", &STACK[0xF30], 0x22u);
      }

      if ([*(v69 + 32) VLHasExecuted])
      {
        v299 = *(v69 + 40);
        if ((*(v299 + 73) & 1) == 0 && (*(v299 + 74) & 1) == 0)
        {
          v300 = [*(v69 + 32) gradualCorrectionFilter];
          v301 = a33;
          *&STACK[0xF40] = a34;
          *&STACK[0xF30] = v301;
          [v300 setTargetTranslation:&STACK[0xF30]];

          v299 = *(v69 + 40);
        }

        if ((*(v299 + 74) & 1) == 0)
        {
          v302 = [*(v69 + 32) gradualCorrectionFilter];
          v303 = a32;
          *&STACK[0xF70] = a31;
          *&STACK[0xF80] = v303;
          v304 = a34;
          *&STACK[0xF90] = a33;
          *&STACK[0xFA0] = v304;
          v305 = a28;
          *&STACK[0xF30] = a27;
          *&STACK[0xF40] = v305;
          v306 = a30;
          *&STACK[0xF50] = a29;
          *&STACK[0xF60] = v306;
          [v302 setTargetRotation:&STACK[0xF30]];
          v307 = 0;
LABEL_105:

          goto LABEL_106;
        }

LABEL_99:
        v307 = 0;
LABEL_106:
        os_unfair_lock_lock((*(v69 + 40) + 56));
        v336 = [*(v69 + 32) resultDatas];
        [v336 addObject:v155];

        if (v307)
        {
          v337 = [*(v69 + 32) resultDatas];
          [v337 addObject:v307];
        }

        os_unfair_lock_unlock((*(v69 + 40) + 56));
        os_unfair_lock_lock((*(v69 + 40) + 88));
        [*(v69 + 40) _setTrackingState:3 techniqueStateObject:*(v69 + 32)];
        os_unfair_lock_unlock((*(v69 + 40) + 88));
        [*(v69 + 64) timestamp];
        [*(v69 + 32) setLastVLExecutionTimestamp:?];

        goto LABEL_109;
      }

      v321 = _ARLogTechnique_1();
      if (os_log_type_enabled(v321, OS_LOG_TYPE_INFO))
      {
        v322 = objc_opt_class();
        v323 = NSStringFromClass(v322);
        v324 = *(v69 + 40);
        LODWORD(STACK[0xF30]) = 138543618;
        STACK[0xF34] = v323;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v324;
        _os_log_impl(&dword_1C241C000, v321, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating GCF", &STACK[0xF30], 0x16u);
      }

      v325 = [ARGeoTrackingGradualCorrectionFilter alloc];
      v326 = a32;
      *&STACK[0xF70] = a31;
      *&STACK[0xF80] = v326;
      v327 = a34;
      *&STACK[0xF90] = a33;
      *&STACK[0xFA0] = v327;
      v328 = a28;
      *&STACK[0xF30] = a27;
      *&STACK[0xF40] = v328;
      v329 = a30;
      *&STACK[0xF50] = a29;
      *&STACK[0xF60] = v329;
      v330 = [(ARGeoTrackingGradualCorrectionFilter *)v325 initWithTargetTransform:&STACK[0xF30]];
      [*(v69 + 32) setGradualCorrectionFilter:v330];
    }

    else
    {
      if (v293)
      {
        v308 = objc_opt_class();
        v309 = NSStringFromClass(v308);
        v310 = *(v69 + 40);
        v311 = *(v310 + 73);
        v312 = *(v310 + 74);
        LODWORD(STACK[0xF30]) = 138544130;
        STACK[0xF34] = v309;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v310;
        LOWORD(STACK[0xF46]) = 1024;
        LODWORD(STACK[0xF48]) = v311;
        LOWORD(STACK[0xF4C]) = 1024;
        LODWORD(STACK[0xF4E]) = v312;
        _os_log_impl(&dword_1C241C000, v292, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting ENUFromVIO, _useCoreLocationFusion=%d, _useCoreMotionFusion=%d", &STACK[0xF30], 0x22u);
      }

      if ([*(v69 + 32) VLHasExecuted])
      {
        v313 = *(v69 + 40);
        if ((*(v313 + 73) & 1) == 0 && (*(v313 + 74) & 1) == 0)
        {
          v314 = *(v69 + 32);
          v315 = a33;
          *&STACK[0xF40] = a34;
          *&STACK[0xF30] = v315;
          [v314 setEnuFromVIOTranslation:&STACK[0xF30]];
          v313 = *(v69 + 40);
        }

        if ((*(v313 + 74) & 1) == 0)
        {
          v316 = *(v69 + 32);
          v317 = a32;
          *&STACK[0xF70] = a31;
          *&STACK[0xF80] = v317;
          v318 = a34;
          *&STACK[0xF90] = a33;
          *&STACK[0xFA0] = v318;
          v319 = a28;
          *&STACK[0xF30] = a27;
          *&STACK[0xF40] = v319;
          v320 = a30;
          *&STACK[0xF50] = a29;
          *&STACK[0xF60] = v320;
          [v316 setEnuFromVIORotation:&STACK[0xF30]];
          v313 = *(v69 + 40);
        }

        if (*(v313 + 73) & 1) != 0 || (*(v313 + 74))
        {
          goto LABEL_99;
        }

LABEL_104:
        v335 = [ARGeoTrackingData alloc];
        v302 = [*(v69 + 32) enuOrigin];
        v307 = [(ARGeoTrackingData *)v335 initWithENUOrigin:v302 vioFromENU:v348, v350, v352, v356];
        goto LABEL_105;
      }
    }

    v331 = a32;
    *&STACK[0xF70] = a31;
    *&STACK[0xF80] = v331;
    v332 = a34;
    *&STACK[0xF90] = a33;
    *&STACK[0xFA0] = v332;
    v333 = a28;
    *&STACK[0xF30] = a27;
    *&STACK[0xF40] = v333;
    v334 = a30;
    *&STACK[0xF50] = a29;
    *&STACK[0xF60] = v334;
    [*(v69 + 32) setEnuFromVIO:&STACK[0xF30]];
    goto LABEL_104;
  }

  v68 = v62;
  if (ARShouldUseLogTypeError_onceToken_7 != -1)
  {
    [ARGeoTrackingTechnique processData:];
  }

  v69 = v64;
  v70 = ARShouldUseLogTypeError_internalOSVersion_7;
  v71 = _ARLogTechnique_1();
  v72 = v71;
  if (v70 == 1)
  {
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    v75 = *(v69 + 40);
    LODWORD(STACK[0xF30]) = 138543618;
    STACK[0xF34] = v74;
    LOWORD(STACK[0xF3C]) = 2048;
    STACK[0xF3E] = v75;
    v76 = "%{public}@ <%p>: Geo tracking has been reset. Dropping VL result.";
    v77 = v72;
    v78 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    v89 = objc_opt_class();
    v74 = NSStringFromClass(v89);
    v90 = *(v69 + 40);
    LODWORD(STACK[0xF30]) = 138543618;
    STACK[0xF34] = v74;
    LOWORD(STACK[0xF3C]) = 2048;
    STACK[0xF3E] = v90;
    v76 = "Error: %{public}@ <%p>: Geo tracking has been reset. Dropping VL result.";
    v77 = v72;
    v78 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v77, v78, v76, &STACK[0xF30], 0x16u);

LABEL_25:
  [*(v69 + 40) setVLPoseEstimationExecuting:0];
  if (*(*(v69 + 40) + 72))
  {
LABEL_26:
    dispatch_semaphore_signal(*(v69 + 48));
  }

LABEL_27:
}

- (void)_callVLWithHandle:(double)handle pixelBuffer:(__n128)buffer deviceLocation:(__n128)location heading:(__n128)heading inputGravity:(__n128)gravity vioTransform:(uint64_t)transform cameraIntrinsics:(void *)intrinsics radialDistortion:(uint64_t)self0 exposureTargetOffset:(void *)self1 timestamp:(__int128 *)self2 vlDeterminismSemaphore:(void *)self3 completionHandler:(void *)self4
{
  v61 = *MEMORY[0x1E69E9840];
  v35 = *timestamp;
  v36 = timestamp[1];
  intrinsicsCopy = intrinsics;
  offsetCopy = offset;
  semaphoreCopy = semaphore;
  handlerCopy = handler;
  if (*(self + 72) == 1)
  {
    *buf = v35;
    *&buf[16] = v36;
    [intrinsicsCopy _deterministicLocateWithPixelBuffer:distortion deviceLocation:offsetCopy heading:buf gravity:handlerCopy transform:a2 cameraIntrinsics:handle radialDistortion:buffer.n128_f64[0] exposureTargetOffset:location.n128_f64[0] timestamp:heading.n128_f64[0] completionHandler:{gravity.n128_f64[0], a15, a16, a17, a18, a19, a20}];
    dispatch_semaphore_wait(semaphoreCopy, 0xFFFFFFFFFFFFFFFFLL);
    v31 = _ARLogTechnique_1();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138543874;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = a20;
      _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Deterministic VL call completed at timestamp=%f", buf, 0x20u);
    }
  }

  else
  {
    v34 = *(self + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __211__ARGeoTrackingTechnique__callVLWithHandle_pixelBuffer_deviceLocation_heading_inputGravity_vioTransform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_vlDeterminismSemaphore_completionHandler___block_invoke;
    block[3] = &unk_1E817C3F0;
    v51 = intrinsicsCopy;
    distortionCopy = distortion;
    v52 = offsetCopy;
    v55 = a2;
    handleCopy = handle;
    v42 = v35;
    v43 = v36;
    bufferCopy = buffer;
    locationCopy = location;
    headingCopy = heading;
    gravityCopy = gravity;
    v48 = a15;
    v49 = a16;
    v50 = a17;
    v57 = a18;
    v58 = a19;
    v59 = a20;
    v53 = handlerCopy;
    dispatch_async(v34, block);

    v31 = v51;
  }
}

void __211__ARGeoTrackingTechnique__callVLWithHandle_pixelBuffer_deviceLocation_heading_inputGravity_vioTransform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_vlDeterminismSemaphore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 224);
  v8 = *(a1 + 232);
  v9 = *(a1 + 240);
  v15 = 0;
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  v14[0] = v5;
  v14[1] = v6;
  v12 = [v3 locateWithPixelBuffer:v2 deviceLocation:v4 heading:v14 gravity:&v15 transform:v10 cameraIntrinsics:v11 radialDistortion:*(a1 + 64) ambientLightIntensity:*(a1 + 80) timestamp:*(a1 + 96) error:{*(a1 + 112), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), v7, v8, v9}];
  v13 = v15;
  (*(*(a1 + 192) + 16))();
}

- (void)_estimateEnuFromVioFromCLCM:(id)m
{
  STACK[0x978] = *MEMORY[0x1E69E9840];
  mCopy = m;
  enuOrigin = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];
  v6 = enuOrigin;
  if (mCopy && enuOrigin)
  {
    [mCopy timestamp];
    v8 = v7;
    v9 = [(ARGeoTrackingTechniqueState *)self->_state findClosestVioPoseToTimestamp:?];
    if (v9)
    {
      [mCopy timestamp];
      v11 = v10;
      [v9 timestamp];
      v13 = v12;
      if (!self->_useCoreMotionFusion)
      {
LABEL_32:
        v15 = 0;
        v17 = 1.79769313e308;
LABEL_33:
        lastLocationProcessedForFusion = [(ARGeoTrackingTechniqueState *)self->_state lastLocationProcessedForFusion];

        [(ARGeoTrackingTechniqueState *)self->_state setLastLocationProcessedForFusion:mCopy];
        *&STACK[0x7C0] = 0u;
        *&STACK[0x7D0] = 0u;
        *&STACK[0x7A0] = 0u;
        *&STACK[0x7B0] = 0u;
        *&STACK[0x780] = 0u;
        *&STACK[0x790] = 0u;
        *&STACK[0x760] = 0u;
        *&STACK[0x770] = 0u;
        v237 = 0u;
        [v9 transform];
        if (self->_useGradualCorrection)
        {
          gradualCorrectionFilter = [(ARGeoTrackingTechniqueState *)self->_state gradualCorrectionFilter];
          v45 = gradualCorrectionFilter;
          if (gradualCorrectionFilter)
          {
            [gradualCorrectionFilter ENUFromVIOTarget];
            v229 = *&STACK[0x8F0];
            v230 = *&STACK[0x8E0];
            v231 = *&STACK[0x910];
            v232 = *&STACK[0x900];
            v233 = *&STACK[0x930];
            v234 = *&STACK[0x920];
            v236 = *&STACK[0x950];
            v237 = *&STACK[0x940];
          }

          else
          {
            v236 = 0u;
            v237 = 0u;
            v233 = 0u;
            v234 = 0u;
            v231 = 0u;
            v232 = 0u;
            v229 = 0u;
            v230 = 0u;
          }
        }

        else
        {
          state = self->_state;
          if (state)
          {
            [(ARGeoTrackingTechniqueState *)state enuFromVIO];
            v47 = *&STACK[0x8F0];
            v48 = *&STACK[0x8E0];
            v49 = *&STACK[0x910];
            v50 = *&STACK[0x900];
            v51 = *&STACK[0x930];
            v52 = *&STACK[0x920];
            v53 = *&STACK[0x950];
            v237 = *&STACK[0x940];
          }

          else
          {
            v53 = 0uLL;
            v52 = 0uLL;
            v51 = 0uLL;
            v50 = 0uLL;
            v49 = 0uLL;
            v48 = 0uLL;
            v47 = 0uLL;
          }

          v229 = v47;
          v230 = v48;
          v231 = v49;
          v232 = v50;
          v233 = v51;
          v234 = v52;
          v236 = v53;
        }

        v54 = 0;
        if (lastLocationProcessedForFusion == mCopy)
        {
          v56 = 0;
          goto LABEL_115;
        }

        v55 = vabdd_f64(v11, v13);
        v56 = 0;
        if (v55 >= 1.0)
        {
LABEL_115:
          if ((v54 | v56) == 1 && !self->_useGradualCorrection)
          {
            v207 = self->_state;
            if (v207)
            {
              [(ARGeoTrackingTechniqueState *)v207 enuFromVIO];
            }

            else
            {
              *&STACK[0x740] = 0u;
              *&STACK[0x750] = 0u;
              v256 = 0u;
              v257 = 0u;
              v254 = 0u;
              v255 = 0u;
              v252 = 0u;
              v253 = 0u;
            }

            v208 = v257;
            *&STACK[0x920] = v256;
            *&STACK[0x930] = v208;
            v209 = *&STACK[0x750];
            *&STACK[0x940] = *&STACK[0x740];
            *&STACK[0x950] = v209;
            v210 = v253;
            *&STACK[0x8E0] = v252;
            *&STACK[0x8F0] = v210;
            v211 = v255;
            *&STACK[0x900] = v254;
            *&STACK[0x910] = v211;
            __invert_d4();
            v212 = ARMatrix4x4DoubleToFloat(&STACK[0x860]);
            v215 = [[ARGeoTrackingData alloc] initWithENUOrigin:v6 vioFromENU:v212, v213, v214, v215];
            os_unfair_lock_lock(&self->_resultLock);
            resultDatas = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
            [resultDatas addObject:v215];

            os_unfair_lock_unlock(&self->_resultLock);
          }

          goto LABEL_121;
        }

        v228 = v6;
        v235 = v15;
        v57 = _ARLogTechnique_1();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = objc_opt_class();
          v59 = NSStringFromClass(v58);
          location = [mCopy location];
          isCoordinateFused = [location isCoordinateFused];
          location2 = [mCopy location];
          isCoordinateFusedWithVL = [location2 isCoordinateFusedWithVL];
          fused = [v235 fused];
          LODWORD(STACK[0x8E0]) = 138544386;
          STACK[0x8E4] = v59;
          LOWORD(STACK[0x8EC]) = 2048;
          STACK[0x8EE] = self;
          LOWORD(STACK[0x8F6]) = 1024;
          LODWORD(STACK[0x8F8]) = isCoordinateFused;
          LOWORD(STACK[0x8FC]) = 1024;
          LODWORD(STACK[0x8FE]) = isCoordinateFusedWithVL;
          LOWORD(STACK[0x902]) = 1024;
          LODWORD(STACK[0x904]) = fused;
          _os_log_impl(&dword_1C241C000, v57, OS_LOG_TYPE_INFO, "%{public}@ <%p>: CLCM Performing fusion update, fusedLocation=%d, VLFusedLocation=%d, fusedMotion=%d.", &STACK[0x8E0], 0x28u);
        }

        v65 = *&STACK[0x7B0];
        *&STACK[0x920] = *&STACK[0x7A0];
        *&STACK[0x930] = v65;
        v66 = *&STACK[0x7D0];
        *&STACK[0x940] = *&STACK[0x7C0];
        *&STACK[0x950] = v66;
        v67 = *&STACK[0x770];
        *&STACK[0x8E0] = *&STACK[0x760];
        *&STACK[0x8F0] = v67;
        v68 = *&STACK[0x790];
        *&STACK[0x900] = *&STACK[0x780];
        *&STACK[0x910] = v68;
        __invert_d4();
        v69 = 0;
        *&STACK[0x860] = 0u;
        *&STACK[0x870] = 0u;
        *&STACK[0x880] = 0u;
        *&STACK[0x890] = 0u;
        *&STACK[0x8A0] = 0u;
        *&STACK[0x8B0] = 0u;
        *&STACK[0x8C0] = 0u;
        *&STACK[0x8D0] = 0u;
        v71 = v236;
        v70 = v237;
        do
        {
          v73 = *(&v252 + v69);
          v72 = *(&v252 + v69 + 16);
          v74 = (&STACK[0x860] + v69);
          *v74 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v230, v73.f64[0]), v232, v73, 1), v234, v72.f64[0]), v237, v72, 1);
          v74[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v229, v73.f64[0]), v231, v73, 1), v233, v72.f64[0]), v236, v72, 1);
          v69 += 32;
        }

        while (v69 != 128);
        if (self->_useCoreLocationFusion)
        {
          location3 = [mCopy location];
          isCoordinateFusedWithVL2 = [location3 isCoordinateFusedWithVL];

          if (isCoordinateFusedWithVL2)
          {
            v77 = _ARLogTechnique_1();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v78 = objc_opt_class();
              v79 = NSStringFromClass(v78);
              LODWORD(STACK[0x8E0]) = 138543874;
              STACK[0x8E4] = v79;
              LOWORD(STACK[0x8EC]) = 2048;
              STACK[0x8EE] = self;
              LOWORD(STACK[0x8F6]) = 2048;
              *&STACK[0x8F8] = v55;
              _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_INFO, "%{public}@ <%p>: CLCM Computing translation from CL fusion, time diff VIO-CL=%fs", &STACK[0x8E0], 0x20u);
            }

            [v228 locationECEF];
            vars0a = v251;
            v225 = v250;
            [mCopy locationECEF];
            v80 = v248;
            v81 = v249;
            *&STACK[0x8F0] = vars0a;
            *&STACK[0x8E0] = v225;
            v252 = v80;
            v253 = v81;
            ARECEFToENU(&v246);
            v82 = v247;
            *&STACK[0x8C0] = v246;
            *&STACK[0x8D0] = v82;
            v56 = 1;
          }

          else
          {
            v56 = 0;
          }

          v71 = v236;
          v70 = v237;
        }

        else
        {
          v56 = 0;
        }

        v83 = 0;
        if (v235 && self->_useCoreMotionFusion)
        {
          v83 = 0;
          if ([v235 fused])
          {
            v71 = v236;
            v70 = v237;
            if (v17 >= 0.02)
            {
              goto LABEL_69;
            }

            v84 = _ARLogTechnique_1();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
            {
              v85 = objc_opt_class();
              v86 = NSStringFromClass(v85);
              LODWORD(STACK[0x8E0]) = 138543874;
              STACK[0x8E4] = v86;
              LOWORD(STACK[0x8EC]) = 2048;
              STACK[0x8EE] = self;
              LOWORD(STACK[0x8F6]) = 2048;
              *&STACK[0x8F8] = v17;
              _os_log_impl(&dword_1C241C000, v84, OS_LOG_TYPE_INFO, "%{public}@ <%p>: CLCM Computing rotation from CM fusion, time diff VIO-CM=%fs", &STACK[0x8E0], 0x20u);
            }

            v87 = objc_opt_class();
            v88 = *&STACK[0x8B0];
            *&STACK[0x920] = *&STACK[0x8A0];
            *&STACK[0x930] = v88;
            v89 = *&STACK[0x8D0];
            *&STACK[0x940] = *&STACK[0x8C0];
            *&STACK[0x950] = v89;
            v90 = *&STACK[0x870];
            *&STACK[0x8E0] = *&STACK[0x860];
            *&STACK[0x8F0] = v90;
            v91 = *&STACK[0x890];
            *&STACK[0x900] = *&STACK[0x880];
            *&STACK[0x910] = v91;
            [v87 getHeadingForEnuFromCam:&STACK[0x8E0]];
            v93 = v92;
            *&STACK[0x740] = 0u;
            *&STACK[0x750] = 0u;
            v256 = 0u;
            v257 = 0u;
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            [v235 transform];
            v94 = *&STACK[0x830];
            *&STACK[0x920] = *&STACK[0x820];
            *&STACK[0x930] = v94;
            v95 = *&STACK[0x850];
            *&STACK[0x940] = *&STACK[0x840];
            *&STACK[0x950] = v95;
            v96 = *&STACK[0x7F0];
            *&STACK[0x8E0] = *&STACK[0x7E0];
            *&STACK[0x8F0] = v96;
            v97 = *&STACK[0x810];
            *&STACK[0x900] = *&STACK[0x800];
            *&STACK[0x910] = v97;
            __invert_d4();
            v98 = objc_opt_class();
            v99 = v257;
            *&STACK[0x920] = v256;
            *&STACK[0x930] = v99;
            v100 = *&STACK[0x750];
            *&STACK[0x940] = *&STACK[0x740];
            *&STACK[0x950] = v100;
            v101 = v253;
            *&STACK[0x8E0] = v252;
            *&STACK[0x8F0] = v101;
            v102 = v255;
            *&STACK[0x900] = v254;
            *&STACK[0x910] = v102;
            [v98 getHeadingForEnuFromCam:&STACK[0x8E0]];
            v104 = v103;
            *&STACK[0x950] = 0u;
            *&STACK[0x940] = 0u;
            *&STACK[0x930] = 0u;
            *&STACK[0x920] = 0u;
            *&STACK[0x910] = 0u;
            *&STACK[0x900] = 0u;
            *&STACK[0x8F0] = 0u;
            *&STACK[0x8E0] = 0u;
            *&v103 = v103 - v93;
            v105 = __sincosf_stret(*&v103 * 0.5);
            _Q2 = vmulq_n_f32(xmmword_1C25C8910, v105.__sinval);
            _S3 = _Q2.i32[1];
            _S5 = _Q2.i32[2];
            __asm { FMLS            S0, S5, V2.S[2] }

            v113 = vmuls_lane_f32(v105.__cosval, _Q2, 2);
            v114 = vmuls_lane_f32(v105.__cosval, *_Q2.f32, 1);
            v115.i32[3] = 0;
            v115.f32[0] = _S0 + (v105.__cosval * v105.__cosval);
            v115.f32[1] = (v113 + (_Q2.f32[0] * _Q2.f32[1])) + (v113 + (_Q2.f32[0] * _Q2.f32[1]));
            v115.f32[2] = -(v114 - (_Q2.f32[0] * _Q2.f32[2])) - (v114 - (_Q2.f32[0] * _Q2.f32[2]));
            *&v116 = -(v113 - (_Q2.f32[0] * _Q2.f32[1])) - (v113 - (_Q2.f32[0] * _Q2.f32[1]));
            __asm { FMLA            S4, S3, V2.S[1] }

            *&v118 = (_S4 + (v105.__cosval * v105.__cosval)) - (_Q2.f32[0] * _Q2.f32[0]);
            __asm { FMLA            S4, S5, V2.S[1] }

            *&v120 = _S4 + _S4;
            v121.i64[0] = __PAIR64__(v118, v116);
            v121.i64[1] = v120;
            __asm
            {
              FMLA            S7, S5, V2.S[1]
              FMLA            S1, S5, V2.S[2]
              FMLS            S1, S3, V2.S[1]
            }

            _Q2.f32[0] = (v114 + (_Q2.f32[2] * _Q2.f32[0])) + (v114 + (_Q2.f32[2] * _Q2.f32[0]));
            _Q2.f32[1] = _S7 + _S7;
            _Q2.i64[1] = _S1;
            ARMatrix4x4FloatToDouble(&STACK[0x8E0], v115, v121, _Q2, xmmword_1C25C8560);
            v125 = 0;
            v127 = *&STACK[0x860];
            v126 = *&STACK[0x870];
            v129 = *&STACK[0x880];
            v128 = *&STACK[0x890];
            v131 = *&STACK[0x8A0];
            v130 = *&STACK[0x8B0];
            v132 = *&STACK[0x8D0];
            v133 = *&STACK[0x8C0];
            v134 = *&STACK[0x930];
            v242 = *&STACK[0x920];
            v243 = v134;
            v135 = *&STACK[0x950];
            v244 = *&STACK[0x940];
            v245 = v135;
            v136 = *&STACK[0x8F0];
            v238 = *&STACK[0x8E0];
            v239 = v136;
            v137 = *&STACK[0x910];
            v240 = *&STACK[0x900];
            v241 = v137;
            *&STACK[0x840] = 0u;
            *&STACK[0x850] = 0u;
            *&STACK[0x820] = 0u;
            *&STACK[0x830] = 0u;
            *&STACK[0x800] = 0u;
            *&STACK[0x810] = 0u;
            *&STACK[0x7E0] = 0u;
            *&STACK[0x7F0] = 0u;
            do
            {
              v139 = *(&v238 + v125);
              v138 = *(&v238 + v125 + 16);
              v140 = (&STACK[0x7E0] + v125);
              *v140 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v127, v139.f64[0]), v129, v139, 1), v131, v138.f64[0]), v133, v138, 1);
              v140[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v126, v139.f64[0]), v128, v139, 1), v130, v138.f64[0]), v132, v138, 1);
              v125 += 32;
            }

            while (v125 != 128);
            v141 = *&STACK[0x830];
            *&STACK[0x8A0] = *&STACK[0x820];
            *&STACK[0x8B0] = v141;
            v142 = *&STACK[0x850];
            *&STACK[0x8C0] = *&STACK[0x840];
            *&STACK[0x8D0] = v142;
            v143 = *&STACK[0x7F0];
            *&STACK[0x860] = *&STACK[0x7E0];
            *&STACK[0x870] = v143;
            v144 = *&STACK[0x810];
            *&STACK[0x880] = *&STACK[0x800];
            *&STACK[0x890] = v144;
            v145 = objc_opt_class();
            v146 = *&STACK[0x8B0];
            *&STACK[0x820] = *&STACK[0x8A0];
            *&STACK[0x830] = v146;
            v147 = *&STACK[0x8D0];
            *&STACK[0x840] = *&STACK[0x8C0];
            *&STACK[0x850] = v147;
            v148 = *&STACK[0x870];
            *&STACK[0x7E0] = *&STACK[0x860];
            *&STACK[0x7F0] = v148;
            v149 = *&STACK[0x890];
            *&STACK[0x800] = *&STACK[0x880];
            *&STACK[0x810] = v149;
            [v145 getHeadingForEnuFromCam:&STACK[0x7E0]];
            v151 = v150;
            v152 = _ARLogTechnique_1();
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
            {
              v153 = objc_opt_class();
              v154 = NSStringFromClass(v153);
              LODWORD(STACK[0x7E0]) = 138544387;
              STACK[0x7E4] = v154;
              LOWORD(STACK[0x7EC]) = 2048;
              STACK[0x7EE] = self;
              LOWORD(STACK[0x7F6]) = 2049;
              *&STACK[0x7F8] = v93 * 0.318309886 * 180.0;
              LOWORD(STACK[0x800]) = 2049;
              *&STACK[0x802] = v104 * 0.318309886 * 180.0;
              LOWORD(STACK[0x80A]) = 2049;
              *&STACK[0x80C] = v151 * 0.318309886 * 180.0;
              _os_log_impl(&dword_1C241C000, v152, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM origHeading=%{private}f,cmHeading=%{private}f,newHeading=%{private}f", &STACK[0x7E0], 0x34u);
            }

            v83 = 1;
            v56 = 1;
          }

          v71 = v236;
          v70 = v237;
        }

LABEL_69:
        v155 = 0;
        v157 = *&STACK[0x860];
        v156 = *&STACK[0x870];
        v159 = *&STACK[0x880];
        v158 = *&STACK[0x890];
        v161 = *&STACK[0x8A0];
        v160 = *&STACK[0x8B0];
        v162 = *&STACK[0x8D0];
        v163 = *&STACK[0x8C0];
        v164 = *&STACK[0x7B0];
        v256 = *&STACK[0x7A0];
        v257 = v164;
        v165 = *&STACK[0x7D0];
        *&STACK[0x740] = *&STACK[0x7C0];
        *&STACK[0x750] = v165;
        v166 = *&STACK[0x770];
        v252 = *&STACK[0x760];
        v253 = v166;
        v167 = *&STACK[0x790];
        v254 = *&STACK[0x780];
        v255 = v167;
        *&STACK[0x950] = 0u;
        *&STACK[0x940] = 0u;
        *&STACK[0x930] = 0u;
        *&STACK[0x920] = 0u;
        *&STACK[0x910] = 0u;
        *&STACK[0x900] = 0u;
        *&STACK[0x8F0] = 0u;
        *&STACK[0x8E0] = 0u;
        do
        {
          v169 = *(&v252 + v155);
          v168 = *(&v252 + v155 + 16);
          v170 = (&STACK[0x8E0] + v155);
          *v170 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v157, v169.f64[0]), v159, v169, 1), v161, v168.f64[0]), v163, v168, 1);
          v170[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v156, v169.f64[0]), v158, v169, 1), v160, v168.f64[0]), v162, v168, 1);
          v155 += 32;
        }

        while (v155 != 128);
        v218 = *&STACK[0x8E0];
        v219 = *&STACK[0x8F0];
        v220 = *&STACK[0x900];
        v221 = *&STACK[0x910];
        v222 = *&STACK[0x920];
        vars0 = *&STACK[0x930];
        v226 = *&STACK[0x940];
        v227 = *&STACK[0x950];
        if (v56)
        {
          v171 = vsubq_f64(*&STACK[0x950], v71);
          v172 = vsubq_f64(*&STACK[0x940], v70);
          v173 = vaddvq_f64(vaddq_f64(vmulq_f64(v172, v172), vmulq_f64(v171, v171)));
          v174 = _ARLogTechnique_1();
          v175 = os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG);
          if (v173 >= 0.0625 && (*&v173 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v175)
            {
              v179 = objc_opt_class();
              v180 = NSStringFromClass(v179);
              v181 = ARVector3Description(vcvt_hight_f32_f64(vcvt_f32_f64(v226), v227));
              LODWORD(STACK[0x8E0]) = 138543875;
              STACK[0x8E4] = v180;
              LOWORD(STACK[0x8EC]) = 2048;
              STACK[0x8EE] = self;
              LOWORD(STACK[0x8F6]) = 2113;
              STACK[0x8F8] = v181;
              _os_log_impl(&dword_1C241C000, v174, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM ENUFromVIO new translation vector: %{private}@", &STACK[0x8E0], 0x20u);
            }

            v182 = self->_state;
            if (self->_useGradualCorrection)
            {
              gradualCorrectionFilter2 = [(ARGeoTrackingTechniqueState *)v182 gradualCorrectionFilter];
              *&STACK[0x8F0] = v227;
              *&STACK[0x8E0] = v226;
              [gradualCorrectionFilter2 setTargetTranslation:&STACK[0x8E0]];
            }

            else
            {
              *&STACK[0x8E0] = v226;
              *&STACK[0x8F0] = v227;
              [(ARGeoTrackingTechniqueState *)v182 setEnuFromVIOTranslation:&STACK[0x8E0]];
            }
          }

          else
          {
            if (v175)
            {
              v177 = objc_opt_class();
              v178 = NSStringFromClass(v177);
              LODWORD(STACK[0x8E0]) = 138543618;
              STACK[0x8E4] = v178;
              LOWORD(STACK[0x8EC]) = 2048;
              STACK[0x8EE] = self;
              _os_log_impl(&dword_1C241C000, v174, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM ENUFromVIO update: translation difference too small, ignoring", &STACK[0x8E0], 0x16u);
            }
          }

          v71 = v236;
          v70 = v237;
          if (v83)
          {
LABEL_87:
            *&STACK[0x8F0] = v229;
            *&STACK[0x8E0] = v230;
            *&STACK[0x910] = v231;
            *&STACK[0x900] = v232;
            *&STACK[0x930] = v233;
            *&STACK[0x920] = v234;
            *&STACK[0x950] = v71;
            *&STACK[0x940] = v70;
            __invert_d4();
            v184 = 0;
            *&STACK[0x8E0] = 0u;
            *&STACK[0x8F0] = 0u;
            *&STACK[0x900] = 0u;
            *&STACK[0x910] = 0u;
            *&STACK[0x920] = 0u;
            *&STACK[0x930] = 0u;
            *&STACK[0x940] = 0u;
            *&STACK[0x950] = 0u;
            do
            {
              v186 = *(&STACK[0x860] + v184);
              v185 = *(&STACK[0x860] + v184 + 16);
              v187 = (&STACK[0x8E0] + v184);
              *v187 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v218, v186.f64[0]), v220, v186, 1), v222, v185.f64[0]), v226, v185, 1);
              v187[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v219, v186.f64[0]), v221, v186, 1), vars0, v185.f64[0]), v227, v185, 1);
              v184 += 32;
            }

            while (v184 != 128);
            v188 = (*&STACK[0x8E0] + *&STACK[0x908] + *&STACK[0x930] + -1.0) * 0.5;
            v189 = 1.0;
            if (v188 >= 1.001 || v188 <= 1.0)
            {
              v189 = (*&STACK[0x8E0] + *&STACK[0x908] + *&STACK[0x930] + -1.0) * 0.5;
            }

            if (v188 >= -1.0 || v188 <= -1.001)
            {
              v192 = v189;
            }

            else
            {
              v192 = -1.0;
            }

            v193 = acos(v192);
            v194 = _ARLogTechnique_1();
            v195 = os_log_type_enabled(v194, OS_LOG_TYPE_DEBUG);
            if ((*&v193 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v193 * 180.0 < 3.14159265)
            {
              v15 = v235;
              if (v195)
              {
                v205 = objc_opt_class();
                v206 = NSStringFromClass(v205);
                LODWORD(STACK[0x860]) = 138543618;
                STACK[0x864] = v206;
                LOWORD(STACK[0x86C]) = 2048;
                STACK[0x86E] = self;
                _os_log_impl(&dword_1C241C000, v194, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM ENUFromVIO update: rotation difference too small, ignoring", &STACK[0x860], 0x16u);
              }
            }

            else
            {
              if (v195)
              {
                v196 = objc_opt_class();
                v197 = NSStringFromClass(v196);
                *&STACK[0x860] = v218;
                *&STACK[0x870] = v219;
                *&STACK[0x880] = v220;
                *&STACK[0x890] = v221;
                *&STACK[0x8A0] = v222;
                *&STACK[0x8B0] = vars0;
                *&STACK[0x8D0] = v227;
                *&STACK[0x8C0] = v226;
                v198.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0x860]);
                v202 = ARMatrix4x4Description(0, v198, v199, v200, v201);
                LODWORD(STACK[0x860]) = 138543875;
                STACK[0x864] = v197;
                LOWORD(STACK[0x86C]) = 2048;
                STACK[0x86E] = self;
                LOWORD(STACK[0x876]) = 2113;
                STACK[0x878] = v202;
                _os_log_impl(&dword_1C241C000, v194, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM ENUFromVIO new rotation: %{private}@", &STACK[0x860], 0x20u);
              }

              v203 = self->_state;
              v15 = v235;
              if (!self->_useGradualCorrection)
              {
                *&STACK[0x860] = v218;
                *&STACK[0x870] = v219;
                *&STACK[0x880] = v220;
                *&STACK[0x890] = v221;
                *&STACK[0x8A0] = v222;
                *&STACK[0x8B0] = vars0;
                *&STACK[0x8C0] = v226;
                *&STACK[0x8D0] = v227;
                [(ARGeoTrackingTechniqueState *)v203 setEnuFromVIORotation:&STACK[0x860]];
                v6 = v228;
                goto LABEL_114;
              }

              gradualCorrectionFilter3 = [(ARGeoTrackingTechniqueState *)v203 gradualCorrectionFilter];
              *&STACK[0x860] = v218;
              *&STACK[0x870] = v219;
              *&STACK[0x880] = v220;
              *&STACK[0x890] = v221;
              *&STACK[0x8A0] = v222;
              *&STACK[0x8B0] = vars0;
              *&STACK[0x8D0] = v227;
              *&STACK[0x8C0] = v226;
              [gradualCorrectionFilter3 setTargetRotation:&STACK[0x860]];
            }

            v6 = v228;
LABEL_114:
            v54 = 1;
            goto LABEL_115;
          }

          v54 = 0;
          v56 = 1;
        }

        else
        {
          if (v83)
          {
            goto LABEL_87;
          }

          v54 = 0;
          v56 = 0;
        }

        v6 = v228;
        v15 = v235;
        goto LABEL_115;
      }

      v14 = [(ARGeoTrackingTechniqueState *)self->_state findClosestDeviceMotionDataToTimestamp:v8];
      if (v14)
      {
        v15 = v14;
        [v14 timestamp];
        v17 = vabdd_f64(v16, v8);
        goto LABEL_33;
      }

      if (ARShouldUseLogTypeError_onceToken_7 != -1)
      {
        [ARGeoTrackingTechnique _estimatePose:pose:];
      }

      v34 = ARShouldUseLogTypeError_internalOSVersion_7;
      v35 = _ARLogTechnique_1();
      v36 = v35;
      if (v34 == 1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          LODWORD(STACK[0x8E0]) = 138543874;
          STACK[0x8E4] = v38;
          LOWORD(STACK[0x8EC]) = 2048;
          STACK[0x8EE] = self;
          LOWORD(STACK[0x8F6]) = 2048;
          *&STACK[0x8F8] = v8;
          v39 = "%{public}@ <%p>: CLCM No device orientation found near timestamp: %f";
          v40 = v36;
          v41 = OS_LOG_TYPE_ERROR;
LABEL_30:
          _os_log_impl(&dword_1C241C000, v40, v41, v39, &STACK[0x8E0], 0x20u);
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v42 = objc_opt_class();
        v38 = NSStringFromClass(v42);
        LODWORD(STACK[0x8E0]) = 138543874;
        STACK[0x8E4] = v38;
        LOWORD(STACK[0x8EC]) = 2048;
        STACK[0x8EE] = self;
        LOWORD(STACK[0x8F6]) = 2048;
        *&STACK[0x8F8] = v8;
        v39 = "Error: %{public}@ <%p>: CLCM No device orientation found near timestamp: %f";
        v40 = v36;
        v41 = OS_LOG_TYPE_INFO;
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    if (ARShouldUseLogTypeError_onceToken_7 != -1)
    {
      [ARGeoTrackingTechnique _estimatePose:pose:];
    }

    v26 = ARShouldUseLogTypeError_internalOSVersion_7;
    v27 = _ARLogTechnique_1();
    v15 = v27;
    if (v26 == 1)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        LODWORD(STACK[0x8E0]) = 138543874;
        STACK[0x8E4] = v29;
        LOWORD(STACK[0x8EC]) = 2048;
        STACK[0x8EE] = self;
        LOWORD(STACK[0x8F6]) = 2048;
        *&STACK[0x8F8] = v8;
        v30 = "%{public}@ <%p>: CLCM No VIO pose found near timestamp: %f; bailing out";
        v31 = v15;
        v32 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_1C241C000, v31, v32, v30, &STACK[0x8E0], 0x20u);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v29 = NSStringFromClass(v33);
      LODWORD(STACK[0x8E0]) = 138543874;
      STACK[0x8E4] = v29;
      LOWORD(STACK[0x8EC]) = 2048;
      STACK[0x8EE] = self;
      LOWORD(STACK[0x8F6]) = 2048;
      *&STACK[0x8F8] = v8;
      v30 = "Error: %{public}@ <%p>: CLCM No VIO pose found near timestamp: %f; bailing out";
      v31 = v15;
      v32 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

LABEL_121:

    goto LABEL_122;
  }

  if (ARShouldUseLogTypeError_onceToken_7 != -1)
  {
    [ARGeoTrackingTechnique _estimatePose:pose:];
  }

  v18 = ARShouldUseLogTypeError_internalOSVersion_7;
  v19 = _ARLogTechnique_1();
  v9 = v19;
  if (v18 == 1)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      LODWORD(STACK[0x8E0]) = 138543618;
      STACK[0x8E4] = v21;
      LOWORD(STACK[0x8EC]) = 2048;
      STACK[0x8EE] = self;
      v22 = "%{public}@ <%p>: At least one location must have been received so far.";
      v23 = v9;
      v24 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_1C241C000, v23, v24, v22, &STACK[0x8E0], 0x16u);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v25 = objc_opt_class();
    v21 = NSStringFromClass(v25);
    LODWORD(STACK[0x8E0]) = 138543618;
    STACK[0x8E4] = v21;
    LOWORD(STACK[0x8EC]) = 2048;
    STACK[0x8EE] = self;
    v22 = "Error: %{public}@ <%p>: At least one location must have been received so far.";
    v23 = v9;
    v24 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

LABEL_122:
}

- (void)_updateVLStateData:(double)data
{
  v57 = *MEMORY[0x1E69E9840];
  [(ARGeoTrackingTechniqueState *)self->_state lastVLExecutionTimestamp];
  v6 = v5;
  [(ARGeoTrackingTechniqueState *)self->_state firstVLExecutionAttemptTimestamp];
  v8 = v7;
  lastCLLocation = [(ARGeoTrackingTechniqueState *)self->_state lastCLLocation];
  location = [lastCLLocation location];
  [location horizontalAccuracy];
  v12 = v11;
  location2 = [lastCLLocation location];
  [location2 horizontalAccuracy];
  v15 = v14;
  location3 = [lastCLLocation location];
  [location3 verticalAccuracy];
  v18 = v17;
  v50 = lastCLLocation;
  location4 = [lastCLLocation location];
  [location4 verticalAccuracy];
  v21 = v20;

  os_unfair_lock_lock(&self->_statusLock);
  trackingState = [(ARGeoTrackingTechniqueState *)self->_state trackingState];
  trackingAccuracy = [(ARGeoTrackingTechniqueState *)self->_state trackingAccuracy];
  v24 = [(ARGeoTrackingTechnique *)self _getHighestPriorityFailureWithTechniqueStateObject:self->_state];
  failureReasons = [(ARGeoTrackingTechniqueState *)self->_state failureReasons];
  hasStartedAvailabilityCheck = [(ARGeoTrackingTechniqueState *)self->_state hasStartedAvailabilityCheck];
  hasReturnedAvailabilityCheck = [(ARGeoTrackingTechniqueState *)self->_state hasReturnedAvailabilityCheck];
  hasStartedLocalization = [(ARGeoTrackingTechniqueState *)self->_state hasStartedLocalization];
  hasReturnedLocalization = [(ARGeoTrackingTechniqueState *)self->_state hasReturnedLocalization];
  os_unfair_lock_unlock(&self->_statusLock);
  if (trackingState == 3)
  {
    v26 = sqrt(v18 * v21 + v12 * v15);
    if (v26 >= 1.88)
    {
      if (v26 >= 3.64)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }
    }

    else
    {
      v27 = 3;
    }
  }

  else
  {
    v27 = 0;
  }

  if (v27 != trackingAccuracy)
  {
    v28 = _ARLogTechnique_1();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromARGeoTrackingAccuracy(v27);
      *buf = 138543874;
      v52 = v30;
      v53 = 2048;
      selfCopy = self;
      v55 = 2112;
      v56 = v31;
      _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Geo tracking (base level) accuracy changed to: %@", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_statusLock);
    [(ARGeoTrackingTechniqueState *)self->_state setTrackingAccuracy:v27];
    os_unfair_lock_unlock(&self->_statusLock);
  }

  if (v8 > 0.0)
  {
    v8 = data - v8;
  }

  if (v6 <= 0.0)
  {
    v32 = v6;
  }

  else
  {
    v32 = data - v6;
  }

  v33 = [[ARGeoTrackingStatus alloc] initWithGeoTrackingState:trackingState accuracy:v27 stateReason:v24 failureReasons:failureReasons];
  lastCMDeviceMotion = [(ARGeoTrackingTechniqueState *)self->_state lastCMDeviceMotion];
  v35 = [ARVLStateData alloc];
  location5 = [v50 location];
  v37 = [location5 copy];
  [v50 timestamp];
  v39 = v38;
  deviceMotion = [lastCMDeviceMotion deviceMotion];
  [deviceMotion heading];
  v42 = v41;
  [lastCMDeviceMotion timestamp];
  v44 = [(ARVLStateData *)v35 init:v33 timeSinceInitialization:v37 trackingStatus:hasStartedAvailabilityCheck fusedReplayLocation:hasReturnedAvailabilityCheck fusedReplayLocationTimestamp:hasStartedLocalization fusedReplayHeading:hasReturnedLocalization fusedReplayHeadingTimestamp:v32 hasStartedAvailabilityCheck:v8 hasReturnedAvailabilityCheck:v39 hasStartedLocalization:v42 hasReturnedLocalization:v43];

  os_unfair_lock_lock(&self->_resultLock);
  resultDatas = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
  [resultDatas addObject:v44];

  os_unfair_lock_unlock(&self->_resultLock);
}

- (__n128)getLocationFromWorldPosition:(int8x16_t *)position@<X8> error:(__n128)error@<Q0>
{
  v44[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((self + 104));
  v7 = *(self + 112);
  os_unfair_lock_unlock((self + 104));
  if ([v7 trackingState] == 3)
  {
    v8 = 0uLL;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    memset(buf, 0, sizeof(buf));
    if (v7)
    {
      [v7 enuFromVIO];
      v8 = 0uLL;
    }

    v34 = v8;
    v35 = v8;
    v32 = v8;
    v33 = v8;
    v30 = v8;
    v31 = v8;
    v28 = v8;
    v29 = v8;
    enuOrigin = [v7 enuOrigin];
    v10 = enuOrigin;
    if (enuOrigin)
    {
      [enuOrigin ecefFromlocation];
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
    }

    errorCopy = error;
    errorCopy.n128_u32[3] = 1.0;
    ARVisionTransformFromARTransform(*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), errorCopy);
    ARECEFToLLA(v27);
    v23 = v27[0];
    v26 = v27[1];
    enuOrigin2 = [v7 enuOrigin];
    [enuOrigin2 undulation];
    v20 = ARWGS84ToMSLAltitude(*v26.i64, v19);
    v21.i64[1] = v26.i64[1];
    *v21.i64 = v20;
    v25 = v21;
  }

  else
  {
    v11 = _ARLogTechnique_1();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: getGeoLocationForPoint requires geo tracking to be localized.", buf, 0x16u);
    }

    if (a2)
    {
      v43 = *MEMORY[0x1E696A578];
      v14 = ARKitCoreBundle();
      v15 = [v14 localizedStringForKey:@"Geo tracking is not localized." value:&stru_1F4208A80 table:@"Localizable"];
      v44[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      *a2 = ARErrorWithCodeAndUserInfo(151, v16);
    }

    v23 = 0u;
    v25 = 0u;
  }

  result = v23;
  *position = v23;
  position[1] = v25;
  return result;
}

@end