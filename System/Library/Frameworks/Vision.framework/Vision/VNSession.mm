@interface VNSession
+ (Class)trackerClassForOptions:(id)options error:(id *)error;
+ (id)globalSession;
- (BOOL)prepareForPerformingRequests:(id)requests error:(id *)error;
- (VNSession)initWithCachingBehavior:(unint64_t)behavior;
- (id)_cachedDetectorOfClass:(Class)class configuredWithOptions:(id)options;
- (id)_cachedTrackerResourcesConfiguredWithOptions:(id)options;
- (id)_frameworkManagerWithError:(uint64_t)error;
- (id)_locateDetectorOfClass:(void *)class configuredWithOptions:(int)options allowingCreation:(void *)creation error:;
- (id)_locateRPNTrackerResourcesForOptions:(int)options allowingCreation:(void *)creation error:;
- (id)_locateResourceObjectForIdentifier:(id)identifier creationBlock:(id)block error:(id *)error;
- (id)cachedResourceObjectForIdentifier:(id)identifier;
- (id)createRPNTrackerResourcesConfiguredWithOptions:(id)options error:(id *)error;
- (id)detectorOfClass:(Class)class configuredWithOptions:(id)options error:(id *)error;
- (id)detectorOfType:(id)type configuredWithOptions:(id)options error:(id *)error;
- (id)loadedDetectors;
- (id)resourceObjectForIdentifier:(id)identifier creationBlock:(id)block error:(id *)error;
- (id)trackerResourcesConfiguredWithOptions:(id)options error:(id *)error;
- (id)trackerWithOptions:(id)options error:(id *)error;
- (void)_releaseAllDetectors;
- (void)_releaseDetectorTypes:(uint64_t)types;
- (void)dealloc;
- (void)detectorCache:(id)cache didCacheDetector:(id)detector;
- (void)detectorCache:(id)cache didEvictDetector:(id)detector;
- (void)legacyForcedCleanupOfFacePipelineWithLevel:(id)level;
- (void)legacyForcedCleanupOfJunkPipelineWithLevel:(id)level;
- (void)legacyForcedCleanupOfScenePipelineWithLevel:(id)level;
- (void)legacyForcedCleanupOfSmartCamPipelineWithLevel:(id)level;
- (void)legacyForcedCleanupWithOptions:(id)options;
- (void)releaseCachedResources;
- (void)releaseCachedResourcesWithCompletionBlock:(id)block;
- (void)releaseDetectorsThatCanBeReplacedByDetectorOfClass:(Class)class withConfiguration:(id)configuration;
- (void)releaseTracker:(id)tracker;
@end

@implementation VNSession

+ (Class)trackerClassForOptions:(id)options error:(id *)error
{
  v4 = [VNTrackerManager trackerClassForOptions:options error:error];

  return v4;
}

+ (id)globalSession
{
  if (+[VNSession globalSession]::onceToken != -1)
  {
    dispatch_once(&+[VNSession globalSession]::onceToken, &__block_literal_global_24953);
  }

  v3 = +[VNSession globalSession]::ourGlobalSession;

  return v3;
}

uint64_t __26__VNSession_globalSession__block_invoke()
{
  +[VNSession globalSession]::ourGlobalSession = objc_alloc_init(_VNGlobalSession);

  return MEMORY[0x1EEE66BB8]();
}

- (void)legacyForcedCleanupOfJunkPipelineWithLevel:(id)level
{
  v6[1] = *MEMORY[0x1E69E9840];
  levelCopy = level;
  if (([levelCopy isEqualToString:@"VNCleanupLevel_Partial"] & 1) == 0 && objc_msgSend(levelCopy, "isEqualToString:", @"VNCleanupLevel_Complete"))
  {
    v6[0] = @"VNJunkIdentifierType";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(VNSession *)self _releaseDetectorTypes:v5];
  }
}

- (void)_releaseDetectorTypes:(uint64_t)types
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (types)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [VNDetector detectorClassForDetectorType:*(*(&v14 + 1) + 8 * i) error:0, v14];
          if (v9)
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v6);
    }

    allObjects = [v4 allObjects];
    if ([allObjects count])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __40__VNSession__releaseDetectorsOfClasses___block_invoke;
      v18[3] = &unk_1E77B4B90;
      v19 = allObjects;
      v11 = v18;
      v12 = +[VNFrameworkManager manager];
      detectorAccessingLock = [v12 detectorAccessingLock];

      [detectorAccessingLock lock];
      [*(types + 24) evictDetectorsPassingTest:v11];
      [detectorAccessingLock unlock];
    }
  }
}

uint64_t __40__VNSession__releaseDetectorsOfClasses___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)legacyForcedCleanupOfSmartCamPipelineWithLevel:(id)level
{
  v6[3] = *MEMORY[0x1E69E9840];
  levelCopy = level;
  if (([levelCopy isEqualToString:@"VNCleanupLevel_Partial"] & 1) == 0 && objc_msgSend(levelCopy, "isEqualToString:", @"VNCleanupLevel_Complete"))
  {
    v6[0] = @"VNSmartCamClassifierType";
    v6[1] = @"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType";
    v6[2] = @"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
    [(VNSession *)self _releaseDetectorTypes:v5];
  }
}

- (void)legacyForcedCleanupOfScenePipelineWithLevel:(id)level
{
  v6[3] = *MEMORY[0x1E69E9840];
  levelCopy = level;
  if (([levelCopy isEqualToString:@"VNCleanupLevel_Partial"] & 1) == 0 && objc_msgSend(levelCopy, "isEqualToString:", @"VNCleanupLevel_Complete"))
  {
    v6[0] = @"VNImageAnalyzerMultiDetectorType";
    v6[1] = @"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType";
    v6[2] = @"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
    [(VNSession *)self _releaseDetectorTypes:v5];
  }
}

- (void)legacyForcedCleanupOfFacePipelineWithLevel:(id)level
{
  v15[7] = *MEMORY[0x1E69E9840];
  levelCopy = level;
  v5 = levelCopy;
  if (levelCopy)
  {
    if ([levelCopy isEqualToString:@"VNCleanupLevel_Partial"])
    {
      v6 = &__block_literal_global_67_25026;
      if (self)
      {
        v7 = +[VNFrameworkManager manager];
        detectorAccessingLock = [v7 detectorAccessingLock];

        [detectorAccessingLock lock];
        detectorCache_onlyAccessWithDetectorAccessingLock = self->_detectorCache_onlyAccessWithDetectorAccessingLock;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __43__VNSession__enumerateDetectorsUsingBlock___block_invoke;
        v13[3] = &unk_1E77B4B68;
        v10 = &__block_literal_global_67_25026;
        v14 = &__block_literal_global_67_25026;
        [(VNDetectorCache *)detectorCache_onlyAccessWithDetectorAccessingLock evictDetectorsPassingTest:v13];

        [detectorAccessingLock unlock];
      }
    }

    else if ([v5 isEqualToString:@"VNCleanupLevel_Complete"])
    {
      v15[0] = @"VNFaceDetectorType";
      v15[1] = @"VNFaceBoxAlignerType";
      v15[2] = @"VNFaceLandmarkDetectorType";
      v15[3] = @"VNFaceExpressionDetectorType";
      v15[4] = @"VNFaceAnalyzerMultiDetectorType";
      v15[5] = @"VNANFDMultiDetectorType";
      v15[6] = @"VNFaceQualityGeneratorType";
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:7];
      [(VNSession *)self _releaseDetectorTypes:v11];

      v12 = +[VNFrameworkManager manager];
      [v12 releaseMetalDeviceWisdomParameters];
    }
  }
}

void __56__VNSession_legacyForcedCleanupOfFacePipelineWithLevel___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 purgeIntermediates];
  }
}

- (void)legacyForcedCleanupWithOptions:(id)options
{
  optionsCopy = options;
  if (optionsCopy)
  {
    v11 = optionsCopy;
    v5 = [optionsCopy objectForKey:@"VNRequestHandlerCleanupOption_AllPipelines"];
    v6 = [v11 objectForKey:@"VNRequestHandlerCleanupOption_FacePipeline"];
    if (!v6)
    {
      v6 = v5;
    }

    v7 = [v11 objectForKey:@"VNRequestHandlerCleanupOption_ScenePipeline"];
    if (!v7)
    {
      v7 = v5;
    }

    v8 = [v11 objectForKey:@"VNRequestHandlerCleanupOption_SmartCamPipeline"];
    if (!v8)
    {
      v8 = v5;
    }

    v9 = [v11 objectForKey:@"VNRequestHandlerCleanupOption_JunkPipeline"];
    if (v9)
    {
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = v5;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    if ([v5 isEqualToString:@"VNCleanupLevel_Complete"])
    {
      [(VNSession *)self _releaseAllDetectors];
      v10 = +[VNFrameworkManager manager];
      [v10 releaseMetalDeviceWisdomParameters];

LABEL_15:
      optionsCopy = v11;
      goto LABEL_16;
    }

LABEL_14:
    [(VNSession *)self legacyForcedCleanupOfFacePipelineWithLevel:v6];
    [(VNSession *)self legacyForcedCleanupOfScenePipelineWithLevel:v7];
    [(VNSession *)self legacyForcedCleanupOfSmartCamPipelineWithLevel:v8];
    [(VNSession *)self legacyForcedCleanupOfJunkPipelineWithLevel:v9];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_releaseAllDetectors
{
  if (self)
  {
    v2 = +[VNFrameworkManager manager];
    detectorAccessingLock = [v2 detectorAccessingLock];

    [detectorAccessingLock lock];
    [*(self + 24) evictAllDetectors];
    [detectorAccessingLock unlock];
  }
}

- (void)releaseTracker:(id)tracker
{
  trackerManager = self->_trackerManager;
  trackerCopy = tracker;
  v5 = trackerCopy;
  if (trackerManager)
  {
    trackersCollectionManagementQueue = trackerManager->_trackersCollectionManagementQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__VNTrackerManager_releaseTracker___block_invoke;
    v7[3] = &unk_1E77B3A80;
    v7[4] = trackerManager;
    v8 = trackerCopy;
    dispatch_sync(trackersCollectionManagementQueue, v7);
  }
}

- (id)trackerWithOptions:(id)options error:(id *)error
{
  trackerManager = self->_trackerManager;
  optionsCopy = options;
  v7 = optionsCopy;
  if (trackerManager)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"VNTrackingOption_TrackerKey"];
    if (!v8)
    {
      if (!error)
      {
        v11 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A tracker cannot be created without specifying a unique tracker key"];
      [VNError errorWithCode:5 message:v10];
      *error = v11 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v9 = [(VNTrackerManager *)trackerManager _getTracker:v8];
    if (v9)
    {
      v10 = v9;
      v11 = v10;
      goto LABEL_30;
    }

    v12 = [v7 objectForKeyedSubscript:@"VNTrackingOption_TrackerType"];
    if ([v12 isEqualToString:@"VNObjectTrackerRevision1Type"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"VNObjectTrackerRevision2Type") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"VNObjectTrackerRevisionLegacyFaceCoreType") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"VNRectangleTrackerType"))
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v13 setObject:@"VNTrackingOption_TrackingLevelFast" forKeyedSubscript:@"VNTrackingOption_TrackingLevel"];
      [v13 setObject:trackerManager->_trackingProcessingQueue forKeyedSubscript:@"VNTrackingOption_ProcessingQueue"];
      [v13 addEntriesFromDictionary:v7];
      v14 = v13;
      v15 = [v14 objectForKeyedSubscript:@"VNTrackingOption_ComputeDevice"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_17;
      }

      v25 = v12;
      v16 = v15;
      v17 = [VNTrackerManager trackerClassForOptions:v14 error:error];
      v18 = v16;
      if (v17)
      {
        v19 = [v17 supportedComputeDevicesForOptions:v14 error:error];
        v18 = v16;
        if (v19)
        {
          v24 = v19;
          computeDevice = [v16 computeDevice];
          v15 = [VNComputeDeviceUtilities computeDeviceOfComputeDevices:v24 mostCompatibleWithComputeDevice:computeDevice options:0];

          if (v15 || ([VNComputeDeviceUtilities mostPerformantComputeDeviceOfComputeDevices:v24], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            [v14 setObject:v15 forKeyedSubscript:@"VNTrackingOption_ComputeDevice"];

            v12 = v25;
LABEL_17:

            v21 = [(VNTrackerManager *)trackerManager _createTracker:v8 type:v12 options:v14 error:error];
            if (v21)
            {
              v10 = v21;
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_28;
          }

          if (error)
          {
            processingDevice = [v16 processingDevice];
            *error = [VNError errorForUnsupportedProcessingDevice:processingDevice];
          }

          v18 = 0;
          v19 = v24;
        }
      }

      v10 = 0;
      v12 = v25;
    }

    else
    {
      if (!error)
      {
        v10 = 0;
        goto LABEL_29;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create a Tracker with unknown tracker type: %@", v12];
      [VNError errorWithCode:5 message:v14];
      *error = v10 = 0;
    }

LABEL_28:

LABEL_29:
    v11 = v10;
    goto LABEL_30;
  }

  v11 = 0;
LABEL_32:

  return v11;
}

- (void)releaseDetectorsThatCanBeReplacedByDetectorOfClass:(Class)class withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = +[VNFrameworkManager manager];
  detectorAccessingLock = [v6 detectorAccessingLock];

  [detectorAccessingLock lock];
  [(VNSession *)self _releaseDetectorsThatCanBeReplacedByDetectorOfClass:class withConfiguration:configurationCopy];
  [detectorAccessingLock unlock];
}

- (id)loadedDetectors
{
  v3 = +[VNFrameworkManager manager];
  detectorAccessingLock = [v3 detectorAccessingLock];

  [detectorAccessingLock lock];
  loadedDetectors = [(VNDetectorCache *)self->_detectorCache_onlyAccessWithDetectorAccessingLock loadedDetectors];
  [detectorAccessingLock unlock];

  return loadedDetectors;
}

- (id)trackerResourcesConfiguredWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = +[VNFrameworkManager manager];
  trackerResourcesAccessingLock = [v7 trackerResourcesAccessingLock];

  [trackerResourcesAccessingLock lock];
  v9 = [(VNSession *)self _locateRPNTrackerResourcesForOptions:optionsCopy allowingCreation:1 error:error];
  [trackerResourcesAccessingLock unlock];

  return v9;
}

- (id)_locateRPNTrackerResourcesForOptions:(int)options allowingCreation:(void *)creation error:
{
  v7 = a2;
  if (self)
  {
    if (options)
    {
      creationCopy = 0;
    }

    else
    {
      creationCopy = creation;
    }

    v9 = [*(self + 32) locateRPNTrackerResourcesConfiguredForOptions:v7 error:creationCopy];
    if (!v9 && (options & 1) != 0)
    {
      v10 = [(VNSession *)self _frameworkManagerWithError:creation];
      v11 = v10;
      if (v10)
      {
        v9 = [v10 trackerResourcesConfiguredWithOptions:v7 forSession:self error:creation];
        if (v9)
        {
          [*(self + 32) addRPNTrackerResourcesConfiguredForOptions:v7 resources:v9 error:creation];
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_frameworkManagerWithError:(uint64_t)error
{
  WeakRetained = objc_loadWeakRetained((error + 8));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else if (a2)
  {
    *a2 = [VNError errorForInternalErrorWithLocalizedDescription:@"framework manager is unavailable"];
  }

  return v4;
}

- (id)detectorOfClass:(Class)class configuredWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v9 = [(objc_class *)class fullyPopulatedConfigurationOptionsWithOverridingOptions:optionsCopy populateComputeDevice:1];
  [v9 removeObjectForKey:@"VNDetectorProcessOption_Session"];
  [v9 removeObjectForKey:@"VNDetectorProcessOption_Canceller"];
  v10 = +[VNFrameworkManager manager];
  detectorAccessingLock = [v10 detectorAccessingLock];

  [detectorAccessingLock lock];
  v12 = [(VNSession *)self _locateDetectorOfClass:class configuredWithOptions:v9 allowingCreation:1 error:error];
  [detectorAccessingLock unlock];

  return v12;
}

- (id)_locateDetectorOfClass:(void *)class configuredWithOptions:(int)options allowingCreation:(void *)creation error:
{
  classCopy = class;
  if (self)
  {
    if (options)
    {
      creationCopy = 0;
    }

    else
    {
      creationCopy = creation;
    }

    v11 = [*(self + 24) detectorOfClass:a2 configuredWithOptions:classCopy error:creationCopy];
    if (!v11 && (options & 1) != 0)
    {
      v12 = [(VNSession *)self _frameworkManagerWithError:creation];
      v13 = v12;
      if (v12)
      {
        v11 = [v12 detectorOfClass:a2 configuredWithOptions:classCopy forSession:self error:creation];
        if (v11)
        {
          [*(self + 24) cacheDetector:v11];
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)detectorOfType:(id)type configuredWithOptions:(id)options error:(id *)error
{
  typeCopy = type;
  optionsCopy = options;
  v10 = [VNDetector detectorClassAndConfigurationOptions:0 forDetectorType:typeCopy options:optionsCopy error:error];
  if (v10)
  {
    v11 = [(VNSession *)self detectorOfClass:v10 configuredWithOptions:optionsCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)prepareForPerformingRequests:(id)requests error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  context = objc_autoreleasePoolPush();
  if (requestsCopy)
  {
    v44 = 0;
    v6 = [VNValidationUtilities validateArray:requestsCopy named:@"requests" hasElementsOfClass:objc_opt_class() requiredMinimumCount:0 allowedMaximumCount:0 error:&v44];
    v7 = v44;
    if (v6)
    {
      v33 = objc_alloc_init(VNRequestPerformer);
      v8 = [[VNRequestPerformingContext alloc] initWithSession:self requestPerformer:v33 imageBuffer:0 forensics:0 observationsCache:0];
      v9 = v8;
      [(VNRequestPerformingContext *)v8 qosClass];
      v43 = v7;
      v35 = [(VNRequestPerformer *)v33 dependencyAnalyzedRequestsForRequests:requestsCopy withPerformingContext:v8 error:&v43];
      v34 = v43;

      if (v35)
      {
        [(VNRequestPerformer *)v33 orderedRequestsForRequests:?];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v10 = v40 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v11)
        {
          v12 = *v40;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v40 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v39 + 1) + 8 * i);
              v38 = 0;
              v15 = [v14 warmUpSession:self error:&v38];
              v16 = v38;
              v17 = v16;
              if ((v15 & 1) == 0)
              {
                v19 = objc_alloc(MEMORY[0x1E696AEC0]);
                localizedDescription = [v17 localizedDescription];
                v8 = v9;
                v21 = [v19 initWithFormat:@"%@ could not be warmed up (%@)", v14, localizedDescription];

                v22 = v21;
                uTF8String = [v21 UTF8String];
                VNValidatedLog(4, @"%s", v24, v25, v26, v27, v28, v29, uTF8String);
                v30 = [VNError errorForOperationFailedErrorWithLocalizedDescription:v21 underlyingError:v17];

                v18 = 0;
                v34 = v30;
                goto LABEL_16;
              }
            }

            v8 = v9;
            v11 = [v10 countByEnumeratingWithState:&v39 objects:v45 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v18 = 1;
LABEL_16:
      }

      else
      {
        v18 = 0;
      }

      v7 = v34;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v7 = 0;
    v18 = 1;
  }

  objc_autoreleasePoolPop(context);
  if (!requestsCopy)
  {
    v18 = 1;
  }

  if (error && !v18)
  {
    v31 = v7;
    *error = v7;
  }

  return v18;
}

- (void)detectorCache:(id)cache didEvictDetector:(id)detector
{
  detectorCopy = detector;
  [objc_opt_class() VNClassCode];
  kdebug_trace();
}

- (void)detectorCache:(id)cache didCacheDetector:(id)detector
{
  detectorCopy = detector;
  [objc_opt_class() VNClassCode];
  kdebug_trace();
}

- (id)_cachedTrackerResourcesConfiguredWithOptions:(id)options
{
  v3 = [(VNSession *)self _locateRPNTrackerResourcesForOptions:options allowingCreation:0 error:0];

  return v3;
}

- (id)_cachedDetectorOfClass:(Class)class configuredWithOptions:(id)options
{
  v4 = [(VNSession *)self _locateDetectorOfClass:class configuredWithOptions:options allowingCreation:0 error:0];

  return v4;
}

- (id)cachedResourceObjectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[VNFrameworkManager manager];
  sessionResourcesAccessingLock = [v5 sessionResourcesAccessingLock];

  [sessionResourcesAccessingLock lock];
  v7 = [(VisionCoreObjectCache *)self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock objectForIdentifier:identifierCopy creationBlock:0 error:0];
  [sessionResourcesAccessingLock unlock];

  return v7;
}

- (id)resourceObjectForIdentifier:(id)identifier creationBlock:(id)block error:(id *)error
{
  identifierCopy = identifier;
  blockCopy = block;
  v10 = +[VNFrameworkManager manager];
  sessionResourcesAccessingLock = [v10 sessionResourcesAccessingLock];

  [sessionResourcesAccessingLock lock];
  v12 = [(VNSession *)self _locateResourceObjectForIdentifier:identifierCopy creationBlock:blockCopy error:error];
  [sessionResourcesAccessingLock unlock];

  return v12;
}

- (void)releaseCachedResourcesWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    if (_asyncProcessingDispatchQueue(void)::onceToken != -1)
    {
      dispatch_once(&_asyncProcessingDispatchQueue(void)::onceToken, &__block_literal_global_198_25049);
    }

    v5 = _asyncProcessingDispatchQueue(void)::ourProcessingDispatchQueue;
    if (v5)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __55__VNSession_releaseCachedResourcesWithCompletionBlock___block_invoke;
      v7[3] = &unk_1E77B4BE0;
      v7[4] = self;
      v8 = blockCopy;
      dispatch_barrier_async(v5, v7);
    }

    else
    {
      [VNError VNAssert:0 log:@"Processing dispatch queue is unavailable"];
      v6 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy);
      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    [(VNSession *)self releaseCachedResources];
  }
}

void __55__VNSession_releaseCachedResourcesWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) releaseCachedResources];
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)releaseCachedResources
{
  [(VNSession *)self _releaseAllDetectors];
  [(VNRPNTrackerEspressoResourcesCache *)self->_trackerResourceCache releaseCachedResources];
  vtSessionManager = self->_vtSessionManager;
  if (vtSessionManager)
  {
    ptr = vtSessionManager->_pixelTransferSessionsHandler.__ptr_;
    os_unfair_lock_lock(ptr + 4);
    [*(ptr + 3) removeAllObjects];
    os_unfair_lock_unlock(ptr + 4);
    v5 = vtSessionManager->_pixelRotationSessionsHandler.__ptr_;
    os_unfair_lock_lock(v5 + 4);
    [*(v5 + 3) removeAllObjects];
    os_unfair_lock_unlock(v5 + 4);
  }

  ciContextManager = self->_ciContextManager;
  if (ciContextManager)
  {
    [(VNCIContextsHandler *)ciContextManager->_cpuContextsHandler releaseCachedResources];
    os_unfair_lock_lock(&ciContextManager->_gpuHandlersLock);
    [(NSMutableDictionary *)ciContextManager->_gpuContextsHandlers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_26211];
    os_unfair_lock_unlock(&ciContextManager->_gpuHandlersLock);
  }

  cvPixelBufferPoolManager = self->_cvPixelBufferPoolManager;
  if (cvPixelBufferPoolManager)
  {
    os_unfair_lock_lock(&cvPixelBufferPoolManager->_poolsLock);
    p_first_node = &cvPixelBufferPoolManager->_pools.__table_.__first_node_;
    for (i = &cvPixelBufferPoolManager->_pools.__table_.__first_node_; ; CVPixelBufferPoolRelease(i[5].__next_))
    {
      i = i->__next_;
      if (!i)
      {
        break;
      }
    }

    if (cvPixelBufferPoolManager->_pools.__table_.__size_)
    {
      next = p_first_node->__next_;
      if (p_first_node->__next_)
      {
        do
        {
          v11 = *next;
          operator delete(next);
          next = v11;
        }

        while (v11);
      }

      cvPixelBufferPoolManager->_pools.__table_.__first_node_.__next_ = 0;
      size = cvPixelBufferPoolManager->_pools.__table_.__bucket_list_.__deleter_.__size_;
      if (size)
      {
        for (j = 0; j != size; ++j)
        {
          cvPixelBufferPoolManager->_pools.__table_.__bucket_list_.__ptr_[j] = 0;
        }
      }

      cvPixelBufferPoolManager->_pools.__table_.__size_ = 0;
    }

    os_unfair_lock_unlock(&cvPixelBufferPoolManager->_poolsLock);
  }

  trackerManager = self->_trackerManager;
  if (trackerManager)
  {
    trackersCollectionManagementQueue = trackerManager->_trackersCollectionManagementQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__VNTrackerManager_releaseAllTrackers__block_invoke;
    block[3] = &unk_1E77B3BE0;
    block[4] = trackerManager;
    dispatch_sync(trackersCollectionManagementQueue, block);
  }

  v16 = +[VNFrameworkManager manager];
  sessionResourcesAccessingLock = [v16 sessionResourcesAccessingLock];

  [sessionResourcesAccessingLock lock];
  resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock = self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock;
  self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock = 0;

  [sessionResourcesAccessingLock unlock];
}

- (VNSession)initWithCachingBehavior:(unint64_t)behavior
{
  v18.receiver = self;
  v18.super_class = VNSession;
  v3 = [(VNSession *)&v18 init];
  if (v3)
  {
    v4 = +[VNFrameworkManager manager];
    [VNError VNAssert:v4 != 0 log:@"Cannot create framework manager singleton"];
    objc_storeWeak(&v3->_frameworkManager, v4);
    v5 = objc_alloc_init(VNDetectorCache);
    detectorCache_onlyAccessWithDetectorAccessingLock = v3->_detectorCache_onlyAccessWithDetectorAccessingLock;
    v3->_detectorCache_onlyAccessWithDetectorAccessingLock = v5;

    [(VNDetectorCache *)v3->_detectorCache_onlyAccessWithDetectorAccessingLock setDelegate:v3];
    v7 = objc_alloc_init(VNRPNTrackerEspressoResourcesCache);
    trackerResourceCache = v3->_trackerResourceCache;
    v3->_trackerResourceCache = v7;

    v9 = objc_alloc_init(VNVTSessionManager);
    vtSessionManager = v3->_vtSessionManager;
    v3->_vtSessionManager = v9;

    v11 = objc_alloc_init(VNCIContextManager);
    ciContextManager = v3->_ciContextManager;
    v3->_ciContextManager = v11;

    v13 = objc_alloc_init(VNCVPixelBufferPoolManager);
    cvPixelBufferPoolManager = v3->_cvPixelBufferPoolManager;
    v3->_cvPixelBufferPoolManager = v13;

    v15 = objc_alloc_init(VNTrackerManager);
    trackerManager = v3->_trackerManager;
    v3->_trackerManager = v15;

    kdebug_trace();
    [v4 registerSession:v3];
  }

  return v3;
}

- (id)createRPNTrackerResourcesConfiguredWithOptions:(id)options error:(id *)error
{
  v4 = [(VNRPNTrackerEspressoResourcesCache *)self->_trackerResourceCache createRPNTrackerResourcesConfiguredWithOptions:options error:error];

  return v4;
}

- (id)_locateResourceObjectForIdentifier:(id)identifier creationBlock:(id)block error:(id *)error
{
  identifierCopy = identifier;
  blockCopy = block;
  if (!self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DF950]);
    resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock = self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock;
    self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock = v10;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__VNSession__locateResourceObjectForIdentifier_creationBlock_error___block_invoke;
  aBlock[3] = &unk_1E77B4BB8;
  v12 = identifierCopy;
  v18 = v12;
  selfCopy = self;
  v13 = blockCopy;
  v20 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [(VisionCoreObjectCache *)self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock objectForIdentifier:v12 creationBlock:v14 error:error];

  return v15;
}

id __68__VNSession__locateResourceObjectForIdentifier_creationBlock_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = +[VNFrameworkManager manager];
  v5 = [v4 _locateResourceObjectForIdentifier:a1[4] requestingSession:a1[5] creationBlock:a1[6] error:a2];

  return v5;
}

- (void)dealloc
{
  [(VNSession *)self releaseCachedResources];
  v3 = objc_autoreleasePoolPush();
  v4 = +[VNFrameworkManager manager];
  allSessions = [v4 allSessions];

  objc_autoreleasePoolPop(v3);
  kdebug_trace();

  v6.receiver = self;
  v6.super_class = VNSession;
  [(VNSession *)&v6 dealloc];
}

@end