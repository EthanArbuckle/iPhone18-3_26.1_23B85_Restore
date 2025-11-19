@interface ARWorldTrackingTechnique
+ (BOOL)isSupported;
+ (BOOL)supportsVideoResolution:(CGSize)a3 forDeviceType:(id)a4;
- (ARWorldMap)serializeWorldMapWithReferenceOrigin:(double)a3;
- (ARWorldTrackingOptions)options;
- (ARWorldTrackingTechnique)init;
- (ARWorldTrackingTechnique)initWithOptions:(id)a3;
- (BOOL)deterministicMode;
- (BOOL)isEqual:(id)a3;
- (BOOL)querySceneReconstructionOccupancyWithPoints:(id)a3 callback:(id)a4;
- (BOOL)reconfigurableFrom:(id)a3;
- (__n128)_compensationMatrixForBravoSession;
- (__n128)_compensationMatrixForWidePlusUWSessionAndTrackingCameraID:(int)a3;
- (__n128)setReconstructionFrameBundleToWorld:(__n128)a3;
- (id).cxx_construct;
- (id)_featurePointDataFromSLAMState:(const CV3DSLAMStateContext *)a3;
- (id)_fullDescription;
- (id)getObservers;
- (id)predictedResultDataAtTimestamp:(double)a3 context:(id)a4;
- (id)processData:(id)a3;
- (id)raycast:(id)a3;
- (id)raycastResultFrom:(CV3DHitTestResult *)a3;
- (id)resultDataClasses;
- (id)serializeSurfaceData;
- (id)trackedRaycast:(id)a3 updateHandler:(id)a4;
- (int)_updatePoseData:(id)a3 forTimeStamp:(double)a4 updateTrackingState:(BOOL)a5;
- (int)extentCheckFromConfiguration;
- (int64_t)_initializeSLAMAndPredictorHandle;
- (int64_t)_mappingStatusFromMapSize:(int)a3 keyframeQuality:(int)a4 isTrackingMap:(BOOL)a5 timestamp:(double)a6;
- (int64_t)vioHandleState;
- (shared_ptr<PlaneDetectionSession>)planeDetectionSession;
- (shared_ptr<RaycastSession>)raycastSession;
- (uint64_t)_compensationMatrixForTrackingCameraID:(uint64_t)a3;
- (unint64_t)_sessionType;
- (unint64_t)requiredSensorDataTypes;
- (unsigned)CV3DSLAMJasperPointCloudProjectorModeFromAVTimeOfFlightProjectorMode:(int64_t)a3;
- (unsigned)_trackingCameraID:(CV3DSLAMStateContext *)a3;
- (void)_configureMeshPlaneHarmonization;
- (void)_didFailWithError:(id)a3;
- (void)_handleCV3DError:(__CFError *)a3 withDescription:(id)a4 failTechnique:(BOOL)a5;
- (void)_handlePlaneDetectionCallback:(CV3DPlaneDetectionPlaneList *)a3;
- (void)_handleRaycastResultCallback:(CV3DRaycastResultMap *)a3;
- (void)_handleSLAMError:(id)a3;
- (void)_handleSingleShotPlaneDetectionCallback:(CV3DPlaneDetectionSingleShotPlaneList *)a3;
- (void)_initializeSurfaceDetection:(const PlaneDetectionConfiguration *)a3;
- (void)_postProcessNonSynchronousDataForSceneUnderstanding:(id)a3;
- (void)_pushWTResultDataForTimestamp:(double)a3;
- (void)_reconfigureSceneReconstruction;
- (void)_removeAllMeshAnchors;
- (void)_reportCollaborationData:(id)a3 type:(unsigned __int8)a4 metadata:(const void *)a5;
- (void)_resetSurfaceDetection;
- (void)_saveExtrinsicsForBravoCamSessionFromImage:(id)a3;
- (void)_saveExtrinsicsForWidePlusUWSessionFromImage:(id)a3;
- (void)_saveExtrinsicsFromImage:(id)a3;
- (void)_setupSceneReconstruction;
- (void)_startSceneReconstruction;
- (void)_updateTrackingState:(id)a3 slamState:(const CV3DSLAMStateContext *)a4;
- (void)_updateVIOLineDetectionPolicy;
- (void)addObserver:(id)a3;
- (void)addReferenceAnchors:(id)a3;
- (void)annotateDepth:(id)a3 withSemantics:(id)a4 toTargetSemanticsImage:(__CVBuffer *)a5 targetConfidenceBuffer:(__CVBuffer *)a6 targetUncertaintyBuffer:(__CVBuffer *)a7 useGpu:(BOOL)a8;
- (void)clearMap;
- (void)dealloc;
- (void)didReceiveKeyframesUpdatedCallback:(CV3DReconKeyframeList *)a3;
- (void)didUpdateRaycastResult:(CV3DHitTestResults *)a3;
- (void)invalidateAllRaycasts;
- (void)loadSurfaceData:(id)a3;
- (void)mergeResultData:(id)a3 intoData:(id)a4 context:(id)a5;
- (void)onMetadataCallback:(CV3DSLAMStateContext *)a3;
- (void)prepare:(BOOL)a3;
- (void)prepareResultData:(id)a3 forContext:(id)a4;
- (void)pushCollaborationData:(id)a3;
- (void)pushToHitTestingDepth:(id)a3 pose:(id)a4;
- (void)pushToSceneUnderstandingDepth:(id)a3 segmentation:(id)a4 pose:(id)a5;
- (void)pushToSceneUnderstandingSegmentation:(id)a3 pose:(id)a4;
- (void)reconfigureFrom:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removePlanesByUUIDs:(id)a3;
- (void)removeReferenceAnchors:(id)a3;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4;
- (void)resetSceneReconstruction;
- (void)sceneReconstructionHandler:(id)a3 didFailWithError:(id)a4;
- (void)sceneReconstructionHandler:(id)a3 didOutputKeyframeList:(CV3DReconKeyframeList *)a4 withTimestamp:(double)a5;
- (void)sceneReconstructionHandler:(id)a3 didOutputMeshList:(CV3DReconMeshList *)a4 withTimestamp:(double)a5;
- (void)setPlaneDetectionSession:(shared_ptr<PlaneDetectionSession>)a3;
- (void)setRaycastSession:(shared_ptr<RaycastSession>)a3;
- (void)setReferenceOriginTransform:(__n128)a3;
- (void)stopAllRaycasts;
- (void)stopRaycast:(id)a3;
- (void)updateSurfaceDetectionConfiguration;
@end

@implementation ARWorldTrackingTechnique

+ (BOOL)isSupported
{
  if (+[ARWorldTrackingTechnique isSupported]::onceToken != -1)
  {
    +[ARWorldTrackingTechnique isSupported];
  }

  return +[ARWorldTrackingTechnique isSupported]::supported;
}

void __39__ARWorldTrackingTechnique_isSupported__block_invoke()
{
  if (IsCV3DVIOVideoModeSupported(1))
  {
    +[ARWorldTrackingTechnique isSupported]::supported = 1;
    return;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
  }

  v0 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v1 = _ARLogGeneral();
  v2 = v1;
  if (v0 == 1)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v3 = "ARWorldTracking is not supported on this device. VIO is video mode supported returned false.";
      v4 = &v8;
      v5 = v2;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v5, v6, v3, v4, 2u);
    }
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v7 = 0;
    v3 = "Error: ARWorldTracking is not supported on this device. VIO is video mode supported returned false.";
    v4 = &v7;
    v5 = v2;
    v6 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }
}

+ (BOOL)supportsVideoResolution:(CGSize)a3 forDeviceType:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    +[ARWorldTrackingTechnique supportsVideoResolution:forDeviceType:];
  }

  if ((atomic_load_explicit(&qword_1EBF41CB8, memory_order_acquire) & 1) == 0)
  {
    +[ARWorldTrackingTechnique supportsVideoResolution:forDeviceType:];
  }

  if (+[ARWorldTrackingTechnique supportsVideoResolution:forDeviceType:]::onceToken != -1)
  {
    +[ARWorldTrackingTechnique supportsVideoResolution:forDeviceType:];
  }

  if (*MEMORY[0x1E6986950] == v6 && (*&xmmword_1EBF41CC0 == width ? (v7 = *(&xmmword_1EBF41CC0 + 1) == height) : (v7 = 0), v7) || (v8 = *MEMORY[0x1E6986948], *MEMORY[0x1E6986948] == v6) && (*&qword_1EBF41CD0 == width ? (v9 = *algn_1EBF41CD8 == height) : (v9 = 0), v9))
  {
    v11 = 1;
  }

  else if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v6))
  {
    if (width == 640.0 && height == 480.0)
    {
      v10 = 0;
LABEL_42:
      v11 = IsCV3DVIOVideoModeSupported(v10);
      goto LABEL_43;
    }

    if (width == 1280.0 && height == 720.0)
    {
      v10 = 1;
      goto LABEL_42;
    }

    if (width == 1440.0 && height == 1080.0)
    {
      v10 = 4;
      goto LABEL_42;
    }

    if (width == 1920.0 && height == 1080.0)
    {
      v10 = 2;
      goto LABEL_42;
    }

    v11 = 0;
    if (width == 1920.0 && height == 1440.0)
    {
      v10 = 3;
      goto LABEL_42;
    }
  }

  else if (v8 == v6)
  {
    if (width == 640.0 && height == 480.0)
    {
      v10 = 5;
      goto LABEL_42;
    }

    v11 = 0;
    if (width == 1920.0 && height == 1440.0)
    {
      v10 = 6;
      goto LABEL_42;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_43:

  return v11;
}

void __66__ARWorldTrackingTechnique_supportsVideoResolution_forDeviceType___block_invoke()
{
  v0 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.calibrationParameters.back.wide"];
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [v0 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageWidth];
      [v1 doubleValue];
      v3 = v2;

      v4 = [v0 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageHeight];
      [v4 doubleValue];
      v6 = v5;

      *&xmmword_1EBF41CC0 = v3;
      *(&xmmword_1EBF41CC0 + 1) = v6;
    }
  }

  v15 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.calibrationParameters.back.ultrawide"];

  v7 = v15;
  if (v15)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v15;
    if (isKindOfClass)
    {
      v9 = [v15 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageWidth];
      [v9 doubleValue];
      v11 = v10;

      v12 = [v15 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageHeight];
      [v12 doubleValue];
      v14 = v13;

      qword_1EBF41CD0 = v11;
      *algn_1EBF41CD8 = v14;
      v7 = v15;
    }
  }
}

- (ARWorldTrackingTechnique)init
{
  v3 = objc_opt_new();
  v4 = [(ARWorldTrackingTechnique *)self initWithOptions:v3];

  return v4;
}

- (ARWorldTrackingTechnique)initWithOptions:(id)a3
{
  v110 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v103.receiver = self;
  v103.super_class = ARWorldTrackingTechnique;
  v5 = [(ARImageBasedTechnique *)&v103 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v6;

    v8 = dispatch_semaphore_create(1);
    observersSemaphore = v5->_observersSemaphore;
    v5->_observersSemaphore = v8;

    v10 = [v4 copy];
    mutableOptions = v5->_mutableOptions;
    v5->_mutableOptions = v10;

    v12 = dispatch_semaphore_create(1);
    resultSemaphore = v5->_resultSemaphore;
    v5->_resultSemaphore = v12;

    v14 = dispatch_semaphore_create(1);
    sessionHandleStateSemaphore = v5->_sessionHandleStateSemaphore;
    v5->_sessionHandleStateSemaphore = v14;

    v5->_surfaceDetectionSessionLock._os_unfair_lock_opaque = 0;
    v5->_raycastSessionLock._os_unfair_lock_opaque = 0;
    if ([objc_opt_class() isSupported])
    {
      v5->_lastRelocalizationTimestamp = 0.0;
      v5->_relocalizationState = 0;
      v5->_wasEverInNominalState = 0;
      v16 = [MEMORY[0x1E695DFA8] set];
      anchorsReceived = v5->_anchorsReceived;
      v5->_anchorsReceived = v16;

      v18 = [MEMORY[0x1E695DFA8] set];
      participantAnchors = v5->_participantAnchors;
      v5->_participantAnchors = v18;

      v5->_participantAnchorsEnabled = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.participantAnchors"];
      v5->_resultLatency = 0.008;
      v20 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.worldTracking.resultLatency"];
      v101 = v20;
      if (v20)
      {
        [(ARWorldTrackingTechnique *)v20 doubleValue];
        v5->_resultLatency = v21 * 0.001;
      }

      v22 = _ARLogTechnique();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = v5->_resultLatency * 1000.0;
        *buf = 138543874;
        v105 = v24;
        v106 = 2048;
        v107 = v5;
        v108 = 2048;
        *&v109 = v25;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "%{public}@ <%p>: World tracking result latency %fms", buf, 0x20u);
      }

      CV3DGetVersionInfo();
      v26 = _ARLogTechnique();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544386;
        v105 = v28;
        v106 = 2048;
        v107 = v5;
        v108 = 1024;
        LODWORD(v109) = 0;
        WORD2(v109) = 1024;
        *(&v109 + 6) = 0;
        WORD5(v109) = 1024;
        HIDWORD(v109) = 0;
        _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: AppleCV3D version %u.%u.%u", buf, 0x28u);
      }

      v5->_sessionHandleState = 1;
      v29 = _ARLogTechnique();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        predictorHandle = v5->_predictorHandle;
        *buf = 138543874;
        v105 = v31;
        v106 = 2048;
        v107 = v5;
        v108 = 2048;
        *&v109 = predictorHandle;
        _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Created pose predictor handle: %p", buf, 0x20u);
      }

      v33 = [(ARWorldTrackingOptions *)v5->_mutableOptions imageSensorSettings];
      v34 = [v33 videoFormat];
      v102 = [v34 captureDeviceType];

      if (v102)
      {
        v35 = [(ARWorldTrackingOptions *)v5->_mutableOptions cameraIdForCaptureDeviceType:?];
      }

      else
      {
        v35 = 0;
      }

      v5->_visualizationCameraID = v35;
      v37 = _ARLogTechnique();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        visualizationCameraID = v5->_visualizationCameraID;
        *buf = 138544130;
        v105 = v39;
        v106 = 2048;
        v107 = v5;
        v108 = 1024;
        LODWORD(v109) = visualizationCameraID;
        WORD2(v109) = 2112;
        *(&v109 + 6) = v102;
        _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking visualization camera identifier: %u, visualization capture device type: %@", buf, 0x26u);
      }

      v5->_useFixedIntrinsics = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.fixedIntrinsics"];
      v41 = _ARLogTechnique();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        useFixedIntrinsics = v5->_useFixedIntrinsics;
        *buf = 138543874;
        v105 = v43;
        if (useFixedIntrinsics)
        {
          v45 = @"fixed";
        }

        else
        {
          v45 = @"varying";
        }

        v106 = 2048;
        v107 = v5;
        v108 = 2112;
        *&v109 = v45;
        _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking will use %@ intrinsics", buf, 0x20u);
      }

      v5->_shouldPushVisionDataIntrinsics = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.pushVisionDataIntrinsics"];
      v46 = _ARLogTechnique();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        shouldPushVisionDataIntrinsics = v5->_shouldPushVisionDataIntrinsics;
        *buf = 138543874;
        v105 = v48;
        if (shouldPushVisionDataIntrinsics)
        {
          v50 = &stru_1F4208A80;
        }

        else
        {
          v50 = @"not ";
        }

        v106 = 2048;
        v107 = v5;
        v108 = 2112;
        *&v109 = v50;
        _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking will %@push vision data intrinsics", buf, 0x20u);
      }

      v5->_shouldUseFullResolutionVisionDataIntrinsics = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.useFullResolutionVisionDataIntrinsics"];
      v51 = _ARLogTechnique();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        shouldUseFullResolutionVisionDataIntrinsics = v5->_shouldUseFullResolutionVisionDataIntrinsics;
        *buf = 138543874;
        v105 = v53;
        if (shouldUseFullResolutionVisionDataIntrinsics)
        {
          v55 = &stru_1F4208A80;
        }

        else
        {
          v55 = @"not ";
        }

        v106 = 2048;
        v107 = v5;
        v108 = 2112;
        *&v109 = v55;
        _os_log_impl(&dword_1C241C000, v51, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking will %@push scale vision intrinsics for full resolution", buf, 0x20u);
      }

      [ARKitUserDefaults doubleForKey:@"com.apple.arkit.worldtracking.minVergenceAngle"];
      v57 = v56;
      v5->_minVergenceAngleCosine = cos(v56 * 3.14159265 / 180.0);
      v58 = _ARLogTechnique();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        *buf = 138543874;
        v105 = v60;
        v106 = 2048;
        v107 = v5;
        v108 = 2048;
        *&v109 = v57;
        _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking will use %.03f° as minimum vergence angle threshold", buf, 0x20u);
      }

      v5->_allowPoseGraphUpdates = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.poseGraphUpdates"];
      v61 = _ARLogTechnique();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        allowPoseGraphUpdates = v5->_allowPoseGraphUpdates;
        *buf = 138543874;
        v105 = v63;
        if (allowPoseGraphUpdates)
        {
          v65 = @"allowed";
        }

        else
        {
          v65 = @"disallowed";
        }

        v106 = 2048;
        v107 = v5;
        v108 = 2112;
        *&v109 = v65;
        _os_log_impl(&dword_1C241C000, v61, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking pose graph update custom setting: %@", buf, 0x20u);
      }

      v66 = v5->_mutableOptions;
      v67 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.planeEstimation.minDetectionCount"];
      v68 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.planeEstimation.minVergenceAngle"];
      v69 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.planeEstimation.lineFeaturesAlwaysOn"];
      v70 = [(ARWorldTrackingTechnique *)v5 deterministicMode];
      v71 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.planeEstimation.detectionMethod"];
      options = v5->_surfaceDetectionParametrization.options;
      v5->_surfaceDetectionParametrization.options = v66;

      detectionCountUserDefaultValue = v5->_surfaceDetectionParametrization.detectionCountUserDefaultValue;
      v5->_surfaceDetectionParametrization.detectionCountUserDefaultValue = v67;

      minVergenceAngleDegreesUserDefaultValue = v5->_surfaceDetectionParametrization.minVergenceAngleDegreesUserDefaultValue;
      v5->_surfaceDetectionParametrization.minVergenceAngleDegreesUserDefaultValue = v68;

      lineFeaturesAlwaysOnUserDefaultValue = v5->_surfaceDetectionParametrization.lineFeaturesAlwaysOnUserDefaultValue;
      v5->_surfaceDetectionParametrization.lineFeaturesAlwaysOnUserDefaultValue = v69;

      v5->_surfaceDetectionParametrization.var0 = v70;
      detectionPolicyString = v5->_surfaceDetectionParametrization.detectionPolicyString;
      v5->_surfaceDetectionParametrization.detectionPolicyString = v71;

      v5->_enableMLCMRelocalization = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.enableMLCMRelocalization"];
      v77 = [(ARWorldTrackingTechnique *)v5 mutableOptions];
      v78 = [v77 slamConfiguration];
      v79 = v78;
      [v78 UTF8String];
      v80 = CV3DSLAMConfigPresetFromString() == 26;

      [(ARWorldTrackingTechnique *)v5 setIsMultiSessionMode:v5->_enableMLCMRelocalization && v80];
      v81 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.worldTracking.resultData");
      resultDataQueue = v5->_resultDataQueue;
      v5->_resultDataQueue = v81;

      v83 = [MEMORY[0x1E695DF70] array];
      pendingRawSceneUnderstandingResults = v5->_pendingRawSceneUnderstandingResults;
      v5->_pendingRawSceneUnderstandingResults = v83;

      v5->_pendingRawSceneUnderstandingResultsLock._os_unfair_lock_opaque = 0;
      if (ARDeviceSupportsJasper())
      {
        v85 = [MEMORY[0x1E695DF70] array];
        latestSpatialMappingData = v5->_latestSpatialMappingData;
        v5->_latestSpatialMappingData = v85;

        v5->_latestSpatialMappingDataLock._os_unfair_lock_opaque = 0;
        v87 = MTLCreateSystemDefaultDevice();
        sharedMetalDevice = v5->_sharedMetalDevice;
        v5->_sharedMetalDevice = v87;

        v89 = [(MTLDevice *)v5->_sharedMetalDevice newCommandQueue];
        spatialMappingCommandQueue = v5->_spatialMappingCommandQueue;
        v5->_spatialMappingCommandQueue = v89;

        v91 = [MEMORY[0x1E695DF90] dictionary];
        spatialMappingPointClouds = v5->_spatialMappingPointClouds;
        v5->_spatialMappingPointClouds = v91;

        v5->_spatialMappingPointCloudsLock._os_unfair_lock_opaque = 0;
        v93 = ARKitCoreBundle();
        v94 = [v93 URLForResource:@"default" withExtension:@"metallib"];

        v95 = [(MTLDevice *)v5->_sharedMetalDevice newLibraryWithURL:v94 error:0];
        v96 = [v95 newFunctionWithName:@"annotateDepthData"];
        annotateDepthDataKernelFunction = v5->_annotateDepthDataKernelFunction;
        v5->_annotateDepthDataKernelFunction = v96;

        v98 = [MEMORY[0x1E695DF90] dictionary];
        spatialMappingResultDataWaitingForSemantics = v5->_spatialMappingResultDataWaitingForSemantics;
        v5->_spatialMappingResultDataWaitingForSemantics = v98;
      }

      v36 = v101;
    }

    else
    {
      v36 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (ARWorldTrackingOptions)options
{
  v2 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v3 = [v2 copy];

  return v3;
}

- (int64_t)vioHandleState
{
  dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  sessionHandleState = self->_sessionHandleState;
  dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
  return sessionHandleState;
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  depth16grayBufferPool = self->_depth16grayBufferPool;
  if (depth16grayBufferPool)
  {
    CVPixelBufferPoolRelease(depth16grayBufferPool);
    self->_depth16grayBufferPool = 0;
  }

  confidence8BufferPool = self->_confidence8BufferPool;
  if (confidence8BufferPool)
  {
    CVPixelBufferPoolRelease(confidence8BufferPool);
    self->_confidence8BufferPool = 0;
  }

  poolForSemanticsAnnotatedDepth = self->_poolForSemanticsAnnotatedDepth;
  if (poolForSemanticsAnnotatedDepth)
  {
    CVPixelBufferPoolRelease(poolForSemanticsAnnotatedDepth);
    self->_poolForSemanticsAnnotatedDepth = 0;
  }

  poolForConfidenceAnnotatedDepth = self->_poolForConfidenceAnnotatedDepth;
  if (poolForConfidenceAnnotatedDepth)
  {
    CVPixelBufferPoolRelease(poolForConfidenceAnnotatedDepth);
    self->_poolForConfidenceAnnotatedDepth = 0;
  }

  poolForUncertaintyAnnotatedDepth = self->_poolForUncertaintyAnnotatedDepth;
  if (poolForUncertaintyAnnotatedDepth)
  {
    CVPixelBufferPoolRelease(poolForUncertaintyAnnotatedDepth);
    self->_poolForUncertaintyAnnotatedDepth = 0;
  }

  poolForUncertaintyMaskedSemanticsDepth = self->_poolForUncertaintyMaskedSemanticsDepth;
  if (poolForUncertaintyMaskedSemanticsDepth)
  {
    CVPixelBufferPoolRelease(poolForUncertaintyMaskedSemanticsDepth);
    self->_poolForUncertaintyMaskedSemanticsDepth = 0;
  }

  os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
  cntrl = self->_planeDetectionSession.__cntrl_;
  self->_planeDetectionSession.__ptr_ = 0;
  self->_planeDetectionSession.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
  os_unfair_lock_lock(&self->_raycastSessionLock);
  v10 = self->_raycastSession.__cntrl_;
  self->_raycastSession.__ptr_ = 0;
  self->_raycastSession.__cntrl_ = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  os_unfair_lock_unlock(&self->_raycastSessionLock);
  dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_slamSessionHandle)
  {
    v11 = _ARLogTechnique();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      slamSessionHandle = self->_slamSessionHandle;
      *buf = 138543874;
      v27 = v13;
      v28 = 2048;
      v29 = self;
      v30 = 2048;
      v31 = slamSessionHandle;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing SLAM handle: %p …", buf, 0x20u);
    }

    CV3DSLAMSessionWait();
    CV3DSLAMSessionRelease();
    self->_slamSessionHandle = 0;
    self->_sessionHandleState = 0;
    v15 = _ARLogTechnique();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138543618;
      v27 = v17;
      v28 = 2048;
      v29 = self;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: SLAM handle released", buf, 0x16u);
    }
  }

  if (self->_predictorHandle)
  {
    v18 = _ARLogTechnique();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      predictorHandle = self->_predictorHandle;
      *buf = 138543874;
      v27 = v20;
      v28 = 2048;
      v29 = self;
      v30 = 2048;
      v31 = predictorHandle;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing predictor handle: %p …", buf, 0x20u);
    }

    CV3DPosePredictionRelease();
    self->_predictorHandle = 0;
    v22 = _ARLogTechnique();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138543618;
      v27 = v24;
      v28 = 2048;
      v29 = self;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Predictor handle released", buf, 0x16u);
    }
  }

  dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
  v25.receiver = self;
  v25.super_class = ARWorldTrackingTechnique;
  [(ARWorldTrackingTechnique *)&v25 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ARWorldTrackingTechnique;
  if ([(ARTechnique *)&v10 isEqual:v4])
  {
    v5 = v4;
    v6 = [(ARWorldTrackingTechnique *)self mutableOptions];
    v7 = [v5 mutableOptions];
    v8 = [v6 isEqual:v7];
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
  v10.receiver = self;
  v10.super_class = ARWorldTrackingTechnique;
  v4 = [(ARImageBasedTechnique *)&v10 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  if (dispatch_semaphore_wait(self->_resultSemaphore, 0))
  {
    v6 = @"Busy";
  }

  else
  {
    dispatch_semaphore_signal(self->_resultSemaphore);
    v6 = @"NotBusy";
  }

  [v5 appendFormat:@"\tResult is %@\n", v6];
  if (dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0))
  {
    v7 = @"Busy";
  }

  else
  {
    dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
    v7 = @"NotBusy";
  }

  [v5 appendFormat:@"\tState is %@\n", v7];
  [v5 appendFormat:@"\tslamSessionHandle state(%li)\n", self->_sessionHandleState];
  [v5 appendFormat:@"\tpredictorHandle state(%li)\n", self->_predictorHandle];
  [v5 appendFormat:@"\tresult latency(%lf)\n", *&self->_resultLatency];
  [v5 appendFormat:@"\tkeyframe count(%d)\n", self->_previousKeyframeCount];
  if (self->_hasQualityKeyframe)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 appendFormat:@"\tQualityKeyframe: %@\n", v8];
  [v5 appendFormat:@"\tQualityKeyframeTimestamp(%lf)\n", *&self->_lastQualityKeyframeTimestamp];
  [v5 appendFormat:@"\tReinitializationAttempts(%i)\n", self->_reinitializationAttempts];
  [v5 appendFormat:@"\tReinitializationAttemptsAtInitialization(%li)\n", self->_reinitializationAttemptsAtInitialization];
  [v5 appendFormat:@"\tLastRelocalizationTimestamp(%lf)\n", *&self->_lastRelocalizationTimestamp];
  [v5 appendFormat:@"\tOriginTimestamp(%lf)\n", *&self->_originTimestamp];
  [v5 appendFormat:@"\tErrorData: %@\n", self->_errorData];

  return v5;
}

- (unint64_t)requiredSensorDataTypes
{
  v3 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v4 = [v3 slamConfiguration];
  if ([v4 isEqualToString:@"CoreLocationIntegration"])
  {

    return 71;
  }

  v5 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v6 = [v5 recordForGeoTracking];

  if (v6)
  {
    return 71;
  }

  return 7;
}

- (BOOL)deterministicMode
{
  v2 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v3 = [v2 deterministicMode];

  return v3;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (void)_handleCV3DError:(__CFError *)a3 withDescription:(id)a4 failTechnique:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  if (v9)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
    }

    v10 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v11 = _ARLogTechnique();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v18 = 138544130;
        v19 = v14;
        v20 = 2048;
        v21 = self;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ => %@", &v18, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v18 = 138544130;
      v19 = v16;
      v20 = 2048;
      v21 = self;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ => %@", &v18, 0x2Au);
    }

    if (v5)
    {
      v17 = ARErrorWithCodeAndUserInfo(200, 0);
      [(ARWorldTrackingTechnique *)self _didFailWithError:v17];
    }
  }
}

- (BOOL)reconfigurableFrom:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (-[ARWorldTrackingTechnique vioHandleState](self, "vioHandleState") == 4 || ![v4 isMemberOfClass:objc_opt_class()])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v5 = [v4 options];
    v6 = [(ARWorldTrackingTechnique *)self mutableOptions];
    if ([v6 isEqual:v5])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 imageSensorSettings];
      v9 = [v5 imageSensorSettings];
      v10 = [v8 isEqual:v9];

      if ((v10 & 1) == 0)
      {
        v11 = [v6 imageSensorSettings];
        v12 = [v11 autoFocusEnabled];
        v13 = [v5 imageSensorSettings];
        [v13 setAutoFocusEnabled:v12];
      }

      [v5 setPlaneDetection:{objc_msgSend(v6, "planeDetection")}];
      [v6 minVergenceAngle];
      [v5 setMinVergenceAngle:?];
      [v5 setMlModelEnabled:{objc_msgSend(v6, "mlModelEnabled")}];
      [v5 setSceneReconstruction:{objc_msgSend(v6, "sceneReconstruction")}];
      v14 = [v6 sceneReconstructionOptions];
      [v5 setSceneReconstructionOptions:v14];

      [v5 setDepthBuffersWillBeProvided:{objc_msgSend(v6, "depthBuffersWillBeProvided")}];
      [v5 setPlaneBundleAdjustmentEnabled:{objc_msgSend(v6, "planeBundleAdjustmentEnabled")}];
      v15 = [v6 singleShotPlaneCallback];
      [v5 setSingleShotPlaneCallback:v15];

      v16 = [v6 trackedPlaneCallback];
      [v5 setTrackedPlaneCallback:v16];

      v17 = [v6 planeDetectionVIOPoseCallback];
      [v5 setPlaneDetectionVIOPoseCallback:v17];

      v18 = [v6 planeDetectionPoseUpdateCallback];
      [v5 setPlaneDetectionPoseUpdateCallback:v18];

      v7 = [v6 isEqual:v5];
    }

    v19 = _ARLogTechnique();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = @"not ";
      v24 = 138543874;
      v25 = v21;
      if (v7)
      {
        v22 = &stru_1F4208A80;
      }

      v26 = 2048;
      v27 = self;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: is %@reconfigurable", &v24, 0x20u);
    }
  }

  return v7;
}

- (void)reconfigureFrom:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v6 = [v4 mutableOptions];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 mutableOptions];
    if ([v8 depthBuffersWillBeProvided])
    {
    }

    else
    {
      ptr = self->_raycastSession.__ptr_;

      if (ptr)
      {
        RaycastSession::InvalidateDenseFrame(self->_raycastSession.__ptr_);
      }
    }

    v10 = [v4 options];
    [(ARWorldTrackingTechnique *)self setMutableOptions:v10];

    objc_storeStrong(&self->_surfaceDetectionParametrization.options, *(v4 + 42));
    objc_storeStrong(&self->_surfaceDetectionParametrization.detectionCountUserDefaultValue, *(v4 + 43));
    objc_storeStrong(&self->_surfaceDetectionParametrization.minVergenceAngleDegreesUserDefaultValue, *(v4 + 44));
    objc_storeStrong(&self->_surfaceDetectionParametrization.lineFeaturesAlwaysOnUserDefaultValue, *(v4 + 45));
    self->_surfaceDetectionParametrization.var0 = *(v4 + 368);
    objc_storeStrong(&self->_surfaceDetectionParametrization.detectionPolicyString, *(v4 + 47));
    v11 = self->_planeDetectionSession.__ptr_;
    if (v11)
    {
      v12 = PlaneDetectionSession::DidParametersOrConfigurationChanged(v11, &self->_surfaceDetectionParametrization);
      v13 = v12;
      v14 = ((v12 & 0x100) == 0) | v12;
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    if ([(ARWorldTrackingTechnique *)self vioHandleState]== 3)
    {
      if (v13)
      {
        [(ARWorldTrackingTechnique *)self _initializeSurfaceDetection:&self->_surfaceDetectionParametrization];
      }

      else if ((v14 & 1) == 0)
      {
        [(ARWorldTrackingTechnique *)self updateSurfaceDetectionConfiguration];
      }

      v15 = _ARLogTechnique();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [(ARWorldTrackingTechnique *)self mutableOptions];
        v19 = NSStringFromARPlaneDetection([v18 planeDetection]);
        v23 = 138543874;
        v24 = v17;
        v25 = 2048;
        v26 = self;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: reconfigured for detection type(s): %@", &v23, 0x20u);
      }

      v20 = [(ARWorldTrackingTechnique *)self mutableOptions];
      v21 = [v20 sceneReconstruction] == 0;

      if (v21)
      {
        v22 = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
        [v22 pause];
      }

      else
      {
        [(ARWorldTrackingTechnique *)self _startSceneReconstruction];
      }
    }
  }
}

- (void)updateSurfaceDetectionConfiguration
{
  v16 = *MEMORY[0x1E69E9840];
  ptr = self->_planeDetectionSession.__ptr_;
  if (ptr)
  {
    if (PlaneDetectionSession::UpdateConfiguration(ptr, &self->_surfaceDetectionParametrization))
    {

      [(ARWorldTrackingTechnique *)self _updateVIOLineDetectionPolicy];
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
      }

      v4 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v5 = _ARLogTechnique();
      v6 = v5;
      if (v4 == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v12 = 138543618;
          v13 = v8;
          v14 = 2048;
          v15 = self;
          _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error updating surface detection configuration", &v12, 0x16u);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v12 = 138543618;
        v13 = v10;
        v14 = 2048;
        v15 = self;
        _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error updating surface detection configuration", &v12, 0x16u);
      }

      v11 = ARErrorWithCodeAndUserInfo(200, 0);
      [(ARWorldTrackingTechnique *)self _didFailWithError:v11];
    }
  }
}

- (void)prepare:(BOOL)a3
{
  v26 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v15 = [(ARWorldTrackingTechnique *)self getObservers];
  dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_sessionHandleState == 1)
  {
    self->_sessionHandleState = 2;
    dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = v15;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v8 technique:self didChangeState:2];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v5);
    }

    v9 = [(ARWorldTrackingTechnique *)self _initializeSLAMAndPredictorHandle];
    if (v9 == 3)
    {
      [(ARWorldTrackingTechnique *)self _initializeSurfaceDetection:&self->_surfaceDetectionParametrization];
    }

    dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    self->_sessionHandleState = v9;
    dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
    if (v9 != 2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v4;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v11)
      {
        v12 = *v17;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v16 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v14 technique:self didChangeState:v9];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
  }

  kdebug_trace();
}

- (id)processData:(id)a3
{
  v186 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v173.receiver = self;
  v173.super_class = ARWorldTrackingTechnique;
  v8 = [(ARImageBasedTechnique *)&v173 processData:v7];
  if ([(ARWorldTrackingTechnique *)self vioHandleState]== 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      self->_lastCaptureLens = [v9 captureLens];
      v10 = [(ARWorldTrackingTechnique *)self mutableOptions];
      v11 = [v10 alwaysUsePrimaryCameraForTracking];
      if (v11)
      {
        v3 = [(ARWorldTrackingTechnique *)self mutableOptions];
        v4 = [v3 imageSensorSettingsForUltraWide];
        if (v4)
        {
          v5 = [v9 cameraType];
          if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v5))
          {

LABEL_39:
            goto LABEL_127;
          }

          v26 = 1;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v36 = [v9 isHighResolution];
      if (v26)
      {

        if ((v11 & 1) == 0)
        {
LABEL_35:

LABEL_38:
          if (v36)
          {
            goto LABEL_39;
          }

          [(ARWorldTrackingTechnique *)self _saveExtrinsicsFromImage:v9];
          [v9 timestamp];
          kdebug_trace();
          v37 = [(ARWorldTrackingTechnique *)self mutableOptions];
          v38 = [v9 cameraType];
          [v37 cameraIdForCaptureDeviceType:v38];

          [v9 timestamp];
          [v9 visionData];
          kdebug_trace();
          v185 = 0;
          memset(buf, 0, sizeof(buf));
          [v9 cameraIntrinsics];
          ARMatrix3x3RowMajorArray(buf, v39, v40, v41);
          v183 = 0;
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v42 = CMGetAttachment([v9 visionData], @"VisionDataCameraIntrinsicMatrix", 0);
          v44 = v42;
          if (v42 && self->_shouldPushVisionDataIntrinsics)
          {
            *v45.i64 = ARMatrix3x3FromNSData(v42);
            v149 = v45;
            v151 = v46;
            v45.i32[3] = 0;
            v46.i32[3] = 0;
            v158 = v46;
            v160 = v45;
            v153 = v47;
            v47.i32[3] = 0;
            v155 = v47;
            if (self->_shouldUseFullResolutionVisionDataIntrinsics)
            {
              v48 = [(ARWorldTrackingTechnique *)self mutableOptions];
              v49 = [v48 imageSensorSettings];
              v50 = [v49 visionDataOutputParameters];

              if (v50 || (-[ARWorldTrackingTechnique mutableOptions](self, "mutableOptions"), v51 = objc_claimAutoreleasedReturnValue(), [v51 imageSensorSettingsForUltraWide], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v52, "visionDataOutputParameters"), v50 = objc_claimAutoreleasedReturnValue(), v52, v51, v50))
              {
                v53 = [v50 valueForKey:*MEMORY[0x1E698BDC8]];
                [v53 floatValue];
                v156 = v54;

                *v55.i32 = v156 * *v149.i32;
                v55.i32[1] = v149.i32[1];
                v55.i64[1] = v149.u32[2];
                v56.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(v156, *v151.i8, 1)), v151.u32[0]);
                v56.i64[1] = v151.u32[2];
                v158 = v56;
                v160 = v55;
                v57.n128_u64[0] = vmulq_n_f32(v153, v156).u64[0];
                v57.n128_u64[1] = v153.u32[2];
                v155 = v57;
              }
            }

            v43 = ARMatrix3x3RowMajorArray(&v179, v160, v158, v155);
          }

          [v9 ISO];
          v172 = v58;
          [v9 exposureDuration];
          v171 = v59;
          [v9 temperature];
          v170 = v60;
          kdebug_trace();
          kdebug_trace();
          v169 = 0;
          [v9 pixelBuffer];
          [v9 timestamp];
          v61 = CV3DSLAMCameraFrameCreate();
          v165[0] = MEMORY[0x1E69E9820];
          v165[1] = 3221225472;
          v166 = __40__ARWorldTrackingTechnique_processData___block_invoke;
          v167 = &__block_descriptor_40_e5_v8__0l;
          v168 = v61;
          if (!v61)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v62 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v63 = _ARLogTechnique();
            v64 = v63;
            if (v62 == 1)
            {
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                v65 = objc_opt_class();
                v66 = NSStringFromClass(v65);
                *v174 = 138543874;
                *&v174[4] = v66;
                v175 = 2048;
                v176 = self;
                v177 = 2112;
                v178 = v169;
                _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create camera frame: %@", v174, 0x20u);
              }
            }

            else if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v85 = objc_opt_class();
              v86 = NSStringFromClass(v85);
              *v174 = 138543874;
              *&v174[4] = v86;
              v175 = 2048;
              v176 = self;
              v177 = 2112;
              v178 = v169;
              _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create camera frame: %@", v174, 0x20u);
            }

            v87 = ARErrorWithCodeAndUserInfo(200, 0);
            [(ARWorldTrackingTechnique *)self _didFailWithError:v87];
          }

          if ([v9 visionData])
          {
            kdebug_trace();
            [v9 visionData];
            if ((CV3DSLAMCameraFrameAddHWFPWithIntrinsics() & 1) == 0)
            {
              if (ARShouldUseLogTypeError(void)::onceToken != -1)
              {
                [ARWorldTrackingTechnique processData:];
              }

              v88 = ARShouldUseLogTypeError(void)::internalOSVersion;
              v89 = _ARLogTechnique();
              v90 = v89;
              if (v88 == 1)
              {
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  v91 = objc_opt_class();
                  v92 = NSStringFromClass(v91);
                  *v174 = 138543874;
                  *&v174[4] = v92;
                  v175 = 2048;
                  v176 = self;
                  v177 = 2112;
                  v178 = v169;
                  _os_log_impl(&dword_1C241C000, v90, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not add HWFP: %@", v174, 0x20u);
                }
              }

              else if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
              {
                v93 = objc_opt_class();
                v94 = NSStringFromClass(v93);
                *v174 = 138543874;
                *&v174[4] = v94;
                v175 = 2048;
                v176 = self;
                v177 = 2112;
                v178 = v169;
                _os_log_impl(&dword_1C241C000, v90, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not add HWFP: %@", v174, 0x20u);
              }

              v95 = ARErrorWithCodeAndUserInfo(200, 0);
              [(ARWorldTrackingTechnique *)self _didFailWithError:v95];
            }
          }

          v164 = 0;
          if ((CV3DSLAMSessionPushCamera() & 1) == 0)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v96 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v97 = _ARLogTechnique();
            v98 = v97;
            if (v96 == 1)
            {
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                v99 = objc_opt_class();
                v100 = NSStringFromClass(v99);
                *v174 = 138543874;
                *&v174[4] = v100;
                v175 = 2048;
                v176 = self;
                v177 = 2112;
                v178 = v164;
                _os_log_impl(&dword_1C241C000, v98, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Pushing camera failed: %@", v174, 0x20u);
              }
            }

            else if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
            {
              v101 = objc_opt_class();
              v102 = NSStringFromClass(v101);
              *v174 = 138543874;
              *&v174[4] = v102;
              v175 = 2048;
              v176 = self;
              v177 = 2112;
              v178 = v164;
              _os_log_impl(&dword_1C241C000, v98, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Pushing camera failed: %@", v174, 0x20u);
            }

            v103 = ARErrorWithCodeAndUserInfo(200, 0);
            [(ARWorldTrackingTechnique *)self _didFailWithError:v103];
          }

          kdebug_trace();
          v166(v165);

          goto LABEL_124;
        }
      }

      else if (!v11)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
      v179.f64[0] = 0.0;
      [v12 acceleration];
      [v12 acceleration];
      [v12 acceleration];
      [v12 timestamp];
      if ((CV3DSLAMSessionPushAccel() & 1) == 0)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
        }

        v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v14 = _ARLogTechnique();
        v15 = v14;
        if (v13 == 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            v18 = v179.f64[0];
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v17;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = self;
            HIWORD(buf[1].f64[0]) = 2112;
            buf[1].f64[1] = v179.f64[0];
            _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error pushing accelometer data: %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          v72 = v179.f64[0];
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v71;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          buf[1].f64[1] = v179.f64[0];
          _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error pushing accelometer data: %@", buf, 0x20u);
        }

        v73 = ARErrorWithCodeAndUserInfo(200, 0);
        [(ARWorldTrackingTechnique *)self _didFailWithError:v73];
      }

      [v12 acceleration];
      [v12 acceleration];
      [v12 acceleration];
      [v12 timestamp];
      v74 = CV3DPosePredictionPushAccel();
      if (!v74)
      {
        goto LABEL_124;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v75 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v76 = _ARLogTechnique();
      v77 = v76;
      if (v75 == 1)
      {
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v78 = objc_opt_class();
          v79 = NSStringFromClass(v78);
          v80 = NSStringFromCV3DPosePredictionReturn(v74);
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v79;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          *&buf[1].f64[1] = v80;
          _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error pushing accelometer data to predictor: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        v83 = NSStringFromCV3DPosePredictionReturn(v74);
        LODWORD(buf[0].f64[0]) = 138543874;
        *(buf[0].f64 + 4) = v82;
        WORD2(buf[0].f64[1]) = 2048;
        *(&buf[0].f64[1] + 6) = self;
        HIWORD(buf[1].f64[0]) = 2112;
        *&buf[1].f64[1] = v83;
        _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error pushing accelometer data to predictor: %@", buf, 0x20u);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v7;
          v28 = [v27 pointCloud];
          CV3DSLAMJasperPointCloudCreateFromADPointCloud();

          -[ARWorldTrackingTechnique CV3DSLAMJasperPointCloudProjectorModeFromAVTimeOfFlightProjectorMode:](self, "CV3DSLAMJasperPointCloudProjectorModeFromAVTimeOfFlightProjectorMode:", [v27 projectorMode]);
          v29 = CV3DSLAMJasperPointCloudSetProjectorMode();
          if (v29)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v30 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v31 = _ARLogTechnique();
            v32 = v31;
            if (v30 == 1)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v33 = objc_opt_class();
                v34 = NSStringFromClass(v33);
                v35 = NSStringFromCV3DSLAMJasperPointCloudReturn(v29);
                LODWORD(buf[0].f64[0]) = 138543874;
                *(buf[0].f64 + 4) = v34;
                WORD2(buf[0].f64[1]) = 2048;
                *(&buf[0].f64[1] + 6) = self;
                HIWORD(buf[1].f64[0]) = 2112;
                *&buf[1].f64[1] = v35;
                _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error setting jasper projector mode: %@", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v117 = objc_opt_class();
              v118 = NSStringFromClass(v117);
              v119 = NSStringFromCV3DSLAMJasperPointCloudReturn(v29);
              LODWORD(buf[0].f64[0]) = 138543874;
              *(buf[0].f64 + 4) = v118;
              WORD2(buf[0].f64[1]) = 2048;
              *(&buf[0].f64[1] + 6) = self;
              HIWORD(buf[1].f64[0]) = 2112;
              *&buf[1].f64[1] = v119;
              _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error setting jasper projector mode: %@", buf, 0x20u);
            }
          }

          *v174 = 0;
          [v27 timestamp];
          if ((CV3DSLAMSessionPushJasperPointCloud() & 1) == 0)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v120 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v121 = _ARLogTechnique();
            v122 = v121;
            if (v120 == 1)
            {
              if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
              {
                v123 = objc_opt_class();
                v124 = NSStringFromClass(v123);
                v125 = *v174;
                LODWORD(buf[0].f64[0]) = 138543874;
                *(buf[0].f64 + 4) = v124;
                WORD2(buf[0].f64[1]) = 2048;
                *(&buf[0].f64[1] + 6) = self;
                HIWORD(buf[1].f64[0]) = 2112;
                buf[1].f64[1] = *v174;
                _os_log_impl(&dword_1C241C000, v122, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error pushing jasper buffer to SLAM: %@", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
            {
              v126 = objc_opt_class();
              v127 = NSStringFromClass(v126);
              v128 = *v174;
              LODWORD(buf[0].f64[0]) = 138543874;
              *(buf[0].f64 + 4) = v127;
              WORD2(buf[0].f64[1]) = 2048;
              *(&buf[0].f64[1] + 6) = self;
              HIWORD(buf[1].f64[0]) = 2112;
              buf[1].f64[1] = *v174;
              _os_log_impl(&dword_1C241C000, v122, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error pushing jasper buffer to SLAM: %@", buf, 0x20u);
            }

            v129 = ARErrorWithCodeAndUserInfo(200, 0);
            [(ARWorldTrackingTechnique *)self _didFailWithError:v129];
          }

          if (self->_planeDetectionSession.__ptr_ || self->_raycastSession.__ptr_)
          {
            [v27 extrinsicsToWideSensor];
            ARMatrix4x4FromMatrix4x3();
            v159 = v131;
            v161 = v130;
            v154 = v133;
            v157 = v132;
            [v27 visionCameraTransform];
            v150 = v135;
            v152 = v134;
            v147 = v137;
            v148 = v136;
            v188.columns[1] = v159;
            v188.columns[0] = v161;
            v188.columns[3] = v154;
            v188.columns[2] = v157;
            v189 = __invert_f4(v188);
            v138 = 0;
            v139 = vmulq_f32(v189.columns[3], vdupq_n_s32(0x3A83126Fu));
            v139.i32[3] = v189.columns[3].i32[3];
            v179 = v152;
            v180 = v150;
            v181 = v148;
            v182 = v147;
            do
            {
              buf[v138 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v189.columns[0], COERCE_FLOAT(*(&v179 + v138 * 8))), v189.columns[1], *&v179.f64[v138], 1), v189.columns[2], *(&v179 + v138 * 8), 2), v139, *(&v179 + v138 * 8), 3);
              v138 += 2;
            }

            while (v138 != 8);
          }

          os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
          if (self->_planeDetectionSession.__ptr_)
          {
            v140 = [(ARWorldTrackingTechnique *)self mutableOptions];
            v141 = [v140 planeDetection] == 0;

            if (!v141)
            {
              v172 = 0.0;
              CV3DSLAMSessionCopyJasperCameraCalibration();
              ARMatrix3x3MakeRowMajorTransform(buf[0].f64);
              ptr = self->_planeDetectionSession.__ptr_;
              v143 = [v27 pointCloud];
              [v27 timestamp];
              v146 = v144;
              PlaneDetectionSession::PushJasperPointCloud(ptr, v143);
            }
          }

          os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
          os_unfair_lock_lock(&self->_raycastSessionLock);
          if (self->_raycastSession.__ptr_)
          {
            [v27 timestamp];
            CV3DRaycastPushJasperPointCloud();
          }

          os_unfair_lock_unlock(&self->_raycastSessionLock);
          CV3DSLAMJasperPointCloudRelease();
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_125;
          }

          v67 = v7;
          [v67 setStillRequiresPostProcessing:1];
          resultDataQueue = self->_resultDataQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __40__ARWorldTrackingTechnique_processData___block_invoke_124;
          block[3] = &unk_1E817C820;
          block[4] = self;
          v163 = v67;
          v69 = v67;
          dispatch_async(resultDataQueue, block);
        }

LABEL_124:

LABEL_125:
        if ([(ARWorldTrackingTechnique *)self deterministicMode])
        {
          dispatch_sync(self->_resultDataQueue, &__block_literal_global_126);
          CV3DSLAMSessionWait();
        }

        goto LABEL_127;
      }

      v19 = v7;
      v179.f64[0] = 0.0;
      [v19 rotationRate];
      [v19 rotationRate];
      [v19 rotationRate];
      [v19 timestamp];
      if ((CV3DSLAMSessionPushGyro() & 1) == 0)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
        }

        v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v21 = _ARLogTechnique();
        v22 = v21;
        if (v20 == 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v25 = v179.f64[0];
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v24;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = self;
            HIWORD(buf[1].f64[0]) = 2112;
            buf[1].f64[1] = v179.f64[0];
            _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error pushing gyro data: %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v104 = objc_opt_class();
          v105 = NSStringFromClass(v104);
          v106 = v179.f64[0];
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v105;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          buf[1].f64[1] = v179.f64[0];
          _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error pushing gyro data: %@", buf, 0x20u);
        }

        v107 = ARErrorWithCodeAndUserInfo(200, 0);
        [(ARWorldTrackingTechnique *)self _didFailWithError:v107];
      }

      [v19 rotationRate];
      [v19 rotationRate];
      [v19 rotationRate];
      [v19 timestamp];
      v108 = CV3DPosePredictionPushGyro();
      if (!v108)
      {
        goto LABEL_124;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v109 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v110 = _ARLogTechnique();
      v77 = v110;
      if (v109 == 1)
      {
        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
        {
          v111 = objc_opt_class();
          v112 = NSStringFromClass(v111);
          v113 = NSStringFromCV3DPosePredictionReturn(v108);
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v112;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          *&buf[1].f64[1] = v113;
          _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: CV3DPosePredictionPushAccel error: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
      {
        v114 = objc_opt_class();
        v115 = NSStringFromClass(v114);
        v116 = NSStringFromCV3DPosePredictionReturn(v108);
        LODWORD(buf[0].f64[0]) = 138543874;
        *(buf[0].f64 + 4) = v115;
        WORD2(buf[0].f64[1]) = 2048;
        *(&buf[0].f64[1] + 6) = self;
        HIWORD(buf[1].f64[0]) = 2112;
        *&buf[1].f64[1] = v116;
        _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: CV3DPosePredictionPushAccel error: %@", buf, 0x20u);
      }
    }

    v84 = ARErrorWithCodeAndUserInfo(200, 0);
    [(ARWorldTrackingTechnique *)self _didFailWithError:v84];

    goto LABEL_124;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forFrame:0];
  }

LABEL_127:

  return v7;
}

void __40__ARWorldTrackingTechnique_processData___block_invoke_124(uint64_t a1)
{
  [*(a1 + 32) _postProcessNonSynchronousDataForSceneUnderstanding:*(a1 + 40)];
  v2 = [ARNonSynchronousData alloc];
  v3 = [*(a1 + 40) gatheredData];
  [*(a1 + 40) timestamp];
  v23 = [(ARNonSynchronousData *)v2 initWithGatheredData:v3 timestamp:?];

  [*(a1 + 40) setStillRequiresPostProcessing:0];
  os_unfair_lock_lock((*(a1 + 32) + 560));
  [*(*(a1 + 32) + 552) addObject:v23];
  os_unfair_lock_unlock((*(a1 + 32) + 560));
  v4 = [*(a1 + 40) arMLDepthResult];
  v5 = [*(a1 + 40) segmentationResultWithDataSource:1];
  v6 = [*(a1 + 40) segmentationResultWithDataSource:2];
  v7 = [*(a1 + 40) resultDataOfClass:objc_opt_class()];
  v8 = [v7 firstObject];

  if (v8 && v6)
  {
    v9 = [*(a1 + 32) mutableOptions];
    if ([v9 planeDetection])
    {
      v10 = [*(a1 + 32) mutableOptions];
      v11 = [v10 mlModelEnabled];

      if (v11)
      {
        os_unfair_lock_lock((*(a1 + 32) + 152));
        v12 = *(a1 + 32);
        if (v4)
        {
          [v12 pushToSceneUnderstandingDepth:v4 segmentation:v6 pose:v8];
        }

        else
        {
          [v12 pushToSceneUnderstandingSegmentation:v6 pose:v8];
        }

        v13 = [*(a1 + 32) mutableOptions];
        v14 = [v13 planeDetectionVIOPoseCallback];

        if (v14)
        {
          v15 = [*(a1 + 32) mutableOptions];
          v16 = [v15 planeDetectionVIOPoseCallback];
          (v16)[2](v16, v8);
        }

        os_unfair_lock_unlock((*(a1 + 32) + 152));
      }
    }

    else
    {
    }
  }

  if (v4)
  {
    v17 = v8 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v17)
  {
    os_unfair_lock_lock((*(a1 + 32) + 156));
    [*(a1 + 32) pushToHitTestingDepth:v4 pose:v8];
    os_unfair_lock_unlock((*(a1 + 32) + 156));
  }

  if (ARDeviceSupportsJasper())
  {
    v19 = [*(a1 + 32) mutableOptions];
    v20 = [v19 sceneReconstruction];

    v21 = v6 ? v18 : 0;
    if (v21 == 1 && v20)
    {
      [v8 visionCameraTransform];
      *(*(a1 + 32) + 928) = __invert_f4(v25);
      v22 = [*(a1 + 32) sceneReconstructionHandler];
      [v22 pushDepth:v4 semanticSegmentation:v6 personSegmentation:v5 pose:v8];
    }
  }
}

- (void)_postProcessNonSynchronousDataForSceneUnderstanding:(id)a3
{
  v4 = a3;
  v5 = [v4 arMLDepthResult];
  v6 = [v4 segmentationResultWithDataSource:2];
  v7 = v6;
  if (v6 && [v6 segmentationBuffer] && objc_msgSend(v5, "singleFrameDepthBuffer") && ARDeviceSupportsJasper())
  {
    v8 = [v5 singleFrameDepthBuffer];
    v9 = v8;
    if (v8)
    {
      Width = CVPixelBufferGetWidth(v8);
      Height = CVPixelBufferGetHeight(v9);
    }

    else
    {
      Width = *MEMORY[0x1E695F060];
      Height = *(MEMORY[0x1E695F060] + 8);
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType([v7 segmentationBuffer]);
    v13 = ARCreateCVPixelBufferFromPool(&self->_poolForSemanticsAnnotatedDepth, PixelFormatType, self, @"segmentation annotated depth", Width, Height);
    v14 = v13;
    if (v13)
    {
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v46 = __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke;
      v47 = &__block_descriptor_40_e5_v8__0l;
      v48 = v13;
      v15 = [v5 singleFrameDepthBuffer];
      v16 = v15;
      if (v15)
      {
        v17 = CVPixelBufferGetWidth(v15);
        v18 = CVPixelBufferGetHeight(v16);
      }

      else
      {
        v17 = *MEMORY[0x1E695F060];
        v18 = *(MEMORY[0x1E695F060] + 8);
      }

      v19 = CVPixelBufferGetPixelFormatType([v7 confidenceBuffer]);
      v20 = ARCreateCVPixelBufferFromPool(&self->_poolForConfidenceAnnotatedDepth, v19, self, @"confidence annotated depth", v17, v18);
      v21 = v20;
      if (!v20)
      {
        goto LABEL_27;
      }

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v42 = __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke_2;
      v43 = &__block_descriptor_40_e5_v8__0l;
      v44 = v20;
      if ([v7 uncertaintyBuffer])
      {
        v22 = [v5 singleFrameDepthBuffer];
        v23 = v22;
        if (v22)
        {
          v24 = CVPixelBufferGetWidth(v22);
          v25 = CVPixelBufferGetHeight(v23);
        }

        else
        {
          v24 = *MEMORY[0x1E695F060];
          v25 = *(MEMORY[0x1E695F060] + 8);
        }

        v26 = CVPixelBufferGetPixelFormatType([v7 uncertaintyBuffer]);
        v27 = ARCreateCVPixelBufferFromPool(&self->_poolForUncertaintyAnnotatedDepth, v26, self, @"uncertainty annotated depth", v24, v25);
        v28 = v27;
        if (!v27)
        {
          goto LABEL_26;
        }

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v38 = __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke_3;
        v39 = &__block_descriptor_40_e5_v8__0l;
        v40 = v27;
        v29 = [v5 singleFrameDepthBuffer];
        v30 = v29;
        if (v29)
        {
          v31 = CVPixelBufferGetWidth(v29);
          v32 = CVPixelBufferGetHeight(v30);
        }

        else
        {
          v31 = *MEMORY[0x1E695F060];
          v32 = *(MEMORY[0x1E695F060] + 8);
        }

        v33 = CVPixelBufferGetPixelFormatType([v7 segmentationBuffer]);
        v34 = ARCreateCVPixelBufferFromPool(&self->_poolForUncertaintyMaskedSemanticsDepth, v33, self, @"uncertainty masked segmentation buffer", v31, v32);
        v35 = v34;
        if (v34)
        {
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke_4;
          v36[3] = &__block_descriptor_40_e5_v8__0l;
          v36[4] = v34;
          [(ARWorldTrackingTechnique *)self annotateDepth:v5 withSemantics:v7 toTargetSemanticsImage:v14 targetConfidenceBuffer:v21 targetUncertaintyBuffer:v28];
          [v7 setSemanticsSampledForDepth:v14];
          [v7 setConfidenceSampledForDepth:v21];
          [v7 setUncertaintySampledForDepth:v28];
          [ARSISemanticSegmentationTechnique createUncertaintyMaskedSegmentationBuffer:v35 fromSegmentationBuffer:v14 uncertaintyBuffer:v28 maskValue:255];
          __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke_4(v36);
        }

        v38(v37);
        if (!v35)
        {
          goto LABEL_26;
        }
      }

      else
      {
        [(ARWorldTrackingTechnique *)self annotateDepth:v5 withSemantics:v7 toTargetSemanticsImage:v14 targetConfidenceBuffer:v21 targetUncertaintyBuffer:0];
        [v7 setSemanticsSampledForDepth:v14];
        [v7 setConfidenceSampledForDepth:v21];
      }

      [v7 setMaskedSemanticsSampledForDepth:v14];
LABEL_26:
      v42(v41);
LABEL_27:
      v46(v45);
    }
  }
}

- (void)_saveExtrinsicsForWidePlusUWSessionFromImage:(id)a3
{
  v14 = a3;
  v4 = [v14 cameraType];
  v5 = [v4 isEqualToString:*MEMORY[0x1E6986948]];

  if (v5)
  {
    [v14 extrinsicMatrixToDeviceType:*MEMORY[0x1E6986950]];
    *self->_anon_240 = v6;
    *&self->_anon_240[8] = v7;
    *&self->_anon_240[24] = v8;
    *&self->_anon_240[40] = v9;
    *&self->_anon_240[16] = v10;
    *&self->_anon_240[32] = v11;
    *&self->_anon_240[56] = v12;
    *&self->_anon_240[48] = v13;
  }
}

- (void)_saveExtrinsicsForBravoCamSessionFromImage:(id)a3
{
  v20 = a3;
  [v20 extrinsicMatrixToDeviceType:*MEMORY[0x1E6986948]];
  *self->_anon_280 = v4;
  *&self->_anon_280[8] = v5;
  *&self->_anon_280[24] = v6;
  *&self->_anon_280[16] = v7;
  *&self->_anon_280[40] = v8;
  *&self->_anon_280[32] = v9;
  *&self->_anon_280[56] = v10;
  *&self->_anon_280[48] = v11;
  [v20 extrinsicMatrixToDeviceType:*MEMORY[0x1E6986928]];
  *self->_anon_2c0 = v12;
  *&self->_anon_2c0[8] = v13;
  *&self->_anon_2c0[24] = v14;
  *&self->_anon_2c0[40] = v15;
  *&self->_anon_2c0[16] = v16;
  *&self->_anon_2c0[32] = v17;
  *&self->_anon_2c0[56] = v18;
  *&self->_anon_2c0[48] = v19;
}

- (void)_saveExtrinsicsFromImage:(id)a3
{
  v5 = a3;
  v4 = [(ARWorldTrackingTechnique *)self _sessionType];
  if (v4)
  {
    if (v4 == 1)
    {
      [(ARWorldTrackingTechnique *)self _saveExtrinsicsForBravoCamSessionFromImage:v5];
    }
  }

  else
  {
    [(ARWorldTrackingTechnique *)self _saveExtrinsicsForWidePlusUWSessionFromImage:v5];
  }
}

- (id)predictedResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a4;
  cachedPoseData = self->_cachedPoseData;
  if (cachedPoseData && (-[ARWorldTrackingPoseData worldTrackingState](cachedPoseData, "worldTrackingState"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 state], v8, v9))
  {
    v10 = [(ARWorldTrackingPoseData *)self->_cachedPoseData copy];
    if (!v10)
    {
      v10 = [[ARWorldTrackingPoseData alloc] initWithTimestamp:a3];
    }

    v11 = [(ARWorldTrackingTechnique *)self _updatePoseData:v10 forTimeStamp:0 updateTrackingState:a3];
    if (v11)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
      }

      v12 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v13 = _ARLogTechnique();
      v14 = v13;
      if (v12 == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          *buf = 138544130;
          *&buf[4] = v16;
          buf_12 = 2048;
          *buf_14 = self;
          *&buf_14[8] = 1024;
          v42 = v11;
          v43 = 2048;
          v44[0] = a3;
          _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to predict pose [%i] for timestamp %f", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544130;
        *&buf[4] = v28;
        buf_12 = 2048;
        *buf_14 = self;
        *&buf_14[8] = 1024;
        v42 = v11;
        v43 = 2048;
        v44[0] = a3;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to predict pose [%i] for timestamp %f", buf, 0x26u);
      }

      v17 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v14 = [v6 imageData];
      if ([v14 cameraPosition]== 2)
      {
        [(ARWorldTrackingPoseData *)v10 cameraTransform];
        v32 = v19;
        v33 = v18;
        v30 = v21;
        v31 = v20;
        *&v22 = ARFrontFacingCameraFlip();
        v23 = 0;
        v34 = v22;
        v35 = v24;
        v36 = v25;
        v37 = v26;
        do
        {
          *&buf[v23] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v34 + v23))), v32, *(&v34 + v23), 1), v31, *(&v34 + v23), 2), v30, *(&v34 + v23), 3);
          v23 += 16;
        }

        while (v23 != 64);
        [(ARWorldTrackingPoseData *)v10 setCameraTransform:*buf, *&buf_14[2], *(v44 + 2), v45[0]];
      }

      v38 = v10;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:{1, *&v30, *&v31, *&v32, *&v33, v34, v35, v36, v37}];
    }
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (void)mergeResultData:(id)a3 intoData:(id)a4 context:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  i = a3;
  v39 = a4;
  v38 = a5;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = i;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  v9 = 0;
  if (!v8)
  {
    v41 = 0;
    v43 = 0;
    v46 = 0;
    goto LABEL_18;
  }

  v41 = 0;
  v43 = 0;
  v46 = 0;
  v10 = *v52;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v52 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v51 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v46;
        v13 = v9;
        v46 = v11;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v43;
          v13 = v9;
          v43 = v11;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v41;
            v13 = v9;
            v41 = v11;
          }

          else
          {
            objc_opt_class();
            v12 = v9;
            v13 = v11;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }
        }
      }

      v14 = v11;

      v9 = v13;
    }

    v8 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  }

  while (v8);
LABEL_18:

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = v39;
  v15 = 0;
  v16 = [v45 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v16)
  {
    v42 = 0;
    v40 = 0;
    v17 = 0;
    i = *v48;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v48 != i)
        {
          objc_enumerationMutation(v45);
        }

        v19 = *(*(&v47 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v15;
          v15 = v19;
LABEL_29:
          v21 = v17;
LABEL_30:
          v22 = v19;

          v17 = v21;
          goto LABEL_31;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v42;
          v42 = v19;
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v40;
          v40 = v19;
          goto LABEL_29;
        }

        objc_opt_class();
        v20 = v17;
        v21 = v19;
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_30;
        }

LABEL_31:
        ++v18;
      }

      while (v16 != v18);
      v23 = [v45 countByEnumeratingWithState:&v47 objects:v55 count:16];
      v16 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }
    }
  }

  v42 = 0;
  v40 = 0;
  v17 = 0;
LABEL_38:

  v24 = [v15 worldTrackingState];
  v25 = [v24 majorRelocalization];
  if (v25)
  {
    v26 = 1;
  }

  else
  {
    i = [v46 worldTrackingState];
    v26 = [i majorRelocalization];
  }

  v27 = [v15 worldTrackingState];
  [v27 setMajorRelocalization:v26];

  if ((v25 & 1) == 0)
  {
  }

  v28 = [v15 worldTrackingState];
  v29 = [v28 minorRelocalization];
  if (v29)
  {
    v30 = 1;
  }

  else
  {
    i = [v46 worldTrackingState];
    v30 = [i minorRelocalization];
  }

  v31 = [v15 worldTrackingState];
  [v31 setMinorRelocalization:v30];

  if ((v29 & 1) == 0)
  {
  }

  v32 = [v15 worldTrackingState];
  v33 = [v32 poseGraphUpdated];
  if (v33)
  {
    v34 = 1;
  }

  else
  {
    i = [v46 worldTrackingState];
    v34 = [i poseGraphUpdated];
  }

  v35 = [v15 worldTrackingState];
  [v35 setPoseGraphUpdated:v34];

  if ((v33 & 1) == 0)
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v45;
    v37 = v36;
    if (v43 && !v42)
    {
      [v36 addObject:v43];
    }

    if (v41 && !v40)
    {
      [v37 addObject:v41];
    }

    if (v9 && !v17)
    {
      [v37 addObject:v9];
    }
  }
}

- (void)prepareResultData:(id)a3 forContext:(id)a4
{
  v25 = a4;
  v5 = [a3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v25 cameraPosition] == 2)
    {
      [v5 cameraTransform];
      v23 = v7;
      v24 = v6;
      v21 = v9;
      v22 = v8;
      *&v10 = ARFrontFacingCameraFlip();
      v11 = 0;
      v26[0] = v10;
      v26[1] = v12;
      v26[2] = v13;
      v26[3] = v14;
      do
      {
        *(&v27 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(v26[v11])), v23, *&v26[v11], 1), v22, v26[v11], 2), v21, v26[v11], 3);
        ++v11;
      }

      while (v11 != 4);
      [v5 setCameraTransform:{*&v27, *&v28, *&v29, *&v30}];
    }

    v15 = [v25 imageData];
    v16 = [v15 isMirrored];

    if (v16)
    {
      [v5 cameraTransform];
      [v5 setCameraTransform:{ARMatrix4x4MirrorX(v17, v18, v19, v20)}];
    }
  }
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v6 = a4;
  [(ARWorldTrackingTechnique *)self _pushWTResultDataForTimestamp:a3];
  v7.receiver = self;
  v7.super_class = ARWorldTrackingTechnique;
  [(ARImageBasedTechnique *)&v7 requestResultDataAtTimestamp:v6 context:a3];
}

- (void)annotateDepth:(id)a3 withSemantics:(id)a4 toTargetSemanticsImage:(__CVBuffer *)a5 targetConfidenceBuffer:(__CVBuffer *)a6 targetUncertaintyBuffer:(__CVBuffer *)a7 useGpu:(BOOL)a8
{
  v8 = a8;
  v112 = a3;
  v113 = a4;
  v11 = [v113 sourceImageData];
  [v11 timestamp];
  v12 = [v112 sourceImageData];
  [v12 timestamp];
  kdebug_trace();

  [v112 depthBufferSize];
  v14 = v13;
  v16 = v15;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v17 = [v112 sourceImageData];
  [v17 extrinsicMatrixToDeviceType:*MEMORY[0x1E6986948]];
  v91 = v19;
  v93 = v18;
  v101 = v21;
  v106 = v20;

  v120 = v93;
  v121 = v91;
  v122 = v106;
  v123 = vdivq_f32(v101, vdupq_n_s32(0x447A0000u));
  v22 = [v113 sourceImageData];
  [v22 cameraIntrinsics];
  v102 = v24;
  v107 = v23;
  v94 = v25;
  v26 = [v113 sourceImageData];
  [v26 imageResolution];
  v28 = v27;
  v30 = v29;
  v31 = [v113 segmentationBuffer];
  v32 = v31;
  if (v31)
  {
    Width = CVPixelBufferGetWidth(v31);
    Height = CVPixelBufferGetHeight(v32);
    v35 = Width;
    v36 = Height;
  }

  else
  {
    v35 = *MEMORY[0x1E695F060];
    v36 = *(MEMORY[0x1E695F060] + 8);
  }

  v37.f32[0] = ARAdjustIntrinsicsForViewportSize(v107, v102, v94, v28, v30, v35, v36);
  v124 = v37;
  v125 = v38;
  v126 = v39;

  v40 = [v112 sourceImageData];
  [v40 cameraIntrinsics];
  v103 = v42;
  v108 = v41;
  v95 = v43;
  v44 = [v112 sourceImageData];
  [v44 imageResolution];
  v47.f32[0] = ARAdjustIntrinsicsForViewportSize(v108, v103, v95, v45, v46, v14, v16);
  v104 = v48;
  v109 = v47;
  v96 = v49;

  v50 = [v112 sourceImageData];
  v51 = [v50 cameraType];
  if (v51)
  {
    v52 = [(ARWorldTrackingTechnique *)self mutableOptions];
    v53 = [v112 sourceImageData];
    v54 = [v53 cameraType];
    [v52 cameraIdForCaptureDeviceType:v54];
  }

  kdebug_trace();
  kdebug_trace();
  CVPixelBufferGetWidth([v113 segmentationBuffer]);
  CVPixelBufferGetHeight([v113 segmentationBuffer]);
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  v130.columns[2] = v104;
  v130.columns[0] = v109;
  v130.columns[0].i32[3] = 0;
  v130.columns[1] = v96;
  v130.columns[1].i32[3] = 0;
  v130.columns[2].i32[3] = 0;
  v131 = __invert_f3(v130);
  v127 = v131.columns[0];
  v128 = v131.columns[1];
  v129 = v131.columns[2];
  if (v8)
  {
    v86 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
    v97 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_sharedMetalDevice, "newTextureWithDescriptor:iosurface:plane:", v86, CVPixelBufferGetIOSurface([v112 depthBuffer]), 0);
    [v97 setLabel:@"depthTexture"];
    v85 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:13 width:v14 height:v16 mipmapped:0];
    v110 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_sharedMetalDevice, "newTextureWithDescriptor:iosurface:plane:", v85, CVPixelBufferGetIOSurface([v113 segmentationBuffer]), 0);
    [v110 setLabel:@"semanticsTexture"];
    v105 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
    v90 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_sharedMetalDevice, "newTextureWithDescriptor:iosurface:plane:", v105, CVPixelBufferGetIOSurface([v113 confidenceBuffer]), 0);
    [v110 setLabel:@"confidenceTexture"];
    v92 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:13 width:v14 height:v16 mipmapped:0];
    [v92 setUsage:3];
    v89 = [(MTLDevice *)self->_sharedMetalDevice newTextureWithDescriptor:v92 iosurface:CVPixelBufferGetIOSurface(a5) plane:0];
    [v89 setLabel:@"targetSemanticsTexture"];
    pixelBuffera = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
    [(__CVBuffer *)pixelBuffera setUsage:3];
    v87 = [(MTLDevice *)self->_sharedMetalDevice newTextureWithDescriptor:pixelBuffera iosurface:CVPixelBufferGetIOSurface(a6) plane:0];
    [v87 setLabel:@"targetConfidenceTexture"];
    v88 = [(MTLDevice *)self->_sharedMetalDevice newBufferWithBytes:&v120 length:160 options:0];
    v55 = [(MTLDevice *)self->_sharedMetalDevice newComputePipelineStateWithFunction:self->_annotateDepthDataKernelFunction error:0];
    if (a7)
    {
      v56 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
      v84 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_sharedMetalDevice, "newTextureWithDescriptor:iosurface:plane:", v56, CVPixelBufferGetIOSurface([v113 uncertaintyBuffer]), 0);
      [v110 setLabel:@"uncertaintyTexture"];
      v57 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
      [v57 setUsage:3];
      v58 = [(MTLDevice *)self->_sharedMetalDevice newTextureWithDescriptor:v57 iosurface:CVPixelBufferGetIOSurface(a7) plane:0];
      v59 = v110;
      [v58 setLabel:@"targetUncertaintyTexture"];
      v60 = [(MTLCommandQueue *)self->_spatialMappingCommandQueue commandBuffer];
      v61 = [v60 computeCommandEncoder];
      [v61 setComputePipelineState:v55];
      [v61 setBuffer:v88 offset:0 atIndex:0];
      [v61 setTexture:v97 atIndex:1];
      [v61 setTexture:v110 atIndex:2];
      [v61 setTexture:v90 atIndex:3];
      [v61 setTexture:v89 atIndex:5];
      [v61 setTexture:v87 atIndex:6];
      [v61 setTexture:v84 atIndex:4];
      [v61 setTexture:v58 atIndex:7];
      v117 = v14;
      v118 = v16;
      v119 = 1;
      v114 = [v55 threadExecutionWidth];
      v115 = [v55 maxTotalThreadsPerThreadgroup] / v114;
      v116 = 1;
      [v61 dispatchThreads:&v117 threadsPerThreadgroup:&v114];
      [v61 endEncoding];

      [v60 commit];
      [v60 waitUntilCompleted];
    }

    else
    {
      v56 = [(MTLCommandQueue *)self->_spatialMappingCommandQueue commandBuffer];
      v59 = v110;
      v83 = [v56 computeCommandEncoder];
      [v83 setComputePipelineState:v55];
      [v83 setBuffer:v88 offset:0 atIndex:0];
      [v83 setTexture:v97 atIndex:1];
      [v83 setTexture:v110 atIndex:2];
      [v83 setTexture:v90 atIndex:3];
      [v83 setTexture:v89 atIndex:5];
      [v83 setTexture:v87 atIndex:6];
      v117 = v14;
      v118 = v16;
      v119 = 1;
      v114 = [v55 threadExecutionWidth];
      v115 = [v55 maxTotalThreadsPerThreadgroup] / v114;
      v116 = 1;
      [v83 dispatchThreads:&v117 threadsPerThreadgroup:&v114];
      [v83 endEncoding];

      [v56 commit];
      [v56 waitUntilCompleted];
    }
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow([v112 depthBuffer]);
    v63 = CVPixelBufferGetBytesPerRow([v113 segmentationBuffer]);
    v64 = CVPixelBufferGetBytesPerRow([v113 confidenceBuffer]);
    v65 = CVPixelBufferGetBytesPerRow([v113 uncertaintyBuffer]);
    CVPixelBufferLockBaseAddress([v113 segmentationBuffer], 1uLL);
    CVPixelBufferLockBaseAddress([v113 confidenceBuffer], 1uLL);
    CVPixelBufferLockBaseAddress([v113 uncertaintyBuffer], 1uLL);
    CVPixelBufferLockBaseAddress([v112 depthBuffer], 1uLL);
    CVPixelBufferLockBaseAddress(a5, 0);
    CVPixelBufferLockBaseAddress(a6, 0);
    CVPixelBufferLockBaseAddress(a7, 0);
    BaseAddress = CVPixelBufferGetBaseAddress([v112 depthBuffer]);
    v67 = CVPixelBufferGetBaseAddress([v113 segmentationBuffer]);
    v68 = CVPixelBufferGetBaseAddress([v113 confidenceBuffer]);
    v69 = CVPixelBufferGetBaseAddress([v113 uncertaintyBuffer]);
    v70 = CVPixelBufferGetBaseAddress(a5);
    v71 = CVPixelBufferGetBaseAddress(a6);
    v72 = CVPixelBufferGetBaseAddress(a7);
    if (v16 > 0.0)
    {
      v75 = 0;
      do
      {
        if (v14 > 0.0)
        {
          v76 = 0;
          *&v74 = v75;
          v77 = vdupq_lane_s32(*&v74, 0);
          do
          {
            v78 = vmulq_n_f32(vaddq_f32(v129, vmlaq_f32(vmulq_n_f32(v127, v76), v77, v128)), BaseAddress[v76]);
            v79 = vaddq_f32(v123, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v78.f32[0]), v121, *v78.f32, 1), v122, v78, 2));
            v80 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v124, v79.f32[0]), v125, *v79.f32, 1), v126, v79, 2);
            v81 = vdivq_f32(v80, vdupq_laneq_s32(v80, 2)).u64[0];
            LODWORD(v73) = llroundf(*(&v81 + 1));
            if (v73 <= 0xBF)
            {
              v82 = llroundf(*&v81);
              if (v82 <= 0xFF)
              {
                v70[v76] = v67[v63 * v73 + v82];
                *&v71[4 * v76] = *&v68[4 * v82 + v64 * v73];
                v73 = &v69[v65 * v73];
                *&v72[4 * v76] = *&v73[4 * v82];
              }
            }

            ++v76;
          }

          while (v14 > v76);
        }

        v74 = ++v75;
        v70 += v63;
        BaseAddress = (BaseAddress + BytesPerRow);
        v71 += v64;
        v72 += v65;
      }

      while (v16 > v75);
    }

    CVPixelBufferUnlockBaseAddress([v112 depthBuffer], 1uLL);
    CVPixelBufferUnlockBaseAddress([v113 segmentationBuffer], 1uLL);
    CVPixelBufferUnlockBaseAddress([v113 confidenceBuffer], 1uLL);
    CVPixelBufferUnlockBaseAddress([v113 uncertaintyBuffer], 1uLL);
    CVPixelBufferUnlockBaseAddress(a5, 0);
    CVPixelBufferUnlockBaseAddress(a6, 0);
  }

  CVPixelBufferGetWidth(a6);
  CVPixelBufferGetHeight(a6);
  kdebug_trace();
  kdebug_trace();
}

- (void)pushToSceneUnderstandingSegmentation:(id)a3 pose:(id)a4
{
  v38 = a3;
  v6 = a4;
  if (self->_planeDetectionSession.__ptr_ && [(ARSegmentationData *)v38 normalsBuffer])
  {
    kdebug_trace();
    v7 = [(ARSegmentationData *)v38 segmentationBuffer];
    v8 = v7;
    if (v7)
    {
      Width = CVPixelBufferGetWidth(v7);
      Height = CVPixelBufferGetHeight(v8);
    }

    else
    {
      Width = *MEMORY[0x1E695F060];
      Height = *(MEMORY[0x1E695F060] + 8);
    }

    v11 = [(ARSegmentationData *)v38 sourceImageData];
    [v11 cameraIntrinsics];
    v34 = v13;
    v36 = v12;
    v32 = v14;
    v15 = [(ARSegmentationData *)v38 sourceImageData];
    [v15 imageResolution];
    v18.f32[0] = ARAdjustIntrinsicsForViewportSize(v36, v34, v32, v16, v17, Width, Height);
    v35 = v19;
    v37 = v18;
    v33 = v20;

    ptr = self->_planeDetectionSession.__ptr_;
    [v6 visionCameraTransform];
    v30 = v23;
    v31 = v22;
    v28 = v25;
    v29 = v24;
    [(ARSegmentationData *)v38 timestamp];
    v27 = v26;
    v40.columns[1] = v35;
    v40.columns[0] = v37;
    v40.columns[0].i32[3] = 0;
    v40.columns[1].i32[3] = 0;
    v41.columns[0] = v31;
    v40.columns[2] = v33;
    v40.columns[2].i32[3] = 0;
    v41.columns[2] = v29;
    v41.columns[1] = v30;
    v41.columns[3] = v28;
    PlaneDetectionSession::PushSemanticsAndNormals(ptr, v38, v41, v40, v27);
    kdebug_trace();
  }
}

- (void)pushToHitTestingDepth:(id)a3 pose:(id)a4
{
  v38 = a3;
  v6 = a4;
  if (self->_raycastSession.__ptr_)
  {
    v7 = [v38 sourceImageData];
    [v7 cameraIntrinsics];
    v34 = v9;
    v36 = v8;
    v32 = v10;
    v11 = [v38 sourceImageData];
    [v11 imageResolution];
    v13 = v12;
    v15 = v14;
    [v38 depthBufferSize];
    v18.f32[0] = ARAdjustIntrinsicsForViewportSize(v36, v34, v32, v13, v15, v16, v17);
    v35 = v19;
    v37 = v18;
    v33 = v20;

    ptr = self->_raycastSession.__ptr_;
    v22 = [v38 singleFrameDepthBuffer];
    v23 = [v38 singleFrameConfidenceBuffer];
    [v6 visionCameraTransform];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v40.columns[1] = v35;
    v40.columns[0] = v37;
    v40.columns[0].i32[3] = 0;
    v40.columns[1].i32[3] = 0;
    v40.columns[2] = v33;
    v40.columns[2].i32[3] = 0;
    v41.columns[0] = v25;
    v41.columns[1] = v27;
    v41.columns[2] = v29;
    v41.columns[3] = v31;
    RaycastSession::PushDenseFrame(ptr, v22, v23, v40, v41);
  }
}

- (void)pushToSceneUnderstandingDepth:(id)a3 segmentation:(id)a4 pose:(id)a5
{
  v41 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_planeDetectionSession.__ptr_)
  {
    kdebug_trace();
    v10 = [(ARMLDepthData *)v41 sourceImageData];
    [v10 cameraIntrinsics];
    v37 = v12;
    v39 = v11;
    v35 = v13;
    v14 = [(ARMLDepthData *)v41 sourceImageData];
    [v14 imageResolution];
    v16 = v15;
    v18 = v17;
    [(ARMLDepthData *)v41 depthBufferSize];
    v21.f32[0] = ARAdjustIntrinsicsForViewportSize(v39, v37, v35, v16, v18, v19, v20);
    v38 = v22;
    v40 = v21;
    v36 = v23;

    ptr = self->_planeDetectionSession.__ptr_;
    [v9 visionCameraTransform];
    v33 = v26;
    v34 = v25;
    v31 = v28;
    v32 = v27;
    [(ARSegmentationData *)v8 timestamp];
    v30 = v29;
    v43.columns[1] = v38;
    v43.columns[0] = v40;
    v43.columns[0].i32[3] = 0;
    v43.columns[1].i32[3] = 0;
    v44.columns[0] = v34;
    v43.columns[2] = v36;
    v43.columns[2].i32[3] = 0;
    v44.columns[2] = v32;
    v44.columns[1] = v33;
    v44.columns[3] = v31;
    PlaneDetectionSession::PushDepthWithSemantics(ptr, v41, v8, v44, v43, v30);
    kdebug_trace();
  }
}

- (void)didReceiveKeyframesUpdatedCallback:(CV3DReconKeyframeList *)a3
{
  v99 = *MEMORY[0x1E69E9840];
  v92 = 0;
  Count = CV3DReconKeyframeListGetCount();
  kdebug_trace();
  kdebug_trace();
  v79 = [MEMORY[0x1E695DF90] dictionary];
  if (!Count)
  {
LABEL_49:
    os_unfair_lock_lock(&self->_spatialMappingPointCloudsLock);
    [(NSMutableDictionary *)self->_spatialMappingPointClouds addEntriesFromDictionary:v79];
    os_unfair_lock_unlock(&self->_spatialMappingPointCloudsLock);
    kdebug_trace();
    goto LABEL_73;
  }

  v5 = 0;
  while (1)
  {
    KeyframeUUIDAtIndex = CV3DReconKeyframeListGetKeyframeUUIDAtIndex();
    if (v92)
    {
      break;
    }

    v7 = KeyframeUUIDAtIndex;
    v8 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:KeyframeUUIDAtIndex];
    CFRelease(v7);
    CV3DReconKeyframeListGetKeyframeToWorldTransformAtIndex();
    v80 = v9;
    v81 = v10;
    v82 = v11;
    v83 = v12;
    if (v92)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v59 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v60 = _ARLogGeneral();
      v61 = v60;
      if (v59 == 1)
      {
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          v64 = v92;
          *buf = 138543874;
          v94 = v63;
          v95 = 2048;
          v96 = self;
          v97 = 2112;
          v98 = v92;
          _os_log_impl(&dword_1C241C000, v61, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting keyframe transform: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        v75 = v92;
        *buf = 138543874;
        v94 = v74;
        v95 = 2048;
        v96 = self;
        v97 = 2112;
        v98 = v92;
        _os_log_impl(&dword_1C241C000, v61, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting keyframe transform: %@", buf, 0x20u);
      }

      goto LABEL_71;
    }

    v13 = CV3DReconKeyframeListCopyKeyframeAtIndex();
    if (v92)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v65 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v66 = _ARLogGeneral();
      v61 = v66;
      if (v65 == 1)
      {
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = objc_opt_class();
          v68 = NSStringFromClass(v67);
          v69 = v92;
          *buf = 138543874;
          v94 = v68;
          v95 = 2048;
          v96 = self;
          v97 = 2112;
          v98 = v92;
          _os_log_impl(&dword_1C241C000, v61, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting keyframe: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v76 = objc_opt_class();
        v77 = NSStringFromClass(v76);
        v78 = v92;
        *buf = 138543874;
        v94 = v77;
        v95 = 2048;
        v96 = self;
        v97 = 2112;
        v98 = v92;
        _os_log_impl(&dword_1C241C000, v61, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting keyframe: %@", buf, 0x20u);
      }

LABEL_71:

      goto LABEL_72;
    }

    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v89 = __63__ARWorldTrackingTechnique_didReceiveKeyframesUpdatedCallback___block_invoke;
    v90 = &__block_descriptor_40_e5_v8__0l;
    v91 = v13;
    PointCloud = CV3DReconKeyframeCreatePointCloud();
    if (v92)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v15 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v16 = _ARLogGeneral();
      v17 = v16;
      if (v15 == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = v92;
          *buf = 138543874;
          v94 = v19;
          v95 = 2048;
          v96 = self;
          v97 = 2112;
          v98 = v92;
          _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error creating point cloud keyframe: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = v92;
        *buf = 138543874;
        v94 = v30;
        v95 = 2048;
        v96 = self;
        v97 = 2112;
        v98 = v92;
        _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error creating point cloud keyframe: %@", buf, 0x20u);
      }

      v32 = 0;
      goto LABEL_36;
    }

    v21 = PointCloud;
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v85 = __63__ARWorldTrackingTechnique_didReceiveKeyframesUpdatedCallback___block_invoke_172;
    v86 = &__block_descriptor_40_e5_v8__0l;
    v87 = PointCloud;
    CV3DReconKeyframeGetCreationTime();
    if (v92)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v24 = _ARLogGeneral();
      p_super = v24;
      if (v23 == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = v92;
          *buf = 138543874;
          v94 = v27;
          v95 = 2048;
          v96 = self;
          v97 = 2112;
          v98 = v92;
          _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting keyframe timestamp: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = v92;
        *buf = 138543874;
        v94 = v41;
        v95 = 2048;
        v96 = self;
        v97 = 2112;
        v98 = v92;
        _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting keyframe timestamp: %@", buf, 0x20u);
      }

LABEL_34:
      v32 = 0;
      goto LABEL_35;
    }

    v33 = v22;
    PointsCount = CV3DReconPointCloudGetPointsCount();
    if (v92)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v35 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v36 = _ARLogGeneral();
      p_super = v36;
      if (v35 == 1)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = v92;
          *buf = 138543874;
          v94 = v38;
          v95 = 2048;
          v96 = self;
          v97 = 2112;
          v98 = v92;
          _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting point cloud size: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = v92;
        *buf = 138543874;
        v94 = v45;
        v95 = 2048;
        v96 = self;
        v97 = 2112;
        v98 = v92;
        _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting point cloud size: %@", buf, 0x20u);
      }

      goto LABEL_34;
    }

    if (!PointsCount)
    {
      v47 = [v79 objectForKeyedSubscript:v8];
      p_super = v47;
      if (v47)
      {
        [v47 updateTransform:v80, v81, v82, v83];
      }

      v32 = 1;
      goto LABEL_35;
    }

    v43 = [[ARSpatialMappingPointCloud alloc] initWithPointCloud:v21 smTransform:v8 identifier:v80 timestamp:v81, v82, v83, v33];
    if (!v43)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v48 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v49 = _ARLogGeneral();
      p_super = v49;
      if (v48 == 1)
      {
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          *buf = 138543618;
          v94 = v51;
          v95 = 2048;
          v96 = self;
          _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error constructing point cloud", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        *buf = 138543618;
        v94 = v53;
        v95 = 2048;
        v96 = self;
        _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error constructing point cloud", buf, 0x16u);
      }

      goto LABEL_34;
    }

    [v79 setObject:v43 forKeyedSubscript:v8];
    v32 = 1;
    p_super = &v43->super;
LABEL_35:

    v85(v84);
LABEL_36:
    v89(v88);

    if ((v32 & 1) == 0)
    {
      goto LABEL_73;
    }

    if (Count == ++v5)
    {
      goto LABEL_49;
    }
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARWorldTrackingTechnique processData:];
  }

  v54 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v55 = _ARLogGeneral();
  v8 = v55;
  if (v54 == 1)
  {
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v58 = v92;
      *buf = 138543874;
      v94 = v57;
      v95 = 2048;
      v96 = self;
      v97 = 2112;
      v98 = v92;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting keyframe UUID: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    v72 = v92;
    *buf = 138543874;
    v94 = v71;
    v95 = 2048;
    v96 = self;
    v97 = 2112;
    v98 = v92;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting keyframe UUID: %@", buf, 0x20u);
  }

LABEL_72:

LABEL_73:
}

- (ARWorldMap)serializeWorldMapWithReferenceOrigin:(double)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  if (CV3DSLAMSessionSerializeMap())
  {
    v7 = [[ARWorldMap alloc] initWithTrackingData:v6 referenceOriginTransform:a2, a3, a4, a5];
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v9 = _ARLogTechnique();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543874;
        v21 = v12;
        v22 = 2048;
        v23 = a1;
        v24 = 2112;
        v25 = 0;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to serialize map: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543874;
      v21 = v14;
      v22 = 2048;
      v23 = a1;
      v24 = 2112;
      v25 = 0;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to serialize map: %@", buf, 0x20u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)clearMap
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(ARWorldTrackingTechnique *)self vioHandleState]== 3)
  {
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    self->_didClearMap = 1;
    [(ARWorldTrackingTechnique *)self setHasQualityKeyframe:0];
    dispatch_semaphore_signal(self->_resultSemaphore);
    kdebug_trace();
    if (CV3DSLAMSessionClearMap())
    {
      v3 = _ARLogTechnique();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        *buf = 138543618;
        v14 = v5;
        v15 = 2048;
        v16 = self;
        _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: World map cleared", buf, 0x16u);
      }

      kdebug_trace();
      [(ARWorldTrackingTechnique *)self resetSceneReconstruction];
      [(ARWorldTrackingTechnique *)self _resetSurfaceDetection];
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v6 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v7 = _ARLogTechnique();
      v8 = v7;
      if (v6 == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138543874;
          v14 = v10;
          v15 = 2048;
          v16 = self;
          v17 = 2112;
          v18 = 0;
          _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error clearing vio map: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543874;
        v14 = v12;
        v15 = 2048;
        v16 = self;
        v17 = 2112;
        v18 = 0;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error clearing vio map: %@", buf, 0x20u);
      }
    }
  }
}

- (id)serializeSurfaceData
{
  if (self->_planeDetectionSession.__ptr_)
  {
    os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
    v3 = PlaneDetectionSession::SerializePlanes(self->_planeDetectionSession.__ptr_);
    os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)loadSurfaceData:(id)a3
{
  v4 = a3;
  if (self->_planeDetectionSession.__ptr_)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
    PlaneDetectionSession::LoadPlanes(self->_planeDetectionSession.__ptr_, v5);
    self->_hasLoadedSurfaceData = 1;
    os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
    v4 = v5;
  }
}

- (void)addReferenceAnchors:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v60 = self;
  if (self->_allowPoseGraphUpdates)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v49 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v5)
    {
      v61 = *v63;
      do
      {
        v6 = 0;
        v50 = v5;
        do
        {
          if (*v63 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v62 + 1) + 8 * v6);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *v8.i64 = ARRenderingToVisionCoordinateTransform();
              v57 = v9;
              v58 = v8;
              v55 = v11;
              v56 = v10;
              [v7 referenceTransform];
              v53 = v13;
              v54 = v12;
              v51 = v15;
              v52 = v14;
              *&v16 = ARVisionToRenderingCoordinateTransform();
              v20 = 0;
              v66 = v54;
              v67 = v53;
              v68 = v52;
              v69 = v51;
              do
              {
                *&buf[v20] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*(&v66 + v20))), v57, *(&v66 + v20), 1), v56, *(&v66 + v20), 2), v55, *(&v66 + v20), 3);
                v20 += 16;
              }

              while (v20 != 64);
              v21 = 0;
              v22 = *buf;
              v23 = *&buf[16];
              v24 = *v72;
              v25 = *&v72[16];
              v66 = v16;
              v67 = v17;
              v68 = v18;
              v69 = v19;
              do
              {
                *&buf[v21] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v66 + v21))), v23, *(&v66 + v21), 1), v24, *(&v66 + v21), 2), v25, *(&v66 + v21), 3);
                v21 += 16;
              }

              while (v21 != 64);
              *v74.columns[0].i64 = ARNormalizedTransform(*buf);
              __invert_f4(v74);
              v26 = [v7 identifier];
              v27 = [v26 ar_createCFUUIDRef];

              *&v66 = 0;
              v28 = CV3DSLAMSessionAddAnchor();
              if ((v28 & 1) == 0)
              {
                if (ARShouldUseLogTypeError(void)::onceToken != -1)
                {
                  [ARWorldTrackingTechnique processData:];
                }

                v29 = ARShouldUseLogTypeError(void)::internalOSVersion;
                v30 = _ARLogTechnique();
                v31 = v30;
                if (v29 == 1)
                {
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    v32 = objc_opt_class();
                    v33 = NSStringFromClass(v32);
                    v34 = v66;
                    *buf = 138543874;
                    *&buf[4] = v33;
                    *&buf[12] = 2048;
                    *&buf[14] = v60;
                    *&buf[22] = 2112;
                    *&buf[24] = v66;
                    _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error adding anchor: %@", buf, 0x20u);
                  }
                }

                else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  v35 = objc_opt_class();
                  v36 = NSStringFromClass(v35);
                  v37 = v66;
                  *buf = 138543874;
                  *&buf[4] = v36;
                  *&buf[12] = 2048;
                  *&buf[14] = v60;
                  *&buf[22] = 2112;
                  *&buf[24] = v66;
                  _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error adding anchor: %@", buf, 0x20u);
                }
              }

              v38 = _ARLogTechnique();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                v39 = objc_opt_class();
                v40 = NSStringFromClass(v39);
                v41 = [v7 identifier];
                [v7 referenceTransform];
                v46 = ARMatrix4x4Description(0, v42, v43, v44, v45);
                v47 = v46;
                *buf = 138544386;
                v48 = @"FAILED";
                if (v28)
                {
                  v48 = @"SUCESS";
                }

                *&buf[4] = v40;
                *&buf[12] = 2048;
                *&buf[14] = v60;
                *&buf[22] = 2112;
                *&buf[24] = v41;
                *v72 = 2112;
                *&v72[2] = v46;
                *&v72[10] = 2112;
                *&v72[12] = v48;
                _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CV3DVIOAddAnchor: %@ - %@, %@", buf, 0x34u);
              }

              CFRelease(v27);
              v5 = v50;
            }
          }

          ++v6;
        }

        while (v6 != v5);
        v5 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v5);
    }

    v4 = v49;
  }
}

- (void)removeReferenceAnchors:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v28 = a3;
  if (self->_allowPoseGraphUpdates && self->_slamSessionHandle)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v28;
    v4 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v4)
    {
      v30 = *v32;
      do
      {
        v5 = 0;
        do
        {
          if (*v32 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v31 + 1) + 8 * v5);
          v7 = [v6 identifier];
          v8 = [v7 ar_createCFUUIDRef];

          v9 = CV3DSLAMSessionRemoveAnchor();
          if ((v9 & 1) == 0)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v10 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v11 = _ARLogTechnique();
            v12 = v11;
            if (v10 == 1)
            {
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                v13 = objc_opt_class();
                v14 = NSStringFromClass(v13);
                *buf = 138543874;
                v36 = v14;
                v37 = 2048;
                v38 = self;
                v39 = 2112;
                v40 = 0;
                _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error removing anchor: %@", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              *buf = 138543874;
              v36 = v16;
              v37 = 2048;
              v38 = self;
              v39 = 2112;
              v40 = 0;
              _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error removing anchor: %@", buf, 0x20u);
            }
          }

          v17 = _ARLogTechnique();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = [v6 identifier];
            [v6 referenceTransform];
            v25 = ARMatrix4x4Description(0, v21, v22, v23, v24);
            v26 = v25;
            *buf = 138544386;
            v27 = @"FAILED";
            if (v9)
            {
              v27 = @"SUCESS";
            }

            v36 = v19;
            v37 = 2048;
            v38 = self;
            v39 = 2112;
            v40 = v20;
            v41 = 2112;
            v42 = v25;
            v43 = 2112;
            v44 = v27;
            _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CV3DVIORemoveAnchor: %@ - %@, %@", buf, 0x34u);
          }

          CFRelease(v8);
          ++v5;
        }

        while (v4 != v5);
        v4 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v4);
    }
  }
}

- (void)addObserver:(id)a3
{
  observersSemaphore = self->_observersSemaphore;
  v5 = a3;
  dispatch_semaphore_wait(observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSHashTable *)self->_observers addObject:v5];

  v6 = self->_observersSemaphore;

  dispatch_semaphore_signal(v6);
}

- (void)removeObserver:(id)a3
{
  observersSemaphore = self->_observersSemaphore;
  v5 = a3;
  dispatch_semaphore_wait(observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSHashTable *)self->_observers removeObject:v5];

  v6 = self->_observersSemaphore;

  dispatch_semaphore_signal(v6);
}

- (id)getObservers
{
  dispatch_semaphore_wait(self->_observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = [(NSHashTable *)self->_observers allObjects];
  dispatch_semaphore_signal(self->_observersSemaphore);

  return v3;
}

- (void)pushCollaborationData:(id)a3
{
  v133 = *MEMORY[0x1E69E9840];
  v114 = a3;
  v4 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v5 = [v4 isCollaborationEnabled];

  v115.columns[1].i64[1] = self;
  if (v5)
  {
    dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v120 = 0;
    if ([v114 vioDataType] == 7)
    {
      v118 = 0;
      v128 = 0;
      v126 = 0u;
      v127 = 0u;
      memset(v125, 0, sizeof(v125));
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v6 = [v114 vioData];
      CMPoseAnchorTransformation = CV3DSLAMSessionGetCMPoseAnchorTransformation();

      if (CMPoseAnchorTransformation)
      {
        *v8.i64 = ARMatrix4x4MakeRowMajorTransform(v125);
        v115.columns[0] = v8;
        v108 = v10;
        v111 = v9;
        v105 = v11;
        *v12.i64 = ARVisionToRenderingCoordinateTransform();
        v103 = v13;
        v104 = v12;
        v101 = v15;
        v102 = v14;
        *v16.i64 = ARRenderingToVisionCoordinateTransform();
        v97 = v17;
        v98 = v16;
        v99 = v19;
        v100 = v18;
        v134.columns[0] = v115.columns[0];
        v134.columns[2] = v108;
        v134.columns[1] = v111;
        v134.columns[3] = v105;
        v135 = __invert_f4(v134);
        v20 = 0;
        v129 = v135;
        do
        {
          *&buf[v20 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, COERCE_FLOAT(*&v129.columns[v20])), v103, *v129.columns[v20].f32, 1), v102, v129.columns[v20], 2), v101, v129.columns[v20], 3);
          ++v20;
        }

        while (v20 != 4);
        v21 = 0;
        v22 = *buf;
        v23 = *&buf[16];
        v24 = v131;
        v25 = v132;
        v129.columns[0] = v98;
        v129.columns[1] = v97;
        v129.columns[2] = v100;
        v129.columns[3] = v99;
        do
        {
          *&buf[v21 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*&v129.columns[v21])), v23, *v129.columns[v21].f32, 1), v24, v129.columns[v21], 2), v25, v129.columns[v21], 3);
          ++v21;
        }

        while (v21 != 4);
        v115.columns[0] = *buf;
        v109 = v131;
        v112 = *&buf[16];
        v106 = v132;
        if (ARLinkedOnOrAfterAzul())
        {
          *v26.i64 = simd_matrix4x4(_PromotedConst);
          v27 = 0;
          v129.columns[0] = v26;
          v129.columns[1] = v28;
          v129.columns[2] = v29;
          v129.columns[3] = v30;
          do
          {
            *&buf[v27 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v115.columns[0], COERCE_FLOAT(*&v129.columns[v27])), v112, *v129.columns[v27].f32, 1), v109, v129.columns[v27], 2), v106, v129.columns[v27], 3);
            ++v27;
          }

          while (v27 != 4);
          v115.columns[0] = *&buf[16];
          v110 = v131;
          v113 = *buf;
          v107 = v132;
          *v31.i64 = simd_matrix4x4(_PromotedConst_592);
          v32 = 0;
          v129.columns[0] = v31;
          v129.columns[1] = v33;
          v129.columns[2] = v34;
          v129.columns[3] = v35;
          do
          {
            *&buf[v32 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*&v129.columns[v32])), v115.columns[0], *v129.columns[v32].f32, 1), v110, v129.columns[v32], 2), v107, v129.columns[v32], 3);
            ++v32;
          }

          while (v32 != 4);
          v115.columns[0].i64[0] = *buf;
          v109.i64[0] = v131.i64[0];
          v112.i64[0] = *&buf[16];
          v106.i64[0] = v132.i64[0];
        }

        v129.columns[0] = v119;
        v36 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v129];
        v37 = [(ARAnchor *)[ARParticipantAnchor alloc] initWithIdentifier:v36 transform:*v115.columns[0].i64, *v112.i64, *v109.i64, *v106.i64];
        [(ARAnchor *)v37 setSessionIdentifier:v36];
        dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        [(NSMutableSet *)self->_participantAnchors removeObject:v37];
        [(NSMutableSet *)self->_participantAnchors addObject:v37];
        v38 = _ARLogTechnique();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = [(ARAnchor *)v37 description];
          *buf = 138543874;
          *&buf[4] = v40;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 2112;
          *&buf[24] = v41;
          _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Participant anchor updated: %@", buf, 0x20u);
        }

        dispatch_semaphore_signal(self->_resultSemaphore);
      }

      else
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
        }

        v78 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v79 = _ARLogTechnique();
        v80 = v79;
        if (v78 == 1)
        {
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            v81 = objc_opt_class();
            v82 = NSStringFromClass(v81);
            *buf = 138543874;
            *&buf[4] = v82;
            *&buf[12] = 2048;
            *&buf[14] = self;
            *&buf[22] = 2112;
            *&buf[24] = v120;
            _os_log_impl(&dword_1C241C000, v80, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting pose for participant anchor: %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v90 = objc_opt_class();
          v91 = NSStringFromClass(v90);
          *buf = 138543874;
          *&buf[4] = v91;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 2112;
          *&buf[24] = v120;
          _os_log_impl(&dword_1C241C000, v80, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting pose for participant anchor: %@", buf, 0x20u);
        }
      }

      v92 = self;
    }

    else
    {
      [v114 vioDataType];
      v49 = [v114 vioData];
      [v49 length];
      [v114 vioSessionID];
      kdebug_trace();

      v50 = [v114 anchors];

      if (v50)
      {
        anchorsReceived = self->_anchorsReceived;
        v52 = [v114 anchors];
        [(NSMutableSet *)anchorsReceived minusSet:v52];

        v53 = self->_anchorsReceived;
        v54 = [v114 anchors];
        [(NSMutableSet *)v53 unionSet:v54];

        v55 = _ARLogTechnique();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          v58 = [v114 anchors];
          v59 = [v58 count];
          v60 = [(NSMutableSet *)self->_anchorsReceived count];
          *v125 = 138544130;
          *&v125[4] = v57;
          *&v125[12] = 2048;
          *&v125[14] = self;
          *&v125[22] = 2048;
          *&v125[24] = v59;
          LOWORD(v126) = 2048;
          *(&v126 + 2) = v60;
          _os_log_impl(&dword_1C241C000, v55, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: collaboration data received with anchors: %tu => %tu", v125, 0x2Au);
        }

        v116 = 0u;
        v117 = 0u;
        memset(&v115.columns[2], 0, 32);
        v61 = self->_anchorsReceived;
        v62 = [(NSMutableSet *)v61 countByEnumeratingWithState:&v115.columns[2] objects:v121 count:16];
        if (v62)
        {
          v63 = *v115.columns[3].i64[0];
          do
          {
            for (i = 0; i != v62; ++i)
            {
              if (*v115.columns[3].i64[0] != v63)
              {
                objc_enumerationMutation(v61);
              }

              v65 = *(v115.columns[2].i64[1] + 8 * i);
              v66 = _ARLogTechnique();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
              {
                v67 = objc_opt_class();
                v68 = NSStringFromClass(v67);
                v69 = [v65 description];
                *v125 = 138543874;
                *&v125[4] = v68;
                *&v125[12] = 2048;
                *&v125[14] = self;
                *&v125[22] = 2112;
                *&v125[24] = v69;
                _os_log_impl(&dword_1C241C000, v66, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: received anchor: %@", v125, 0x20u);
              }
            }

            v62 = [(NSMutableSet *)v61 countByEnumeratingWithState:&v115.columns[2] objects:v121 count:16];
          }

          while (v62);
        }
      }

      [v114 vioDataType];
      v70 = [v114 vioData];
      v71 = CV3DSLAMSessionPushCMData();

      if (v71)
      {
        v72 = _ARLogTechnique();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          v73 = objc_opt_class();
          v74 = NSStringFromClass(v73);
          v75 = [v114 vioData];
          v76 = [v75 length];
          v77 = NSStringFromSLAMCMDataType([v114 vioDataType]);
          *v125 = 138544130;
          *&v125[4] = v74;
          *&v125[12] = 2048;
          *&v125[14] = self;
          *&v125[22] = 2048;
          *&v125[24] = v76;
          LOWORD(v126) = 2112;
          *(&v126 + 2) = v77;
          _os_log_impl(&dword_1C241C000, v72, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: collaboration data pushed to VIO: %lu, %@", v125, 0x2Au);
        }
      }

      else
      {
        v83 = self;
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
          v83 = self;
        }

        v84 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v85 = _ARLogTechnique();
        v72 = v85;
        if (v84 == 1)
        {
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            v86 = objc_opt_class();
            v87 = NSStringFromClass(v86);
            slamSessionHandle = v83->_slamSessionHandle;
            v89 = v120;
            *v125 = 138544130;
            *&v125[4] = v87;
            *&v125[12] = 2048;
            *&v125[14] = v83;
            *&v125[22] = 2048;
            *&v125[24] = slamSessionHandle;
            LOWORD(v126) = 2112;
            *(&v126 + 2) = v120;
            _os_log_impl(&dword_1C241C000, v72, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: error pushing SLAM data %p, %@", v125, 0x2Au);
          }
        }

        else if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v93 = objc_opt_class();
          v94 = NSStringFromClass(v93);
          v95 = v83->_slamSessionHandle;
          v96 = v120;
          *v125 = 138544130;
          *&v125[4] = v94;
          *&v125[12] = 2048;
          *&v125[14] = v83;
          *&v125[22] = 2048;
          *&v125[24] = v95;
          LOWORD(v126) = 2112;
          *(&v126 + 2) = v120;
          _os_log_impl(&dword_1C241C000, v72, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: error pushing SLAM data %p, %@", v125, 0x2Au);
        }
      }

      [v114 vioSessionID];
      v92 = v115.columns[1].i64[1];
      kdebug_trace();
    }

    dispatch_semaphore_signal(v92->_sessionHandleStateSemaphore);
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
    }

    v42 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v43 = _ARLogTechnique();
    v44 = v43;
    if (v42 == 1)
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *v125 = 138543618;
        *&v125[4] = v46;
        *&v125[12] = 2048;
        *&v125[14] = self;
        _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: collaboration data cannot be pushed because the feature is disabled.", v125, 0x16u);
      }
    }

    else if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *v125 = 138543618;
      *&v125[4] = v48;
      *&v125[12] = 2048;
      *&v125[14] = self;
      _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: collaboration data cannot be pushed because the feature is disabled.", v125, 0x16u);
    }
  }
}

- (void)_reportCollaborationData:(id)a3 type:(unsigned __int8)a4 metadata:(const void *)a5
{
  v6 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = _ARLogTechnique();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v8 length];
    v13 = NSStringFromSLAMCMDataType(v6);
    *buf = 138544386;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = self;
    v42 = 2048;
    v43 = v12;
    v44 = 2112;
    v45 = v13;
    v46 = 2048;
    v47 = a5;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: collaboration data received from VIO: %lu, %@, %p", buf, 0x34u);
  }

  v14 = [[ARCollaborationData alloc] initWithVIOData:v8 type:v6 sessionID:[(ARWorldTrackingTechnique *)self vioSessionIdentifier]];
  if (v6 != 1)
  {
    goto LABEL_19;
  }

  v39 = 0;
  v38 = 0uLL;
  v37 = 0;
  if (!MEMORY[0x1C6919870](a5, &v39, &v38, &v37))
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v17 = _ARLogTechnique();
    v18 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = v37;
        *buf = 138543874;
        *&buf[4] = v20;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v42 = 2112;
        v43 = v37;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to parse anchor metadata: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = v37;
      *buf = 138543874;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v42 = 2112;
      v43 = v37;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to parse anchor metadata: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (v39 == 1)
  {
    *buf = v38;
    v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buf];
    [(ARCollaborationData *)v14 setAnchorIdentifier:v15];

LABEL_19:
    [(ARWorldTrackingTechnique *)self getObservers];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v28 = v34 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v29)
    {
      v30 = *v34;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v33 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v32 technique:self didOutputCollaborationData:{v14, v33}];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v29);
    }

    goto LABEL_29;
  }

  v22 = _ARLogTechnique();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    *buf = 138543618;
    *&buf[4] = v24;
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Not reporting non-user created anchor.", buf, 0x16u);
  }

LABEL_29:
}

- (void)removePlanesByUUIDs:(id)a3
{
  v4 = a3;
  if (self->_planeDetectionSession.__ptr_)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
    PlaneDetectionSession::ErasePlanes(self->_planeDetectionSession.__ptr_, v5);
    os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
    v4 = v5;
  }
}

- (int)extentCheckFromConfiguration
{
  if (([(ARWorldTrackingOptions *)self->_mutableOptions planeDetection]& 0x200) != 0)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (id)raycast:(id)a3
{
  v4 = a3;
  if (self->_raycastSession.__ptr_)
  {
    ARInitializeHitTestIntentWithExtentCheck(v12, v4, 0, [(ARWorldTrackingTechnique *)self extentCheckFromConfiguration], *self->_anon_360, *&self->_anon_360[16], *&self->_anon_360[32], *&self->_anon_360[48]);
    ptr = self->_raycastSession.__ptr_;
    [(ARWorldTrackingTechnique *)self referenceOriginTransform];
    v10 = RaycastSession::PerformHitTest(v6, v7, v8, v9, ptr, v12, v4);
    ARReleaseHitTestIntent(v12);
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)trackedRaycast:(id)a3 updateHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_raycastSession.__ptr_)
  {
    ARInitializeHitTestIntentWithExtentCheck(v12, v6, 1, [(ARWorldTrackingTechnique *)self extentCheckFromConfiguration], *self->_anon_360, *&self->_anon_360[16], *&self->_anon_360[32], *&self->_anon_360[48]);
    v8 = RaycastSession::PerformHitTest(*self->_anon_360, *&self->_anon_360[16], *&self->_anon_360[32], *&self->_anon_360[48], self->_raycastSession.__ptr_, v12, v6);
    if ([v8 count])
    {
      v9 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:v13];
      ARReleaseHitTestIntent(v12);
      v10 = [[ARTrackedRaycast alloc] initWithIdentifier:v9 ray:v6 worldTrackingTechnique:self updateHandler:v7];
      [(ARTrackedRaycastPostProcessor *)self->_trackedRaycastPostProcessor addTrackedRaycast:v10 andProcessInitialResults:v8];
    }

    else
    {
      ARReleaseHitTestIntent(v12);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)stopRaycast:(id)a3
{
  v4 = a3;
  trackedRaycastPostProcessor = self->_trackedRaycastPostProcessor;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__ARWorldTrackingTechnique_stopRaycast___block_invoke;
  v7[3] = &unk_1E817C820;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(ARTrackedRaycastPostProcessor *)trackedRaycastPostProcessor performBlockWhileLockingRaycasts:v7];
}

void __40__ARWorldTrackingTechnique_stopRaycast___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) identifier];
  v2 = [v5 ar_createCFUUIDRef];

  RaycastSession::StopRaycast(*(*(a1 + 40) + 832), v2);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 816);
  v6 = [v3 identifier];
  [v4 removeTrackedRaycastWithIdentifier:?];
}

- (void)invalidateAllRaycasts
{
  trackedRaycastPostProcessor = self->_trackedRaycastPostProcessor;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__ARWorldTrackingTechnique_invalidateAllRaycasts__block_invoke;
  v3[3] = &unk_1E817C848;
  v3[4] = self;
  [(ARTrackedRaycastPostProcessor *)trackedRaycastPostProcessor performBlockWhileLockingRaycasts:v3];
}

- (void)stopAllRaycasts
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [(ARTrackedRaycastPostProcessor *)self->_trackedRaycastPostProcessor trackedRaycasts];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) stopTracking];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)didUpdateRaycastResult:(CV3DHitTestResults *)a3
{
  v14 = objc_opt_new();
  var1 = a3->var1;
  if (var1)
  {
    v6 = 0;
    for (i = 0; i < var1; ++i)
    {
      var0 = a3->var0;
      if (a3->var0[v6].var0)
      {
        v9 = [(ARWorldTrackingTechnique *)self raycastResultFrom:&var0[v6]];
        v10 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:var0[v6].var0];
        v11 = [v14 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = objc_opt_new();
          [v14 setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [v14 objectForKeyedSubscript:v10];
        [v13 addObject:v9];

        var1 = a3->var1;
      }

      ++v6;
    }
  }

  [(ARTrackedRaycastPostProcessor *)self->_trackedRaycastPostProcessor processUpdatedResults:v14];
  CV3DReleaseHitTestResults();
}

- (void)_handleRaycastResultCallback:(CV3DRaycastResultMap *)a3
{
  [(ARWorldTrackingTechnique *)self referenceOriginTransform];
  v5 = ARRaycastResultsDictionaryFrom(a3, v7);
  if (v5)
  {
    [(ARTrackedRaycastPostProcessor *)self->_trackedRaycastPostProcessor processUpdatedResults:v5];
  }
}

- (id)raycastResultFrom:(CV3DHitTestResult *)a3
{
  [(ARWorldTrackingTechnique *)self referenceOriginTransform];

  return ARRaycastResultFrom(a3, v4);
}

- (void)_updateVIOLineDetectionPolicy
{
  v3 = [(ARWorldTrackingTechnique *)self options];
  if ([v3 planeEstimationShouldUseJasperData])
  {
  }

  else
  {
    v4 = [(ARWorldTrackingTechnique *)self options];
    v5 = [v4 planeDetection];

    if (v5)
    {
      v6 = MEMORY[0x1E698BD38];
      goto LABEL_6;
    }
  }

  v6 = MEMORY[0x1E698BD40];
LABEL_6:
  slamSessionHandle = self->_slamSessionHandle;
  v8 = *v6;

  MEMORY[0x1EEDECFA8](slamSessionHandle, v8, 0);
}

- (int64_t)_initializeSLAMAndPredictorHandle
{
  v118 = *MEMORY[0x1E69E9840];
  v88 = [(ARWorldTrackingTechnique *)self mutableOptions];
  [v88 initialWorldMap];
  v3 = v2 = self;

  if (v3)
  {
    self->_relocalizationState = 2;
  }

  kdebug_trace();
  v112 = 0;
  v4 = [v88 createSLAMCalibration:&v112];
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v109 = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke;
  v110 = &__block_descriptor_40_e5_v8__0l;
  v111 = v112;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = ARKitCoreBundle();
    v7 = [v6 localizedStringForKey:@"Unable to initialize tracking." value:&stru_1F4208A80 table:@"Localizable"];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A588]];

    v8 = ARErrorWithCodeAndUserInfo(200, v5);
    [(ARWorldTrackingTechnique *)self _didFailWithError:v8];
  }

  else
  {
    v107 = 0;
    [v88 createSLAMConfig:&v107 calibration:?];
    v102 = 0;
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v104 = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_2;
    v105 = &__block_descriptor_40_e5_v8__0l;
    v106 = v107;
    if (!CV3DSLAMConfigAsString())
    {
      v9 = _ARLogTechnique();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [(ARWorldTrackingTechnique *)self mutableOptions];
        v13 = [v12 slamConfiguration];
        *buf = 138543874;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v114 = 2112;
        v115 = v13;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Created SLAM configuration with configuration preset '%@'. SLAM config string:", buf, 0x20u);
      }

      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v102];
      ARLogDebugNoClassLongMessage(v14, @"ARWorldTrackingTechnique");

      free(v102);
      v2 = self;
    }

    v101 = 0;
    v15 = CV3DSLAMSessionCreate();
    v2->_slamSessionHandle = v15;
    if (v15)
    {
      v16 = CV3DPosePredictionConfigCreate();
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v98 = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_196;
      v99 = &__block_descriptor_40_e5_v8__0l;
      v100 = v16;
      v17 = CV3DPosePredictionCreate();
      if (v17)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
          v2 = self;
        }

        v18 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v19 = _ARLogGeneral();
        v20 = v19;
        if (v18 == 1)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            *buf = 138543874;
            *&buf[4] = v22;
            *&buf[12] = 2048;
            *&buf[14] = v2;
            v114 = 1024;
            LODWORD(v115) = v17;
            _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: CV3DPosePredictionCreate error: %d", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          *buf = 138543874;
          *&buf[4] = v36;
          *&buf[12] = 2048;
          *&buf[14] = v2;
          v114 = 1024;
          LODWORD(v115) = v17;
          _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: CV3DPosePredictionCreate error: %d", buf, 0x1Cu);
        }
      }

      else
      {
        if (!CV3PosePredictionInitialize())
        {
          kdebug_trace();
          v95 = 0;
          v96 = 0;
          if (CV3DSLAMSessionGetSessionID())
          {
            v2->_vioSessionIdentifier = v96;
            v44 = _ARLogTechnique();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              *buf = 138543874;
              *&buf[4] = v46;
              *&buf[12] = 2048;
              *&buf[14] = v2;
              v114 = 2048;
              v115 = v96;
              _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_INFO, "%{public}@ <%p>: initialized with session identifier %llX", buf, 0x20u);
            }
          }

          else
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
              v2 = self;
            }

            v55 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v56 = _ARLogTechnique();
            v44 = v56;
            if (v55 == 1)
            {
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                v57 = objc_opt_class();
                v58 = NSStringFromClass(v57);
                *buf = 138543874;
                *&buf[4] = v58;
                *&buf[12] = 2048;
                *&buf[14] = v2;
                v114 = 2112;
                v115 = v101;
                _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: unable to read VIO session identifier: %@", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v59 = objc_opt_class();
              v60 = NSStringFromClass(v59);
              *buf = 138543874;
              *&buf[4] = v60;
              *&buf[12] = 2048;
              *&buf[14] = v2;
              v114 = 2112;
              v115 = v101;
              _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: unable to read VIO session identifier: %@", buf, 0x20u);
            }
          }

          objc_initWeak(&location, self);
          v95 = 0;
          v92[1] = MEMORY[0x1E69E9820];
          v92[2] = 3221225472;
          v92[3] = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_197;
          v92[4] = &unk_1E817C870;
          v87 = &v93;
          objc_copyWeak(&v93, &location);
          if ((CV3DSLAMSetNewStateBlock() & 1) == 0)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v61 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v62 = _ARLogTechnique();
            v63 = v62;
            if (v61 == 1)
            {
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                v64 = objc_opt_class();
                v65 = NSStringFromClass(v64);
                slamSessionHandle = self->_slamSessionHandle;
                v67 = v95;
                *buf = 138544130;
                *&buf[4] = v65;
                *&buf[12] = 2048;
                *&buf[14] = self;
                v114 = 2048;
                v115 = slamSessionHandle;
                v116 = 2112;
                v117 = v95;
                _os_log_impl(&dword_1C241C000, v63, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: error setting metadata callback (%p): %@", buf, 0x2Au);
              }
            }

            else if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              v68 = objc_opt_class();
              v69 = NSStringFromClass(v68);
              v70 = self->_slamSessionHandle;
              v71 = v95;
              *buf = 138544130;
              *&buf[4] = v69;
              *&buf[12] = 2048;
              *&buf[14] = self;
              v114 = 2048;
              v115 = v70;
              v116 = 2112;
              v117 = v95;
              _os_log_impl(&dword_1C241C000, v63, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: error setting metadata callback (%p): %@", buf, 0x2Au);
            }

            v72 = objc_loadWeakRetained(&location);
            v73 = ARErrorWithCodeAndUserInfo(200, 0);
            [v72 _didFailWithError:{v73, &v93}];
          }

          objc_destroyWeak(v87);
          v95 = 0;
          v91[2] = MEMORY[0x1E69E9820];
          v91[3] = 3221225472;
          v91[4] = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_199;
          v91[5] = &unk_1E817C898;
          objc_copyWeak(v92, &location);
          CV3DSLAMSetErrorBlock();
          if (v95)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v74 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v75 = _ARLogTechnique();
            v76 = v75;
            if (v74 == 1)
            {
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v77 = objc_opt_class();
                v78 = NSStringFromClass(v77);
                v79 = self->_slamSessionHandle;
                v80 = v95;
                *buf = 138544130;
                *&buf[4] = v78;
                *&buf[12] = 2048;
                *&buf[14] = self;
                v114 = 2048;
                v115 = v79;
                v116 = 2112;
                v117 = v95;
                _os_log_impl(&dword_1C241C000, v76, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: error setting error callback (%p): %@", buf, 0x2Au);
              }
            }

            else if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              v81 = objc_opt_class();
              v82 = NSStringFromClass(v81);
              v83 = self->_slamSessionHandle;
              v84 = v95;
              *buf = 138544130;
              *&buf[4] = v82;
              *&buf[12] = 2048;
              *&buf[14] = self;
              v114 = 2048;
              v115 = v83;
              v116 = 2112;
              v117 = v95;
              _os_log_impl(&dword_1C241C000, v76, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: error setting error callback (%p): %@", buf, 0x2Au);
            }

            v85 = objc_loadWeakRetained(&location);
            v86 = ARErrorWithCodeAndUserInfo(200, 0);
            [v85 _didFailWithError:{v86, v92}];
          }

          v90[0] = MEMORY[0x1E69E9820];
          v90[1] = 3221225472;
          v90[2] = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_201;
          v90[3] = &unk_1E817C8C0;
          objc_copyWeak(v91, &location);
          v91[1] = MEMORY[0x1C691B4C0](v90);
          [(ARWorldTrackingTechnique *)self deterministicMode];
          std::allocate_shared[abi:ne200100]<RaycastSession,std::allocator<RaycastSession>,CV3DSLAMSession *&,void({block_pointer} {__strong}&)(CV3DRaycastResultMap const*),BOOL,0>();
        }

        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
        }

        v29 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v30 = _ARLogTechnique();
        v31 = v30;
        if (v29 == 1)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            predictorHandle = self->_predictorHandle;
            *buf = 138544130;
            *&buf[4] = v33;
            *&buf[12] = 2048;
            *&buf[14] = self;
            v114 = 2048;
            v115 = predictorHandle;
            v116 = 2112;
            v117 = v101;
            _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error initializing predictor handle (%p): %@", buf, 0x2Au);
          }
        }

        else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = self->_predictorHandle;
          *buf = 138544130;
          *&buf[4] = v48;
          *&buf[12] = 2048;
          *&buf[14] = self;
          v114 = 2048;
          v115 = v49;
          v116 = 2112;
          v117 = v101;
          _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error initializing predictor handle (%p): %@", buf, 0x2Au);
        }

        v50 = [MEMORY[0x1E695DF90] dictionary];
        v51 = ARKitCoreBundle();
        v52 = [v51 localizedStringForKey:@"Unable to initialize tracking." value:&stru_1F4208A80 table:@"Localizable"];
        [v50 setObject:v52 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v53 = ARErrorWithCodeAndUserInfo(200, v50);
        [(ARWorldTrackingTechnique *)self _didFailWithError:v53];
      }

      v98(v97);
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v24 = _ARLogTechnique();
      v25 = v24;
      if (v23 == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = self->_slamSessionHandle;
          *buf = 138544130;
          *&buf[4] = v27;
          *&buf[12] = 2048;
          *&buf[14] = self;
          v114 = 2048;
          v115 = v28;
          v116 = 2112;
          v117 = v101;
          _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error initializing SLAM handle (%p): %@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = self->_slamSessionHandle;
        *buf = 138544130;
        *&buf[4] = v38;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v114 = 2048;
        v115 = v39;
        v116 = 2112;
        v117 = v101;
        _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error initializing SLAM handle (%p): %@", buf, 0x2Au);
      }

      v40 = [MEMORY[0x1E695DF90] dictionary];
      v41 = ARKitCoreBundle();
      v42 = [v41 localizedStringForKey:@"Unable to initialize tracking." value:&stru_1F4208A80 table:@"Localizable"];
      [v40 setObject:v42 forKeyedSubscript:*MEMORY[0x1E696A588]];

      v43 = ARErrorWithCodeAndUserInfo(200, v40);
      [(ARWorldTrackingTechnique *)self _didFailWithError:v43];
    }

    (v104)(v103);
  }

  (v109)(v108);

  return 4;
}

void __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_197(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onMetadataCallback:a2];
}

void __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_199(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSLAMError:a2];
}

void __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_201(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRaycastResultCallback:a2];
}

uint64_t __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_203(uint64_t a1, uint64_t a2, CFDataRef theData, uint64_t a4)
{
  CFDataGetLength(theData);
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportCollaborationData:theData type:a2 metadata:a4];

  return kdebug_trace();
}

- (unsigned)CV3DSLAMJasperPointCloudProjectorModeFromAVTimeOfFlightProjectorMode:(int64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v20 = *MEMORY[0x1E69E9840];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = MEMORY[0x1E698BD28];
        goto LABEL_19;
      }

      if (a3 == 2)
      {
        v4 = MEMORY[0x1E698BD30];
LABEL_19:
        LOBYTE(v4) = *v4;
        return v4;
      }

      return v4;
    }

LABEL_18:
    v4 = MEMORY[0x1E698BD20];
    goto LABEL_19;
  }

  LOBYTE(v4) = a3 - 3;
  if ((a3 - 3) < 2)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
    }

    v6 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v7 = _ARLogTechnique();
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v14 = 138543874;
        v15 = v10;
        v16 = 2048;
        v17 = self;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error, the following projector mode is not supported by CV3D (enum value %ld)", &v14, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v14 = 138543874;
      v15 = v12;
      v16 = 2048;
      v17 = self;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error, the following projector mode is not supported by CV3D (enum value %ld)", &v14, 0x20u);
    }

    goto LABEL_18;
  }

  if (a3 == 6)
  {
    v4 = MEMORY[0x1E698BD18];
    goto LABEL_19;
  }

  return v4;
}

- (void)_removeAllMeshAnchors
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removing all mesh anchors", &v7, 0x16u);
  }

  v6 = +[ARSpatialMappingResultData emptyResultData];
  os_unfair_lock_lock(&self->_latestSpatialMappingDataLock);
  [(NSMutableArray *)self->_latestSpatialMappingData addObject:v6];
  os_unfair_lock_unlock(&self->_latestSpatialMappingDataLock);
  os_unfair_lock_lock(&self->_spatialMappingPointCloudsLock);
  [(NSMutableDictionary *)self->_spatialMappingPointClouds removeAllObjects];
  os_unfair_lock_unlock(&self->_spatialMappingPointCloudsLock);
}

- (void)_setupSceneReconstruction
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v13 = 138543618;
    v14 = v5;
    v15 = 2048;
    v16 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Start scene reconstruction", &v13, 0x16u);
  }

  v6 = [ARSceneReconstructionHandler alloc];
  v7 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v8 = [v7 sceneReconstruction];
  v9 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v10 = [v9 sceneReconstructionOptions];
  v11 = [(ARSceneReconstructionHandler *)v6 initWithSceneReconstruction:v8 options:v10 slamSessionHandle:self->_slamSessionHandle];
  sceneReconstructionHandler = self->_sceneReconstructionHandler;
  self->_sceneReconstructionHandler = v11;

  [(ARSceneReconstructionHandler *)self->_sceneReconstructionHandler setDelegate:self];
  [(ARWorldTrackingTechnique *)self _removeAllMeshAnchors];
}

- (void)_reconfigureSceneReconstruction
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v12 = 138543618;
    v13 = v5;
    v14 = 2048;
    v15 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reconfiguring scene reconstruction", &v12, 0x16u);
  }

  v6 = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  v7 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v8 = [v7 sceneReconstruction];
  v9 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v10 = [v9 sceneReconstructionOptions];
  v11 = [v6 reconfigureSceneReconstruction:v8 options:v10];

  if (v11 == 2)
  {
    [(ARWorldTrackingTechnique *)self _removeAllMeshAnchors];
  }
}

- (void)_startSceneReconstruction
{
  v3 = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];

  if (v3)
  {
    [(ARWorldTrackingTechnique *)self _reconfigureSceneReconstruction];
  }

  else
  {
    [(ARWorldTrackingTechnique *)self _setupSceneReconstruction];
  }

  v4 = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  [v4 start];

  [(ARWorldTrackingTechnique *)self _configureMeshPlaneHarmonization];
}

- (void)resetSceneReconstruction
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Resetting scene reconstruction", &v7, 0x16u);
  }

  v6 = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  [v6 reset];

  [(ARWorldTrackingTechnique *)self _removeAllMeshAnchors];
}

- (void)_configureMeshPlaneHarmonization
{
  v5 = [(ARWorldTrackingTechnique *)self mutableOptions];
  if ([v5 planeDetection])
  {
    v4 = 1;
  }

  else
  {
    v3 = [(ARWorldTrackingTechnique *)self mutableOptions];
    v4 = ([v3 planeDetection] >> 1) & 1;
  }

  v6 = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  [v6 meshPlaneHarmonizationShouldEnable:v4];
}

- (BOOL)querySceneReconstructionOccupancyWithPoints:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  sceneReconstructionHandler = self->_sceneReconstructionHandler;
  if (sceneReconstructionHandler)
  {
    v9 = [(ARSceneReconstructionHandler *)sceneReconstructionHandler queryOccupancyWithPoints:v6 callback:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)sceneReconstructionHandler:(id)a3 didFailWithError:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _ARLogTechnique();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138544130;
    v13 = v10;
    v14 = 2048;
    v15 = self;
    v16 = 2048;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Scene reconstruction handler %p failed with error %@", &v12, 0x2Au);
  }

  v11 = ARErrorWithCodeAndUserInfo(200, 0);
  [(ARWorldTrackingTechnique *)self _didFailWithError:v11];
}

- (void)sceneReconstructionHandler:(id)a3 didOutputMeshList:(CV3DReconMeshList *)a4 withTimestamp:(double)a5
{
  v8 = [ARSpatialMappingResultData alloc];
  v9 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v10 = -[ARSpatialMappingResultData initWithMeshList:sceneReconstruction:timestamp:](v8, "initWithMeshList:sceneReconstruction:timestamp:", a4, [v9 sceneReconstruction], a5);

  os_unfair_lock_lock(&self->_latestSpatialMappingDataLock);
  [(NSMutableArray *)self->_latestSpatialMappingData addObject:v10];
  os_unfair_lock_unlock(&self->_latestSpatialMappingDataLock);
}

- (void)sceneReconstructionHandler:(id)a3 didOutputKeyframeList:(CV3DReconKeyframeList *)a4 withTimestamp:(double)a5
{
  [(ARWorldTrackingTechnique *)self didReceiveKeyframesUpdatedCallback:a4, a5];

  CV3DReconKeyframeListRelease();
}

- (void)_handlePlaneDetectionCallback:(CV3DPlaneDetectionPlaneList *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v6 = [v5 trackedPlaneCallback];

  if (v6)
  {
    v7 = [[ARCV3DPlaneDetectionPlaneList alloc] initWithDetectionResult:a3];
    v8 = [(ARWorldTrackingTechnique *)self mutableOptions];
    v9 = [v8 trackedPlaneCallback];
    (v9)[2](v9, v7);
  }

  os_unfair_lock_lock(&self->_raycastSessionLock);
  if (self->_raycastSession.__ptr_)
  {
    CV3DRaycastPushPlanes();
  }

  os_unfair_lock_unlock(&self->_raycastSessionLock);
  v10 = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  [v10 processPlaneList:a3];

  v11 = [[ARPlaneData alloc] initWithDetectionResult:a3 detectionTypeMask:[(ARWorldTrackingOptions *)self->_mutableOptions planeDetection] sceneUnderstandingEnabled:[(ARWorldTrackingOptions *)self->_mutableOptions mlModelEnabled]];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(ARWorldTrackingTechnique *)self getObservers];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 technique:self didDetectPlane:v11 timestamp:0.0];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)_handleSingleShotPlaneDetectionCallback:(CV3DPlaneDetectionSingleShotPlaneList *)a3
{
  v5 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v6 = [v5 singleShotPlaneCallback];

  if (v6)
  {
    v7 = [[ARCV3DPlaneDetectionSingleShotPlaneList alloc] initWithDetectionResult:a3];
    v8 = [(ARWorldTrackingTechnique *)self mutableOptions];
    v9 = [v8 singleShotPlaneCallback];
    (v9)[2](v9, v7);
  }

  CV3DPlaneDetectionSingleShotPlaneListRelease();
}

- (void)_initializeSurfaceDetection:(const PlaneDetectionConfiguration *)a3
{
  objc_initWeak(&location, self);
  os_unfair_lock_lock_with_options();
  v4 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v5 = [v4 planeBundleAdjustmentEnabled];

  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke;
    v10[3] = &unk_1E817C910;
    objc_copyWeak(&v11, &location);
    v12 = MEMORY[0x1C691B4C0](v10);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke_2;
    v8[3] = &unk_1E817C938;
    objc_copyWeak(v9, &location);
    v9[1] = MEMORY[0x1C691B4C0](v8);
    std::allocate_shared[abi:ne200100]<PlaneDetectionSession,std::allocator<PlaneDetectionSession>,CV3DSLAMSession *&,PlaneDetectionConfiguration const&,void({block_pointer} {__strong}&)(CV3DPlaneDetectionPlaneList const*),void({block_pointer} {__strong}&)(CV3DPlaneDetectionSingleShotPlaneList const*),0>();
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke_3;
  v6[3] = &unk_1E817C938;
  objc_copyWeak(&v7, &location);
  v12 = MEMORY[0x1C691B4C0](v6);
  std::allocate_shared[abi:ne200100]<PlaneDetectionSession,std::allocator<PlaneDetectionSession>,CV3DSLAMSession *&,PlaneDetectionConfiguration const&,void({block_pointer} {__strong}&)(CV3DPlaneDetectionPlaneList const*),0>();
}

void __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSingleShotPlaneDetectionCallback:a2];
}

void __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlaneDetectionCallback:a2];
}

void __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlaneDetectionCallback:a2];
}

- (void)_resetSurfaceDetection
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543618;
    v7 = v5;
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Resetting surface detection", &v6, 0x16u);
  }

  [(ARWorldTrackingTechnique *)self _initializeSurfaceDetection:&self->_surfaceDetectionParametrization];
}

- (int64_t)_mappingStatusFromMapSize:(int)a3 keyframeQuality:(int)a4 isTrackingMap:(BOOL)a5 timestamp:(double)a6
{
  v7 = a5;
  if (self->_previousKeyframeCount < a3)
  {
    self->_previousKeyframeCount = a3;
    if (a4)
    {
      self->_lastQualityKeyframeTimestamp = a6;
      [(ARWorldTrackingTechnique *)self setHasQualityKeyframe:1];
    }
  }

  if (v7)
  {
    self->_lastPoseTrackingMapTimestamp = a6;
  }

  if (self->_previousKeyframeCount)
  {
    if (a6 - self->_lastQualityKeyframeTimestamp >= 1.0)
    {
      if (a6 - self->_lastPoseTrackingMapTimestamp >= 1.0)
      {
        v9 = 1;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  kdebug_trace();
  return v9;
}

- (id)_featurePointDataFromSLAMState:(const CV3DSLAMStateContext *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF88] data];
  PointCloud = CV3DSLAMStateGetPointCloud();
  if (PointCloud != *MEMORY[0x1E698BD80] || CV3DSLAMStateGetTimestamp() != PointCloud)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (CV3DSLAMStateGetStatus() != PointCloud)
  {
    v6 = _ARLogTechnique();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543874;
      v13 = v8;
      v14 = 2048;
      v15 = self;
      v16 = 2048;
      v17 = 0;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Point cloud rejected because tracking state is not nominal: %f", buf, 0x20u);
    }

    goto LABEL_7;
  }

  [v4 length];
  v9 = [[ARWorldTrackingFeaturePointData alloc] initWithTimestamp:0.0];
  kdebug_trace();
  v11 = [[ARPointCloud alloc] initWithCV3DPointData:v4 minVergenceAngleCosine:self->_minVergenceAngleCosine];
  [(ARWorldTrackingFeaturePointData *)v9 setVisionFeaturePoints:v11];

  kdebug_trace();
LABEL_8:

  return v9;
}

- (void)_updateTrackingState:(id)a3 slamState:(const CV3DSLAMStateContext *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v46 = a3;
  CV3DSLAMStateGetStatus();
  v44 = *(MEMORY[0x1E69E9B18] + 16);
  v45 = *MEMORY[0x1E69E9B18];
  v42 = *(MEMORY[0x1E69E9B18] + 48);
  v43 = *(MEMORY[0x1E69E9B18] + 32);
  if (CV3DSLAMStateGetRelocalizationTimestamp() == *MEMORY[0x1E698BD80] && self->_lastRelocalizationTimestamp < 0.0)
  {
    CV3DSLAMStateIsGlobalRelocalization();
    CV3DSLAMStateRelocalizationSucceeded();
    kdebug_trace();
    v5 = _ARLogTechnique();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544386;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v48 = 2048;
      v49 = 0;
      v50 = 1024;
      *v51 = 0;
      *&v51[4] = 1024;
      *&v51[6] = 0;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Relocalization event: %f, global %i, succeeded %i", buf, 0x2Cu);
    }

    self->_lastRelocalizationTimestamp = 0.0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if ([(ARWorldTrackingTechnique *)self _isRelocalizing:v34]&& self->_didClearMap)
  {
    v9 = _ARLogTechnique();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = @"NO";
      didClearMap = self->_didClearMap;
      *buf = 138544130;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      if (didClearMap)
      {
        v12 = @"YES";
      }

      *&buf[14] = self;
      v48 = 2112;
      v49 = @"NO";
      v50 = 2112;
      *v51 = v12;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Clearing relocalization after sensor data drop because major relocalization(%@) or clear map (%@) occurred.", buf, 0x2Au);
    }

    self->_relocalizationState = 0;
    if ((v8 & 1) == 0)
    {
      p_originTimestamp = &self->_originTimestamp;
      goto LABEL_19;
    }

    p_originTimestamp = &self->_originTimestamp;
    if (self->_didClearMap)
    {
LABEL_19:
      v15 = 0;
      v16 = *p_originTimestamp;
      if (*p_originTimestamp >= 2.22044605e-16)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else
  {
    p_originTimestamp = &self->_originTimestamp;
    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v15 = 1;
LABEL_20:
  [v46 timestamp];
  *p_originTimestamp = v17;
  v18 = _ARLogTechnique();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = *p_originTimestamp;
    *buf = 138543874;
    *&buf[4] = v20;
    *&buf[12] = 2048;
    *&buf[14] = self;
    v48 = 2048;
    v49 = v21;
    _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VIO origin timestamp: %f", buf, 0x20u);
  }

LABEL_23:
  if ([(ARWorldTrackingTechnique *)self _isRelocalizing])
  {
    if (self->_relocalizationState == 2)
    {
      v22 = 4;
    }

    else if (self->_wasEverInNominalState)
    {
      v22 = 4;
    }

    else
    {
      v22 = 1;
    }

    reinitializationAttempts = self->_reinitializationAttempts;
    if (self->_reinitializationAttemptsAtInitialization != reinitializationAttempts)
    {
      self->_reinitializationAttemptsAtInitialization = reinitializationAttempts;
      v25 = _ARLogTechnique();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = ARTrackingStateReasonToString(v22);
        reinitializationAttemptsAtInitialization = self->_reinitializationAttemptsAtInitialization;
        *buf = 138544130;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v48 = 2112;
        v49 = v28;
        v50 = 2048;
        *v51 = reinitializationAttemptsAtInitialization;
        _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting tracking state to limited with %@ after sensor data drop, resetting reinitialization attempts counter to %li", buf, 0x2Au);
      }
    }

    v23 = 1;
  }

  else
  {
    v23 = 1;
    v22 = 3;
    if (self->_reinitializationAttemptsAtInitialization == self->_reinitializationAttempts)
    {
      v22 = 0;
      self->_wasEverInNominalState = 1;
      v23 = 2;
    }
  }

  v30 = CV3DSLAMStateCopyUpdatedAnchors();
  v31 = v30;
  if (v30)
  {
    v32 = [v30 count] != 0;
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_opt_new();
  [v33 setState:v23];
  [v33 setReason:v22];
  [v33 setMajorRelocalization:0];
  [v33 setMinorRelocalization:v15 & 1];
  [v33 setPoseGraphUpdated:v32];
  [v33 setMajorRelocalizationCameraTransform:{*&v45, *&v44, *&v43, *&v42}];
  [v33 setVioTrackingState:1];
  [v33 setLastMajorRelocalizationTimestamp:self->_lastMajorRelocalizationTimestamp];
  [v33 setOriginTimestamp:*p_originTimestamp];
  [v33 setCurrentVIOMapSize:self->_currentVIOMapSize];
  [v33 setNumberOfCameraSwitches:self->_numberOfCameraSwitches];
  [v33 setReinitializationAttempts:self->_reinitializationAttempts];
  [v46 setWorldTrackingState:v33];
}

- (unint64_t)_sessionType
{
  v3 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v4 = [v3 imageSensorSettingsForUltraWide];

  if (v4)
  {
    return 0;
  }

  v6 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v7 = [v6 imageSensorSettings];
  v8 = [v7 isBravoCameraEnabled];

  if (v8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (unsigned)_trackingCameraID:(CV3DSLAMStateContext *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF88] data];
  if (CV3DSLAMStateGetCameraSwitchingStatistics() == *MEMORY[0x1E698BD80] && (v5 = [v4 bytes], (objc_msgSend(v4, "length") - 24) <= 0x17))
  {
    v6 = *v5;
    v7 = [(ARWorldTrackingTechnique *)self mutableOptions];
    v8 = [v7 activeVideoFormatsMap];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 captureDeviceType];

    lastCameraType = self->_lastCameraType;
    if (lastCameraType && lastCameraType != v11)
    {
      v13 = _ARLogTechnique();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = self->_lastCameraType;
        v19 = 138544130;
        v20 = v15;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Camera type changed from %@ to %@", &v19, 0x2Au);
      }

      if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.warningSounds"])
      {
        softLinkAudioServicesPlaySystemSound(0x454u);
      }

      ++self->_numberOfCameraSwitches;
    }

    v17 = self->_lastCameraType;
    self->_lastCameraType = v11;
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6;
}

- (__n128)_compensationMatrixForWidePlusUWSessionAndTrackingCameraID:(int)a3
{
  if (a1[17].n128_u32[2] == a3)
  {
    ARMatrix4x3FromMatrix4x4(*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48));
  }

  else
  {
    return a1[36];
  }

  return result;
}

- (__n128)_compensationMatrixForBravoSession
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 272);
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }
    }

    else
    {
      v4 = _ARLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v8 = 138543618;
        v9 = v6;
        v10 = 2048;
        v11 = a1;
        _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Encountered ARCaptureLensUnknown in Bravo cam session.", &v8, 0x16u);
      }
    }

    ARMatrix4x3FromMatrix4x4(*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48));
    return result;
  }

  if (v2 == 2)
  {
    v3 = 640;
  }

  else
  {
    if (v2 != 3)
    {
      return result;
    }

    v3 = 704;
  }

  return *(a1 + v3);
}

- (uint64_t)_compensationMatrixForTrackingCameraID:(uint64_t)a3
{
  result = [a1 _sessionType];
  switch(result)
  {
    case 2:
      return ARMatrix4x3FromMatrix4x4(*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48));
    case 1:
      return [a1 _compensationMatrixForBravoSession];
    case 0:
      return [a1 _compensationMatrixForWidePlusUWSessionAndTrackingCameraID:a3];
  }

  return result;
}

- (int)_updatePoseData:(id)a3 forTimeStamp:(double)a4 updateTrackingState:(BOOL)a5
{
  v5 = a5;
  v80 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = CV3DSLAMStateSnapshotCreate();
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v61 = __77__ARWorldTrackingTechnique__updatePoseData_forTimeStamp_updateTrackingState___block_invoke;
  v62 = &__block_descriptor_40_e5_v8__0l;
  v63 = v9;
  Pose = CV3DPosePredictionGetPose();
  if (Pose)
  {
    if (self->_lastPoseMetaDataTimestamp <= 0.0)
    {
LABEL_32:
      v21 = 1;
      goto LABEL_37;
    }

    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v11 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v12 = _ARLogTechnique();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromCV3DPosePredictionReturn(Pose);
        *buf = 138544130;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        *&buf[24] = v16;
        LOWORD(v77) = 2048;
        *(&v77 + 2) = a4;
        _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to update pose [%@] for timestamp %f", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromCV3DPosePredictionReturn(Pose);
      *buf = 138544130;
      *&buf[4] = v28;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      *&buf[24] = v29;
      LOWORD(v77) = 2048;
      *(&v77 + 2) = a4;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to update pose [%@] for timestamp %f", buf, 0x2Au);
    }

LABEL_31:

    goto LABEL_32;
  }

  SLAMState = CV3DSLAMStateSnapshotCreateSLAMState();
  v18 = SLAMState;
  if (!SLAMState)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v30 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v31 = _ARLogTechnique();
    v13 = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138543874;
        *&buf[4] = v33;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        *&buf[24] = a4;
        _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create SLAM state for timestamp %f", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138543874;
      *&buf[4] = v43;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = a4;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create SLAM state for timestamp %f", buf, 0x20u);
    }

    goto LABEL_31;
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v57 = __77__ARWorldTrackingTechnique__updatePoseData_forTimeStamp_updateTrackingState___block_invoke_219;
  v58 = &__block_descriptor_40_e5_v8__0l;
  v59 = SLAMState;
  v19 = [[ARSLAMState alloc] initWithSLAMState:SLAMState];
  [v8 setSlamState:v19];

  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  memset(buf, 0, sizeof(buf));
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v20 = [(ARWorldTrackingTechnique *)self _trackingCameraID:v18];
  v54 = *(MEMORY[0x1E69E9B18] + 16);
  v55 = *MEMORY[0x1E69E9B18];
  v52 = *(MEMORY[0x1E69E9B18] + 48);
  v53 = *(MEMORY[0x1E69E9B18] + 32);
  v21 = CV3DSLAMStateSnapshotGetPose();
  if (v21)
  {
    v22 = *MEMORY[0x1E698BD60];
    v24 = *&v54;
    RowMajorTransform = *&v55;
    v26 = *&v52;
    v25 = *&v53;
  }

  else
  {
    v22 = CV3DSLAMStateConvertPoseToCameraFrame();
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    memset(v64, 0, sizeof(v64));
    [(ARWorldTrackingTechnique *)self _compensationMatrixForTrackingCameraID:v20];
    v81.columns[0].i32[3] = 0;
    v81.columns[1].i32[3] = 0;
    v81.columns[2].i32[3] = 0;
    v81.columns[3].i32[3] = 0;
    ARCascadeTransform(v65, v64, v81, v68, v67);
    RowMajorTransform = ARMatrix4x4MakeRowMajorTransform(v65);
  }

  if (v22 == *MEMORY[0x1E698BD80])
  {
    [v8 setVisionCameraTransform:{RowMajorTransform, v24, v25, v26}];
    if (v5)
    {
      [(ARWorldTrackingTechnique *)self _updateTrackingState:v8 slamState:v18];
    }

    *v68 = 0;
    CV3DSLAMStateGetTimestamp();
    v34 = *v68;
    v35 = [v8 worldTrackingState];
    [v35 setPoseTimestamp:v34];
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v36 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v37 = _ARLogTechnique();
    v38 = v37;
    if (v36 == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = NSStringFromCV3DSLAMReturn(v22);
        *v68 = 138543874;
        *&v68[4] = v40;
        v69 = 2048;
        v70 = self;
        v71 = 2112;
        v72 = v41;
        _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error converting pose from IMU to camera frame: %@", v68, 0x20u);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromCV3DSLAMReturn(v22);
      *v68 = 138543874;
      *&v68[4] = v45;
      v69 = 2048;
      v70 = self;
      v71 = 2112;
      v72 = v46;
      _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error converting pose from IMU to camera frame: %@", v68, 0x20u);
    }

    v21 = 1;
  }

  v47 = [(ARWorldTrackingTechnique *)self mutableOptions:v52];
  v48 = [v47 activeVideoFormatsMap];
  v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
  v50 = [v48 objectForKeyedSubscript:v49];
  [v8 setCurrentlyActiveVideoFormat:v50];

  (v57)(v56);
LABEL_37:
  v61(v60);

  return v21;
}

- (void)onMetadataCallback:(CV3DSLAMStateContext *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  Timestamp = CV3DSLAMStateGetTimestamp();
  v6 = *MEMORY[0x1E698BD80];
  if (Timestamp != *MEMORY[0x1E698BD80])
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogTechnique();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543874;
        v34 = v11;
        v35 = 2048;
        v36 = self;
        v37 = 1024;
        LODWORD(v38) = Timestamp;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: onMetadataCallback: CV3DSLAMStateGetTimestamp error: %d", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543874;
      v34 = v13;
      v35 = 2048;
      v36 = self;
      v37 = 1024;
      LODWORD(v38) = Timestamp;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: onMetadataCallback: CV3DSLAMStateGetTimestamp error: %d", buf, 0x1Cu);
    }
  }

  v14 = CV3DPosePredictionPushSLAMMetadata();
  if (v14)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v15 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v16 = _ARLogTechnique();
    v17 = v16;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138543874;
        v34 = v19;
        v35 = 2048;
        v36 = self;
        v37 = 1024;
        LODWORD(v38) = v14;
        _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: onMetadataCallback: CV3DPosePredictionPushSLAMMetadata error: %d", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138543874;
      v34 = v32;
      v35 = 2048;
      v36 = self;
      v37 = 1024;
      LODWORD(v38) = v14;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: onMetadataCallback: CV3DPosePredictionPushSLAMMetadata error: %d", buf, 0x1Cu);
    }
  }

  else
  {
    CV3DSLAMStateGetStatus();
    if (CV3DSLAMStateNumReinit() == v6 && self->_reinitializationAttempts)
    {
      v20 = _ARLogTechnique();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        reinitializationAttempts = self->_reinitializationAttempts;
        *buf = 138544386;
        v34 = v22;
        v35 = 2048;
        v36 = self;
        v37 = 2048;
        v38 = 0;
        v39 = 1024;
        v40 = reinitializationAttempts;
        v41 = 1024;
        v42 = 0;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Reinitialization attempts changed at %f, %i => %i", buf, 0x2Cu);
      }

      self->_reinitializationAttempts = 0;
      if (![(ARWorldTrackingTechnique *)self _isRelocalizing]&& CV3DSLAMStateGetMapSize() == v6)
      {
        v24 = _ARLogTechnique();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          *buf = 138543618;
          v34 = v26;
          v35 = 2048;
          v36 = self;
          _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: SLAM re-init with 0 mapsize. Triggering scene recon and surface detection reset", buf, 0x16u);
        }

        [(ARWorldTrackingTechnique *)self resetSceneReconstruction];
        [(ARWorldTrackingTechnique *)self _resetSurfaceDetection];
      }
    }

    kdebug_trace();
    os_unfair_lock_lock(&self->_raycastSessionLock);
    if (self->_raycastSession.__ptr_)
    {
      CV3DRaycastPushSlamState();
    }

    os_unfair_lock_unlock(&self->_raycastSessionLock);
    os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
    ptr = self->_planeDetectionSession.__ptr_;
    if (ptr)
    {
      PlaneDetectionSession::PushSlamState(ptr, a3);
    }

    os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
    v28 = [(ARWorldTrackingTechnique *)self mutableOptions];
    v29 = [v28 isCollaborationEnabled];

    if (v29)
    {
      v30 = [MEMORY[0x1E695DF70] array];
      CV3DSLAMStateGetMapMergeStats();
      [v30 count];
      kdebug_trace();
    }
  }
}

- (void)_pushWTResultDataForTimestamp:(double)a3
{
  v189 = *MEMORY[0x1E69E9840];
  obj = [[ARWorldTrackingPoseData alloc] initWithTimestamp:a3];
  v142 = [ARWorldTrackingTechnique _updatePoseData:"_updatePoseData:forTimeStamp:updateTrackingState:" forTimeStamp:a3 updateTrackingState:?];
  v152 = objc_opt_new();
  v168 = 0.0;
  v5 = [(ARWorldTrackingPoseData *)obj slamState];
  v154 = self;
  [v5 slamState];
  CV3DSLAMStateGetTimestamp();

  v6 = self;
  if (self->_lastPoseMetaDataTimestamp >= 0.0)
  {
    goto LABEL_46;
  }

  kdebug_trace();
  self->_lastPoseMetaDataTimestamp = v168;
  v170[0] = 0;
  v7 = [(ARWorldTrackingPoseData *)obj slamState];
  [v7 slamState];
  v150 = CV3DSLAMStateCopyUpdatedAnchors();

  if (!v150)
  {
    [(ARWorldTrackingTechnique *)self _handleCV3DError:v170[0] withDescription:@"Get updated anchors error" failTechnique:0];
    CFRelease(v170[0]);
  }

  v8 = [(ARWorldTrackingPoseData *)obj slamState];
  [v8 slamState];
  v148 = CV3DSLAMStateCopyNewAnchors();

  if (!v148)
  {
    [(ARWorldTrackingTechnique *)self _handleCV3DError:v170[0] withDescription:@"Get added anchors error" failTechnique:0];
    CFRelease(v170[0]);
  }

  v9 = [(ARWorldTrackingPoseData *)obj slamState];
  [v9 slamState];
  v146 = CV3DSLAMStateCopyRemovedAnchors();

  if (!v146)
  {
    [(ARWorldTrackingTechnique *)self _handleCV3DError:v170[0] withDescription:@"Get removed anchors error" failTechnique:0];
    CFRelease(v170[0]);
  }

  if (self->_enableMLCMRelocalization)
  {
    v10 = [(ARWorldTrackingPoseData *)obj slamState];
    [v10 slamState];
    ExternalAnchorNames = CV3DSLAMStateGetExternalAnchorNames();

    if (ExternalAnchorNames)
    {
      goto LABEL_12;
    }

    [(ARWorldTrackingTechnique *)self _handleCV3DError:v170[0] withDescription:@"Get external anchors error" failTechnique:0];
    CFRelease(v170[0]);
  }

  ExternalAnchorNames = 0;
LABEL_12:
  if ([v150 count] || objc_msgSend(v148, "count") || objc_msgSend(v146, "count") || objc_msgSend(ExternalAnchorNames, "count"))
  {
    [v150 count];
    [v148 count];
    [v146 count];
    kdebug_trace();
    v11 = [ARWorldTrackingReferenceAnchorData alloc];
    v12 = ARAnchorsFromCV3DAnchorsArray(v150, a3);
    v13 = ARAnchorsFromCV3DAnchorsArray(v148, a3);
    v14 = ARAnchorsFromCV3DAnchorsArray(v146, a3);
    v15 = ARAnchorsFromCV3DAnchorsArray(ExternalAnchorNames, a3);
    v144 = [(ARWorldTrackingReferenceAnchorData *)v11 initWithUpdatedAnchors:v12 addedAnchors:v13 removedAnchors:v14 externalAnchors:v15];

    [(ARWorldTrackingReferenceAnchorData *)v144 setTimestamp:a3];
    dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    [(ARWorldTrackingReferenceAnchorData *)v144 setReceivedAnchors:self->_anchorsReceived];
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v16 = [(ARWorldTrackingReferenceAnchorData *)v144 addedAnchors];
    v17 = [v16 countByEnumeratingWithState:&v164 objects:v188 count:16];
    if (v17)
    {
      v18 = *v165;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v165 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v164 + 1) + 8 * i);
          if ([(NSMutableSet *)v154->_anchorsReceived containsObject:v20])
          {
            v21 = _ARLogTechnique();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              v24 = [v20 description];
              LODWORD(buf[0].f64[0]) = 138543874;
              *(buf[0].f64 + 4) = v23;
              WORD2(buf[0].f64[1]) = 2048;
              *(&buf[0].f64[1] + 6) = v154;
              HIWORD(buf[1].f64[0]) = 2112;
              *&buf[1].f64[1] = v24;
              _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: adding received anchor %@", buf, 0x20u);
            }

            [(NSMutableSet *)v154->_anchorsReceived removeObject:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v164 objects:v188 count:16];
      }

      while (v17);
    }

    v163 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    v25 = [(ARWorldTrackingReferenceAnchorData *)v144 externalAnchors];
    v26 = [v25 countByEnumeratingWithState:&v160 objects:v187 count:16];
    if (v26)
    {
      v27 = *v161;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v161 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v160 + 1) + 8 * j);
          v30 = _ARLogTechnique();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v33 = [v29 description];
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v32;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = v154;
            HIWORD(buf[1].f64[0]) = 2112;
            *&buf[1].f64[1] = v33;
            _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: updating external anchor %@", buf, 0x20u);
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v160 objects:v187 count:16];
      }

      while (v26);
    }

    v34 = _ARLogTechnique();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = [(NSMutableSet *)v154->_anchorsReceived count];
      LODWORD(buf[0].f64[0]) = 138543874;
      *(buf[0].f64 + 4) = v36;
      WORD2(buf[0].f64[1]) = 2048;
      *(&buf[0].f64[1] + 6) = v154;
      HIWORD(buf[1].f64[0]) = 2048;
      *&buf[1].f64[1] = v37;
      _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: remaining received anchors to be added %tu", buf, 0x20u);
    }

    dispatch_semaphore_signal(v154->_sessionHandleStateSemaphore);
    [v152 addObject:v144];
    [(ARTrackedRaycastPostProcessor *)v154->_trackedRaycastPostProcessor updateFromPoseGraphEventWithData:v144 referenceOriginTransform:*v154->_anon_360, *&v154->_anon_360[16], *&v154->_anon_360[32], *&v154->_anon_360[48]];
    v38 = _ARLogTechnique();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [v150 count];
      v42 = [v148 count];
      v43 = [v146 count];
      v44 = [ExternalAnchorNames count];
      LODWORD(buf[0].f64[0]) = 138544898;
      *(buf[0].f64 + 4) = v40;
      WORD2(buf[0].f64[1]) = 2048;
      *(&buf[0].f64[1] + 6) = v154;
      HIWORD(buf[1].f64[0]) = 2048;
      buf[1].f64[1] = a3;
      LOWORD(buf[2].f64[0]) = 2048;
      *(buf[2].f64 + 2) = v41;
      WORD1(buf[2].f64[1]) = 2048;
      *(&buf[2].f64[1] + 4) = v42;
      WORD2(buf[3].f64[0]) = 2048;
      *(buf[3].f64 + 6) = v43;
      HIWORD(buf[3].f64[1]) = 2048;
      v184 = v44;
      _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking anchors changed at timestamp %f, updated %lu, added %lu, removed %lu, external %lu", buf, 0x48u);
    }

    self = v154;
  }

  v45 = [(ARWorldTrackingTechnique *)self mutableOptions];
  v46 = [v45 planeDetectionPoseUpdateCallback];
  v47 = v46 == 0;

  if (!v47)
  {
    v48 = [(ARWorldTrackingTechnique *)v154 mutableOptions];
    v49 = [v48 planeDetectionPoseUpdateCallback];
    (v49)[2](v49, v150);
  }

  os_unfair_lock_lock(&v154->_raycastSessionLock);
  if (v154->_raycastSession.__ptr_)
  {
    [(ARWorldTrackingPoseData *)obj visionCameraTransform];
    __invert_f4(v190);
    CV3DRaycastTriggerUpdateFromTrackableIntentsAsync();
  }

  os_unfair_lock_unlock(&v154->_raycastSessionLock);

  v6 = v154;
LABEL_46:
  dispatch_semaphore_wait(v6->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v50 = MEMORY[0x1E698BD80];
  if (v142)
  {
    cachedPoseData = v6->_cachedPoseData;
    if (cachedPoseData)
    {
      [(ARWorldTrackingPoseData *)cachedPoseData timestamp];
      v53 = v52;
      v54 = _ARLogTechnique();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        [(ARWorldTrackingPoseData *)v154->_cachedPoseData timestamp];
        LODWORD(buf[0].f64[0]) = 138544386;
        *(buf[0].f64 + 4) = v56;
        WORD2(buf[0].f64[1]) = 2048;
        *(&buf[0].f64[1] + 6) = v154;
        HIWORD(buf[1].f64[0]) = 2048;
        buf[1].f64[1] = (a3 - v53) * 1000.0;
        LOWORD(buf[2].f64[0]) = 2048;
        *(buf[2].f64 + 2) = a3;
        WORD1(buf[2].f64[1]) = 2048;
        *(&buf[2].f64[1] + 4) = v57;
        _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using cached pose data with age: %fms (%f - %f)", buf, 0x34u);
      }

      v58 = [(ARWorldTrackingPoseData *)v154->_cachedPoseData copy];
      obj = v58;
      [v152 addObject:v58];
      v6 = v154;
    }

    goto LABEL_70;
  }

  [(ARWorldTrackingPoseData *)obj cameraTransform];
  [(ARWorldTrackingPoseData *)obj cameraTransform];
  [(ARWorldTrackingPoseData *)obj cameraTransform];
  kdebug_trace();
  v59 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
  v60 = [v59 state] == 0;

  if (!v60)
  {
    v61 = v154->_cachedPoseData;
    if (v61)
    {
      [(ARWorldTrackingPoseData *)v61 visionCameraTransform];
      v149 = v63;
      v151 = v62;
      v145 = v65;
      v147 = v64;
      [(ARWorldTrackingPoseData *)obj visionCameraTransform];
      if (AREqualTransforms(v151, v149, v147, v145, v66, v67, v68, v69))
      {
        kdebug_trace();
      }
    }

    objc_storeStrong(&v154->_cachedPoseData, obj);
  }

  [v152 addObject:obj];
  if (v154->_didClearMap)
  {
    v154->_didClearMap = 0;
  }

  v70 = [(ARWorldTrackingTechnique *)v154 mutableOptions];
  if ([v70 isCollaborationEnabled])
  {
    participantAnchorsEnabled = v154->_participantAnchorsEnabled;

    if (!participantAnchorsEnabled)
    {
      goto LABEL_66;
    }

    v70 = [MEMORY[0x1E696AFB0] ar_UUIDWithIntegerValue:{-[ARWorldTrackingTechnique vioSessionIdentifier](v154, "vioSessionIdentifier")}];
    v72 = [v70 ar_createCFUUIDRef];
    *&v173 = 0;
    v184 = 0;
    memset(buf, 0, sizeof(buf));
    v175 = 0uLL;
    v176 = 0;
    [(ARWorldTrackingPoseData *)obj visionCameraTransform];
    ARMatrix4x4RowMajorRotationAndTranslation(buf, &v175, v73, v74, v75, v76);
    v191.columns[0] = ARDisplayCenterTransformForCaptureDevicePosition(1);
    v192 = __invert_f4(v191);
    v192.columns[1] = vcvtq_f64_f32(*v192.columns[3].f32);
    v192.columns[2].i64[0] = *&vaddq_f64(v175, v192.columns[1]);
    v192.columns[2].i64[1] = *&vsubq_f64(v175, *(&v192 + 16)).f64[1];
    v185 = v192.columns[2];
    v186 = v176;
    *&v171 = 0;
    if (CV3DSLAMSessionCreateCMPoseAnchorData())
    {
      v77 = v173;
      [(ARWorldTrackingTechnique *)v154 _reportCollaborationData:v173 type:7 metadata:0];
    }

    else
    {
      v77 = _ARLogTechnique();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        v78 = objc_opt_class();
        v79 = NSStringFromClass(v78);
        v80 = v171;
        LODWORD(v170[0]) = 138543874;
        *(v170 + 4) = v79;
        WORD2(v170[1]) = 2048;
        *(&v170[1] + 6) = v154;
        HIWORD(v170[2]) = 2112;
        v170[3] = v171;
        _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Error creating participant anchor data: %@", v170, 0x20u);
      }
    }

    CFRelease(v72);
  }

LABEL_66:
  v81 = [MEMORY[0x1E695DF88] data];
  v82 = [(ARWorldTrackingPoseData *)obj slamState];
  [v82 slamState];
  LineCloud = CV3DSLAMStateGetLineCloud();

  if (LineCloud == *v50 && [v81 length])
  {
    v84 = [[ARLineCloud alloc] initWithLineCloudData:v81];
    [(ARWorldTrackingPoseData *)obj setLineCloud:v84];
  }

  v6 = v154;
LABEL_70:
  os_unfair_lock_lock(&v6->_pendingRawSceneUnderstandingResultsLock);
  [v152 addObjectsFromArray:v6->_pendingRawSceneUnderstandingResults];
  [(NSMutableArray *)v6->_pendingRawSceneUnderstandingResults removeAllObjects];
  os_unfair_lock_unlock(&v6->_pendingRawSceneUnderstandingResultsLock);
  v85 = [(ARWorldTrackingPoseData *)obj slamState];
  [v85 slamState];
  OldestStateCovarianceMatrices = CV3DSLAMStateGetOldestStateCovarianceMatrices();

  v87 = *v50;
  if (OldestStateCovarianceMatrices == *v50)
  {
    v88 = [[ARInertialState alloc] initWithCovarianceMatrix:buf];
    *&v90 = v175.f64[1];
    *&v89 = v175.f64[0];
    *(&v89 + 1) = v177;
    *(&v90 + 1) = v178;
    *&v91 = v180;
    *&v92 = v181;
    *&v93 = v176;
    *(&v93 + 1) = v179;
    *&v94 = v182;
    *v170 = v89;
    *&v170[2] = v91;
    *&v170[4] = v90;
    *&v170[6] = v92;
    *&v170[8] = v93;
    *&v170[10] = v94;
    [(ARInertialState *)v88 setOrientation:v170];
    *&v95 = v170[15];
    *v170 = *&v170[13];
    *&v170[2] = v95;
    [(ARInertialState *)v88 setPosition:v170];
    *&v96 = v174;
    *v170 = v173;
    *&v170[2] = v96;
    [(ARInertialState *)v88 setVelocity:v170];
    *&v97 = v172;
    *v170 = v171;
    *&v170[2] = v97;
    [(ARInertialState *)v88 setAccelerometerBias:v170];
    *&v98 = v186;
    *v170 = v185;
    *&v170[2] = v98;
    [(ARInertialState *)v88 setGyroscopeBias:v170];
    v99 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
    [v99 setInertialState:v88];
  }

  v100 = [(ARWorldTrackingTechnique *)v154 mutableOptions];
  v101 = [v100 isCollaborationEnabled];

  if (v101)
  {
    v170[0] = 0;
    v159 = 0;
    v102 = [(ARWorldTrackingPoseData *)obj slamState];
    [v102 slamState];
    CollaborativeMapStatistics = CV3DSLAMStateGetCollaborativeMapStatistics();

    v104 = v170[0];
    if (CollaborativeMapStatistics == v87 && v170[0])
    {
      v105 = [MEMORY[0x1E695DF70] arrayWithCapacity:v159];
      v106 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
      [v106 setCollaborationStats:v105];

      v104 = v170[0];
    }

    free(v104);
    v107 = objc_opt_new();
    v108 = [(ARWorldTrackingPoseData *)obj slamState];
    [v108 slamState];
    MapMergeStats = CV3DSLAMStateGetMapMergeStats();

    if (MapMergeStats == v87)
    {
      v110 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v107, "count")}];
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v111 = v107;
      v112 = [v111 countByEnumeratingWithState:&v155 objects:v169 count:16];
      if (v112)
      {
        v113 = *v156;
        do
        {
          for (k = 0; k != v112; ++k)
          {
            if (*v156 != v113)
            {
              objc_enumerationMutation(v111);
            }

            v115 = *(*(&v155 + 1) + 8 * k);
            v116 = [v115 firstObject];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v118 = [v115 firstObject];
              [v110 addObject:v118];
            }
          }

          v112 = [v111 countByEnumeratingWithState:&v155 objects:v169 count:16];
        }

        while (v112);
      }

      v119 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
      [v119 setMergedSessionIdentifiers:v110];
    }
  }

  v120 = [(ARWorldTrackingTechnique *)v154 mutableOptions];
  v121 = [v120 slamConfiguration];
  v122 = [v121 isEqualToString:@"ObjectDetectionMapBuilding"];

  p_isa = &v154->super.super.super.isa;
  if ((v122 & 1) == 0)
  {
    LODWORD(v170[0]) = 0;
    LODWORD(v159) = 0;
    v124 = [(ARWorldTrackingPoseData *)obj slamState];
    [v124 slamState];
    CV3DSLAMStateGetMapSize();

    v154->_currentVIOMapSize = SLODWORD(v170[0]);
    v125 = [(ARWorldTrackingPoseData *)obj slamState];
    [v125 slamState];
    CV3DSLAMStateGetMapKeyFrameQuality();

    v126 = [(ARWorldTrackingPoseData *)obj slamState];
    [v126 slamState];
    CV3DSLAMStateWasTrackingMap();

    p_isa = &v154->super.super.super.isa;
    [(ARWorldTrackingPoseData *)obj setWorldMappingStatus:[(ARWorldTrackingTechnique *)v154 _mappingStatusFromMapSize:LODWORD(v170[0]) keyframeQuality:v159 isTrackingMap:0 timestamp:a3]];
  }

  v127 = [p_isa mutableOptions];
  if ([(ARWorldTrackingParticipantAnchorData *)v127 isCollaborationEnabled])
  {
    v128 = [p_isa[49] count] == 0;

    if (v128)
    {
      goto LABEL_94;
    }

    v127 = [[ARWorldTrackingParticipantAnchorData alloc] initWithAnchors:v154->_participantAnchors];
    [(NSMutableSet *)v154->_participantAnchors removeAllObjects];
    [v152 addObject:v127];
  }

LABEL_94:
  v129 = v154;
  if (v154->_errorData)
  {
    [v152 addObject:?];
    if (obj)
    {
      v130 = [(ARWorldTrackingErrorData *)v154->_errorData errorCode];
      if (v130 == *MEMORY[0x1E698BD10])
      {
        v131 = _ARLogTechnique();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
        {
          v132 = objc_opt_class();
          v133 = NSStringFromClass(v132);
          LODWORD(v170[0]) = 138543618;
          *(v170 + 4) = v133;
          WORD2(v170[1]) = 2048;
          *(&v170[1] + 6) = v154;
          _os_log_impl(&dword_1C241C000, v131, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting tracking state to initializing due to significant sensor data lose.", v170, 0x16u);
        }

        v134 = objc_opt_new();
        [(ARWorldTrackingPoseData *)obj setWorldTrackingState:v134];

        v135 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
        [v135 setState:0];

        v136 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
        [v136 setReason:1];

        v129 = v154;
      }
    }

    errorData = v129->_errorData;
    v129->_errorData = 0;

    v129 = v154;
  }

  dispatch_semaphore_signal(v129->_resultSemaphore);
  v138 = [(ARWorldTrackingPoseData *)obj slamState];
  v139 = -[ARWorldTrackingTechnique _featurePointDataFromSLAMState:](v129, "_featurePointDataFromSLAMState:", [v138 slamState]);

  v140 = v154;
  if (v139)
  {
    [v152 addObject:v139];
  }

  os_unfair_lock_lock(&v154->_latestSpatialMappingDataLock);
  if ([(NSMutableArray *)v154->_latestSpatialMappingData count])
  {
    [v152 addObjectsFromArray:v154->_latestSpatialMappingData];
    [(NSMutableArray *)v154->_latestSpatialMappingData removeAllObjects];
  }

  os_unfair_lock_unlock(&v154->_latestSpatialMappingDataLock);
  os_unfair_lock_lock(&v154->_spatialMappingPointCloudsLock);
  if ([(NSMutableDictionary *)v154->_spatialMappingPointClouds count])
  {
    v141 = [(NSMutableDictionary *)v154->_spatialMappingPointClouds allValues];
    [v152 addObjectsFromArray:v141];

    v140 = v154;
    [(NSMutableDictionary *)v154->_spatialMappingPointClouds removeAllObjects];
  }

  os_unfair_lock_unlock(v140 + 130);
  [(os_unfair_lock_s *)v140 pushResultData:v152 forTimestamp:a3];
  if (!obj)
  {
    if (!v139)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  [(ARWorldTrackingPoseData *)obj timestamp];
  if (v139)
  {
LABEL_109:
    [v139 timestamp];
  }

LABEL_111:
  [v139 timestamp];
  kdebug_trace();
}

- (void)_handleSLAMError:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 code];
  kdebug_trace();
  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
  }

  v5 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v6 = _ARLogTechnique();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543874;
      *&buf[4] = v9;
      v37 = 2048;
      v38 = self;
      v39 = 2112;
      v40 = *&v4;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: SLAM error callback: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543874;
    *&buf[4] = v11;
    v37 = 2048;
    v38 = self;
    v39 = 2112;
    v40 = *&v4;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: SLAM error callback: %@", buf, 0x20u);
  }

  v12 = CACurrentMediaTime();
  v13 = [v4 code];
  if (v13 == *MEMORY[0x1E698BD10] || (v14 = [v4 code], v14 == *MEMORY[0x1E698BD08]))
  {
    v15 = _ARLogTechnique();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138543874;
      *&buf[4] = v17;
      v37 = 2048;
      v38 = self;
      v39 = 2048;
      v40 = v12;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: World tracking encountered a significant drop in sensor data, attempting to relocalize at time %f.", buf, 0x20u);
    }

    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    if (self->_relocalizationState)
    {
      v18 = _ARLogTechnique();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        relocalizationState = self->_relocalizationState;
        *buf = 138543874;
        *&buf[4] = v20;
        v37 = 2048;
        v38 = self;
        v39 = 2048;
        v40 = *&relocalizationState;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Not setting ARRelocalizationStateRelocalizingAfterSensorDataDrop, because we're already in state: %lu", buf, 0x20u);
      }
    }

    else
    {
      self->_relocalizationState = 1;
    }

    self->_lastRelocalizationTimestamp = 0.0;
    self->_originTimestamp = 0.0;
    v22 = [(ARWorldTrackingPoseData *)self->_cachedPoseData copy];
    v23 = [(ARWorldTrackingPoseData *)self->_cachedPoseData worldTrackingState];
    [v23 setState:1];

    v24 = [(ARWorldTrackingPoseData *)self->_cachedPoseData worldTrackingState];
    [v24 setReason:1];

    dispatch_semaphore_signal(self->_resultSemaphore);
    if (v22)
    {
      v35 = v22;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      [(ARImageBasedTechnique *)self pushResultData:v25 forFrame:0];
    }

    [v4 code];
    kdebug_trace();
LABEL_20:

    goto LABEL_21;
  }

  [v4 code];
  if (!CV3DSLAMIsFatalError())
  {
    v34 = [v4 code];
    *buf = &v34;
    if (v12 - *(std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(&self->_lastErrorLogTimestamp, &v34) + 5) > 1.0)
    {
      v34 = [v4 code];
      *buf = &v34;
      *(std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(&self->_lastErrorLogTimestamp, &v34) + 5) = v12;
      v30 = _ARLogTechnique();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = [v4 code];
        *buf = 138543874;
        *&buf[4] = v32;
        v37 = 2048;
        v38 = self;
        v39 = 2048;
        v40 = *&v33;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: World tracking performance is being affected by resource constraints [%li]", buf, 0x20u);
      }
    }

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.warningSounds"])
    {
      softLinkAudioServicesPlaySystemSound(0x3EBu);
    }

    v22 = [[ARWorldTrackingErrorData alloc] initWithTimestamp:v12];
    -[ARWorldTrackingErrorData setErrorCode:](v22, "setErrorCode:", [v4 code]);
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong(&self->_errorData, v22);
    dispatch_semaphore_signal(self->_resultSemaphore);
    [v4 code];
    kdebug_trace();
    goto LABEL_20;
  }

  dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  self->_sessionHandleState = 4;
  dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
  v26 = _ARLogTechnique();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    *buf = 138543618;
    *&buf[4] = v28;
    v37 = 2048;
    v38 = self;
    _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: World tracking encountered fatal error.", buf, 0x16u);
  }

  v29 = ARErrorWithCodeAndUserInfo(200, 0);
  [(ARWorldTrackingTechnique *)self _didFailWithError:v29];

  [v4 code];
  kdebug_trace();
LABEL_21:
}

- (void)_didFailWithError:(id)a3
{
  v7 = a3;
  v4 = [(ARTechnique *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ARTechnique *)self delegate];
    [v6 technique:self didFailWithError:v7];
  }
}

- (void)setReferenceOriginTransform:(__n128)a3
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((a1 + 864), v5, 64, 1, 0);
}

- (shared_ptr<RaycastSession>)raycastSession
{
  cntrl = self->_raycastSession.__cntrl_;
  *v2 = self->_raycastSession.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setRaycastSession:(shared_ptr<RaycastSession>)a3
{
  p_raycastSession = &self->_raycastSession;
  v5 = *a3.__ptr_;
  v4 = *(a3.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_raycastSession.__cntrl_;
  p_raycastSession->__ptr_ = v5;
  p_raycastSession->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<PlaneDetectionSession>)planeDetectionSession
{
  cntrl = self->_planeDetectionSession.__cntrl_;
  *v2 = self->_planeDetectionSession.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setPlaneDetectionSession:(shared_ptr<PlaneDetectionSession>)a3
{
  p_planeDetectionSession = &self->_planeDetectionSession;
  v5 = *a3.__ptr_;
  v4 = *(a3.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_planeDetectionSession.__cntrl_;
  p_planeDetectionSession->__ptr_ = v5;
  p_planeDetectionSession->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (__n128)setReconstructionFrameBundleToWorld:(__n128)a3
{
  result[58] = a2;
  result[59] = a3;
  result[60] = a4;
  result[61] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 14) = 0;
  *(self + 13) = self + 112;
  *(self + 47) = 0;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 368) = 0;
  *(self + 104) = 0;
  *(self + 105) = 0;
  *(self + 106) = 0;
  *(self + 107) = 0;
  return self;
}

+ (void)supportsVideoResolution:forDeviceType:.cold.1()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    xmmword_1EBF41CC0 = *MEMORY[0x1E695F060];

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

+ (void)supportsVideoResolution:forDeviceType:.cold.2()
{
  if (__cxa_guard_acquire(&qword_1EBF41CB8))
  {
    *&qword_1EBF41CD0 = *MEMORY[0x1E695F060];

    __cxa_guard_release(&qword_1EBF41CB8);
  }
}

@end