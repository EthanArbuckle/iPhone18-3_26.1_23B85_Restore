@interface PHAssetExportRequest
+ (BOOL)errorIsLowDiskSpaceRelated:(id)related;
+ (id)assetExportLog;
+ (id)exportRequestForAsset:(id)asset variants:(id)variants error:(id *)error;
+ (id)variantsForAsset:(id)asset asUnmodifiedOriginal:(BOOL)original error:(id *)error;
- (BOOL)reassembleAdjustmentsPropertyListIfNeeded:(id)needed toOutputDirectory:(id)directory outputURL:(id *)l error:(id *)error;
- (NSString)description;
- (PFMetadata)assetMetadata;
- (PHAssetExportRequest)init;
- (PHAssetExportRequest)initWithAsset:(id)asset variants:(id)variants;
- (PHAssetExportRequestDelegate)delegate;
- (id)_generateAnalyticsPayloadWithTimingInfo:(id)info preparationOptions:(id)options;
- (id)copyFileURLsIfNeeded:(id)needed toOutputDirectory:(id)directory options:(id)options originalFilenameBase:(id)base error:(id *)error;
- (id)finalizeTotalPreparationDurationTimingInfoDictionary;
- (id)outputDirectoryFromOptions:(id)options;
- (void)bundleResourcesIfNeededForAsset:(id)asset withFileURLs:(id)ls options:(id)options completion:(id)completion;
- (void)commitTimingInfoForPreparationStep:(id)step fromStartTime:(id)time;
- (void)exportWithOptions:(id)options completionHandler:(id)handler;
- (void)handleResultWithFileURLs:(id)ls cancelled:(BOOL)cancelled withError:(id)error forAsset:(id)asset withOptions:(id)options progress:(id)progress processingUnitCount:(int64_t)count completionHandler:(id)self0;
- (void)performCompletionWithFileURLs:(id)ls preparationOptions:(id)options error:(id)error completionHandler:(id)handler;
- (void)preflightExportWithOptions:(id)options assetAvailability:(int64_t *)availability isProcessingRequired:(BOOL *)required fileURLs:(id *)ls info:(id *)info;
- (void)processResourcesAtFileURLs:(id)ls forAsset:(id)asset withOptions:(id)options progress:(id)progress processingUnitCount:(int64_t)count completion:(id)completion;
- (void)resetPreparationStepTimingInfos;
- (void)sendPreparationCompletedEventWithPreparationTimingInfo:(id)info forActivityType:(id)type preparationOptions:(id)options withError:(id)error didCancel:(BOOL)cancel;
- (void)setState:(unint64_t)state;
- (void)updateSignpostIntervalsChangingFromState:(unint64_t)state toState:(unint64_t)toState;
@end

@implementation PHAssetExportRequest

- (PHAssetExportRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_generateAnalyticsPayloadWithTimingInfo:(id)info preparationOptions:(id)options
{
  v38[6] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  optionsCopy = options;
  treatLivePhotoAsStill = [optionsCopy treatLivePhotoAsStill];
  shouldStripLocation = [optionsCopy shouldStripLocation];
  shouldStripCaption = [optionsCopy shouldStripCaption];
  shouldStripAccessibilityDescription = [optionsCopy shouldStripAccessibilityDescription];
  includeAllAssetResources = [optionsCopy includeAllAssetResources];
  v12 = MEMORY[0x1E695DF90];
  v37[0] = *MEMORY[0x1E6991E20];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v38[0] = v14;
  v37[1] = @"excludeLiveness";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:treatLivePhotoAsStill];
  v38[1] = v15;
  v37[2] = @"excludeLocation";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:shouldStripLocation];
  v38[2] = v16;
  v37[3] = @"excludeCaption";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:shouldStripCaption];
  v38[3] = v17;
  v37[4] = @"excludeAccessibilityDescription";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:shouldStripAccessibilityDescription];
  v38[4] = v18;
  v37[5] = @"sendAsOriginals";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:includeAllAssetResources];
  v38[5] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];
  v21 = [v12 dictionaryWithDictionary:v20];

  asset = [(PHAssetExportRequest *)self asset];
  [v21 setObject:asset forKeyedSubscript:*MEMORY[0x1E6991E18]];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = infoCopy;
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * i);
        v29 = [v23 objectForKeyedSubscript:{v28, infoCopy}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v21 setObject:v29 forKeyedSubscript:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v25);
  }

  return v21;
}

- (void)sendPreparationCompletedEventWithPreparationTimingInfo:(id)info forActivityType:(id)type preparationOptions:(id)options withError:(id)error didCancel:(BOOL)cancel
{
  cancelCopy = cancel;
  v21 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  errorCopy = error;
  v14 = [(PHAssetExportRequest *)self _generateAnalyticsPayloadWithTimingInfo:info preparationOptions:options];
  if ([typeCopy length])
  {
    [v14 setObject:typeCopy forKeyedSubscript:@"activityType"];
  }

  if (errorCopy)
  {
    [v14 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E6991E28]];
    v15 = @"Failed";
  }

  else if (cancelCopy)
  {
    v15 = @"Canceled";
  }

  else
  {
    v15 = @"Succeeded";
  }

  [v14 setObject:v15 forKeyedSubscript:@"preparationOutcome"];
  v16 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138477827;
    v20 = v14;
    _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "[PHAssetExportRequest] CPAnalytics item preparation payload: %{private}@", &v19, 0xCu);
  }

  v17 = MEMORY[0x1E6991F28];
  prepareItemEventCPAnalyticsSignpostId = [(PHAssetExportRequest *)self prepareItemEventCPAnalyticsSignpostId];
  [v17 endSignpost:prepareItemEventCPAnalyticsSignpostId forEventName:*MEMORY[0x1E6991C50] withPayload:v14];
  [(PHAssetExportRequest *)self setPrepareItemEventCPAnalyticsSignpostId:0];
}

- (id)finalizeTotalPreparationDurationTimingInfoDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  preparationStepTimingInfo = [(PHAssetExportRequest *)self preparationStepTimingInfo];
  v3 = [preparationStepTimingInfo mutableCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v4 objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
        [v10 doubleValue];
        v8 = v8 + v11;
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [v4 setObject:v12 forKeyedSubscript:@"time_total"];

  v13 = [v4 copy];

  return v13;
}

- (void)resetPreparationStepTimingInfos
{
  v7[6] = *MEMORY[0x1E69E9840];
  v6[0] = @"time_assetExportPreflight";
  v6[1] = @"time_retrievingFromDisk";
  v7[0] = &unk_1F102E498;
  v7[1] = &unk_1F102E498;
  v6[2] = @"time_downloading";
  v6[3] = @"time_generatingDeferredResources";
  v7[2] = &unk_1F102E498;
  v7[3] = &unk_1F102E498;
  v6[4] = @"time_additionalProcessing";
  v6[5] = @"time_bundling";
  v7[4] = &unk_1F102E498;
  v7[5] = &unk_1F102E498;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v4 = [v3 mutableCopy];
  preparationStepTimingInfo = self->_preparationStepTimingInfo;
  self->_preparationStepTimingInfo = v4;
}

- (void)commitTimingInfoForPreparationStep:(id)step fromStartTime:(id)time
{
  stepCopy = step;
  timeCopy = time;
  if (stepCopy)
  {
    if (timeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PHAssetExportRequest commitTimingInfoForPreparationStep:fromStartTime:]"];
    [currentHandler handleFailureInFunction:v18 file:@"PHAssetExportRequest.m" lineNumber:1765 description:{@"Invalid parameter not satisfying: %@", @"preparationStep"}];

    if (timeCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PHAssetExportRequest commitTimingInfoForPreparationStep:fromStartTime:]"];
  [currentHandler2 handleFailureInFunction:v20 file:@"PHAssetExportRequest.m" lineNumber:1766 description:{@"Invalid parameter not satisfying: %@", @"startTime"}];

LABEL_3:
  preparationStepTimingInfo = [(PHAssetExportRequest *)self preparationStepTimingInfo];

  if (!preparationStepTimingInfo)
  {
    [(PHAssetExportRequest *)self resetPreparationStepTimingInfos];
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:timeCopy];
  v10 = v9;

  preparationStepTimingInfo2 = [(PHAssetExportRequest *)self preparationStepTimingInfo];
  v12 = [preparationStepTimingInfo2 objectForKeyedSubscript:stepCopy];

  if (v12)
  {
    [v12 doubleValue];
    if (v13 > 0.0)
    {
      [v12 doubleValue];
      v10 = v10 + v14;
    }
  }

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  preparationStepTimingInfo3 = [(PHAssetExportRequest *)self preparationStepTimingInfo];
  [preparationStepTimingInfo3 setObject:v15 forKeyedSubscript:stepCopy];
}

- (void)updateSignpostIntervalsChangingFromState:(unint64_t)state toState:(unint64_t)toState
{
  assetExportLog = [objc_opt_class() assetExportLog];
  signpostId = [(PHAssetExportRequest *)self signpostId];
  isAllowed = [MEMORY[0x1E6991F28] isAllowed];
  if ([(PHAssetExportRequest *)self shouldSendTimingIntervalsToAnalytics])
  {
    if (isAllowed)
    {
      prepareItemEventCPAnalyticsSignpostId = [(PHAssetExportRequest *)self prepareItemEventCPAnalyticsSignpostId];
      if (toState)
      {
        if (!prepareItemEventCPAnalyticsSignpostId)
        {
          -[PHAssetExportRequest setPrepareItemEventCPAnalyticsSignpostId:](self, "setPrepareItemEventCPAnalyticsSignpostId:", [MEMORY[0x1E6991F28] startSignpost]);
        }
      }
    }
  }

  if (state <= 3)
  {
    switch(state)
    {
      case 1uLL:
        preparationStepSignpostIntervalStartTime = [(PHAssetExportRequest *)self preparationStepSignpostIntervalStartTime];
        [(PHAssetExportRequest *)self commitTimingInfoForPreparationStep:@"time_assetExportPreflight" fromStartTime:preparationStepSignpostIntervalStartTime];

        v18 = assetExportLog;
        if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_32;
        }

        v13 = v18;
        if (!os_signpost_enabled(v18))
        {
          goto LABEL_32;
        }

        *v44 = 0;
        v14 = "PerformingAssetExportPreflight";
        break;
      case 2uLL:
        preparationStepSignpostIntervalStartTime2 = [(PHAssetExportRequest *)self preparationStepSignpostIntervalStartTime];
        [(PHAssetExportRequest *)self commitTimingInfoForPreparationStep:@"time_retrievingFromDisk" fromStartTime:preparationStepSignpostIntervalStartTime2];

        v22 = assetExportLog;
        if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_32;
        }

        v13 = v22;
        if (!os_signpost_enabled(v22))
        {
          goto LABEL_32;
        }

        *v44 = 0;
        v14 = "RetrievingFromDisk";
        break;
      case 3uLL:
        preparationStepSignpostIntervalStartTime3 = [(PHAssetExportRequest *)self preparationStepSignpostIntervalStartTime];
        [(PHAssetExportRequest *)self commitTimingInfoForPreparationStep:@"time_downloading" fromStartTime:preparationStepSignpostIntervalStartTime3];

        v12 = assetExportLog;
        if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_32;
        }

        v13 = v12;
        if (!os_signpost_enabled(v12))
        {
          goto LABEL_32;
        }

        *v44 = 0;
        v14 = "Downloading";
        break;
      default:
        goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (state == 4)
  {
    preparationStepSignpostIntervalStartTime4 = [(PHAssetExportRequest *)self preparationStepSignpostIntervalStartTime];
    [(PHAssetExportRequest *)self commitTimingInfoForPreparationStep:@"time_generatingDeferredResources" fromStartTime:preparationStepSignpostIntervalStartTime4];

    v20 = assetExportLog;
    if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_32;
    }

    v13 = v20;
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_32;
    }

    *v44 = 0;
    v14 = "GeneratingDeferredResources";
    goto LABEL_31;
  }

  if (state == 5)
  {
    preparationStepSignpostIntervalStartTime5 = [(PHAssetExportRequest *)self preparationStepSignpostIntervalStartTime];
    [(PHAssetExportRequest *)self commitTimingInfoForPreparationStep:@"time_additionalProcessing" fromStartTime:preparationStepSignpostIntervalStartTime5];

    v24 = assetExportLog;
    if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_32;
    }

    v13 = v24;
    if (!os_signpost_enabled(v24))
    {
      goto LABEL_32;
    }

    *v44 = 0;
    v14 = "AdditionalProcessing";
    goto LABEL_31;
  }

  if (state != 6)
  {
    goto LABEL_33;
  }

  preparationStepSignpostIntervalStartTime6 = [(PHAssetExportRequest *)self preparationStepSignpostIntervalStartTime];
  [(PHAssetExportRequest *)self commitTimingInfoForPreparationStep:@"time_bundling" fromStartTime:preparationStepSignpostIntervalStartTime6];

  v16 = assetExportLog;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v16;
    if (os_signpost_enabled(v16))
    {
      *v44 = 0;
      v14 = "Bundling";
LABEL_31:
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_INTERVAL_END, signpostId, v14, " enableTelemetry=YES ", v44, 2u);
    }
  }

LABEL_32:

LABEL_33:
  if (toState <= 2)
  {
    switch(toState)
    {
      case 0uLL:
        v34 = assetExportLog;
        if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_64;
        }

        v35 = v34;
        if (!os_signpost_enabled(v34))
        {
          goto LABEL_64;
        }

        *v44 = 0;
        v28 = "AssetExportInactive";
        v29 = byte_19CB567AE;
        v36 = v35;
        v37 = OS_SIGNPOST_EVENT;
        goto LABEL_63;
      case 1uLL:
        date = [MEMORY[0x1E695DF00] date];
        [(PHAssetExportRequest *)self setPreparationStepSignpostIntervalStartTime:date];

        v43 = assetExportLog;
        if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_64;
        }

        v27 = v43;
        if (!os_signpost_enabled(v43))
        {
          goto LABEL_64;
        }

        *v44 = 0;
        v28 = "PerformingAssetExportPreflight";
        v29 = " enableTelemetry=YES ";
        break;
      case 2uLL:
        date2 = [MEMORY[0x1E695DF00] date];
        [(PHAssetExportRequest *)self setPreparationStepSignpostIntervalStartTime:date2];

        v31 = assetExportLog;
        if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_64;
        }

        v27 = v31;
        if (!os_signpost_enabled(v31))
        {
          goto LABEL_64;
        }

        *v44 = 0;
        v28 = "RetrievingFromDisk";
        v29 = " enableTelemetry=YES ";
        break;
      default:
        goto LABEL_65;
    }

LABEL_62:
    v36 = v27;
    v37 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_63:
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v36, v37, signpostId, v28, v29, v44, 2u);
LABEL_64:

    goto LABEL_65;
  }

  if (toState <= 4)
  {
    if (toState == 3)
    {
      date3 = [MEMORY[0x1E695DF00] date];
      [(PHAssetExportRequest *)self setPreparationStepSignpostIntervalStartTime:date3];

      v39 = assetExportLog;
      if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_64;
      }

      v27 = v39;
      if (!os_signpost_enabled(v39))
      {
        goto LABEL_64;
      }

      *v44 = 0;
      v28 = "Downloading";
      v29 = " enableTelemetry=YES ";
    }

    else
    {
      date4 = [MEMORY[0x1E695DF00] date];
      [(PHAssetExportRequest *)self setPreparationStepSignpostIntervalStartTime:date4];

      v26 = assetExportLog;
      if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_64;
      }

      v27 = v26;
      if (!os_signpost_enabled(v26))
      {
        goto LABEL_64;
      }

      *v44 = 0;
      v28 = "GeneratingDeferredResources";
      v29 = " enableTelemetry=YES ";
    }

    goto LABEL_62;
  }

  if (toState == 5)
  {
    date5 = [MEMORY[0x1E695DF00] date];
    [(PHAssetExportRequest *)self setPreparationStepSignpostIntervalStartTime:date5];

    v41 = assetExportLog;
    if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_64;
    }

    v27 = v41;
    if (!os_signpost_enabled(v41))
    {
      goto LABEL_64;
    }

    *v44 = 0;
    v28 = "AdditionalProcessing";
    v29 = " enableTelemetry=YES ";
    goto LABEL_62;
  }

  if (toState == 6)
  {
    date6 = [MEMORY[0x1E695DF00] date];
    [(PHAssetExportRequest *)self setPreparationStepSignpostIntervalStartTime:date6];

    v33 = assetExportLog;
    if (signpostId - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_64;
    }

    v27 = v33;
    if (!os_signpost_enabled(v33))
    {
      goto LABEL_64;
    }

    *v44 = 0;
    v28 = "Bundling";
    v29 = " enableTelemetry=YES ";
    goto LABEL_62;
  }

LABEL_65:
}

- (void)exportWithOptions:(id)options completionHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetExportRequest.m" lineNumber:1665 description:{@"Method %s is a responsibility of subclasses of %@", "-[PHAssetExportRequest exportWithOptions:completionHandler:]", v7}];
}

- (void)preflightExportWithOptions:(id)options assetAvailability:(int64_t *)availability isProcessingRequired:(BOOL *)required fileURLs:(id *)ls info:(id *)info
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetExportRequest.m" lineNumber:1660 description:{@"Method %s is a responsibility of subclasses of %@", "-[PHAssetExportRequest preflightExportWithOptions:assetAvailability:isProcessingRequired:fileURLs:info:]", v10}];
}

- (void)performCompletionWithFileURLs:(id)ls preparationOptions:(id)options error:(id)error completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  optionsCopy = options;
  errorCopy = error;
  handlerCopy = handler;
  if (!(lsCopy | errorCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetExportRequest.m" lineNumber:1626 description:{@"Invalid parameter not satisfying: %@", @"fileURLs || error"}];
LABEL_23:

    goto LABEL_4;
  }

  if (lsCopy && ![lsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetExportRequest.m" lineNumber:1627 description:{@"Invalid parameter not satisfying: %@", @"!fileURLs || fileURLs.count"}];
    goto LABEL_23;
  }

LABEL_4:
  [(PHAssetExportRequest *)self setState:0];
  finalizeTotalPreparationDurationTimingInfoDictionary = [(PHAssetExportRequest *)self finalizeTotalPreparationDurationTimingInfoDictionary];
  v16 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    asset = [(PHAssetExportRequest *)self asset];
    uuid = [asset uuid];
    *buf = 138543618;
    v36 = uuid;
    v37 = 2114;
    v38 = finalizeTotalPreparationDurationTimingInfoDictionary;
    _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Preparation timing for asset %{public}@: %{public}@", buf, 0x16u);
  }

  isAllowed = [MEMORY[0x1E6991F28] isAllowed];
  if ([(PHAssetExportRequest *)self shouldSendTimingIntervalsToAnalytics]&& isAllowed)
  {
    code = [errorCopy code];
    v21 = code == 1;
    if (code == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = errorCopy;
    }

    v23 = v22;
    analyticsActivityType = [(PHAssetExportRequest *)self analyticsActivityType];
    [(PHAssetExportRequest *)self sendPreparationCompletedEventWithPreparationTimingInfo:finalizeTotalPreparationDurationTimingInfoDictionary forActivityType:analyticsActivityType preparationOptions:optionsCopy withError:v23 didCancel:v21];
  }

  [(PHAssetExportRequest *)self setPreparationStepTimingInfo:0];
  handlerCopy[2](handlerCopy, lsCopy, errorCopy);
  customOutputDirectory = [optionsCopy customOutputDirectory];

  v26 = [(PHAssetExportRequest *)self outputDirectoryFromOptions:optionsCopy];
  v27 = 0;
  if (!customOutputDirectory)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v34 = 0;
    v29 = [defaultManager removeItemAtURL:v26 error:&v34];
    v30 = v34;
    v27 = v30;
    if ((v29 & 1) == 0)
    {
      domain = [v30 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A798]])
      {
      }

      else
      {
        code2 = [v27 code];

        if (code2 == 2)
        {
          goto LABEL_17;
        }

        defaultManager = PLPhotoKitGetLog();
        if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v27;
          _os_log_impl(&dword_19C86F000, defaultManager, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Failed to remove output directory: %@", buf, 0xCu);
        }
      }
    }
  }

LABEL_17:
}

- (id)copyFileURLsIfNeeded:(id)needed toOutputDirectory:(id)directory options:(id)options originalFilenameBase:(id)base error:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  directoryCopy = directory;
  optionsCopy = options;
  baseCopy = base;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__2350;
  v52 = __Block_byref_object_dispose__2351;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2350;
  v46 = __Block_byref_object_dispose__2351;
  v47 = 0;
  if ([optionsCopy disableUpdatingFileCreationDatesOnExportedFileURLs])
  {
    goto LABEL_2;
  }

  if (![optionsCopy shouldExportUnmodifiedOriginalResources])
  {
    if ([optionsCopy disableMetadataCorrections])
    {
LABEL_2:
      v16 = 0;
      goto LABEL_14;
    }

    asset = [(PHAssetExportRequest *)self asset];
    creationDate = [asset creationDate];
LABEL_10:
    v16 = creationDate;

    if (!v16)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  asset2 = [(PHAssetExportRequest *)self asset];
  v16 = [asset2 originalCreationDateWithTimeZone:0];

  if (!v16)
  {
    v18 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      asset3 = [(PHAssetExportRequest *)self asset];
      uuid = [asset3 uuid];
      asset4 = [(PHAssetExportRequest *)self asset];
      creationDate2 = [asset4 creationDate];
      *buf = 138543619;
      v55 = uuid;
      v56 = 2113;
      *v57 = creationDate2;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Unable to retrieve original creation date for asset: %{public}@. Falling back to creation date: %{private}@", buf, 0x16u);
    }

    asset = [(PHAssetExportRequest *)self asset];
    creationDate = [asset creationDate];
    goto LABEL_10;
  }

LABEL_11:
  v24 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    shouldExportUnmodifiedOriginalResources = [optionsCopy shouldExportUnmodifiedOriginalResources];
    asset5 = [(PHAssetExportRequest *)self asset];
    uuid2 = [asset5 uuid];
    *buf = 138478339;
    v55 = v16;
    v56 = 1024;
    *v57 = shouldExportUnmodifiedOriginalResources;
    *&v57[4] = 2112;
    *&v57[6] = uuid2;
    _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Setting file creation date %{private}@ for exported files of asset (unmodified originals = %{BOOL}d): %@", buf, 0x1Cu);
  }

LABEL_14:
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __98__PHAssetExportRequest_copyFileURLsIfNeeded_toOutputDirectory_options_originalFilenameBase_error___block_invoke;
  v35[3] = &unk_1E75A3C78;
  v28 = baseCopy;
  v36 = v28;
  v29 = optionsCopy;
  v37 = v29;
  v30 = directoryCopy;
  v38 = v30;
  v31 = v16;
  v39 = v31;
  v40 = &v48;
  v41 = &v42;
  [neededCopy enumerateKeysAndObjectsUsingBlock:v35];
  if (error)
  {
    *error = v43[5];
  }

  v32 = v49[5];

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  return v32;
}

void __98__PHAssetExportRequest_copyFileURLsIfNeeded_toOutputDirectory_options_originalFilenameBase_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (([v7 isEqualToString:@"PHAssetExportRequestAdjustmentDataFileURLKey"] & 1) != 0 || objc_msgSend(*(a1 + 40), "includeAllAssetResources"))
  {
    v10 = [v8 lastPathComponent];
    v11 = [v10 stringByDeletingPathExtension];

    v9 = v11;
  }

  v12 = [*(a1 + 40) customOutputDirectory];
  if (v12)
  {
    v13 = [*(a1 + 40) overwriteExistingFilesInOutputDirectory];
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 48);
  v21 = 0;
  v15 = PHAssetExportRequestCopyFileURL(v8, v14, v9, v13, &v21);
  v16 = v21;
  v17 = v21;
  v18 = *(a1 + 56);
  if (v18)
  {
    [MEMORY[0x1E69BF238] setFileCreationDate:v18 forFileURL:v15 error:0];
  }

  v19 = *(*(a1 + 64) + 8);
  v20 = *(v19 + 40);
  if (v15)
  {
    [v20 setObject:v15 forKeyedSubscript:v7];
  }

  else
  {
    *(v19 + 40) = 0;

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v16);
    *a4 = 1;
  }
}

- (void)bundleResourcesIfNeededForAsset:(id)asset withFileURLs:(id)ls options:(id)options completion:(id)completion
{
  assetCopy = asset;
  lsCopy = ls;
  optionsCopy = options;
  completionCopy = completion;
  if (assetCopy)
  {
    if (lsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PHAssetExportRequest bundleResourcesIfNeededForAsset:withFileURLs:options:completion:]"];
    [currentHandler handleFailureInFunction:v32 file:@"PHAssetExportRequest.m" lineNumber:1498 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (lsCopy)
    {
LABEL_3:
      if (optionsCopy)
      {
        goto LABEL_4;
      }

LABEL_27:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PHAssetExportRequest bundleResourcesIfNeededForAsset:withFileURLs:options:completion:]"];
      [currentHandler2 handleFailureInFunction:v36 file:@"PHAssetExportRequest.m" lineNumber:1500 description:{@"Invalid parameter not satisfying: %@", @"options"}];

      if (completionCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_28;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PHAssetExportRequest bundleResourcesIfNeededForAsset:withFileURLs:options:completion:]"];
  [currentHandler3 handleFailureInFunction:v34 file:@"PHAssetExportRequest.m" lineNumber:1499 description:{@"Invalid parameter not satisfying: %@", @"fileURLs"}];

  if (!optionsCopy)
  {
    goto LABEL_27;
  }

LABEL_4:
  if (completionCopy)
  {
    goto LABEL_5;
  }

LABEL_28:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PHAssetExportRequest bundleResourcesIfNeededForAsset:withFileURLs:options:completion:]"];
  [currentHandler4 handleFailureInFunction:v38 file:@"PHAssetExportRequest.m" lineNumber:1501 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_5:
  if (![optionsCopy shouldBundleComplexAssetResources])
  {
    goto LABEL_23;
  }

  v14 = [(PHAssetExportRequest *)self outputDirectoryFromOptions:optionsCopy];
  v15 = PHAssetExportRequestFilenameForAsset(assetCopy, optionsCopy);
  if (![optionsCopy includeAllAssetResources])
  {
    if (PHAssetExportRequestCanCreateLivePhotoBundleForAssetWithOptions(assetCopy, lsCopy, optionsCopy))
    {
      v19 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Creating live photo bundle from asset resources", buf, 2u);
      }

      v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      v20 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestPhotoFileURLKey"];

      if (v20)
      {
        v21 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestPhotoFileURLKey"];
        [(PHAssetBundleExportSession *)v17 addObject:v21];
      }

      v22 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];

      if (v22)
      {
        v23 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
        [(PHAssetBundleExportSession *)v17 addObject:v23];
      }

      v18 = [[PHLivePhotoExportSession alloc] initWithResourceFileURLs:v17];
      v39 = v15;
      v40 = v14;
      v24 = [v14 URLByAppendingPathComponent:v15];
      v25 = [v24 URLByAppendingPathExtension:*MEMORY[0x1E69C09D0]];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      buf[0] = 0;
      path = [v25 path];
      v28 = [defaultManager fileExistsAtPath:path isDirectory:buf];

      if ((v28 & 1) != 0 || buf[0] == 1)
      {
        [defaultManager removeItemAtURL:v25 error:0];
      }

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __88__PHAssetExportRequest_bundleResourcesIfNeededForAsset_withFileURLs_options_completion___block_invoke_451;
      v41[3] = &unk_1E75A3C50;
      v42 = v25;
      v43 = completionCopy;
      v29 = v25;
      v30 = [(PHLivePhotoExportSession *)v18 writeToFileURL:v29 options:0 completionHandler:v41];

      v15 = v39;
      v14 = v40;
      goto LABEL_21;
    }

LABEL_23:
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F8], 0);
    goto LABEL_24;
  }

  v16 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Creating asset bundle from asset resources", buf, 2u);
  }

  v17 = [[PHAssetBundleExportSession alloc] initWithAsset:assetCopy withAssetExportRequestFileURLs:lsCopy];
  [(PHAssetBundleExportSession *)v17 setCustomFilenameBase:v15];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __88__PHAssetExportRequest_bundleResourcesIfNeededForAsset_withFileURLs_options_completion___block_invoke;
  v44[3] = &unk_1E75A3C28;
  v45 = v14;
  v46 = completionCopy;
  [(PHAssetBundleExportSession *)v17 writeToDirectoryURL:v45 completionHandler:v44];

  v18 = v45;
LABEL_21:

LABEL_24:
}

void __88__PHAssetExportRequest_bundleResourcesIfNeededForAsset_withFileURLs_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Unable to create asset bundle at directory '%@' due to following error '%@'", buf, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v5)
  {
    v11 = @"PHAssetExportRequestAssetBundleURLKey";
    v12 = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    (*(v9 + 16))(v9, v10, v6);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v6);
  }
}

void __88__PHAssetExportRequest_bundleResourcesIfNeededForAsset_withFileURLs_options_completion___block_invoke_451(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"PHLivePhotoExportSessionInfoBundleURLKey"];
  v5 = [v3 objectForKeyedSubscript:@"PHLivePhotoExportSessionInfoErrorKey"];

  if (v5)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Unable to create live photo bundle at '%@' due to following error '%@'", buf, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v4)
  {
    v10 = @"PHAssetExportRequestLivePhotoBundleURLKey";
    v11 = v4;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    (*(v8 + 16))(v8, v9, v5);
  }

  else
  {
    (*(v8 + 16))(v8, 0, v5);
  }
}

- (BOOL)reassembleAdjustmentsPropertyListIfNeeded:(id)needed toOutputDirectory:(id)directory outputURL:(id *)l error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  directoryCopy = directory;
  if (neededCopy && [MEMORY[0x1E69C0660] adjustmentsPropertyListFileRequiresOverflowDataReassemblyAtURL:neededCopy predictedSize:0])
  {
    lastPathComponent = [neededCopy lastPathComponent];
    v12 = [directoryCopy URLByAppendingPathComponent:lastPathComponent];
    v24 = 0;
    v13 = PHAssetExportRequestCreateOutputDirectory(directoryCopy, &v24);
    v14 = v24;
    if (v13)
    {
      v23 = v14;
      v15 = [MEMORY[0x1E69C0660] writeReassembleAdjustmentsPropertyListAtURL:neededCopy toURL:v12 error:&v23];
      v16 = v23;

      if (v15)
      {
        if (l)
        {
          v17 = v12;
          *l = v12;
        }

        if (error)
        {
          v18 = v16;
          *error = v16;
        }
      }

      v14 = v16;
    }

    else
    {
      v20 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        path = [directoryCopy path];
        *buf = 138412546;
        v26 = path;
        v27 = 2112;
        v28 = v14;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Unable to create output directory %@: %@", buf, 0x16u);
      }
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)processResourcesAtFileURLs:(id)ls forAsset:(id)asset withOptions:(id)options progress:(id)progress processingUnitCount:(int64_t)count completion:(id)completion
{
  v89 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  assetCopy = asset;
  optionsCopy = options;
  progressCopy = progress;
  completionCopy = completion;
  v17 = dispatch_group_create();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v61 = [MEMORY[0x1E695DFA8] set];
  v44 = completionCopy;
  v50 = ([assetCopy isCloudSharedAsset] & 1) == 0 && objc_msgSend(optionsCopy, "variant") == 2;
  assetMetadata = [(PHAssetExportRequest *)self assetMetadata];
  v86 = 0;
  v47 = PHAssetExportRequestLocationMetadataOperationForAssetWithOptions(assetCopy, optionsCopy, assetMetadata, &v86);
  v56 = v86;
  v85 = 0;
  v46 = PHAssetExportRequestCaptionMetadataOperationForAssetWithOptions(assetCopy, optionsCopy, assetMetadata, &v85);
  v55 = v85;
  v84 = 0;
  v45 = PHAssetExportRequestAccessibilityDescriptionMetadataOperationForAssetWithOptions(assetCopy, optionsCopy, assetMetadata, &v84);
  v54 = v84;
  v83 = 0;
  v53 = PHAssetExportRequestCustomDateForAssetWithOptions(assetCopy, optionsCopy, &v83);
  v52 = v83;
  videoExportPreset = [optionsCopy videoExportPreset];
  v19 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestPhotoFileURLKey"];
  v20 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
  v21 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentDataFileURLKey"];
  v60 = v19;
  v51 = v20;
  if (v19)
  {
    v22 = v20 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22;
  v58 = [(PHAssetExportRequest *)self outputDirectoryFromOptions:optionsCopy];
  customOutputDirectory = [optionsCopy customOutputDirectory];
  if (customOutputDirectory)
  {
    overwriteExistingFilesInOutputDirectory = [optionsCopy overwriteExistingFilesInOutputDirectory];
  }

  else
  {
    overwriteExistingFilesInOutputDirectory = 0;
  }

  v25 = v21;
  if (([assetCopy playbackStyle] != 3) | v23 & 1)
  {
    uUIDString = 0;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  [assetCopy fetchPropertySetsIfNeeded];
  v57 = PHAssetExportRequestFilenameForAsset(assetCopy, optionsCopy);
  countCopy = count / 2;
  if (v23)
  {
    countCopy = count;
  }

  v49 = countCopy;
  if (v60)
  {
    dispatch_group_enter(v17);
    v29 = [MEMORY[0x1E69AE8A8] imageSourceForFileURL:v60];
    if (v50)
    {
      identifier = [(NSDictionary *)self->_variants objectForKeyedSubscript:&unk_1F102C1A0];
      if (!identifier)
      {
        v31 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          uuid = [assetCopy uuid];
          *buf = 138543362;
          v88 = uuid;
          _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Compatible variant was not listed in variants for asset %{public}@, falling back to JPG", buf, 0xCu);
        }

        identifier = [*MEMORY[0x1E6982E58] identifier];
      }

      v33 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifier];
    }

    else
    {
      v33 = 0;
    }

    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke;
    v79[3] = &unk_1E75A3C00;
    v79[4] = self;
    v80 = dictionary;
    v81 = v61;
    v82 = v17;
    PHAssetExportRequestPerformMediaConversion(v29, 0, v50, v33, v47, v56, v53, v52, v46, v55, v45, v54, 0, progressCopy, v49, v58, overwriteExistingFilesInOutputDirectory, v57, uUIDString, v79);
  }

  v34 = v51;
  if (v51)
  {
    if (PHAssetExportRequestNeedsSloMoFlatteningForAssetWithOptions(assetCopy, optionsCopy))
    {
      dispatch_group_enter(v17);
      videoExportPreset2 = [optionsCopy videoExportPreset];
      videoExportFileType = [optionsCopy videoExportFileType];
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_3;
      v75[3] = &unk_1E75A3C00;
      v75[4] = self;
      v76 = dictionary;
      v77 = v61;
      v78 = v17;
      PHAssetExportRequestPerformSlomoFlattening(v51, v25, progressCopy, v49, v58, v57, videoExportPreset2, videoExportFileType, v50, v47, v56, v46, v55, v45, v54, v75);

      v34 = v51;
      v37 = v76;
LABEL_32:

      goto LABEL_34;
    }

    variant = [optionsCopy variant];
    dispatch_group_enter(v17);
    if (variant == 3)
    {
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_5;
      v71[3] = &unk_1E75A3C00;
      v71[4] = self;
      v72 = dictionary;
      v73 = v61;
      v74 = v17;
      PHAssetExportRequestPerformGifConversion(v51, progressCopy, v49, v58, v57, v71);

      v37 = v72;
      goto LABEL_32;
    }

    v39 = [MEMORY[0x1E69AE8A8] videoSourceForFileURL:v51];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_7;
    v67[3] = &unk_1E75A3C00;
    v67[4] = self;
    v68 = dictionary;
    v69 = v61;
    v70 = v17;
    v34 = v51;
    PHAssetExportRequestPerformMediaConversion(v39, 0, v50, 0, v47, v56, v53, v52, v46, v55, v45, v54, videoExportPreset, progressCopy, v49, v58, overwriteExistingFilesInOutputDirectory, v57, uUIDString, v67);
  }

LABEL_34:
  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (v44)
  {
    v40 = uUIDString;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_9;
    block[3] = &unk_1E75AAEB0;
    v65 = lsCopy;
    v66 = dictionary;
    dispatch_sync(serialQueue, block);
    anyObject = [v61 anyObject];
    (v44)[2](v44, anyObject);

    uUIDString = v40;
  }
}

void __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_2;
  v10[3] = &unk_1E75A9E40;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, v10);
  dispatch_group_leave(*(a1 + 56));
}

void __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_4;
  v10[3] = &unk_1E75A9E40;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, v10);
  dispatch_group_leave(*(a1 + 56));
}

void __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_6;
  v10[3] = &unk_1E75A9E40;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, v10);
  dispatch_group_leave(*(a1 + 56));
}

void __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_8;
  v10[3] = &unk_1E75A9E40;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, v10);
  dispatch_group_leave(*(a1 + 56));
}

uint64_t __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [*(a1 + 40) setObject:v1 forKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
  }

  else
  {
    return [*(a1 + 48) addObject:*(a1 + 56)];
  }
}

uint64_t __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [*(a1 + 40) setObject:v1 forKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
  }

  else
  {
    return [*(a1 + 48) addObject:*(a1 + 56)];
  }
}

void __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_4(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v1 = a1[5];

    [v1 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v2 = a1[6];
    if (a1[7])
    {
      v3 = a1[6];

      [v3 addObject:?];
    }

    else
    {
      v4 = MEMORY[0x1E696ABC0];
      v5 = *MEMORY[0x1E69C0DA8];
      v9 = *MEMORY[0x1E696A578];
      v10[0] = @"Failed to flatten slomo video.";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      v7 = [v4 errorWithDomain:v5 code:0 userInfo:v6];
      v8 = PHAssetExportRequestError(0, v7);
      [v2 addObject:v8];
    }
  }
}

uint64_t __112__PHAssetExportRequest_processResourcesAtFileURLs_forAsset_withOptions_progress_processingUnitCount_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [*(a1 + 40) setObject:v1 forKeyedSubscript:@"PHAssetExportRequestPhotoFileURLKey"];
  }

  else
  {
    return [*(a1 + 48) addObject:*(a1 + 56)];
  }
}

- (void)handleResultWithFileURLs:(id)ls cancelled:(BOOL)cancelled withError:(id)error forAsset:(id)asset withOptions:(id)options progress:(id)progress processingUnitCount:(int64_t)count completionHandler:(id)self0
{
  cancelledCopy = cancelled;
  v63 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  errorCopy = error;
  assetCopy = asset;
  optionsCopy = options;
  progressCopy = progress;
  handlerCopy = handler;
  if (cancelledCopy)
  {
    v22 = PHAssetExportRequestError(1, errorCopy);

    v23 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v60 = assetCopy;
      v61 = 2112;
      v62 = v22;
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Cancelled download asset for export: %@, error: %@", buf, 0x16u);
    }

    resultHandlerQueue = [optionsCopy resultHandlerQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke;
    block[3] = &unk_1E75AA9D8;
    block[4] = self;
    v56 = optionsCopy;
    v57 = v22;
    v58 = handlerCopy;
    v25 = v22;
    dispatch_async(resultHandlerQueue, block);

    v26 = v56;
    goto LABEL_26;
  }

  if (!lsCopy || errorCopy)
  {
    if (errorCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (![lsCopy count])
  {
LABEL_12:
    errorCopy = PHAssetExportRequestError(0, 0);
LABEL_13:
    v29 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v60 = assetCopy;
      v61 = 2112;
      v62 = errorCopy;
      _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Failed to download asset for export: %@, error: %@", buf, 0x16u);
    }

    domain = [errorCopy domain];
    v31 = [domain isEqualToString:*MEMORY[0x1E6994990]];

    if (v31)
    {
      if ([errorCopy code] != 81 && objc_msgSend(errorCopy, "code") != 80 && objc_msgSend(errorCopy, "code") != 82 && objc_msgSend(errorCopy, "code") != 1000)
      {
        if ([errorCopy code] == 1005)
        {
          v32 = 3;
        }

        else
        {
          if ([errorCopy code] != 1006)
          {
            goto LABEL_25;
          }

          v32 = 4;
        }

        goto LABEL_24;
      }
    }

    else
    {
      domain2 = [errorCopy domain];
      v34 = [domain2 isEqualToString:*MEMORY[0x1E696A978]];

      if ((v34 & 1) == 0)
      {
        domain3 = [errorCopy domain];
        v38 = [domain3 isEqualToString:@"PHAssetExportRequestErrorDomain"];

        if (v38)
        {
          goto LABEL_25;
        }

        asset = [(PHAssetExportRequest *)self asset];
        photoLibrary = [asset photoLibrary];
        if ([photoLibrary wellKnownPhotoLibraryIdentifier] == 3)
        {

          v32 = 5;
        }

        else
        {
          asset2 = [(PHAssetExportRequest *)self asset];
          isGuestAsset = [asset2 isGuestAsset];

          if (isGuestAsset)
          {
            v32 = 5;
          }

          else
          {
            v32 = 0;
          }
        }

LABEL_24:
        v35 = PHAssetExportRequestError(v32, errorCopy);

        errorCopy = v35;
LABEL_25:
        resultHandlerQueue2 = [optionsCopy resultHandlerQueue];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke_426;
        v51[3] = &unk_1E75AA9D8;
        v51[4] = self;
        v52 = optionsCopy;
        v53 = errorCopy;
        v54 = handlerCopy;
        v25 = errorCopy;
        dispatch_async(resultHandlerQueue2, v51);

        v26 = v52;
LABEL_26:

        goto LABEL_27;
      }
    }

    v32 = 2;
    goto LABEL_24;
  }

  v27 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v60 = assetCopy;
    v61 = 2112;
    v62 = lsCopy;
    _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_DEBUG, "[PHAssetExportRequest] Did download asset for export: %@, urls: %@", buf, 0x16u);
  }

  [(PHAssetExportRequest *)self setState:2];
  resourceProcessingQueue = self->_resourceProcessingQueue;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke_427;
  v43[3] = &unk_1E75A3BD8;
  v44 = lsCopy;
  v45 = assetCopy;
  v46 = optionsCopy;
  selfCopy = self;
  v48 = progressCopy;
  countCopy = count;
  v49 = handlerCopy;
  dispatch_async(resourceProcessingQueue, v43);

  v25 = v44;
LABEL_27:
}

void __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke_427(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__2350;
  v76 = __Block_byref_object_dispose__2351;
  v77 = [*(a1 + 32) mutableCopy];
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__2350;
  v70 = __Block_byref_object_dispose__2351;
  v71 = 0;
  [*(a1 + 40) fetchPropertySetsIfNeeded];
  v2 = PHAssetExportRequestFilenameForAsset(*(a1 + 40), *(a1 + 48));
  v3 = [*(a1 + 56) outputDirectoryFromOptions:*(a1 + 48)];
  v65 = 0;
  v4 = PHAssetExportRequestCreateOutputDirectory(v3, &v65);
  v5 = v65;
  v6 = v65;
  if ((v4 & 1) == 0)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 path];
      *buf = 138412546;
      v79 = v8;
      v80 = 2112;
      v81 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Unable to create output directory %@: %@", buf, 0x16u);
    }

    objc_storeStrong(v67 + 5, v5);
  }

  if (!v67[5])
  {
    v9 = [v73[5] objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentDataFileURLKey"];
    v10 = v9 == 0;

    if (!v10)
    {
      v11 = *(a1 + 56);
      v12 = [v73[5] objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentDataFileURLKey"];
      v63 = 0;
      v64 = 0;
      [v11 reassembleAdjustmentsPropertyListIfNeeded:v12 toOutputDirectory:v3 outputURL:&v64 error:&v63];
      v13 = v64;
      v14 = v63;

      if (v13)
      {
        [v73[5] setObject:v13 forKeyedSubscript:@"PHAssetExportRequestAdjustmentDataFileURLKey"];
      }

      else if (v14)
      {
        v15 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v79 = v14;
          _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Error trying to reassemble adjustments plist and data blob: %@", buf, 0xCu);
        }

        v16 = PHAssetExportRequestError(0, v14);
        v17 = v67[5];
        v67[5] = v16;
      }
    }
  }

  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = [*(a1 + 56) assetMetadata];
  LOBYTE(v18) = PHAssetExportRequestProcessingRequiredForAssetWithOptions(v18, v19, v20, v73[5]);

  v21 = v67[5];
  if (((v21 == 0) & v18) == 1)
  {
    [*(a1 + 56) setState:5];
    v22 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Processing retrieved file urls for compatibility and/or metadata corrections", buf, 2u);
    }

    v47 = v3;
    v23 = v6;
    v24 = v2;
    v25 = dispatch_semaphore_create(0);
    v26 = v73[5];
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29 = *(a1 + 56);
    v30 = *(a1 + 64);
    v31 = *(a1 + 80);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke_428;
    v60[3] = &unk_1E75A5710;
    v62 = &v66;
    v60[4] = v29;
    v32 = v25;
    v61 = v32;
    [v29 processResourcesAtFileURLs:v26 forAsset:v27 withOptions:v28 progress:v30 processingUnitCount:v31 completion:v60];
    dispatch_semaphore_wait(v32, 0xFFFFFFFFFFFFFFFFLL);

    v2 = v24;
    v6 = v23;
    v3 = v47;

    v21 = v67[5];
  }

  if (!v21)
  {
    [*(a1 + 56) setState:2];
    if (!v67[5])
    {
      if ([*(a1 + 48) shouldBundleComplexAssetResources])
      {
        v33 = dispatch_semaphore_create(0);
        v35 = *(a1 + 48);
        v34 = *(a1 + 56);
        v36 = v73[5];
        v37 = *(a1 + 40);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke_430;
        v56[3] = &unk_1E75A3B88;
        v58 = &v72;
        v59 = &v66;
        v38 = v33;
        v57 = v38;
        [v34 bundleResourcesIfNeededForAsset:v37 withFileURLs:v36 options:v35 completion:v56];
        dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  v39 = v67 + 5;
  if (v67[5])
  {
    v40 = 0;
  }

  else
  {
    v41 = v73[5];
    v43 = *(a1 + 48);
    v42 = *(a1 + 56);
    obj = 0;
    v40 = [v42 copyFileURLsIfNeeded:v41 toOutputDirectory:v3 options:v43 originalFilenameBase:v2 error:&obj];
    objc_storeStrong(v39, obj);
  }

  v44 = [*(a1 + 48) resultHandlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke_2;
  block[3] = &unk_1E75A3BB0;
  v54 = &v66;
  v50 = v40;
  v51 = *(a1 + 40);
  v48 = *(a1 + 48);
  v45 = v48.i64[0];
  v52 = vextq_s8(v48, v48, 8uLL);
  v53 = *(a1 + 72);
  v46 = v40;
  dispatch_async(v44, block);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);
}

void __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke_428(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E69AE9A0]])
    {
      v6 = [v4 code];

      if (v6 == 3)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v7 = [v4 domain];
    if ([v7 isEqualToString:*MEMORY[0x1E69C09C8]])
    {
      v8 = [v4 code];

      if (v8 == 3)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v9 = [v4 domain];
    if ([v9 isEqualToString:*MEMORY[0x1E69C0DA8]])
    {
      v10 = [v4 code];

      if (v10 == 1)
      {
LABEL_12:
        v11 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Cancelled while processing resources", &v18, 2u);
        }

        v12 = 1;
LABEL_23:

        v15 = PHAssetExportRequestError(v12, v4);
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        goto LABEL_24;
      }
    }

    else
    {
    }

    v13 = [objc_opt_class() errorIsLowDiskSpaceRelated:v4];
    v11 = PLPhotoKitGetLog();
    v14 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v14)
      {
        v18 = 138412290;
        v19 = v4;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Low disk space error while processing resources: %@", &v18, 0xCu);
      }

      v12 = 3;
    }

    else
    {
      if (v14)
      {
        v18 = 138412290;
        v19 = v4;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Error while processing resources: %@", &v18, 0xCu);
      }

      v12 = 0;
    }

    goto LABEL_23;
  }

LABEL_24:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke_430(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:a2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __137__PHAssetExportRequest_handleResultWithFileURLs_cancelled_withError_forAsset_withOptions_progress_processingUnitCount_completionHandler___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);

    [v2 performCompletionWithFileURLs:0 preparationOptions:v3 error:? completionHandler:?];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [*(a1 + 32) allValues];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) pathExtension];
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = &stru_1F0FC60C8;
          }

          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
      }

      while (v7);
    }

    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 40) uuid];
      v15 = *(a1 + 32);
      v16 = [v4 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Did retrieve asset %{public}@ for export with urls: %@ (extensions: %{public}@)", buf, 0x20u);
    }

    [*(a1 + 48) performCompletionWithFileURLs:*(a1 + 32) preparationOptions:*(a1 + 56) error:0 completionHandler:*(a1 + 64)];
  }
}

- (PFMetadata)assetMetadata
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_assetMetadata && ![(PHAssetExportRequest *)self assetMetadataRetrievalAttempted])
  {
    v3 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      asset = [(PHAssetExportRequest *)self asset];
      uuid = [asset uuid];
      v14 = 138543362;
      v15 = uuid;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Retrieving metadata for asset %{public}@", &v14, 0xCu);
    }

    asset2 = [(PHAssetExportRequest *)self asset];
    v7 = PHAssetOriginalMetadataOfAsset(asset2);
    assetMetadata = self->_assetMetadata;
    self->_assetMetadata = v7;

    [(PHAssetExportRequest *)self setAssetMetadataRetrievalAttempted:1];
    if (!self->_assetMetadata)
    {
      v9 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        asset3 = [(PHAssetExportRequest *)self asset];
        uuid2 = [asset3 uuid];
        v14 = 138543362;
        v15 = uuid2;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "[PHAssetExportRequest] Metadata retrieved was nil for asset %{public}@", &v14, 0xCu);
      }
    }
  }

  v12 = self->_assetMetadata;

  return v12;
}

- (id)outputDirectoryFromOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  outputDirectory = self->_outputDirectory;
  if (!outputDirectory)
  {
    customOutputDirectory = [optionsCopy customOutputDirectory];

    if (customOutputDirectory)
    {
      [v5 customOutputDirectory];
    }

    else
    {
      PHAssetExportRequestCreateTemporaryOutputDirectoryURL();
    }
    v8 = ;
    v9 = self->_outputDirectory;
    self->_outputDirectory = v8;

    outputDirectory = self->_outputDirectory;
  }

  v10 = outputDirectory;

  return outputDirectory;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  asset = self->_asset;
  state = self->_state;
  if (state > 6)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_1E75A3C98[state];
  }

  v8 = v7;
  localizedDescription = [(NSProgress *)self->_progress localizedDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p, asset: %@, state: %@, progress: %@, variants: %@>", v4, self, asset, v8, localizedDescription, self->_variants];

  return v10;
}

- (void)setState:(unint64_t)state
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      if (state > 6)
      {
        v7 = @"unknown";
      }

      else
      {
        v7 = off_1E75A3C98[state];
      }

      v8 = v7;
      if (state > 6)
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = off_1E75A3C98[state];
      }

      v10 = v9;
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Changing state from %{public}@ to %{public}@", &v15, 0x16u);
    }

    v11 = self->_state;
    self->_state = state;
    [(PHAssetExportRequest *)self updateSignpostIntervalsChangingFromState:v11 toState:state];
    delegate = [(PHAssetExportRequest *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(PHAssetExportRequest *)self delegate];
      [delegate2 assetExportRequest:self didChangeToState:state fromState:v11];
    }
  }
}

- (PHAssetExportRequest)initWithAsset:(id)asset variants:(id)variants
{
  assetCopy = asset;
  variantsCopy = variants;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetExportRequest.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (![variantsCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetExportRequest.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"variants.count"}];
  }

  v28.receiver = self;
  v28.super_class = PHAssetExportRequest;
  v10 = [(PHAssetExportRequest *)&v28 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_asset, asset);
    v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0];
    progress = v11->_progress;
    v11->_progress = v12;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v16 = [uUIDString copy];
    exportUUID = v11->_exportUUID;
    v11->_exportUUID = v16;

    v11->_state = 0;
    objc_storeStrong(&v11->_variants, variants);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("PHAssetExportRequest.ResourceProcessingQueue", v18);
    resourceProcessingQueue = v11->_resourceProcessingQueue;
    v11->_resourceProcessingQueue = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("PHAssetExportRequest.SerialQueue", v21);
    serialQueue = v11->_serialQueue;
    v11->_serialQueue = v22;

    assetExportLog = [objc_opt_class() assetExportLog];
    v11->_signpostId = os_signpost_id_make_with_pointer(assetExportLog, v11->_exportUUID);

    v11->_prepareItemEventCPAnalyticsSignpostId = 0;
  }

  return v11;
}

- (PHAssetExportRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetExportRequest.m" lineNumber:278 description:{@"%s is not available as initializer", "-[PHAssetExportRequest init]"}];

  abort();
}

+ (id)assetExportLog
{
  if (assetExportLog_onceToken != -1)
  {
    dispatch_once(&assetExportLog_onceToken, &__block_literal_global_466);
  }

  v3 = assetExportLog_assetExportLog;

  return v3;
}

uint64_t __38__PHAssetExportRequest_assetExportLog__block_invoke()
{
  assetExportLog_assetExportLog = os_log_create("com.apple.photos", "PHAssetExportRequest");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)errorIsLowDiskSpaceRelated:(id)related
{
  relatedCopy = related;
  domain = [relatedCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    code = [relatedCopy code];

    if (code == 28)
    {
      v7 = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  userInfo = [relatedCopy userInfo];
  v9 = *MEMORY[0x1E696AA08];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v10)
  {
    userInfo2 = [relatedCopy userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [self errorIsLowDiskSpaceRelated:v12];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_11:

  return v7;
}

+ (id)exportRequestForAsset:(id)asset variants:(id)variants error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  variantsCopy = variants;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetExportRequest.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (([assetCopy isCloudSharedAsset] & 1) != 0 || objc_msgSend(assetCopy, "isStreamedVideo"))
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [assetCopy uuid];
      *buf = 138543362;
      v20 = uuid;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Asset %{public}@ is a shared-album asset. Creating a cloud shared export request.", buf, 0xCu);
    }

    v13 = [PHCloudSharedAssetExportRequest exportRequestForAsset:assetCopy error:error];
  }

  else
  {
    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [assetCopy uuid];
      *buf = 138543362;
      v20 = uuid2;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "[PHAssetExportRequest] Asset %{public}@ is a regular, non-shared-album asset. Creating an internal asset export request.", buf, 0xCu);
    }

    v13 = [PHInternalAssetExportRequest exportRequestForAsset:assetCopy variants:variantsCopy error:error];
  }

  v16 = v13;

  return v16;
}

+ (id)variantsForAsset:(id)asset asUnmodifiedOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  assetCopy = asset;
  v8 = off_1E75A0FC0;
  if (([assetCopy isCloudSharedAsset] & 1) == 0 && !objc_msgSend(assetCopy, "isStreamedVideo"))
  {
    v8 = off_1E75A12A0;
  }

  v9 = [(__objc2_class *)*v8 variantsForAsset:assetCopy asUnmodifiedOriginal:originalCopy error:error];

  return v9;
}

@end