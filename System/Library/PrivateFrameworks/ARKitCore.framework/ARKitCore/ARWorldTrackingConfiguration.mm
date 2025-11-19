@interface ARWorldTrackingConfiguration
+ (BOOL)isSupported;
+ (BOOL)shouldProvide30FPSVideoFormats;
+ (BOOL)supportsAppClipCodeTracking;
+ (BOOL)supportsFrameSemantics:(unint64_t)a3;
+ (BOOL)supportsSceneReconstruction:(ARSceneReconstruction)sceneReconstruction;
+ (BOOL)supportsUserFaceTracking;
+ (id)_availableCaptureDeviceTypeForBackdropCameraOverride;
+ (id)_querySupportedVideoFormats;
+ (id)_querySupportedVideoFormatsForUltraWide;
+ (id)_querySupportedVideoFormatsForUserFaceTracking;
+ (id)recommendedVideoFormatFor4KResolution;
+ (id)recommendedVideoFormatForHighResolutionFrameCapturing;
+ (id)supportedVideoFormats;
+ (id)supportedVideoFormatsForUltraWide;
+ (id)supportedVideoFormatsForUserFaceTracking;
+ (void)setBackdropCameraOverride:(int64_t)a3;
+ (void)setShouldProvide30FPSVideoFormats:(BOOL)a3;
- (ARImageSensorSettings)imageSensorSettingsForUltraWide;
- (ARSpatialMappingParameters)spatialMappingParameters;
- (ARWorldTrackingConfiguration)init;
- (BOOL)appClipCodeTrackingEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldEnableVisionDataForImageSensorSettings:(id)a3;
- (BOOL)shouldUseJasper;
- (BOOL)shouldUseUltraWide;
- (id)_trackingOptions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)imageSensorSettings;
- (id)imageSensorSettingsForUserFaceTracking;
- (id)parentImageSensorSettings;
- (id)secondaryTechniques;
- (int64_t)_depthPrioritization;
- (void)createTechniques:(id)a3;
- (void)setDetectionImages:(NSSet *)detectionImages;
- (void)setSceneReconstruction:(ARSceneReconstruction)sceneReconstruction;
- (void)setSpatialMappingParameters:(ARSpatialMappingParameters)a3;
- (void)setVideoFormat:(id)a3;
@end

@implementation ARWorldTrackingConfiguration

+ (BOOL)isSupported
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___ARWorldTrackingConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_isSupported);
  if (v2)
  {
    LOBYTE(v2) = +[ARWorldTrackingTechnique isSupported];
  }

  return v2;
}

- (ARWorldTrackingConfiguration)init
{
  v15.receiver = self;
  v15.super_class = ARWorldTrackingConfiguration;
  v2 = [(ARConfiguration *)&v15 initPrivate];
  if (v2)
  {
    if (ARShouldSupport1440pAndAutofocus())
    {
      [(ARConfiguration *)v2 setAutoFocusEnabled:1];
      [(ARWorldTrackingConfiguration *)v2 setMaximumNumberOfTrackedImages:0];
    }

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.environmentTexturing.wantsHDR"])
    {
      v3 = ARLinkedOnOrAfterYukon();
    }

    else
    {
      v3 = 0;
    }

    [(ARWorldTrackingConfiguration *)v2 setWantsHDREnvironmentTextures:v3];
    v4 = objc_opt_new();
    detectionImages = v2->_detectionImages;
    v2->_detectionImages = v4;

    v6 = objc_opt_new();
    detectionObjects = v2->_detectionObjects;
    v2->_detectionObjects = v6;

    v8 = objc_opt_new();
    v2->_relocalizationEnabled = [v8 relocalizationEnabled];
    [v8 minVergenceAngle];
    v2->_minVergenceAngle = v9;
    v10 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.mlOnANEDevices"];
    if (v10)
    {
      LOBYTE(v10) = ARAppleNeuralEngine();
    }

    v2->_mlModelEnabled = v10;
    v2->_lowQosSchedulingEnabled = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.enableLowQosScheduling"];
    v2->_accuratePlaneExtentCheckEnabled = 1;
    slamConfiguration = v2->_slamConfiguration;
    v2->_slamConfiguration = @"ARKitiOS";

    v2->_userFaceTrackingEnabled = 0;
    v2->_shouldUseUltraWideIfAvailable = 1;
    v2->_depthTemporalSmoothingEnabled = 0;
    v2->_depthOptimizedForStaticScene = 0;
    v2->_alwaysUsePrimaryCameraForTracking = 0;
    v2->_disableFrontCamera = 0;
    v2->_ignoreAppClipCodeURLLimitation = 0;
    v2->_appClipCodeTrackingEnabled = 0;
    v12 = objc_opt_new();
    sceneReconstructionOptions = v2->_sceneReconstructionOptions;
    v2->_sceneReconstructionOptions = v12;

    v2->_recordForGeoTracking = 0;
    v2->_planeBundleAdjustmentEnabled = 0;
    v2->_useLidarIfAvailable = 1;
    v2->_disableLocationSensor = 0;
  }

  return v2;
}

+ (void)setShouldProvide30FPSVideoFormats:(BOOL)a3
{
  if (s_provide30FPSVideoFormats != a3)
  {
    s_provide30FPSVideoFormats = a3;
    v3 = s_supportedFormatsCache_0;
    if (s_supportedFormatsCache_0)
    {
      s_supportedFormatsCache_0 = MEMORY[0x1E695E0F0];
    }
  }
}

+ (BOOL)shouldProvide30FPSVideoFormats
{
  result = ARLinkedOnOrAfterSydney();
  if (s_provide30FPSVideoFormats)
  {
    return 1;
  }

  return result;
}

+ (void)setBackdropCameraOverride:(int64_t)a3
{
  if (s_backdropCameraOverride != a3)
  {
    s_backdropCameraOverride = a3;
    v3 = s_supportedFormatsCache_0;
    if (s_supportedFormatsCache_0)
    {
      s_supportedFormatsCache_0 = MEMORY[0x1E695E0F0];
    }
  }
}

+ (id)_availableCaptureDeviceTypeForBackdropCameraOverride
{
  if (s_backdropCameraOverride <= 2)
  {
    v2 = **(&unk_1E817D180 + s_backdropCameraOverride);
  }

  if ([ARVideoFormat isCaptureDeviceTypeAvailable:v2 position:1])
  {
    v3 = v2;
  }

  else
  {
    v3 = *MEMORY[0x1E6986950];
  }

  v4 = v3;

  return v3;
}

+ (id)_querySupportedVideoFormats
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = [a1 _availableCaptureDeviceTypeForBackdropCameraOverride];
  v4 = objc_opt_new();
  if ((ARLinkedOnOrAfterSydney() & 1) != 0 || ![a1 shouldProvide30FPSVideoFormats])
  {
    v5 = [ARVideoFormat supportedVideoFormatsForDevicePosition:1 deviceType:v3];
  }

  else
  {
    v5 = [ARVideoFormat supportedVideoFormatsForDevicePosition:1 deviceType:v3 frameRate:30.0];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v55 count:16];
  v39 = v4;
  if (v7)
  {
    v9 = v7;
    v10 = *v45;
    *&v8 = 138543874;
    v37 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        [v12 imageResolution];
        if ([ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?])
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = _ARLogGeneral_15();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            *buf = v37;
            v50 = v15;
            v51 = 2048;
            v52 = a1;
            v53 = 2114;
            v54 = v12;
            _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Filtering out video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);

            v4 = v39;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v9);
  }

  if (ARLinkedOnOrAfterSydney())
  {
    v16 = [ARVideoFormat supportedVideoFormatsForStillImageCaptureForDevicePosition:1 deviceType:v3];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v6 = v16;
    v17 = [v6 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v17)
    {
      v19 = v17;
      v20 = *v41;
      *&v18 = 138543874;
      v38 = v18;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v6);
          }

          v22 = *(*(&v40 + 1) + 8 * j);
          [v22 imageResolution];
          if ([ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?])
          {
            [v4 addObject:v22];
          }

          else
          {
            v23 = _ARLogGeneral_15();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              *buf = v38;
              v50 = v25;
              v51 = 2048;
              v52 = a1;
              v53 = 2114;
              v54 = v22;
              _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Filtering out video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);

              v4 = v39;
            }
          }
        }

        v19 = [v6 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v19);
    }

    v26 = [ARVideoFormat supportedVideoFormatsForHiResOrX420ForDevicePosition:1 deviceType:v3];
    [v4 addObjectsFromArray:v26];
  }

  if (![v4 count])
  {
    if (ARShouldUseLogTypeError_onceToken_27 != -1)
    {
      +[ARWorldTrackingConfiguration _querySupportedVideoFormats];
    }

    v27 = ARShouldUseLogTypeError_internalOSVersion_27;
    v28 = _ARLogGeneral_15();
    v29 = v28;
    if (v27 == 1)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138543618;
        v50 = v31;
        v51 = 2048;
        v52 = a1;
        v32 = "%{public}@ <%p>: Result of querying supportedVideoFormats is empty.";
        v33 = v29;
        v34 = OS_LOG_TYPE_ERROR;
LABEL_39:
        _os_log_impl(&dword_1C241C000, v33, v34, v32, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v31 = NSStringFromClass(v35);
      *buf = 138543618;
      v50 = v31;
      v51 = 2048;
      v52 = a1;
      v32 = "Error: %{public}@ <%p>: Result of querying supportedVideoFormats is empty.";
      v33 = v29;
      v34 = OS_LOG_TYPE_INFO;
      goto LABEL_39;
    }
  }

  return v4;
}

+ (id)supportedVideoFormats
{
  v24 = *MEMORY[0x1E69E9840];
  if (([a1 isSupported] & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_27 != -1)
    {
      +[ARWorldTrackingConfiguration supportedVideoFormats];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_27;
    v11 = _ARLogGeneral_15();
    v8 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543618;
        v21 = v13;
        v22 = 2048;
        v23 = a1;
        v14 = "%{public}@ <%p>: ARWorldTrackingConfiguration is not supported";
        v15 = v8;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v13 = NSStringFromClass(v17);
      *buf = 138543618;
      v21 = v13;
      v22 = 2048;
      v23 = a1;
      v14 = "Error: %{public}@ <%p>: ARWorldTrackingConfiguration is not supported";
      v15 = v8;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v5 = MEMORY[0x1E695E0F0];
    goto LABEL_20;
  }

  if (s_supportedFormatsCache_0 && ![s_supportedFormatsCache_0 count])
  {
    v3 = [a1 _querySupportedVideoFormats];
    v4 = s_supportedFormatsCache_0;
    s_supportedFormatsCache_0 = v3;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ARWorldTrackingConfiguration_supportedVideoFormats__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (supportedVideoFormats_onceToken_2 != -1)
  {
    dispatch_once(&supportedVideoFormats_onceToken_2, block);
  }

  v5 = s_supportedFormatsCache_0;
  if (([objc_opt_class() shouldProvideX420VideoFormat] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_58];
    v7 = [v5 filteredArrayUsingPredicate:v6];

    v5 = v7;
  }

  if (([objc_opt_class() shouldProvideNonBinnedVideoFormats] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_14_0];
    v9 = [v5 filteredArrayUsingPredicate:v8];

    v5 = v9;
LABEL_20:
  }

  return v5;
}

void __53__ARWorldTrackingConfiguration_supportedVideoFormats__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormats];
  v2 = s_supportedFormatsCache_0;
  s_supportedFormatsCache_0 = v1;
}

uint64_t __53__ARWorldTrackingConfiguration_supportedVideoFormats__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 deviceFormat];
  v3 = [v2 isVideoBinned];

  return v3;
}

+ (id)recommendedVideoFormatFor4KResolution
{
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_16];
  v3 = [objc_opt_class() supportedVideoFormats];
  v4 = [v3 filteredArrayUsingPredicate:v2];

  if ([v4 count])
  {
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __69__ARWorldTrackingConfiguration_recommendedVideoFormatFor4KResolution__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 has4KVideoResolution])
  {
    v3 = [v2 framesPerSecond] == 30;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)recommendedVideoFormatForHighResolutionFrameCapturing
{
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_18_0];
  v3 = [objc_opt_class() supportedVideoFormats];
  v4 = [v3 filteredArrayUsingPredicate:v2];

  if ([v4 count])
  {
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_querySupportedVideoFormatsForUserFaceTracking
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 _availableCaptureDeviceTypeForBackdropCameraOverride];
  v4 = [ARVideoFormat bestVideoFormatForDevicePosition:2 deviceType:v3 resolution:0x2D000000500 frameRates:&unk_1F4258F38 videoBinned:1];
  if (v4 || ([ARFaceTrackingConfiguration fallbackVideoFormatWithCaptureDeviceType:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v20[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    goto LABEL_4;
  }

  if (ARShouldUseLogTypeError_onceToken_27 != -1)
  {
    +[ARWorldTrackingConfiguration supportedVideoFormats];
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_27;
  v9 = _ARLogGeneral_15();
  v5 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v16 = 138543618;
      v17 = v11;
      v18 = 2048;
      v19 = a1;
      v12 = "%{public}@ <%p>: Could not find supported video format for running user face tracking in multicam mode.";
      v13 = v5;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_1C241C000, v13, v14, v12, &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v11 = NSStringFromClass(v15);
    v16 = 138543618;
    v17 = v11;
    v18 = 2048;
    v19 = a1;
    v12 = "Error: %{public}@ <%p>: Could not find supported video format for running user face tracking in multicam mode.";
    v13 = v5;
    v14 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_4:

  return v6;
}

+ (id)supportedVideoFormatsForUserFaceTracking
{
  if ([a1 supportsUserFaceTracking])
  {
    if (supportedVideoFormatsForUserFaceTracking_supportedFormats && ![supportedVideoFormatsForUserFaceTracking_supportedFormats count])
    {
      v3 = [a1 _querySupportedVideoFormatsForUserFaceTracking];
      v4 = supportedVideoFormatsForUserFaceTracking_supportedFormats;
      supportedVideoFormatsForUserFaceTracking_supportedFormats = v3;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ARWorldTrackingConfiguration_supportedVideoFormatsForUserFaceTracking__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (supportedVideoFormatsForUserFaceTracking_onceToken != -1)
    {
      dispatch_once(&supportedVideoFormatsForUserFaceTracking_onceToken, block);
    }

    v5 = supportedVideoFormatsForUserFaceTracking_supportedFormats;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __72__ARWorldTrackingConfiguration_supportedVideoFormatsForUserFaceTracking__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormatsForUserFaceTracking];
  v2 = supportedVideoFormatsForUserFaceTracking_supportedFormats;
  supportedVideoFormatsForUserFaceTracking_supportedFormats = v1;
}

+ (id)_querySupportedVideoFormatsForUltraWide
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6986948];
  v38 = 0x1E000000280;
  v4 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.ultrawide.videoBinned"];
  if ([ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.back.ultrawide.resolution" resultingDimensions:&v38])
  {
    v5 = _ARLogSensor_9();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544386;
      v43 = v7;
      v44 = 2048;
      v45 = a1;
      v46 = 2112;
      v47 = *&v3;
      v48 = 1024;
      v49 = v38;
      v50 = 1024;
      v51 = HIDWORD(v38);
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat resolution for %@ set to %i, %i by user defaults", buf, 0x2Cu);
    }
  }

  v8 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.ultrawide.frameRate"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    v11 = v10;
    v12 = _ARLogSensor_9();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543874;
      v43 = v14;
      v44 = 2048;
      v45 = a1;
      v46 = 2048;
      v47 = v11;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat frame rate set to %f by user defaults", buf, 0x20u);
    }
  }

  else
  {
    v11 = 10.0;
  }

  v15 = MGCopyAnswer();
  if (([v15 BOOLValue] & 1) == 0 && ARDeviceSupportsJasper())
  {
    v16 = [[ARVideoFormat alloc] initWithImageResolution:1 captureDevicePosition:v3 captureDeviceType:640.0, 480.0];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v41[0] = v17;
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v41[1] = v18;
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v41[2] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
    [(ARVideoFormat *)v16 setFrameRatesByPowerUsage:v20];

    v40 = v16;
    v21 = MEMORY[0x1E695DEC8];
    v22 = &v40;
LABEL_16:
    v24 = [v21 arrayWithObjects:v22 count:1];
    goto LABEL_29;
  }

  v23 = [ARVideoFormat bestVideoFormatForDevicePosition:1 deviceType:v3 resolution:v38 frameRate:v4 videoBinned:v11];
  v16 = v23;
  if (v23)
  {
    [(ARVideoFormat *)v23 imageResolution];
    if ([ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?])
    {
      v39 = v16;
      v21 = MEMORY[0x1E695DEC8];
      v22 = &v39;
      goto LABEL_16;
    }

    v25 = _ARLogGeneral_15();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138543874;
      v43 = v27;
      v44 = 2048;
      v45 = a1;
      v46 = 2114;
      v47 = *&v16;
      _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Not returning video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);
    }
  }

  if (ARShouldUseLogTypeError_onceToken_27 != -1)
  {
    +[ARWorldTrackingConfiguration _querySupportedVideoFormats];
  }

  v28 = ARShouldUseLogTypeError_internalOSVersion_27;
  v29 = _ARLogGeneral_15();
  v30 = v29;
  if (v28 == 1)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138543618;
      v43 = v32;
      v44 = 2048;
      v45 = a1;
      v33 = "%{public}@ <%p>: Video format not found for using ultra wide in world tracking";
      v34 = v30;
      v35 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&dword_1C241C000, v34, v35, v33, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v36 = objc_opt_class();
    v32 = NSStringFromClass(v36);
    *buf = 138543618;
    v43 = v32;
    v44 = 2048;
    v45 = a1;
    v33 = "Error: %{public}@ <%p>: Video format not found for using ultra wide in world tracking";
    v34 = v30;
    v35 = OS_LOG_TYPE_INFO;
    goto LABEL_27;
  }

  v24 = MEMORY[0x1E695E0F0];
LABEL_29:

  return v24;
}

+ (id)supportedVideoFormatsForUltraWide
{
  if ([a1 isSupported])
  {
    if (supportedVideoFormatsForUltraWide_supportedFormats_0 && ![supportedVideoFormatsForUltraWide_supportedFormats_0 count])
    {
      v3 = [a1 _querySupportedVideoFormatsForUltraWide];
      v4 = supportedVideoFormatsForUltraWide_supportedFormats_0;
      supportedVideoFormatsForUltraWide_supportedFormats_0 = v3;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__ARWorldTrackingConfiguration_supportedVideoFormatsForUltraWide__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (supportedVideoFormatsForUltraWide_onceToken_0 != -1)
    {
      dispatch_once(&supportedVideoFormatsForUltraWide_onceToken_0, block);
    }

    v5 = supportedVideoFormatsForUltraWide_supportedFormats_0;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __65__ARWorldTrackingConfiguration_supportedVideoFormatsForUltraWide__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormatsForUltraWide];
  v2 = supportedVideoFormatsForUltraWide_supportedFormats_0;
  supportedVideoFormatsForUltraWide_supportedFormats_0 = v1;
}

- (void)setVideoFormat:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = ARWorldTrackingConfiguration;
  [(ARConfiguration *)&v6 setVideoFormat:v4];
  if ([v4 has4KVideoResolution])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isX420PixelFormat];
  }

  [(ARWorldTrackingConfiguration *)self setAlwaysUsePrimaryCameraForTracking:v5];
}

- (id)parentImageSensorSettings
{
  v10.receiver = self;
  v10.super_class = ARWorldTrackingConfiguration;
  v3 = [(ARConfiguration *)&v10 parentImageSensorSettings];
  v4 = [v3 settings];
  v5 = [v4 mutableCopy];

  if ([objc_opt_class() supportsUserFaceTracking] && !self->_disableFrontCamera && !+[ARKitUserDefaults BOOLForKey:](ARKitUserDefaults, "BOOLForKey:", @"com.apple.arkit.worldTracking.forceDisableFrontCamera") && !objc_msgSend(objc_opt_class(), "backdropCameraOverride") && !-[ARWorldTrackingConfiguration recordForGeoTracking](self, "recordForGeoTracking"))
  {
    v6 = [(ARWorldTrackingConfiguration *)self imageSensorSettingsForUserFaceTracking];
    [v6 setEnabled:{-[ARWorldTrackingConfiguration userFaceTrackingEnabled](self, "userFaceTrackingEnabled")}];
    if (v6)
    {
      [v5 addObject:v6];
    }
  }

  v7 = [(ARWorldTrackingConfiguration *)self imageSensorSettingsForUltraWide];
  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [(ARConfiguration *)self depthSensorSettingsForJasper];
  if (v8)
  {
    [v5 addObject:v8];
  }

  [v3 setSettings:v5];

  return v3;
}

- (id)imageSensorSettings
{
  v22 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = ARWorldTrackingConfiguration;
  v3 = [(ARConfiguration *)&v15 imageSensorSettings];
  [v3 setVisionDataOutputEnabled:{-[ARWorldTrackingConfiguration shouldEnableVisionDataForImageSensorSettings:](self, "shouldEnableVisionDataForImageSensorSettings:", v3)}];
  if ([v3 visionDataOutputEnabled])
  {
    v4 = [(ARWorldTrackingConfiguration *)self _trackingOptions];
    [v4 setImageSensorSettings:v3];
    v5 = [(ARWorldTrackingConfiguration *)self imageSensorSettingsForUltraWide];
    [v4 setImageSensorSettingsForUltraWide:v5];

    v6 = ARVisionDataParametersForWorldTrackingOptions(v4);
    if (v6)
    {
      [v3 setVisionDataOutputParameters:v6];
      v7 = _ARLogGeneral_15();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138543874;
        v17 = v9;
        v18 = 2048;
        v19 = self;
        v20 = 2114;
        v21 = v6;
        v10 = "%{public}@ <%p>: Setting vision data output parameters for wide: %{public}@";
        v11 = v7;
        v12 = 32;
LABEL_7:
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
      }
    }

    else
    {
      v7 = _ARLogGeneral_15();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v9 = NSStringFromClass(v13);
        *buf = 138543618;
        v17 = v9;
        v18 = 2048;
        v19 = self;
        v10 = "%{public}@ <%p>: Did not receive vision data output parameters for wide.";
        v11 = v7;
        v12 = 22;
        goto LABEL_7;
      }
    }
  }

  return v3;
}

- (id)imageSensorSettingsForUserFaceTracking
{
  v3 = [objc_opt_class() supportedVideoFormatsForUserFaceTracking];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [[ARImageSensorSettings alloc] initWithVideoFormat:v4];
    [(ARImageSensorSettings *)v5 setAutoFocusEnabled:[(ARConfiguration *)self isAutoFocusEnabled]];
    [(ARImageSensorSettings *)v5 setMirrorVideoOutput:1];
    [(ARImageSensorSettings *)v5 setCalibrationDataOutputEnabled:0];
    [(ARImageSensorSettings *)v5 setMetaData:*MEMORY[0x1E6987018]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ARImageSensorSettings)imageSensorSettingsForUltraWide
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(ARWorldTrackingConfiguration *)self shouldUseUltraWide])
  {
    v5 = 0;
    goto LABEL_14;
  }

  v3 = [objc_opt_class() supportedVideoFormatsForUltraWide];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [[ARImageSensorSettings alloc] initWithVideoFormat:v4];
    LODWORD(v6) = 1126170624;
    [(ARImageSensorSettings *)v5 setMaxGainOverride:v6];
    [(ARImageSensorSettings *)v5 setVisionDataOutputEnabled:[(ARWorldTrackingConfiguration *)self shouldEnableVisionDataForImageSensorSettings:v5]];
    if ([(ARImageSensorSettings *)v5 visionDataOutputEnabled])
    {
      v7 = [(ARWorldTrackingConfiguration *)self _trackingOptions];
      v8 = [(ARWorldTrackingConfiguration *)self imageSensorSettings];
      [v7 setImageSensorSettings:v8];

      [v7 setImageSensorSettingsForUltraWide:v5];
      v9 = ARVisionDataParametersForWorldTrackingOptions(v7);
      if (v9)
      {
        [(ARImageSensorSettings *)v5 setVisionDataOutputParameters:v9];
        v10 = _ARLogGeneral_15();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v18 = 138543874;
          v19 = v12;
          v20 = 2048;
          v21 = self;
          v22 = 2114;
          v23 = v9;
          v13 = "%{public}@ <%p>: Setting vision data output parameters for ultra wide: %{public}@";
          v14 = v10;
          v15 = 32;
LABEL_11:
          _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEBUG, v13, &v18, v15);
        }
      }

      else
      {
        v10 = _ARLogGeneral_15();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v16 = objc_opt_class();
          v12 = NSStringFromClass(v16);
          v18 = 138543618;
          v19 = v12;
          v20 = 2048;
          v21 = self;
          v13 = "%{public}@ <%p>: Did not receive vision data output parameters for ultra wide.";
          v14 = v10;
          v15 = 22;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_14:

  return v5;
}

- (BOOL)shouldUseUltraWide
{
  if (ARDeviceSupportsUltraWideCamera() && ARUserDefaultsMulticamModeEnabled())
  {
    v3 = [objc_opt_class() supportedVideoFormatsForUltraWide];
    if ([v3 count] && self->_shouldUseUltraWideIfAvailable)
    {
      v4 = [objc_opt_class() backdropCameraOverride];

      if (!v4)
      {
        v5 = 1;
        if (ARDeviceSupportsMulticamMode())
        {
          return v5;
        }

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v5 = 0;
LABEL_10:
  if (ARLinkedOnOrAfterYukon())
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    return v5 & ARDeviceSupportsJasper();
  }

  return v5;
}

- (BOOL)shouldUseJasper
{
  v3 = ARDeviceSupportsJasper();
  if (v3)
  {

    LOBYTE(v3) = [(ARWorldTrackingConfiguration *)self useLidarIfAvailable];
  }

  return v3;
}

- (BOOL)shouldEnableVisionDataForImageSensorSettings:(id)a3
{
  v4 = [a3 videoFormat];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [(ARWorldTrackingConfiguration *)self shouldUseUltraWide];
  v6 = [v4 captureDeviceType];
  v7 = v6;
  if (!v5)
  {
    v9 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v6);

    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = *MEMORY[0x1E6986948];

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = [(ARWorldTrackingConfiguration *)self slamConfiguration];
  v11 = [v10 isEqualToString:@"MeasureApp"];

  if (![ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.visionData"])
  {
    goto LABEL_8;
  }

  v12 = ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.simulateHWFeatureDetection"]| v11) ^ 1;
LABEL_9:

  return v12 & 1;
}

- (void)setDetectionImages:(NSSet *)detectionImages
{
  v4 = detectionImages;
  v6 = v4;
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  objc_storeStrong(&self->_detectionImages, v4);
  v5 = v6;
  if (!v6)
  {

    v5 = 0;
  }
}

- (void)createTechniques:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ARConfiguration *)self frameSemantics];
  if (![(ARWorldTrackingConfiguration *)self useLidarIfAvailable]&& (v5 & 0x18) != 0)
  {
    if (_ARLogRuntimeIssues_onceToken_0 != -1)
    {
      [ARWorldTrackingConfiguration createTechniques:];
    }

    v6 = _ARLogRuntimeIssues_logObj_0;
    if (os_log_type_enabled(_ARLogRuntimeIssues_logObj_0, OS_LOG_TYPE_FAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v62 = v9;
      v63 = 2048;
      v64 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_FAULT, "%{public}@ <%p>: Disabling Lidar (useLidarIfAvailable=false) and SceneDepth is not compatible (ARFrameSemanticSceneDepth | ARFrameSemanticSmoothedSceneDepth)", buf, 0x16u);
    }
  }

  v10 = [(ARWorldTrackingConfiguration *)self _trackingOptions];
  v11 = [(ARWorldTrackingConfiguration *)self imageSensorSettings];
  [v10 setImageSensorSettings:v11];

  v12 = [(ARWorldTrackingConfiguration *)self imageSensorSettingsForUltraWide];
  [v10 setImageSensorSettingsForUltraWide:v12];

  if ([(ARWorldTrackingConfiguration *)self environmentTexturing])
  {
    [v10 setPlaneDetection:{objc_msgSend(v10, "planeDetection") | 0x80}];
  }

  v13 = [(ARConfiguration *)self replaySensor];
  v14 = v13;
  if (v13 && [v13 replayMode])
  {
    [v10 setDeterministicMode:1];
    v15 = [v10 sceneReconstructionOptions];
    [v15 setDeterministicMode:1];
  }

  if ([v10 planeDetection])
  {
    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.accuratePlaneExtentCheck"])
    {
      accuratePlaneExtentCheckEnabled = self->_accuratePlaneExtentCheckEnabled;
    }

    else
    {
      accuratePlaneExtentCheckEnabled = 0;
    }

    v17 = _ARLogGeneral_15();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = @"disabled";
      *buf = 138543874;
      v62 = v19;
      if (accuratePlaneExtentCheckEnabled)
      {
        v20 = @"enabled";
      }

      v63 = 2048;
      v64 = self;
      v65 = 2114;
      v66 = *&v20;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Ray-cast accurate extent check: %{public}@", buf, 0x20u);
    }

    if (accuratePlaneExtentCheckEnabled)
    {
      [v10 setPlaneDetection:{objc_msgSend(v10, "planeDetection") | 0x200}];
    }
  }

  v21 = [[ARWorldTrackingTechnique alloc] initWithOptions:v10];
  v22 = v21;
  if (v21)
  {
    v23 = [(ARWorldTrackingTechnique *)v21 options];
    v24 = [v23 planeDetection];

    if (v24)
    {
      v25 = [[ARPlaneEstimationTechnique alloc] initWithTrackingTechnique:v22];
      [v4 addObject:v25];
    }

    if ([(ARWorldTrackingConfiguration *)self environmentTexturing])
    {
      v26 = [[AREnvironmentTexturingTechnique alloc] initWithOptions:[(ARWorldTrackingConfiguration *)self environmentTexturing] wantsHDREnvironmentTextures:self->_wantsHDREnvironmentTextures];
      [v4 addObject:v26];
    }

    v27 = [ARParentTechnique alloc];
    v60 = v22;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    v29 = [(ARParentTechnique *)v27 initWithParallelTechniques:v28];

    [v4 insertObject:v29 atIndex:0];
    v59.receiver = self;
    v59.super_class = ARWorldTrackingConfiguration;
    [(ARConfiguration *)&v59 createTechniques:v4];
    if ([v10 planeDetection])
    {
      v30 = [(ARWorldTrackingConfiguration *)self isMLModelEnabled];
    }

    else
    {
      v30 = 0;
    }

    v31 = [(ARWorldTrackingConfiguration *)self sceneReconstruction];
    if ([(ARWorldTrackingConfiguration *)self shouldUseJasper])
    {
      ARAddJasperTechniquesToParent(v29, v4, v31 != 0 || v30, ([(ARConfiguration *)self frameSemantics]>> 4) & 1, [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate]);
      v32 = [ARTechnique techniqueConformsToProtocol:&unk_1F425FD78 inArray:v4];
      v33 = v32;
      if (v32)
      {
        v34 = [v32 pipelineParameters];
        [v34 confidenceBucketingHighThreshold];
        v36 = v35;
        v37 = [(ARWorldTrackingTechnique *)v22 mutableOptions];
        v38 = [v37 sceneReconstructionOptions];
        LODWORD(v39) = v36;
        [v38 setMinDepthUncertaintyThreshold:v39];

        v40 = _ARLogGeneral_15();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          v58 = [(ARWorldTrackingTechnique *)v22 mutableOptions];
          v43 = [v58 sceneReconstructionOptions];
          [v43 minDepthUncertaintyThreshold];
          *buf = 138543874;
          v62 = v42;
          v63 = 2048;
          v64 = self;
          v65 = 2048;
          v66 = v44;
          _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Changed the min depth uncertainty threshold of scene reconstruction to %f \n", buf, 0x20u);
        }
      }
    }

    else if (v30)
    {
      ARAddNonJasperSemanticsToParent(v29, v4, [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate], 1);
    }

    v45 = [(ARWorldTrackingConfiguration *)self detectionImages];
    v46 = [v45 count];

    if (v46)
    {
      v47 = [ARImageDetectionTechnique alloc];
      v48 = [(ARWorldTrackingConfiguration *)self detectionImages];
      v49 = [v48 allObjects];
      v50 = [(ARImageDetectionTechnique *)v47 initWithReferenceImages:v49 maximumNumberOfTrackedImages:[(ARWorldTrackingConfiguration *)self maximumNumberOfTrackedImages]];

      [(ARImageDetectionTechnique *)v50 setEnableAutomaticImageScaleEstimation:[(ARWorldTrackingConfiguration *)self automaticImageScaleEstimationEnabled]];
      [v4 addObject:v50];
    }

    v51 = [(ARWorldTrackingConfiguration *)self detectionObjects];
    v52 = [v51 count];

    if (v52)
    {
      v53 = [ARObjectDetectionTechnique alloc];
      v54 = [(ARWorldTrackingConfiguration *)self detectionObjects];
      v55 = [v54 allObjects];
      v56 = [(ARObjectDetectionTechnique *)v53 initWithDetectionObjects:v55];

      [v4 addObject:v56];
    }

    if ([(ARWorldTrackingConfiguration *)self appClipCodeTrackingEnabled])
    {
      v57 = [[ARAppClipCodeTechnique alloc] initWithIgnoreURLLimitation:[(ARWorldTrackingConfiguration *)self ignoreAppClipCodeURLLimitation]];
      if ((self->_appClipCodePerformanceTestingMode - 1) <= 1)
      {
        [v4 removeAllObjects];
      }

      [v4 addObject:v57];
    }
  }
}

- (id)secondaryTechniques
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() supportsUserFaceTracking] && -[ARWorldTrackingConfiguration userFaceTrackingEnabled](self, "userFaceTrackingEnabled"))
  {
    v3 = objc_opt_new();
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_trackingOptions
{
  v3 = objc_opt_new();
  v4 = [(ARConfiguration *)self deviceModel];
  [v3 setDeviceModel:v4];

  [v3 setRelocalizationEnabled:{-[ARWorldTrackingConfiguration relocalizationEnabled](self, "relocalizationEnabled")}];
  v5 = [(ARWorldTrackingConfiguration *)self initialWorldMap];
  [v3 setInitialWorldMap:v5];

  v6 = [(ARWorldTrackingConfiguration *)self slamConfiguration];
  [v3 setSlamConfiguration:v6];

  [v3 setPlaneDetection:{-[ARWorldTrackingConfiguration planeDetection](self, "planeDetection")}];
  [(ARWorldTrackingConfiguration *)self minVergenceAngle];
  [v3 setMinVergenceAngle:?];
  [v3 setMlModelEnabled:{-[ARWorldTrackingConfiguration isMLModelEnabled](self, "isMLModelEnabled")}];
  [v3 setLowQosSchedulingEnabled:{-[ARWorldTrackingConfiguration isLowQosSchedulingEnabled](self, "isLowQosSchedulingEnabled")}];
  [v3 setCollaborationEnabled:{-[ARWorldTrackingConfiguration isCollaborationEnabled](self, "isCollaborationEnabled")}];
  [v3 setSceneReconstruction:{-[ARWorldTrackingConfiguration sceneReconstruction](self, "sceneReconstruction")}];
  v7 = [(ARWorldTrackingConfiguration *)self sceneReconstructionOptions];
  [v3 setSceneReconstructionOptions:v7];

  LOBYTE(v7) = [(ARConfiguration *)self frameSemantics];
  [(ARConfiguration *)self frameSemantics];
  if ((v7 & 8) != 0 || [(ARWorldTrackingConfiguration *)self sceneReconstruction])
  {
    [v3 setDepthBuffersWillBeProvided:1];
  }

  [v3 setAlwaysUsePrimaryCameraForTracking:{-[ARWorldTrackingConfiguration alwaysUsePrimaryCameraForTracking](self, "alwaysUsePrimaryCameraForTracking")}];
  [v3 setRecordForGeoTracking:{-[ARWorldTrackingConfiguration recordForGeoTracking](self, "recordForGeoTracking")}];
  [v3 setPlaneBundleAdjustmentEnabled:{-[ARWorldTrackingConfiguration isPlaneBundleAdjustmentEnabled](self, "isPlaneBundleAdjustmentEnabled")}];
  v8 = [(ARWorldTrackingConfiguration *)self singleShotPlaneCallback];
  [v3 setSingleShotPlaneCallback:v8];

  v9 = [(ARWorldTrackingConfiguration *)self trackedPlaneCallback];
  [v3 setTrackedPlaneCallback:v9];

  v10 = [(ARWorldTrackingConfiguration *)self planeDetectionVIOPoseCallback];
  [v3 setPlaneDetectionVIOPoseCallback:v10];

  v11 = [(ARWorldTrackingConfiguration *)self planeDetectionPoseUpdateCallback];
  [v3 setPlaneDetectionPoseUpdateCallback:v11];

  [v3 setDisableMLRelocalization:{-[ARConfiguration disableMLRelocalization](self, "disableMLRelocalization")}];
  [v3 setPlaneEstimationShouldUseJasperData:{-[ARWorldTrackingConfiguration shouldUseJasper](self, "shouldUseJasper")}];

  return v3;
}

- (int64_t)_depthPrioritization
{
  if ([(ARWorldTrackingConfiguration *)self depthOptimizedForStaticScene])
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)supportsUserFaceTracking
{
  if (ARDeviceSupportsUltraWideCamera())
  {
    if ((ARDeviceSupportsMulticamWithTripleRGBStreaming() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ARDeviceSupportsMulticamMode())
  {
    return 0;
  }

  return ARUserDefaultsMulticamModeEnabled();
}

+ (BOOL)supportsSceneReconstruction:(ARSceneReconstruction)sceneReconstruction
{
  if (!ARDeviceSupportsJasper())
  {
    return sceneReconstruction == 0;
  }

  result = 1;
  if ((sceneReconstruction & 1) == 0 && (sceneReconstruction & 8) == 0 && (sceneReconstruction & 0x80) == 0)
  {
    return sceneReconstruction == 0;
  }

  return result;
}

- (void)setSceneReconstruction:(ARSceneReconstruction)sceneReconstruction
{
  if (([objc_opt_class() supportsSceneReconstruction:sceneReconstruction] & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Scene Reconstruction type not supported by this configuration" userInfo:0];
    objc_exception_throw(v5);
  }

  self->_sceneReconstruction = sceneReconstruction;
}

+ (BOOL)supportsFrameSemantics:(unint64_t)a3
{
  if (a3 & 7) == 0 && (ARDeviceSupportsJasper() & 1) != 0 || (a3 & 0x1B) == 0 && (ARAppleNeuralEngine() & 1) != 0 || (a3 & 0x1C) == 0 && (ARAppleNeuralEngine() & 1) != 0 || (a3 & 4) == 0 && ARAppleNeuralEngine() && (ARDeviceSupportsJasper())
  {
    return 1;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___ARWorldTrackingConfiguration;
  return objc_msgSendSuper2(&v6, sel_supportsFrameSemantics_, a3);
}

- (void)setSpatialMappingParameters:(ARSpatialMappingParameters)a3
{
  var1 = a3.var1;
  [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions setVoxelSize:a3.var0];
  sceneReconstructionOptions = self->_sceneReconstructionOptions;

  [(ARSceneReconstructionOptions *)sceneReconstructionOptions setBucketsCount:var1];
}

- (ARSpatialMappingParameters)spatialMappingParameters
{
  v3 = [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions voxelSize];
  v4 = [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions bucketsCount];
  v5 = v3;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

+ (BOOL)supportsAppClipCodeTracking
{
  if (ARAppleNeuralEngine())
  {
    return 1;
  }

  return +[ARAppClipCodeTechnique shouldRunCameraOrScannerPerformanceTestingMode];
}

- (BOOL)appClipCodeTrackingEnabled
{
  if (!self->_appClipCodeTrackingEnabled)
  {
    return 0;
  }

  v3 = objc_opt_class();

  return [v3 supportsAppClipCodeTracking];
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v42.receiver = self;
  v42.super_class = ARWorldTrackingConfiguration;
  if ([(ARConfiguration *)&v42 isEqual:v6])
  {
    v7 = v6;
    v8 = v7;
    if (self->_planeDetection != *(v7 + 18) || self->_minVergenceAngle != v7[25] || self->_mlModelEnabled != *(v7 + 118) || self->_lowQosSchedulingEnabled != *(v7 + 119) || self->_accuratePlaneExtentCheckEnabled != *(v7 + 120) || self->_deliverRawSceneUnderstandingResults != *(v7 + 121) || (slamConfiguration = self->_slamConfiguration, slamConfiguration != *(v8 + 24)) && ![(NSString *)slamConfiguration isEqual:?]|| self->_environmentTexturing != *(v8 + 17) || self->_wantsHDREnvironmentTextures != *(v8 + 112) || self->_relocalizationEnabled != *(v8 + 117))
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v10 = [(ARWorldTrackingConfiguration *)self initialWorldMap];
    v11 = [v8 initialWorldMap];
    if (v10 != v11)
    {
      v3 = [(ARWorldTrackingConfiguration *)self initialWorldMap];
      v4 = [v8 initialWorldMap];
      if (![v3 isEqual:v4])
      {
        v12 = 0;
        goto LABEL_47;
      }
    }

    detectionImages = self->_detectionImages;
    v16 = [v8 detectionImages];
    if ((detectionImages == v16 || [(NSSet *)self->_detectionImages isEqual:*(v8 + 20)]) && self->_maximumNumberOfTrackedImages == *(v8 + 21))
    {
      detectionObjects = self->_detectionObjects;
      if (detectionObjects == *(v8 + 22) || [(NSSet *)detectionObjects isEqual:?])
      {
        automaticImageScaleEstimationEnabled = self->_automaticImageScaleEstimationEnabled;
        if (automaticImageScaleEstimationEnabled == [v8 automaticImageScaleEstimationEnabled])
        {
          collaborationEnabled = self->_collaborationEnabled;
          if (collaborationEnabled == [v8 isCollaborationEnabled])
          {
            shouldUseUltraWideIfAvailable = self->_shouldUseUltraWideIfAvailable;
            if (shouldUseUltraWideIfAvailable == [v8 shouldUseUltraWideIfAvailable])
            {
              userFaceTrackingEnabled = self->_userFaceTrackingEnabled;
              if (userFaceTrackingEnabled == [v8 userFaceTrackingEnabled])
              {
                depthTemporalSmoothingEnabled = self->_depthTemporalSmoothingEnabled;
                if (depthTemporalSmoothingEnabled == [v8 depthTemporalSmoothingEnabled])
                {
                  depthOptimizedForStaticScene = self->_depthOptimizedForStaticScene;
                  if (depthOptimizedForStaticScene == [v8 depthOptimizedForStaticScene] && self->_sceneReconstruction == *(v8 + 23))
                  {
                    sceneReconstructionOptions = self->_sceneReconstructionOptions;
                    if (sceneReconstructionOptions == *(v8 + 26) || [(ARSceneReconstructionOptions *)sceneReconstructionOptions isEqual:?])
                    {
                      alwaysUsePrimaryCameraForTracking = self->_alwaysUsePrimaryCameraForTracking;
                      if (alwaysUsePrimaryCameraForTracking == [v8 alwaysUsePrimaryCameraForTracking])
                      {
                        disableFrontCamera = self->_disableFrontCamera;
                        if (disableFrontCamera == [v8 disableFrontCamera])
                        {
                          ignoreAppClipCodeURLLimitation = self->_ignoreAppClipCodeURLLimitation;
                          if (ignoreAppClipCodeURLLimitation == [v8 ignoreAppClipCodeURLLimitation])
                          {
                            appClipCodeTrackingEnabled = self->_appClipCodeTrackingEnabled;
                            if (appClipCodeTrackingEnabled == [v8 appClipCodeTrackingEnabled])
                            {
                              appClipCodePerformanceTestingMode = self->_appClipCodePerformanceTestingMode;
                              if (appClipCodePerformanceTestingMode == [v8 appClipCodePerformanceTestingMode])
                              {
                                recordForGeoTracking = self->_recordForGeoTracking;
                                if (recordForGeoTracking == [v8 recordForGeoTracking])
                                {
                                  planeBundleAdjustmentEnabled = self->_planeBundleAdjustmentEnabled;
                                  if (planeBundleAdjustmentEnabled == [v8 isPlaneBundleAdjustmentEnabled])
                                  {
                                    singleShotPlaneCallback = self->_singleShotPlaneCallback;
                                    v33 = [v8 singleShotPlaneCallback];
                                    if (singleShotPlaneCallback == v33)
                                    {
                                      trackedPlaneCallback = self->_trackedPlaneCallback;
                                      v41 = [v8 trackedPlaneCallback];
                                      if (trackedPlaneCallback == v41)
                                      {
                                        planeDetectionVIOPoseCallback = self->_planeDetectionVIOPoseCallback;
                                        v40 = [v8 planeDetectionVIOPoseCallback];
                                        if (planeDetectionVIOPoseCallback == v40)
                                        {
                                          planeDetectionPoseUpdateCallback = self->_planeDetectionPoseUpdateCallback;
                                          v39 = [v8 planeDetectionPoseUpdateCallback];
                                          if (planeDetectionPoseUpdateCallback == v39 && (disableLocationSensor = self->_disableLocationSensor, disableLocationSensor == [v8 disableLocationSensor]))
                                          {
                                            useLidarIfAvailable = self->_useLidarIfAvailable;
                                            v12 = useLidarIfAvailable == [v8 useLidarIfAvailable];
                                          }

                                          else
                                          {
                                            v12 = 0;
                                          }
                                        }

                                        else
                                        {
                                          v12 = 0;
                                        }

                                        v13 = v12;
LABEL_46:
                                        if (v10 == v11)
                                        {
LABEL_48:

                                          goto LABEL_18;
                                        }

LABEL_47:

                                        v13 = v12;
                                        goto LABEL_48;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v12 = 0;
    v13 = 0;
    goto LABEL_46;
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24.receiver = self;
  v24.super_class = ARWorldTrackingConfiguration;
  v5 = [(ARConfiguration *)&v24 copyWithZone:?];
  v5[18] = self->_planeDetection;
  v5[25] = *&self->_minVergenceAngle;
  *(v5 + 118) = self->_mlModelEnabled;
  *(v5 + 119) = self->_lowQosSchedulingEnabled;
  *(v5 + 120) = self->_accuratePlaneExtentCheckEnabled;
  *(v5 + 121) = self->_deliverRawSceneUnderstandingResults;
  v6 = [(NSString *)self->_slamConfiguration copyWithZone:a3];
  v7 = v5[24];
  v5[24] = v6;

  v5[17] = self->_environmentTexturing;
  *(v5 + 112) = self->_wantsHDREnvironmentTextures;
  *(v5 + 117) = self->_relocalizationEnabled;
  v8 = [(ARWorldTrackingConfiguration *)self initialWorldMap];
  [v5 setInitialWorldMap:v8];

  v9 = [(NSSet *)self->_detectionImages copyWithZone:a3];
  v10 = v5[20];
  v5[20] = v9;

  v5[21] = self->_maximumNumberOfTrackedImages;
  v11 = [(NSSet *)self->_detectionObjects copyWithZone:a3];
  v12 = v5[22];
  v5[22] = v11;

  *(v5 + 113) = self->_automaticImageScaleEstimationEnabled;
  *(v5 + 114) = self->_collaborationEnabled;
  *(v5 + 115) = self->_userFaceTrackingEnabled;
  *(v5 + 122) = self->_shouldUseUltraWideIfAvailable;
  *(v5 + 124) = self->_depthTemporalSmoothingEnabled;
  *(v5 + 125) = self->_depthOptimizedForStaticScene;
  v5[23] = self->_sceneReconstruction;
  v13 = [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions copyWithZone:a3];
  v14 = v5[26];
  v5[26] = v13;

  *(v5 + 127) = self->_alwaysUsePrimaryCameraForTracking;
  *(v5 + 128) = self->_disableFrontCamera;
  *(v5 + 126) = self->_ignoreAppClipCodeURLLimitation;
  *(v5 + 116) = self->_appClipCodeTrackingEnabled;
  v5[27] = self->_appClipCodePerformanceTestingMode;
  *(v5 + 130) = self->_recordForGeoTracking;
  *(v5 + 131) = self->_planeBundleAdjustmentEnabled;
  v15 = MEMORY[0x1C691B4C0](self->_singleShotPlaneCallback);
  v16 = v5[28];
  v5[28] = v15;

  v17 = MEMORY[0x1C691B4C0](self->_trackedPlaneCallback);
  v18 = v5[29];
  v5[29] = v17;

  v19 = MEMORY[0x1C691B4C0](self->_planeDetectionVIOPoseCallback);
  v20 = v5[30];
  v5[30] = v19;

  v21 = MEMORY[0x1C691B4C0](self->_planeDetectionPoseUpdateCallback);
  v22 = v5[31];
  v5[31] = v21;

  *(v5 + 123) = self->_useLidarIfAvailable;
  *(v5 + 129) = self->_disableLocationSensor;
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:v7];

  if ([(ARConfiguration *)self isAutoFocusEnabled])
  {
    v8 = @"Enabled";
  }

  else
  {
    v8 = @"Disabled";
  }

  [v6 appendFormat:@" autoFocus=%@", v8];
  v9 = NSStringFromAREnvironmentTexturing(self->_environmentTexturing);
  [v6 appendFormat:@" environmentTexturing=%@", v9];

  if ([(ARWorldTrackingConfiguration *)self wantsHDREnvironmentTextures])
  {
    v10 = @"Enabled";
  }

  else
  {
    v10 = @"Disabled";
  }

  [v6 appendFormat:@" wantsHDREnvironmentTextures=%@", v10];
  v11 = NSStringFromARPlaneDetection(self->_planeDetection);
  [v6 appendFormat:@" planeDetection=%@", v11];

  if ([(ARWorldTrackingConfiguration *)self isCollaborationEnabled])
  {
    v12 = @"Enabled";
  }

  else
  {
    v12 = @"Disabled";
  }

  [v6 appendFormat:@" collaboration=%@", v12];
  if ([(ARWorldTrackingConfiguration *)self userFaceTrackingEnabled])
  {
    v13 = @"Enabled";
  }

  else
  {
    v13 = @"Disabled";
  }

  [v6 appendFormat:@" userFaceTracking=%@", v13];
  v14 = NSStringFromARSceneReconstruction([(ARWorldTrackingConfiguration *)self sceneReconstruction]);
  [v6 appendFormat:@" sceneReconstruction=%@", v14];

  v15 = [(ARWorldTrackingConfiguration *)self initialWorldMap];

  if (v15)
  {
    v16 = [(ARWorldTrackingConfiguration *)self initialWorldMap];
    [v6 appendFormat:@" initialWorldMap=%@", v16];
  }

  v17 = [(ARWorldTrackingConfiguration *)self detectionImages];
  v18 = [v17 count];

  if (v18)
  {
    [v6 appendFormat:@" maximumNumberOfTrackedImages=%ld", -[ARWorldTrackingConfiguration maximumNumberOfTrackedImages](self, "maximumNumberOfTrackedImages")];
    if ([(ARWorldTrackingConfiguration *)self automaticImageScaleEstimationEnabled])
    {
      v19 = @"Enabled";
    }

    else
    {
      v19 = @"Disabled";
    }

    [v6 appendFormat:@" automaticImageScaleEstimation=%@", v19];
    v20 = [(ARWorldTrackingConfiguration *)self detectionImages];
    v21 = [v20 count];
    v22 = [(ARWorldTrackingConfiguration *)self detectionImages];
    v23 = [v22 allObjects];
    v24 = [v23 ar_map:&__block_literal_global_165];
    v25 = [v24 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" detectionImages=[count: %ld, %@]", v21, v25];
  }

  v26 = [(ARWorldTrackingConfiguration *)self detectionObjects];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [(ARWorldTrackingConfiguration *)self detectionObjects];
    v29 = [v28 allObjects];
    v30 = [v29 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" detectionObjects=[%@]", v30];
  }

  [v6 appendFormat:@" useLidarIfAvailable=%d", self->_useLidarIfAvailable];
  if ([(ARWorldTrackingConfiguration *)self appClipCodeTrackingEnabled])
  {
    v31 = @"Enabled";
  }

  else
  {
    v31 = @"Disabled";
  }

  [v6 appendFormat:@" appClipCodeTracking=%@", v31];
  [v6 appendString:@">"];

  return v6;
}

@end