@interface ARKitUserDefaults
+ (BOOL)BOOLForKey:(id)key;
+ (BOOL)BOOLForKey:(id)key useCache:(BOOL)cache;
+ (BOOL)resolutionForKey:(id)key resultingDimensions:(id *)dimensions;
+ (BOOL)shouldUseCache;
+ (double)doubleForKey:(id)key;
+ (double)doubleForKey:(id)key useCache:(BOOL)cache;
+ (float)floatForKey:(id)key;
+ (float)floatForKey:(id)key useCache:(BOOL)cache;
+ (id)_numberForObject:(id)object;
+ (id)cachedObjectForKey:(id)key;
+ (id)defaultValues;
+ (id)keysApprovedForProcessEnvironmentOverride;
+ (id)listForKey:(id)key;
+ (id)numberForKey:(id)key;
+ (id)numberForKey:(id)key useCache:(BOOL)cache;
+ (id)objectForKey:(id)key;
+ (id)objectForKey:(id)key useCache:(BOOL)cache;
+ (id)objectForKeySlow:(id)slow;
+ (id)stringForKey:(id)key;
+ (id)userDefaultsCache;
+ (int64_t)integerForKey:(id)key;
+ (int64_t)integerForKey:(id)key useCache:(BOOL)cache;
+ (void)cacheObject:(id)object forKey:(id)key;
+ (void)clearUserDefaultsCache;
+ (void)removeAllKeys;
+ (void)removeCachedObjectForKey:(id)key;
+ (void)removeObjectForKey:(id)key;
+ (void)setBool:(BOOL)bool forKey:(id)key;
+ (void)setObject:(id)object forKey:(id)key;
+ (void)synchronize;
@end

@implementation ARKitUserDefaults

+ (id)defaultValues
{
  if (defaultValues_onceToken != -1)
  {
    +[ARKitUserDefaults defaultValues];
  }

  v3 = defaultValues_defaultValues;

  return v3;
}

void __34__ARKitUserDefaults_defaultValues__block_invoke()
{
  v10[113] = *MEMORY[0x1E69E9840];
  v0 = MGGetBoolAnswer();
  v1 = MEMORY[0x1E695E118];
  v2 = MEMORY[0x1E695E110];
  v10[0] = MEMORY[0x1E695E118];
  v10[1] = MEMORY[0x1E695E110];
  v10[2] = @"3";
  v10[3] = &unk_1F4258CF8;
  v10[4] = &unk_1F4258CF8;
  v10[5] = MEMORY[0x1E695E118];
  v10[6] = MEMORY[0x1E695E110];
  v10[7] = MEMORY[0x1E695E118];
  v10[8] = MEMORY[0x1E695E118];
  v10[9] = MEMORY[0x1E695E118];
  v10[10] = MEMORY[0x1E695E118];
  v10[11] = &unk_1F4258CF8;
  v10[12] = MEMORY[0x1E695E118];
  v10[13] = MEMORY[0x1E695E118];
  v10[14] = MEMORY[0x1E695E118];
  v10[15] = &unk_1F4258D10;
  v10[16] = MEMORY[0x1E695E118];
  v10[17] = MEMORY[0x1E695E110];
  v10[18] = MEMORY[0x1E695E118];
  v10[19] = &unk_1F4259750;
  v10[20] = &unk_1F4259760;
  v10[21] = &unk_1F4258D10;
  v10[22] = MEMORY[0x1E695E110];
  v10[23] = &unk_1F4258D28;
  v10[24] = MEMORY[0x1E695E110];
  v10[25] = MEMORY[0x1E695E110];
  v10[26] = MEMORY[0x1E695E110];
  v10[27] = MEMORY[0x1E695E118];
  v10[28] = MEMORY[0x1E695E118];
  v10[29] = &unk_1F4258D40;
  v10[30] = MEMORY[0x1E695E110];
  v10[31] = &unk_1F4258CF8;
  v10[32] = @"System Default";
  v10[33] = MEMORY[0x1E695E110];
  v10[34] = MEMORY[0x1E695E118];
  v10[35] = @"2";
  v10[36] = MEMORY[0x1E695E118];
  v10[37] = MEMORY[0x1E695E110];
  v10[38] = MEMORY[0x1E695E118];
  v10[39] = MEMORY[0x1E695E110];
  v10[40] = MEMORY[0x1E695E118];
  v10[41] = MEMORY[0x1E695E118];
  v10[42] = MEMORY[0x1E695E110];
  v10[43] = MEMORY[0x1E695E118];
  v10[44] = MEMORY[0x1E695E110];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{0, @"com.apple.arkit.useCacheForUserDefaults", @"com.apple.arkit.daemonMetrics.disableReporting", @"com.apple.arkit.session.featurePointAccumulationCount", @"com.apple.arkit.session.useIOKit", @"com.apple.arkit.session.cameraPosition", @"com.apple.arkit.parenttechnique.enableLowLatencyPath", @"com.apple.arkit.imagesensor.attemptfailurerecovery", @"com.apple.arkit.imagesensor.attemptfailurerecoveryafterbackground", @"com.apple.arkit.imagesensor.back.ultrawide.enabled", @"com.apple.arkit.imagesensor.back.wide.videoBinned", @"com.apple.arkit.imagesensor.back.wide.smoothAutoFocus", @"com.apple.arkit.imagesensor.back.wide.photoQualityPrioritization", @"com.apple.arkit.imagesensor.front.videoBinned", @"com.apple.arkit.imagesensor.face.mirror", @"com.apple.arkit.imagesensor.face.previousImageDataOnDrop", @"com.apple.arkit.imagesensor.back.ultrawide.frameRate", @"com.apple.arkit.imagesensor.back.ultrawide.videoBinned", @"com.apple.arkit.imagesensor.back.ultrawide.geometricDistortionCorrection", @"com.apple.arkit.imagesensor.initialFrameDrop.enabled", @"com.apple.arkit.imagesensor.initialFrameDrop.negativeExposureTargetOffsetThreshold", @"com.apple.arkit.imagesensor.initialFrameDrop.positiveExposureTargetOffsetThreshold", @"com.apple.arkit.imagesensor.initialFrameDrop.maxDroppedFramesCount", @"com.apple.arkit.imagesensor.calibrationData.alwaysDiscardsLateData", @"com.apple.arkit.motionSensor.sampleRate", @"com.apple.arkit.motionSensor.magnetometerEnabled", @"com.apple.arkit.recordingTechnique.recordPearlDepthData", @"com.apple.arkit.replaySensor.deterministicMode", @"com.apple.arkit.replaySensor.replayVisionData", @"com.apple.arkit.planeEstimation.mlOnANEDevices", @"com.apple.arkit.planeEstimation.normalsKernelSize", @"com.apple.arkit.planeEstimation.enableLowQosScheduling", @"com.apple.arkit.sceneReconstruction.bucketsCount", @"com.apple.arkit.planeEstimation.detectionMethod", @"com.apple.arkit.planeEstimation.enableInverseDepthDetector", @"com.apple.arkit.worldtracking.lineFeatures", @"com.apple.arkit.worldtracking.minVergenceAngle", @"com.apple.arkit.worldtracking.poseGraphUpdates", @"com.apple.arkit.worldtracking.fixedIntrinsics", @"com.apple.arkit.worldTracking.visionData", @"com.apple.arkit.worldTracking.simulateHWFeatureDetection", @"com.apple.arkit.worldTracking.useLACCIfAvailable", @"com.apple.arkit.worldTracking.collaborativeMappingStatistics", @"com.apple.arkit.worldTracking.forceDisableFrontCamera", @"com.apple.arkit.worldTracking.participantAnchors", @"com.apple.arkit.worldTracking.warningSounds", @"com.apple.arkit.worldTracking.mlRelocalizationMode"}];
  v10[45] = v3;
  v10[46] = v1;
  v9[46] = @"com.apple.arkit.worldTracking.accuratePlaneExtentCheck";
  v9[47] = @"com.apple.arkit.worldTracking.newCV3DApis";
  v10[47] = v1;
  v10[48] = v2;
  v9[48] = @"com.apple.arkit.worldTracking.enableMLCMRelocalization";
  v9[49] = @"com.apple.arkit.worldtracking.transformToExternalSubmap";
  v10[49] = v1;
  v10[50] = v2;
  v9[50] = @"com.apple.arkit.worldtracking.enableTempMappingDirectory";
  v9[51] = @"com.apple.arkit.worldtracking.usePerFrameCameraIntrinsicsForBravo";
  v10[51] = v1;
  v10[52] = v1;
  v9[52] = @"com.apple.arkit.worldtracking.pushVisionDataIntrinsics";
  v9[53] = @"com.apple.arkit.worldtracking.useFullResolutionVisionDataIntrinsics";
  v10[53] = v1;
  v10[54] = v1;
  v9[54] = @"com.apple.arkit.geotracking.useclfusion";
  v9[55] = @"com.apple.arkit.geotracking.usegradualcorrection";
  v10[55] = v1;
  v10[56] = v2;
  v9[56] = @"com.apple.arkit.geotracking.useVLTraceRecorder";
  v9[57] = @"com.apple.arkit.geotracking.bypassChecksForANE";
  v9[58] = @"com.apple.arkit.geotracking.bypassChecksForGPS";
  v9[59] = @"com.apple.arkit.geotracking.visualLocalizationCallInterval";
  v9[60] = @"com.apple.arkit.geotracking.posteriorVisualLocalizationCallInterval";
  v9[61] = @"com.apple.arkit.geotracking.visualLocalizationCallIntervalTimeThreshold";
  v10[57] = v2;
  v10[58] = v2;
  v10[61] = &unk_1F4258D10;
  v10[62] = @"8";
  v10[59] = &unk_1F4259760;
  v10[60] = &unk_1F4258D58;
  v9[62] = @"com.apple.arkit.imagedetection.percentageThresholdPixels";
  v9[63] = @"com.apple.arkit.imageDetection.fixedPriorityProcessingQueue";
  v9[64] = @"com.apple.arkit.environmentTexturing.minimumProbeUpdateInterval";
  v10[63] = v2;
  v10[64] = @"2";
  v9[65] = @"com.apple.arkit.environmentTexturing.wantsHDR";
  v10[65] = v1;
  v9[66] = @"com.apple.arkit.environmentTexturing.maxHDR";
  v10[66] = @"10";
  v9[67] = @"com.apple.arkit.matting.erosionRadius";
  v10[67] = &unk_1F4258D70;
  v9[68] = @"com.apple.arkit.matting.uncertaintyRadius";
  v10[68] = &unk_1F4258D70;
  v9[69] = @"com.apple.arkit.matting.epsilon";
  v10[69] = &unk_1F4259770;
  v9[70] = @"com.apple.arkit.matting.disableSoftEdges";
  v10[70] = v2;
  v9[71] = @"com.apple.arkit.matting.depthScale";
  v10[71] = &unk_1F4258D58;
  v9[72] = @"com.apple.arkit.matting.dilationRadius";
  v10[72] = &unk_1F4258D88;
  v9[73] = @"com.apple.arkit.matting.doubleMLResolutionForIPad";
  v10[73] = v1;
  v9[74] = @"com.apple.arkit.matting.useTemporalSmoothing";
  v10[74] = v2;
  v9[75] = @"com.apple.arkit.view.rendersCameraGrain";
  v10[75] = v1;
  v9[76] = @"com.apple.arkit.view.rendersMotionBlur";
  v10[76] = v2;
  v9[77] = @"com.apple.arkit.test.default";
  v10[77] = @"test";
  v9[78] = @"com.apple.arkit.multicam_mode.enabled";
  v10[78] = v1;
  v9[79] = @"com.apple.arkit.sceneReconstruction.voxelSize";
  v10[79] = &unk_1F4259780;
  v9[80] = @"com.apple.arkit.sceneReconstruction.waitTillVIOIsStable";
  v10[80] = v1;
  v9[81] = @"com.apple.arkit.sceneReconstruction.enableLowQosScheduling";
  v10[81] = v2;
  v9[82] = @"com.apple.arkit.objctdetection.regionProposalModel";
  v10[82] = v1;
  v9[83] = @"com.apple.arkit.jasper.enabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v0];
  v10[83] = v4;
  v9[84] = @"com.apple.arkit.jasper.timeOfFlightProjectorMode";
  v10[84] = &unk_1F4258DA0;
  v9[85] = @"com.apple.arkit.pointCloudDataOutput.deferredStartEnabled";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v0];
  v10[85] = v5;
  v9[86] = @"com.apple.arkit.jasper.aggregationBankCount";
  v10[86] = &unk_1F4258CF8;
  v9[87] = @"com.apple.arkit.appleDepth.useExpFilter";
  v10[87] = v1;
  v9[88] = @"com.apple.arkit.appleDepth.averageDepthBoundingBox";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v0 ^ 1];
  v10[88] = v6;
  v9[89] = @"com.apple.arkit.appleDepth.temporalSmoothingMethod";
  v10[89] = &unk_1F4258D58;
  v9[90] = @"com.apple.arkit.appleDepth.temporalFilteringStoredFrames";
  v10[90] = &unk_1F4258D70;
  v9[91] = @"com.apple.arkit.appleDepth.computeNormals";
  v10[91] = v2;
  v9[92] = @"com.apple.arkit.appleDepth.useLegacyDepthTechnique";
  v10[92] = v2;
  v9[93] = @"com.apple.arkit.bodytracking.multipleBodyAnchors";
  v10[93] = v2;
  v9[94] = @"com.apple.arkit.personocclusion.skipFrameWhenBusy";
  v10[94] = v2;
  v9[95] = @"com.apple.arkit.distortionCorrection.computeCoefficientsForEveryFrame";
  v10[95] = v2;
  v9[96] = @"com.apple.arkit.scaling.useOptimalMSRCoeficients";
  v9[97] = @"com.apple.arkit.bodytracking.extrapolationTimeLimitSeconds";
  v10[96] = v2;
  v10[97] = &unk_1F4259790;
  v9[98] = @"com.apple.arkit.view.attemptRenderSynchronizationARFrame";
  v10[98] = v1;
  v9[99] = @"com.apple.arkit.view.renderRawSceneUnderstandingImage";
  v10[99] = v2;
  v9[100] = @"com.apple.arkit.session.configuration.saveDotGraph";
  v10[100] = v2;
  v9[101] = @"com.apple.arkit.bodytracking.pushProjected3DSkeleton";
  v10[101] = v2;
  v9[102] = @"com.apple.arkit.bodyTracking.useSupport3DSkeleton";
  v10[102] = v1;
  v9[103] = @"com.apple.arkit.personDetectionTechnique.mergeLargelyOverlappingBoundingBoxes";
  v10[103] = v1;
  v9[104] = @"com.apple.arkit.personOcclusion.optimizationStrategy";
  v10[104] = &unk_1F4258D70;
  v9[105] = @"com.apple.arkit.faceTracking.rgbOnly.enabled";
  v10[105] = v1;
  v9[106] = @"com.apple.arkit.semanticSegmentation.uncertaintyThreshold";
  v10[106] = &unk_1F42597A0;
  v9[107] = @"com.apple.arkit.slamManager.cv3dLoggingLevel.api";
  v10[107] = &unk_1F4258DB8;
  v9[108] = @"com.apple.arkit.slamManager.cv3dLoggingLevel.internal";
  v10[108] = &unk_1F4258DB8;
  v9[109] = @"com.apple.arkit.sceneReconstruction.recon3DLoggingLevel.api";
  v10[109] = &unk_1F4258D58;
  v9[110] = @"com.apple.arkit.sceneReconstruction.recon3DLoggingLevel.internal";
  v10[110] = &unk_1F4258D70;
  v9[111] = @"com.apple.arkit.appClipCodeTracking.performanceTestMode";
  v10[111] = &unk_1F4258DD0;
  v9[112] = @"com.apple.arkit.server.maximumConcurrentServicesPerClient";
  v10[112] = &unk_1F4258DE8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:113];
  v8 = defaultValues_defaultValues;
  defaultValues_defaultValues = v7;
}

+ (id)userDefaultsCache
{
  if (userDefaultsCache_onceToken != -1)
  {
    +[ARKitUserDefaults userDefaultsCache];
  }

  v3 = userDefaultsCache_defaultsCache;

  return v3;
}

void __38__ARKitUserDefaults_userDefaultsCache__block_invoke()
{
  v0 = objc_opt_new();
  v1 = userDefaultsCache_defaultsCache;
  userDefaultsCache_defaultsCache = v0;
}

+ (BOOL)shouldUseCache
{
  if (shouldUseCache_onceToken != -1)
  {
    +[ARKitUserDefaults shouldUseCache];
  }

  v3 = shouldUseCache_shouldUseCache;

  return [v3 BOOLValue];
}

void __35__ARKitUserDefaults_shouldUseCache__block_invoke()
{
  v0 = [ARKitUserDefaults objectForKeySlow:@"com.apple.arkit.useCacheForUserDefaults"];
  v1 = shouldUseCache_shouldUseCache;
  shouldUseCache_shouldUseCache = v0;
}

+ (id)cachedObjectForKey:(id)key
{
  keyCopy = key;
  v4 = +[ARKitUserDefaults userDefaultsCache];
  os_unfair_lock_lock(&gDefaultsCacheLock);
  kdebug_trace();
  v5 = [v4 objectForKeyedSubscript:keyCopy];
  v8 = 0;
  v6 = keyCopy;
  [v6 getBytes:&v8 maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v6, "length"), 0}];

  kdebug_trace();
  os_unfair_lock_unlock(&gDefaultsCacheLock);

  return v5;
}

+ (void)removeCachedObjectForKey:(id)key
{
  keyCopy = key;
  v4 = +[ARKitUserDefaults userDefaultsCache];
  os_unfair_lock_lock(&gDefaultsCacheLock);
  kdebug_trace();
  [v4 removeObjectForKey:keyCopy];
  v6 = 0;
  v5 = keyCopy;
  [v5 getBytes:&v6 maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v5, "length"), 0}];

  kdebug_trace();
  os_unfair_lock_unlock(&gDefaultsCacheLock);
}

+ (void)cacheObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = +[ARKitUserDefaults userDefaultsCache];
  os_unfair_lock_lock(&gDefaultsCacheLock);
  kdebug_trace();
  if (objectCopy)
  {
    [v7 setObject:objectCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v7 setObject:null forKeyedSubscript:keyCopy];
  }

  v10 = 0;
  v9 = keyCopy;
  [v9 getBytes:&v10 maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v9, "length"), 0}];

  kdebug_trace();
  os_unfair_lock_unlock(&gDefaultsCacheLock);
}

+ (void)clearUserDefaultsCache
{
  v2 = +[ARKitUserDefaults userDefaultsCache];
  os_unfair_lock_lock(&gDefaultsCacheLock);
  kdebug_trace();
  [v2 removeAllObjects];
  kdebug_trace();
  os_unfair_lock_unlock(&gDefaultsCacheLock);
}

+ (id)keysApprovedForProcessEnvironmentOverride
{
  if (keysApprovedForProcessEnvironmentOverride_onceToken != -1)
  {
    +[ARKitUserDefaults keysApprovedForProcessEnvironmentOverride];
  }

  v3 = keysApprovedForProcessEnvironmentOverride_approvedKeys;

  return v3;
}

void __62__ARKitUserDefaults_keysApprovedForProcessEnvironmentOverride__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.arkit.session.replay.filepath";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = keysApprovedForProcessEnvironmentOverride_approvedKeys;
  keysApprovedForProcessEnvironmentOverride_approvedKeys = v0;
}

+ (void)removeAllKeys
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  appleGlobalDomainARKitKeys = [MEMORY[0x1E695E000] appleGlobalDomainARKitKeys];
  v3 = [appleGlobalDomainARKitKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(appleGlobalDomainARKitKeys);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
        [appleGlobalDomain removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [appleGlobalDomainARKitKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

+ (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  [ARKitUserDefaults removeCachedObjectForKey:keyCopy];
  appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
  [appleGlobalDomain removeObjectForKey:keyCopy];
}

+ (id)objectForKeySlow:(id)slow
{
  slowCopy = slow;
  keysApprovedForProcessEnvironmentOverride = [self keysApprovedForProcessEnvironmentOverride];
  v6 = [keysApprovedForProcessEnvironmentOverride containsObject:slowCopy];

  if (!v6 || ([MEMORY[0x1E696AE30] processInfo], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "environment"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", slowCopy), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, !v9))
  {
    appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
    v9 = [appleGlobalDomain objectForKey:slowCopy];

    if (!v9)
    {
      defaultValues = [self defaultValues];
      v9 = [defaultValues objectForKeyedSubscript:slowCopy];
    }
  }

  return v9;
}

+ (id)objectForKey:(id)key
{
  keyCopy = key;
  if ([objc_opt_class() shouldUseCache] && (+[ARKitUserDefaults cachedObjectForKey:](ARKitUserDefaults, "cachedObjectForKey:", keyCopy), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    null = [MEMORY[0x1E695DFB0] null];

    if (v5 == null)
    {
      v7 = 0;
    }

    else
    {
      v5 = v5;
      v7 = v5;
    }
  }

  else
  {
    v7 = [ARKitUserDefaults objectForKeySlow:keyCopy];
    [ARKitUserDefaults cacheObject:v7 forKey:keyCopy];
    v5 = 0;
  }

  return v7;
}

+ (id)objectForKey:(id)key useCache:(BOOL)cache
{
  cacheCopy = cache;
  keyCopy = key;
  v6 = objc_opt_class();
  if (cacheCopy)
  {
    [v6 objectForKey:keyCopy];
  }

  else
  {
    [v6 objectForKeySlow:keyCopy];
  }
  v7 = ;

  return v7;
}

+ (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  [ARKitUserDefaults removeCachedObjectForKey:keyCopy];
  appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
  [appleGlobalDomain setObject:objectCopy forKey:keyCopy];
}

+ (BOOL)BOOLForKey:(id)key
{
  v3 = [ARKitUserDefaults objectForKey:key];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)BOOLForKey:(id)key useCache:(BOOL)cache
{
  v4 = [ARKitUserDefaults objectForKey:key useCache:cache];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v5 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v7 = [v5 numberWithBool:boolCopy];
  [ARKitUserDefaults setObject:v7 forKey:keyCopy];
}

+ (id)stringForKey:(id)key
{
  v3 = [ARKitUserDefaults objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = v3;
LABEL_5:
    v5 = stringValue;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    stringValue = [v3 stringValue];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)numberForKey:(id)key
{
  v3 = [ARKitUserDefaults objectForKey:key];
  v4 = [ARKitUserDefaults _numberForObject:v3];

  return v4;
}

+ (id)numberForKey:(id)key useCache:(BOOL)cache
{
  v4 = [ARKitUserDefaults objectForKey:key useCache:cache];
  v5 = [ARKitUserDefaults _numberForObject:v4];

  return v5;
}

+ (id)_numberForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x1E696AD48];
      v6 = objectCopy;
      decimalDigitCharacterSet = [v5 decimalDigitCharacterSet];
      [decimalDigitCharacterSet addCharactersInString:@"-."];
      invertedSet = [decimalDigitCharacterSet invertedSet];
      v9 = [v6 componentsSeparatedByCharactersInSet:invertedSet];

      firstObject = [v9 firstObject];

      v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [v11 setDecimalSeparator:@"."];
      [v11 setNumberStyle:1];
      v4 = [v11 numberFromString:firstObject];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (int64_t)integerForKey:(id)key
{
  v3 = [ARKitUserDefaults numberForKey:key];
  integerValue = [v3 integerValue];

  return integerValue;
}

+ (int64_t)integerForKey:(id)key useCache:(BOOL)cache
{
  v4 = [ARKitUserDefaults numberForKey:key useCache:cache];
  integerValue = [v4 integerValue];

  return integerValue;
}

+ (float)floatForKey:(id)key
{
  v3 = [ARKitUserDefaults numberForKey:key];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

+ (float)floatForKey:(id)key useCache:(BOOL)cache
{
  v4 = [ARKitUserDefaults numberForKey:key useCache:cache];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

+ (double)doubleForKey:(id)key
{
  v3 = [ARKitUserDefaults numberForKey:key];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

+ (double)doubleForKey:(id)key useCache:(BOOL)cache
{
  v4 = [ARKitUserDefaults numberForKey:key useCache:cache];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

+ (id)listForKey:(id)key
{
  v3 = [ARKitUserDefaults objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

+ (BOOL)resolutionForKey:(id)key resultingDimensions:(id *)dimensions
{
  v5 = [ARKitUserDefaults objectForKey:key];
  if (!v5)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v5;
      v14 = [v13 objectForKeyedSubscript:@"width"];
      [v14 floatValue];
      v9 = v15;

      v6 = [v13 objectForKeyedSubscript:@"height"];

      [v6 floatValue];
      v12 = v16;
      goto LABEL_7;
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v6 = [v5 componentsSeparatedByString:@"x"];
  if ([v6 count] != 2)
  {

    goto LABEL_11;
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 floatValue];
  v9 = v8;

  v10 = [v6 objectAtIndexedSubscript:1];
  [v10 floatValue];
  v12 = v11;

LABEL_7:
  v17 = 0;
  if (v9 > 0.0 && v12 > 0.0)
  {
    dimensions->var0 = v9;
    dimensions->var1 = v12;
    v17 = 1;
  }

LABEL_12:

  return v17;
}

+ (void)synchronize
{
  appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
  [appleGlobalDomain synchronize];
}

@end