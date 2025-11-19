@interface VNSession
+ (Class)trackerClassForOptions:(id)a3 error:(id *)a4;
+ (id)globalSession;
- (BOOL)prepareForPerformingRequests:(id)a3 error:(id *)a4;
- (VNSession)initWithCachingBehavior:(unint64_t)a3;
- (id)_cachedDetectorOfClass:(Class)a3 configuredWithOptions:(id)a4;
- (id)_cachedTrackerResourcesConfiguredWithOptions:(id)a3;
- (id)_frameworkManagerWithError:(uint64_t)a1;
- (id)_locateDetectorOfClass:(void *)a3 configuredWithOptions:(int)a4 allowingCreation:(void *)a5 error:;
- (id)_locateRPNTrackerResourcesForOptions:(int)a3 allowingCreation:(void *)a4 error:;
- (id)_locateResourceObjectForIdentifier:(id)a3 creationBlock:(id)a4 error:(id *)a5;
- (id)cachedResourceObjectForIdentifier:(id)a3;
- (id)createRPNTrackerResourcesConfiguredWithOptions:(id)a3 error:(id *)a4;
- (id)detectorOfClass:(Class)a3 configuredWithOptions:(id)a4 error:(id *)a5;
- (id)detectorOfType:(id)a3 configuredWithOptions:(id)a4 error:(id *)a5;
- (id)loadedDetectors;
- (id)resourceObjectForIdentifier:(id)a3 creationBlock:(id)a4 error:(id *)a5;
- (id)trackerResourcesConfiguredWithOptions:(id)a3 error:(id *)a4;
- (id)trackerWithOptions:(id)a3 error:(id *)a4;
- (void)_releaseAllDetectors;
- (void)_releaseDetectorTypes:(uint64_t)a1;
- (void)dealloc;
- (void)detectorCache:(id)a3 didCacheDetector:(id)a4;
- (void)detectorCache:(id)a3 didEvictDetector:(id)a4;
- (void)legacyForcedCleanupOfFacePipelineWithLevel:(id)a3;
- (void)legacyForcedCleanupOfJunkPipelineWithLevel:(id)a3;
- (void)legacyForcedCleanupOfScenePipelineWithLevel:(id)a3;
- (void)legacyForcedCleanupOfSmartCamPipelineWithLevel:(id)a3;
- (void)legacyForcedCleanupWithOptions:(id)a3;
- (void)releaseCachedResources;
- (void)releaseCachedResourcesWithCompletionBlock:(id)a3;
- (void)releaseDetectorsThatCanBeReplacedByDetectorOfClass:(Class)a3 withConfiguration:(id)a4;
- (void)releaseTracker:(id)a3;
@end

@implementation VNSession

+ (Class)trackerClassForOptions:(id)a3 error:(id *)a4
{
  v4 = [VNTrackerManager trackerClassForOptions:a3 error:a4];

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

- (void)legacyForcedCleanupOfJunkPipelineWithLevel:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isEqualToString:@"VNCleanupLevel_Partial"] & 1) == 0 && objc_msgSend(v4, "isEqualToString:", @"VNCleanupLevel_Complete"))
  {
    v6[0] = @"VNJunkIdentifierType";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(VNSession *)self _releaseDetectorTypes:v5];
  }
}

- (void)_releaseDetectorTypes:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
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

    v10 = [v4 allObjects];
    if ([v10 count])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __40__VNSession__releaseDetectorsOfClasses___block_invoke;
      v18[3] = &unk_1E77B4B90;
      v19 = v10;
      v11 = v18;
      v12 = +[VNFrameworkManager manager];
      v13 = [v12 detectorAccessingLock];

      [v13 lock];
      [*(a1 + 24) evictDetectorsPassingTest:v11];
      [v13 unlock];
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

- (void)legacyForcedCleanupOfSmartCamPipelineWithLevel:(id)a3
{
  v6[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isEqualToString:@"VNCleanupLevel_Partial"] & 1) == 0 && objc_msgSend(v4, "isEqualToString:", @"VNCleanupLevel_Complete"))
  {
    v6[0] = @"VNSmartCamClassifierType";
    v6[1] = @"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType";
    v6[2] = @"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
    [(VNSession *)self _releaseDetectorTypes:v5];
  }
}

- (void)legacyForcedCleanupOfScenePipelineWithLevel:(id)a3
{
  v6[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isEqualToString:@"VNCleanupLevel_Partial"] & 1) == 0 && objc_msgSend(v4, "isEqualToString:", @"VNCleanupLevel_Complete"))
  {
    v6[0] = @"VNImageAnalyzerMultiDetectorType";
    v6[1] = @"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType";
    v6[2] = @"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
    [(VNSession *)self _releaseDetectorTypes:v5];
  }
}

- (void)legacyForcedCleanupOfFacePipelineWithLevel:(id)a3
{
  v15[7] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isEqualToString:@"VNCleanupLevel_Partial"])
    {
      v6 = &__block_literal_global_67_25026;
      if (self)
      {
        v7 = +[VNFrameworkManager manager];
        v8 = [v7 detectorAccessingLock];

        [v8 lock];
        detectorCache_onlyAccessWithDetectorAccessingLock = self->_detectorCache_onlyAccessWithDetectorAccessingLock;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __43__VNSession__enumerateDetectorsUsingBlock___block_invoke;
        v13[3] = &unk_1E77B4B68;
        v10 = &__block_literal_global_67_25026;
        v14 = &__block_literal_global_67_25026;
        [(VNDetectorCache *)detectorCache_onlyAccessWithDetectorAccessingLock evictDetectorsPassingTest:v13];

        [v8 unlock];
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

- (void)legacyForcedCleanupWithOptions:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [v4 objectForKey:@"VNRequestHandlerCleanupOption_AllPipelines"];
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
      v4 = v11;
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
  if (a1)
  {
    v2 = +[VNFrameworkManager manager];
    v3 = [v2 detectorAccessingLock];

    [v3 lock];
    [*(a1 + 24) evictAllDetectors];
    [v3 unlock];
  }
}

- (void)releaseTracker:(id)a3
{
  trackerManager = self->_trackerManager;
  v4 = a3;
  v5 = v4;
  if (trackerManager)
  {
    trackersCollectionManagementQueue = trackerManager->_trackersCollectionManagementQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__VNTrackerManager_releaseTracker___block_invoke;
    v7[3] = &unk_1E77B3A80;
    v7[4] = trackerManager;
    v8 = v4;
    dispatch_sync(trackersCollectionManagementQueue, v7);
  }
}

- (id)trackerWithOptions:(id)a3 error:(id *)a4
{
  trackerManager = self->_trackerManager;
  v6 = a3;
  v7 = v6;
  if (trackerManager)
  {
    v8 = [v6 objectForKeyedSubscript:@"VNTrackingOption_TrackerKey"];
    if (!v8)
    {
      if (!a4)
      {
        v11 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A tracker cannot be created without specifying a unique tracker key"];
      [VNError errorWithCode:5 message:v10];
      *a4 = v11 = 0;
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
      v17 = [VNTrackerManager trackerClassForOptions:v14 error:a4];
      v18 = v16;
      if (v17)
      {
        v19 = [v17 supportedComputeDevicesForOptions:v14 error:a4];
        v18 = v16;
        if (v19)
        {
          v24 = v19;
          v20 = [v16 computeDevice];
          v15 = [VNComputeDeviceUtilities computeDeviceOfComputeDevices:v24 mostCompatibleWithComputeDevice:v20 options:0];

          if (v15 || ([VNComputeDeviceUtilities mostPerformantComputeDeviceOfComputeDevices:v24], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            [v14 setObject:v15 forKeyedSubscript:@"VNTrackingOption_ComputeDevice"];

            v12 = v25;
LABEL_17:

            v21 = [(VNTrackerManager *)trackerManager _createTracker:v8 type:v12 options:v14 error:a4];
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

          if (a4)
          {
            v22 = [v16 processingDevice];
            *a4 = [VNError errorForUnsupportedProcessingDevice:v22];
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
      if (!a4)
      {
        v10 = 0;
        goto LABEL_29;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create a Tracker with unknown tracker type: %@", v12];
      [VNError errorWithCode:5 message:v14];
      *a4 = v10 = 0;
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

- (void)releaseDetectorsThatCanBeReplacedByDetectorOfClass:(Class)a3 withConfiguration:(id)a4
{
  v8 = a4;
  v6 = +[VNFrameworkManager manager];
  v7 = [v6 detectorAccessingLock];

  [v7 lock];
  [(VNSession *)self _releaseDetectorsThatCanBeReplacedByDetectorOfClass:a3 withConfiguration:v8];
  [v7 unlock];
}

- (id)loadedDetectors
{
  v3 = +[VNFrameworkManager manager];
  v4 = [v3 detectorAccessingLock];

  [v4 lock];
  v5 = [(VNDetectorCache *)self->_detectorCache_onlyAccessWithDetectorAccessingLock loadedDetectors];
  [v4 unlock];

  return v5;
}

- (id)trackerResourcesConfiguredWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[VNFrameworkManager manager];
  v8 = [v7 trackerResourcesAccessingLock];

  [v8 lock];
  v9 = [(VNSession *)self _locateRPNTrackerResourcesForOptions:v6 allowingCreation:1 error:a4];
  [v8 unlock];

  return v9;
}

- (id)_locateRPNTrackerResourcesForOptions:(int)a3 allowingCreation:(void *)a4 error:
{
  v7 = a2;
  if (a1)
  {
    if (a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = a4;
    }

    v9 = [*(a1 + 32) locateRPNTrackerResourcesConfiguredForOptions:v7 error:v8];
    if (!v9 && (a3 & 1) != 0)
    {
      v10 = [(VNSession *)a1 _frameworkManagerWithError:a4];
      v11 = v10;
      if (v10)
      {
        v9 = [v10 trackerResourcesConfiguredWithOptions:v7 forSession:a1 error:a4];
        if (v9)
        {
          [*(a1 + 32) addRPNTrackerResourcesConfiguredForOptions:v7 resources:v9 error:a4];
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

- (id)_frameworkManagerWithError:(uint64_t)a1
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
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

- (id)detectorOfClass:(Class)a3 configuredWithOptions:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(objc_class *)a3 fullyPopulatedConfigurationOptionsWithOverridingOptions:v8 populateComputeDevice:1];
  [v9 removeObjectForKey:@"VNDetectorProcessOption_Session"];
  [v9 removeObjectForKey:@"VNDetectorProcessOption_Canceller"];
  v10 = +[VNFrameworkManager manager];
  v11 = [v10 detectorAccessingLock];

  [v11 lock];
  v12 = [(VNSession *)self _locateDetectorOfClass:a3 configuredWithOptions:v9 allowingCreation:1 error:a5];
  [v11 unlock];

  return v12;
}

- (id)_locateDetectorOfClass:(void *)a3 configuredWithOptions:(int)a4 allowingCreation:(void *)a5 error:
{
  v9 = a3;
  if (a1)
  {
    if (a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = a5;
    }

    v11 = [*(a1 + 24) detectorOfClass:a2 configuredWithOptions:v9 error:v10];
    if (!v11 && (a4 & 1) != 0)
    {
      v12 = [(VNSession *)a1 _frameworkManagerWithError:a5];
      v13 = v12;
      if (v12)
      {
        v11 = [v12 detectorOfClass:a2 configuredWithOptions:v9 forSession:a1 error:a5];
        if (v11)
        {
          [*(a1 + 24) cacheDetector:v11];
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

- (id)detectorOfType:(id)a3 configuredWithOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [VNDetector detectorClassAndConfigurationOptions:0 forDetectorType:v8 options:v9 error:a5];
  if (v10)
  {
    v11 = [(VNSession *)self detectorOfClass:v10 configuredWithOptions:v9 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)prepareForPerformingRequests:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  context = objc_autoreleasePoolPush();
  if (v5)
  {
    v44 = 0;
    v6 = [VNValidationUtilities validateArray:v5 named:@"requests" hasElementsOfClass:objc_opt_class() requiredMinimumCount:0 allowedMaximumCount:0 error:&v44];
    v7 = v44;
    if (v6)
    {
      v33 = objc_alloc_init(VNRequestPerformer);
      v8 = [[VNRequestPerformingContext alloc] initWithSession:self requestPerformer:v33 imageBuffer:0 forensics:0 observationsCache:0];
      v9 = v8;
      [(VNRequestPerformingContext *)v8 qosClass];
      v43 = v7;
      v35 = [(VNRequestPerformer *)v33 dependencyAnalyzedRequestsForRequests:v5 withPerformingContext:v8 error:&v43];
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
                v20 = [v17 localizedDescription];
                v8 = v9;
                v21 = [v19 initWithFormat:@"%@ could not be warmed up (%@)", v14, v20];

                v22 = v21;
                v23 = [v21 UTF8String];
                VNValidatedLog(4, @"%s", v24, v25, v26, v27, v28, v29, v23);
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
  if (!v5)
  {
    v18 = 1;
  }

  if (a4 && !v18)
  {
    v31 = v7;
    *a4 = v7;
  }

  return v18;
}

- (void)detectorCache:(id)a3 didEvictDetector:(id)a4
{
  v4 = a4;
  [objc_opt_class() VNClassCode];
  kdebug_trace();
}

- (void)detectorCache:(id)a3 didCacheDetector:(id)a4
{
  v4 = a4;
  [objc_opt_class() VNClassCode];
  kdebug_trace();
}

- (id)_cachedTrackerResourcesConfiguredWithOptions:(id)a3
{
  v3 = [(VNSession *)self _locateRPNTrackerResourcesForOptions:a3 allowingCreation:0 error:0];

  return v3;
}

- (id)_cachedDetectorOfClass:(Class)a3 configuredWithOptions:(id)a4
{
  v4 = [(VNSession *)self _locateDetectorOfClass:a3 configuredWithOptions:a4 allowingCreation:0 error:0];

  return v4;
}

- (id)cachedResourceObjectForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[VNFrameworkManager manager];
  v6 = [v5 sessionResourcesAccessingLock];

  [v6 lock];
  v7 = [(VisionCoreObjectCache *)self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock objectForIdentifier:v4 creationBlock:0 error:0];
  [v6 unlock];

  return v7;
}

- (id)resourceObjectForIdentifier:(id)a3 creationBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[VNFrameworkManager manager];
  v11 = [v10 sessionResourcesAccessingLock];

  [v11 lock];
  v12 = [(VNSession *)self _locateResourceObjectForIdentifier:v8 creationBlock:v9 error:a5];
  [v11 unlock];

  return v12;
}

- (void)releaseCachedResourcesWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (v4)
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
      v8 = v4;
      dispatch_barrier_async(v5, v7);
    }

    else
    {
      [VNError VNAssert:0 log:@"Processing dispatch queue is unavailable"];
      v6 = objc_autoreleasePoolPush();
      v4[2](v4);
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
  v18 = [v16 sessionResourcesAccessingLock];

  [v18 lock];
  resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock = self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock;
  self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock = 0;

  [v18 unlock];
}

- (VNSession)initWithCachingBehavior:(unint64_t)a3
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

- (id)createRPNTrackerResourcesConfiguredWithOptions:(id)a3 error:(id *)a4
{
  v4 = [(VNRPNTrackerEspressoResourcesCache *)self->_trackerResourceCache createRPNTrackerResourcesConfiguredWithOptions:a3 error:a4];

  return v4;
}

- (id)_locateResourceObjectForIdentifier:(id)a3 creationBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v12 = v8;
  v18 = v12;
  v19 = self;
  v13 = v9;
  v20 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [(VisionCoreObjectCache *)self->_resourceObjectsCache_onlyAccessWithSessionResourcesAccessingLock objectForIdentifier:v12 creationBlock:v14 error:a5];

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
  v5 = [v4 allSessions];

  objc_autoreleasePoolPop(v3);
  kdebug_trace();

  v6.receiver = self;
  v6.super_class = VNSession;
  [(VNSession *)&v6 dealloc];
}

@end