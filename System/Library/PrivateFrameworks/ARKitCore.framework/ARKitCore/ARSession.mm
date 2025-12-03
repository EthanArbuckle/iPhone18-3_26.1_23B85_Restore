@interface ARSession
+ (BOOL)_supportsConfiguration:(id)configuration;
+ (id)_applySessionOverrides:(id)overrides outError:(id *)error;
+ (id)_fullDescription;
+ (id)_runningSessions;
+ (void)forceEnvironmentTexturingTechniqueToManualMode:(id)mode;
+ (void)initialize;
- (ARFrame)currentFrame;
- (ARSession)init;
- (ARTrackedRaycast)trackedRaycast:(ARRaycastQuery *)query updateHandler:(void *)updateHandler;
- (BOOL)_geoTrackingPublicStatusChangedFromLastVendedFrameToFrame:(id)frame;
- (BOOL)_trackingStateChangedFromLastVendedFrameToFrame:(id)frame;
- (BOOL)is6DofFaceTracking;
- (BOOL)isPrimaryImageData:(id)data;
- (BOOL)isUserFaceTracking;
- (BOOL)querySceneReconstructionOccupancyWithPoints:(id)points callback:(id)callback;
- (NSArray)raycast:(ARRaycastQuery *)query;
- (NSString)description;
- (__n128)_cameraTransformForResultData:(void *)data previousFrame:(void *)frame;
- (__n128)originTransform;
- (__n128)predictedDeviceTransformAtTimestamp:(uint64_t)timestamp;
- (id)_frameContextByConsumingPendingChanges;
- (id)_fullDescription;
- (id)_getGeoAnchorAltitude:(id)altitude;
- (id)_getObservers;
- (id)_imageSensorForConfiguration:(id)configuration existingSensor:(id)sensor;
- (id)_updateAnchorsForFrame:(id)frame resultDatas:(id)datas context:(id)context;
- (id)adPipelineParameters;
- (id)annotateAnchorToRaycastResults:(id)results;
- (id)delegate;
- (id)replaySensor;
- (int64_t)_preferredRenderFrameRateForCaptureFrameRate:(int64_t)rate isNominalPower:(BOOL)power;
- (int64_t)_preferredRenderSyncFrameRateForCaptureFrameRate:(int64_t)rate;
- (void)_addObserver:(id)observer;
- (void)_changePowerUsage:(unint64_t)usage;
- (void)_configureSensorsForRecording;
- (void)_endInterruption;
- (void)_interruptSession;
- (void)_lookupAltitudeForAnchor:(id)anchor;
- (void)_pauseWaitingForOutstandingCallbacks:(BOOL)callbacks;
- (void)_populateRawSceneUnderstandingDataForFrame:(id)frame fromResultData:(id)data;
- (void)_removeGeoAnchorAltitude:(id)altitude;
- (void)_removeObserver:(id)observer;
- (void)_replaceOrAddSensor:(id)sensor;
- (void)_saveGraphFileInFileName:(id *)name;
- (void)_sessionCameraDidChangeTrackingState:(id)state;
- (void)_sessionDidAddAnchors:(id)anchors;
- (void)_sessionDidCaptureHighResolutionFrame:(id)frame error:(id)error;
- (void)_sessionDidChangeGeoTrackingStatus:(id)status;
- (void)_sessionDidFailWithError:(id)error;
- (void)_sessionDidOutputAudioData:(id)data;
- (void)_sessionDidOutputCollaborationData:(id)data;
- (void)_sessionDidRemoveAnchors:(id)anchors;
- (void)_sessionDidUpdateAnchors:(id)anchors;
- (void)_sessionDidUpdateExternalAnchors:(id)anchors;
- (void)_sessionDidUpdateFrame:(id)frame;
- (void)_sessionDidUpdateSpatialMappingPointClouds:(id)clouds;
- (void)_sessionRequestedRunWithConfiguration:(id)configuration options:(unint64_t)options;
- (void)_sessionShouldAttemptRelocalization;
- (void)_sessionWillRunWithConfiguration:(id)configuration;
- (void)_setGeoAnchorAltitude:(id)altitude pair:(id)pair;
- (void)_setInternalConfiguration:(id)configuration;
- (void)_setPrimaryTechnique:(id)technique secondaryTechnique:(id)secondaryTechnique stillImageRootTechnique:(id)rootTechnique;
- (void)_startSensorsWithDataTypes:(unint64_t)types;
- (void)_stopAllSensorsWaitingForOutstandingCallbacks:(BOOL)callbacks;
- (void)_stopSensorsWithDataTypes:(unint64_t)types keepingDataTypes:(unint64_t)dataTypes;
- (void)_updateFeaturePointsForFrame:(id)frame previousFrame:(id)previousFrame trackingStateChanged:(BOOL)changed context:(id)context;
- (void)_updateOriginTransformForFrame:(id)frame previousFrame:(id)previousFrame modifiers:(unint64_t)modifiers context:(id)context;
- (void)_updatePowerPressureLevelWithToken:(int)token;
- (void)_updatePowerUsage;
- (void)_updateSensorsWithConfiguration:(id)configuration;
- (void)_updateSessionStateWithConfiguration:(id)configuration options:(unint64_t)options;
- (void)_updateSessionWithConfiguration:(id)configuration options:(unint64_t)options;
- (void)_updateThermalStateFromCurrentProcessInfo;
- (void)addAnchor:(ARAnchor *)anchor;
- (void)captureHighResolutionFrameUsingPhotoSettings:(id)settings completion:(id)completion;
- (void)createReferenceObjectWithTransform:(simd_float4x4)transform center:(simd_float3)center extent:(simd_float3)extent completionHandler:(void *)completionHandler;
- (void)dealloc;
- (void)forceEnvironmentTexturingToManualMode:(BOOL)mode;
- (void)getCurrentWorldMapWithCompletionHandler:(void *)completionHandler;
- (void)getGeoLocationForPoint:(simd_float3)position completionHandler:(void *)completionHandler;
- (void)pause;
- (void)removeAnchor:(ARAnchor *)anchor;
- (void)runWithConfiguration:(ARConfiguration *)configuration options:(ARSessionRunOptions)options;
- (void)sensor:(id)sensor didFailWithError:(id)error;
- (void)sensor:(id)sensor didOutputSensorData:(id)data;
- (void)sensorDidPause:(id)pause;
- (void)sensorDidRestart:(id)restart;
- (void)setAvailableSensors:(id)sensors;
- (void)setGeoTrackingTechnique:(id)technique;
- (void)setOriginTransform:(__n128)transform;
- (void)setState:(unint64_t)state;
- (void)setWorldOrigin:(simd_float4x4)relativeTransform;
- (void)setupResultRequestSyncScheduler:(id)scheduler forTechnique:(id)technique;
- (void)setupSessionForTechniques:(id)techniques;
- (void)technique:(id)technique didChangeState:(int64_t)state;
- (void)technique:(id)technique didOutputCollaborationData:(id)data;
- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)timerDidVendFrame:(id)frame;
- (void)updateWithCollaborationData:(ARCollaborationData *)collaborationData;
@end

@implementation ARSession

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__ARSession_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

void __23__ARSession_initialize__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1C241C000, "ARKit Session", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v3 = arkitActivity;
  arkitActivity = v2;

  v4 = _ARLogSession_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = ARKitCoreBuildVersionString();
    *buf = 138543874;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2114;
    *v18 = v8;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>:  ==== Loading ARKit %{public}@ ====", buf, 0x20u);
  }

  CV3DGetVersionInfo();
  v9 = _ARLogSession_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a1 + 32);
    *buf = 138544386;
    v14 = v11;
    v15 = 2048;
    v16 = v12;
    v17 = 1024;
    *v18 = 0;
    *&v18[4] = 1024;
    *&v18[6] = 0;
    v19 = 1024;
    v20 = 0;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>:  ==== Using AppleCV3D %u.%u.%u  ====", buf, 0x28u);
  }
}

+ (id)_runningSessions
{
  if (_runningSessions_sessionsOnceToken != -1)
  {
    +[ARSession _runningSessions];
  }

  [_weakSessions ar_compactZeroedWeakPointers];
  v2 = _weakSessions;

  return [v2 allObjects];
}

void __29__ARSession__runningSessions__block_invoke()
{
  v0 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v1 = _weakSessions;
  _weakSessions = v0;
}

- (ARSession)init
{
  v94 = *MEMORY[0x1E69E9840];
  v87.receiver = self;
  v87.super_class = ARSession;
  v2 = [(ARSession *)&v87 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v4 = *(v2 + 62);
    *(v2 + 62) = uUID;

    *(v2 + 65) = 0;
    v5 = dispatch_semaphore_create(1);
    v6 = *(v2 + 17);
    *(v2 + 17) = v5;

    v7 = dispatch_semaphore_create(1);
    v8 = *(v2 + 20);
    *(v2 + 20) = v7;

    v9 = dispatch_semaphore_create(1);
    v10 = *(v2 + 23);
    *(v2 + 23) = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INTERACTIVE, 0);

    v13 = dispatch_queue_create("com.apple.arkit.stateSerialQueue", v12);
    dispatch_queue_set_specific(v13, &kARSessionStateQueueSpecificKey, kARSessionStateQueueSpecificValue, 0);
    objc_storeStrong(v2 + 24, v13);
    *(v2 + 70) = 0;
    v14 = objc_opt_new();
    v15 = *(v2 + 69);
    *(v2 + 69) = v14;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v17 = *(v2 + 25);
    *(v2 + 25) = weakObjectsHashTable;

    v18 = dispatch_semaphore_create(1);
    v19 = *(v2 + 26);
    *(v2 + 26) = v18;

    v20 = objc_opt_new();
    v21 = *(v2 + 74);
    *(v2 + 74) = v20;

    v22 = objc_opt_new();
    v23 = *(v2 + 22);
    *(v2 + 22) = v22;

    v24 = dispatch_semaphore_create(1);
    v25 = *(v2 + 7);
    *(v2 + 7) = v24;

    v26 = MEMORY[0x1E69E9B18];
    v27 = *(MEMORY[0x1E69E9B18] + 16);
    *(v2 + 4) = *MEMORY[0x1E69E9B18];
    *(v2 + 5) = v27;
    v28 = *(v26 + 48);
    *(v2 + 6) = *(v26 + 32);
    *(v2 + 7) = v28;
    v29 = dispatch_semaphore_create(1);
    v30 = *(v2 + 45);
    *(v2 + 45) = v29;

    v31 = dispatch_semaphore_create(1);
    v32 = *(v2 + 53);
    *(v2 + 53) = v31;

    *(v2 + 432) = 0;
    v33 = objc_alloc_init(ARFrameUpdateTimer);
    v34 = *(v2 + 18);
    *(v2 + 18) = v33;

    [*(v2 + 18) setDelegate:v2];
    *(v2 + 473) = 1;
    v35 = dispatch_queue_create("com.apple.arkit.resultDataPredictionQueue", v12);
    v36 = *(v2 + 21);
    *(v2 + 21) = v35;

    v37 = objc_opt_new();
    v38 = *(v2 + 50);
    *(v2 + 50) = v37;

    if (+[ARQATracer isEnabled])
    {
      v39 = objc_opt_new();
      v40 = *(v2 + 73);
      *(v2 + 73) = v39;

      [v2 _addObserver:*(v2 + 73)];
    }

    *(v2 + 50) = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.personDetectionTechnique.renderBoundingBoxesIntoCapturedImage"];
    *(v2 + 32) = 0x4010000000000000;
    v41 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.session.defaultRelocalizationTimeout"];
    v42 = v41;
    if (v41)
    {
      [v41 doubleValue];
      *(v2 + 32) = v43;
      v44 = _ARLogSession_0();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = *(v2 + 32);
        *buf = 138543874;
        v89 = v46;
        v90 = 2048;
        v91 = v2;
        v92 = 2048;
        v93 = v47;
        _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding default relocalization timeout: %f", buf, 0x20u);
      }
    }

    *(v2 + 36) = [ARKitUserDefaults integerForKey:@"com.apple.arkit.session.featurePointAccumulationCount"];
    v48 = _ARLogSession_0();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = *(v2 + 36);
      *buf = 138543874;
      v89 = v50;
      v90 = 2048;
      v91 = v2;
      v92 = 2048;
      v93 = v51;
      _os_log_impl(&dword_1C241C000, v48, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Feature point accumulation set to %ld", buf, 0x20u);
    }

    objc_initWeak(&location, v2);
    v52 = objc_opt_new();
    [v52 setUnderlyingQueue:v13];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __17__ARSession_init__block_invoke;
    handler[3] = &unk_1E817CB68;
    objc_copyWeak(&v85, &location);
    notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v2 + 60, v13, handler);
    [v2 _updatePowerPressureLevelWithToken:v2[60]];
    v53 = objc_opt_new();
    v54 = *(v2 + 28);
    *(v2 + 28) = v53;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __17__ARSession_init__block_invoke_2;
    v82[3] = &unk_1E817CB90;
    objc_copyWeak(&v83, &location);
    v56 = [defaultCenter addObserverForName:*MEMORY[0x1E696A7E0] object:0 queue:v52 usingBlock:v82];
    v57 = *(v2 + 27);
    *(v2 + 27) = v56;

    [v2 _updateThermalStateFromCurrentProcessInfo];
    [v2 _updatePowerUsage];
    v58 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.technique.prepare");
    v59 = *(v2 + 39);
    *(v2 + 39) = v58;

    v60 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.technique.stillimages");
    v61 = *(v2 + 40);
    *(v2 + 40) = v60;

    v62 = [[ARTrackedRaycastPostProcessor alloc] initWithSession:v2];
    v63 = *(v2 + 46);
    *(v2 + 46) = v62;

    v64 = +[ARBKSAccelerometer sharedAccelerometerHandle];
    v65 = *(v2 + 47);
    *(v2 + 47) = v64;

    v66 = _ARLogSession_0();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      identifier = [v2 identifier];
      *buf = 138543874;
      v89 = v68;
      v90 = 2048;
      v91 = v2;
      v92 = 2112;
      v93 = identifier;
      _os_log_impl(&dword_1C241C000, v66, OS_LOG_TYPE_INFO, "%{public}@ <%p>: initialized with identifier %@", buf, 0x20u);
    }

    v70 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:261];
    v71 = *(v2 + 51);
    *(v2 + 51) = v70;

    v72 = objc_opt_class();
    objc_sync_enter(v72);
    v73 = objc_autoreleasePoolPush();
    v74 = +[ARSession _runningSessions];
    [_weakSessions addPointer:v2];
    objc_autoreleasePoolPop(v73);
    objc_sync_exit(v72);

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v76 = *(v2 + 79);
    *(v2 + 79) = dictionary;

    v2[7] = 0;
    *(v2 + 109) = 0;
    *(v2 + 56) = ARCreateCV3DLoggingHandle([ARKitUserDefaults integerForKey:@"com.apple.arkit.slamManager.cv3dLoggingLevel.api"], [ARKitUserDefaults integerForKey:@"com.apple.arkit.slamManager.cv3dLoggingLevel.internal"]);
    v77 = [[ARRecon3DLogger alloc] initWithInternalLogging:1];
    v78 = *(v2 + 57);
    *(v2 + 57) = v77;

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.inFrameAnchorVisualization"])
    {
      v79 = objc_opt_new();
    }

    else
    {
      v79 = 0;
    }

    v80 = *(v2 + 58);
    *(v2 + 58) = v79;

    objc_destroyWeak(&v83);
    objc_destroyWeak(&v85);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __17__ARSession_init__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePowerPressureLevelWithToken:a2];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _updatePowerUsage];
}

void __17__ARSession_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateThermalStateFromCurrentProcessInfo];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updatePowerUsage];
}

- (void)dealloc
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __20__ARSession_dealloc__block_invoke;
  v7[3] = &unk_1E817BFE8;
  v7[4] = self;
  v3 = MEMORY[0x1C691B4C0](v7, a2);
  if (dispatch_get_specific(&kARSessionStateQueueSpecificKey) == kARSessionStateQueueSpecificValue)
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(self->_stateQueue, v3);
  }

  if (self->_thermalStateObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_thermalStateObserver];
  }

  peakPowerPressureToken = self->_peakPowerPressureToken;
  if (peakPowerPressureToken)
  {
    notify_cancel(peakPowerPressureToken);
  }

  +[ARKitUserDefaults clearUserDefaultsCache];
  CV3DLoggingReleaseHandle();

  v6.receiver = self;
  v6.super_class = ARSession;
  [(ARSession *)&v6 dealloc];
}

uint64_t __20__ARSession_dealloc__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) state];
  if (result)
  {
    v3 = _ARLogSession_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: ARSession is being deallocated without being paused. Please pause running sessions explicitly.", &v7, 0x16u);
    }

    return [*(a1 + 32) _pauseWaitingForOutstandingCallbacks:0];
  }

  return result;
}

- (ARFrame)currentFrame
{
  kdebug_trace();
  dispatch_semaphore_wait(self->_lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = self->_lastVendedFrame;
  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  [(ARFrame *)v3 timestamp];
  kdebug_trace();

  return v3;
}

- (void)runWithConfiguration:(ARConfiguration *)configuration options:(ARSessionRunOptions)options
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = configuration;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_1C241C000, "Running with configuration", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [(ARConfiguration *)v6 copy];
  if ([(ARSession *)self forceAddSceneReconstructionKeyframePointCloudWithColor])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      [v9 setSceneReconstruction:{objc_msgSend(v9, "sceneReconstruction") | 0x18}];
      v10 = _ARLogSession_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromARSceneReconstruction([v9 sceneReconstruction]);
        *buf = 138543874;
        v40 = v12;
        v41 = 2048;
        selfCopy6 = self;
        v43 = 2112;
        v44 = v13;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: SceneReconstruction after enforcing addition of KeyframePointCloudWithColor=%@", buf, 0x20u);
      }
    }
  }

  [(ARSession *)self _sessionRequestedRunWithConfiguration:v8 options:options];
  kdebug_trace();
  v14 = [ARSession _supportsConfiguration:v8];
  v15 = _ARLogSession_0();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = ARSessionRunOptionsToString(options);
      *buf = 138544130;
      v40 = v18;
      v41 = 2048;
      selfCopy6 = self;
      v43 = 2114;
      v44 = v8;
      v45 = 2114;
      v46 = v19;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: begin run with configuration\nConfiguration: %{public}@\nOptions: %{public}@", buf, 0x2Au);
    }

    v20 = objc_autoreleasePoolPush();
    v37 = 0;
    v21 = [ARSession _applySessionOverrides:v8 outError:&v37];
    v22 = v37;

    objc_autoreleasePoolPop(v20);
    if (v21)
    {
      [(ARSessionMetrics *)self->_metrics sessionStarted:self withConfiguration:v21];
      stateQueue = self->_stateQueue;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __42__ARSession_runWithConfiguration_options___block_invoke;
      v33[3] = &unk_1E817C240;
      v8 = v21;
      v34 = v8;
      selfCopy3 = self;
      v36 = options;
      dispatch_async(stateQueue, v33);
    }

    else
    {
      if (ARShouldUseLogTypeError_onceToken_21 != -1)
      {
        [ARSession runWithConfiguration:options:];
      }

      v26 = ARShouldUseLogTypeError_internalOSVersion_21;
      v27 = _ARLogSession_0();
      v28 = v27;
      if (v26 == 1)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543874;
          v40 = v30;
          v41 = 2048;
          selfCopy6 = self;
          v43 = 2112;
          v44 = v22;
          _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to apply overrides to configuration. Error: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138543874;
        v40 = v32;
        v41 = 2048;
        selfCopy6 = self;
        v43 = 2112;
        v44 = v22;
        _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to apply overrides to configuration. Error: %@", buf, 0x20u);
      }

      [(ARSession *)self _sessionDidFailWithError:v22];
      kdebug_trace();
      v8 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543874;
      v40 = v25;
      v41 = 2048;
      selfCopy6 = self;
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to run the session, configuration is not supported on this device: %@", buf, 0x20u);
    }

    v22 = ARErrorWithCodeAndUserInfo(100, 0);
    [(ARSession *)self _sessionDidFailWithError:v22];
    kdebug_trace();
  }

  os_activity_scope_leave(&state);
}

void __42__ARSession_runWithConfiguration_options___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) isKindOfConfiguration:objc_opt_class()])
  {
LABEL_6:
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) configurationInternal];
    v8 = [v7 isEqual:*(a1 + 32)];

    if (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 32) initialWorldMap];
      v10 = v9 != 0;

      if (!v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = 0;
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    if (!v10 && (v6 & 1) != 0 && [*(a1 + 40) relocalizing])
    {
      v6 &= ~1uLL;
      [*(*(a1 + 40) + 8) clearMap];
    }

LABEL_14:
    if ([*(*(a1 + 40) + 344) finishedReplaying])
    {
      v11 = *(*(a1 + 40) + 344);
      v12 = [*(a1 + 32) replaySensor];

      v13 = v6 | 3;
      if (v11 != v12)
      {
        v6 |= 3uLL;
      }
    }

    else
    {
      v13 = v6 | 3;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v13;
      }
    }

    v14 = _ARLogSession_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = ARSessionRunOptionsToString(v6);
      *buf = 138544130;
      v40 = v16;
      v41 = 2048;
      v42 = v17;
      v43 = 2112;
      v44 = v18;
      v45 = 2112;
      v46 = v19;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: running with configuration\nConfiguration: %@\nOptions: %@", buf, 0x2Au);
    }

    v20 = [*(a1 + 40) state];
    if ((v6 & 1) != 0 || v20 == 0)
    {
      v22 = 0;
    }

    else
    {
      v22 = v8;
    }

    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    if (v22)
    {
      [v23 _updateSessionStateWithConfiguration:v24 options:v6];
    }

    else
    {
      [v23 _updateSessionWithConfiguration:v24 options:v6];
    }

    if ([*(a1 + 40) state] == 2 && objc_msgSend(*(a1 + 40), "pausedSensors"))
    {
      v25 = _ARLogSession_0();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = *(a1 + 40);
        *buf = 138543618;
        v40 = v27;
        v41 = 2048;
        v42 = v28;
        v29 = "%{public}@ <%p>: deferring run due to paused sensors";
LABEL_39:
        _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
      }
    }

    else
    {
      [*(a1 + 40) setState:1];
      v25 = _ARLogSession_0();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v27 = NSStringFromClass(v30);
        v31 = *(a1 + 40);
        *buf = 138543618;
        v40 = v27;
        v41 = 2048;
        v42 = v31;
        v29 = "%{public}@ <%p>: running";
        goto LABEL_39;
      }
    }

    kdebug_trace();
    return;
  }

  v2 = [*(a1 + 32) replaySensor];
  if (v2 && (v3 = v2, v4 = +[ARKitUserDefaults BOOLForKey:](ARKitUserDefaults, "BOOLForKey:", @"com.apple.arkit.geotracking.disableLocationAuthorizationCheckForReplay"), v3, v4) || +[ARGeoTrackingConfiguration verifyLocationPermissions])
  {
    dispatch_semaphore_wait(*(*(a1 + 40) + 184), 0xFFFFFFFFFFFFFFFFLL);
    v5 = [*(*(a1 + 40) + 176) anchorsToAdd];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __42__ARSession_runWithConfiguration_options___block_invoke_43;
    v38[3] = &unk_1E817CBB8;
    v38[4] = *(a1 + 40);
    [v5 enumerateObjectsUsingBlock:v38];
    dispatch_semaphore_signal(*(*(a1 + 40) + 184));

    goto LABEL_6;
  }

  v32 = _ARLogSession_0();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = *(a1 + 40);
    *buf = 138543618;
    v40 = v34;
    v41 = 2048;
    v42 = v35;
    _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Location permissions not sufficient to run geo tracking.", buf, 0x16u);
  }

  v36 = *(a1 + 40);
  v37 = ARErrorWithCodeAndUserInfo(105, 0);
  [v36 _sessionDidFailWithError:v37];
}

void __42__ARSession_runWithConfiguration_options___block_invoke_43(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    if (([v5 isAltitudeAvailable] & 1) == 0)
    {
      [*(a1 + 32) _lookupAltitudeForAnchor:v5];
    }

    v4 = v6;
  }
}

- (void)pause
{
  v14 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_1C241C000, "Pausing session", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  v4 = _ARLogSession_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v11 = v6;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: begin pause", buf, 0x16u);
  }

  kdebug_trace();
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__ARSession_pause__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_async(stateQueue, block);
  os_activity_scope_leave(&state);
}

uint64_t __18__ARSession_pause__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state])
  {
    [*(a1 + 32) _pauseWaitingForOutstandingCallbacks:1];
    [*(a1 + 32) setState:0];
    v2 = _ARLogSession_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = *(a1 + 32);
      v10 = 138543618;
      v11 = v4;
      v12 = 2048;
      v13 = v5;
      v6 = "%{public}@ <%p>: paused";
LABEL_6:
      _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEFAULT, v6, &v10, 0x16u);
    }
  }

  else
  {
    v2 = _ARLogSession_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v4 = NSStringFromClass(v7);
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v4;
      v12 = 2048;
      v13 = v8;
      v6 = "%{public}@ <%p>: already paused";
      goto LABEL_6;
    }
  }

  return kdebug_trace();
}

- (void)addAnchor:(ARAnchor *)anchor
{
  v4 = anchor;
  identifier = [(ARAnchor *)v4 identifier];
  [identifier ar_integerValue];
  kdebug_trace();

  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__ARSession_addAnchor___block_invoke;
  v8[3] = &unk_1E817BEC8;
  v9 = v4;
  selfCopy = self;
  v7 = v4;
  dispatch_async(stateQueue, v8);
}

uint64_t __23__ARSession_addAnchor___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 32);
    if (([v2 isAltitudeAvailable] & 1) == 0)
    {
      [*(a1 + 40) _lookupAltitudeForAnchor:v2];
    }
  }

  dispatch_semaphore_wait(*(*(a1 + 40) + 136), 0xFFFFFFFFFFFFFFFFLL);
  [*(*(a1 + 40) + 128) timestamp];
  [*(a1 + 32) setLastUpdateTimestamp:?];
  if ([*(*(a1 + 40) + 128) referenceOriginTransformAvailable])
  {
    [*(*(a1 + 40) + 128) referenceOriginTransform];
    v22 = __invert_f4(v21);
    v13 = v22.columns[1];
    v14 = v22.columns[0];
    v11 = v22.columns[3];
    v12 = v22.columns[2];
    [*(a1 + 32) transform];
    v3 = 0;
    v15[0] = v4;
    v15[1] = v5;
    v15[2] = v6;
    v15[3] = v7;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    do
    {
      *(&v16 + v3 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v15[v3])), v13, *&v15[v3], 1), v12, v15[v3], 2), v11, v15[v3], 3);
      ++v3;
    }

    while (v3 != 4);
    [*(a1 + 32) setReferenceTransform:{*&v16, *&v17, *&v18, *&v19}];
  }

  dispatch_semaphore_signal(*(*(a1 + 40) + 136));
  dispatch_semaphore_wait(*(*(a1 + 40) + 184), 0xFFFFFFFFFFFFFFFFLL);
  [*(*(a1 + 40) + 176) addAnchor:*(a1 + 32)];
  dispatch_semaphore_signal(*(*(a1 + 40) + 184));
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 40) + 40);

  return [v9 recordAddedAnchor:v8];
}

- (void)removeAnchor:(ARAnchor *)anchor
{
  v4 = anchor;
  identifier = [(ARAnchor *)v4 identifier];
  [identifier ar_integerValue];
  kdebug_trace();

  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__ARSession_removeAnchor___block_invoke;
  v8[3] = &unk_1E817BEC8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(stateQueue, v8);
}

uint64_t __26__ARSession_removeAnchor___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 184), 0xFFFFFFFFFFFFFFFFLL);
  [*(*(a1 + 32) + 176) removeAnchor:*(a1 + 40)];
  dispatch_semaphore_signal(*(*(a1 + 32) + 184));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);

  return [v3 recordRemovedAnchor:v2];
}

- (void)setWorldOrigin:(simd_float4x4)relativeTransform
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__ARSession_setWorldOrigin___block_invoke;
  v4[3] = &unk_1E817CBE0;
  selfCopy = self;
  v5 = relativeTransform;
  dispatch_async(stateQueue, v4);
}

intptr_t __28__ARSession_setWorldOrigin___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(*(*(a1 + 96) + 184), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_wait(*(*(a1 + 96) + 136), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 96);
  v3 = *(v2 + 128);
  if (v3)
  {
    [v3 sessionOriginTransform];
    v28 = __invert_f4(v27);
    v20 = v28.columns[1];
    v21 = v28.columns[0];
    v18 = v28.columns[3];
    v19 = v28.columns[2];
    v2 = *(a1 + 96);
  }

  else
  {
    v20 = *(MEMORY[0x1E69E9B18] + 16);
    v21 = *MEMORY[0x1E69E9B18];
    v18 = *(MEMORY[0x1E69E9B18] + 48);
    v19 = *(MEMORY[0x1E69E9B18] + 32);
  }

  dispatch_semaphore_signal(*(v2 + 136));
  v4 = 0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v22[0] = *(a1 + 32);
  v22[1] = v5;
  v22[2] = v6;
  v22[3] = v7;
  memset(buf, 0, sizeof(buf));
  v24 = 0u;
  *v25 = 0u;
  do
  {
    *&buf[v4 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(v22[v4])), v20, *&v22[v4], 1), v19, v22[v4], 2), v18, v22[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  [*(*(a1 + 96) + 176) setSessionTransform:{*buf, *&buf[16], *&v24, v25[0]}];
  v8 = _ARLogSession_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 96);
    [*(v11 + 176) sessionTransform];
    v16 = ARMatrix4x4Description(0, v12, v13, v14, v15);
    *buf = 138543874;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    *&buf[24] = v16;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: world origin updated %@", buf, 0x20u);
  }

  return dispatch_semaphore_signal(*(*(a1 + 96) + 184));
}

+ (void)forceEnvironmentTexturingTechniqueToManualMode:(id)mode
{
  v13 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  if (modeCopy)
  {
    v5 = -[AREnvironmentTexturingTechnique initWithOptions:wantsHDREnvironmentTextures:]([AREnvironmentTexturingTechnique alloc], "initWithOptions:wantsHDREnvironmentTextures:", 1, [modeCopy wantsHDREnvironmentTextures]);
    if (([modeCopy isEqual:v5] & 1) == 0)
    {
      v6 = _ARLogSession_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138543618;
        v10 = v8;
        v11 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Forcing environment texturing technique to manual mode", &v9, 0x16u);
      }

      [modeCopy reconfigureFrom:v5];
    }
  }
}

- (void)forceEnvironmentTexturingToManualMode:(BOOL)mode
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__ARSession_forceEnvironmentTexturingToManualMode___block_invoke;
  v4[3] = &unk_1E817CC08;
  v4[4] = self;
  modeCopy = mode;
  dispatch_async(stateQueue, v4);
}

uint64_t __51__ARSession_forceEnvironmentTexturingToManualMode___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 32);
  if (v2 != *(result + 40))
  {
    if (*(result + 40))
    {
      v3 = result;
      result = [ARSession forceEnvironmentTexturingTechniqueToManualMode:*(v1 + 16)];
      LOBYTE(v2) = *(v3 + 40);
      v1 = *(v3 + 32);
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  *(v1 + 32) = v2;
  return result;
}

- (void)getCurrentWorldMapWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E817CCA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

void __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke(uint64_t a1)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = v2;
  if (v2 && ([v2 mutableOptions], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "slamConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"ObjectDetectionMapBuilding"), v5, v4, !v6))
  {
    v11 = [*(a1 + 32) currentFrame];
    kdebug_trace();
    v38 = v11;
    if (v11 && [v3 hasQualityKeyframe] && (objc_msgSend(v11, "gravityAlignedReferenceOriginTransform"), objc_msgSend(v3, "serializeWorldMapWithReferenceOrigin:"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v14 = [v3 serializeSurfaceData];
      [v13 setSurfaceData:v14];

      v15 = [v11 anchors];
      v16 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_68_0];
      v17 = [v15 filteredArrayUsingPredicate:v16];
      [v13 setAnchors:v17];

      v18 = *(*(a1 + 32) + 592);
      v19 = [v11 worldMappingStatus];
      v20 = [v13 rawFeaturePoints];
      [v18 recordSaveMap:v19 numberOfFeaturePoints:{objc_msgSend(v20, "count")}];

      [v13 trackingData];
    }

    else
    {
      v45[0] = *MEMORY[0x1E696A588];
      v21 = ARKitCoreBundle();
      v22 = [v21 localizedStringForKey:@"Not enough features have been recorded to create a world map yet." value:&stru_1F4208A80 table:@"Localizable"];
      v46[0] = v22;
      v45[1] = *MEMORY[0x1E696A598];
      v23 = ARKitCoreBundle();
      v24 = [v23 localizedStringForKey:@"Make sure that tracking has initialized and continue to scan the environment." value:&stru_1F4208A80 table:@"Localizable"];
      v46[1] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

      v37 = ARErrorWithCodeAndUserInfo(400, v25);

      v13 = 0;
      [0 trackingData];
    }
    v26 = ;
    [v26 length];
    v27 = [v13 surfaceData];
    [v27 length];
    v28 = [v13 rawFeaturePoints];
    [v28 count];
    v29 = [v13 anchors];
    [v29 count];
    kdebug_trace();

    v30 = *(*(a1 + 32) + 512);
    v31 = v30;
    if (!v30)
    {
      v31 = MEMORY[0x1E69E96A0];
      v32 = MEMORY[0x1E69E96A0];
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke_4;
    v39[3] = &unk_1E817CC78;
    v33 = *(a1 + 40);
    v40 = v13;
    v41 = v36;
    v42 = v33;
    v34 = v36;
    v35 = v13;
    dispatch_async(v31, v39);
    if (!v30)
    {
    }

    v10 = v38;
  }

  else
  {
    v7 = *(*(a1 + 32) + 512);
    v8 = v7;
    if (!v7)
    {
      v8 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E817CC30;
    v44 = *(a1 + 40);
    dispatch_async(v8, block);
    if (!v7)
    {
    }

    v10 = v44;
  }
}

void __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E696A588];
  v2 = ARKitCoreBundle();
  v3 = [v2 localizedStringForKey:@"Getting the current world map requires that world tracking is configured." value:&stru_1F4208A80 table:@"Localizable"];
  v10[0] = v3;
  v9[1] = *MEMORY[0x1E696A598];
  v4 = ARKitCoreBundle();
  v5 = [v4 localizedStringForKey:@"Make sure that an ARWorldTrackingConfiguration is being used." value:&stru_1F4208A80 table:@"Localizable"];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *(a1 + 32);
  v8 = ARErrorWithCodeAndUserInfo(303, v6);
  (*(v7 + 16))(v7, 0, v8);
}

uint64_t __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

- (id)adPipelineParameters
{
  v12[1] = *MEMORY[0x1E69E9840];
  technique = [(ARSession *)self technique];

  if (!technique || (-[ARSession technique](self, "technique"), v4 = objc_claimAutoreleasedReturnValue(), v12[0] = v4, [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1], v5 = objc_claimAutoreleasedReturnValue(), +[ARTechnique techniqueConformsToProtocol:inArray:](ARTechnique, "techniqueConformsToProtocol:inArray:", &unk_1F425FD78, v5), secondaryTechnique = objc_claimAutoreleasedReturnValue(), v5, v4, !secondaryTechnique))
  {
    secondaryTechnique = [(ARSession *)self secondaryTechnique];

    if (secondaryTechnique)
    {
      secondaryTechnique2 = [(ARSession *)self secondaryTechnique];
      v11 = secondaryTechnique2;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      secondaryTechnique = [ARTechnique techniqueConformsToProtocol:&unk_1F425FD78 inArray:v8];
    }
  }

  pipelineParameters = [secondaryTechnique pipelineParameters];

  return pipelineParameters;
}

- (void)createReferenceObjectWithTransform:(simd_float4x4)transform center:(simd_float3)center extent:(simd_float3)extent completionHandler:(void *)completionHandler
{
  v7 = completionHandler;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke;
  block[3] = &unk_1E817CCC8;
  selfCopy = self;
  v18 = v7;
  v14 = transform;
  v15 = center;
  v16 = extent;
  v9 = v7;
  dispatch_async(stateQueue, block);
}

void __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke(uint64_t a1)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 128) + 8);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableOptions];
    v5 = [v4 slamConfiguration];
    v6 = [v5 isEqualToString:@"ObjectDetectionMapBuilding"];

    if (v6)
    {
      v7 = [*(a1 + 128) currentFrame];
      kdebug_trace();
      if (v7)
      {
        [v7 gravityAlignedReferenceOriginTransform];
        v8 = [v3 serializeWorldMapWithReferenceOrigin:?];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 extractReferenceObjectWithTransform:0 center:*(a1 + 32) extent:*(a1 + 48) error:{*(a1 + 64), *(a1 + 80), *(a1 + 96), *(a1 + 112)}];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
LABEL_14:
            kdebug_trace();
            v21 = *(*(a1 + 128) + 512);
            v22 = v21;
            if (!v21)
            {
              v22 = MEMORY[0x1E69E96A0];
              v23 = MEMORY[0x1E69E96A0];
            }

            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke_3;
            v27[3] = &unk_1E817CC78;
            v24 = *(a1 + 136);
            v29 = v12;
            v30 = v24;
            v28 = v11;
            v25 = v12;
            v26 = v11;
            dispatch_async(v22, v27);
            if (!v21)
            {
            }

            goto LABEL_19;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      v33[0] = *MEMORY[0x1E696A588];
      v16 = ARKitCoreBundle();
      v17 = [v16 localizedStringForKey:@"Not enough features have been recorded to create a reference object at this position." value:&stru_1F4208A80 table:@"Localizable"];
      v34[0] = v17;
      v33[1] = *MEMORY[0x1E696A598];
      v18 = ARKitCoreBundle();
      v19 = [v18 localizedStringForKey:@"Make sure the bounds of the object are correct value:or scan the object further and try again." table:{&stru_1F4208A80, @"Localizable"}];
      v34[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

      v12 = ARErrorWithCodeAndUserInfo(400, v20);

      v11 = 0;
      goto LABEL_14;
    }
  }

  v13 = *(*(a1 + 128) + 512);
  v14 = v13;
  if (!v13)
  {
    v14 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke_2;
  block[3] = &unk_1E817CC30;
  v32 = *(a1 + 136);
  dispatch_async(v14, block);
  if (!v13)
  {
  }

  v7 = v32;
LABEL_19:
}

void __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke_2(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E696A588];
  v2 = ARKitCoreBundle();
  v3 = [v2 localizedStringForKey:@"Creating a reference object requires that object scanning is configured." value:&stru_1F4208A80 table:@"Localizable"];
  v10[0] = v3;
  v9[1] = *MEMORY[0x1E696A598];
  v4 = ARKitCoreBundle();
  v5 = [v4 localizedStringForKey:@"Make sure that an ARObjectScanningConfiguration is being used." value:&stru_1F4208A80 table:@"Localizable"];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *(a1 + 32);
  v8 = ARErrorWithCodeAndUserInfo(303, v6);
  (*(v7 + 16))(v7, 0, v8);
}

- (void)_pauseWaitingForOutstandingCallbacks:(BOOL)callbacks
{
  callbacksCopy = callbacks;
  dispatch_assert_queue_V2(self->_stateQueue);
  resultRequestScheduler = self->_resultRequestScheduler;
  self->_resultRequestScheduler = 0;

  secondaryResultRequestScheduler = self->_secondaryResultRequestScheduler;
  self->_secondaryResultRequestScheduler = 0;

  [(ARFrameUpdateTimer *)self->_frameUpdateTimer setActive:0];
  dispatch_semaphore_wait(self->_pendingHiResFrameCaptureSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_pendingHiResFrameCaptureCompletionBlock)
  {
    self->_isHiResFrameCaptureInProgress = 0;
    v7 = MEMORY[0x1C691B4C0]();
    pendingHiResFrameCaptureCompletionBlock = self->_pendingHiResFrameCaptureCompletionBlock;
    self->_pendingHiResFrameCaptureCompletionBlock = 0;

    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
    if (v7)
    {
      delegateQueue = [(ARSession *)self delegateQueue];
      v10 = delegateQueue;
      if (!delegateQueue)
      {
        v10 = MEMORY[0x1E69E96A0];
        v11 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__ARSession__pauseWaitingForOutstandingCallbacks___block_invoke;
      block[3] = &unk_1E817CC30;
      v7 = v7;
      v13 = v7;
      dispatch_async(v10, block);
      if (!delegateQueue)
      {
      }
    }
  }

  else
  {
    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
    v7 = 0;
  }

  [(ARSessionMetrics *)self->_metrics sessionStopped];
  [(ARSession *)self _stopAllSensorsWaitingForOutstandingCallbacks:callbacksCopy];
}

void __50__ARSession__pauseWaitingForOutstandingCallbacks___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = ARKitCoreBundle();
  v4 = [v3 localizedStringForKey:@"Could not complete high-resolution frame capturing because the session was paused." value:&stru_1F4208A80 table:@"Localizable"];
  v5 = [v2 stringWithFormat:v4];

  v9 = *MEMORY[0x1E696A588];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = *(a1 + 32);
  v8 = ARErrorWithCodeAndUserInfo(107, v6);
  (*(v7 + 16))(v7, 0, v8);
}

- (void)setState:(unint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    self->_state = state;
    kdebug_trace();
    if ([(ARSession *)self _shouldUpdateLocationSensorForFusion])
    {
      [(ARRemoteLocationSensor *)self->_locationSensor updateARSessionState:state];
    }

    _getObservers = [(ARSession *)self _getObservers];
    kdebug_trace();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = _getObservers;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 session:self didChangeState:{self->_state, v12}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    kdebug_trace();
    if (state != 1)
    {
      [(ARFrameUpdateTimer *)self->_frameUpdateTimer stop];
    }
  }
}

- (__n128)originTransform
{
  dispatch_semaphore_wait(*(self + 136), 0xFFFFFFFFFFFFFFFFLL);
  [*(self + 128) sessionOriginTransform];
  v4 = __invert_f4(v5);
  dispatch_semaphore_signal(*(self + 136));
  dispatch_semaphore_wait(*(self + 184), 0xFFFFFFFFFFFFFFFFLL);
  if ([*(self + 176) sessionTransformUpdated])
  {
    [*(self + 176) sessionTransform];
    v4 = v2;
  }

  dispatch_semaphore_signal(*(self + 184));
  return v4;
}

- (void)setOriginTransform:(__n128)transform
{
  v5 = *(self + 192);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__ARSession_setOriginTransform___block_invoke;
  v6[3] = &unk_1E817CBE0;
  selfCopy = self;
  v7 = a2;
  transformCopy = transform;
  v9 = a4;
  v10 = a5;
  dispatch_async(v5, v6);
}

intptr_t __32__ARSession_setOriginTransform___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 96) + 184), 0xFFFFFFFFFFFFFFFFLL);
  [*(*(a1 + 96) + 176) setSessionTransform:{*(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 80)}];
  v2 = *(*(a1 + 96) + 184);

  return dispatch_semaphore_signal(v2);
}

- (__n128)predictedDeviceTransformAtTimestamp:(uint64_t)timestamp
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = _os_activity_create(&dword_1C241C000, "Predicted device transform", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  kdebug_trace();
  technique = [timestamp technique];
  if (technique && ([timestamp configurationInternal], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "worldAlignment"), v6, v7 != 2))
  {
    v8 = objc_opt_new();
    configurationInternal = [timestamp configurationInternal];
    videoFormat = [configurationInternal videoFormat];
    [v8 setCameraPosition:{objc_msgSend(videoFormat, "captureDevicePosition")}];

    v11 = [technique predictedResultDataAtTimestamp:v8 context:a2];
    dispatch_semaphore_wait(*(timestamp + 136), 0xFFFFFFFFFFFFFFFFLL);
    [timestamp _cameraTransformForResultData:v11 previousFrame:*(timestamp + 128)];
    v25 = v13;
    v26 = v12;
    v23 = v15;
    v24 = v14;
    dispatch_semaphore_signal(*(timestamp + 136));
    v16 = ARDisplayCenterTransformForCaptureDevicePosition([v8 cameraPosition]);
    v29 = v17;
    v31 = v16;
    v27 = v19;
    v28 = v18;
    kdebug_trace();
    v41.columns[1] = v29;
    v41.columns[0] = v31;
    v41.columns[3] = v27;
    v41.columns[2] = v28;
    v42 = __invert_f4(v41);
    v20 = 0;
    v33 = v31;
    v34 = v29;
    v35 = v28;
    v36 = v27;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    do
    {
      *(&v37 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v33 + v20))), v25, *&v33.f32[v20 / 4], 1), v24, *(&v33 + v20), 2), v23, *(&v33 + v20), 3);
      v20 += 16;
    }

    while (v20 != 64);
    v21 = 0;
    v33 = v37;
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    do
    {
      *(&v37 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42.columns[0], COERCE_FLOAT(*(&v33 + v21))), v42.columns[1], *&v33.f32[v21 / 4], 1), v42.columns[2], *(&v33 + v21), 2), v42.columns[3], *(&v33 + v21), 3);
      v21 += 16;
    }

    while (v21 != 64);
    v30 = v37;
  }

  else
  {
    v30 = *MEMORY[0x1E69E9B18];
  }

  os_activity_scope_leave(&state);
  return v30;
}

- (void)_interruptSession
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(ARSession *)self state]== 1)
  {
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    v3 = _os_activity_create(&dword_1C241C000, "Session was interrupted", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &v8);

    v4 = _ARLogSession_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = ARSensorDataTypesToString([(ARSession *)self pausedSensors:v8.opaque[0]]);
      *buf = 138543874;
      v10 = v6;
      v11 = 2048;
      selfCopy = self;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: was interrupted: paused sensor type(s) %@", buf, 0x20u);
    }

    [(ARSession *)self _stopSensorsWithDataTypes:[(ARSession *)self runningSensors] keepingDataTypes:[(ARSession *)self pausedSensors]];
    [(ARSession *)self setState:2];
    [(ARBKSAccelerometer *)self->_bksAccelerometer setPassive:1];
    os_activity_scope_leave(&v8);
  }
}

- (void)_endInterruption
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(ARSession *)self state]== 2)
  {
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    v3 = _os_activity_create(&dword_1C241C000, "Session interruption ended", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &v8);

    v4 = _ARLogSession_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138543618;
      v10 = v6;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: interruption ended", buf, 0x16u);
    }

    v7 = [(ARSession *)self configurationInternal:v8.opaque[0]];
    [(ARSession *)self _updateSessionWithConfiguration:v7 options:0];

    [(ARSession *)self setState:1];
    [(ARBKSAccelerometer *)self->_bksAccelerometer setPassive:0];
    os_activity_scope_leave(&v8);
  }
}

- (void)_updatePowerPressureLevelWithToken:(int)token
{
  v22 = *MEMORY[0x1E69E9840];
  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    self->_peakPowerPressureLevel = 0;
    if (ARShouldUseLogTypeError_onceToken_21 != -1)
    {
      [ARSession runWithConfiguration:options:];
    }

    v4 = ARShouldUseLogTypeError_internalOSVersion_21;
    v5 = _ARLogSession_0();
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138543618;
        v17 = v8;
        v18 = 2048;
        selfCopy3 = self;
        v9 = "%{public}@ <%p>: could not read peak power";
        v10 = v6;
        v11 = OS_LOG_TYPE_ERROR;
LABEL_11:
        v13 = 22;
        goto LABEL_12;
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v8 = NSStringFromClass(v14);
      *buf = 138543618;
      v17 = v8;
      v18 = 2048;
      selfCopy3 = self;
      v9 = "Error: %{public}@ <%p>: could not read peak power";
      v10 = v6;
      v11 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }
  }

  else
  {
    self->_peakPowerPressureLevel = state64;
    v6 = _ARLogSession_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v8 = NSStringFromClass(v12);
      *buf = 138543874;
      v17 = v8;
      v18 = 2048;
      selfCopy3 = self;
      v20 = 2048;
      v21 = state64;
      v9 = "%{public}@ <%p>: peak power level: %llu";
      v10 = v6;
      v11 = OS_LOG_TYPE_INFO;
      v13 = 32;
LABEL_12:
      _os_log_impl(&dword_1C241C000, v10, v11, v9, buf, v13);
    }
  }
}

- (void)_updateThermalStateFromCurrentProcessInfo
{
  v14 = *MEMORY[0x1E69E9840];
  thermalState = [(ARThermalStateProvider *)self->_thermalStateProvider thermalState];
  if (self->_thermalState != thermalState)
  {
    self->_thermalState = thermalState;
    [(ARSessionMetrics *)self->_metrics sessionUpdateThermalState:thermalState];
    v4 = _ARLogSession_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      thermalState = self->_thermalState;
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      selfCopy = self;
      v12 = 2048;
      v13 = thermalState;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: thermal state: %li", &v8, 0x20u);
    }
  }
}

- (void)_updatePowerUsage
{
  v3 = ARPowerUsageForThermalState(self->_thermalState);
  v4 = ARPowerUsageForPowerPressureLevel(self->_peakPowerPressureLevel);
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  [(ARSession *)self _changePowerUsage:v5];
}

- (void)_changePowerUsage:(unint64_t)usage
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(ARSession *)self powerUsage]!= usage)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v5 = _os_activity_create(&dword_1C241C000, "Power usage changed", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    powerUsage = [(ARSession *)self powerUsage];
    [(ARSession *)self setPowerUsage:usage];
    if (usage)
    {
      v7 = _ARLogSession_0();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (powerUsage <= usage)
      {
        if (v8)
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          powerUsage2 = [(ARSession *)self powerUsage];
          *buf = 138543874;
          v31 = v15;
          v32 = 2048;
          selfCopy3 = self;
          v34 = 2048;
          v35 = powerUsage2;
          _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Increasing power utilization [%li]", buf, 0x20u);
        }
      }

      else if (v8)
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        powerUsage3 = [(ARSession *)self powerUsage];
        *buf = 138543874;
        v31 = v10;
        v32 = 2048;
        selfCopy3 = self;
        v34 = 2048;
        v35 = powerUsage3;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Decreasing power utilization [%li]", buf, 0x20u);
      }
    }

    else
    {
      v7 = _ARLogSession_0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543618;
        v31 = v13;
        v32 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Restoring normal power utilization", buf, 0x16u);
      }
    }

    technique = [(ARSession *)self technique];
    [technique setPowerUsage:usage];

    secondaryTechnique = [(ARSession *)self secondaryTechnique];
    [secondaryTechnique setPowerUsage:usage];

    kdebug_trace();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    availableSensors = [(ARSession *)self availableSensors];
    v20 = [availableSensors countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v20)
    {
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(availableSensors);
          }

          v23 = *(*(&v24 + 1) + 8 * v22);
          if (objc_opt_respondsToSelector())
          {
            [v23 setPowerUsage:usage];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [availableSensors countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v20);
    }

    kdebug_trace();
    os_activity_scope_leave(&state);
  }
}

- (id)_frameContextByConsumingPendingChanges
{
  dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  createdContextByConsumingPendingChanges = [(ARFrameContextHandler *)self->_frameContextHandler createdContextByConsumingPendingChanges];
  configurationInternal = [(ARSession *)self configurationInternal];
  [createdContextByConsumingPendingChanges setWorldAlignment:{objc_msgSend(configurationInternal, "worldAlignment")}];

  configurationInternal2 = [(ARSession *)self configurationInternal];
  [createdContextByConsumingPendingChanges setFrameDebugOptions:{objc_msgSend(configurationInternal2, "frameDebugOptions")}];

  worldTrackingTechnique = self->_worldTrackingTechnique;
  if (worldTrackingTechnique)
  {
    mutableOptions = [(ARWorldTrackingTechnique *)worldTrackingTechnique mutableOptions];
    initialWorldMap = [mutableOptions initialWorldMap];
    [createdContextByConsumingPendingChanges setWorldMap:initialWorldMap];
  }

  dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);

  return createdContextByConsumingPendingChanges;
}

- (int64_t)_preferredRenderSyncFrameRateForCaptureFrameRate:(int64_t)rate
{
  rateCopy = 48;
  if (rate != 24)
  {
    rateCopy = rate;
  }

  if (rate == 25)
  {
    rateCopy = 60;
  }

  if (rate == 10)
  {
    return 60;
  }

  else
  {
    return rateCopy;
  }
}

- (int64_t)_preferredRenderFrameRateForCaptureFrameRate:(int64_t)rate isNominalPower:(BOOL)power
{
  v4 = 60;
  rateCopy = 30;
  if (power)
  {
    rateCopy = 60;
  }

  if (rate != 30)
  {
    rateCopy = rate;
  }

  if (rate != 25)
  {
    v4 = rateCopy;
  }

  v6 = 10;
  if (power)
  {
    v6 = 60;
  }

  rateCopy2 = 48;
  if (rate != 24)
  {
    rateCopy2 = rate;
  }

  if (rate != 10)
  {
    v6 = rateCopy2;
  }

  if (rate <= 24)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

+ (BOOL)_supportsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  deviceModel = [configurationCopy deviceModel];
  if (deviceModel)
  {
  }

  else if (([objc_opt_class() isSupported] & 1) == 0)
  {
    v6 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([configurationCopy userFaceTrackingEnabled])
    {
      v5 = +[ARWorldTrackingConfiguration supportsUserFaceTracking];
LABEL_10:
      v6 = v5;
      goto LABEL_13;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [configurationCopy isWorldTrackingEnabled])
    {
      v5 = +[ARFaceTrackingConfiguration supportsWorldTracking];
      goto LABEL_10;
    }
  }

  v6 = 1;
LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = configurationCopy;
    v8 = v7;
    if (v6)
    {
      v6 = 1;
    }

    else if ([v7 supportEnablementOptions])
    {
      v6 = +[ARGeoTrackingConfiguration isSupportedWithOptions:](ARGeoTrackingConfiguration, "isSupportedWithOptions:", [v8 supportEnablementOptions]);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_trackingStateChangedFromLastVendedFrameToFrame:(id)frame
{
  lastVendedFrameSemaphore = self->_lastVendedFrameSemaphore;
  frameCopy = frame;
  dispatch_semaphore_wait(lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(lastVendedFrameSemaphore) = TrackingStateDifferent(self->_lastVendedFrame, frameCopy);

  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  return lastVendedFrameSemaphore;
}

- (BOOL)_geoTrackingPublicStatusChangedFromLastVendedFrameToFrame:(id)frame
{
  v37 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  dispatch_semaphore_wait(self->_lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v5 = self->_lastVendedFrame;
  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  geoTrackingStatus = [frameCopy geoTrackingStatus];

  if (geoTrackingStatus)
  {
    geoTrackingStatus2 = [(ARFrame *)v5 geoTrackingStatus];

    if (geoTrackingStatus2)
    {
      geoTrackingStatus3 = [frameCopy geoTrackingStatus];
      geoTrackingStatus4 = [(ARFrame *)v5 geoTrackingStatus];
      LODWORD(geoTrackingStatus) = [geoTrackingStatus3 isEqual:geoTrackingStatus4] ^ 1;

      geoTrackingStatus5 = [frameCopy geoTrackingStatus];
      geoTrackingStatus6 = [(ARFrame *)v5 geoTrackingStatus];
      v12 = [geoTrackingStatus5 isEqualPrivate:geoTrackingStatus6];

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(geoTrackingStatus) = 1;
    }

    v13 = _ARLogSession_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v24 = NSStringFromClass(v14);
      geoTrackingStatus7 = [frameCopy geoTrackingStatus];
      v21 = NSStringFromARGeoTrackingState([geoTrackingStatus7 state]);
      geoTrackingStatus8 = [frameCopy geoTrackingStatus];
      v15 = NSStringFromARGeoTrackingStateReason([geoTrackingStatus8 stateReason]);
      geoTrackingStatus9 = [frameCopy geoTrackingStatus];
      v17 = NSStringFromARGeoTrackingAccuracy([geoTrackingStatus9 accuracy]);
      geoTrackingStatus10 = [frameCopy geoTrackingStatus];
      v19 = NSStringFromARGeoTrackingInternalFailureReason([geoTrackingStatus10 failureReasons]);
      *buf = 138544642;
      v26 = v24;
      v27 = 2048;
      selfCopy = self;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v15;
      v33 = 2112;
      v34 = v17;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: GeoTrackingStatus changed: (%@), reason: (%@), accuracy: (%@), internal: (%@)", buf, 0x3Eu);
    }
  }

LABEL_9:

  return geoTrackingStatus;
}

- (void)timerDidVendFrame:(id)frame
{
  v78 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  v6 = [(ARSession *)self _trackingStateChangedFromLastVendedFrameToFrame:frameCopy];
  v7 = [(ARSession *)self _geoTrackingPublicStatusChangedFromLastVendedFrameToFrame:frameCopy];
  dispatch_semaphore_wait(self->_lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&self->_lastVendedFrame, frame);
  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  if (v6)
  {
    camera = [frameCopy camera];
    [(ARSession *)self _sessionCameraDidChangeTrackingState:camera];
  }

  if (v7)
  {
    geoTrackingStatus = [frameCopy geoTrackingStatus];
    [(ARSession *)self _sessionDidChangeGeoTrackingStatus:geoTrackingStatus];
  }

  anchorChangeSet = [frameCopy anchorChangeSet];
  if (anchorChangeSet)
  {
    [frameCopy setAnchorChangeSet:0];
    externalAnchors = [anchorChangeSet externalAnchors];
    v12 = [externalAnchors count];

    v53 = anchorChangeSet;
    v55 = frameCopy;
    if (v12)
    {
      externalAnchors2 = [anchorChangeSet externalAnchors];
      [(ARSession *)self _sessionDidUpdateExternalAnchors:externalAnchors2];

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      externalAnchors3 = [anchorChangeSet externalAnchors];
      v15 = [externalAnchors3 countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v66;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v66 != v17)
            {
              objc_enumerationMutation(externalAnchors3);
            }

            v19 = *(*(&v65 + 1) + 8 * i);
            v20 = _ARLogSession_0();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              v23 = [v19 description];
              *buf = 138543874;
              v72 = v22;
              v73 = 2048;
              selfCopy3 = self;
              v75 = 2112;
              v76 = v23;
              _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: External anchor updated: %@", buf, 0x20u);
            }
          }

          v16 = [externalAnchors3 countByEnumeratingWithState:&v65 objects:v77 count:16];
        }

        while (v16);
      }

      anchorChangeSet = v53;
      frameCopy = v55;
    }

    removedAnchors = [anchorChangeSet removedAnchors];
    v25 = [removedAnchors count];

    if (v25)
    {
      removedAnchors2 = [anchorChangeSet removedAnchors];
      [(ARSession *)self _sessionDidRemoveAnchors:removedAnchors2];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      removedAnchors3 = [anchorChangeSet removedAnchors];
      v28 = [removedAnchors3 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v62;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v62 != v30)
            {
              objc_enumerationMutation(removedAnchors3);
            }

            v32 = *(*(&v61 + 1) + 8 * j);
            v33 = _ARLogSession_0();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = [v32 description];
              *buf = 138543874;
              v72 = v35;
              v73 = 2048;
              selfCopy3 = self;
              v75 = 2112;
              v76 = v36;
              _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Anchor removed: %@", buf, 0x20u);
            }
          }

          v29 = [removedAnchors3 countByEnumeratingWithState:&v61 objects:v70 count:16];
        }

        while (v29);
      }

      anchorChangeSet = v54;
      frameCopy = v56;
    }

    addedAnchors = [anchorChangeSet addedAnchors];
    v38 = [addedAnchors count];

    if (v38)
    {
      addedAnchors2 = [anchorChangeSet addedAnchors];
      [(ARSession *)self _sessionDidAddAnchors:addedAnchors2];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      addedAnchors3 = [anchorChangeSet addedAnchors];
      v41 = [addedAnchors3 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v58;
        do
        {
          for (k = 0; k != v42; ++k)
          {
            if (*v58 != v43)
            {
              objc_enumerationMutation(addedAnchors3);
            }

            v45 = *(*(&v57 + 1) + 8 * k);
            v46 = _ARLogSession_0();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = objc_opt_class();
              v48 = NSStringFromClass(v47);
              v49 = [v45 description];
              *buf = 138543874;
              v72 = v48;
              v73 = 2048;
              selfCopy3 = self;
              v75 = 2112;
              v76 = v49;
              _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Anchor added: %@", buf, 0x20u);
            }
          }

          v42 = [addedAnchors3 countByEnumeratingWithState:&v57 objects:v69 count:16];
        }

        while (v42);
      }

      anchorChangeSet = v54;
      frameCopy = v56;
    }

    updatedAnchors = [anchorChangeSet updatedAnchors];
    v51 = [updatedAnchors count];

    if (v51)
    {
      updatedAnchors2 = [anchorChangeSet updatedAnchors];
      [(ARSession *)self _sessionDidUpdateAnchors:updatedAnchors2];
    }
  }

  [(ARSession *)self _sessionDidUpdateFrame:frameCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  dispatch_semaphore_wait(self->_lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [v6 appendFormat:@" currentFrame=%p", self->_lastVendedFrame];
  [(ARFrame *)self->_lastVendedFrame timestamp];
  [v6 appendFormat:@" timestamp=%f", v7];
  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  configurationInternal = [(ARSession *)self configurationInternal];
  [v6 appendFormat:@" configuration=%@", configurationInternal];

  [v6 appendString:@">"];

  return v6;
}

- (id)_fullDescription
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [(ARSession *)self description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  if (dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0))
  {
    v6 = @"Busy";
  }

  else
  {
    dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
    v6 = @"NotBusy";
  }

  [v5 appendFormat:@"nextFrameContextHandler: %@\n", v6];
  if (dispatch_semaphore_wait(self->_lastProcessedFrameSemaphore, 0))
  {
    v7 = @"Busy";
  }

  else
  {
    dispatch_semaphore_signal(self->_lastProcessedFrameSemaphore);
    v7 = @"NotBusy";
  }

  [v5 appendFormat:@"lastProcessedFrame: %@\n", v7];
  if (self->_relocalizationRequested)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 appendFormat:@"RelocalizationRequested: %@\n", v8];
  [v5 appendFormat:@"RelocalizationTimeoutDate: %@\n", self->_relocalizationTimeoutDate];
  technique = [(ARSession *)self technique];
  _fullDescription = [technique _fullDescription];
  [v5 appendFormat:@"Technique:\n%@\n", _fullDescription];

  secondaryTechnique = [(ARSession *)self secondaryTechnique];
  _fullDescription2 = [secondaryTechnique _fullDescription];
  [v5 appendFormat:@"Secondary Technique: \n%@\n", _fullDescription2];

  [v5 appendFormat:@"Sensors:\n"];
  if ([(NSArray *)self->_availableSensors count])
  {
    v13 = 0;
    do
    {
      v14 = v13 + 1;
      v15 = [(NSArray *)self->_availableSensors objectAtIndexedSubscript:?];
      v16 = [v15 description];
      v17 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
      [v5 appendFormat:@"\t%lu: %@\n", v14, v17];

      v18 = [(NSArray *)self->_availableSensors count];
      v13 = v14;
    }

    while (v14 < v18);
  }

  os_unfair_lock_lock_with_options();
  [v5 appendFormat:@"Alive Pixel Buffers: %ld\n", -[NSPointerArray count](self->_weakPixelBuffers, "count")];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self->_weakPixelBuffers;
  v20 = [(NSPointerArray *)v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = CFCopyDescription(*(*(&v26 + 1) + 8 * i));
        [v5 appendFormat:@"\t| - %@\n", v24];
      }

      v21 = [(NSPointerArray *)v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v21);
  }

  os_unfair_lock_unlock(&self->_weakPixelBuffersLock);

  return v5;
}

+ (id)_fullDescription
{
  v2 = +[ARSession _runningSessions];
  if ([v2 count] < 2)
  {
    firstObject = [v2 firstObject];
    _fullDescription = [firstObject _fullDescription];
  }

  else
  {
    _fullDescription = [v2 description];
  }

  return _fullDescription;
}

- (NSArray)raycast:(ARRaycastQuery *)query
{
  v4 = query;
  worldTrackingTechnique = self->_worldTrackingTechnique;
  if (worldTrackingTechnique)
  {
    if (self->_tracer)
    {
      [(ARQATracer *)self->_tracer traceRaycastQuery:v4];
      worldTrackingTechnique = self->_worldTrackingTechnique;
    }

    v6 = [(ARWorldTrackingTechnique *)worldTrackingTechnique raycast:v4];
    v7 = [(ARSession *)self annotateAnchorToRaycastResults:v6];

    tracer = self->_tracer;
    if (tracer)
    {
      [(ARQATracer *)tracer traceRaycastResults:v7];
    }

    [(ARSessionMetrics *)self->_metrics recordRaycast:v4 tracked:0];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (ARTrackedRaycast)trackedRaycast:(ARRaycastQuery *)query updateHandler:(void *)updateHandler
{
  metrics = self->_metrics;
  v7 = updateHandler;
  v8 = query;
  [(ARSessionMetrics *)metrics recordRaycast:v8 tracked:1];
  v9 = [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique trackedRaycast:v8 updateHandler:v7];

  return v9;
}

- (id)annotateAnchorToRaycastResults:(id)results
{
  v43 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  currentFrame = [(ARSession *)self currentFrame];
  if (currentFrame)
  {
    v28 = array;
    v27 = currentFrame;
    anchors = [currentFrame anchors];
    v8 = ARDictionaryFromAnchors(anchors);

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = resultsCopy;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          anchorIdentifier = [v14 anchorIdentifier];

          if (anchorIdentifier)
          {
            anchorIdentifier2 = [v14 anchorIdentifier];
            v17 = [v8 objectForKeyedSubscript:anchorIdentifier2];

            v18 = v17 != 0;
            if (v17)
            {
              [v14 setAnchor:v17];
              [v17 transform];
              v46 = __invert_f4(v45);
              v31 = v46.columns[1];
              v32 = v46.columns[0];
              v29 = v46.columns[3];
              v30 = v46.columns[2];
              [v14 worldTransform];
              v19 = 0;
              v37[0] = v20;
              v37[1] = v21;
              v37[2] = v22;
              v37[3] = v23;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              do
              {
                *(&v38 + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v37[v19])), v31, *&v37[v19], 1), v30, v37[v19], 2), v29, v37[v19], 3);
                ++v19;
              }

              while (v19 != 4);
              [v14 setLocalTransform:{*&v38, *&v39, *&v40, *&v41}];
            }
          }

          else
          {
            v18 = 0;
          }

          target = [v14 target];
          if (v18 || target == 2)
          {
            [v28 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v11);
    }

    array = v28;
    v25 = v28;

    currentFrame = v27;
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  return v25;
}

- (void)updateWithCollaborationData:(ARCollaborationData *)collaborationData
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = collaborationData;
  vioSessionID = [(ARCollaborationData *)v4 vioSessionID];
  if (vioSessionID == [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique vioSessionIdentifier])
  {
    if (ARShouldUseLogTypeError_onceToken_21 != -1)
    {
      [ARSession updateWithCollaborationData:];
    }

    v6 = ARShouldUseLogTypeError_internalOSVersion_21;
    v7 = _ARLogSession_0();
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        identifier = [(ARSession *)self identifier];
        uUIDString = [identifier UUIDString];
        v22 = 138543874;
        v23 = v10;
        v24 = 2048;
        selfCopy3 = self;
        v26 = 2112;
        v27 = uUIDString;
        v13 = "%{public}@ <%p>: Ignoring collaboration data originating from own session with ID: %@";
        v14 = v8;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v14, v15, v13, &v22, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v10 = NSStringFromClass(v21);
      identifier = [(ARSession *)self identifier];
      uUIDString = [identifier UUIDString];
      v22 = 138543874;
      v23 = v10;
      v24 = 2048;
      selfCopy3 = self;
      v26 = 2112;
      v27 = uUIDString;
      v13 = "Error: %{public}@ <%p>: Ignoring collaboration data originating from own session with ID: %@";
      v14 = v8;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v16 = _ARLogSession_0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromARCollaborationData(v4);
    v22 = 138543874;
    v23 = v18;
    v24 = 2048;
    selfCopy3 = self;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: updateWithCollaborationData: %@", &v22, 0x20u);
  }

  [(ARCollaborationData *)v4 timestamp];
  [(ARCollaborationData *)v4 vioDataType];
  vioData = [(ARCollaborationData *)v4 vioData];
  [vioData length];
  [(ARCollaborationData *)v4 vioSessionID];
  kdebug_trace();

  [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique pushCollaborationData:v4];
  [(ARCollaborationData *)v4 timestamp];
  [(ARCollaborationData *)v4 vioSessionID];
  kdebug_trace();
  [(ARRecordingTechniquePublic *)self->_recordingTechnique recordCollaborationData:v4 localSession:0];
LABEL_14:
}

- (id)_getGeoAnchorAltitude:(id)altitude
{
  altitudeCopy = altitude;
  os_unfair_lock_lock(&self->_geoAnchorToAltitudeLock);
  geoAnchorToAltitude = [(ARSession *)self geoAnchorToAltitude];
  v6 = [geoAnchorToAltitude objectForKey:altitudeCopy];

  os_unfair_lock_unlock(&self->_geoAnchorToAltitudeLock);

  return v6;
}

- (void)_setGeoAnchorAltitude:(id)altitude pair:(id)pair
{
  pairCopy = pair;
  altitudeCopy = altitude;
  os_unfair_lock_lock(&self->_geoAnchorToAltitudeLock);
  geoAnchorToAltitude = [(ARSession *)self geoAnchorToAltitude];
  [geoAnchorToAltitude setObject:pairCopy forKey:altitudeCopy];

  os_unfair_lock_unlock(&self->_geoAnchorToAltitudeLock);
}

- (void)_removeGeoAnchorAltitude:(id)altitude
{
  altitudeCopy = altitude;
  os_unfair_lock_lock(&self->_geoAnchorToAltitudeLock);
  geoAnchorToAltitude = [(ARSession *)self geoAnchorToAltitude];
  [geoAnchorToAltitude removeObjectForKey:altitudeCopy];

  os_unfair_lock_unlock(&self->_geoAnchorToAltitudeLock);
}

- (void)getGeoLocationForPoint:(simd_float3)position completionHandler:(void *)completionHandler
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = completionHandler;
  geoTrackingTechnique = [(ARSession *)self geoTrackingTechnique];
  v7 = geoTrackingTechnique;
  if (geoTrackingTechnique)
  {
    v37 = 0;
    [geoTrackingTechnique getLocationFromWorldPosition:&v37 error:*position.i64];
    v8 = v37;
    if (v8)
    {
      delegateQueue = self->_delegateQueue;
      v10 = delegateQueue;
      if (!delegateQueue)
      {
        v10 = MEMORY[0x1E69E96A0];
        v11 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke_2;
      block[3] = &unk_1E817CCF0;
      v34 = v5;
      v33 = v8;
      dispatch_async(v10, block);
      if (!delegateQueue)
      {
      }

      v12 = v34;
    }

    else
    {
      v25 = v36;
      v26 = v35;
      v19 = _ARLogSession_0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138545155;
        v41 = v21;
        v42 = 2048;
        selfCopy2 = self;
        v44 = 2049;
        v45 = position.f32[0];
        v46 = 2049;
        v47 = position.f32[1];
        v48 = 2049;
        v49 = position.f32[2];
        v50 = 2049;
        v51 = v26;
        v52 = 2049;
        v53 = *(&v26 + 1);
        v54 = 2049;
        v55 = v25;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Converted to geo location point: %{private}f, %{private}f, %{private}f -> %{private}f, %{private}f, %{private}f", buf, 0x52u);
      }

      v22 = self->_delegateQueue;
      v23 = v22;
      if (!v22)
      {
        v23 = MEMORY[0x1E69E96A0];
        v24 = MEMORY[0x1E69E96A0];
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke_237;
      v28[3] = &unk_1E817CD18;
      v31 = v5;
      v29 = v26;
      v30 = v25;
      dispatch_async(v23, v28);
      if (!v22)
      {
      }

      v12 = v31;
    }
  }

  else
  {
    v13 = _ARLogSession_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v41 = v15;
      v42 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: ARGeoTrackingConfiguration is not running. Cannot call getGeoLocationForPoint.", buf, 0x16u);
    }

    v16 = self->_delegateQueue;
    v17 = v16;
    if (!v16)
    {
      v17 = MEMORY[0x1E69E96A0];
      v18 = MEMORY[0x1E69E96A0];
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke;
    v38[3] = &unk_1E817CC30;
    v39 = v5;
    dispatch_async(v17, v38);
    if (!v16)
    {
    }

    v8 = v39;
  }
}

void __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E696A588];
  v2 = ARKitCoreBundle();
  v3 = [v2 localizedStringForKey:@"Unable to call method as ARGeoTrackingConfiguration is not running." value:&stru_1F4208A80 table:@"Localizable"];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = ARErrorWithCodeAndUserInfo(501, v4);

  (*(*(a1 + 32) + 16))(*MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8), 0.0);
}

uint64_t __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke_237(uint64_t a1)
{
  v2 = *(a1 + 64);
  v5 = CLLocationCoordinate2DMake(*(a1 + 32), *(a1 + 40));
  v4.n128_f64[0] = v5.longitude;
  v3.n128_f64[0] = v5.latitude;
  v6 = *(v2 + 16);
  v7.n128_u64[0] = *(a1 + 48);

  return v6(v2, 0, v3, v4, v7);
}

- (BOOL)querySceneReconstructionOccupancyWithPoints:(id)points callback:(id)callback
{
  callbackCopy = callback;
  v7 = callbackCopy;
  worldTrackingTechnique = self->_worldTrackingTechnique;
  if (worldTrackingTechnique)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__ARSession_querySceneReconstructionOccupancyWithPoints_callback___block_invoke;
    v11[3] = &unk_1E817CD40;
    v12 = callbackCopy;
    v9 = [(ARWorldTrackingTechnique *)worldTrackingTechnique querySceneReconstructionOccupancyWithPoints:points callback:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __66__ARSession_querySceneReconstructionOccupancyWithPoints_callback___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    Width = CV3DReconOccupancyQueryResultGetWidth();
    a2 = [MEMORY[0x1E695DEF0] dataWithBytes:CV3DReconOccupancyQueryResultGetRawPtr() length:Width];
  }

  v4 = a2;
  (*(*(a1 + 32) + 16))();
  CV3DReconOccupancyQueryResultRelease();
}

- (void)_addObserver:(id)observer
{
  observersSemaphore = self->_observersSemaphore;
  observerCopy = observer;
  dispatch_semaphore_wait(observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  v6 = self->_observersSemaphore;

  dispatch_semaphore_signal(v6);
}

- (void)_removeObserver:(id)observer
{
  observersSemaphore = self->_observersSemaphore;
  observerCopy = observer;
  dispatch_semaphore_wait(observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  v6 = self->_observersSemaphore;

  dispatch_semaphore_signal(v6);
}

- (id)_getObservers
{
  dispatch_semaphore_wait(self->_observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  dispatch_semaphore_signal(self->_observersSemaphore);

  return allObjects;
}

- (void)_setPrimaryTechnique:(id)technique secondaryTechnique:(id)secondaryTechnique stillImageRootTechnique:(id)rootTechnique
{
  v93 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  secondaryTechniqueCopy = secondaryTechnique;
  rootTechniqueCopy = rootTechnique;
  array = [MEMORY[0x1E695DF70] array];
  technique = [(ARSession *)self technique];
  secondaryTechnique = [(ARSession *)self secondaryTechnique];
  stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];
  useFrameUpdateTimer = [(ARSession *)self useFrameUpdateTimer];
  v74 = array;
  v75 = technique;
  if (technique != techniqueCopy)
  {
    v14 = _ARLogSession_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544130;
      v86 = v16;
      v87 = 2048;
      selfCopy9 = self;
      v89 = 2048;
      v90 = v75;
      v91 = 2048;
      v92 = techniqueCopy;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing session primary technique %p with %p", buf, 0x2Au);
    }

    [(ARRenderSyncScheduler *)v75 setDelegate:0];
    resultRequestScheduler = self->_resultRequestScheduler;
    if (resultRequestScheduler == 0 && !useFrameUpdateTimer)
    {
      v18 = [[ARRenderSyncScheduler alloc] initWithExpectedFramesPerSecond:60];
      v19 = self->_resultRequestScheduler;
      self->_resultRequestScheduler = v18;

      v20 = _ARLogSession_0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = self->_resultRequestScheduler;
        *buf = 138543874;
        v86 = v22;
        v87 = 2048;
        selfCopy9 = self;
        v89 = 2048;
        v90 = v23;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating primary renderSyncScheduler <%p>", buf, 0x20u);
      }

      resultRequestScheduler = self->_resultRequestScheduler;
    }

    if (resultRequestScheduler)
    {
      [(ARSession *)self setupResultRequestSyncScheduler:resultRequestScheduler forTechnique:techniqueCopy];
      v24 = _ARLogSession_0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        [(ARRenderSyncScheduler *)self->_resultRequestScheduler inputJitterBufferInterval];
        v28 = v27;
        [(ARRenderSyncScheduler *)self->_resultRequestScheduler vsyncOffset];
        *buf = 138544130;
        v86 = v26;
        v87 = 2048;
        selfCopy9 = self;
        v89 = 2048;
        v90 = v28;
        v91 = 2048;
        v92 = v29;
        _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Primary render sync scheduler jitter buffer interval: %f, vsync offset: %f", buf, 0x2Au);
      }
    }

    v30 = _ARLogSession_0();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      [(ARRenderSyncScheduler *)techniqueCopy bonusLatency];
      *buf = 138543874;
      v86 = v32;
      v87 = 2048;
      selfCopy9 = self;
      v89 = 2048;
      v90 = v33;
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Primary technique bonus latency %f", buf, 0x20u);
    }

    array = v74;
  }

  [array addObject:techniqueCopy];
  if (secondaryTechnique != secondaryTechniqueCopy)
  {
    v34 = _ARLogSession_0();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138544130;
      v86 = v36;
      v87 = 2048;
      selfCopy9 = self;
      v89 = 2048;
      v90 = secondaryTechnique;
      v91 = 2048;
      v92 = secondaryTechniqueCopy;
      _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing session secondary technique %p with %p", buf, 0x2Au);
    }

    [(ARRenderSyncScheduler *)secondaryTechnique setDelegate:0];
    secondaryResultRequestScheduler = self->_secondaryResultRequestScheduler;
    if (secondaryResultRequestScheduler == 0 && !useFrameUpdateTimer)
    {
      v38 = [[ARRenderSyncScheduler alloc] initWithExpectedFramesPerSecond:60];
      v39 = self->_secondaryResultRequestScheduler;
      self->_secondaryResultRequestScheduler = v38;

      v40 = _ARLogSession_0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = self->_secondaryResultRequestScheduler;
        *buf = 138543874;
        v86 = v42;
        v87 = 2048;
        selfCopy9 = self;
        v89 = 2048;
        v90 = v43;
        _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating secondary renderSyncScheduler <%p>", buf, 0x20u);
      }

      secondaryResultRequestScheduler = self->_secondaryResultRequestScheduler;
    }

    if (secondaryResultRequestScheduler)
    {
      [(ARSession *)self setupResultRequestSyncScheduler:secondaryResultRequestScheduler forTechnique:secondaryTechniqueCopy];
      v44 = _ARLogSession_0();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        [(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler inputJitterBufferInterval];
        v48 = v47;
        [(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler vsyncOffset];
        *buf = 138544130;
        v86 = v46;
        v87 = 2048;
        selfCopy9 = self;
        v89 = 2048;
        v90 = v48;
        v91 = 2048;
        v92 = v49;
        _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Secondary render sync scheduler jitter buffer interval: %f, vsync offset: %f", buf, 0x2Au);
      }
    }

    v50 = _ARLogSession_0();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      [(ARRenderSyncScheduler *)secondaryTechniqueCopy bonusLatency];
      *buf = 138543874;
      v86 = v52;
      v87 = 2048;
      selfCopy9 = self;
      v89 = 2048;
      v90 = v53;
      _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Secondary technique bonus latency %f", buf, 0x20u);
    }

    array = v74;
  }

  if (secondaryTechniqueCopy)
  {
    [array addObject:secondaryTechniqueCopy];
  }

  v54 = stillImageRootTechnique;
  if (stillImageRootTechnique != rootTechniqueCopy)
  {
    v55 = _ARLogSession_0();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      *buf = 138544130;
      v86 = v57;
      v87 = 2048;
      selfCopy9 = self;
      v89 = 2048;
      v90 = stillImageRootTechnique;
      v91 = 2048;
      v92 = rootTechniqueCopy;
      _os_log_impl(&dword_1C241C000, v55, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing highRes session technique %p with %p", buf, 0x2Au);
    }

    [(ARRenderSyncScheduler *)stillImageRootTechnique setDelegate:0];
  }

  if (rootTechniqueCopy)
  {
    [array addObject:rootTechniqueCopy];
  }

  [(ARSession *)self setupSessionForTechniques:array];
  [(ARSession *)self setTechnique:techniqueCopy];
  [(ARSession *)self setSecondaryTechnique:secondaryTechniqueCopy];
  [(ARSession *)self setStillImageRootTechnique:rootTechniqueCopy];
  [(ARSession *)self _logTechniqueGraphForDebugging];
  dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(ARFrameContextHandler *)self->_frameContextHandler clearInFlightContextsReapplyingChanges];
  dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
  if (ARDeviceSupportsJasper())
  {
    adPipelineParameters = [(ARSession *)self adPipelineParameters];
    aggregationParameters = [adPipelineParameters aggregationParameters];

    if (aggregationParameters)
    {
      [(ARDepthPointCloudCoalescer *)self->_depthPointCloudCoalescer setAggregationParameters:aggregationParameters];
    }
  }

  if (ARLinkedOnOrAfterAzulC())
  {
    v71 = rootTechniqueCopy;
    v72 = secondaryTechniqueCopy;
    v77 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    currentFrame = [(ARSession *)self currentFrame];
    anchors = [currentFrame anchors];

    obj = anchors;
    v62 = [anchors countByEnumeratingWithState:&v80 objects:v84 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v81;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v81 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v80 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v79[0] = MEMORY[0x1E69E9820];
            v79[1] = 3221225472;
            v79[2] = __77__ARSession__setPrimaryTechnique_secondaryTechnique_stillImageRootTechnique___block_invoke;
            v79[3] = &unk_1E817CD68;
            v79[4] = v66;
            v67 = [MEMORY[0x1E696AE18] predicateWithBlock:v79];
            technique2 = [(ARSession *)self technique];
            v69 = [technique2 techniqueMatchingPredicate:v67];

            if (!v69)
            {
              secondaryTechnique2 = [(ARSession *)self secondaryTechnique];
              v69 = [secondaryTechnique2 techniqueMatchingPredicate:v67];

              if (!v69)
              {
                [v77 addObject:v66];
              }
            }
          }
        }

        v63 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
      }

      while (v63);
    }

    if ([v77 count])
    {
      dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      [(ARFrameContextHandler *)self->_frameContextHandler stopTrackingAnchors:v77];
      dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
    }

    secondaryTechniqueCopy = v72;
    rootTechniqueCopy = v71;
    v54 = stillImageRootTechnique;
    array = v74;
  }
}

uint64_t __77__ARSession__setPrimaryTechnique_secondaryTechnique_stillImageRootTechnique___block_invoke()
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();

  return [v0 producesResultDataForAnchorOfClass:v1];
}

- (void)setupSessionForTechniques:(id)techniques
{
  v44 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [techniquesCopy countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(techniquesCopy);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        [v9 setDelegate:self];
        [v9 setPowerUsage:{-[ARSession powerUsage](self, "powerUsage")}];
      }

      v6 = [techniquesCopy countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v6);
  }

  v10 = 0x1E817A000uLL;
  v11 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniquesCopy];
  v12 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniquesCopy];
  v13 = v12;
  if (v11)
  {
    [v12 setMotionManager:self->_motionManger];
  }

  p_worldTrackingTechnique = &self->_worldTrackingTechnique;
  worldTrackingTechnique = self->_worldTrackingTechnique;
  if (worldTrackingTechnique != v11)
  {
    [(ARWorldTrackingTechnique *)worldTrackingTechnique invalidateAllRaycasts];
    [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique removeObserver:self];
  }

  objc_storeStrong(&self->_worldTrackingTechnique, v11);
  v16 = *p_worldTrackingTechnique;
  if (*p_worldTrackingTechnique)
  {
    [(ARWorldTrackingTechnique *)v16 setTrackedRaycastPostProcessor:self->_trackedRaycastPostProcessor];
    mutableOptions = [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique mutableOptions];
    slamConfiguration = [mutableOptions slamConfiguration];
    self->_vioFusionEnabled = [slamConfiguration isEqualToString:@"CoreLocationIntegration"];

    v16 = self->_worldTrackingTechnique;
  }

  [(ARWorldTrackingTechnique *)v16 addObserver:self];
  v19 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniquesCopy];
  [(ARSession *)self setGeoTrackingTechnique:v19];

  v20 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniquesCopy];
  self->_techniquesWantPredictedPoseForWideCam = v20 != 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = techniquesCopy;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v33 = v13;
    v24 = *v35;
    while (2)
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        resultDataClasses = [*(*(&v34 + 1) + 8 * j) resultDataClasses];
        v27 = [resultDataClasses containsObject:objc_opt_class()];

        if (v27)
        {
          v28 = 1;
          goto LABEL_24;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    v28 = 0;
LABEL_24:
    v10 = 0x1E817A000;
    v13 = v33;
  }

  else
  {
    v28 = 0;
  }

  self->_configuredForWorldTracking = v28;
  v29 = [*(v10 + 3096) techniqueOfClass:objc_opt_class() inArray:v21];
  environmentTexturingTechnique = self->_environmentTexturingTechnique;
  self->_environmentTexturingTechnique = v29;

  v31 = [*(v10 + 3096) techniqueOfClass:objc_opt_class() inArray:v21];
  recordingTechnique = self->_recordingTechnique;
  self->_recordingTechnique = v31;
}

- (void)setupResultRequestSyncScheduler:(id)scheduler forTechnique:(id)technique
{
  techniqueCopy = technique;
  schedulerCopy = scheduler;
  requiredSensorDataTypes = [techniqueCopy requiredSensorDataTypes];
  v8 = [techniqueCopy techniqueOfClass:objc_opt_class()];
  v9 = v8;
  if (v8)
  {
    mutableOptions = [v8 mutableOptions];
    imageSensorSettings = [mutableOptions imageSensorSettings];
    visionDataOutputEnabled = [imageSensorSettings visionDataOutputEnabled];

    mutableOptions2 = [v9 mutableOptions];
    imageSensorSettingsForUltraWide = [mutableOptions2 imageSensorSettingsForUltraWide];
    visionDataOutputEnabled2 = [imageSensorSettingsForUltraWide visionDataOutputEnabled];

    v16 = (visionDataOutputEnabled | visionDataOutputEnabled2) ^ 1;
    v17 = visionDataOutputEnabled2 ^ 1;
    if ((requiredSensorDataTypes & 0x10) == 0)
    {
LABEL_3:
      v18 = v16 | v17;
      v19 = 0.005;
      if ((v16 & 1) == 0)
      {
        v19 = 0.015;
      }

      if ((v18 & 1) == 0)
      {
        isUserFaceTracking = [(ARSession *)self isUserFaceTracking];
        v19 = 0.035;
        if (!isUserFaceTracking)
        {
          v19 = 0.015;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v17 = 1;
    v16 = 1;
    if ((requiredSensorDataTypes & 0x10) == 0)
    {
      goto LABEL_3;
    }
  }

  v21 = ARHasH10();
  v19 = 0.018;
  if (v21)
  {
    v19 = 0.01;
  }

LABEL_12:
  [schedulerCopy setInputJitterBufferInterval:v19];
  [schedulerCopy inputJitterBufferInterval];
  v23 = v22 * 0.75;
  [techniqueCopy setBonusLatency:v22 * 0.75];
  [techniqueCopy requiredTimeInterval];
  v25 = v24 - v23;
  if (v25 >= 0.0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0.0;
  }

  [schedulerCopy setVsyncOffset:-(ARDispatchAfterLeewayForTimeInterval(v26) + v26 + 0.003)];
}

- (void)_setInternalConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(ARSession *)self setConfigurationInternal:configurationCopy];
  v5 = [configurationCopy copy];

  [(ARSession *)self setConfigurationForPublicGetter:v5];
}

- (void)_updateSessionWithConfiguration:(id)configuration options:(unint64_t)options
{
  v137 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  techniques = [(__CFString *)configurationCopy techniques];
  secondaryTechniques = [(__CFString *)configurationCopy secondaryTechniques];
  customSensors = [(__CFString *)configurationCopy customSensors];

  if (customSensors)
  {
    replaySensor = [(__CFString *)configurationCopy replaySensor];
    if (replaySensor)
    {
      v11 = replaySensor;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v13 = [ARReplayConfiguration alloc];
        replaySensor2 = [(__CFString *)configurationCopy replaySensor];
        v15 = [(ARReplayConfiguration *)v13 initWithBaseConfiguration:configurationCopy replaySensor:replaySensor2];

        techniques2 = [(ARCustomTechniquesConfiguration *)v15 techniques];

        secondaryTechniques2 = [(ARReplayConfiguration *)v15 secondaryTechniques];

        secondaryTechniques = secondaryTechniques2;
        techniques = techniques2;
      }
    }
  }

  if (techniques)
  {
    if (self->_forceEnvironmentTexturingToManualMode)
    {
      v18 = objc_opt_new();
      [v18 addObjectsFromArray:techniques];
      [v18 addObjectsFromArray:secondaryTechniques];
      v19 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniques];
      [ARSession forceEnvironmentTexturingTechniqueToManualMode:v19];
    }

    if ([(__CFString *)configurationCopy isKindOfConfiguration:objc_opt_class()])
    {
      replaySensor3 = [(__CFString *)configurationCopy replaySensor];

      if (replaySensor3)
      {
        v21 = objc_opt_new();
        [(__CFString *)v21 configureForReplay];
        v22 = _ARLogSession_0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138543874;
          v132 = v24;
          v133 = 2048;
          selfCopy13 = self;
          v135 = 2048;
          v136 = v21;
          _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Creating location sensor for replay: %p", buf, 0x20u);
        }

        replaySensor4 = [(__CFString *)configurationCopy replaySensor];
        v130[0] = replaySensor4;
        v130[1] = v21;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];

        [(__CFString *)configurationCopy setCustomSensors:v26];
      }
    }

    [(ARSession *)self _updateSensorsWithConfiguration:configurationCopy];
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    v124 = 0u;
    v114 = techniques;
    v27 = techniques;
    v28 = [v27 countByEnumeratingWithState:&v124 objects:v129 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v125;
      v31 = 1;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v125 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v31 |= [*(*(&v124 + 1) + 8 * i) requiredSensorDataTypes];
        }

        v29 = [v27 countByEnumeratingWithState:&v124 objects:v129 count:16];
      }

      while (v29);
    }

    else
    {
      v31 = 1;
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v115 = secondaryTechniques;
    v37 = secondaryTechniques;
    v38 = [v37 countByEnumeratingWithState:&v120 objects:v128 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v121;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v121 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v31 |= [*(*(&v120 + 1) + 8 * j) requiredSensorDataTypes];
        }

        v39 = [v37 countByEnumeratingWithState:&v120 objects:v128 count:16];
      }

      while (v39);
    }

    if ([(__CFString *)configurationCopy isKindOfConfiguration:objc_opt_class()])
    {
      replaySensor5 = [(__CFString *)configurationCopy replaySensor];

      if (replaySensor5)
      {
        v43 = _ARLogSession_0();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          *buf = 138543618;
          v132 = v45;
          v133 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Disabling location data type because of replay.", buf, 0x16u);
        }

        v31 &= ~0x40uLL;
      }
    }

    v46 = [(__CFString *)configurationCopy getAsKindOfConfiguration:objc_opt_class()];
    v36 = v46;
    if (v46 && [v46 disableLocationSensor])
    {
      v47 = _ARLogSession_0();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *buf = 138543618;
        v132 = v49;
        v133 = 2048;
        selfCopy13 = self;
        _os_log_impl(&dword_1C241C000, v47, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Disabling location sensor data type via SPI.", buf, 0x16u);
      }

      v31 &= ~0x40uLL;
    }

    runningSensors = [(ARSession *)self runningSensors];
    v51 = ([(ARSession *)self runningSensors]^ v31) & runningSensors;
    runningSensors2 = [(ARSession *)self runningSensors];
    [(ARSession *)self _stopSensorsWithDataTypes:v51 keepingDataTypes:v31];
    [(ARSession *)self _updateSessionStateWithConfiguration:configurationCopy options:options];
    [(ARSession *)self _setInternalConfiguration:configurationCopy];
    [(ARSession *)self _sessionWillRunWithConfiguration:configurationCopy];
    if ([(ARSession *)self state]== 2 && [(ARSession *)self pausedSensors])
    {
      techniques = v114;
      secondaryTechniques = v115;
    }

    else
    {
      v111 = runningSensors2;
      v112 = v51;
      v113 = v36;
      technique = [(ARSession *)self technique];

      v54 = _ARLogSession_0();
      v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
      if ((options & 1) != 0 || !technique)
      {
        if (v55)
        {
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          *buf = 138543618;
          v132 = v63;
          v133 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using all new techniques.", buf, 0x16u);
        }

        v61 = [[ARParentTechnique alloc] initWithTechniques:v27 delegate:self];
      }

      else
      {
        if (v55)
        {
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          *buf = 138543618;
          v132 = v57;
          v133 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Re-using existing techniques if possible.", buf, 0x16u);
        }

        v58 = [[ARParentTechnique alloc] initWithTechniques:v27 delegate:self];
        technique2 = [(ARSession *)self technique];
        techniques3 = [technique2 techniques];
        v61 = v58;
        [(ARParentTechnique *)v58 reuseTechniques:techniques3];
      }

      if ([v37 count])
      {
        secondaryTechnique = [(ARSession *)self secondaryTechnique];

        v65 = _ARLogSession_0();
        v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG);
        if ((options & 1) != 0 || !secondaryTechnique)
        {
          if (v66)
          {
            v72 = objc_opt_class();
            v73 = NSStringFromClass(v72);
            *buf = 138543618;
            v132 = v73;
            v133 = 2048;
            selfCopy13 = self;
            _os_log_impl(&dword_1C241C000, v65, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using all new secondary techniques.", buf, 0x16u);
          }

          v69 = [[ARParentTechnique alloc] initWithTechniques:v37 delegate:self];
        }

        else
        {
          if (v66)
          {
            v67 = objc_opt_class();
            v68 = NSStringFromClass(v67);
            *buf = 138543618;
            v132 = v68;
            v133 = 2048;
            selfCopy13 = self;
            _os_log_impl(&dword_1C241C000, v65, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Re-using existing techniques if possible.", buf, 0x16u);
          }

          v69 = [[ARParentTechnique alloc] initWithTechniques:v37 delegate:self];
          secondaryTechnique2 = [(ARSession *)self secondaryTechnique];
          techniques4 = [secondaryTechnique2 techniques];
          [(ARParentTechnique *)v69 reuseTechniques:techniques4];
        }
      }

      else
      {
        v69 = 0;
      }

      techniquesForStillImageGraph = [(__CFString *)configurationCopy techniquesForStillImageGraph];
      v110 = techniquesForStillImageGraph;
      if ([techniquesForStillImageGraph count])
      {
        stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];

        v76 = _ARLogSession_0();
        v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
        if ((options & 1) != 0 || !stillImageRootTechnique)
        {
          if (v77)
          {
            v83 = objc_opt_class();
            v84 = NSStringFromClass(v83);
            *buf = 138543618;
            v132 = v84;
            v133 = 2048;
            selfCopy13 = self;
            _os_log_impl(&dword_1C241C000, v76, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using all new high-res techniques.", buf, 0x16u);
          }

          v80 = [[ARParentTechnique alloc] initWithTechniques:techniquesForStillImageGraph delegate:self];
        }

        else
        {
          if (v77)
          {
            v78 = objc_opt_class();
            v79 = NSStringFromClass(v78);
            *buf = 138543618;
            v132 = v79;
            v133 = 2048;
            selfCopy13 = self;
            _os_log_impl(&dword_1C241C000, v76, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Re-using existing still image techniques if possible.", buf, 0x16u);
          }

          v80 = [[ARParentTechnique alloc] initWithTechniques:techniquesForStillImageGraph delegate:self];
          stillImageRootTechnique2 = [(ARSession *)self stillImageRootTechnique];
          techniques5 = [stillImageRootTechnique2 techniques];
          [(ARParentTechnique *)v80 reuseTechniques:techniques5];
        }
      }

      else
      {
        v80 = 0;
      }

      [(ARSession *)self _setPrimaryTechnique:v61 secondaryTechnique:v69 stillImageRootTechnique:v80, v80];
      configurationInternal = [(ARSession *)self configurationInternal];
      parentImageSensorSettings = [configurationInternal parentImageSensorSettings];
      settings = [parentImageSensorSettings settings];
      firstObject = [settings firstObject];
      videoFormat = [firstObject videoFormat];
      primaryVideoFormat = self->_primaryVideoFormat;
      self->_primaryVideoFormat = videoFormat;

      replaySensor6 = [(__CFString *)configurationCopy replaySensor];
      replayMode = [replaySensor6 replayMode];
      prepareTechniquesQueue = self->_prepareTechniquesQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__ARSession__updateSessionWithConfiguration_options___block_invoke;
      block[3] = &unk_1E817CD90;
      v94 = v61;
      v117 = v94;
      v119 = replayMode != 0;
      v95 = v69;
      v118 = v95;
      dispatch_async(prepareTechniquesQueue, block);
      if (replaySensor6)
      {
        dispatch_sync(self->_prepareTechniquesQueue, &__block_literal_global_253);
      }

      [(ARRenderSyncScheduler *)self->_resultRequestScheduler setExcessiveCallbackOptions:replaySensor6 != 0];
      [(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler setExcessiveCallbackOptions:replaySensor6 != 0];
      if (([(__CFString *)configurationCopy disableRenderSyncScheduling]& 1) != 0 || [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.disableRenderSyncScheduling"]|| replayMode || [(ARSession *)self useFrameUpdateTimer])
      {
        [(ARRenderSyncScheduler *)self->_resultRequestScheduler setSchedulingActive:0];
        [(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler setSchedulingActive:0];
        v96 = _ARLogSession_0();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          v97 = objc_opt_class();
          v98 = NSStringFromClass(v97);
          *buf = 138543618;
          v132 = v98;
          v133 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v96, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Disabling scheduling for ResultRequestSchedulers", buf, 0x16u);
        }

        useFrameUpdateTimer = [(ARSession *)self useFrameUpdateTimer];
        if (replayMode)
        {
          v100 = 0;
        }

        else
        {
          v100 = useFrameUpdateTimer;
        }
      }

      else
      {
        [(ARRenderSyncScheduler *)self->_resultRequestScheduler setSchedulingActive:1];
        [(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler setSchedulingActive:1];
        v106 = _ARLogSession_0();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
        {
          v107 = objc_opt_class();
          v108 = NSStringFromClass(v107);
          *buf = 138543618;
          v132 = v108;
          v133 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v106, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Enabling scheduling for ResultRequestSchedulers", buf, 0x16u);
        }

        v100 = 0;
      }

      [(ARFrameUpdateTimer *)self->_frameUpdateTimer setActive:v100];
      v101 = _ARLogSession_0();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v102 = objc_opt_class();
        v103 = NSStringFromClass(v102);
        isActive = [(ARFrameUpdateTimer *)self->_frameUpdateTimer isActive];
        v105 = @"Disabling";
        *buf = 138543874;
        v132 = v103;
        if (isActive)
        {
          v105 = @"Enabling";
        }

        v133 = 2048;
        selfCopy13 = self;
        v135 = 2112;
        v136 = v105;
        _os_log_impl(&dword_1C241C000, v101, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ frame update timer", buf, 0x20u);
      }

      [(ARSession *)self _startSensorsWithDataTypes:v31 & ~(v111 ^ v112)];
      [(ARSession *)self _configureSensorsForRecording];
      [(ARSession *)self _saveGraphFileInFileName:0];

      techniques = v114;
      secondaryTechniques = v115;
      v36 = v113;
    }
  }

  else
  {
    v33 = _ARLogSession_0();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138543874;
      v132 = v35;
      v133 = 2048;
      selfCopy13 = self;
      v135 = 2112;
      v136 = configurationCopy;
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to run the session, configuration is not supported on this device: %@", buf, 0x20u);
    }

    v36 = ARErrorWithCodeAndUserInfo(100, 0);
    [(ARSession *)self _sessionDidFailWithError:v36];
  }
}

uint64_t __53__ARSession__updateSessionWithConfiguration_options___block_invoke(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) prepare:*(a1 + 48)];
  [*(a1 + 40) prepare:*(a1 + 48)];

  return kdebug_trace();
}

- (void)_updateSessionStateWithConfiguration:(id)configuration options:(unint64_t)options
{
  optionsCopy = options;
  v27 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if ((optionsCopy & 2) != 0)
  {
    dispatch_semaphore_wait(self->_lastProcessedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    anchors = [(ARFrame *)self->_lastProcessedFrame anchors];
    v7 = [anchors countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(anchors);
          }

          [(ARFrameContextHandler *)self->_frameContextHandler removeAnchor:*(*(&v18 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [anchors countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v8);
    }

    dispatch_semaphore_signal(self->_lastProcessedFrameSemaphore);
    [(ARFrameContextHandler *)self->_frameContextHandler clearAddedAnchors];
    v11 = _ARLogSession_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v23 = v13;
      v24 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removing existing anchors", buf, 0x16u);
    }

    if ((optionsCopy & 4) == 0)
    {
LABEL_3:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_17:
      [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique resetSceneReconstruction];
      if ((optionsCopy & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique stopAllRaycasts];
  if ((optionsCopy & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((optionsCopy & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  [(ARFrameContextHandler *)self->_frameContextHandler resetSessionTransform];
  v14 = _ARLogSession_0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543618;
    v23 = v16;
    v24 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reset session transform", buf, 0x16u);
  }

LABEL_21:
  dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
  dispatch_semaphore_wait(self->_resultDataOfSecondaryFrameContextsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  resultDatasOfSecondaryFrameContexts = self->resultDatasOfSecondaryFrameContexts;
  self->resultDatasOfSecondaryFrameContexts = 0;

  dispatch_semaphore_signal(self->_resultDataOfSecondaryFrameContextsSemaphore);
}

- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  v382 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  obj = data;
  contextCopy = context;
  kdebug_trace();
  kdebug_trace();
  dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v335 = contextCopy;
  [(ARFrameContextHandler *)self->_frameContextHandler markFrameContextProcessed:contextCopy];
  selfCopy = self;
  dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
  v366 = 0u;
  v367 = 0u;
  v368 = 0u;
  v369 = 0u;
  v302 = techniqueCopy;
  splitTechniques = [techniqueCopy splitTechniques];
  v13 = [splitTechniques countByEnumeratingWithState:&v366 objects:v381 count:16];
  if (v13)
  {
    v14 = *v367;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v367 != v14)
        {
          objc_enumerationMutation(splitTechniques);
        }

        [*(*(&v366 + 1) + 8 * i) requestResultDataAtTimestamp:v335 context:timestamp];
      }

      v13 = [splitTechniques countByEnumeratingWithState:&v366 objects:v381 count:16];
    }

    while (v13);
  }

  if (!v335 || ([v335 imageData], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_23:
    if (selfCopy->resultDatasOfSecondaryFrameContexts)
    {
      dispatch_semaphore_wait(selfCopy->_resultDataOfSecondaryFrameContextsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      v28 = [obj arrayByAddingObjectsFromArray:selfCopy->resultDatasOfSecondaryFrameContexts];

      array = [MEMORY[0x1E695DF70] array];
      v360 = 0u;
      v361 = 0u;
      v358 = 0u;
      v359 = 0u;
      v30 = selfCopy->resultDatasOfSecondaryFrameContexts;
      v31 = [(NSArray *)v30 countByEnumeratingWithState:&v358 objects:v379 count:16];
      if (v31)
      {
        v32 = *v359;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v359 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v358 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }

            [array addObject:v34];
          }

          v31 = [(NSArray *)v30 countByEnumeratingWithState:&v358 objects:v379 count:16];
        }

        while (v31);
      }

      objc_storeStrong(&selfCopy->resultDatasOfSecondaryFrameContexts, array);
      dispatch_semaphore_signal(selfCopy->_resultDataOfSecondaryFrameContextsSemaphore);

      obj = v28;
    }

    v35 = [[ARFrame alloc] initWithTimestamp:v335 context:timestamp];
    orientationData = [v335 orientationData];
    deviceMotion = [orientationData deviceMotion];
    [deviceMotion heading];
    [(ARFrame *)v35 setRawHeading:?];

    locationData = [v335 locationData];
    location = [locationData location];
    [(ARFrame *)v35 setRawLocation:location];

    locationData2 = [v335 locationData];
    [locationData2 timestamp];
    [(ARFrame *)v35 setRawLocationTimestamp:?];

    locationData3 = [v335 locationData];
    [locationData3 undulation];
    [(ARFrame *)v35 setUndulation:?];

    if ((selfCopy->_runningSensors & 0x40) != 0)
    {
      v42 = _ARLogSession_0();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        [(ARFrame *)v35 rawHeading];
        *buf = 138543875;
        *&buf[4] = v44;
        *&buf[12] = 2048;
        *&buf[14] = selfCopy;
        *&buf[22] = 2049;
        *&buf[24] = v45;
        _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: currentFrame.rawHeading,%{private}f", buf, 0x20u);
      }

      v46 = _ARLogSession_0();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        [(ARFrame *)v35 rawLocationTimestamp];
        v50 = v49;
        rawLocation = [(ARFrame *)v35 rawLocation];
        [rawLocation coordinate];
        v53 = v52;
        rawLocation2 = [(ARFrame *)v35 rawLocation];
        [rawLocation2 coordinate];
        v56 = v55;
        rawLocation3 = [(ARFrame *)v35 rawLocation];
        [rawLocation3 altitudeWgs84];
        v59 = v58;
        rawLocation4 = [(ARFrame *)v35 rawLocation];
        isAltitudeWgs84Available = [rawLocation4 isAltitudeWgs84Available];
        *buf = 138544899;
        *&buf[4] = v48;
        *&buf[12] = 2048;
        *&buf[14] = selfCopy;
        *&buf[22] = 2049;
        *&buf[24] = v50;
        LOWORD(v377[0]) = 2049;
        *(v377 + 2) = v53;
        WORD5(v377[0]) = 2049;
        *(v377 + 12) = v56;
        WORD2(v377[1]) = 2049;
        *(&v377[1] + 6) = v59;
        HIWORD(v377[1]) = 1024;
        v378 = isAltitudeWgs84Available;
        _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: currentFrame.rawLocation,%{private}lf,%{private}lf,%{private}lf,%{private}lf,%d", buf, 0x44u);
      }
    }

    if ([(ARFrame *)v35 isHighResolution])
    {
      technique = [(ARSession *)selfCopy technique];
      v63 = [technique predictedResultDataAtTimestamp:v335 context:timestamp];

      v64 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class != %@", objc_opt_class()];
      v65 = [v63 filteredArrayUsingPredicate:v64];

      v66 = [obj arrayByAddingObjectsFromArray:v65];
    }

    else
    {
      v66 = obj;
    }

    v356 = 0u;
    v357 = 0u;
    v354 = 0u;
    v355 = 0u;
    obj = v66;
    v333 = [obj countByEnumeratingWithState:&v354 objects:v375 count:16];
    if (v333)
    {
      v316 = 0;
      worldAlignmentModifiers = 0;
      v318 = *v355;
      do
      {
        for (k = 0; k != v333; ++k)
        {
          if (*v355 != v318)
          {
            objc_enumerationMutation(obj);
          }

          v68 = *(*(&v354 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v68 cameraTransform];
            v313 = v70;
            v317 = v69;
            v307 = v72;
            v310 = v71;
            camera = [(ARFrame *)v35 camera];
            [camera setTransform:{v317, v313, v310, v307}];

            v316 = 1;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && selfCopy->_renderPersonBoundingBoxesIntoCapturedImage)
          {
            v352 = 0u;
            v353 = 0u;
            v350 = 0u;
            v351 = 0u;
            detectedObjects = [v68 detectedObjects];
            v75 = [detectedObjects countByEnumeratingWithState:&v350 objects:v374 count:16];
            if (v75)
            {
              v76 = *v351;
              do
              {
                for (m = 0; m != v75; ++m)
                {
                  if (*v351 != v76)
                  {
                    objc_enumerationMutation(detectedObjects);
                  }

                  [*(*(&v350 + 1) + 8 * m) boundingBox];
                  ARDrawNormalizedCGRectIntoYUVPixelBuffer([(ARFrame *)v35 capturedImage], 255, v78, v79, v80, v81);
                }

                v75 = [detectedObjects countByEnumeratingWithState:&v350 objects:v374 count:16];
              }

              while (v75);
            }
          }

          if (objc_opt_respondsToSelector())
          {
            worldTrackingState = [v68 worldTrackingState];
            state = [worldTrackingState state];
            camera2 = [(ARFrame *)v35 camera];
            [camera2 setTrackingState:state];

            reason = [worldTrackingState reason];
            camera3 = [(ARFrame *)v35 camera];
            [camera3 setTrackingStateReason:reason];

            [(ARFrame *)v35 setWorldTrackingState:worldTrackingState];
            [v335 setDidRelocalize:{objc_msgSend(worldTrackingState, "majorRelocalization")}];
            if ([v335 didRelocalize])
            {
              dispatch_semaphore_wait(selfCopy->_lastProcessedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
              [worldTrackingState majorRelocalizationCameraTransform];
              v311 = v88;
              v314 = v87;
              v308 = v89;
              v303 = v90;
              camera4 = [(ARFrame *)selfCopy->_lastProcessedFrame camera];
              [camera4 transform];
              v384 = __invert_f4(v383);
              v92 = 0;
              v370 = v384;
              memset(buf, 0, sizeof(buf));
              memset(v377, 0, sizeof(v377));
              do
              {
                *&buf[v92 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v314, COERCE_FLOAT(*&v370.columns[v92])), v311, *v370.columns[v92].f32, 1), v308, v370.columns[v92], 2), v303, v370.columns[v92], 3);
                ++v92;
              }

              while (v92 != 4);
              v312 = *&buf[16];
              v315 = *buf;
              v309 = v377[0];
              v304 = v377[1];
              [(ARFrame *)selfCopy->_lastProcessedFrame referenceOriginTransform];
              v93 = 0;
              v370.columns[0] = v94;
              v370.columns[1] = v95;
              v370.columns[2] = v96;
              v370.columns[3] = v97;
              memset(buf, 0, sizeof(buf));
              memset(v377, 0, sizeof(v377));
              do
              {
                *&buf[v93 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v315, COERCE_FLOAT(*&v370.columns[v93])), v312, *v370.columns[v93].f32, 1), v309, v370.columns[v93], 2), v304, v370.columns[v93], 3);
                ++v93;
              }

              while (v93 != 4);
              [v335 setRelocalizationDeltaTransform:{*buf, *&buf[16], *v377, *&v377[1]}];

              dispatch_semaphore_signal(selfCopy->_lastProcessedFrameSemaphore);
              v98 = _ARLogSession_0();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
              {
                v99 = objc_opt_class();
                v100 = NSStringFromClass(v99);
                [worldTrackingState lastMajorRelocalizationTimestamp];
                v102 = v101;
                [v335 relocalizationDeltaTransform];
                v107 = ARMatrix4x4Description(0, v103, v104, v105, v106);
                *buf = 138544130;
                *&buf[4] = v100;
                *&buf[12] = 2048;
                *&buf[14] = selfCopy;
                *&buf[22] = 2048;
                *&buf[24] = v102;
                LOWORD(v377[0]) = 2112;
                *(v377 + 2) = v107;
                _os_log_impl(&dword_1C241C000, v98, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Relocalization time stamp: %f, delta transform: %@", buf, 0x2Au);
              }
            }
          }

          if (([v335 frameDebugOptions] & 4) != 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(ARFrame *)v35 setWorldTrackingErrorData:v68];
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v108 = v68;
            -[ARFrame setWorldMappingStatus:](v35, "setWorldMappingStatus:", [v108 worldMappingStatus]);
            [v335 frameDebugOptions];
            lineCloud = [v108 lineCloud];
            [(ARFrame *)v35 setWorldTrackingLineCloud:lineCloud];

            currentlyActiveVideoFormat = [v108 currentlyActiveVideoFormat];
            [(ARFrame *)v35 setCurrentlyActiveVideoFormat:currentlyActiveVideoFormat];

            if ([(ARSession *)selfCopy _shouldUpdateLocationSensorForFusion])
            {
              locationSensor = selfCopy->_locationSensor;
              imageData = [v335 imageData];
              [(ARRemoteLocationSensor *)locationSensor updateEstimationFromVIOPose:v108 imageData:imageData];
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v113 = v68;
            location2 = [v113 location];
            [(ARFrame *)v35 setLocation:location2];

            [v113 heading];
            [(ARFrame *)v35 setHeading:?];
            v115 = _ARLogSession_0();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
            {
              v116 = objc_opt_class();
              v117 = NSStringFromClass(v116);
              location3 = [(ARFrame *)v35 location];
              [location3 coordinate];
              v120 = v119;
              location4 = [(ARFrame *)v35 location];
              [location4 coordinate];
              v123 = v122;
              location5 = [(ARFrame *)v35 location];
              [location5 altitude];
              v126 = v125;
              [(ARFrame *)v35 heading];
              *buf = 138544643;
              *&buf[4] = v117;
              *&buf[12] = 2048;
              *&buf[14] = selfCopy;
              *&buf[22] = 2049;
              *&buf[24] = v120;
              LOWORD(v377[0]) = 2049;
              *(v377 + 2) = v123;
              WORD5(v377[0]) = 2049;
              *(v377 + 12) = v126;
              WORD2(v377[1]) = 2049;
              *(&v377[1] + 6) = v127;
              _os_log_impl(&dword_1C241C000, v115, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: currentFrame.lat,lon,alt,heading: %{private}lf,%{private}lf,%{private}lf,%{private}lf", buf, 0x3Eu);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v128 = v68;
            [(ARFrame *)v35 setVlState:v128];
            trackingStatus = [v128 trackingStatus];
            [(ARFrame *)v35 setGeoTrackingStatus:trackingStatus];

            fusedReplayLocation = [v128 fusedReplayLocation];
            [(ARFrame *)v35 setRawLocation:fusedReplayLocation];

            [v128 fusedReplayLocationTimestamp];
            [(ARFrame *)v35 setRawLocationTimestamp:?];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v131 = v68;
            debugInfo = [v131 debugInfo];
            [(ARFrame *)v35 setVlDebugInfo:debugInfo];
          }

          if (objc_opt_respondsToSelector())
          {
            if (objc_opt_respondsToSelector())
            {
              worldAlignmentModifiers = [v68 worldAlignmentModifiers];
            }

            if ((worldAlignmentModifiers & 1) == 0)
            {
              [v68 worldAlignmentTransform];
              [(ARFrame *)v35 setWorldAlignmentTransform:?];
            }
          }

          if (objc_opt_respondsToSelector())
          {
            lightEstimate = [v68 lightEstimate];
            [(ARFrame *)v35 setLightEstimate:lightEstimate];

            v134 = ARLinkedOnOrAfterDawn();
            lightEstimate2 = [v68 lightEstimate];
            [lightEstimate2 ambientIntensity];
            if (v134)
            {
              v136 = v136 / 1000.0;
            }

            v137 = v136;
            v138 = ARMapLightIntensity(v137);
            camera5 = [(ARFrame *)v35 camera];
            *&v140 = v138;
            [camera5 setExposureOffset:v140];
          }

          if (objc_opt_respondsToSelector())
          {
            featurePoints = [v68 featurePoints];
            [(ARFrame *)v35 setReferenceFeaturePoints:featurePoints];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v142 = v68;
            if ([v142 source] == 1)
            {
              -[ARFrame setSegmentationBuffer:](v35, "setSegmentationBuffer:", [v142 segmentationBuffer]);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v143 = v68;
            -[ARFrame setDownSampledMattingPixelBuffer:](v35, "setDownSampledMattingPixelBuffer:", [v143 downSampledImageBuffer]);
            -[ARFrame setMattingScaleImagePixelBuffer:](v35, "setMattingScaleImagePixelBuffer:", [v143 mattingScaleImageBuffer]);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v144 = v68;
            -[ARFrame setEstimatedDepthData:](v35, "setEstimatedDepthData:", [v144 depthBuffer]);
          }

          if ((-[ARConfiguration frameSemantics](selfCopy->_configurationInternal, "frameSemantics") & 8) != 0 && ARDeviceSupportsJasper() && [v68 isMemberOfClass:objc_opt_class()])
          {
            v145 = v68;
            v146 = [objc_alloc(MEMORY[0x1E69864F8]) initWithDepthMap:objc_msgSend(v145 confidenceMap:{"singleFrameDepthBuffer"), objc_msgSend(v145, "confidenceMap")}];
            [v145 timestamp];
            [v146 setTimestamp:?];
            [(ARFrame *)v35 setSceneDepth:v146];
            -[ARFrame setDepthConfidenceData:](v35, "setDepthConfidenceData:", [v145 confidenceBuffer]);
          }

          if ((-[ARConfiguration frameSemantics](selfCopy->_configurationInternal, "frameSemantics") & 0x10) != 0 && ARDeviceSupportsJasper() && [v68 isMemberOfClass:objc_opt_class()])
          {
            v147 = v68;
            v148 = [objc_alloc(MEMORY[0x1E69864F8]) initWithDepthMap:objc_msgSend(v147 confidenceMap:{"depthBuffer"), objc_msgSend(v147, "confidenceMap")}];
            [v147 timestamp];
            [v148 setTimestamp:?];
            [(ARFrame *)v35 setSmoothedSceneDepth:v148];
            -[ARFrame setDepthConfidenceData:](v35, "setDepthConfidenceData:", [v147 confidenceBuffer]);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v149 = v68;
            v150 = objc_opt_new();
            trackedDetectionResult = [v149 trackedDetectionResult];

            if (trackedDetectionResult)
            {
              trackedDetectionResult2 = [v149 trackedDetectionResult];
              [v150 addObject:trackedDetectionResult2];
            }

            alignedDetectionResult = [v149 alignedDetectionResult];

            if (alignedDetectionResult)
            {
              alignedDetectionResult2 = [v149 alignedDetectionResult];
              [v150 addObject:alignedDetectionResult2];
            }

            v155 = [v150 ar_map:&__block_literal_global_290];
            [(ARFrame *)v35 setDetectedBodies:v155];
          }
        }

        v333 = [obj countByEnumeratingWithState:&v354 objects:v375 count:16];
      }

      while (v333);
    }

    else
    {
      v316 = 0;
      worldAlignmentModifiers = 0;
    }

    v334 = [obj ar_filter:&__block_literal_global_295];
    if ([v334 count])
    {
      [(ARSession *)selfCopy _sessionDidUpdateSpatialMappingPointClouds:v334];
    }

    configurationInternal = [(ARSession *)selfCopy configurationInternal];
    if ([configurationInternal isPersonMetadataEnabled] && -[ARFrame segmentationBuffer](v35, "segmentationBuffer"))
    {
      v157 = [(ARFrame *)v35 estimatedDepthData]== 0;

      if (v157)
      {
LABEL_139:
        if (ARInternalOSBuild() && ([v335 frameDebugOptions] & 2) != 0)
        {
          [(ARFrame *)v35 setResultDatas:obj];
        }

        camera6 = [(ARFrame *)v35 camera];
        if (![camera6 trackingState])
        {
          if (v316)
          {
          }

          else
          {
            v187 = [v335 worldAlignment] == 2;

            if (!v187)
            {
LABEL_144:
              if ([v335 frameDebugOptions])
              {
                v166 = objc_opt_new();
                imageData2 = [v335 imageData];
                captureDate = [imageData2 captureDate];
                [captureDate timeIntervalSinceNow];
                [v166 setVideoLatency:-v169];

                imageData3 = [v335 imageData];
                [imageData3 timestamp];
                [v166 addTimestamp:objc_opt_class() forDataOfClass:v171];

                v344 = 0u;
                v345 = 0u;
                v342 = 0u;
                v343 = 0u;
                v172 = obj;
                v173 = [v172 countByEnumeratingWithState:&v342 objects:v372 count:16];
                if (v173)
                {
                  v174 = *v343;
                  do
                  {
                    for (n = 0; n != v173; ++n)
                    {
                      if (*v343 != v174)
                      {
                        objc_enumerationMutation(v172);
                      }

                      v176 = *(*(&v342 + 1) + 8 * n);
                      if (objc_opt_respondsToSelector())
                      {
                        [v176 timestamp];
                        [v166 addTimestamp:objc_opt_class() forDataOfClass:v177];
                      }
                    }

                    v173 = [v172 countByEnumeratingWithState:&v342 objects:v372 count:16];
                  }

                  while (v173);
                }

                [(ARFrame *)v35 setTimingData:v166];
              }

              v178 = [(ARSession *)selfCopy powerUsage]== 0;
              imageData4 = [v335 imageData];
              captureFramesPerSecond = [imageData4 captureFramesPerSecond];

              [(ARFrame *)v35 setRenderFramesPerSecond:[(ARSession *)selfCopy _preferredRenderFrameRateForCaptureFrameRate:captureFramesPerSecond isNominalPower:v178]];
              [(ARFrame *)v35 setShouldRestrictFrameRate:v178 ^ 1];
              dispatch_semaphore_wait(selfCopy->_lastProcessedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
              camera7 = [(ARFrame *)v35 camera];
              trackingStateReason = [camera7 trackingStateReason];
              v183 = trackingStateReason == 4;
              if (trackingStateReason == 4)
              {
                camera8 = [(ARFrame *)v35 camera];
                v185 = [camera8 trackingState] == 1;

                if (!v185)
                {
                  v183 = 0;
LABEL_168:
                  v186 = selfCopy;
LABEL_169:
                  technique2 = [(ARSession *)v186 technique];
                  v332 = [technique2 techniqueOfClass:objc_opt_class()];

                  if (v332)
                  {
                    v191 = [v332 finishedLoadingImages] ^ 1;
                  }

                  else
                  {
                    v191 = 0;
                  }

                  technique3 = [(ARSession *)selfCopy technique];
                  v331 = [technique3 techniqueOfClass:objc_opt_class()];

                  if (v331)
                  {
                    v193 = [v331 finishedLoadingObjects] ^ 1;
                  }

                  else
                  {
                    v193 = 0;
                  }

                  if ((v191 | v193))
                  {
                    camera9 = [(ARFrame *)v35 camera];
                    v195 = [camera9 trackingState] == 0;

                    if (!v195)
                    {
                      camera10 = [(ARFrame *)v35 camera];
                      [camera10 setTrackingState:1];

                      camera11 = [(ARFrame *)v35 camera];
                      [camera11 setTrackingStateReason:1];
                    }
                  }

                  p_lastProcessedFrame = &selfCopy->_lastProcessedFrame;
                  v199 = TrackingStateDifferent(selfCopy->_lastProcessedFrame, v35);
                  geoTrackingTechnique = [(ARSession *)selfCopy geoTrackingTechnique];
                  if (geoTrackingTechnique)
                  {
                    geoTrackingStatus = [(ARFrame *)v35 geoTrackingStatus];
                    v202 = geoTrackingStatus == 0;

                    if (v202)
                    {
                      vlState = [*p_lastProcessedFrame vlState];

                      if (vlState)
                      {
                        vlState2 = [*p_lastProcessedFrame vlState];
                        [(ARFrame *)v35 setVlState:vlState2];

                        vlState3 = [*p_lastProcessedFrame vlState];
                        trackingStatus2 = [vlState3 trackingStatus];
                        [(ARFrame *)v35 setGeoTrackingStatus:trackingStatus2];

                        vlState4 = [*p_lastProcessedFrame vlState];
                        fusedReplayLocation2 = [vlState4 fusedReplayLocation];
                        [(ARFrame *)v35 setRawLocation:fusedReplayLocation2];

                        vlState5 = [*p_lastProcessedFrame vlState];
                        [vlState5 fusedReplayLocationTimestamp];
                        [(ARFrame *)v35 setRawLocationTimestamp:?];

                        v210 = _ARLogSession_0();
                        if (os_log_type_enabled(v210, OS_LOG_TYPE_INFO))
                        {
                          v211 = objc_opt_class();
                          v212 = NSStringFromClass(v211);
                          *buf = 138543618;
                          *&buf[4] = v212;
                          *&buf[12] = 2048;
                          *&buf[14] = selfCopy;
                          _os_log_impl(&dword_1C241C000, v210, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using vlState from previous frame.", buf, 0x16u);
                        }
                      }

                      else
                      {
                        v210 = +[ARGeoTrackingStatus initialStatus];
                        [(ARFrame *)v35 setGeoTrackingStatus:v210];
                      }
                    }
                  }

                  v213 = selfCopy;
                  if ([v335 didRelocalize])
                  {
                    os_unfair_lock_lock(&selfCopy->_worldMapSurfaceDataLock);
                    worldMap = [v335 worldMap];
                    surfaceData = [worldMap surfaceData];
                    if (surfaceData)
                    {
                      hasLoadedSurfaceData = [(ARWorldTrackingTechnique *)selfCopy->_worldTrackingTechnique hasLoadedSurfaceData];

                      v213 = selfCopy;
                      if (!hasLoadedSurfaceData)
                      {
                        [(ARFrame *)v35 timestamp];
                        kdebug_trace();
                        worldTrackingTechnique = selfCopy->_worldTrackingTechnique;
                        worldMap2 = [v335 worldMap];
                        surfaceData2 = [worldMap2 surfaceData];
                        [(ARWorldTrackingTechnique *)worldTrackingTechnique loadSurfaceData:surfaceData2];

                        dispatch_semaphore_wait(selfCopy->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
                        v338 = 0u;
                        v339 = 0u;
                        v340 = 0u;
                        v341 = 0u;
                        anchors = [(ARFrame *)v35 anchors];
                        v221 = [anchors countByEnumeratingWithState:&v338 objects:v371 count:16];
                        if (v221)
                        {
                          v222 = *v339;
                          do
                          {
                            for (ii = 0; ii != v221; ++ii)
                            {
                              if (*v339 != v222)
                              {
                                objc_enumerationMutation(anchors);
                              }

                              v224 = *(*(&v338 + 1) + 8 * ii);
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [(ARFrameContextHandler *)selfCopy->_frameContextHandler removeAnchor:v224];
                              }
                            }

                            v221 = [anchors countByEnumeratingWithState:&v338 objects:v371 count:16];
                          }

                          while (v221);
                        }

                        v213 = selfCopy;
                        dispatch_semaphore_signal(selfCopy->_frameContextHandlerSemaphore);
                        [(ARFrame *)v35 timestamp];
                        kdebug_trace();
                      }
                    }

                    else
                    {

                      v213 = selfCopy;
                    }

                    os_unfair_lock_unlock(&v213->_worldMapSurfaceDataLock);
                  }

                  [(ARSession *)v213 _updateOriginTransformForFrame:v35 previousFrame:v213->_lastProcessedFrame modifiers:worldAlignmentModifiers context:v335];
                  if ([(ARFrame *)v35 referenceOriginTransformAvailable])
                  {
                    if ([v335 worldAlignment] == 2)
                    {
                      camera12 = [(ARFrame *)v35 camera];
                      [camera12 setTransform:{*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)}];
                    }

                    else
                    {
                      [(ARFrame *)v35 referenceOriginTransform];
                      v325 = v227;
                      v328 = v226;
                      v319 = v229;
                      v322 = v228;
                      camera12 = [(ARFrame *)v35 camera];
                      [camera12 transform];
                      v230 = 0;
                      v370.columns[0] = v231;
                      v370.columns[1] = v232;
                      v370.columns[2] = v233;
                      v370.columns[3] = v234;
                      memset(buf, 0, sizeof(buf));
                      memset(v377, 0, sizeof(v377));
                      do
                      {
                        *&buf[v230 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, COERCE_FLOAT(*&v370.columns[v230])), v325, *v370.columns[v230].f32, 1), v322, v370.columns[v230], 2), v319, v370.columns[v230], 3);
                        ++v230;
                      }

                      while (v230 != 4);
                      v326 = *&buf[16];
                      v329 = *buf;
                      v320 = *&v377[1];
                      v323 = *v377;
                      camera13 = [(ARFrame *)v35 camera];
                      [camera13 setTransform:{v329, v326, v323, v320}];
                    }

                    if (selfCopy->_worldTrackingTechnique)
                    {
                      [(ARFrame *)v35 referenceOriginTransform];
                      [(ARWorldTrackingTechnique *)selfCopy->_worldTrackingTechnique setReferenceOriginTransform:?];
                    }
                  }

                  [(ARSession *)selfCopy _populateRawSceneUnderstandingDataForFrame:v35 fromResultData:obj];
                  v236 = selfCopy;
                  if (selfCopy->_configuredForWorldTracking)
                  {
                    is6DofFaceTracking = [(ARSession *)selfCopy is6DofFaceTracking];
                    v236 = selfCopy;
                    if (!is6DofFaceTracking)
                    {
                      [(ARSession *)selfCopy _updateFeaturePointsForFrame:v35 previousFrame:selfCopy->_lastProcessedFrame trackingStateChanged:v199 context:v335];
                      v236 = selfCopy;
                    }
                  }

                  if ([(ARSession *)v236 is6DofFaceTracking])
                  {
                    camera14 = [(ARFrame *)v35 camera];
                    [camera14 transform];
                    v243 = ARFrontWideCameraTransformFromBackWideAngleCameraTransform(v239, v240, v241, v242);
                    v327 = v244;
                    v330 = v243;
                    v321 = v246;
                    v324 = v245;
                    camera15 = [(ARFrame *)v35 camera];
                    [camera15 setTransform:{v330, v327, v324, v321}];
                  }

                  lightEstimate3 = [(ARFrame *)v35 lightEstimate];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    lightEstimate4 = [(ARFrame *)v35 lightEstimate];
                    camera16 = [(ARFrame *)v35 camera];
                    v252 = [lightEstimate4 lightEstimateByApplyingRotation:{ARMatrix3x3FromMatrix4x4(objc_msgSend(camera16, "transform"))}];
                    [(ARFrame *)v35 setLightEstimate:v252];
                  }

                  anchors2 = [(ARFrame *)selfCopy->_lastProcessedFrame anchors];
                  [anchors2 count];
                  kdebug_trace();

                  anchors3 = [(ARFrame *)selfCopy->_lastProcessedFrame anchors];
                  [(ARFrame *)v35 setAnchors:anchors3];

                  privateAnchors = [(ARFrame *)selfCopy->_lastProcessedFrame privateAnchors];
                  [(ARFrame *)v35 setPrivateAnchors:privateAnchors];

                  v256 = [(ARSession *)selfCopy _updateAnchorsForFrame:v35 resultDatas:obj context:v335];
                  anchors4 = [(ARFrame *)v35 anchors];
                  [anchors4 count];
                  kdebug_trace();

                  if (v199)
                  {
                    camera17 = [(ARFrame *)v35 camera];
                    if ([camera17 trackingState])
                    {
                      anchors4 = [(ARFrame *)v35 camera];
                      v259 = [anchors4 trackingStateReason] == 1;

                      if (!v259)
                      {
                        goto LABEL_225;
                      }
                    }

                    else
                    {
                    }

                    if (*p_lastProcessedFrame)
                    {
                      camera18 = [*p_lastProcessedFrame camera];
                      if (![camera18 trackingState])
                      {

                        goto LABEL_225;
                      }

                      anchors4 = [*p_lastProcessedFrame camera];
                      v261 = [anchors4 trackingStateReason] == 1;

                      if (v261)
                      {
                        goto LABEL_225;
                      }
                    }

                    [(ARFrame *)v35 timestamp];
                    selfCopy->_currentTrackingStartingTimestamp = v262;
                  }

LABEL_225:
                  if (![(ARFrame *)v35 isHighResolution])
                  {
                    objc_storeStrong(p_lastProcessedFrame, v35);
                    [(ARFrame *)v35 timestamp];
                    kdebug_trace();
                  }

                  relocalizing = [(ARSession *)selfCopy relocalizing];
                  [(ARSession *)selfCopy setRelocalizing:v183];
                  v264 = v183 ^ relocalizing;
                  if (v183 & (v183 ^ relocalizing))
                  {
                    v265 = _ARLogSession_0();
                    if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
                    {
                      v266 = objc_opt_class();
                      v267 = NSStringFromClass(v266);
                      *buf = 138543618;
                      *&buf[4] = v267;
                      *&buf[12] = 2048;
                      *&buf[14] = selfCopy;
                      _os_log_impl(&dword_1C241C000, v265, OS_LOG_TYPE_INFO, "%{public}@ <%p>: world tracking did start relocalizing", buf, 0x16u);
                    }

                    worldMap3 = [v335 worldMap];

                    if (worldMap3)
                    {
                      v269 = selfCopy;
                      selfCopy->_relocalizationRequested = 1;
                    }

                    else
                    {
                      v276 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:selfCopy->_defaultRelocalizationDuration];
                      relocalizationTimeoutDate = selfCopy->_relocalizationTimeoutDate;
                      selfCopy->_relocalizationTimeoutDate = v276;

                      [(ARSession *)selfCopy _sessionShouldAttemptRelocalization];
                      v269 = selfCopy;
                    }
                  }

                  else if (v183)
                  {
                    v269 = selfCopy;
                    if (!selfCopy->_relocalizationRequested)
                    {
                      [(NSDate *)selfCopy->_relocalizationTimeoutDate timeIntervalSinceNow];
                      v269 = selfCopy;
                      if (v270 < 0.0)
                      {
                        v271 = selfCopy->_relocalizationTimeoutDate;
                        selfCopy->_relocalizationTimeoutDate = 0;

                        v269 = selfCopy;
                        stateQueue = selfCopy->_stateQueue;
                        block[0] = MEMORY[0x1E69E9820];
                        block[1] = 3221225472;
                        block[2] = __61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke_311;
                        block[3] = &unk_1E817BFE8;
                        block[4] = selfCopy;
                        dispatch_async(stateQueue, block);
                      }
                    }
                  }

                  else
                  {
                    v269 = selfCopy;
                    if (v264)
                    {
                      v273 = _ARLogSession_0();
                      if (os_log_type_enabled(v273, OS_LOG_TYPE_DEBUG))
                      {
                        v274 = objc_opt_class();
                        v275 = NSStringFromClass(v274);
                        *buf = 138543618;
                        *&buf[4] = v275;
                        *&buf[12] = 2048;
                        *&buf[14] = selfCopy;
                        _os_log_impl(&dword_1C241C000, v273, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: world tracking ended relocalization", buf, 0x16u);
                      }

                      v269 = selfCopy;
                      selfCopy->_relocalizationRequested = 0;
                    }
                  }

                  [(ARSessionMetrics *)v269->_metrics sessionDidUpdateFrame:v35];
                  v278 = selfCopy->_worldTrackingTechnique;
                  dispatch_semaphore_signal(selfCopy->_lastProcessedFrameSemaphore);
                  if ([(ARFrame *)v35 isHighResolution])
                  {
                    [(ARSession *)selfCopy _sessionDidCaptureHighResolutionFrame:v35 error:0];
                  }

                  else
                  {
                    [(ARFrame *)v35 setScheduledTimestamp:CACurrentMediaTime()];
                    imageData5 = [v335 imageData];
                    anchors4 = [(ARSession *)selfCopy configurationInternal];
                    v280 = ARTimerFramesPerSecond(imageData5, anchors4);

                    v281 = selfCopy;
                    inFrameAnchorVisualizer = selfCopy->_inFrameAnchorVisualizer;
                    if (inFrameAnchorVisualizer)
                    {
                      [(ARInFrameAnchorVisualizer *)inFrameAnchorVisualizer drawOriginAndAnchorsOnFrame:v35];
                      v281 = selfCopy;
                    }

                    [(ARFrameUpdateTimer *)v281->_frameUpdateTimer scheduleFrame:v35 captureFramesPerSecond:v280];
                  }

                  kdebug_trace();
                  if (!v278)
                  {
                    goto LABEL_265;
                  }

                  removedAnchors = [v256 removedAnchors];
                  camera20 = [removedAnchors count];

                  if (camera20)
                  {
                    removedAnchors2 = [v256 removedAnchors];
                    anchors4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_314];
                    camera20 = [removedAnchors2 filteredArrayUsingPredicate:anchors4];

                    [(ARWorldTrackingTechnique *)v278 removeReferenceAnchors:camera20];
                  }

                  camera19 = [(ARFrame *)v35 camera];
                  trackingState = [camera19 trackingState];
                  if (trackingState == 1)
                  {
                    camera20 = [(ARFrame *)v35 camera];
                    if ([camera20 trackingStateReason]== 1)
                    {
                      goto LABEL_251;
                    }

                    anchors4 = [(ARFrame *)v35 camera];
                    if ([anchors4 trackingStateReason] == 4)
                    {

                      goto LABEL_264;
                    }
                  }

                  v288 = trackingState == 1;
                  camera21 = [(ARFrame *)v35 camera];
                  trackingState2 = [camera21 trackingState];

                  if (v288)
                  {
                    LOBYTE(v291) = trackingState2 == 0;
                  }

                  else
                  {
                    v291 = trackingState2 == 0;
                  }

                  if (v291)
                  {
                    goto LABEL_265;
                  }

                  referenceOriginTransformUpdated = [(ARFrame *)v35 referenceOriginTransformUpdated];
                  anchors5 = [(ARFrame *)v35 anchors];
                  v294 = [anchors5 count] != 0;

                  if ((v294 & (v264 ^ referenceOriginTransformUpdated)) == 0)
                  {
                    addedAnchors = [v256 addedAnchors];
                    v300 = [addedAnchors count];

                    if (!v300)
                    {
LABEL_265:

                      goto LABEL_266;
                    }

                    addedAnchors2 = [v256 addedAnchors];
                    camera19 = ARAnchorsForPoseGraphUpdates(addedAnchors2);

                    [(ARWorldTrackingTechnique *)v278 addReferenceAnchors:camera19];
LABEL_264:

                    goto LABEL_265;
                  }

                  anchors6 = [(ARFrame *)v35 anchors];
                  camera19 = ARAnchorsForPoseGraphUpdates(anchors6);

                  [(ARWorldTrackingTechnique *)v278 addReferenceAnchors:camera19];
                  camera20 = _ARLogSession_0();
                  if (os_log_type_enabled(camera20, OS_LOG_TYPE_DEBUG))
                  {
                    v296 = objc_opt_class();
                    v297 = NSStringFromClass(v296);
                    v298 = [camera19 count];
                    *buf = 138543874;
                    *&buf[4] = v297;
                    *&buf[12] = 2048;
                    *&buf[14] = selfCopy;
                    *&buf[22] = 2048;
                    *&buf[24] = v298;
                    _os_log_impl(&dword_1C241C000, camera20, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: all anchors re-added to pose graph updates: %tu", buf, 0x20u);
                  }

LABEL_251:

                  goto LABEL_264;
                }

                v186 = selfCopy;
                if (selfCopy->_relocalizationRequested)
                {
                  v183 = 1;
                  goto LABEL_169;
                }

                camera7 = [(ARFrame *)v35 camera];
                [camera7 setTrackingStateReason:1];
              }

              goto LABEL_168;
            }
          }

          configuredForWorldTracking = selfCopy->_configuredForWorldTracking;
          camera22 = [(ARFrame *)v35 camera];
          camera6 = camera22;
          if (configuredForWorldTracking)
          {
            [camera22 setTrackingState:1];

            camera6 = [(ARFrame *)v35 camera];
            [camera6 setTrackingStateReason:1];
          }

          else
          {
            [camera22 setTrackingState:2];
          }
        }

        goto LABEL_144;
      }

      configurationInternal = [obj ar_firstObjectPassingTest:&__block_literal_global_299];
      if (configurationInternal)
      {
        v158 = objc_opt_new();
        v159 = [configurationInternal transformToCVPixelBuffer:-[ARFrame segmentationBuffer](v35 depthBuffer:{"segmentationBuffer"), -[ARFrame estimatedDepthData](v35, "estimatedDepthData")}];
        v348 = 0u;
        v349 = 0u;
        v346 = 0u;
        v347 = 0u;
        v160 = v159;
        v161 = [v160 countByEnumeratingWithState:&v346 objects:v373 count:16];
        if (v161)
        {
          v162 = *v347;
          do
          {
            for (jj = 0; jj != v161; ++jj)
            {
              if (*v347 != v162)
              {
                objc_enumerationMutation(v160);
              }

              v164 = [[ARPersonMetadata alloc] initWithDepthBasedPersonDetectionResult:*(*(&v346 + 1) + 8 * jj)];
              [v158 addObject:v164];
            }

            v161 = [v160 countByEnumeratingWithState:&v346 objects:v373 count:16];
          }

          while (v161);
        }

        [(ARFrame *)v35 setDetectedPersonMetadata:v158];
      }
    }

    goto LABEL_139;
  }

  imageData6 = [v335 imageData];
  if (([imageData6 isSecondary] & 1) == 0)
  {

    goto LABEL_23;
  }

  imageData7 = [v335 imageData];
  isHighResolution = [imageData7 isHighResolution];

  if (isHighResolution)
  {
    goto LABEL_23;
  }

  dispatch_semaphore_wait(selfCopy->_resultDataOfSecondaryFrameContextsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&selfCopy->resultDatasOfSecondaryFrameContexts, data);
  dispatch_semaphore_signal(selfCopy->_resultDataOfSecondaryFrameContextsSemaphore);
  dispatch_semaphore_wait(selfCopy->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v362 = 0u;
  v363 = 0u;
  v364 = 0u;
  v365 = 0u;
  anchorsToRemove = [v335 anchorsToRemove];
  v21 = [anchorsToRemove countByEnumeratingWithState:&v362 objects:v380 count:16];
  if (v21)
  {
    v22 = *v363;
    do
    {
      for (kk = 0; kk != v21; ++kk)
      {
        if (*v363 != v22)
        {
          objc_enumerationMutation(anchorsToRemove);
        }

        [(ARFrameContextHandler *)selfCopy->_frameContextHandler removeAnchor:*(*(&v362 + 1) + 8 * kk)];
      }

      v21 = [anchorsToRemove countByEnumeratingWithState:&v362 objects:v380 count:16];
    }

    while (v21);
  }

  anchorsToStopTracking = [v335 anchorsToStopTracking];
  v25 = [anchorsToStopTracking count] == 0;

  if (!v25)
  {
    frameContextHandler = selfCopy->_frameContextHandler;
    anchorsToStopTracking2 = [v335 anchorsToStopTracking];
    [(ARFrameContextHandler *)frameContextHandler stopTrackingAnchors:anchorsToStopTracking2];
  }

  dispatch_semaphore_signal(selfCopy->_frameContextHandlerSemaphore);
LABEL_266:
}

ARBody2D *__61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ARBody2D alloc];
  v4 = [[ARSkeleton2D alloc] initWithDetectedSkeleton:v2];

  v5 = [(ARBody2D *)v3 initWithSkeleton2D:v4];

  return v5;
}

uint64_t __61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

uint64_t __61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke_311(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSession_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: default relocalization timed out", &v7, 0x16u);
  }

  return [*(*(a1 + 32) + 8) clearMap];
}

- (void)_populateRawSceneUnderstandingDataForFrame:(id)frame fromResultData:(id)data
{
  frameCopy = frame;
  v5 = [data ar_firstObjectPassingTest:&__block_literal_global_316];
  v6 = [v5 resultDataOfClass:objc_opt_class()];
  v7 = [v6 ar_firstObjectPassingTest:&__block_literal_global_319];

  if (v7)
  {
    v8 = objc_alloc_init(ARRawSceneUnderstandingData);
    if ([v7 segmentationBuffer])
    {
      -[ARRawSceneUnderstandingData setSemanticSegmentationBuffer:](v8, "setSemanticSegmentationBuffer:", [v7 segmentationBuffer]);
      -[ARRawSceneUnderstandingData setSemanticSegmentationBufferSampledForDepth:](v8, "setSemanticSegmentationBufferSampledForDepth:", [v7 semanticsSampledForDepth]);
      -[ARRawSceneUnderstandingData setSemanticSegmentationConfidenceBuffer:](v8, "setSemanticSegmentationConfidenceBuffer:", [v7 confidenceBuffer]);
      -[ARRawSceneUnderstandingData setSemanticSegmentationConfidenceBufferSampledForDepth:](v8, "setSemanticSegmentationConfidenceBufferSampledForDepth:", [v7 confidenceSampledForDepth]);
      -[ARRawSceneUnderstandingData setSemanticSegmentationUncertaintyBuffer:](v8, "setSemanticSegmentationUncertaintyBuffer:", [v7 uncertaintyBuffer]);
    }

    v9 = [v5 resultDataOfClass:objc_opt_class()];
    v10 = [v9 ar_firstObjectPassingTest:&__block_literal_global_323];

    if (v10)
    {
      -[ARRawSceneUnderstandingData setDepthBuffer:](v8, "setDepthBuffer:", [v10 singleFrameDepthBuffer]);
      -[ARRawSceneUnderstandingData setDepthConfidenceBuffer:](v8, "setDepthConfidenceBuffer:", [v10 singleFrameConfidenceBuffer]);
    }

    if (ARDeviceSupportsJasper())
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    -[ARRawSceneUnderstandingData setNormalsBuffer:](v8, "setNormalsBuffer:", [v11 normalsBuffer]);
    v12 = [v5 resultDataOfClass:objc_opt_class()];
    firstObject = [v12 firstObject];

    if (firstObject)
    {
      [firstObject timestamp];
      [(ARRawSceneUnderstandingData *)v8 setTimestamp:?];
      -[ARRawSceneUnderstandingData setCapturedImage:](v8, "setCapturedImage:", [firstObject pixelBuffer]);
    }

    v14 = [v5 resultDataOfClass:objc_opt_class()];
    firstObject2 = [v14 firstObject];

    if (firstObject && firstObject2)
    {
      v16 = [[ARCamera alloc] initFromImageData:firstObject];
      [frameCopy referenceOriginTransform];
      v35 = v18;
      v36 = v17;
      v33 = v20;
      v34 = v19;
      [firstObject2 cameraTransform];
      v21 = 0;
      v38[0] = v22;
      v38[1] = v23;
      v38[2] = v24;
      v38[3] = v25;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      do
      {
        *(&v39 + v21 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(v38[v21])), v35, *&v38[v21], 1), v34, v38[v21], 2), v33, v38[v21], 3);
        ++v21;
      }

      while (v21 != 4);
      [v16 setTransform:{*&v39, *&v40, *&v41, *&v42}];
      [(ARRawSceneUnderstandingData *)v8 setWideCamera:v16];
    }

    latestUltraWideImage = [firstObject latestUltraWideImage];

    if (latestUltraWideImage && firstObject2)
    {
      v27 = [ARCamera alloc];
      latestUltraWideImage2 = [firstObject latestUltraWideImage];
      v29 = [(ARCamera *)v27 initFromImageData:latestUltraWideImage2];

      [(ARRawSceneUnderstandingData *)v8 setUltraWideCamera:v29];
    }

    v30 = [v5 resultDataOfClass:objc_opt_class()];
    firstObject3 = [v30 firstObject];

    if (firstObject3)
    {
      latestResizedUltraWideImageData = [firstObject3 latestResizedUltraWideImageData];
      [(ARRawSceneUnderstandingData *)v8 setUltraWideDownscalingResultData:latestResizedUltraWideImageData];
    }

    [frameCopy setRawSceneUnderstandingData:v8];
  }
}

uint64_t __71__ARSession__populateRawSceneUnderstandingDataForFrame_fromResultData___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 stillRequiresPostProcessing] & 1) == 0)
  {
    v6 = 1;
    *a4 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __71__ARSession__populateRawSceneUnderstandingDataForFrame_fromResultData___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 source];
  if (v5 == 2)
  {
    *a4 = 1;
  }

  return v5 == 2;
}

BOOL __71__ARSession__populateRawSceneUnderstandingDataForFrame_fromResultData___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 source];
  if (v5 == 2)
  {
    *a4 = 1;
  }

  return v5 == 2;
}

- (__n128)_cameraTransformForResultData:(void *)data previousFrame:(void *)frame
{
  v52 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  frameCopy = frame;
  v39 = *(MEMORY[0x1E69E9B18] + 16);
  v41 = *MEMORY[0x1E69E9B18];
  v35 = *(MEMORY[0x1E69E9B18] + 48);
  v37 = *(MEMORY[0x1E69E9B18] + 32);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = [dataCopy countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(dataCopy);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 cameraTransform];
          v39 = v14;
          v41 = v13;
          v35 = v16;
          v37 = v15;
        }
      }

      v9 = [dataCopy countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v9);
  }

  if ([dataCopy count])
  {
    goto LABEL_23;
  }

  if (frameCopy)
  {
    camera = [frameCopy camera];

    if (camera)
    {
      camera2 = [frameCopy camera];
      [camera2 transform];
      v42 = v19;

      goto LABEL_27;
    }
  }

  if (ARShouldUseLogTypeError_onceToken_21 != -1)
  {
    [ARSession runWithConfiguration:options:];
  }

  v20 = ARShouldUseLogTypeError_internalOSVersion_21;
  v21 = _ARLogGeneral_9();
  v22 = v21;
  if (v20 == 1)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138543618;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v25 = "%{public}@ <%p>: prediction failure can lead to no resultData. Falling back to old camera transform";
      v26 = v22;
      v27 = OS_LOG_TYPE_ERROR;
LABEL_21:
      _os_log_impl(&dword_1C241C000, v26, v27, v25, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v28 = objc_opt_class();
    v24 = NSStringFromClass(v28);
    *buf = 138543618;
    *&buf[4] = v24;
    *&buf[12] = 2048;
    *&buf[14] = self;
    v25 = "Error: %{public}@ <%p>: prediction failure can lead to no resultData. Falling back to old camera transform";
    v26 = v22;
    v27 = OS_LOG_TYPE_INFO;
    goto LABEL_21;
  }

LABEL_23:
  if ([frameCopy referenceOriginTransformAvailable])
  {
    [frameCopy referenceOriginTransform];
    v33 = 0;
    v47[0] = v42;
    v47[1] = v40;
    v47[2] = v38;
    v47[3] = v36;
    memset(buf, 0, sizeof(buf));
    v50 = 0u;
    v51 = 0u;
    do
    {
      *&buf[v33 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(v47[v33])), v30, *&v47[v33], 1), v31, v47[v33], 2), v32, v47[v33], 3);
      ++v33;
    }

    while (v33 != 4);
    v42 = *buf;
  }

LABEL_27:

  return v42;
}

- (void)_updateOriginTransformForFrame:(id)frame previousFrame:(id)previousFrame modifiers:(unint64_t)modifiers context:(id)context
{
  modifiersCopy = modifiers;
  v117 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  previousFrameCopy = previousFrame;
  contextCopy = context;
  if (![frameCopy isHighResolution] || (objc_msgSend(previousFrameCopy, "isHighResolution") & 1) != 0)
  {
    if (([contextCopy sessionTransformUpdated] & 1) == 0)
    {
      if ((modifiersCopy & 8) != 0)
      {
        [contextCopy resumeSessionCameraPositionAndHeading];
      }

      else if ((modifiersCopy & 4) != 0)
      {
        [contextCopy resumeSessionCameraPosition];
      }
    }

    if ([contextCopy didRelocalize])
    {
      worldMap = [contextCopy worldMap];

      if (worldMap)
      {
        worldMap2 = [contextCopy worldMap];
        [worldMap2 referenceOriginTransform];
        v119 = __invert_f4(v118);
        [frameCopy setWorldAlignmentTransform:{*v119.columns[0].i64, *v119.columns[1].i64, *v119.columns[2].i64, *v119.columns[3].i64}];

        [contextCopy resetSessionTransform];
      }
    }

    if ([contextCopy sessionTransformReset])
    {
      sessionOriginTransformAvailable = [previousFrameCopy sessionOriginTransformAvailable];
      sessionOriginTransformAvailable2 = [previousFrameCopy sessionOriginTransformAvailable];
LABEL_46:
      worldAlignmentTransformAvailable = [frameCopy worldAlignmentTransformAvailable];
      if (modifiersCopy & 1) != 0 || (worldAlignmentTransformAvailable)
      {
        if ([(ARConfiguration *)self->_configurationInternal worldAlignment]!= ARWorldAlignmentCamera)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if ([previousFrameCopy worldAlignmentTransformAvailable])
        {
          [previousFrameCopy worldAlignmentTransform];
          [frameCopy setWorldAlignmentTransform:?];
        }

        if ([(ARConfiguration *)self->_configurationInternal worldAlignment]!= ARWorldAlignmentCamera)
        {
          if ((sessionOriginTransformAvailable & 1) == 0)
          {
            if ([previousFrameCopy referenceOriginTransformAvailable])
            {
              [previousFrameCopy referenceOriginTransform];
              [frameCopy setReferenceOriginTransform:?];
              v59 = 0;
              goto LABEL_75;
            }

            v59 = 0;
LABEL_64:
            if ([frameCopy sessionOriginTransformAvailable] && objc_msgSend(frameCopy, "worldAlignmentTransformAvailable"))
            {
              [frameCopy sessionOriginTransform];
              v110 = v73;
              v114 = v72;
              v102 = v75;
              v106 = v74;
              [frameCopy worldAlignmentTransform];
              v130 = __invert_f4(v129);
              v76 = 0;
              v115 = v130;
              memset(&buf, 0, sizeof(buf));
              do
              {
                buf.columns[v76] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, COERCE_FLOAT(*&v115.columns[v76])), v110, *v115.columns[v76].f32, 1), v106, v115.columns[v76], 2), v102, v115.columns[v76], 3);
                ++v76;
              }

              while (v76 != 4);
              v77.columns[2].i64[0] = buf.columns[2].i64[0];
              v77.columns[3].i64[0] = buf.columns[3].i64[0];
              v77.columns[0].i64[0] = buf.columns[0].i64[0];
              v77.columns[1].i64[0] = buf.columns[1].i64[0];
            }

            else if ([frameCopy sessionOriginTransformAvailable])
            {
              [frameCopy sessionOriginTransform];
            }

            else
            {
              if (![frameCopy worldAlignmentTransformAvailable])
              {
                goto LABEL_75;
              }

              [frameCopy worldAlignmentTransform];
              v77 = __invert_f4(v131);
            }

            [frameCopy setReferenceOriginTransform:{*v77.columns[0].i64, *v77.columns[1].i64, *v77.columns[2].i64, *v77.columns[3].i64}];
LABEL_75:
            [frameCopy setReferenceOriginTransformUpdated:v59];
            [frameCopy setReferenceOriginChanged:sessionOriginTransformAvailable2 & 1];
            if (sessionOriginTransformAvailable2)
            {
              v78 = _ARLogSession_0();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
              {
                v79 = objc_opt_class();
                v80 = NSStringFromClass(v79);
                [frameCopy referenceOriginTransform];
                v85 = ARMatrix4x4Description(0, v81, v82, v83, v84);
                buf.columns[0].i32[0] = 138543874;
                *(buf.columns[0].i64 + 4) = v80;
                buf.columns[0].i16[6] = 2048;
                *(&buf.columns[0].i64[1] + 6) = self;
                buf.columns[1].i16[3] = 2112;
                buf.columns[1].i64[1] = v85;
                _os_log_impl(&dword_1C241C000, v78, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reference origin changed %@", &buf, 0x20u);
              }
            }

            goto LABEL_79;
          }

LABEL_63:
          v59 = 1;
          goto LABEL_64;
        }
      }

      camera = [frameCopy camera];
      [camera transform];
      v124 = __invert_f4(v123);
      [frameCopy setReferenceOriginTransform:{*v124.columns[0].i64, *v124.columns[1].i64, *v124.columns[2].i64, *v124.columns[3].i64}];

      if ((sessionOriginTransformAvailable2 & 1) == 0)
      {
        [frameCopy setReferenceOriginTransformUpdated:1];
        [frameCopy setReferenceOriginChanged:0];
        goto LABEL_79;
      }

      [previousFrameCopy sessionOriginTransform];
      v108 = v62;
      v112 = v61;
      v100 = v64;
      v104 = v63;
      [frameCopy sessionOriginTransform];
      v126 = __invert_f4(v125);
      v65 = 0;
      v115 = v126;
      memset(&buf, 0, sizeof(buf));
      do
      {
        buf.columns[v65] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, COERCE_FLOAT(*&v115.columns[v65])), v108, *v115.columns[v65].f32, 1), v104, v115.columns[v65], 2), v100, v115.columns[v65], 3);
        ++v65;
      }

      while (v65 != 4);
      v95 = buf.columns[1];
      v98 = buf.columns[0];
      v89 = buf.columns[3];
      v92 = buf.columns[2];
      [frameCopy worldAlignmentTransform];
      v109 = v67;
      v113 = v66;
      v101 = v69;
      v105 = v68;
      [previousFrameCopy worldAlignmentTransform];
      v128 = __invert_f4(v127);
      v70 = 0;
      v115 = v128;
      memset(&buf, 0, sizeof(buf));
      do
      {
        buf.columns[v70] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*&v115.columns[v70])), v95, *v115.columns[v70].f32, 1), v92, v115.columns[v70], 2), v89, v115.columns[v70], 3);
        ++v70;
      }

      while (v70 != 4);
      v71 = 0;
      v115 = buf;
      memset(&buf, 0, sizeof(buf));
      do
      {
        buf.columns[v71] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*&v115.columns[v71])), v109, *v115.columns[v71].f32, 1), v105, v115.columns[v71], 2), v101, v115.columns[v71], 3);
        ++v71;
      }

      while (v71 != 4);
      [frameCopy setReferenceOriginDelta:{*buf.columns[0].i64, *buf.columns[1].i64, *buf.columns[2].i64, *buf.columns[3].i64}];
      v59 = 1;
      goto LABEL_75;
    }

    sessionTransformUpdated = [contextCopy sessionTransformUpdated];
    sessionOriginTransformAvailable2 = modifiersCopy >> 1;
    if (sessionTransformUpdated)
    {
      [contextCopy sessionTransform];
      v17 = __invert_f4(v120);
      if (!previousFrameCopy)
      {
        sessionOriginTransformAvailable = 1;
        goto LABEL_45;
      }

      *&v103 = v17.columns[1].i64[0];
      *&v107 = v17.columns[2].i64[0];
      *&v111 = v17.columns[0].i64[0];
    }

    else
    {
      if (!previousFrameCopy)
      {
        v107 = *(MEMORY[0x1E69E9B18] + 32);
        v111 = *MEMORY[0x1E69E9B18];
        v99 = *(MEMORY[0x1E69E9B18] + 48);
        v103 = *(MEMORY[0x1E69E9B18] + 16);
LABEL_44:
        sessionOriginTransformAvailable3 = [previousFrameCopy sessionOriginTransformAvailable];
        sessionOriginTransformAvailable = 0;
        v17.columns[3].i64[0] = v99;
        v17.columns[1].i64[0] = v103;
        v17.columns[2].i64[0] = v107;
        v17.columns[0].i64[0] = v111;
        if (!sessionOriginTransformAvailable3)
        {
          goto LABEL_46;
        }

LABEL_45:
        [frameCopy setSessionOriginTransform:{*v17.columns[0].i64, *v17.columns[1].i64, *v17.columns[2].i64, *v17.columns[3].i64}];
        goto LABEL_46;
      }

      [previousFrameCopy sessionOriginTransform];
      *&v107 = v17.columns[2].i64[0];
      *&v111 = v17.columns[0].i64[0];
      *&v103 = v17.columns[1].i64[0];
    }

    *&v99 = v17.columns[3].i64[0];
    if (([contextCopy sessionTransformShouldResumeCameraHeading] & 1) != 0 || objc_msgSend(contextCopy, "sessionTransformShouldResumeCameraPosition"))
    {
      camera2 = [previousFrameCopy camera];
      [camera2 transform];
      v90 = v21;
      v93 = v20;
      v86 = v22;
      v96 = v23;

      if ([previousFrameCopy worldAlignment] == 2)
      {
        [previousFrameCopy gravityAlignedReferenceOriginTransform];
        v94 = v25;
        v97 = v24;
        v87 = v27;
        v91 = v26;
        [previousFrameCopy referenceOriginTransform];
        v122 = __invert_f4(v121);
        v28 = 0;
        v115 = v122;
        memset(&buf, 0, sizeof(buf));
        do
        {
          buf.columns[v28] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v97, COERCE_FLOAT(*&v115.columns[v28])), v94, *v115.columns[v28].f32, 1), v91, v115.columns[v28], 2), v87, v115.columns[v28], 3);
          ++v28;
        }

        while (v28 != 4);
        v90 = buf.columns[1];
        v93 = buf.columns[0];
        v86 = buf.columns[2];
        v96 = buf.columns[3];
      }

      if ([contextCopy sessionTransformShouldResumeCameraHeading])
      {
        v29.n128_f64[0] = AREulerAnglesFromMatrix(v93, v90, v88);
        v88 = v29;
        v31 = __sincosf_stret(vmuls_lane_f32(0.5, v29.n128_u64[0], 1));
        cosval = v31.__cosval;
        _Q0 = vmulq_n_f32(xmmword_1C25C8BC0, v31.__sinval);
        _S2 = _Q0.i32[1];
        _S4 = _Q0.i32[2];
        __asm { FMLS            S3, S4, V0.S[2] }

        v40 = vmuls_lane_f32(v31.__cosval, _Q0, 2);
        v41 = vmuls_lane_f32(v31.__cosval, *_Q0.f32, 1);
        *&v42 = _S3 + (cosval * cosval);
        *(&v42 + 1) = (v40 + (_Q0.f32[0] * _Q0.f32[1])) + (v40 + (_Q0.f32[0] * _Q0.f32[1]));
        *&v111 = v42;
        v43 = -(v40 - (_Q0.f32[0] * _Q0.f32[1])) - (v40 - (_Q0.f32[0] * _Q0.f32[1]));
        __asm
        {
          FMLA            S5, S2, V0.S[1]
          FMLA            S6, S4, V0.S[1]
        }

        *&v46 = v43;
        *(&v46 + 1) = (_S5 + (cosval * cosval)) - (_Q0.f32[0] * _Q0.f32[0]);
        __asm
        {
          FMLA            S5, S4, V0.S[1]
          FMLA            S1, S4, V0.S[2]
          FMLS            S1, S2, V0.S[1]
        }

        *&v50 = (v41 + (_Q0.f32[2] * _Q0.f32[0])) + (v41 + (_Q0.f32[2] * _Q0.f32[0]));
        *(&v50 + 1) = _S5 + _S5;
        *&v103 = v46;
        *&v107 = v50;
        v51 = _ARLogSession_0();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v53;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = self;
          buf.columns[1].i16[3] = 2048;
          *&buf.columns[1].i64[1] = v88.n128_f32[1] * 180.0 / 3.14159265;
          _os_log_impl(&dword_1C241C000, v51, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Updated session heading (%0.2f°)", &buf, 0x20u);
        }

        *&v99 = 0;
      }

      if ([contextCopy sessionTransformShouldResumeCameraPosition])
      {
        v54 = _ARLogSession_0();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          buf.columns[0].i32[0] = 138544386;
          *(buf.columns[0].i64 + 4) = v56;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = self;
          buf.columns[1].i16[3] = 2048;
          *&buf.columns[1].i64[1] = v96.f32[0];
          buf.columns[2].i16[0] = 2048;
          *(buf.columns[2].i64 + 2) = v96.f32[1];
          buf.columns[2].i16[5] = 2048;
          *(&buf.columns[2].i64[1] + 4) = v96.f32[2];
          _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Updated session origin (%f, %f, %f)", &buf, 0x34u);
        }

        sessionOriginTransformAvailable2 = 1;
        sessionOriginTransformAvailable = 1;
        v17.columns[2].i64[0] = v107;
        v17.columns[0].i64[0] = v111;
        v17.columns[1].i64[0] = v103;
        v17.columns[3].i64[0] = v96.i64[0];
        goto LABEL_45;
      }

      sessionOriginTransformAvailable2 = 1;
      v17.columns[3].i64[0] = v99;
      sessionOriginTransformAvailable = 1;
      goto LABEL_43;
    }

    if (sessionTransformUpdated)
    {
      sessionOriginTransformAvailable = 1;
      v17.columns[3].i64[0] = v99;
LABEL_43:
      v17.columns[2].i64[0] = v107;
      v17.columns[0].i64[0] = v111;
      v17.columns[1].i64[0] = v103;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if ([previousFrameCopy sessionOriginTransformAvailable])
  {
    [previousFrameCopy sessionOriginTransform];
    [frameCopy setSessionOriginTransform:?];
  }

  if ([previousFrameCopy worldAlignmentTransformAvailable])
  {
    [previousFrameCopy worldAlignmentTransform];
    [frameCopy setWorldAlignmentTransform:?];
  }

  if ([previousFrameCopy referenceOriginTransformAvailable])
  {
    [previousFrameCopy referenceOriginTransform];
    [frameCopy setReferenceOriginTransform:?];
  }

LABEL_79:
}

- (void)_updateFeaturePointsForFrame:(id)frame previousFrame:(id)previousFrame trackingStateChanged:(BOOL)changed context:(id)context
{
  changedCopy = changed;
  v46 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  previousFrameCopy = previousFrame;
  if (![frameCopy referenceOriginChanged])
  {
    referenceFeaturePoints = [frameCopy referenceFeaturePoints];
    if ([referenceFeaturePoints count])
    {
      cachedPointClouds = [previousFrameCopy cachedPointClouds];
      referenceFeaturePoints2 = [frameCopy referenceFeaturePoints];
      v21 = [cachedPointClouds containsObject:referenceFeaturePoints2] ^ 1;
    }

    else
    {
      v21 = 0;
    }

    if (changedCopy)
    {
      camera = [frameCopy camera];
      trackingStateReason = [camera trackingStateReason];

      if (trackingStateReason == 1)
      {

        previousFrameCopy = 0;
      }
    }

    if (v21)
    {
      cachedPointClouds2 = [previousFrameCopy cachedPointClouds];
      v25 = [cachedPointClouds2 mutableCopy];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = objc_opt_new();
      }

      v33 = v27;

      referenceFeaturePoints3 = [frameCopy referenceFeaturePoints];
      [v33 addObject:referenceFeaturePoints3];

      if ([v33 count] > self->_featurePointAccumulationCount)
      {
        [v33 removeObjectAtIndex:0];
      }

      [frameCopy setCachedPointClouds:v33];
      v35 = [ARPointCloud concatPointClouds:v33];
      [frameCopy setReferenceFeaturePoints:v35];

      [frameCopy referenceOriginTransformUpdated];
      goto LABEL_27;
    }

    referenceFeaturePoints4 = [frameCopy referenceFeaturePoints];
    if (!referenceFeaturePoints4)
    {
      referenceFeaturePoints4 = [frameCopy camera];
      if ([referenceFeaturePoints4 trackingState] != 2)
      {
        camera2 = [frameCopy camera];
        if ([camera2 trackingStateReason] != 4)
        {
          camera3 = [frameCopy camera];
          trackingStateReason2 = [camera3 trackingStateReason];

          if (trackingStateReason2 != 1)
          {
            [frameCopy setFeaturePoints:0];
LABEL_21:
            if (![frameCopy referenceOriginTransformUpdated])
            {
              goto LABEL_31;
            }

            goto LABEL_27;
          }

LABEL_20:
          cachedPointClouds3 = [previousFrameCopy cachedPointClouds];
          [frameCopy setCachedPointClouds:cachedPointClouds3];

          referenceFeaturePoints5 = [previousFrameCopy referenceFeaturePoints];
          [frameCopy setReferenceFeaturePoints:referenceFeaturePoints5];

          featurePoints = [previousFrameCopy featurePoints];
          [frameCopy setFeaturePoints:featurePoints];

          goto LABEL_21;
        }
      }
    }

    goto LABEL_20;
  }

  v11 = _ARLogSession_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543618;
    v43 = v13;
    v44 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Removing previous cached feature points, because reference origin changed", buf, 0x16u);
  }

  referenceFeaturePoints6 = [frameCopy referenceFeaturePoints];

  if (referenceFeaturePoints6)
  {
    referenceFeaturePoints7 = [frameCopy referenceFeaturePoints];
    v41 = referenceFeaturePoints7;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v17 = [v16 mutableCopy];
    [frameCopy setCachedPointClouds:v17];

LABEL_27:
    referenceOriginTransformAvailable = [frameCopy referenceOriginTransformAvailable];
    referenceFeaturePoints8 = [frameCopy referenceFeaturePoints];
    if (referenceOriginTransformAvailable)
    {
      [frameCopy referenceOriginTransform];
      v38 = [referenceFeaturePoints8 pointCloudByApplyingTransform:?];
      [frameCopy setFeaturePoints:v38];
    }

    else
    {
      [frameCopy setFeaturePoints:referenceFeaturePoints8];
    }
  }

LABEL_31:
}

- (void)setGeoTrackingTechnique:(id)technique
{
  v23 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  geoTrackingTechnique = self->_geoTrackingTechnique;
  v7 = _ARLogSession_0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (geoTrackingTechnique == techniqueCopy)
  {
    if (v8)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = 138543874;
      v16 = v14;
      v17 = 2048;
      selfCopy2 = self;
      v19 = 2112;
      v20 = techniqueCopy;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: The specified geo tracking technique is already set: %@", &v15, 0x20u);
    }
  }

  else
  {
    p_geoTrackingTechnique = &self->_geoTrackingTechnique;
    if (v8)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = self->_geoTrackingTechnique;
      v15 = 138544130;
      v16 = v11;
      v17 = 2048;
      selfCopy2 = self;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = techniqueCopy;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Changing geo tracking technique - old: %@, new: %@", &v15, 0x2Au);
    }

    [(ARRemoteTechnique *)*p_geoTrackingTechnique setActive:0];
    objc_storeStrong(&self->_geoTrackingTechnique, technique);
    [(ARRemoteTechnique *)*p_geoTrackingTechnique setActive:1];
  }
}

- (void)_lookupAltitudeForAnchor:(id)anchor
{
  anchorCopy = anchor;
  dispatch_assert_queue_V2(self->_stateQueue);
  identifier = [anchorCopy identifier];
  v6 = [(ARSession *)self _getGeoAnchorAltitude:identifier];
  if (v6)
  {
  }

  else
  {
    isAltitudeLookupInProgress = [anchorCopy isAltitudeLookupInProgress];

    if ((isAltitudeLookupInProgress & 1) == 0)
    {
      [anchorCopy setIsAltitudeLookupInProgress:1];
      [anchorCopy coordinate];
      v9 = v8;
      [anchorCopy coordinate];
      v11 = CLLocationCoordinate2DMake(v9, v10);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __38__ARSession__lookupAltitudeForAnchor___block_invoke;
      v12[3] = &unk_1E817CE18;
      v12[4] = self;
      v13 = anchorCopy;
      v14 = v11;
      [(ARSession *)self _lookupAltitudeAtCoordinate:v12 completionHandler:v11.latitude, v11.longitude];
    }
  }
}

void __38__ARSession__lookupAltitudeForAnchor___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 uncertainty];
    if (v5 == -1.0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [ARAltitudeUndulationPair alloc];
    [v4 altitude];
    v9 = v8;
    [v4 undulation];
    v11 = v10;
    v12 = v7;
    v13 = v9;
    v14 = 0;
    v15 = v6;
    goto LABEL_25;
  }

  if (ARShouldUseLogTypeError_onceToken_21 != -1)
  {
    [ARSession updateWithCollaborationData:];
  }

  v16 = ARShouldUseLogTypeError_internalOSVersion_21;
  v17 = _ARLogSession_0();
  v18 = v17;
  if (v16 == 1)
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = *(a1 + 32);
    *v42 = 138543618;
    *&v42[4] = v20;
    *&v42[12] = 2048;
    *&v42[14] = v21;
    v22 = "%{public}@ <%p>: Unable to look up altitude or undulation for anchor";
    v23 = v18;
    v24 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v25 = objc_opt_class();
    v20 = NSStringFromClass(v25);
    v26 = *(a1 + 32);
    *v42 = 138543618;
    *&v42[4] = v20;
    *&v42[12] = 2048;
    *&v42[14] = v26;
    v22 = "Error: %{public}@ <%p>: Unable to look up altitude or undulation for anchor";
    v23 = v18;
    v24 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v23, v24, v22, v42, 0x16u);

LABEL_14:
  if ([*(a1 + 40) altitudeSource] != 3)
  {
LABEL_24:
    v12 = [ARAltitudeUndulationPair alloc];
    v13 = NAN;
    v11 = NAN;
    v14 = 1;
    v15 = 0;
LABEL_25:
    v39 = [(ARAltitudeUndulationPair *)v12 initWithAltitude:v14 undulation:v15 lookupFailed:v13 source:v11, *v42, *&v42[8], *&v43];
    goto LABEL_26;
  }

  v27 = ARGetFallbackUndulationValue(*(a1 + 48), *(a1 + 56));
  if (ARShouldUseLogTypeError_onceToken_21 != -1)
  {
    [ARSession runWithConfiguration:options:];
  }

  v28 = ARShouldUseLogTypeError_internalOSVersion_21;
  v29 = _ARLogSession_0();
  v30 = v29;
  if (v28 == 1)
  {
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = *(a1 + 32);
    *v42 = 138543875;
    *&v42[4] = v32;
    *&v42[12] = 2048;
    *&v42[14] = v33;
    *&v42[22] = 2049;
    v43 = v27;
    v34 = "%{public}@ <%p>: Falling back to hardcoded undulation value: %{private}f";
    v35 = v30;
    v36 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v37 = objc_opt_class();
    v32 = NSStringFromClass(v37);
    v38 = *(a1 + 32);
    *v42 = 138543875;
    *&v42[4] = v32;
    *&v42[12] = 2048;
    *&v42[14] = v38;
    *&v42[22] = 2049;
    v43 = v27;
    v34 = "Error: %{public}@ <%p>: Falling back to hardcoded undulation value: %{private}f";
    v35 = v30;
    v36 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v35, v36, v34, v42, 0x20u);

LABEL_23:
  v39 = [[ARAltitudeUndulationPair alloc] initWithAltitude:0 undulation:3 lookupFailed:0.0 source:v27];
  if (!v39)
  {
    goto LABEL_24;
  }

LABEL_26:
  v40 = *(a1 + 32);
  v41 = [*(a1 + 40) identifier];
  [v40 _setGeoAnchorAltitude:v41 pair:v39];

  [*(a1 + 40) setIsAltitudeLookupInProgress:0];
}

- (id)_updateAnchorsForFrame:(id)frame resultDatas:(id)datas context:(id)context
{
  v5 = MEMORY[0x1EEE9AC00](self, a2, frame, datas, context);
  v7 = v6;
  v9 = v8;
  v421 = v5;
  v524 = *MEMORY[0x1E69E9840];
  v11 = v10;
  v359 = v9;
  v12 = v7;
  if ([v11 referenceOriginTransformAvailable])
  {
    [v11 referenceOriginTransform];
    v527 = __invert_f4(v526);
    v420 = v527.columns[0];
    v415 = v527.columns[1];
    v410 = v527.columns[3];
    v412 = v527.columns[2];
  }

  else
  {
    v420 = *MEMORY[0x1E69E9B18];
    v415 = *(MEMORY[0x1E69E9B18] + 16);
    v410 = *(MEMORY[0x1E69E9B18] + 48);
    v412 = *(MEMORY[0x1E69E9B18] + 32);
  }

  anchors = [v11 anchors];
  privateAnchors = [v11 privateAnchors];
  v15 = [anchors arrayByAddingObjectsFromArray:privateAnchors];

  v16 = ARDictionaryFromAnchors(v15);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  v19 = *(v421 + 128);
  v418 = v11;
  v358 = v15;
  if (v19 && ([v19 worldTrackingState], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
  {
    worldTrackingState = [v11 worldTrackingState];
    [worldTrackingState originTimestamp];
    v23 = v22;
    worldTrackingState2 = [*(v421 + 128) worldTrackingState];
    [worldTrackingState2 originTimestamp];
    v376 = v23 > v25;
  }

  else
  {
    v376 = 0;
  }

  v409 = v12;
  v497 = 0u;
  v496 = 0u;
  v495 = 0u;
  v494 = 0u;
  v419 = v16;
  allValues = [v16 allValues];
  v27 = [allValues countByEnumeratingWithState:&v494 objects:v520 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v495;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v495 != v29)
        {
          objc_enumerationMutation(allValues);
        }

        v31 = *(*(&v494 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
          if (([v32 isAltitudeAvailable] & 1) == 0)
          {
            identifier = [v32 identifier];
            v34 = [v421 _getGeoAnchorAltitude:identifier];

            if (v34)
            {
              if ([v34 lookupFailed])
              {
                identifier2 = [v32 identifier];
                [dictionary3 setObject:v32 forKey:identifier2];
              }

              else
              {
                source = [v34 source];
                [v34 altitude];
                v38 = v37;
                if ([v32 altitudeSource] == 3)
                {
                  [v32 altitude];
                  v38 = v39;
                  source = 3;
                }

                [v32 coordinate];
                v41 = v40;
                v43 = v42;
                [v34 undulation];
                [v32 initWithCoordinate:source altitude:1 altitudeSource:v41 isAltitudeAvailable:v43 undulation:{v38, v44}];
              }
            }
          }
        }
      }

      v28 = [allValues countByEnumeratingWithState:&v494 objects:v520 count:16];
    }

    while (v28);
  }

  v417 = dictionary2;
  v414 = dictionary;

  v493 = 0u;
  v492 = 0u;
  v491 = 0u;
  v490 = 0u;
  allValues2 = [dictionary3 allValues];
  v46 = [allValues2 countByEnumeratingWithState:&v490 objects:v519 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v491;
    v49 = &ARTechnique_Image_to_Result_Frame_keyToCode;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v491 != v48)
        {
          objc_enumerationMutation(allValues2);
        }

        v51 = *(*(&v490 + 1) + 8 * j);
        if (v49[204] != -1)
        {
          [ARSession runWithConfiguration:options:];
        }

        v52 = ARShouldUseLogTypeError_internalOSVersion_21;
        v53 = _ARLogSession_0();
        v54 = v53;
        if (v52 == 1)
        {
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          identifier3 = [v51 identifier];
          *buf = 138543874;
          *&buf[4] = v56;
          *&buf[12] = 2048;
          *&buf[14] = v421;
          v49 = &ARTechnique_Image_to_Result_Frame_keyToCode;
          *&buf[22] = 2112;
          *&buf[24] = identifier3;
          v58 = v54;
          v59 = OS_LOG_TYPE_ERROR;
          v60 = "%{public}@ <%p>: Failed to look up geo anchor altitude. Removing anchor: %@";
        }

        else
        {
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            goto LABEL_38;
          }

          v61 = objc_opt_class();
          v56 = NSStringFromClass(v61);
          identifier3 = [v51 identifier];
          *buf = 138543874;
          *&buf[4] = v56;
          *&buf[12] = 2048;
          *&buf[14] = v421;
          v49 = &ARTechnique_Image_to_Result_Frame_keyToCode;
          *&buf[22] = 2112;
          *&buf[24] = identifier3;
          v58 = v54;
          v59 = OS_LOG_TYPE_INFO;
          v60 = "Error: %{public}@ <%p>: Failed to look up geo anchor altitude. Removing anchor: %@";
        }

        _os_log_impl(&dword_1C241C000, v58, v59, v60, buf, 0x20u);

LABEL_38:
        identifier4 = [v51 identifier];
        [v419 removeObjectForKey:identifier4];

        identifier5 = [v51 identifier];
        [v421 _removeGeoAnchorAltitude:identifier5];
      }

      v47 = [allValues2 countByEnumeratingWithState:&v490 objects:v519 count:16];
    }

    while (v47);
  }

  v65 = v418;
  v64 = v419;
  v66 = v409;
  if (v376)
  {
    v489 = 0u;
    v488 = 0u;
    v487 = 0u;
    v486 = 0u;
    allValues3 = [v419 allValues];
    v68 = [allValues3 countByEnumeratingWithState:&v486 objects:v518 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v487;
      do
      {
        for (k = 0; k != v69; ++k)
        {
          if (*v487 != v70)
          {
            objc_enumerationMutation(allValues3);
          }

          v72 = *(*(&v486 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v73 = [v72 copy];
            identifier6 = [v73 identifier];
            [v419 setObject:v73 forKey:identifier6];

            v75 = v73;
            [v75 setIsTracked:0];
            identifier7 = [v75 identifier];
            [v417 setObject:v75 forKey:identifier7];
          }
        }

        v69 = [allValues3 countByEnumeratingWithState:&v486 objects:v518 count:16];
      }

      while (v69);
    }
  }

  if ([v418 referenceOriginTransformUpdated])
  {
    v485 = 0u;
    v484 = 0u;
    v483 = 0u;
    v482 = 0u;
    allValues4 = [v419 allValues];
    v78 = [allValues4 countByEnumeratingWithState:&v482 objects:v517 count:16];
    v79 = v376;
    if (!v78)
    {
      goto LABEL_85;
    }

    v80 = v78;
    v81 = *v483;
    v372 = *v483;
    while (1)
    {
      v82 = 0;
      v380 = v80;
      do
      {
        if (*v483 != v81)
        {
          objc_enumerationMutation(allValues4);
        }

        v83 = *(*(&v482 + 1) + 8 * v82);
        if (!v79 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v84 = v83) == 0)
        {
          v84 = [v83 copy];
          identifier8 = [v84 identifier];
          [v419 setObject:v84 forKey:identifier8];
        }

        if ([v409 didRelocalize])
        {
          [v84 lastUpdateTimestamp];
          if (v86 > *(v421 + 280))
          {
            v87 = _ARLogSession_0();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
            {
              v88 = objc_opt_class();
              v89 = NSStringFromClass(v88);
              identifier9 = [v84 identifier];
              [v409 relocalizationDeltaTransform];
              ARMatrix4x4Description(0, v91, v92, v93, v94);
              v96 = v95 = allValues4;
              *buf = 138544130;
              *&buf[4] = v89;
              *&buf[12] = 2048;
              *&buf[14] = v421;
              v79 = v376;
              *&buf[22] = 2112;
              *&buf[24] = identifier9;
              LOWORD(v522) = 2112;
              *(&v522 + 2) = v96;
              _os_log_impl(&dword_1C241C000, v87, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Relocalization - Anchor (%@) left in place, delta %@", buf, 0x2Au);

              v80 = v380;
              allValues4 = v95;
              v81 = v372;

              v65 = v418;
            }

            [v409 relocalizationDeltaTransform];
            *v397 = v98;
            *v404 = v97;
            v384 = v100;
            v391 = v99;
            [v84 referenceTransform];
            v101 = 0;
            v498 = v102;
            v499 = v103;
            v500 = v104;
            v501 = v105;
            memset(buf, 0, sizeof(buf));
            v522 = 0u;
            v523 = 0u;
            do
            {
              *&buf[v101] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v404, COERCE_FLOAT(*(&v498 + v101))), *v397, *(&v498 + v101), 1), v391, *(&v498 + v101), 2), v384, *(&v498 + v101), 3);
              v101 += 16;
            }

            while (v101 != 64);
            [v84 setReferenceTransform:{*buf, *&buf[16], *&v522, *&v523}];
            [v65 referenceOriginTransform];
            *v398 = v107;
            *v405 = v106;
            v385 = v109;
            v392 = v108;
            [v84 referenceTransform];
            v110 = 0;
            v498 = v111;
            v499 = v112;
            v500 = v113;
            v501 = v114;
            memset(buf, 0, sizeof(buf));
            v522 = 0u;
            v523 = 0u;
            do
            {
              *&buf[v110] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v405, COERCE_FLOAT(*(&v498 + v110))), *v398, *(&v498 + v110), 1), v392, *(&v498 + v110), 2), v385, *(&v498 + v110), 3);
              v110 += 16;
            }

            while (v110 != 64);
LABEL_78:
            [v84 setTransform:{*buf, *&buf[16], *&v522, *&v523}];
            identifier10 = [v84 identifier];
            [v417 setObject:v84 forKey:identifier10];

            goto LABEL_79;
          }
        }

        if (![v65 referenceOriginChanged] || (objc_msgSend(v65, "referenceOriginDeltaAvailable") & 1) != 0)
        {
          if ([v65 referenceOriginDeltaAvailable])
          {
            [v65 referenceOriginDelta];
            *v399 = v116;
            *v406 = v115;
            v386 = v118;
            v393 = v117;
            [v84 referenceTransform];
            v119 = 0;
            v498 = v120;
            v499 = v121;
            v500 = v122;
            v501 = v123;
            memset(buf, 0, sizeof(buf));
            v522 = 0u;
            v523 = 0u;
            do
            {
              *&buf[v119] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v406, COERCE_FLOAT(*(&v498 + v119))), *v399, *(&v498 + v119), 1), v393, *(&v498 + v119), 2), v386, *(&v498 + v119), 3);
              v119 += 16;
            }

            while (v119 != 64);
            [v84 setReferenceTransform:{*buf, *&buf[16], *&v522, *&v523}];
          }

          [v65 referenceOriginTransform];
          *v400 = v125;
          *v407 = v124;
          v387 = v127;
          v394 = v126;
          [v84 referenceTransform];
          v128 = 0;
          v498 = v129;
          v499 = v130;
          v500 = v131;
          v501 = v132;
          memset(buf, 0, sizeof(buf));
          v522 = 0u;
          v523 = 0u;
          do
          {
            *&buf[v128] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v407, COERCE_FLOAT(*(&v498 + v128))), *v400, *(&v498 + v128), 1), v394, *(&v498 + v128), 2), v387, *(&v498 + v128), 3);
            v128 += 16;
          }

          while (v128 != 64);
          goto LABEL_78;
        }

        [v84 transform];
        v134 = 0;
        v498 = v135;
        v499 = v136;
        v500 = v137;
        v501 = v138;
        memset(buf, 0, sizeof(buf));
        v522 = 0u;
        v523 = 0u;
        do
        {
          *&buf[v134] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, COERCE_FLOAT(*(&v498 + v134))), v415, *(&v498 + v134), 1), v412, *(&v498 + v134), 2), v410, *(&v498 + v134), 3);
          v134 += 16;
        }

        while (v134 != 64);
        [v84 setReferenceTransform:{*buf, *&buf[16], *&v522, *&v523}];
LABEL_79:

        ++v82;
      }

      while (v82 != v80);
      v139 = [allValues4 countByEnumeratingWithState:&v482 objects:v517 count:16];
      v80 = v139;
      if (!v139)
      {
LABEL_85:

        v66 = v409;
        v64 = v419;
        break;
      }
    }
  }

  v481 = 0u;
  v480 = 0u;
  v479 = 0u;
  v478 = 0u;
  anchorsToRemove = [v66 anchorsToRemove];
  v141 = [anchorsToRemove countByEnumeratingWithState:&v478 objects:v516 count:16];
  v142 = dictionary3;
  if (v141)
  {
    v143 = v141;
    v144 = *v479;
    do
    {
      for (m = 0; m != v143; ++m)
      {
        if (*v479 != v144)
        {
          objc_enumerationMutation(anchorsToRemove);
        }

        identifier11 = [*(*(&v478 + 1) + 8 * m) identifier];
        v147 = [v64 objectForKey:identifier11];

        if (v147)
        {
          identifier12 = [v147 identifier];
          [dictionary3 setObject:v147 forKey:identifier12];

          identifier13 = [v147 identifier];
          [v64 removeObjectForKey:identifier13];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            identifier14 = [v147 identifier];
            [v421 _removeGeoAnchorAltitude:identifier14];
          }
        }
      }

      v143 = [anchorsToRemove countByEnumeratingWithState:&v478 objects:v516 count:16];
    }

    while (v143);
  }

  if (ARLinkedOnOrAfterAzulC())
  {
    v477 = 0u;
    v476 = 0u;
    v475 = 0u;
    v474 = 0u;
    anchorsToStopTracking = [v66 anchorsToStopTracking];
    v152 = [anchorsToStopTracking countByEnumeratingWithState:&v474 objects:v515 count:16];
    if (v152)
    {
      v153 = v152;
      v154 = *v475;
      do
      {
        for (n = 0; n != v153; ++n)
        {
          if (*v475 != v154)
          {
            objc_enumerationMutation(anchorsToStopTracking);
          }

          identifier15 = [*(*(&v474 + 1) + 8 * n) identifier];
          v157 = [v64 objectForKey:identifier15];

          if (objc_opt_respondsToSelector())
          {
            v158 = v157;
            if ([v158 isTracked])
            {
              v159 = [v158 copy];
              if (objc_opt_respondsToSelector())
              {
                [v159 setIsTracked:0];
              }

              identifier16 = [v159 identifier];
              [v419 setObject:v159 forKey:identifier16];

              identifier17 = [v159 identifier];
              [v417 setObject:v159 forKey:identifier17];

              v65 = v418;
            }

            v64 = v419;
          }
        }

        v153 = [anchorsToStopTracking countByEnumeratingWithState:&v474 objects:v515 count:16];
      }

      while (v153);
    }

    v66 = v409;
    v142 = dictionary3;
  }

  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  v360 = objc_opt_new();
  if ([v66 didRelocalize])
  {
    worldMap = [v66 worldMap];
    anchors2 = [worldMap anchors];
    v165 = ARDictionaryFromAnchors(anchors2);

    if ([*(v421 + 8) isMultiSessionMode])
    {
      worldMap2 = [v66 worldMap];
      anchors3 = [worldMap2 anchors];
      v168 = ARAnchorsForPoseGraphUpdates(anchors3);

      v473 = 0u;
      v472 = 0u;
      v471 = 0u;
      v470 = 0u;
      v169 = v168;
      v170 = [v169 countByEnumeratingWithState:&v470 objects:v514 count:16];
      if (v170)
      {
        v171 = v170;
        v172 = *v471;
        do
        {
          for (ii = 0; ii != v171; ++ii)
          {
            if (*v471 != v172)
            {
              objc_enumerationMutation(v169);
            }

            v174 = *(*(&v470 + 1) + 8 * ii);
            v175 = _ARLogGeneral_9();
            if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
            {
              v176 = objc_opt_class();
              v177 = NSStringFromClass(v176);
              identifier18 = [v174 identifier];
              *buf = 138543874;
              *&buf[4] = v177;
              *&buf[12] = 2048;
              *&buf[14] = v421;
              *&buf[22] = 2114;
              *&buf[24] = identifier18;
              _os_log_impl(&dword_1C241C000, v175, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: skipped adding anchor loaded from world map: %{public}@", buf, 0x20u);
            }

            identifier19 = [v174 identifier];
            [v165 removeObjectForKey:identifier19];
          }

          v171 = [v169 countByEnumeratingWithState:&v470 objects:v514 count:16];
        }

        while (v171);
      }

      v65 = v418;
      v64 = v419;
      v66 = v409;
      v142 = dictionary3;
    }
  }

  else
  {
    v165 = dictionary5;
  }

  camera = [v65 camera];
  trackingState = [camera trackingState];

  if (trackingState)
  {
    v469 = 0u;
    v468 = 0u;
    v467 = 0u;
    v466 = 0u;
    obj = v359;
    v182 = [obj countByEnumeratingWithState:&v466 objects:v513 count:16];
    v183 = dictionary4;
    if (!v182)
    {
      goto LABEL_159;
    }

    v184 = v182;
    v395 = *v467;
    while (1)
    {
      for (jj = 0; jj != v184; ++jj)
      {
        if (*v467 != v395)
        {
          objc_enumerationMutation(obj);
        }

        v186 = *(*(&v466 + 1) + 8 * jj);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v187 = v186;
          camera2 = [v65 camera];
          [v187 setCurrentCamera:camera2];
        }

        if (objc_opt_respondsToSelector())
        {
          if ([v421 isUserFaceTracking])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              camera3 = [v65 camera];
              [camera3 transform];
              v194 = ARFrontWideCameraTransformFromBackWideAngleCameraTransformWithZFlip(v190, v191, v192, v193);
              v381 = v195;
              v388 = v194;
              v373 = v197;
              v377 = v196;

              [v65 referenceOriginTransform];
              v365 = v199;
              v367 = v198;
              v361 = v201;
              v363 = v200;
              allValues5 = [v64 allValues];
              v203 = [v186 anchorsForCameraWithTransform:allValues5 referenceOriginTransform:v360 existingAnchors:v388 anchorsToRemove:{v381, v377, v373, v367, v365, v363, v361}];
              goto LABEL_139;
            }
          }

          if ([v421 _shouldSkipAnchorCreationForData:v186])
          {
            v203 = 0;
          }

          else
          {
            allValues5 = [v65 camera];
            [allValues5 transform];
            v382 = v205;
            v389 = v204;
            v374 = v207;
            v378 = v206;
            [v65 referenceOriginTransform];
            v366 = v209;
            v368 = v208;
            v362 = v211;
            v364 = v210;
            allValues6 = [v64 allValues];
            v203 = [v186 anchorsForCameraWithTransform:allValues6 referenceOriginTransform:v360 existingAnchors:v389 anchorsToRemove:{v382, v378, v374, v368, v366, v364, v362}];

LABEL_139:
          }

          v465 = 0u;
          v464 = 0u;
          v463 = 0u;
          v462 = 0u;
          v213 = v203;
          v214 = [v213 countByEnumeratingWithState:&v462 objects:v512 count:16];
          if (v214)
          {
            v215 = v214;
            v216 = *v463;
            do
            {
              for (kk = 0; kk != v215; ++kk)
              {
                if (*v463 != v216)
                {
                  objc_enumerationMutation(v213);
                }

                v218 = *(*(&v462 + 1) + 8 * kk);
                identifier20 = [v218 identifier];
                [v165 setObject:v218 forKey:identifier20];
              }

              v215 = [v213 countByEnumeratingWithState:&v462 objects:v512 count:16];
            }

            while (v215);
          }

          v65 = v418;
          v64 = v419;
          v183 = dictionary4;
        }

        if (objc_opt_respondsToSelector())
        {
          [v65 referenceOriginTransform];
          v383 = v221;
          v390 = v220;
          v375 = v223;
          v379 = v222;
          allValues7 = [v64 allValues];
          v225 = [v186 externalAnchorsWithReferenceOriginTransform:allValues7 existingAnchors:{v390, v383, v379, v375}];

          v460 = 0u;
          v461 = 0u;
          v458 = 0u;
          v459 = 0u;
          v226 = v225;
          v227 = [v226 countByEnumeratingWithState:&v458 objects:v511 count:16];
          if (v227)
          {
            v228 = v227;
            v229 = *v459;
            do
            {
              for (mm = 0; mm != v228; ++mm)
              {
                if (*v459 != v229)
                {
                  objc_enumerationMutation(v226);
                }

                v231 = *(*(&v458 + 1) + 8 * mm);
                identifier21 = [v231 identifier];
                [v183 setObject:v231 forKey:identifier21];
              }

              v228 = [v226 countByEnumeratingWithState:&v458 objects:v511 count:16];
            }

            while (v228);
          }

          v65 = v418;
          v64 = v419;
        }
      }

      v184 = [obj countByEnumeratingWithState:&v466 objects:v513 count:16];
      if (!v184)
      {
LABEL_159:

        v66 = v409;
        v142 = dictionary3;
        break;
      }
    }
  }

  v456 = 0u;
  v457 = 0u;
  v454 = 0u;
  v455 = 0u;
  v408 = v360;
  v233 = [v408 countByEnumeratingWithState:&v454 objects:v510 count:16];
  if (v233)
  {
    v234 = v233;
    v235 = *v455;
    do
    {
      for (nn = 0; nn != v234; ++nn)
      {
        if (*v455 != v235)
        {
          objc_enumerationMutation(v408);
        }

        identifier22 = [*(*(&v454 + 1) + 8 * nn) identifier];
        v238 = [v64 objectForKey:identifier22];

        if (v238)
        {
          identifier23 = [v238 identifier];
          [v142 setObject:v238 forKey:identifier23];

          identifier24 = [v238 identifier];
          [v64 removeObjectForKey:identifier24];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            identifier25 = [v238 identifier];
            [v421 _removeGeoAnchorAltitude:identifier25];
          }
        }
      }

      v234 = [v408 countByEnumeratingWithState:&v454 objects:v510 count:16];
    }

    while (v234);
  }

  if (([v65 referenceOriginTransformUpdated] & 1) == 0)
  {
    v452 = 0u;
    v453 = 0u;
    v450 = 0u;
    v451 = 0u;
    allValues8 = [v64 allValues];
    v243 = [allValues8 countByEnumeratingWithState:&v450 objects:v509 count:16];
    if (!v243)
    {
      goto LABEL_183;
    }

    v244 = v243;
    v245 = *v451;
    while (1)
    {
      for (i1 = 0; i1 != v244; ++i1)
      {
        if (*v451 != v245)
        {
          objc_enumerationMutation(allValues8);
        }

        v247 = *(*(&v450 + 1) + 8 * i1);
        identifier26 = [v247 identifier];
        v249 = [v165 objectForKey:identifier26];
        if (v249)
        {
          identifier27 = v249;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            continue;
          }

          identifier26 = [v247 copy];
          identifier27 = [v247 identifier];
          [v419 setObject:identifier26 forKey:identifier27];
        }
      }

      v244 = [allValues8 countByEnumeratingWithState:&v450 objects:v509 count:16];
      if (!v244)
      {
LABEL_183:

        v64 = v419;
        break;
      }
    }
  }

  v448 = 0u;
  v449 = 0u;
  v446 = 0u;
  v447 = 0u;
  anchorsToAdd = [v66 anchorsToAdd];
  v252 = [anchorsToAdd countByEnumeratingWithState:&v446 objects:v508 count:16];
  if (v252)
  {
    v253 = v252;
    v254 = *v447;
    do
    {
      for (i2 = 0; i2 != v253; ++i2)
      {
        if (*v447 != v254)
        {
          objc_enumerationMutation(anchorsToAdd);
        }

        v256 = *(*(&v446 + 1) + 8 * i2);
        identifier28 = [v256 identifier];
        v258 = [v64 objectForKey:identifier28];

        if (!v258)
        {
          if ([v418 referenceOriginTransformAvailable])
          {
            [v256 transform];
            v259 = 0;
            v498 = v260;
            v499 = v261;
            v500 = v262;
            v501 = v263;
            memset(buf, 0, sizeof(buf));
            v522 = 0u;
            v523 = 0u;
            do
            {
              *&buf[v259] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, COERCE_FLOAT(*(&v498 + v259))), v415, *(&v498 + v259), 1), v412, *(&v498 + v259), 2), v410, *(&v498 + v259), 3);
              v259 += 16;
            }

            while (v259 != 64);
            [v256 setReferenceTransform:{*buf, *&buf[16], *&v522, *&v523}];
          }

          identifier29 = [v256 identifier];
          v265 = [dictionary3 objectForKey:identifier29];

          v266 = v414;
          if (v265)
          {
            identifier30 = [v265 identifier];
            [dictionary3 removeObjectForKey:identifier30];

            v266 = v417;
          }

          identifier31 = [v256 identifier];
          [v266 setObject:v256 forKey:identifier31];

          identifier32 = [v256 identifier];
          v64 = v419;
          [v419 setObject:v256 forKey:identifier32];
        }
      }

      v253 = [anchorsToAdd countByEnumeratingWithState:&v446 objects:v508 count:16];
    }

    while (v253);
  }

  v444 = 0u;
  v445 = 0u;
  v442 = 0u;
  v443 = 0u;
  allValues9 = [v165 allValues];
  v270 = [allValues9 countByEnumeratingWithState:&v442 objects:v507 count:16];
  if (v270)
  {
    v271 = v270;
    v272 = *v443;
    do
    {
      for (i3 = 0; i3 != v271; ++i3)
      {
        if (*v443 != v272)
        {
          objc_enumerationMutation(allValues9);
        }

        v274 = *(*(&v442 + 1) + 8 * i3);
        if ([v418 referenceOriginTransformAvailable])
        {
          [v274 transform];
          v275 = 0;
          v498 = v276;
          v499 = v277;
          v500 = v278;
          v501 = v279;
          memset(buf, 0, sizeof(buf));
          v522 = 0u;
          v523 = 0u;
          do
          {
            *&buf[v275] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, COERCE_FLOAT(*(&v498 + v275))), v415, *(&v498 + v275), 1), v412, *(&v498 + v275), 2), v410, *(&v498 + v275), 3);
            v275 += 16;
          }

          while (v275 != 64);
          [v274 setReferenceTransform:{*buf, *&buf[16], *&v522, *&v523}];
        }

        [v418 timestamp];
        [v274 setLastUpdateTimestamp:?];
        identifier33 = [v274 identifier];
        v281 = [v419 objectForKey:identifier33];

        identifier34 = [v274 identifier];
        if (v281)
        {
          v283 = v417;
        }

        else
        {
          v283 = v414;
        }

        [v283 setObject:v274 forKey:identifier34];

        identifier35 = [v274 identifier];
        [v419 setObject:v274 forKey:identifier35];
      }

      v271 = [allValues9 countByEnumeratingWithState:&v442 objects:v507 count:16];
    }

    while (v271);
  }

  v440 = 0u;
  v441 = 0u;
  v438 = 0u;
  v439 = 0u;
  collaborationData = [v409 collaborationData];
  v286 = [collaborationData countByEnumeratingWithState:&v438 objects:v506 count:16];
  v287 = v419;
  if (v286)
  {
    v288 = v286;
    v289 = *v439;
    v403 = collaborationData;
    v396 = *v439;
    do
    {
      v290 = 0;
      v411 = v288;
      do
      {
        if (*v439 != v289)
        {
          objc_enumerationMutation(collaborationData);
        }

        v291 = *(*(&v438 + 1) + 8 * v290);
        if ([v291 vioDataType] == 1)
        {
          v416 = v290;
          v292 = v291;
          anchorIdentifier = [v291 anchorIdentifier];
          v294 = [v287 objectForKey:anchorIdentifier];

          v295 = [v294 isMemberOfClass:objc_opt_class()];
          v296 = _ARLogSession_0();
          v297 = os_log_type_enabled(v296, OS_LOG_TYPE_DEBUG);
          if (v295)
          {
            if (v297)
            {
              v298 = objc_opt_class();
              v299 = NSStringFromClass(v298);
              v300 = [v294 description];
              *buf = 138543874;
              *&buf[4] = v299;
              *&buf[12] = 2048;
              *&buf[14] = v421;
              v287 = v419;
              *&buf[22] = 2112;
              *&buf[24] = v300;
              _os_log_impl(&dword_1C241C000, v296, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Sending collaboration data with anchor: %@", buf, 0x20u);

              v288 = v411;
            }

            v301 = [MEMORY[0x1E695DFD8] setWithObject:v294];
            [v292 setAnchors:v301];

            [v421 _sessionDidOutputCollaborationData:v292];
          }

          else
          {
            if (v297)
            {
              v323 = objc_opt_class();
              v324 = NSStringFromClass(v323);
              anchorIdentifier2 = [v292 anchorIdentifier];
              [v294 description];
              v327 = v326 = collaborationData;
              *buf = 138544130;
              *&buf[4] = v324;
              *&buf[12] = 2048;
              *&buf[14] = v421;
              *&buf[22] = 2112;
              *&buf[24] = anchorIdentifier2;
              LOWORD(v522) = 2112;
              *(&v522 + 2) = v327;
              _os_log_impl(&dword_1C241C000, v296, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Not sending anchor data, it is not found or not a simple anchor: %@, %@", buf, 0x2Au);

              collaborationData = v326;
              v287 = v419;

              v288 = v411;
            }
          }
        }

        else
        {
          if ([v291 vioDataType] != 3)
          {
            goto LABEL_249;
          }

          v413 = v291;
          v416 = v290;
          v302 = [MEMORY[0x1E695DFA8] set];
          v434 = 0u;
          v435 = 0u;
          v436 = 0u;
          v437 = 0u;
          allValues10 = [v287 allValues];
          v304 = [allValues10 countByEnumeratingWithState:&v434 objects:v505 count:16];
          if (v304)
          {
            v305 = v304;
            v306 = *v435;
            do
            {
              for (i4 = 0; i4 != v305; ++i4)
              {
                if (*v435 != v306)
                {
                  objc_enumerationMutation(allValues10);
                }

                v308 = *(*(&v434 + 1) + 8 * i4);
                if ([v308 isMemberOfClass:objc_opt_class()])
                {
                  [v302 addObject:v308];
                }
              }

              v305 = [allValues10 countByEnumeratingWithState:&v434 objects:v505 count:16];
            }

            while (v305);
          }

          v309 = [v302 copy];
          [v413 setAnchors:v309];

          v310 = _ARLogSession_0();
          if (os_log_type_enabled(v310, OS_LOG_TYPE_DEBUG))
          {
            v311 = objc_opt_class();
            v312 = NSStringFromClass(v311);
            v313 = [v302 count];
            *buf = 138543874;
            *&buf[4] = v312;
            *&buf[12] = 2048;
            *&buf[14] = v421;
            *&buf[22] = 2048;
            *&buf[24] = v313;
            _os_log_impl(&dword_1C241C000, v310, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Sending registration data with anchors: %tu", buf, 0x20u);
          }

          v432 = 0u;
          v433 = 0u;
          v430 = 0u;
          v431 = 0u;
          v294 = v302;
          v314 = [v294 countByEnumeratingWithState:&v430 objects:v504 count:16];
          if (v314)
          {
            v315 = v314;
            v316 = *v431;
            do
            {
              for (i5 = 0; i5 != v315; ++i5)
              {
                if (*v431 != v316)
                {
                  objc_enumerationMutation(v294);
                }

                v318 = *(*(&v430 + 1) + 8 * i5);
                v319 = _ARLogSession_0();
                if (os_log_type_enabled(v319, OS_LOG_TYPE_DEBUG))
                {
                  v320 = objc_opt_class();
                  v321 = NSStringFromClass(v320);
                  v322 = [v318 description];
                  *buf = 138543874;
                  *&buf[4] = v321;
                  *&buf[12] = 2048;
                  *&buf[14] = v421;
                  *&buf[22] = 2112;
                  *&buf[24] = v322;
                  _os_log_impl(&dword_1C241C000, v319, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Sending registration data with anchor: %@", buf, 0x20u);
                }
              }

              v315 = [v294 countByEnumeratingWithState:&v430 objects:v504 count:16];
            }

            while (v315);
          }

          [v421 _sessionDidOutputCollaborationData:v413];
          v287 = v419;
          collaborationData = v403;
          v289 = v396;
          v288 = v411;
        }

        v290 = v416;
LABEL_249:
        ++v290;
      }

      while (v290 != v288);
      v288 = [collaborationData countByEnumeratingWithState:&v438 objects:v506 count:16];
    }

    while (v288);
  }

  v428 = 0u;
  v429 = 0u;
  v426 = 0u;
  v427 = 0u;
  allValues11 = [v287 allValues];
  v329 = [allValues11 countByEnumeratingWithState:&v426 objects:v503 count:16];
  v330 = v414;
  if (v329)
  {
    v331 = v329;
    v332 = *v427;
    do
    {
      for (i6 = 0; i6 != v331; ++i6)
      {
        if (*v427 != v332)
        {
          objc_enumerationMutation(allValues11);
        }

        v334 = *(*(&v426 + 1) + 8 * i6);
        sessionIdentifier = [v334 sessionIdentifier];

        if (!sessionIdentifier)
        {
          identifier36 = [v421 identifier];
          [v334 setSessionIdentifier:identifier36];
        }
      }

      v331 = [allValues11 countByEnumeratingWithState:&v426 objects:v503 count:16];
    }

    while (v331);
  }

  v424 = 0u;
  v425 = 0u;
  v422 = 0u;
  v423 = 0u;
  allValues12 = [dictionary3 allValues];
  v338 = [allValues12 countByEnumeratingWithState:&v422 objects:v502 count:16];
  v339 = v409;
  v340 = v419;
  if (v338)
  {
    v341 = v338;
    v342 = *v423;
    do
    {
      for (i7 = 0; i7 != v341; ++i7)
      {
        if (*v423 != v342)
        {
          objc_enumerationMutation(allValues12);
        }

        [*(*(&v422 + 1) + 8 * i7) setSessionIdentifier:0];
      }

      v341 = [allValues12 countByEnumeratingWithState:&v422 objects:v502 count:16];
    }

    while (v341);
  }

  allValues13 = [v419 allValues];
  v345 = ARAnchorsForPublicDelegate(allValues13);
  [v418 setAnchors:v345];

  allValues14 = [v419 allValues];
  v347 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_341];
  v348 = [allValues14 filteredArrayUsingPredicate:v347];

  [v418 setPrivateAnchors:v348];
  v349 = v417;
  if ([v414 count] || objc_msgSend(v417, "count") || objc_msgSend(dictionary3, "count") || objc_msgSend(dictionary4, "count"))
  {
    v350 = [ARAnchorChangeSet alloc];
    allValues15 = [v414 allValues];
    allValues16 = [v417 allValues];
    allValues17 = [dictionary3 allValues];
    allValues18 = [dictionary4 allValues];
    v355 = [(ARAnchorChangeSet *)v350 initWithAddedAnchors:allValues15 updatedAnchors:allValues16 removedAnchors:allValues17 externalAnchors:allValues18];
    [v418 setAnchorChangeSet:v355];

    v340 = v419;
    v339 = v409;
    v330 = v414;

    v349 = v417;
  }

  anchorChangeSet = [v418 anchorChangeSet];

  return anchorChangeSet;
}

- (void)setAvailableSensors:(id)sensors
{
  v49 = *MEMORY[0x1E69E9840];
  sensorsCopy = sensors;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = self->_availableSensors;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if ([sensorsCopy indexOfObjectIdenticalTo:v11] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 setDelegate:0];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v8);
  }

  v30 = sensorsCopy;

  imageSensor = self->_imageSensor;
  self->_imageSensor = 0;

  replaySensor = self->_replaySensor;
  self->_replaySensor = 0;

  objc_storeStrong(&self->_availableSensors, sensors);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_availableSensors;
  v14 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v32 = 0;
    v16 = *v34;
    v17 = 0x1E817A000uLL;
    v18 = 0x1E817A000uLL;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v33 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v20 setPowerUsage:{-[ARSession powerUsage](self, "powerUsage")}];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_imageSensor, v20);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v18;
          v22 = v17;
          v23 = v20;

          v32 = v23;
          v17 = v22;
          v18 = v21;
        }

        if ([v20 conformsToProtocol:&unk_1F425D818])
        {
          v24 = v20;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v24 setSession:self];
          }

          v25 = self->_replaySensor;
          self->_replaySensor = v24;
        }
      }

      v15 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v15);
  }

  else
  {
    v32 = 0;
  }

  v26 = _ARLogSession_0();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    *buf = 138543874;
    v42 = v28;
    v43 = 2048;
    selfCopy = self;
    v45 = 2048;
    v46 = v32;
    _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting new location sensor: %p", buf, 0x20u);
  }

  locationSensor = self->_locationSensor;
  self->_locationSensor = v32;
}

- (id)replaySensor
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  availableSensors = [(ARSession *)self availableSensors];
  v3 = [availableSensors countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(availableSensors);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [availableSensors countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_replaceOrAddSensor:(id)sensor
{
  v19 = *MEMORY[0x1E69E9840];
  sensorCopy = sensor;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_availableSensors;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {

LABEL_13:
    [array addObject:{sensorCopy, v14}];
    goto LABEL_14;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v15;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v14 + 1) + 8 * i);
      providedDataTypes = [v12 providedDataTypes];
      if (([sensorCopy providedDataTypes] & providedDataTypes) != 0)
      {
        [v12 stop];
        -[ARSession setRunningSensors:](self, "setRunningSensors:", -[ARSession runningSensors](self, "runningSensors") & ~[v12 providedDataTypes]);
        -[ARSession setPausedSensors:](self, "setPausedSensors:", -[ARSession pausedSensors](self, "pausedSensors") & ~[v12 providedDataTypes]);
        v9 = 1;
        v12 = sensorCopy;
      }

      [array addObject:v12];
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  [(ARSession *)self setAvailableSensors:array];
}

+ (id)_applySessionOverrides:(id)overrides outError:(id *)error
{
  v113 = *MEMORY[0x1E69E9840];
  overridesCopy = overrides;
  v7 = 0x1E817A000uLL;
  v8 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.session.cameraPosition"];
  if (v8)
  {
    v9 = v8;
    videoFormat = [(ARRecordingConfiguration *)overridesCopy videoFormat];
    captureDevicePosition = [videoFormat captureDevicePosition];

    if (captureDevicePosition != v9)
    {
      [(ARCustomTechniquesConfiguration *)overridesCopy setCameraPosition:v9];
      v12 = _ARLogSession_0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = @"Front";
        *buf = 138543874;
        v106 = v14;
        if (v9 == 1)
        {
          v15 = @"Back";
        }

        v107 = 2048;
        selfCopy8 = self;
        v109 = 2112;
        v110 = v15;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Overriding default camera position to %@", buf, 0x20u);
      }
    }
  }

  videoFormat2 = [(ARRecordingConfiguration *)overridesCopy videoFormat];
  if (videoFormat2)
  {
    v17 = videoFormat2;
    videoFormat3 = [(ARRecordingConfiguration *)overridesCopy videoFormat];
    if ([videoFormat3 captureDevicePosition]== 1)
    {
      videoFormat4 = [(ARRecordingConfiguration *)overridesCopy videoFormat];
      captureDeviceType = [videoFormat4 captureDeviceType];
      v21 = *MEMORY[0x1E6986950];

      v31 = captureDeviceType == v21;
      v7 = 0x1E817A000uLL;
      if (!v31)
      {
        goto LABEL_19;
      }

      v17 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.imagesensor.back.wide.autoFocus"];
      if (!v17)
      {
LABEL_18:

        goto LABEL_19;
      }

      [(ARConfiguration *)overridesCopy setAutoFocusEnabled:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.wide.autoFocus"]];
      videoFormat3 = _ARLogSession_0();
      if (os_log_type_enabled(videoFormat3, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        isAutoFocusEnabled = [(ARConfiguration *)overridesCopy isAutoFocusEnabled];
        v25 = @"disabled";
        *buf = 138543874;
        v106 = v23;
        if (isAutoFocusEnabled)
        {
          v25 = @"enabled";
        }

        v107 = 2048;
        selfCopy8 = self;
        v109 = 2112;
        v110 = v25;
        _os_log_impl(&dword_1C241C000, videoFormat3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Image sensor auto focus %@ by user defaults", buf, 0x20u);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.imagedetection.assetcatalog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
      v28 = [v27 objectForKey:@"path"];
      v29 = [v27 objectForKey:@"imageGroup"];
      v30 = v29;
      if (v28)
      {
        v31 = v29 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        v32 = _ARLogSession_0();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = objc_opt_class();
          NSStringFromClass(v33);
          v35 = v34 = self;
          *buf = 138543874;
          v106 = v35;
          v107 = 2048;
          selfCopy8 = v34;
          v109 = 2112;
          v110 = @"com.apple.arkit.imagedetection.assetcatalog";
          _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: When using the default '%@' the options 'path' and 'recognition_group_name' need to be specified", buf, 0x20u);

          self = v34;
          v7 = 0x1E817A000;
        }
      }

      else
      {
        isAbsolutePath = [v28 isAbsolutePath];
        if ((isAbsolutePath & 1) == 0)
        {
          v37 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
          lastObject = [v37 lastObject];

          v39 = [lastObject stringByAppendingPathComponent:v28];

          v28 = v39;
        }

        v40 = [MEMORY[0x1E695DFF8] fileURLWithPath:v28];
        v32 = [ARReferenceImage referenceImagesInGroupNamed:v30 catalogURL:v40];

        if (v32)
        {
          [(ARRecordingConfiguration *)overridesCopy setDetectionImages:v32];
        }

        else
        {
          v41 = _ARLogSession_0();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = objc_opt_class();
            NSStringFromClass(v42);
            v44 = v43 = self;
            *buf = 138544130;
            v106 = v44;
            v107 = 2048;
            selfCopy8 = v43;
            v109 = 2112;
            v110 = v30;
            v111 = 2112;
            v112 = v28;
            _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: No recognition group named '%@' found in '%@'", buf, 0x2Au);

            self = v43;
            v7 = 0x1E817A000uLL;
          }
        }
      }
    }
  }

  v45 = [*(v7 + 2288) stringForKey:@"com.apple.arkit.session.replay.filepath"];
  if (!v45)
  {
    goto LABEL_57;
  }

  v46 = objc_opt_new();
  if ([(__CFString *)v45 isAbsolutePath])
  {
    [v46 addObject:v45];
  }

  else
  {
    v47 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    lastObject2 = [v47 lastObject];

    v49 = NSTemporaryDirectory();
    v50 = [v49 stringByAppendingPathComponent:v45];
    [v46 addObject:v50];

    v51 = [lastObject2 stringByAppendingPathComponent:v45];
    [v46 addObject:v51];
  }

  v52 = [v46 indexOfObjectPassingTest:&__block_literal_global_459];
  if (v52 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      v53 = v7;
      v54 = MEMORY[0x1E696ABC0];
      v102 = *MEMORY[0x1E696A578];
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Replay URL points to a file which does not exist or which the app cannot access: %@", v45];
      v103 = v55;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v57 = v54;
      v7 = v53;
      *error = [v57 errorWithDomain:@"com.apple.arkit.error" code:102 userInfo:v56];

      goto LABEL_50;
    }

    goto LABEL_56;
  }

  v58 = [v46 objectAtIndex:v52];
  v59 = [MEMORY[0x1E695DFF8] fileURLWithPath:v58];
  v60 = ARReplaySensorClassForMovieURL(v59, error);
  if (v60)
  {
    v61 = [[v60 alloc] initWithSequenceURL:v59 replayMode:0];
    parentImageSensorSettings = [(ARRecordingConfiguration *)overridesCopy parentImageSensorSettings];
    [v61 setParentImageSensorSettings:parentImageSensorSettings];

    if (v61)
    {
      selfCopy3 = self;
      v104 = v61;
      v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
      [(ARCustomTechniquesConfiguration *)overridesCopy setCustomSensors:v63];
      v64 = _ARLogSession_0();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        *buf = 138543874;
        v106 = v66;
        v107 = 2048;
        selfCopy8 = selfCopy3;
        v109 = 2112;
        v110 = v58;
        _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Forcing replay of sequence instead of live sensor capturing from file: %@", buf, 0x20u);

        v7 = 0x1E817A000;
      }

      self = selfCopy3;
      goto LABEL_49;
    }

    if (ARShouldUseLogTypeError_onceToken_21 != -1)
    {
      [ARSession runWithConfiguration:options:];
    }

    v87 = ARShouldUseLogTypeError_internalOSVersion_21;
    v88 = _ARLogSession_0();
    v89 = v88;
    if (v87 == 1)
    {
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v90 = objc_opt_class();
        v91 = NSStringFromClass(v90);
        *buf = 138543874;
        v106 = v91;
        v107 = 2048;
        selfCopy8 = self;
        v109 = 2112;
        v110 = v59;
        v92 = "%{public}@ <%p>: Unable to create replay sensor for file: %@";
        v93 = v89;
        v94 = OS_LOG_TYPE_ERROR;
LABEL_77:
        _os_log_impl(&dword_1C241C000, v93, v94, v92, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v95 = objc_opt_class();
      v91 = NSStringFromClass(v95);
      *buf = 138543874;
      v106 = v91;
      v107 = 2048;
      selfCopy8 = self;
      v109 = 2112;
      v110 = v59;
      v92 = "Error: %{public}@ <%p>: Unable to create replay sensor for file: %@";
      v93 = v89;
      v94 = OS_LOG_TYPE_INFO;
      goto LABEL_77;
    }

    goto LABEL_79;
  }

LABEL_49:

  if (error)
  {
LABEL_50:
    if (*error)
    {
      if (ARShouldUseLogTypeError_onceToken_21 != -1)
      {
        [ARSession runWithConfiguration:options:];
      }

      v67 = ARShouldUseLogTypeError_internalOSVersion_21;
      v68 = _ARLogSession_0();
      v58 = v68;
      if (v67 == 1)
      {
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = objc_opt_class();
          v70 = NSStringFromClass(v69);
          v71 = *error;
          *buf = 138544130;
          v106 = v70;
          v107 = 2048;
          selfCopy8 = self;
          v109 = 2112;
          v110 = v45;
          v111 = 2112;
          v112 = v71;
          v72 = "%{public}@ <%p>: Cannot force replay of file %@, because of file issue: %@";
          v73 = v58;
          v74 = OS_LOG_TYPE_ERROR;
LABEL_69:
          _os_log_impl(&dword_1C241C000, v73, v74, v72, buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        v85 = objc_opt_class();
        v70 = NSStringFromClass(v85);
        v86 = *error;
        *buf = 138544130;
        v106 = v70;
        v107 = 2048;
        selfCopy8 = self;
        v109 = 2112;
        v110 = v45;
        v111 = 2112;
        v112 = v86;
        v72 = "Error: %{public}@ <%p>: Cannot force replay of file %@, because of file issue: %@";
        v73 = v58;
        v74 = OS_LOG_TYPE_INFO;
        goto LABEL_69;
      }

LABEL_79:

      v84 = 0;
      goto LABEL_80;
    }
  }

LABEL_56:

LABEL_57:
  v75 = [*(v7 + 2288) integerForKey:@"com.apple.arkit.session.forceRecording"];
  if (v75)
  {
    v76 = v75;
    v77 = _ARLogSession_0();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = objc_opt_class();
      v79 = NSStringFromClass(v78);
      *buf = 138543874;
      v106 = v79;
      v107 = 2048;
      selfCopy8 = self;
      v109 = 2048;
      v110 = v76;
      _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Forcing %li second recording", buf, 0x20u);
    }

    v80 = [[ARRecordingConfiguration alloc] initWithBaseConfiguration:overridesCopy fileURL:0];
    [(ARRecordingConfiguration *)v80 startRecording];
    if (v76 >= 1)
    {
      recordingTechnique = [(ARRecordingConfiguration *)v80 recordingTechnique];
      v82 = dispatch_time(0, 1000000000 * v76);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__ARSession__applySessionOverrides_outError___block_invoke_465;
      block[3] = &unk_1E817C010;
      selfCopy9 = self;
      v101 = v76;
      v99 = recordingTechnique;
      v83 = recordingTechnique;
      dispatch_after(v82, MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v80 = overridesCopy;
  }

  if (+[ARQATracer isEnabled])
  {
    [(ARConfiguration *)v80 setFrameDebugOptions:[(ARConfiguration *)v80 frameDebugOptions]| 2];
  }

  overridesCopy = v80;
  v84 = overridesCopy;
LABEL_80:

  return v84;
}

uint64_t __45__ARSession__applySessionOverrides_outError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a2;
  v7 = [v5 defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

uint64_t __45__ARSession__applySessionOverrides_outError___block_invoke_465(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSession_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 138543874;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Forcing recording end after %li seconds", &v8, 0x20u);
  }

  return [*(a1 + 32) finishRecording];
}

- (void)captureHighResolutionFrameUsingPhotoSettings:(id)settings completion:(id)completion
{
  v38[1] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  completionCopy = completion;
  dispatch_semaphore_wait(self->_pendingHiResFrameCaptureSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if ([(ARSession *)self state])
  {
    if (self->_isHiResFrameCaptureInProgress)
    {
      dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
      delegateQueue = [(ARSession *)self delegateQueue];
      v9 = delegateQueue;
      if (!delegateQueue)
      {
        v9 = MEMORY[0x1E69E96A0];
        v10 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_2;
      block[3] = &unk_1E817CC30;
      v33 = completionCopy;
      dispatch_async(v9, block);
      if (!delegateQueue)
      {
      }

      v11 = v33;
    }

    else
    {
      stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];
      prepareWasCalled = [stillImageRootTechnique prepareWasCalled];

      if ((prepareWasCalled & 1) == 0)
      {
        stillImageProcessingQueue = self->_stillImageProcessingQueue;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_3;
        v31[3] = &unk_1E817BFE8;
        v31[4] = self;
        dispatch_async(stillImageProcessingQueue, v31);
      }

      v23 = MEMORY[0x1C691B4C0](completionCopy);
      pendingHiResFrameCaptureCompletionBlock = self->_pendingHiResFrameCaptureCompletionBlock;
      self->_pendingHiResFrameCaptureCompletionBlock = v23;

      self->_isHiResFrameCaptureInProgress = 1;
      dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
      availableSensors = [(ARSession *)self availableSensors];
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_469;
      v29 = &unk_1E817CE60;
      v30 = settingsCopy;
      [availableSensors enumerateObjectsUsingBlock:&v26];

      [(ARSessionMetrics *)self->_metrics recordHiResFrameCapture:v26];
      v11 = v30;
    }
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = ARKitCoreBundle();
    v14 = [v13 localizedStringForKey:@"Cannot capture high-resolution frame while the session is paused." value:&stru_1F4208A80 table:@"Localizable"];
    v11 = [v12 stringWithFormat:v14];

    v37 = *MEMORY[0x1E696A588];
    v38[0] = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
    delegateQueue2 = [(ARSession *)self delegateQueue];
    v17 = delegateQueue2;
    if (!delegateQueue2)
    {
      v17 = MEMORY[0x1E69E96A0];
      v18 = MEMORY[0x1E69E96A0];
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke;
    v34[3] = &unk_1E817CCF0;
    v35 = v15;
    v36 = completionCopy;
    v19 = v15;
    dispatch_async(v17, v34);
    if (!delegateQueue2)
    {
    }
  }
}

void __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = ARErrorWithCodeAndUserInfo(107, *(a1 + 32));
  (*(v1 + 16))(v1, 0, v2);
}

void __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ARErrorWithCodeAndUserInfo(106, 0);
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = _ARLogSession_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Preparing still image techniques", &v8, 0x16u);
  }

  v6 = [*(a1 + 32) stillImageRootTechnique];
  [v6 prepare:1];

  return kdebug_trace();
}

void __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_469(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 captureHighResolutionFrameWithPhotoSettings:*(a1 + 32)];
    *a4 = 1;
  }
}

- (void)_updateSensorsWithConfiguration:(id)configuration
{
  v51 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  customSensors = [configurationCopy customSensors];

  if (customSensors)
  {
    availableSensors = [(ARSession *)self availableSensors];
    customSensors2 = [configurationCopy customSensors];
    if ([availableSensors isEqualToArray:customSensors2])
    {
      if (([(ARReplaySensorProtocol *)self->_replaySensor finishedReplaying]& 1) == 0)
      {

        goto LABEL_20;
      }

      replaySensor = self->_replaySensor;
      replaySensor = [configurationCopy replaySensor];

      if (replaySensor == replaySensor)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    [(ARSession *)self _stopAllSensorsWaitingForOutstandingCallbacks:1];
    availableSensors = [configurationCopy customSensors];
    [(ARSession *)self setAvailableSensors:availableSensors];
LABEL_20:

    goto LABEL_42;
  }

  if (!self->_motionManger)
  {
    v10 = objc_opt_new();
    motionManger = self->_motionManger;
    self->_motionManger = v10;

    v12 = _ARLogSession_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = self->_motionManger;
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      v48 = v15;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating new motion manager %p.", buf, 0x20u);
    }
  }

  configurationInternal = [(ARSession *)self configurationInternal];
  customSensors3 = [configurationInternal customSensors];
  if (customSensors3)
  {

LABEL_12:
    array = [MEMORY[0x1E695DF70] array];
    v19 = [(ARSession *)self _imageSensorForConfiguration:configurationCopy existingSensor:0];
    if (v19)
    {
      [array addObject:v19];
    }

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.useIOKit"])
    {
      v20 = objc_alloc_init(ARIOMotionSensor);
      v21 = _ARLogSession_0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using IOKit for motion sensor", buf, 0x16u);
      }
    }

    else
    {
      v20 = [[ARMotionSensor alloc] initWithMotionManager:self->_motionManger];
      v21 = _ARLogSession_0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = self->_motionManger;
        *buf = 138543874;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        v48 = v26;
        _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using CoreMotion for motion sensor (%p).", buf, 0x20u);
      }
    }

    if (v20)
    {
      [array addObject:v20];
    }

    v27 = -[ARDeviceOrientationSensor initWithMotionManager:alignment:]([ARDeviceOrientationSensor alloc], "initWithMotionManager:alignment:", self->_motionManger, [configurationCopy worldAlignment]);
    if (v27)
    {
      [array addObject:v27];
    }

    v28 = objc_opt_new();
    if (v28)
    {
      [array addObject:v28];
    }

    [(ARSession *)self _stopAllSensorsWaitingForOutstandingCallbacks:1];
    [(ARSession *)self setAvailableSensors:array];

    goto LABEL_42;
  }

  availableSensors2 = [(ARSession *)self availableSensors];
  v30 = [availableSensors2 count] == 0;

  if (v30)
  {
    goto LABEL_12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__2;
  v49 = __Block_byref_object_dispose__2;
  v50 = 0;
  availableSensors3 = [(ARSession *)self availableSensors];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __45__ARSession__updateSensorsWithConfiguration___block_invoke;
  v42[3] = &unk_1E817CE88;
  v42[4] = buf;
  [availableSensors3 enumerateObjectsUsingBlock:v42];

  v32 = [(ARSession *)self _imageSensorForConfiguration:configurationCopy existingSensor:*(*&buf[8] + 40)];
  if (v32)
  {
    v33 = _ARLogSession_0();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *v43 = 138543618;
      v44 = v35;
      v45 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing image sensor", v43, 0x16u);
    }

    [(ARSession *)self _replaceOrAddSensor:v32];
  }

  configurationInternal2 = [(ARSession *)self configurationInternal];
  worldAlignment = [configurationInternal2 worldAlignment];
  LOBYTE(worldAlignment) = worldAlignment == [configurationCopy worldAlignment];

  if ((worldAlignment & 1) == 0)
  {
    v38 = -[ARDeviceOrientationSensor initWithMotionManager:alignment:]([ARDeviceOrientationSensor alloc], "initWithMotionManager:alignment:", self->_motionManger, [configurationCopy worldAlignment]);
    if (v38)
    {
      v39 = _ARLogSession_0();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *v43 = 138543618;
        v44 = v41;
        v45 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing orientation sensor because alignment has changed", v43, 0x16u);
      }

      [(ARSession *)self _replaceOrAddSensor:v38];
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_42:
}

void __45__ARSession__updateSensorsWithConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 providedDataTypes])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_imageSensorForConfiguration:(id)configuration existingSensor:(id)sensor
{
  v24 = *MEMORY[0x1E69E9840];
  sensorCopy = sensor;
  parentImageSensorSettings = [configuration parentImageSensorSettings];
  v8 = [(ARParentImageSensor *)sensorCopy canReconfigure:parentImageSensorSettings];
  v9 = _ARLogSession_0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v20 = 138543618;
      v21 = v12;
      v22 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reconfiguring existing image sensor based on new settings...", &v20, 0x16u);
    }

    [(ARParentImageSensor *)sensorCopy reconfigure:parentImageSensorSettings];
    v13 = sensorCopy;
  }

  else
  {
    if (v10)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v20 = 138543618;
      v21 = v15;
      v22 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating new image sensor, because settings are changed...", &v20, 0x16u);
    }

    v13 = [[ARParentImageSensor alloc] initWithSettings:parentImageSensorSettings];
  }

  v16 = v13;
  if (v13 == sensorCopy)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17;

  return v17;
}

- (void)_startSensorsWithDataTypes:(unint64_t)types
{
  v56 = *MEMORY[0x1E69E9840];
  if (types)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v4 = _os_activity_create(&dword_1C241C000, "Start sensors", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    kdebug_trace();
    v5 = _ARLogSession_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = ARSensorDataTypesToString(types);
      *buf = 138543874;
      v48 = v7;
      v49 = 2048;
      selfCopy6 = self;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Starting sensors with data type(s): %@ …", buf, 0x20u);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = self->_availableSensors;
    v10 = 0;
    v11 = [(NSArray *)v9 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v11)
    {
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          if (([v14 providedDataTypes] & types) != 0)
          {
            [v14 setDelegate:self];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              beforeRunningAVCaptureSession = [(ARSession *)self beforeRunningAVCaptureSession];
              [v15 setBeforeRunningAVCaptureSession:beforeRunningAVCaptureSession];
            }

            [v14 start];
            v10 |= [v14 providedDataTypes];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v11);
    }

    [(ARSession *)self setRunningSensors:[(ARSession *)self runningSensors]| v10];
    v17 = _ARLogSession_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = ARSensorDataTypesToString(v10);
      *buf = 138543874;
      v48 = v19;
      v49 = 2048;
      selfCopy6 = self;
      v51 = 2112;
      v52 = v20;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Started sensors with data type(s): %@", buf, 0x20u);
    }

    v21 = _ARLogSession_0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = ARSensorDataTypesToString([(ARSession *)self runningSensors]);
      *buf = 138543874;
      v48 = v23;
      v49 = 2048;
      selfCopy6 = self;
      v51 = 2112;
      v52 = v24;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Currently running sensors with data type(s): %@", buf, 0x20u);
    }

    v25 = v10 & types;
    if ((v10 & types) != types)
    {
      if (ARShouldUseLogTypeError_onceToken_21 != -1)
      {
        [ARSession runWithConfiguration:options:];
      }

      v26 = ARShouldUseLogTypeError_internalOSVersion_21;
      v27 = _ARLogSession_0();
      v28 = v27;
      if (v26 == 1)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = ARSensorDataTypesToString(v25 ^ types);
          *buf = 138543874;
          v48 = v30;
          v49 = 2048;
          selfCopy6 = self;
          v51 = 2112;
          v52 = v31;
          _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to start required sensor(s) %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = ARSensorDataTypesToString(v25 ^ types);
        *buf = 138543874;
        v48 = v33;
        v49 = 2048;
        selfCopy6 = self;
        v51 = 2112;
        v52 = v34;
        _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to start required sensor(s) %@", buf, 0x20u);
      }

      v35 = _ARLogSession_0();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = ARSensorDataTypesToString(v10);
        v39 = ARSensorDataTypesToString(types);
        *buf = 138544130;
        v48 = v37;
        v49 = 2048;
        selfCopy6 = self;
        v51 = 2112;
        v52 = v38;
        v53 = 2112;
        v54 = v39;
        _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: startedSensorDataTypes: %@  VS.  requiredDataTypes: %@", buf, 0x2Au);
      }

      v40 = ARErrorWithCodeAndUserInfo(101, 0);
      [(ARSession *)self _sessionDidFailWithError:v40];
    }

    [(ARSession *)self runningSensors];
    kdebug_trace();
    os_activity_scope_leave(&state);
  }
}

- (void)_configureSensorsForRecording
{
  v19 = *MEMORY[0x1E69E9840];
  technique = [(ARSession *)self technique];
  v4 = [technique techniqueOfClass:objc_opt_class()];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_availableSensors;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setRecordingMode:{1, v14}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    if (([(ARSession *)self runningSensors]& 0x40) != 0)
    {
      latestLocationData = [(ARSession *)self latestLocationData];

      if (latestLocationData)
      {
        latestLocationData2 = [(ARSession *)self latestLocationData];
        v13 = [v4 processData:latestLocationData2];
      }
    }
  }
}

- (void)_stopSensorsWithDataTypes:(unint64_t)types keepingDataTypes:(unint64_t)dataTypes
{
  v51 = *MEMORY[0x1E69E9840];
  if (types)
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = self->_availableSensors;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v9)
    {
      v10 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          providedDataTypes = [v12 providedDataTypes];
          if ((providedDataTypes & types) != 0 && (providedDataTypes & dataTypes) == 0)
          {
            [v12 setDelegate:0];
            [array addObject:v12];
          }
        }

        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
      }

      while (v9);
    }

    if ([array count])
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v15 = _os_activity_create(&dword_1C241C000, "Stopping sensors", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v15, &state);

      kdebug_trace();
      v16 = _ARLogSession_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = ARSensorDataTypesToString(types);
        *buf = 138543874;
        v45 = v18;
        v46 = 2048;
        selfCopy3 = self;
        v48 = 2112;
        v49 = v19;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopping sensors with data type(s): %@", buf, 0x20u);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = array;
      v21 = 0;
      v22 = [v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v22)
      {
        v23 = *v35;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v34 + 1) + 8 * j);
            [v25 stop];
            v21 |= [v25 providedDataTypes];
          }

          v22 = [v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v22);
      }

      [(ARSession *)self setRunningSensors:[(ARSession *)self runningSensors]& ~v21];
      [(ARSession *)self setPausedSensors:[(ARSession *)self pausedSensors]& ~v21];
      [(ARSession *)self runningSensors];
      kdebug_trace();
      v26 = _ARLogSession_0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = ARSensorDataTypesToString(v21);
        *buf = 138543874;
        v45 = v28;
        v46 = 2048;
        selfCopy3 = self;
        v48 = 2112;
        v49 = v29;
        _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopped sensors with data type(s): %@", buf, 0x20u);
      }

      v30 = _ARLogSession_0();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = ARSensorDataTypesToString([(ARSession *)self runningSensors]);
        *buf = 138543874;
        v45 = v32;
        v46 = 2048;
        selfCopy3 = self;
        v48 = 2112;
        v49 = v33;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Currently running sensors with data type(s): %@", buf, 0x20u);
      }

      os_activity_scope_leave(&state);
    }
  }
}

- (void)_stopAllSensorsWaitingForOutstandingCallbacks:(BOOL)callbacks
{
  callbacksCopy = callbacks;
  v45 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_availableSensors count])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v5 = _os_activity_create(&dword_1C241C000, "Stopping all sensors", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    [(ARSession *)self runningSensors];
    kdebug_trace();
    v6 = _ARLogSession_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v42 = v8;
      v43 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopping all sensors", buf, 0x16u);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = self->_availableSensors;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v10)
    {
      v11 = *v34;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v33 + 1) + 8 * v12++) setDelegate:0];
        }

        while (v10 != v12);
        v10 = [(NSArray *)v9 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v10);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = self->_availableSensors;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v14)
    {
      v15 = *v30;
      do
      {
        v16 = 0;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v29 + 1) + 8 * v16++) stop];
        }

        while (v14 != v16);
        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v14);
    }

    if (callbacksCopy)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = self->_availableSensors;
      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v38 count:16];
      if (v18)
      {
        v19 = *v26;
        do
        {
          v20 = 0;
          do
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v25 + 1) + 8 * v20);
            if (objc_opt_respondsToSelector())
            {
              [v21 waitForOutstandingCallbacks];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v38 count:16];
        }

        while (v18);
      }
    }

    [(ARSession *)self setRunningSensors:0, v25];
    [(ARSession *)self setPausedSensors:0];
    [(ARSession *)self runningSensors];
    kdebug_trace();
    v22 = _ARLogSession_0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138543618;
      v42 = v24;
      v43 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopped all sensors", buf, 0x16u);
    }

    os_activity_scope_leave(&state);
  }
}

- (BOOL)isPrimaryImageData:(id)data
{
  dataCopy = data;
  primaryVideoFormat = self->_primaryVideoFormat;
  v7 = 1;
  if (primaryVideoFormat)
  {
    captureDevicePosition = [(ARVideoFormat *)primaryVideoFormat captureDevicePosition];
    if (captureDevicePosition != [dataCopy cameraPosition] || objc_msgSend(dataCopy, "isHighResolution"))
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)sensor:(id)sensor didOutputSensorData:(id)data
{
  sensorCopy = sensor;
  dataCopy = data;
  [sensorCopy providedDataTypes];
  kdebug_trace();
  technique = [(ARSession *)self technique];
  secondaryTechnique = [(ARSession *)self secondaryTechnique];
  stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];
  if (self->_techniquesWantPredictedPoseForWideCam || ARDeviceSupportsJasper() && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v9 = objc_opt_new();
    configurationInternal = [(ARSession *)self configurationInternal];
    videoFormat = [configurationInternal videoFormat];
    [v9 setCameraPosition:{objc_msgSend(videoFormat, "captureDevicePosition")}];

    worldTrackingTechnique = self->_worldTrackingTechnique;
    [dataCopy timestamp];
    v13 = [(ARWorldTrackingTechnique *)worldTrackingTechnique predictedResultDataAtTimestamp:v9 context:?];
    v14 = [v13 ar_firstObjectPassingTest:&__block_literal_global_479];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = dataCopy;
      if (v14)
      {
        [v14 visionCameraTransform];
      }

      else
      {
        v16 = *MEMORY[0x1E69E9B18];
        v17 = *(MEMORY[0x1E69E9B18] + 16);
        v18 = *(MEMORY[0x1E69E9B18] + 32);
        v19 = *(MEMORY[0x1E69E9B18] + 48);
      }

      [v15 setVisionCameraTransform:{*&v16, *&v17, *&v18, *&v19}];
      [(ARDepthPointCloudCoalescer *)self->_depthPointCloudCoalescer addDepthPointCloudData:v15];
    }
  }

  else
  {
    v14 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = [technique processData:dataCopy];
    v30 = [secondaryTechnique processData:dataCopy];
    v31 = [stillImageRootTechnique processData:dataCopy];
    goto LABEL_44;
  }

  v20 = dataCopy;
  if ([(ARSession *)self isPrimaryImageData:v20])
  {
    [v20 timestamp];
    kdebug_trace();
  }

  if ([v20 cameraPosition] == 1)
  {
    cameraType = [v20 cameraType];
    v22 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(cameraType);

    if (v22)
    {
      if (ARDeviceSupportsJasper())
      {
        v23 = [(ARDepthPointCloudCoalescer *)self->_depthPointCloudCoalescer depthPointCloudWithPose:v14 imageData:v20];
        if (v23)
        {
          v24 = [[ARPointCloud alloc] initWithDepthPointCloud:v23];
          [v20 setPointCloud:v24];
        }

        if (v14)
        {
          [v14 visionCameraTransform];
        }

        else
        {
          v25 = *MEMORY[0x1E69E9B18];
          v26 = *(MEMORY[0x1E69E9B18] + 16);
          v27 = *(MEMORY[0x1E69E9B18] + 32);
          v28 = *(MEMORY[0x1E69E9B18] + 48);
        }

        [v20 setVisionTransform:{*&v25, *&v26, *&v27, *&v28}];
      }

      else if (v14)
      {
        [v14 visionCameraTransform];
        [v20 setVisionTransform:?];
      }
    }
  }

  if ([v20 isBackUltraWide])
  {
    v32 = v20;
    latestUltraWideImageData = self->_latestUltraWideImageData;
    self->_latestUltraWideImageData = v32;
  }

  else
  {
    latestUltraWideImageData = [v20 cameraType];
    if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(latestUltraWideImageData) && [v20 cameraPosition] == 1)
    {
      v34 = self->_latestUltraWideImageData;

      if (!v34)
      {
        goto LABEL_34;
      }

      [v20 setLatestUltraWideImage:self->_latestUltraWideImageData];
      [v20 timestamp];
      [(ARImageData *)self->_latestUltraWideImageData setTimestampOfSynchronizedWideImageData:?];
      latestUltraWideImageData = self->_latestUltraWideImageData;
      self->_latestUltraWideImageData = 0;
    }
  }

LABEL_34:
  if (![v20 isBackUltraWide])
  {
LABEL_38:
    if ([(ARSession *)self isPrimaryImageData:v20])
    {
      v37 = [technique processData:v20];
      [v20 setVisionData:0];
    }

    else if ([v20 isHighResolution])
    {
      stillImageProcessingQueue = self->_stillImageProcessingQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__ARSession_sensor_didOutputSensorData___block_invoke_2;
      block[3] = &unk_1E817BEC8;
      v87 = stillImageRootTechnique;
      v88 = v20;
      dispatch_async(stillImageProcessingQueue, block);
    }

    else
    {
      [v20 setSecondary:1];
      v39 = [secondaryTechnique processData:v20];
      v40 = [(ARRecordingTechniquePublic *)self->_recordingTechnique processData:v20];
    }

LABEL_44:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ARSession *)self _sessionDidOutputAudioData:dataCopy];
LABEL_80:
      kdebug_trace();
      goto LABEL_81;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = [dataCopy copy];
        [(ARSession *)self setLatestDeviceOrientationData:v47];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_80;
        }

        v47 = [dataCopy copy];
        [(ARSession *)self setLatestLocationData:v47];
      }

      goto LABEL_80;
    }

    v70 = technique;
    v41 = dataCopy;
    isSecondary = [v41 isSecondary];
    v43 = 296;
    if (isSecondary)
    {
      v43 = 304;
    }

    v44 = *(&self->super.isa + v43);
    if ([v44 schedulingActive] && !objc_msgSend(v41, "isHighResolution"))
    {
      captureFramesPerSecond = [v41 captureFramesPerSecond];
      configurationInternal2 = [(ARSession *)self configurationInternal];
      v63 = [configurationInternal2 isKindOfConfiguration:objc_opt_class()];

      if (v63)
      {
        captureFramesPerSecond = 60;
        v64 = 60 / [v41 captureFramesPerSecond];
      }

      else
      {
        v64 = 1;
      }

      objc_initWeak(&location, self);
      [v44 setExpectedFramesPerSecond:{-[ARSession _preferredRenderSyncFrameRateForCaptureFrameRate:](self, "_preferredRenderSyncFrameRateForCaptureFrameRate:", objc_msgSend(v41, "captureFramesPerSecond"))}];
      if (v64 >= 1)
      {
        for (i = 0; i != v64; ++i)
        {
          [v41 timestamp];
          v68 = 1.0 / captureFramesPerSecond * i + v67;
          kdebug_trace();
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __40__ARSession_sensor_didOutputSensorData___block_invoke_4;
          v73[3] = &unk_1E817CED8;
          objc_copyWeak(v75, &location);
          v75[1] = *&v68;
          v74 = v41;
          v75[2] = i;
          [v44 submitBlock:v73];

          objc_destroyWeak(v75);
        }
      }

      objc_destroyWeak(&location);
      goto LABEL_79;
    }

    technique2 = [(ARSession *)self technique];
    if ([v41 isSecondary])
    {
      secondaryTechnique2 = [(ARSession *)self secondaryTechnique];
    }

    else
    {
      if (![v41 isHighResolution])
      {
LABEL_61:
        if (technique2)
        {
          [v41 timestamp];
          kdebug_trace();
          _frameContextByConsumingPendingChanges = [(ARSession *)self _frameContextByConsumingPendingChanges];
          [_frameContextByConsumingPendingChanges setImageData:v41];
          latestDeviceOrientationData = [(ARSession *)self latestDeviceOrientationData];
          [_frameContextByConsumingPendingChanges setOrientationData:latestDeviceOrientationData];

          latestLocationData = [(ARSession *)self latestLocationData];
          [_frameContextByConsumingPendingChanges setLocationData:latestLocationData];

          [v41 timestamp];
          kdebug_trace();
          imageData = [_frameContextByConsumingPendingChanges imageData];
          configurationInternal3 = [(ARSession *)self configurationInternal];
          v54 = ARTimerFramesPerSecond(imageData, configurationInternal3);

          v55 = v54 / [v41 captureFramesPerSecond];
          v56 = 0;
          if (([v41 isHighResolution] & 1) == 0)
          {
            [(ARFrameUpdateTimer *)self->_frameUpdateTimer timeoutForNextFrameUpdateWithNumberOfInFlightContexts:[(ARFrameContextHandler *)self->_frameContextHandler numberOfInFlightContexts]];
            v56 = v57;
          }

          if (v55 == 1)
          {
            [v41 timestamp];
            kdebug_trace();
            [v41 timestamp];
            [technique2 requestResultDataAtTimestamp:_frameContextByConsumingPendingChanges context:? withTimeout:?];
          }

          else
          {
            resultDataPredictionQueue = self->_resultDataPredictionQueue;
            v77[0] = MEMORY[0x1E69E9820];
            v77[1] = 3221225472;
            v77[2] = __40__ARSession_sensor_didOutputSensorData___block_invoke_3;
            v77[3] = &unk_1E817CEB0;
            v82 = v55;
            v83 = v54;
            v78 = v41;
            v79 = technique2;
            v84 = v56;
            v85 = fmax(1.0 / v54 + -0.005, 0.0);
            v80 = _frameContextByConsumingPendingChanges;
            selfCopy = self;
            dispatch_async(resultDataPredictionQueue, v77);
          }
        }

        sensorCopy = v69;
LABEL_79:

        technique = v70;
        goto LABEL_80;
      }

      secondaryTechnique2 = [(ARSession *)self stillImageRootTechnique];
    }

    v48 = secondaryTechnique2;

    technique2 = v48;
    goto LABEL_61;
  }

  captureDeviceType = [(ARVideoFormat *)self->_primaryVideoFormat captureDeviceType];
  if ([captureDeviceType isEqualToString:*MEMORY[0x1E6986948]])
  {

    goto LABEL_38;
  }

  is6DofFaceTracking = [(ARSession *)self is6DofFaceTracking];

  if (is6DofFaceTracking)
  {
    goto LABEL_38;
  }

  if (self->_configuredForWorldTracking)
  {
    v58 = [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique processData:v20];
  }

  v59 = [(AREnvironmentTexturingTechnique *)self->_environmentTexturingTechnique processData:v20];
  v60 = [(ARRecordingTechniquePublic *)self->_recordingTechnique processData:v20];
  [v20 setVisionData:0];

LABEL_81:
}

uint64_t __40__ARSession_sensor_didOutputSensorData___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

void __40__ARSession_sensor_didOutputSensorData___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) >= 1)
  {
    v17 = v10;
    v18 = v9;
    v19 = v8;
    v20 = v7;
    v21 = v4;
    v22 = v3;
    v23 = v2;
    v24 = v1;
    v25 = v5;
    v26 = v6;
    v12 = 0;
    do
    {
      v13 = 1.0 / *(a1 + 72) * v12;
      [*(a1 + 32) timestamp];
      v15 = v14 + v13;
      if (v12)
      {
        v16 = [*(a1 + 40) predictedResultDataAtTimestamp:*(a1 + 48) context:v15];
        usleep((*(a1 + 88) * 1000000.0));
        [*(a1 + 56) technique:*(a1 + 40) didOutputResultData:v16 timestamp:*(a1 + 48) context:v15];
      }

      else
      {
        kdebug_trace();
        [*(a1 + 40) requestResultDataAtTimestamp:*(a1 + 48) context:v15 withTimeout:*(a1 + 80)];
      }

      ++v12;
    }

    while (v12 < *(a1 + 64));
  }
}

void __40__ARSession_sensor_didOutputSensorData___block_invoke_4(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v21 = a1;
    kdebug_trace();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = WeakRetained[69];
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v9 = [v8 providedDataTypes];
            if ((v9 & ~[WeakRetained runningSensors]) == 0)
            {
              v10 = [v8 currentData];
              if (v10)
              {
                v11 = [WeakRetained technique];
                v12 = [v11 processData:v10];

                v13 = [WeakRetained secondaryTechnique];
                v14 = [v13 processData:v10];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = [v10 copy];
                  [WeakRetained setLatestDeviceOrientationData:v15];
                }
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v5);
    }

    if ([*(v21 + 32) isSecondary])
    {
      [WeakRetained secondaryTechnique];
    }

    else
    {
      [WeakRetained technique];
    }
    v16 = ;
    if (v16)
    {
      kdebug_trace();
      v17 = [WeakRetained _frameContextByConsumingPendingChanges];
      [v17 setImageData:*(v21 + 32)];
      v18 = [WeakRetained latestDeviceOrientationData];
      [v17 setOrientationData:v18];

      v19 = [WeakRetained latestLocationData];
      [v17 setLocationData:v19];

      if (*(v21 + 56) < 1)
      {
        kdebug_trace();
        [v16 requestResultDataAtTimestamp:v17 context:*(v21 + 48)];
      }

      else
      {
        v20 = [v16 predictedResultDataAtTimestamp:v17 context:*(v21 + 48)];
        [WeakRetained technique:v16 didOutputResultData:v20 timestamp:v17 context:*(v21 + 48)];
      }
    }
  }

  else
  {
    v16 = _ARLogSession_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "Ignoring request result call, because session is nil", buf, 2u);
    }
  }
}

- (void)sensor:(id)sensor didFailWithError:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  sensorCopy = sensor;
  errorCopy = error;
  configurationInternal = [(ARSession *)self configurationInternal];
  if ([configurationInternal isKindOfConfiguration:objc_opt_class()])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_12;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    configurationInternal = [errorCopy underlyingErrors];
    v10 = [configurationInternal countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(configurationInternal);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 code] == 102)
          {
            if (_ARLogSensor_onceToken_8 != -1)
            {
              [ARSession sensor:didFailWithError:];
            }

            v15 = _ARLogSensor_logObj_8;
            if (os_log_type_enabled(_ARLogSensor_logObj_8, OS_LOG_TYPE_DEBUG))
            {
              v16 = v15;
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              *buf = 138543874;
              v24 = v18;
              v25 = 2048;
              selfCopy = self;
              v27 = 2112;
              v28 = v14;
              _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Restarting device orientation sensor with magnetic north reference frame due to %@.", buf, 0x20u);
            }

            [sensorCopy changeReferenceFrame:4];
            [(ARSessionMetrics *)self->_metrics recordTrueNorthUnavailable];

            goto LABEL_20;
          }
        }

        v11 = [configurationInternal countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  if ([errorCopy code] == 107)
  {
    [(ARSession *)self _sessionDidCaptureHighResolutionFrame:0 error:errorCopy];
  }

  else
  {
    [(ARSession *)self _sessionDidFailWithError:errorCopy];
  }

LABEL_20:
}

- (void)sensorDidPause:(id)pause
{
  v19 = *MEMORY[0x1E69E9840];
  pauseCopy = pause;
  v5 = _ARLogSession_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v16 = v7;
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: begin interruption", buf, 0x16u);
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__ARSession_sensorDidPause___block_invoke;
  block[3] = &unk_1E817BEC8;
  block[4] = self;
  v14 = pauseCopy;
  v9 = pauseCopy;
  dispatch_async(stateQueue, block);
  v10 = dispatch_time(0, 400000000);
  v11 = self->_stateQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__ARSession_sensorDidPause___block_invoke_3;
  v12[3] = &unk_1E817BFE8;
  v12[4] = self;
  dispatch_after(v10, v11, v12);
}

uint64_t __28__ARSession_sensorDidPause___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) pausedSensors])
  {
    [*(*(a1 + 32) + 592) sessionStopped];
    [*(a1 + 32) _getObservers];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v2 = v16 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = *v16;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v16 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v6 sessionWasInterrupted:*(a1 + 32)];
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v3);
    }

    v7 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, v7);
      v8 = [*(a1 + 32) delegateQueue];
      v9 = v8;
      if (!v8)
      {
        v9 = MEMORY[0x1E69E96A0];
        v10 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__ARSession_sensorDidPause___block_invoke_2;
      block[3] = &unk_1E817BDB0;
      objc_copyWeak(&v13, &location);
      block[4] = *(a1 + 32);
      dispatch_async(v9, block);
      if (!v8)
      {
      }

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  return [*(a1 + 32) setPausedSensors:{objc_msgSend(*(a1 + 32), "pausedSensors") | objc_msgSend(*(a1 + 40), "providedDataTypes")}];
}

void __28__ARSession_sensorDidPause___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sessionWasInterrupted:*(a1 + 32)];
}

void __28__ARSession_sensorDidPause___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) pausedSensors])
  {
    [*(a1 + 32) _interruptSession];
    v2 = _ARLogSession_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = *(a1 + 32);
      v9 = 138543618;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      v6 = "%{public}@ <%p>: interrupted";
LABEL_6:
      _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x16u);
    }
  }

  else
  {
    v2 = _ARLogSession_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v4 = NSStringFromClass(v7);
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v4;
      v11 = 2048;
      v12 = v8;
      v6 = "%{public}@ <%p>: cancel interruption";
      goto LABEL_6;
    }
  }
}

- (void)sensorDidRestart:(id)restart
{
  v16 = *MEMORY[0x1E69E9840];
  restartCopy = restart;
  v5 = _ARLogSession_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: end interruption", buf, 0x16u);
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__ARSession_sensorDidRestart___block_invoke;
  v10[3] = &unk_1E817BEC8;
  v10[4] = self;
  v11 = restartCopy;
  v9 = restartCopy;
  dispatch_async(stateQueue, v10);
}

void __30__ARSession_sensorDidRestart___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPausedSensors:{objc_msgSend(*(a1 + 32), "pausedSensors") & ~objc_msgSend(*(a1 + 40), "providedDataTypes")}];
  if (![*(a1 + 32) pausedSensors])
  {
    [*(a1 + 32) _endInterruption];
    v2 = *(a1 + 32);
    v3 = v2[74];
    v4 = [v2 configurationInternal];
    [v3 sessionStarted:v2 withConfiguration:v4];

    [*(a1 + 32) _getObservers];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v9 sessionInterruptionEnded:*(a1 + 32)];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v10 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, v10);
      v11 = [*(a1 + 32) delegateQueue];
      v12 = v11;
      if (!v11)
      {
        v12 = MEMORY[0x1E69E96A0];
        v13 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __30__ARSession_sensorDidRestart___block_invoke_2;
      block[3] = &unk_1E817BDB0;
      objc_copyWeak(&v15, &location);
      block[4] = *(a1 + 32);
      dispatch_async(v12, block);
      if (!v11)
      {
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __30__ARSession_sensorDidRestart___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sessionInterruptionEnded:*(a1 + 32)];
}

- (void)_sessionWillRunWithConfiguration:(id)configuration
{
  v16 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  _getObservers = [(ARSession *)self _getObservers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [_getObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_getObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 session:self willRunWithConfiguration:configurationCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_getObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_sessionRequestedRunWithConfiguration:(id)configuration options:(unint64_t)options
{
  v18 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  _getObservers = [(ARSession *)self _getObservers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [_getObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(_getObservers);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 session:self requestedRunWithConfiguration:configurationCopy options:options];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [_getObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_sessionDidUpdateFrame:(id)frame
{
  v33 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  [frameCopy timestamp];
  kdebug_trace();
  capturedImage = [frameCopy capturedImage];
  os_unfair_lock_lock_with_options();
  v6 = objc_autoreleasePoolPush();
  [(NSPointerArray *)self->_weakPixelBuffers ar_compactZeroedWeakPointers];
  if (![(NSPointerArray *)self->_weakPixelBuffers count]|| [(NSPointerArray *)self->_weakPixelBuffers pointerAtIndex:[(NSPointerArray *)self->_weakPixelBuffers count]- 1]!= capturedImage)
  {
    [(NSPointerArray *)self->_weakPixelBuffers addPointer:capturedImage];
  }

  objc_autoreleasePoolPop(v6);
  v7 = [(NSPointerArray *)self->_weakPixelBuffers count];
  os_unfair_lock_unlock(&self->_weakPixelBuffersLock);
  if (v7 < 0xB || self->_replaySensor)
  {
    [(ARSession *)self _getObservers];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v8 = v24 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v12 session:self didUpdateFrame:frameCopy];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    delegate = [(ARSession *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(location, delegate);
      delegateQueue = [(ARSession *)self delegateQueue];
      v15 = delegateQueue;
      if (!delegateQueue)
      {
        v15 = MEMORY[0x1E69E96A0];
        v16 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__ARSession__sessionDidUpdateFrame___block_invoke;
      block[3] = &unk_1E817CF00;
      objc_copyWeak(&v22, location);
      block[4] = self;
      v21 = frameCopy;
      dispatch_async(v15, block);
      if (!delegateQueue)
      {
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(location);
    }

    [frameCopy timestamp];
    kdebug_trace();
  }

  else
  {
    v17 = _ARLogSession_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *location = 138543874;
      *&location[4] = v19;
      v29 = 2048;
      selfCopy = self;
      v31 = 2048;
      v32 = v7;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: The delegate of ARSession is retaining %lu ARFrames. The camera will stop delivering camera images if the delegate keeps holding on to too many ARFrames. This could be a threading or memory management issue in the delegate and should be fixed.", location, 0x20u);
    }

    [frameCopy timestamp];
    kdebug_trace();
    kdebug_trace();
  }
}

void __36__ARSession__sessionDidUpdateFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didUpdateFrame:*(a1 + 40)];
}

- (void)_sessionDidCaptureHighResolutionFrame:(id)frame error:(id)error
{
  frameCopy = frame;
  errorCopy = error;
  dispatch_semaphore_wait(self->_pendingHiResFrameCaptureSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_pendingHiResFrameCaptureCompletionBlock)
  {
    self->_isHiResFrameCaptureInProgress = 0;
    v8 = MEMORY[0x1C691B4C0]();
    pendingHiResFrameCaptureCompletionBlock = self->_pendingHiResFrameCaptureCompletionBlock;
    self->_pendingHiResFrameCaptureCompletionBlock = 0;

    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
    if (v8)
    {
      delegateQueue = [(ARSession *)self delegateQueue];
      v11 = delegateQueue;
      if (!delegateQueue)
      {
        v11 = MEMORY[0x1E69E96A0];
        v12 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__ARSession__sessionDidCaptureHighResolutionFrame_error___block_invoke;
      block[3] = &unk_1E817CC78;
      v17 = v8;
      v15 = frameCopy;
      v16 = errorCopy;
      v13 = v8;
      dispatch_async(v11, block);
      if (!delegateQueue)
      {
      }
    }
  }

  else
  {
    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
  }
}

- (void)_sessionCameraDidChangeTrackingState:(id)state
{
  v37 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  [stateCopy trackingState];
  [stateCopy trackingStateReason];
  kdebug_trace();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1C241C000, "Tracking state changed", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v6 = _ARLogSession_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = ARTrackingStateToString([stateCopy trackingState]);
    v10 = ARTrackingStateReasonToString([stateCopy trackingStateReason]);
    *buf = 138544130;
    v30 = v8;
    v31 = 2048;
    selfCopy = self;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Tracking state changed: %@ reason: %@", buf, 0x2Au);
  }

  [(ARSession *)self _getObservers];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v11 = v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v12)
  {
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v15 session:self cameraDidChangeTrackingState:stateCopy];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v18 = delegateQueue;
    if (!delegateQueue)
    {
      v18 = MEMORY[0x1E69E96A0];
      v19 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__ARSession__sessionCameraDidChangeTrackingState___block_invoke;
    block[3] = &unk_1E817CF00;
    objc_copyWeak(&v22, buf);
    block[4] = self;
    v21 = stateCopy;
    dispatch_async(v18, block);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  [stateCopy trackingState];
  [stateCopy trackingStateReason];
  kdebug_trace();

  os_activity_scope_leave(&state);
}

void __50__ARSession__sessionCameraDidChangeTrackingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) cameraDidChangeTrackingState:*(a1 + 40)];
}

- (void)_sessionDidFailWithError:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = _ARLogSession_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543874;
    v26 = v7;
    v27 = 2048;
    selfCopy = self;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: did fail with error: %@", buf, 0x20u);
  }

  [(ARSessionMetrics *)self->_metrics reportSessionFailure:errorCopy];
  [errorCopy code];
  kdebug_trace();
  [(ARSession *)self pause];
  [(ARSession *)self _getObservers];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v8 = v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 session:self didFailWithError:errorCopy];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v15 = delegateQueue;
    if (!delegateQueue)
    {
      v15 = MEMORY[0x1E69E96A0];
      v16 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__ARSession__sessionDidFailWithError___block_invoke;
    block[3] = &unk_1E817CF00;
    objc_copyWeak(&v19, buf);
    block[4] = self;
    v18 = errorCopy;
    dispatch_async(v15, block);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  [errorCopy code];
  kdebug_trace();
}

void __38__ARSession__sessionDidFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)_sessionDidAddAnchors:(id)anchors
{
  v30 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  [anchorsCopy count];
  kdebug_trace();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1C241C000, "Did add anchors", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  [(ARSession *)self _getObservers];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v6 = v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 session:self didAddAnchors:anchorsCopy];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = ARAnchorsForPublicDelegate(anchorsCopy);
  if ([v11 count])
  {
    delegate = [(ARSession *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, delegate);
      delegateQueue = [(ARSession *)self delegateQueue];
      v14 = delegateQueue;
      if (!delegateQueue)
      {
        v14 = MEMORY[0x1E69E96A0];
        v15 = MEMORY[0x1E69E96A0];
      }

      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __35__ARSession__sessionDidAddAnchors___block_invoke;
      v19 = &unk_1E817CF00;
      objc_copyWeak(&v22, &location);
      selfCopy = self;
      v21 = v11;
      dispatch_async(v14, &v16);
      if (!delegateQueue)
      {
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  [anchorsCopy count];
  kdebug_trace();

  os_activity_scope_leave(&state);
}

void __35__ARSession__sessionDidAddAnchors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didAddAnchors:*(a1 + 40)];
}

- (void)_sessionDidUpdateAnchors:(id)anchors
{
  v28 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  [anchorsCopy count];
  kdebug_trace();
  [(ARSession *)self _getObservers];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v5 = v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 session:self didUpdateAnchors:anchorsCopy];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v10 = ARAnchorsForPublicDelegate(anchorsCopy);
  if ([v10 count])
  {
    delegate = [(ARSession *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, delegate);
      delegateQueue = [(ARSession *)self delegateQueue];
      v13 = delegateQueue;
      if (!delegateQueue)
      {
        v13 = MEMORY[0x1E69E96A0];
        v14 = MEMORY[0x1E69E96A0];
      }

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __38__ARSession__sessionDidUpdateAnchors___block_invoke;
      v18 = &unk_1E817CF00;
      objc_copyWeak(&v21, &location);
      selfCopy = self;
      v20 = v10;
      dispatch_async(v13, &v15);
      if (!delegateQueue)
      {
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  [anchorsCopy count];
  kdebug_trace();
}

void __38__ARSession__sessionDidUpdateAnchors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didUpdateAnchors:*(a1 + 40)];
}

- (void)_sessionDidRemoveAnchors:(id)anchors
{
  v28 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  [anchorsCopy count];
  kdebug_trace();
  [(ARSession *)self _getObservers];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v5 = v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 session:self didRemoveAnchors:anchorsCopy];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v10 = ARAnchorsForPublicDelegate(anchorsCopy);
  if ([v10 count])
  {
    delegate = [(ARSession *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, delegate);
      delegateQueue = [(ARSession *)self delegateQueue];
      v13 = delegateQueue;
      if (!delegateQueue)
      {
        v13 = MEMORY[0x1E69E96A0];
        v14 = MEMORY[0x1E69E96A0];
      }

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __38__ARSession__sessionDidRemoveAnchors___block_invoke;
      v18 = &unk_1E817CF00;
      objc_copyWeak(&v21, &location);
      selfCopy = self;
      v20 = v10;
      dispatch_async(v13, &v15);
      if (!delegateQueue)
      {
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  [anchorsCopy count];
  kdebug_trace();
}

void __38__ARSession__sessionDidRemoveAnchors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didRemoveAnchors:*(a1 + 40)];
}

- (void)_sessionDidUpdateExternalAnchors:(id)anchors
{
  v16 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  [anchorsCopy count];
  kdebug_trace();
  _getObservers = [(ARSession *)self _getObservers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [_getObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_getObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 session:self didUpdateExternalAnchors:anchorsCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_getObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [anchorsCopy count];
  kdebug_trace();
}

- (void)_sessionShouldAttemptRelocalization
{
  v31 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __48__ARSession__sessionShouldAttemptRelocalization__block_invoke;
  v25[3] = &unk_1E817CF28;
  v25[4] = self;
  objc_copyWeak(&v26, &location);
  v25[5] = v27;
  v3 = MEMORY[0x1C691B4C0](v25);
  [(ARSession *)self _getObservers];
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  obj = v21 = 0u;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          stateQueue = self->_stateQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __48__ARSession__sessionShouldAttemptRelocalization__block_invoke_511;
          block[3] = &unk_1E817CC78;
          v9 = v3;
          block[5] = self;
          v20 = v9;
          block[4] = v7;
          dispatch_async(stateQueue, block);
        }

        if (objc_opt_respondsToSelector())
        {
          [v7 sessionShouldAttemptRelocalization:self completion:v3];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v4);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&from, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v12 = delegateQueue;
    if (!delegateQueue)
    {
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__ARSession__sessionShouldAttemptRelocalization__block_invoke_2;
    v15[3] = &unk_1E817CF50;
    v16 = v3;
    objc_copyWeak(&v17, &from);
    v15[4] = self;
    dispatch_async(v12, v15);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(&v26);
  _Block_object_dispose(v27, 8);
  objc_destroyWeak(&location);
}

void __48__ARSession__sessionShouldAttemptRelocalization__block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  v6 = *(*(a1 + 40) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    if (WeakRetained)
    {
      *(v6 + 24) = 1;
      if ([WeakRetained relocalizing])
      {
        v7 = _ARLogSession_0();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
        if (a2)
        {
          if (v8)
          {
            v9 = objc_opt_class();
            v10 = NSStringFromClass(v9);
            v11 = *(a1 + 32);
            v17 = 138543618;
            v18 = v10;
            v19 = 2048;
            v20 = v11;
            _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: developer asked for relocalization", &v17, 0x16u);
          }

          v5[272] = 1;
        }

        else
        {
          if (v8)
          {
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            v14 = *(a1 + 32);
            v17 = 138543618;
            v18 = v13;
            v19 = 2048;
            v20 = v14;
            _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: developer specifically declined relocalization", &v17, 0x16u);
          }

          v15 = [MEMORY[0x1E695DF00] date];
          v16 = *(v5 + 33);
          *(v5 + 33) = v15;
        }
      }
    }
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 136));
}

uint64_t __48__ARSession__sessionShouldAttemptRelocalization__block_invoke_511(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) sessionShouldAttemptRelocalization:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void __48__ARSession__sessionShouldAttemptRelocalization__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v2 + 16))(v2, [WeakRetained sessionShouldAttemptRelocalization:*(a1 + 32)]);
}

- (void)_sessionDidOutputAudioData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  [dataCopy timestamp];
  kdebug_trace();
  [(ARSession *)self _getObservers];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 session:self didOutputAudioSampleBuffer:{objc_msgSend(dataCopy, "sampleBuffer")}];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v12 = delegateQueue;
    if (!delegateQueue)
    {
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__ARSession__sessionDidOutputAudioData___block_invoke;
    v14[3] = &unk_1E817CF00;
    objc_copyWeak(&v16, &location);
    v14[4] = self;
    v15 = dataCopy;
    dispatch_async(v12, v14);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __40__ARSession__sessionDidOutputAudioData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didOutputAudioSampleBuffer:{objc_msgSend(*(a1 + 40), "sampleBuffer")}];
}

- (void)_sessionDidOutputCollaborationData:(id)data
{
  v33 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = _ARLogSession_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromARCollaborationData(dataCopy);
    *buf = 138543874;
    v28 = v7;
    v29 = 2048;
    selfCopy = self;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: didOutputCollaborationData: %@", buf, 0x20u);
  }

  [dataCopy timestamp];
  [dataCopy vioDataType];
  vioData = [dataCopy vioData];
  [vioData length];
  kdebug_trace();

  [(ARSession *)self _getObservers];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v10 = v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 session:self didOutputCollaborationData:dataCopy];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v17 = delegateQueue;
    if (!delegateQueue)
    {
      v17 = MEMORY[0x1E69E96A0];
      v18 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__ARSession__sessionDidOutputCollaborationData___block_invoke;
    block[3] = &unk_1E817CF00;
    objc_copyWeak(&v21, buf);
    block[4] = self;
    v20 = dataCopy;
    dispatch_async(v17, block);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  [(ARRecordingTechniquePublic *)self->_recordingTechnique recordCollaborationData:dataCopy localSession:1];
  [dataCopy timestamp];
  kdebug_trace();
}

void __48__ARSession__sessionDidOutputCollaborationData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didOutputCollaborationData:*(a1 + 40)];
}

- (void)_sessionDidChangeGeoTrackingStatus:(id)status
{
  v27 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  [statusCopy state];
  [statusCopy stateReason];
  [statusCopy accuracy];
  kdebug_trace();
  [(ARSession *)self _getObservers];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 session:self didChangeGeoTrackingStatus:statusCopy];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v12 = delegateQueue;
    if (!delegateQueue)
    {
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __48__ARSession__sessionDidChangeGeoTrackingStatus___block_invoke;
    v17 = &unk_1E817CF00;
    objc_copyWeak(&v20, &location);
    selfCopy = self;
    v19 = statusCopy;
    dispatch_async(v12, &v14);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  [statusCopy state];
  [statusCopy stateReason];
  [statusCopy accuracy];
  kdebug_trace();
}

void __48__ARSession__sessionDidChangeGeoTrackingStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didChangeGeoTrackingStatus:*(a1 + 40)];
}

- (void)_sessionDidUpdateSpatialMappingPointClouds:(id)clouds
{
  v16 = *MEMORY[0x1E69E9840];
  cloudsCopy = clouds;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 session:self didUpdateSpatialMappingPointClouds:{cloudsCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)technique:(id)technique didChangeState:(int64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  if (state == 3)
  {
    v5 = [MEMORY[0x1E696AFB0] ar_UUIDWithIntegerValue:{objc_msgSend(technique, "vioSessionIdentifier")}];
    [(ARSession *)self setIdentifier:v5];

    v6 = _ARLogSession_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      identifier = [(ARSession *)self identifier];
      v10 = 138543874;
      v11 = v8;
      v12 = 2048;
      selfCopy = self;
      v14 = 2112;
      v15 = identifier;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: identifier changed to %@", &v10, 0x20u);
    }
  }
}

- (void)technique:(id)technique didOutputCollaborationData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  dataCopy = data;
  v8 = _ARLogSession_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromARCollaborationData(dataCopy);
    v12 = 138544130;
    v13 = v10;
    v14 = 2048;
    selfCopy = self;
    v16 = 2048;
    v17 = techniqueCopy;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Technique (%p) didOutputCollaborationData: %@", &v12, 0x2Au);
  }

  if ([dataCopy vioDataType] == 1 || objc_msgSend(dataCopy, "vioDataType") == 3)
  {
    dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    [(ARFrameContextHandler *)self->_frameContextHandler addCollaborationData:dataCopy];
    dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
  }

  else
  {
    [(ARSession *)self _sessionDidOutputCollaborationData:dataCopy];
  }
}

- (BOOL)is6DofFaceTracking
{
  configurationInternal = [(ARSession *)self configurationInternal];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    configurationInternal2 = [(ARSession *)self configurationInternal];
    templateConfiguration = [configurationInternal2 templateConfiguration];

    configurationInternal = templateConfiguration;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isWorldTrackingEnabled = [configurationInternal isWorldTrackingEnabled];
  }

  else
  {
    isWorldTrackingEnabled = 0;
  }

  return isWorldTrackingEnabled;
}

- (BOOL)isUserFaceTracking
{
  configurationInternal = [(ARSession *)self configurationInternal];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    configurationInternal2 = [(ARSession *)self configurationInternal];
    templateConfiguration = [configurationInternal2 templateConfiguration];

    configurationInternal = templateConfiguration;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userFaceTrackingEnabled = [configurationInternal userFaceTrackingEnabled];
  }

  else
  {
    userFaceTrackingEnabled = 0;
  }

  return userFaceTrackingEnabled;
}

- (void)_saveGraphFileInFileName:(id *)name
{
  v35 = *MEMORY[0x1E69E9840];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.configuration.saveDotGraph"])
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:@"digraph g { "];
    [array addObject:@"node [shape=record]"];
    technique = [(ARSession *)self technique];
    [technique dotGraphWithLines:array rootName:@"Primary"];

    stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];
    [stillImageRootTechnique dotGraphWithLines:array rootName:@"HighRes"];

    [array addObject:@"}"];
    v8 = [array componentsJoinedByString:@"\n"];
    v9 = NSTemporaryDirectory();
    configurationInternal = [(ARSession *)self configurationInternal];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v9 stringByAppendingFormat:@"%@.dot", v12];

    v28 = 0;
    [v8 writeToFile:v13 atomically:1 encoding:4 error:&v28];
    v14 = v28;
    if (!v14)
    {
      v23 = _ARLogGeneral_9();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138543874;
        v30 = v25;
        v31 = 2048;
        selfCopy3 = self;
        v33 = 2114;
        v34 = v13;
        _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Graph: Successfully wrote the configuration's dot file to '%{public}@'", buf, 0x20u);
      }

      if (name)
      {
        v26 = v13;
        *name = v13;
      }

      goto LABEL_16;
    }

    if (ARShouldUseLogTypeError_onceToken_21 != -1)
    {
      [ARSession runWithConfiguration:options:];
    }

    v15 = ARShouldUseLogTypeError_internalOSVersion_21;
    v16 = _ARLogGeneral_9();
    v17 = v16;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138543874;
        v30 = v19;
        v31 = 2048;
        selfCopy3 = self;
        v33 = 2112;
        v34 = v14;
        v20 = "%{public}@ <%p>: Graph: Could not write dot graph to file. Error: %@";
        v21 = v17;
        v22 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v21, v22, v20, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v19 = NSStringFromClass(v27);
      *buf = 138543874;
      v30 = v19;
      v31 = 2048;
      selfCopy3 = self;
      v33 = 2112;
      v34 = v14;
      v20 = "Error: %{public}@ <%p>: Graph: Could not write dot graph to file. Error: %@";
      v21 = v17;
      v22 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

LABEL_16:
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end