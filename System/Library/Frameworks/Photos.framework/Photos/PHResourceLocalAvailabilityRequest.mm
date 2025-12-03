@interface PHResourceLocalAvailabilityRequest
+ (BOOL)isKnownUnsupportedFormatForAsset:(id)asset;
+ (BOOL)setValuesInDictionary:(id)dictionary fromDictionary:(id)fromDictionary keysToCopy:(id)copy;
+ (id)_originalsAndFullSizeResourcesToShareForAsset:(id)asset fromAvailableResources:(id)resources options:(id)options error:(id *)error;
+ (id)_resourceInfoForAsset:(id)asset resourcesToShare:(id)share assetVersion:(int64_t)version fulfillOnDemandResources:(BOOL)resources error:(id *)error;
+ (id)_resourcesToShareForAsset:(id)asset asUnmodifiedOriginal:(BOOL)original error:(id *)error;
+ (id)_resourcesToShareForAsset:(id)asset options:(id)options error:(id *)error;
+ (id)_singularResourcesToShareForAsset:(id)asset fromAvailableResources:(id)resources options:(id)options useOriginalResources:(BOOL)originalResources knownUnsupported:(BOOL)unsupported error:(id *)error;
+ (id)fetchResourcesToShareForAsset:(id)asset requestOptions:(id)options error:(id *)error;
+ (id)indexesForAssetsRequiringResourceRetrieval:(id)retrieval requestType:(int64_t)type options:(id)options;
+ (id)indexesForAssetsWithoutThumbnails:(id)thumbnails requestType:(int64_t)type;
+ (id)resourceInfoForSharingAsset:(id)asset asUnmodifiedOriginal:(BOOL)original error:(id *)error;
+ (id)resourceInfoKeysForResourceTypesForPhotos;
+ (id)resourceInfoKeysForResourceTypesForVideos;
+ (id)resourceLocalAvailabilityRequestLog;
+ (id)utiKeysForURLKeys;
- (PHResourceLocalAvailabilityRequest)init;
- (PHResourceLocalAvailabilityRequest)initWithAsset:(id)asset requestType:(int64_t)type;
- (int64_t)resourceAvailabilityForOptions:(id)options resourceInfo:(id *)info;
- (void)_cancelActiveAssetResourceRequests;
- (void)_didFinishDownloadWithSuccess:(BOOL)success resourceInfo:(id)info error:(id)error;
- (void)_fetchResourcesForDuplicatingAsset:(id)asset options:(id)options networkAccessAllowed:(BOOL)allowed handler:(id)handler;
- (void)_fetchResourcesForSharingAsset:(id)asset options:(id)options networkAccessAllowed:(BOOL)allowed handler:(id)handler;
- (void)_fetchResourcesUsingPhotoKitForAsset:(id)asset prioritizeLowResolutionResourcesForAnalysis:(BOOL)analysis options:(id)options networkAccessAllowed:(BOOL)allowed handler:(id)handler;
- (void)_fetchResourcesWithOptions:(id)options networkAccessAllowed:(BOOL)allowed handler:(id)handler;
- (void)_handleCompletionOfAssetResourceDataRequestWithId:(int)id error:(id)error;
- (void)_setProgressFraction:(double)fraction;
- (void)_simulateFetchResourcesWithDuration:(double)duration success:(BOOL)success networkAccessAllowed:(BOOL)allowed queue:(id)queue handler:(id)handler;
- (void)_updateCombinedProgressWithValue:(double)value forRequestIdentifier:(id)identifier networkAccessAllowed:(BOOL)allowed;
- (void)cancelRetrievalRequest;
- (void)fetchResourceAvailabilityWithOptions:(id)options completionHandler:(id)handler;
- (void)retrieveRequiredResourcesWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation PHResourceLocalAvailabilityRequest

- (int64_t)resourceAvailabilityForOptions:(id)options resourceInfo:(id *)info
{
  optionsCopy = options;
  if ((self->_requestType - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1813 description:{@"Invalid parameter not satisfying: %@", @"_requestType == PHResourceRequestTypeForSharing || _requestType == PHResourceRequestTypeForDuplicating"}];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__12696;
  v28 = __Block_byref_object_dispose__12697;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (optionsCopy)
  {
    v8 = optionsCopy;
  }

  else
  {
    v8 = objc_alloc_init(PHResourceLocalAvailabilityRequestOptions);
  }

  v9 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__PHResourceLocalAvailabilityRequest_resourceAvailabilityForOptions_resourceInfo___block_invoke;
  v15[3] = &unk_1E75A5670;
  v17 = &v20;
  v18 = &v24;
  v15[4] = self;
  v10 = optionsCopy;
  v16 = v10;
  v19 = &v30;
  [(PHResourceLocalAvailabilityRequest *)self _fetchResourcesWithOptions:v9 networkAccessAllowed:0 handler:v15];
  if ((v21[3] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1836 description:@"The completion handler for -[PHResourceLocalAvailabilityRequest _fetchResourcesForSharingAsset:networkAccessAllowed:handler:] was not called back synchronously!"];

    if (!info)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (info)
  {
LABEL_8:
    *info = v25[5];
  }

LABEL_9:
  v11 = v31[3];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v11;
}

void __82__PHResourceLocalAvailabilityRequest_resourceAvailabilityForOptions_resourceInfo___block_invoke(void *a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  *(*(a1[6] + 8) + 24) = 1;
  if (a2)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
  }

  if (v11)
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[5];
      v14 = *(a1[4] + 32);
      v15 = 138412802;
      v16 = v14;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Failed to determine if downloading is required for asset: %@, options: %@, error: %@", &v15, 0x20u);
    }
  }

  *(*(a1[8] + 8) + 24) = a3;
}

- (void)_setProgressFraction:(double)fraction
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_progressFraction != fraction)
  {
    self->_progressFraction = fraction;
    [(NSProgress *)self->_progress setCompletedUnitCount:vcvtmd_s64_f64([(NSProgress *)self->_progress totalUnitCount]* fraction)];
    if (self->_progressChangeHandler)
    {
      v5 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134218240;
        requestLogIdentifier = [(PHResourceLocalAvailabilityRequest *)self requestLogIdentifier];
        v8 = 2048;
        fractionCopy = fraction;
        _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Updating progress: %f", &v6, 0x16u);
      }

      (*(self->_progressChangeHandler + 2))();
    }
  }
}

- (void)_updateCombinedProgressWithValue:(double)value forRequestIdentifier:(id)identifier networkAccessAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (allowedCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__PHResourceLocalAvailabilityRequest__updateCombinedProgressWithValue_forRequestIdentifier_networkAccessAllowed___block_invoke;
    block[3] = &unk_1E75AA318;
    block[4] = self;
    valueCopy = value;
    v11 = identifierCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __113__PHResourceLocalAvailabilityRequest__updateCombinedProgressWithValue_forRequestIdentifier_networkAccessAllowed___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  [v2 setObject:v6 forKey:*(a1 + 40)];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __113__PHResourceLocalAvailabilityRequest__updateCombinedProgressWithValue_forRequestIdentifier_networkAccessAllowed___block_invoke_2;
  v11[3] = &unk_1E75A5620;
  v11[4] = &v12;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v13[3];
  v9 = [*(*(a1 + 32) + 8) count];
  v13[3] = v8 / v9;
  [*(a1 + 32) progressFraction];
  if (v10 < v13[3])
  {
    v10 = v13[3];
  }

  [*(a1 + 32) _setProgressFraction:v10];
  _Block_object_dispose(&v12, 8);
}

double __113__PHResourceLocalAvailabilityRequest__updateCombinedProgressWithValue_forRequestIdentifier_networkAccessAllowed___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 floatValue];
  v5 = *(*(a1 + 32) + 8);
  result = *(v5 + 24) + v4;
  *(v5 + 24) = result;
  return result;
}

- (void)cancelRetrievalRequest
{
  v6 = *MEMORY[0x1E69E9840];
  [(PHResourceLocalAvailabilityRequest *)self _setDownloadCancelled:1];
  [(PHResourceLocalAvailabilityRequest *)self _cancelActiveAssetResourceRequests];
  v3 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    requestLogIdentifier = [(PHResourceLocalAvailabilityRequest *)self requestLogIdentifier];
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Download request cancelled", &v4, 0xCu);
  }

  [(PHResourceLocalAvailabilityRequest *)self _didFinishDownloadWithSuccess:0 resourceInfo:MEMORY[0x1E695E0F8] error:0];
}

- (void)_cancelActiveAssetResourceRequests
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PHResourceLocalAvailabilityRequest__cancelActiveAssetResourceRequests__block_invoke;
  aBlock[3] = &unk_1E75A9A90;
  objc_copyWeak(&v6, &location);
  v2 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PHResourceLocalAvailabilityRequest__cancelActiveAssetResourceRequests__block_invoke_2;
    block[3] = &unk_1E75AADE8;
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __72__PHResourceLocalAvailabilityRequest__cancelActiveAssetResourceRequests__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [WeakRetained _activeAssetResourcesRequest];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [WeakRetained _activeAssetResourcesRequest];
        [v9 removeObject:v8];

        v10 = +[PHAssetResourceManager defaultManager];
        [v10 cancelDataRequest:{objc_msgSend(v8, "intValue")}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_didFinishDownloadWithSuccess:(BOOL)success resourceInfo:(id)info error:(id)error
{
  successCopy = success;
  infoCopy = info;
  errorCopy = error;
  if (successCopy)
  {
    [(NSProgress *)self->_progress setCompletedUnitCount:[(NSProgress *)self->_progress totalUnitCount]];
  }

  downloadCompletionHandler = self->_downloadCompletionHandler;
  if (downloadCompletionHandler)
  {
    downloadCompletionHandler[2](downloadCompletionHandler, successCopy, [(PHResourceLocalAvailabilityRequest *)self _isDownloadCancelled], infoCopy, errorCopy);
    v10 = self->_downloadCompletionHandler;
  }

  else
  {
    v10 = 0;
  }

  self->_downloadCompletionHandler = 0;
}

- (void)_simulateFetchResourcesWithDuration:(double)duration success:(BOOL)success networkAccessAllowed:(BOOL)allowed queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (allowed)
  {
    v14 = dispatch_get_global_queue(-2, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __117__PHResourceLocalAvailabilityRequest__simulateFetchResourcesWithDuration_success_networkAccessAllowed_queue_handler___block_invoke_2;
    v17[3] = &unk_1E75A55F8;
    durationCopy = duration;
    v17[4] = self;
    v18 = queueCopy;
    v19 = handlerCopy;
    successCopy = success;
    dispatch_async(v14, v17);

    v15 = v18;
  }

  else
  {
    v16 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__PHResourceLocalAvailabilityRequest__simulateFetchResourcesWithDuration_success_networkAccessAllowed_queue_handler___block_invoke;
    block[3] = &unk_1E75AADE8;
    v23 = handlerCopy;
    dispatch_after(v16, queueCopy, block);
    v15 = v23;
  }
}

uint64_t __117__PHResourceLocalAvailabilityRequest__simulateFetchResourcesWithDuration_success_networkAccessAllowed_queue_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 1, MEMORY[0x1E695E0F8], 0);
  }

  return result;
}

void __117__PHResourceLocalAvailabilityRequest__simulateFetchResourcesWithDuration_success_networkAccessAllowed_queue_handler___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = MEMORY[0x1E69E96A0];
  while (1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = (v5 - v3) / *(a1 + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__PHResourceLocalAvailabilityRequest__simulateFetchResourcesWithDuration_success_networkAccessAllowed_queue_handler___block_invoke_3;
    block[3] = &unk_1E75A99F8;
    v7 = v6 <= 1.0 ? v6 : 1.0;
    block[4] = *(a1 + 32);
    *&block[5] = v7;
    dispatch_async(v4, block);
    if (v7 >= 1.0)
    {
      break;
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.5];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __117__PHResourceLocalAvailabilityRequest__simulateFetchResourcesWithDuration_success_networkAccessAllowed_queue_handler___block_invoke_4;
  v9[3] = &unk_1E75A55D0;
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  dispatch_async(v8, v9);
}

void __117__PHResourceLocalAvailabilityRequest__simulateFetchResourcesWithDuration_success_networkAccessAllowed_queue_handler___block_invoke_4(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(a1 + 40) == 1)
    {
      v3 = *(v2 + 16);

      v3();
    }

    else
    {
      v4 = MEMORY[0x1E696ABC0];
      v5 = *MEMORY[0x1E696A578];
      v13[0] = *MEMORY[0x1E696A588];
      v13[1] = v5;
      v14[0] = @"Simulated Download Failure";
      v14[1] = @"Simulated Download Failure in PHResourceLocalAvailabilityRequest";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v7 = [v4 errorWithDomain:@"PHResourceLocalAvailabilityRequestErrorDomain" code:-1 userInfo:v6];

      v8 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696AA08];
      v12 = v7;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v10 = [v8 errorWithDomain:@"PHResourceLocalAvailabilityRequestErrorDomain" code:3 userInfo:v9];

      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_handleCompletionOfAssetResourceDataRequestWithId:(int)id error:(id)error
{
  v4 = *&id;
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    _activeAssetResourcesRequest = PLPhotoKitGetLog();
    if (os_log_type_enabled(_activeAssetResourcesRequest, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218498;
      requestLogIdentifier = [(PHResourceLocalAvailabilityRequest *)self requestLogIdentifier];
      v11 = 1024;
      v12 = v4;
      v13 = 2112;
      v14 = errorCopy;
      _os_log_impl(&dword_19C86F000, _activeAssetResourcesRequest, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Failure in asset resource data request with identifier: %i, error: %@", &v9, 0x1Cu);
    }
  }

  else
  {
    _activeAssetResourcesRequest = [(PHResourceLocalAvailabilityRequest *)self _activeAssetResourcesRequest];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [_activeAssetResourcesRequest removeObject:v8];
  }
}

- (void)_fetchResourcesForDuplicatingAsset:(id)asset options:(id)options networkAccessAllowed:(BOOL)allowed handler:(id)handler
{
  v100 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x2020000000;
  v94 = 1;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = __Block_byref_object_copy__12696;
  v91[4] = __Block_byref_object_dispose__12697;
  v92 = 0;
  selfCopy = self;
  objc_initWeak(&location, self);
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 1;
  v10 = _FetchableResourcesForAsset(assetCopy, 0);
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke;
  v85[3] = &unk_1E75A5580;
  v85[4] = &v86;
  [v10 enumerateObjectsUsingBlock:v85];
  [(PHResourceLocalAvailabilityRequest *)self _setAssetResources:v10];
  v40 = v10;
  if (v87[3])
  {
    v11 = 0;
  }

  else
  {
    deferredProcessingNeeded = [assetCopy deferredProcessingNeeded];
    if (deferredProcessingNeeded == 9)
    {
      v13 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        requestLogIdentifier = [(PHResourceLocalAvailabilityRequest *)selfCopy requestLogIdentifier];
        uuid = [assetCopy uuid];
        [assetCopy deferredProcessingNeeded];
        v16 = PLManagedAssetDeferredProcessingNeededDescription();
        *buf = 134218498;
        v96 = requestLogIdentifier;
        v97 = 2112;
        *v98 = uuid;
        *&v98[8] = 2114;
        *&v98[10] = v16;
        _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Asset %@'s deferred processing state reports that it failed: %{public}@", buf, 0x20u);
      }
    }

    needsDeferredProcessing = [assetCopy needsDeferredProcessing];
    if (deferredProcessingNeeded == 9)
    {
      v18 = 1;
    }

    else
    {
      v18 = needsDeferredProcessing;
    }

    if (v18)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  if (allowed)
  {
    v39 = v11;
    group = dispatch_group_create();
    treatLivePhotoAsStill = [optionsCopy treatLivePhotoAsStill];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v40;
    v19 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
    if (v19)
    {
      v46 = *v82;
      do
      {
        v48 = v19;
        for (i = 0; i != v48; ++i)
        {
          if (*v82 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v81 + 1) + 8 * i);
          if (!treatLivePhotoAsStill || [*(*(&v81 + 1) + 8 * i) type] != 9)
          {
            dispatch_group_enter(group);
            type = [v21 type];
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AssetResourceRequest-Type%li", type];
            v24 = objc_alloc_init(PHAssetResourceRequestOptions);
            [(PHAssetResourceRequestOptions *)v24 setNetworkAccessAllowed:1];
            [(PHAssetResourceRequestOptions *)v24 setResistentToPrune:1];
            v77 = 0;
            v78 = &v77;
            v79 = 0x2020000000;
            v80 = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke_284;
            aBlock[3] = &unk_1E75A5470;
            v74 = &v77;
            objc_copyWeak(&v75, &location);
            v49 = v23;
            v73 = v49;
            allowedCopy = allowed;
            v25 = _Block_copy(aBlock);
            [(PHAssetResourceRequestOptions *)v24 setProgressHandler:v25];
            v25[2](v25, 0.0);
            v26 = [MEMORY[0x1E695DF00] now];
            v68 = 0;
            v69 = &v68;
            v70 = 0x2020000000;
            v71 = 0;
            v27 = +[PHAssetResourceManager defaultManager];
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke_3;
            v56[3] = &unk_1E75A54E0;
            v63 = v93;
            v28 = v26;
            v57 = v28;
            objc_copyWeak(&v67, &location);
            v64 = &v68;
            v58 = v21;
            v59 = assetCopy;
            v65 = &v77;
            v66 = v91;
            v29 = v25;
            v62 = v29;
            v60 = group;
            v61 = optionsCopy;
            LODWORD(v26) = [v27 requestDataForAssetResource:v21 options:v24 dataReceivedHandler:&__block_literal_global_286 completionHandler:v56];

            *(v69 + 6) = v26;
            v30 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = objc_loadWeakRetained(&location);
              v32 = assetCopy;
              requestLogIdentifier2 = [v31 requestLogIdentifier];
              v34 = *(v69 + 6);
              originalFilename = [v21 originalFilename];
              *buf = 134218754;
              v96 = requestLogIdentifier2;
              v97 = 1026;
              *v98 = v34;
              *&v98[4] = 2114;
              *&v98[6] = originalFilename;
              *&v98[14] = 2114;
              assetCopy = v32;
              *&v98[16] = v32;
              _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_INFO, "[PHResourceLocalAvailabilityRequest: %llu] [ResourceManager ID: %{public}d] Requesting asset resource: %{public}@ for asset %{public}@", buf, 0x26u);
            }

            if ((v78[3] & 1) == 0)
            {
              _activeAssetResourcesRequest = [(PHResourceLocalAvailabilityRequest *)selfCopy _activeAssetResourcesRequest];
              v37 = [MEMORY[0x1E696AD98] numberWithInt:*(v69 + 6)];
              [_activeAssetResourcesRequest addObject:v37];
            }

            _Block_object_dispose(&v68, 8);

            objc_destroyWeak(&v67);
            objc_destroyWeak(&v75);
            _Block_object_dispose(&v77, 8);
          }
        }

        v19 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
      }

      while (v19);
    }

    if (handlerCopy)
    {
      resultHandlerQueue = [optionsCopy resultHandlerQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke_288;
      block[3] = &unk_1E75A55A8;
      v52 = handlerCopy;
      v53 = v93;
      v54 = v91;
      v55 = v39;
      dispatch_group_notify(group, resultHandlerQueue, block);
    }
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, *(v87 + 24), v11, MEMORY[0x1E695E0F8], 0);
  }

  _Block_object_dispose(&v86, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(v91, 8);

  _Block_object_dispose(v93, 8);
}

uint64_t __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = AssetResourceIsReallyLocallyAvailable(a2);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke_284(uint64_t a1, double a2)
{
  v3 = 0.99;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = 1.0;
  }

  if (v3 <= a2)
  {
    a2 = v3;
  }

  v4 = fmax(a2, 0.0);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateCombinedProgressWithValue:*(a1 + 32) forRequestIdentifier:*(a1 + 56) networkAccessAllowed:v4];
}

void __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 80) + 8) + 24) = v3 == 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke_4;
  aBlock[3] = &unk_1E75A54B8;
  v14 = *(a1 + 32);
  objc_copyWeak(&v23, (a1 + 112));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v20 = *(a1 + 88);
  v15 = v4;
  v6 = v5;
  v7 = *(a1 + 80);
  v16 = v6;
  v21 = v7;
  v8 = v3;
  v17 = v8;
  v22 = *(a1 + 96);
  v19 = *(a1 + 72);
  v18 = *(a1 + 56);
  v9 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v9[2](v9);
  }

  else
  {
    v10 = [*(a1 + 64) resultHandlerQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke_287;
    v11[3] = &unk_1E75AADE8;
    v12 = v9;
    dispatch_async(v10, v11);
  }

  objc_destroyWeak(&v23);
}

void __110__PHResourceLocalAvailabilityRequest__fetchResourcesForDuplicatingAsset_options_networkAccessAllowed_handler___block_invoke_4(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = v3;

  v5 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 112));
    v7 = [WeakRetained requestLogIdentifier];
    v8 = *(*(*(a1 + 80) + 8) + 24);
    v9 = [*(a1 + 40) originalFilename];
    v10 = [*(a1 + 48) uuid];
    v11 = v10;
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = *(a1 + 56);
    v16 = 134219522;
    v17 = v7;
    v18 = 1026;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    v24 = 2048;
    v25 = v4;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_INFO, "[PHResourceLocalAvailabilityRequest: %llu] [ResourceManager ID: %{public}d] Finished request for asset resource: %{public}@ for asset %{public}@. Duration: %.2f. Success: %{public}@. Error: %{public}@", &v16, 0x44u);
  }

  *(*(*(a1 + 96) + 8) + 24) = 1;
  v14 = objc_loadWeakRetained((a1 + 112));
  [v14 _handleCompletionOfAssetResourceDataRequestWithId:*(*(*(a1 + 80) + 8) + 24) error:*(a1 + 56)];

  v15 = *(a1 + 56);
  if (v15)
  {
    objc_storeStrong((*(*(a1 + 104) + 8) + 40), v15);
    *(*(*(a1 + 88) + 8) + 24) = 0;
  }

  else
  {
    (*(*(a1 + 72) + 16))(1.0);
  }

  dispatch_group_leave(*(a1 + 64));
}

- (void)_fetchResourcesForSharingAsset:(id)asset options:(id)options networkAccessAllowed:(BOOL)allowed handler:(id)handler
{
  v67 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v62 = 0;
  v13 = [objc_opt_class() _resourcesToShareForAsset:assetCopy options:optionsCopy error:&v62];
  v30 = v62;
  if (v13)
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 1;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke;
    v57[3] = &unk_1E75A5448;
    v57[4] = &v58;
    [v13 enumerateKeysAndObjectsUsingBlock:v57];
    allValues = [v13 allValues];
    [(PHResourceLocalAvailabilityRequest *)self _setAssetResources:allValues];

    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    if ((v59[3] & 1) == 0)
    {
      v56 = 1;
      deferredProcessingNeeded = [assetCopy deferredProcessingNeeded];
      if (deferredProcessingNeeded == 9)
      {
        v16 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          requestLogIdentifier = [(PHResourceLocalAvailabilityRequest *)self requestLogIdentifier];
          uuid = [assetCopy uuid];
          [assetCopy deferredProcessingNeeded];
          v18 = PLManagedAssetDeferredProcessingNeededDescription();
          *buf = 134218498;
          *&buf[4] = requestLogIdentifier;
          *&buf[12] = 2112;
          *&buf[14] = uuid;
          *&buf[22] = 2114;
          v64 = v18;
          _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Asset %@'s deferred processing state reports that it failed: %{public}@", buf, 0x20u);
        }
      }

      v19 = [assetCopy needsDeferredProcessing] ^ 1;
      if (deferredProcessingNeeded == 9)
      {
        LOBYTE(v19) = 0;
      }

      if ((v19 & 1) == 0)
      {
        v54[3] = 2;
      }
    }

    if (allowed)
    {
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x2020000000;
      v51 = 1;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v64 = __Block_byref_object_copy__12696;
      v65 = __Block_byref_object_dispose__12697;
      v66 = 0;
      objc_initWeak(&location, self);
      v20 = dispatch_group_create();
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_259;
      v40[3] = &unk_1E75A5508;
      objc_copyWeak(&v47, &location);
      v21 = assetCopy;
      v41 = v21;
      v22 = v20;
      allowedCopy = allowed;
      v42 = v22;
      v45 = v50;
      v46 = buf;
      v23 = optionsCopy;
      v43 = v23;
      selfCopy = self;
      [v13 enumerateKeysAndObjectsUsingBlock:v40];
      v24 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_278;
      block[3] = &unk_1E75A5558;
      v37 = v50;
      v32 = v23;
      selfCopy2 = self;
      v34 = v21;
      v35 = v13;
      v38 = buf;
      v39 = &v53;
      v36 = handlerCopy;
      dispatch_group_notify(v22, v24, block);

      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(v50, 8);
    }

    else if (handlerCopy)
    {
      if (*(v59 + 24) == 1)
      {
        v25 = _AssetVersionFromRequestOptions(optionsCopy);
        v52 = 0;
        v26 = [objc_opt_class() _resourceInfoForAsset:assetCopy resourcesToShare:v13 assetVersion:v25 fulfillOnDemandResources:1 error:&v52];
        v27 = v52;
        v28 = *(v59 + 24);
      }

      else
      {
        v28 = 0;
        v27 = 0;
        v26 = MEMORY[0x1E695E0F8];
      }

      (*(handlerCopy + 2))(handlerCopy, v28 & 1, v54[3], v26, v27);
    }

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v58, 8);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v30);
  }
}

uint64_t __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = AssetResourceIsReallyLocallyAvailable(a3);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_259(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v33 = a3;
  if ([v33 isLocallyAvailable])
  {
    v5 = [v33 privateFileURL];

    if (v5)
    {
      v6 = [v33 privateFileURL];
      v7 = [v6 checkResourceIsReachableAndReturnError:0];

      if (v7)
      {
        v8 = [v33 privateFileLoader];

        if (!v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained((a1 + 80));
          v11 = [WeakRetained requestLogIdentifier];
          v12 = [v33 originalFilename];
          v13 = [*(a1 + 32) uuid];
          *buf = 134218498;
          v60 = v11;
          v61 = 2114;
          *v62 = v12;
          *&v62[8] = 2114;
          *&v62[10] = v13;
          _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Asset resource %{public}@ for asset %{public}@ marked locally available, but doesn't exist in file system. Possibly purged due to CacheDelete. Requesting download.", buf, 0x20u);
        }
      }
    }
  }

  dispatch_group_enter(*(a1 + 40));
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AssetResourceRequest-Type%@", v32];
  v15 = objc_alloc_init(PHAssetResourceRequestOptions);
  [(PHAssetResourceRequestOptions *)v15 setNetworkAccessAllowed:*(a1 + 88)];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_264;
  aBlock[3] = &unk_1E75A5470;
  v52 = &v55;
  objc_copyWeak(&v53, (a1 + 80));
  v16 = v14;
  v51 = v16;
  v54 = *(a1 + 88);
  v17 = _Block_copy(aBlock);
  [(PHAssetResourceRequestOptions *)v15 setProgressHandler:v17];
  v17[2](v17, 0.0);
  v18 = [MEMORY[0x1E695DF00] now];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v19 = +[PHAssetResourceManager defaultManager];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_3;
  v34[3] = &unk_1E75A54E0;
  v41 = *(a1 + 64);
  v20 = v18;
  v35 = v20;
  objc_copyWeak(&v45, (a1 + 80));
  v42 = &v46;
  v21 = v33;
  v36 = v21;
  v37 = *(a1 + 32);
  v43 = &v55;
  v44 = *(a1 + 72);
  v22 = v17;
  v40 = v22;
  v38 = *(a1 + 40);
  v39 = *(a1 + 48);
  v23 = [v19 requestDataForAssetResource:v21 options:v15 dataReceivedHandler:&__block_literal_global_12743 completionHandler:v34];

  *(v47 + 6) = v23;
  v24 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_loadWeakRetained((a1 + 80));
    v26 = [v25 requestLogIdentifier];
    v27 = *(v47 + 6);
    v28 = [v21 originalFilename];
    v29 = *(a1 + 32);
    *buf = 134218754;
    v60 = v26;
    v61 = 1026;
    *v62 = v27;
    *&v62[4] = 2114;
    *&v62[6] = v28;
    *&v62[14] = 2114;
    *&v62[16] = v29;
    _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] [ResourceManager ID: %{public}d] Requesting asset resource: %{public}@ for asset %{public}@", buf, 0x26u);
  }

  if ((v56[3] & 1) == 0)
  {
    v30 = [*(a1 + 56) _activeAssetResourcesRequest];
    v31 = [MEMORY[0x1E696AD98] numberWithInt:*(v47 + 6)];
    [v30 addObject:v31];
  }

  _Block_object_dispose(&v46, 8);

  objc_destroyWeak(&v45);
  objc_destroyWeak(&v53);
  _Block_object_dispose(&v55, 8);

LABEL_14:
}

void __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_278(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v2 = _AssetVersionFromRequestOptions(*(a1 + 32));
    v3 = objc_opt_class();
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 80) + 8);
    v15 = *(v6 + 40);
    v7 = [v3 _resourceInfoForAsset:v4 resourcesToShare:v5 assetVersion:v2 fulfillOnDemandResources:0 error:&v15];
    objc_storeStrong((v6 + 40), v15);
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) resultHandlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_2_279;
  block[3] = &unk_1E75A5530;
  v14 = *(a1 + 80);
  v9 = *(a1 + 64);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, block);
}

uint64_t __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_2_279(void *a1)
{
  if (!*(*(a1[6] + 8) + 40))
  {
    *(*(a1[7] + 8) + 24) = 0;
  }

  return (*(a1[5] + 16))(a1[5], a1[4] != 0, *(*(a1[7] + 8) + 24));
}

void __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_264(uint64_t a1, double a2)
{
  v3 = 0.99;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = 1.0;
  }

  if (v3 <= a2)
  {
    a2 = v3;
  }

  v4 = fmax(a2, 0.0);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateCombinedProgressWithValue:*(a1 + 32) forRequestIdentifier:*(a1 + 56) networkAccessAllowed:v4];
}

void __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 80) + 8) + 24) = v3 == 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_4;
  aBlock[3] = &unk_1E75A54B8;
  v12 = *(a1 + 32);
  objc_copyWeak(&v21, (a1 + 112));
  v18 = *(a1 + 88);
  v13 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v14 = v4;
  v19 = v5;
  v6 = v3;
  v15 = v6;
  v20 = *(a1 + 96);
  v17 = *(a1 + 72);
  v16 = *(a1 + 56);
  v7 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    v8 = [*(a1 + 64) resultHandlerQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_275;
    v9[3] = &unk_1E75AADE8;
    v10 = v7;
    dispatch_async(v8, v9);
  }

  objc_destroyWeak(&v21);
}

void __106__PHResourceLocalAvailabilityRequest__fetchResourcesForSharingAsset_options_networkAccessAllowed_handler___block_invoke_4(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = v3;

  v5 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 112));
    v7 = [WeakRetained requestLogIdentifier];
    v8 = *(*(*(a1 + 80) + 8) + 24);
    v9 = [*(a1 + 40) originalFilename];
    v10 = [*(a1 + 48) uuid];
    v11 = v10;
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = *(a1 + 56);
    v16 = 134219522;
    v17 = v7;
    v18 = 1026;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    v24 = 2048;
    v25 = v4;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] [ResourceManager ID: %{public}d] Finished request for asset resource: %{public}@ for asset %{public}@. Duration: %.2f. Success: %{public}@. Error: %{public}@", &v16, 0x44u);
  }

  *(*(*(a1 + 96) + 8) + 24) = 1;
  v14 = objc_loadWeakRetained((a1 + 112));
  [v14 _handleCompletionOfAssetResourceDataRequestWithId:*(*(*(a1 + 80) + 8) + 24) error:*(a1 + 56)];

  v15 = *(a1 + 56);
  if (v15)
  {
    objc_storeStrong((*(*(a1 + 104) + 8) + 40), v15);
  }

  else
  {
    (*(*(a1 + 72) + 16))(1.0);
  }

  dispatch_group_leave(*(a1 + 64));
}

- (void)_fetchResourcesUsingPhotoKitForAsset:(id)asset prioritizeLowResolutionResourcesForAnalysis:(BOOL)analysis options:(id)options networkAccessAllowed:(BOOL)allowed handler:(id)handler
{
  allowedCopy = allowed;
  analysisCopy = analysis;
  v101 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x2020000000;
  v92 = 1;
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x2020000000;
  v90[3] = 0;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x3032000000;
  v88[3] = __Block_byref_object_copy__12696;
  v88[4] = __Block_byref_object_dispose__12697;
  v89 = 0;
  objc_initWeak(&location, self);
  v13 = dispatch_group_create();
  mediaType = [assetCopy mediaType];
  if (mediaType == 1)
  {
    dispatch_group_enter(v13);
    v15 = objc_alloc_init(PHImageRequestOptions);
    [(PHImageRequestOptions *)v15 setNetworkAccessAllowed:allowedCopy];
    [(PHImageRequestOptions *)v15 setVersion:0];
    [(PHImageRequestOptions *)v15 setLoadingMode:0x10000];
    if (analysisCopy)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    [(PHImageRequestOptions *)v15 setDeliveryMode:v23];
    if (analysisCopy)
    {
      [(PHImageRequestOptions *)v15 setResizeMode:1];
    }

    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke;
    v84[3] = &unk_1E75A53A8;
    v46 = &v85;
    objc_copyWeak(&v85, &location);
    v86 = allowedCopy;
    v24 = _Block_copy(v84);
    [(PHImageRequestOptions *)v15 setProgressHandler:v24];
    if (allowedCopy)
    {
      v25 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_loadWeakRetained(&location);
        requestLogIdentifier = [v26 requestLogIdentifier];
        *buf = 134218754;
        v94 = v26;
        v95 = 2048;
        v96 = requestLogIdentifier;
        v97 = 2112;
        v98 = assetCopy;
        v99 = 2112;
        v100 = optionsCopy;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest:%p %llu] Requesting download of current image for asset: %@, options: %@", buf, 0x2Au);
      }
    }

    defaultFormatChooser = [MEMORY[0x1E69BF248] defaultFormatChooser];
    masterThumbnailFormat = [defaultFormatChooser masterThumbnailFormat];

    [masterThumbnailFormat sizeWithFallBackSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v30 = v29;
    v32 = v31;
    v33 = +[PHImageManager defaultManager];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_240;
    v76[3] = &unk_1E75A53D0;
    if (!analysisCopy)
    {
      v30 = -1.0;
      v32 = -1.0;
    }

    v83 = allowedCopy;
    v79 = v91;
    v80 = v88;
    v81 = v90;
    objc_copyWeak(&v82, &location);
    v22 = v24;
    v78 = v22;
    v34 = v13;
    v77 = v34;
    [v33 requestImageForAsset:assetCopy targetSize:0 contentMode:v15 options:v76 resultHandler:{v30, v32}];

    treatLivePhotoAsStill = [optionsCopy treatLivePhotoAsStill];
    if (!(treatLivePhotoAsStill & 1 | (([assetCopy canPlayPhotoIris] & 1) == 0)))
    {
      dispatch_group_enter(v34);
      v36 = objc_alloc_init(PHVideoRequestOptions);
      [(PHVideoRequestOptions *)v36 setNetworkAccessAllowed:allowedCopy];
      [(PHVideoRequestOptions *)v36 setVersion:0];
      if (analysisCopy)
      {
        v37 = 3;
      }

      else
      {
        v37 = 1;
      }

      [(PHVideoRequestOptions *)v36 setDeliveryMode:v37, masterThumbnailFormat, &v85];
      [(PHVideoRequestOptions *)v36 setVideoComplementAllowed:1];
      [(PHVideoRequestOptions *)v36 setRestrictToPlayableOnCurrentDevice:1];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_249;
      v73[3] = &unk_1E75A53A8;
      objc_copyWeak(&v74, &location);
      v75 = allowedCopy;
      v38 = _Block_copy(v73);
      [(PHVideoRequestOptions *)v36 setProgressHandler:v38];
      if (allowedCopy)
      {
        v39 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = objc_loadWeakRetained(&location);
          requestLogIdentifier2 = [v40 requestLogIdentifier];
          *buf = 134218498;
          v94 = requestLogIdentifier2;
          v95 = 2112;
          v96 = assetCopy;
          v97 = 2112;
          v98 = optionsCopy;
          _os_log_impl(&dword_19C86F000, v39, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Requesting download of current video for asset: %@, options: %@", buf, 0x20u);
        }
      }

      v42 = +[PHImageManager defaultManager];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_253;
      v65[3] = &unk_1E75A53F8;
      v72 = allowedCopy;
      v68 = v91;
      v69 = v88;
      v70 = v90;
      objc_copyWeak(&v71, &location);
      v43 = v38;
      v67 = v43;
      v66 = v34;
      [v42 requestAVAssetForVideo:assetCopy options:v36 resultHandler:v65];

      objc_destroyWeak(&v71);
      objc_destroyWeak(&v74);
    }

    objc_destroyWeak(&v82);
  }

  else
  {
    if (mediaType != 2)
    {
      goto LABEL_33;
    }

    dispatch_group_enter(v13);
    v15 = objc_alloc_init(PHVideoRequestOptions);
    [(PHImageRequestOptions *)v15 setNetworkAccessAllowed:allowedCopy];
    [(PHImageRequestOptions *)v15 setVersion:0];
    if (analysisCopy)
    {
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }

    [(PHImageRequestOptions *)v15 setDeliveryMode:v16];
    [(PHImageRequestOptions *)v15 setRestrictToPlayableOnCurrentDevice:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_255;
    aBlock[3] = &unk_1E75A53A8;
    v46 = &v63;
    objc_copyWeak(&v63, &location);
    v64 = allowedCopy;
    v17 = _Block_copy(aBlock);
    [(PHImageRequestOptions *)v15 setProgressHandler:v17];
    if (allowedCopy)
    {
      v18 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_loadWeakRetained(&location);
        requestLogIdentifier3 = [v19 requestLogIdentifier];
        *buf = 134218498;
        v94 = requestLogIdentifier3;
        v95 = 2112;
        v96 = assetCopy;
        v97 = 2112;
        v98 = optionsCopy;
        _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Requesting download of current video for asset: %@, options: %@", buf, 0x20u);
      }
    }

    v21 = +[PHImageManager defaultManager];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_256;
    v54[3] = &unk_1E75A53F8;
    v61 = allowedCopy;
    v57 = v91;
    v58 = v88;
    v59 = v90;
    objc_copyWeak(&v60, &location);
    v22 = v17;
    v56 = v22;
    v55 = v13;
    [v21 requestAVAssetForVideo:assetCopy options:v15 resultHandler:v54];

    objc_destroyWeak(&v60);
  }

  objc_destroyWeak(v46);
LABEL_33:
  if (handlerCopy)
  {
    resultHandlerQueue = [optionsCopy resultHandlerQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_257;
    block[3] = &unk_1E75A5420;
    v50 = handlerCopy;
    v51 = v91;
    v52 = v90;
    v53 = v88;
    dispatch_group_notify(v13, resultHandlerQueue, block);
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(v88, 8);

  _Block_object_dispose(v90, 8);
  _Block_object_dispose(v91, 8);
}

void __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke(uint64_t a1, double a2, uint64_t a3, _BYTE *a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCombinedProgressWithValue:@"ImageCurrentVersion" forRequestIdentifier:*(a1 + 40) networkAccessAllowed:a2];

  v8 = objc_loadWeakRetained((a1 + 32));
  if (!v8 || (v9 = v8, v10 = objc_loadWeakRetained((a1 + 32)), v11 = [v10 _isDownloadCancelled], v10, v9, v11))
  {
    *a4 = 1;
  }
}

void __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_240(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"PHImageFileURLKey"];
  if (!v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (*(a1 + 80) == 1)
    {
      v6 = [v4 objectForKeyedSubscript:@"PHImageErrorKey"];
      if (v6)
      {
        v7 = 4;
      }

      else
      {
        v7 = 3;
      }

      v8 = _PHResourceLocalAvailabilityRequestError(v7, v6, 0);
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

  v11 = [v4 objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  if (*(a1 + 80) == 1)
  {
    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v15 = [WeakRetained requestLogIdentifier];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v16 = @"Y";
      }

      else
      {
        v16 = @"N";
      }

      v17 = *(*(*(a1 + 56) + 8) + 40);
      v18 = _PHResourceLocalAvailabilityRequestResourceAvailabilityDescription(*(*(*(a1 + 64) + 8) + 24));
      *v21 = 134218754;
      *&v21[4] = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Request for current image finished with success: %@, error: %@, availability: %@", v21, 0x2Au);
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v21[0] = 0;
    v19 = *(a1 + 40);
    v20 = [v4 objectForKeyedSubscript:{@"PHImageErrorKey", *v21}];
    (*(v19 + 16))(v19, v20, v21, v4, 1.0);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_249(uint64_t a1, double a2, uint64_t a3, _BYTE *a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCombinedProgressWithValue:@"VideoCurrentVersion" forRequestIdentifier:*(a1 + 40) networkAccessAllowed:a2];

  v8 = objc_loadWeakRetained((a1 + 32));
  if (!v8 || (v9 = v8, v10 = objc_loadWeakRetained((a1 + 32)), v11 = [v10 _isDownloadCancelled], v10, v9, v11))
  {
    *a4 = 1;
  }
}

void __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_253(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (*(a1 + 80) == 1)
    {
      v11 = [v9 objectForKeyedSubscript:@"PHImageErrorKey"];
      if (v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 3;
      }

      v13 = _PHResourceLocalAvailabilityRequestError(v12, v11, 0);
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  v16 = [v10 objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  if (*(a1 + 80) == 1)
  {
    v18 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v20 = [WeakRetained requestLogIdentifier];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v21 = @"Y";
      }

      else
      {
        v21 = @"N";
      }

      v22 = *(*(*(a1 + 56) + 8) + 40);
      v23 = _PHResourceLocalAvailabilityRequestResourceAvailabilityDescription(*(*(*(a1 + 64) + 8) + 24));
      *v26 = 134218754;
      *&v26[4] = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Request for current video finished with success: %@, error: %@, availability: %@", v26, 0x2Au);
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v26[0] = 0;
    v24 = *(a1 + 40);
    v25 = [v10 objectForKeyedSubscript:{@"PHImageErrorKey", *v26}];
    (*(v24 + 16))(v24, v25, v26, v10, 1.0);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_255(uint64_t a1, double a2, uint64_t a3, _BYTE *a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCombinedProgressWithValue:@"VideoCurrentVersion" forRequestIdentifier:*(a1 + 40) networkAccessAllowed:a2];

  v8 = objc_loadWeakRetained((a1 + 32));
  if (!v8 || (v9 = v8, v10 = objc_loadWeakRetained((a1 + 32)), v11 = [v10 _isDownloadCancelled], v10, v9, v11))
  {
    *a4 = 1;
  }
}

void __156__PHResourceLocalAvailabilityRequest__fetchResourcesUsingPhotoKitForAsset_prioritizeLowResolutionResourcesForAnalysis_options_networkAccessAllowed_handler___block_invoke_256(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (*(a1 + 80) == 1)
    {
      v11 = [v9 objectForKeyedSubscript:@"PHImageErrorKey"];
      if (v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 3;
      }

      v13 = _PHResourceLocalAvailabilityRequestError(v12, v11, 0);
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  v16 = [v10 objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  if (*(a1 + 80) == 1)
  {
    v18 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v20 = [WeakRetained requestLogIdentifier];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v21 = @"Y";
      }

      else
      {
        v21 = @"N";
      }

      v22 = *(*(*(a1 + 56) + 8) + 40);
      v23 = _PHResourceLocalAvailabilityRequestResourceAvailabilityDescription(*(*(*(a1 + 64) + 8) + 24));
      *v26 = 134218754;
      *&v26[4] = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Request for current video finished with success: %@, error: %@, availability: %@", v26, 0x2Au);
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v26[0] = 0;
    v24 = *(a1 + 40);
    v25 = [v10 objectForKeyedSubscript:{@"PHImageErrorKey", *v26}];
    (*(v24 + 16))(v24, v25, v26, v10, 1.0);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_fetchResourcesWithOptions:(id)options networkAccessAllowed:(BOOL)allowed handler:(id)handler
{
  allowedCopy = allowed;
  v33 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (PFOSVariantHasInternalDiagnostics())
  {
    v10 = CFPreferencesCopyAppValue(@"PHRootSettings", @"com.apple.mobileslideshow");
    v11 = [v10 objectForKeyedSubscript:@"archive"];
    v12 = [v11 objectForKeyedSubscript:@"resourceDownloadSettings"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"simulateDownload"];
      bOOLValue = [v14 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {

        goto LABEL_14;
      }

      v16 = [v13 objectForKeyedSubscript:@"simulateDownloadFailure"];
      bOOLValue2 = [v16 BOOLValue];
      v18 = 1;
    }

    else
    {
      CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
      v19 = CFPreferencesCopyAppValue(@"SimulateDownloads", @"com.apple.mobileslideshow");
      v16 = v19;
      v30 = allowedCopy;
      if (v19)
      {
        lowercaseString = [v19 lowercaseString];
        v18 = [lowercaseString isEqualToString:@"no"] ^ 1;
      }

      else
      {
        v18 = 0;
      }

      lowercaseString2 = [v16 lowercaseString];
      bOOLValue2 = [lowercaseString2 isEqualToString:@"failure"];

      allowedCopy = v30;
    }

    if (v18)
    {
      v22 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        requestLogIdentifier = self->_requestLogIdentifier;
        *buf = 134217984;
        v32 = requestLogIdentifier;
        _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Simulating download", buf, 0xCu);
      }

      v24 = arc4random_uniform(0x64u) / 20.0 + 5.0;
      resultHandlerQueue = [optionsCopy resultHandlerQueue];
      [(PHResourceLocalAvailabilityRequest *)self _simulateFetchResourcesWithDuration:bOOLValue2 ^ 1u success:allowedCopy networkAccessAllowed:resultHandlerQueue queue:handlerCopy handler:v24];
      goto LABEL_24;
    }
  }

LABEL_14:
  requestType = [(PHResourceLocalAvailabilityRequest *)self requestType];
  if (requestType > 1)
  {
    if (requestType == 2)
    {
      resultHandlerQueue = [(PHResourceLocalAvailabilityRequest *)self asset];
      [(PHResourceLocalAvailabilityRequest *)self _fetchResourcesForDuplicatingAsset:resultHandlerQueue options:optionsCopy networkAccessAllowed:allowedCopy handler:handlerCopy];
      goto LABEL_24;
    }

    if (requestType != 3)
    {
      goto LABEL_25;
    }

    resultHandlerQueue = [(PHResourceLocalAvailabilityRequest *)self asset];
    selfCopy2 = self;
    v28 = resultHandlerQueue;
    v29 = 1;
LABEL_22:
    [(PHResourceLocalAvailabilityRequest *)selfCopy2 _fetchResourcesUsingPhotoKitForAsset:v28 prioritizeLowResolutionResourcesForAnalysis:v29 options:optionsCopy networkAccessAllowed:allowedCopy handler:handlerCopy];
    goto LABEL_24;
  }

  if (!requestType)
  {
    resultHandlerQueue = [(PHResourceLocalAvailabilityRequest *)self asset];
    selfCopy2 = self;
    v28 = resultHandlerQueue;
    v29 = 0;
    goto LABEL_22;
  }

  if (requestType == 1)
  {
    resultHandlerQueue = [(PHResourceLocalAvailabilityRequest *)self asset];
    [(PHResourceLocalAvailabilityRequest *)self _fetchResourcesForSharingAsset:resultHandlerQueue options:optionsCopy networkAccessAllowed:allowedCopy handler:handlerCopy];
LABEL_24:
  }

LABEL_25:
}

- (void)retrieveRequiredResourcesWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = [handlerCopy copy];
  downloadCompletionHandler = self->_downloadCompletionHandler;
  self->_downloadCompletionHandler = v8;

  objc_initWeak(&location, self);
  if (optionsCopy)
  {
    v10 = optionsCopy;
  }

  else
  {
    v10 = objc_alloc_init(PHResourceLocalAvailabilityRequestOptions);
  }

  v11 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__PHResourceLocalAvailabilityRequest_retrieveRequiredResourcesWithOptions_completionHandler___block_invoke;
  v13[3] = &unk_1E75A5378;
  objc_copyWeak(&v15, &location);
  v12 = v11;
  v14 = v12;
  [(PHResourceLocalAvailabilityRequest *)self _fetchResourcesWithOptions:v12 networkAccessAllowed:1 handler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __93__PHResourceLocalAvailabilityRequest_retrieveRequiredResourcesWithOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _didFinishDownloadWithSuccess:a2 resourceInfo:v8 error:v9];
  }

  else
  {
    v11 = [*(a1 + 32) resultHandlerQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93__PHResourceLocalAvailabilityRequest_retrieveRequiredResourcesWithOptions_completionHandler___block_invoke_2;
    v12[3] = &unk_1E75A5350;
    objc_copyWeak(&v15, (a1 + 40));
    v16 = a2;
    v13 = v8;
    v14 = v9;
    dispatch_async(v11, v12);

    objc_destroyWeak(&v15);
  }
}

void __93__PHResourceLocalAvailabilityRequest_retrieveRequiredResourcesWithOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didFinishDownloadWithSuccess:*(a1 + 56) resourceInfo:*(a1 + 32) error:*(a1 + 40)];
}

- (void)fetchResourceAvailabilityWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    if (optionsCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = objc_alloc_init(PHResourceLocalAvailabilityRequestOptions);
    goto LABEL_6;
  }

  if (!optionsCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = optionsCopy;
LABEL_6:
  v11 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__PHResourceLocalAvailabilityRequest_fetchResourceAvailabilityWithOptions_completionHandler___block_invoke;
  v13[3] = &unk_1E75A5328;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(PHResourceLocalAvailabilityRequest *)self _fetchResourcesWithOptions:v11 networkAccessAllowed:0 handler:v13];
}

- (PHResourceLocalAvailabilityRequest)initWithAsset:(id)asset requestType:(int64_t)type
{
  v32 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (type == 1 && ([assetCopy mediaType] - 1) >= 2)
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = assetCopy;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Invalid asset passed to initializer: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = PHResourceLocalAvailabilityRequest;
    v9 = [(PHResourceLocalAvailabilityRequest *)&v25 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_asset, asset);
      v10->_requestType = type;
      v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
      progress = v10->_progress;
      v10->_progress = v11;

      array = [MEMORY[0x1E695DF70] array];
      activeAssetResourcesRequest = v10->__activeAssetResourcesRequest;
      v10->__activeAssetResourcesRequest = array;

      objc_initWeak(&location, v10);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __64__PHResourceLocalAvailabilityRequest_initWithAsset_requestType___block_invoke;
      v22[3] = &unk_1E75A9A90;
      objc_copyWeak(&v23, &location);
      [(NSProgress *)v10->_progress setCancellationHandler:v22];
      v10->_requestLogIdentifier = atomic_fetch_add(&_nextRequestID, 1uLL);
      v15 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        requestLogIdentifier = v10->_requestLogIdentifier;
        uuid = [assetCopy uuid];
        *buf = 134218498;
        v27 = requestLogIdentifier;
        v28 = 2048;
        v29 = requestLogIdentifier;
        v30 = 2114;
        v31 = uuid;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest: %llu] Created PHResourceLocalAvailabilityRequest with request ID: %llu for asset %{public}@", buf, 0x20u);
      }

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

void __64__PHResourceLocalAvailabilityRequest_initWithAsset_requestType___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained cancelRetrievalRequest];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PHResourceLocalAvailabilityRequest_initWithAsset_requestType___block_invoke_2;
    block[3] = &unk_1E75A9A90;
    objc_copyWeak(&v4, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v4);
  }
}

void __64__PHResourceLocalAvailabilityRequest_initWithAsset_requestType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelRetrievalRequest];
}

- (PHResourceLocalAvailabilityRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:186 description:{@"%s is not available as initializer", "-[PHResourceLocalAvailabilityRequest init]"}];

  abort();
}

+ (id)resourceInfoForSharingAsset:(id)asset asUnmodifiedOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  v36 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1890 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (([assetCopy mediaType] - 1) >= 2)
  {
    v24 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = assetCopy;
      _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Returning nil for invalid asset: %@", buf, 0xCu);
    }

    if (error)
    {
      _PHResourceLocalAvailabilityRequestError(0, 0, 0);
      *error = v25 = 0;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] now];
    v31 = 0;
    v11 = [self _resourcesToShareForAsset:assetCopy asUnmodifiedOriginal:originalCopy error:&v31];
    v12 = v31;
    v13 = [MEMORY[0x1E695DF00] now];
    [v13 timeIntervalSinceDate:v10];
    v15 = v14;
    if ([v11 count])
    {
      if (originalCopy)
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      v17 = [MEMORY[0x1E695DF00] now];
      v30 = v12;
      v18 = [self _resourceInfoForAsset:assetCopy resourcesToShare:v11 assetVersion:v16 fulfillOnDemandResources:1 error:&v30];
      v19 = v30;

      v20 = [MEMORY[0x1E695DF00] now];
      [v20 timeIntervalSinceDate:v17];
      v22 = v21;
      v23 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v33 = v15;
        v34 = 2048;
        v35 = v22;
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest] Resources to share duration %.5f, Resource info duration: %.5f", buf, 0x16u);
      }

      v12 = v19;
    }

    else
    {
      v17 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v33 = assetCopy;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Found no resources to share for asset: %@ error: %@", buf, 0x16u);
      }

      v18 = 0;
    }

    if (error && v12)
    {
      v26 = v12;
      *error = v12;
    }

    if (v12)
    {
      v27 = 0;
    }

    else
    {
      v27 = v18;
    }

    v25 = v27;
  }

  return v25;
}

+ (id)indexesForAssetsWithoutThumbnails:(id)thumbnails requestType:(int64_t)type
{
  thumbnailsCopy = thumbnails;
  if (!thumbnailsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1871 description:{@"Invalid parameter not satisfying: %@", @"assets"}];
  }

  if (type != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1872 description:{@"Invalid parameter not satisfying: %@", @"requestType == PHResourceRequestTypeForSharing"}];
  }

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PHResourceLocalAvailabilityRequest_indexesForAssetsWithoutThumbnails_requestType___block_invoke;
  v13[3] = &unk_1E75A6FC8;
  v9 = indexSet;
  v14 = v9;
  [thumbnailsCopy enumerateObjectsUsingBlock:v13];

  return v9;
}

void __84__PHResourceLocalAvailabilityRequest_indexesForAssetsWithoutThumbnails_requestType___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (([v5 mediaType] - 1) >= 2)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Skipping invalid asset: %@", &v7, 0xCu);
    }
  }

  else if ([v5 thumbnailIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) addIndex:a3];
  }
}

+ (id)indexesForAssetsRequiringResourceRetrieval:(id)retrieval requestType:(int64_t)type options:(id)options
{
  retrievalCopy = retrieval;
  optionsCopy = options;
  if (!retrievalCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1848 description:{@"Invalid parameter not satisfying: %@", @"assets"}];
  }

  if (type != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1849 description:{@"Invalid parameter not satisfying: %@", @"requestType == PHResourceRequestTypeForSharing"}];
  }

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__PHResourceLocalAvailabilityRequest_indexesForAssetsRequiringResourceRetrieval_requestType_options___block_invoke;
  v19[3] = &unk_1E75A56C0;
  selfCopy = self;
  v20 = optionsCopy;
  v12 = indexSet;
  v21 = v12;
  v13 = optionsCopy;
  [retrievalCopy enumerateObjectsUsingBlock:v19];
  v14 = v21;
  v15 = v12;

  return v12;
}

void __101__PHResourceLocalAvailabilityRequest_indexesForAssetsRequiringResourceRetrieval_requestType_options___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (([v5 mediaType] - 1) >= 2)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Skipping invalid asset: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [*(a1 + 48) _resourcesToShareForAsset:v5 options:*(a1 + 32) error:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __101__PHResourceLocalAvailabilityRequest_indexesForAssetsRequiringResourceRetrieval_requestType_options___block_invoke_386;
    v7[3] = &unk_1E75A5698;
    v8 = *(a1 + 40);
    v9 = a3;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

uint64_t __101__PHResourceLocalAvailabilityRequest_indexesForAssetsRequiringResourceRetrieval_requestType_options___block_invoke_386(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = AssetResourceIsReallyLocallyAvailable(a3);
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) addIndex:*(a1 + 40)];
    *a4 = 1;
  }

  return result;
}

+ (id)_resourceInfoForAsset:(id)asset resourcesToShare:(id)share assetVersion:(int64_t)version fulfillOnDemandResources:(BOOL)resources error:(id *)error
{
  assetCopy = asset;
  shareCopy = share;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__12696;
  v34 = __Block_byref_object_dispose__12697;
  v35 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __121__PHResourceLocalAvailabilityRequest__resourceInfoForAsset_resourcesToShare_assetVersion_fulfillOnDemandResources_error___block_invoke;
  v22[3] = &unk_1E75A5648;
  resourcesCopy = resources;
  v16 = assetCopy;
  v23 = v16;
  versionCopy = version;
  v17 = dictionary;
  v24 = v17;
  v25 = &v30;
  v27 = a2;
  selfCopy = self;
  [shareCopy enumerateKeysAndObjectsUsingBlock:v22];
  v18 = v31[5];
  if (error && v18)
  {
    *error = v18;
    v18 = v31[5];
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19;

  _Block_object_dispose(&v30, 8);

  return v20;
}

void __121__PHResourceLocalAvailabilityRequest__resourceInfoForAsset_resourcesToShare_assetVersion_fulfillOnDemandResources_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v53 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 80) != 1)
  {
    goto LABEL_14;
  }

  v8 = v6;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__12696;
  v58 = __Block_byref_object_dispose__12697;
  v59 = 0;
  v9 = [v8 privateFileLoader];
  v10 = v9 == 0;

  if (!v10)
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = v8;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest] Will fulfill on-demand resource: %@", buf, 0xCu);
    }

    v12 = dispatch_semaphore_create(0);
    v13 = objc_alloc_init(PHAssetResourceRequestOptions);
    [(PHAssetResourceRequestOptions *)v13 setNetworkAccessAllowed:0];
    v14 = +[PHAssetResourceManager defaultManager];
    *&v60 = MEMORY[0x1E69E9820];
    *(&v60 + 1) = 3221225472;
    v61 = ___FulfillOnDemandResource_block_invoke_2;
    v62 = &unk_1E75A5710;
    v15 = v8;
    v63 = v15;
    v65 = &v54;
    v16 = v12;
    v64 = v16;
    [v14 requestDataForAssetResource:v15 options:v13 dataReceivedHandler:&__block_literal_global_635 completionHandler:&v60];

    v17 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v16, v17))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Timed out resolving on-demand resource: %@", v15];
      v19 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v67 = v18;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] %@", buf, 0xCu);
      }

      v20 = _PHResourceLocalAvailabilityRequestError(1, 0, v18);
      v21 = v55[5];
      v55[5] = v20;
    }
  }

  v22 = v55[5];
  if (!v22)
  {
    _Block_object_dispose(&v54, 8);

LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  v23 = v22;
  v24 = v55[5] == 0;
  _Block_object_dispose(&v54, 8);

  v25 = v22;
  v26 = v25;
  if (!v24)
  {
    v27 = *(*(a1 + 48) + 8);
    v26 = v25;
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
    goto LABEL_42;
  }

LABEL_15:
  v29 = [v53 integerValue];
  v30 = *(a1 + 56);
  v31 = *(a1 + 32);
  v32 = v31;
  if (v29 - 19 >= 4)
  {
    if (v30 != 1)
    {
      v28 = 0;
      if (v29 <= 0x11)
      {
        if (((1 << v29) & 0x235C0) != 0)
        {
          v28 = @"PHResourceLocalAvailabilityRequestVideoURLKey";
        }

        else if (((1 << v29) & 0x3C) != 0)
        {
          v28 = @"PHResourceLocalAvailabilityRequestPhotoURLKey";
        }

        else if (((1 << v29) & 0x10002) != 0)
        {
          v47 = [v31 mediaType];
          v28 = @"PHResourceLocalAvailabilityRequestVideoURLKey";
          if (v47 != 2)
          {
            if (v47 == 1)
            {
              if (((v30 != 2) & [v32 canPlayLoopingVideo]) == 0)
              {
                v28 = @"PHResourceLocalAvailabilityRequestPhotoURLKey";
              }
            }

            else
            {
              v48 = [MEMORY[0x1E696AAA8] currentHandler];
              v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHResourceLocalAvailabilityRequestResourceInfoKey _DictionaryKeyForResourceType(_PHResourceLocalAvailabilityRequestResourceType, PHAsset *__strong, _PHResourceLocalAvailabilityRequestAssetVersion)"}];
              [v48 handleFailureInFunction:v49 file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1702 description:@"Code which should be unreachable has been reached"];

              v28 = 0;
            }
          }
        }
      }

      goto LABEL_32;
    }

    v33 = [v31 mediaType];
    if (v33 == 2)
    {
      v34 = +[PHResourceLocalAvailabilityRequest resourceInfoKeysForResourceTypesForVideos];
    }

    else
    {
      if (v33 != 1)
      {
        v35 = 0;
        goto LABEL_29;
      }

      v34 = +[PHResourceLocalAvailabilityRequest resourceInfoKeysForResourceTypesForPhotos];
    }

    v35 = v34;
LABEL_29:
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
    v28 = [v35 objectForKeyedSubscript:v36];

    if (!v28)
    {
      v50 = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PHResourceLocalAvailabilityRequestResourceInfoKey _DictionaryKeyForResourceType(_PHResourceLocalAvailabilityRequestResourceType, PHAsset *__strong, _PHResourceLocalAvailabilityRequestAssetVersion)"}];
      [v50 handleFailureInFunction:v51 file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1681 description:{@"Did not find a PHResourceLocalAvailabilityRequestResourceInfoKey for _PHResourceLocalAvailabilityRequestResourceType: %lu", v29}];
    }

    goto LABEL_32;
  }

  v28 = off_1E75A5748[v29 - 19];
LABEL_32:

  v37 = +[PHResourceLocalAvailabilityRequest utiKeysForURLKeys];
  v38 = [v37 objectForKeyedSubscript:v28];

  v39 = [v7 privateFileURL];
  v40 = [v7 uniformTypeIdentifier];
  if (v28 && v39)
  {
    [*(a1 + 40) setObject:v39 forKeyedSubscript:v28];
  }

  if (v38 && v40)
  {
    [*(a1 + 40) setObject:v40 forKeyedSubscript:v38];
  }

  else
  {
    v41 = [MEMORY[0x1E6994B90] descriptionForResourceType:{objc_msgSend(v53, "integerValue")}];
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create resource info entry for asset:%@, resource:%@ (%@), url key:%@, url:%@, uti key:%@, uti:%@", *(a1 + 32), v41, v53, v28, v39, v38, v40];
    v43 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v60) = 138412290;
      *(&v60 + 4) = v42;
      _os_log_impl(&dword_19C86F000, v43, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] %@", &v60, 0xCu);
    }

    v44 = _PHResourceLocalAvailabilityRequestError(2, 0, v42);
    v45 = *(*(a1 + 48) + 8);
    v46 = *(v45 + 40);
    *(v45 + 40) = v44;
  }

LABEL_42:
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

+ (id)utiKeysForURLKeys
{
  if (utiKeysForURLKeys_onceToken != -1)
  {
    dispatch_once(&utiKeysForURLKeys_onceToken, &__block_literal_global_364);
  }

  v3 = utiKeysForURLKeys_utiKeysForURLKeys;

  return v3;
}

void __55__PHResourceLocalAvailabilityRequest_utiKeysForURLKeys__block_invoke()
{
  v3[15] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHResourceLocalAvailabilityRequestPhotoURLKey";
  v2[1] = @"PHResourceLocalAvailabilityRequestVideoURLKey";
  v3[0] = @"PHResourceLocalAvailabilityRequestPhotoUTIKey";
  v3[1] = @"PHResourceLocalAvailabilityRequestVideoUTIKey";
  v2[2] = @"PHResourceLocalAvailabilityRequestAdjustmentDataURLKey";
  v2[3] = @"PHResourceLocalAvailabilityRequestAdjustmentDataBlobURLKey";
  v3[2] = @"PHResourceLocalAvailabilityRequestAdjustmentDataUTIKey";
  v3[3] = @"PHResourceLocalAvailabilityRequestAdjustmentDataBlobUTIKey";
  v2[4] = @"PHResourceLocalAvailabilityRequestOriginalAdjustmentDataURLKey";
  v2[5] = @"PHResourceLocalAvailabilityRequestAdjustmentSecondaryDataURLKey";
  v3[4] = @"PHResourceLocalAvailabilityRequestOriginalAdjustmentDataUTIKey";
  v3[5] = @"PHResourceLocalAvailabilityRequestAdjustmentSecondaryDataUTIKey";
  v2[6] = @"PHResourceLocalAvailabilityRequestAlternatePhotoURLKey";
  v2[7] = @"PHResourceLocalAvailabilityRequestFullSizePhotoURLKey";
  v3[6] = @"PHResourceLocalAvailabilityRequestAlternatePhotoUTIKey";
  v3[7] = @"PHResourceLocalAvailabilityRequestFullSizePhotoUTIKey";
  v2[8] = @"PHResourceLocalAvailabilityRequestFullSizeVideoURLKey";
  v2[9] = @"PHResourceLocalAvailabilityRequestAdjustmentBaseFullSizePhotoURLKey";
  v3[8] = @"PHResourceLocalAvailabilityRequestFullSizeVideoUTIKey";
  v3[9] = @"PHResourceLocalAvailabilityRequestAdjustmentBaseFullSizePhotoUTIKey";
  v2[10] = @"PHResourceLocalAvailabilityRequestAdjustmentBaseVideoURLKey";
  v2[11] = @"PHResourceLocalAvailabilityRequestAdjustmentBasePairedVideoURLKey";
  v3[10] = @"PHResourceLocalAvailabilityRequestAdjustmentBaseVideoUTIKey";
  v3[11] = @"PHResourceLocalAvailabilityRequestAdjustmentBasePairedVideoUTIKey";
  v2[12] = @"PHResourceLocalAvailabilityRequestSpatialOvercapturePhotoURLKey";
  v2[13] = @"PHResourceLocalAvailabilityRequestSpatialOvercaptureVideoURLKey";
  v3[12] = @"PHResourceLocalAvailabilityRequestSpatialOvercapturePhotoUTIKey";
  v3[13] = @"PHResourceLocalAvailabilityRequestSpatialOvercaptureVideoUTIKey";
  v2[14] = @"PHResourceLocalAvailabilityRequestSpatialOvercapturePairedVideoURLKey";
  v3[14] = @"PHResourceLocalAvailabilityRequestSpatialOvercapturePairedVideoUTIKey";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:15];
  v1 = utiKeysForURLKeys_utiKeysForURLKeys;
  utiKeysForURLKeys_utiKeysForURLKeys = v0;
}

+ (id)resourceInfoKeysForResourceTypesForVideos
{
  if (resourceInfoKeysForResourceTypesForVideos_onceToken != -1)
  {
    dispatch_once(&resourceInfoKeysForResourceTypesForVideos_onceToken, &__block_literal_global_362);
  }

  v3 = resourceInfoKeysForResourceTypesForVideos_videoResourceInfoKeys;

  return v3;
}

void __79__PHResourceLocalAvailabilityRequest_resourceInfoKeysForResourceTypesForVideos__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F102C818;
  v2[1] = &unk_1F102C8F0;
  v3[0] = @"PHResourceLocalAvailabilityRequestVideoURLKey";
  v3[1] = @"PHResourceLocalAvailabilityRequestFullSizeVideoURLKey";
  v2[2] = &unk_1F102C908;
  v2[3] = &unk_1F102C878;
  v3[2] = @"PHResourceLocalAvailabilityRequestAdjustmentBaseVideoURLKey";
  v3[3] = @"PHResourceLocalAvailabilityRequestSpatialOvercaptureVideoURLKey";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = resourceInfoKeysForResourceTypesForVideos_videoResourceInfoKeys;
  resourceInfoKeysForResourceTypesForVideos_videoResourceInfoKeys = v0;
}

+ (id)resourceInfoKeysForResourceTypesForPhotos
{
  if (resourceInfoKeysForResourceTypesForPhotos_onceToken != -1)
  {
    dispatch_once(&resourceInfoKeysForResourceTypesForPhotos_onceToken, &__block_literal_global_360);
  }

  v3 = resourceInfoKeysForResourceTypesForPhotos_photoResourceInfoKeys;

  return v3;
}

void __79__PHResourceLocalAvailabilityRequest_resourceInfoKeysForResourceTypesForPhotos__block_invoke()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F102C818;
  v2[1] = &unk_1F102C830;
  v3[0] = @"PHResourceLocalAvailabilityRequestPhotoURLKey";
  v3[1] = @"PHResourceLocalAvailabilityRequestAlternatePhotoURLKey";
  v2[2] = &unk_1F102C848;
  v2[3] = &unk_1F102C860;
  v3[2] = @"PHResourceLocalAvailabilityRequestFullSizePhotoURLKey";
  v3[3] = @"PHResourceLocalAvailabilityRequestAdjustmentBaseFullSizePhotoURLKey";
  v2[4] = &unk_1F102C878;
  v2[5] = &unk_1F102C890;
  v3[4] = @"PHResourceLocalAvailabilityRequestSpatialOvercapturePhotoURLKey";
  v3[5] = @"PHResourceLocalAvailabilityRequestVideoURLKey";
  v2[6] = &unk_1F102C8A8;
  v2[7] = &unk_1F102C8C0;
  v3[6] = @"PHResourceLocalAvailabilityRequestFullSizeVideoURLKey";
  v3[7] = @"PHResourceLocalAvailabilityRequestAdjustmentBasePairedVideoURLKey";
  v2[8] = &unk_1F102C8D8;
  v3[8] = @"PHResourceLocalAvailabilityRequestSpatialOvercapturePairedVideoURLKey";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:9];
  v1 = resourceInfoKeysForResourceTypesForPhotos_photoResourceInfoKeys;
  resourceInfoKeysForResourceTypesForPhotos_photoResourceInfoKeys = v0;
}

+ (id)_singularResourcesToShareForAsset:(id)asset fromAvailableResources:(id)resources options:(id)options useOriginalResources:(BOOL)originalResources knownUnsupported:(BOOL)unsupported error:(id *)error
{
  unsupportedCopy = unsupported;
  originalResourcesCopy = originalResources;
  v76 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourcesCopy = resources;
  optionsCopy = options;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  includeOriginalResourcesOnly = [optionsCopy includeOriginalResourcesOnly];
  dontAllowRAW = [optionsCopy dontAllowRAW];
  treatLivePhotoAsStill = [optionsCopy treatLivePhotoAsStill];
  if (includeOriginalResourcesOnly)
  {
    v20 = 0;
    dontAllowRAW = 0;
    v62 = 0;
    originalResourcesCopy = 1;
  }

  else
  {
    v20 = treatLivePhotoAsStill;
    v62 = unsupportedCopy;
  }

  mediaType = [assetCopy mediaType];
  v22 = 0;
  v63 = resourcesCopy;
  if (mediaType > 1)
  {
    if (mediaType == 2)
    {
      v22 = [resourcesCopy objectForKeyedSubscript:&unk_1F102C8F0];
      v30 = [resourcesCopy objectForKeyedSubscript:&unk_1F102C818];

      if (v30)
      {
        v31 = v62;
      }

      else
      {
        v31 = 1;
      }

      if ((v31 & 1) == 0 && (((originalResourcesCopy | [assetCopy hasAdjustments] ^ 1) & 1) != 0 || objc_msgSend(assetCopy, "isHighFrameRateVideo") && !v22))
      {
        v36 = [resourcesCopy objectForKeyedSubscript:&unk_1F102C818];
        [dictionary setObject:v36 forKeyedSubscript:&unk_1F102C818];

        goto LABEL_43;
      }

      if (v22)
      {
        v32 = &unk_1F102C8F0;
      }

      else
      {
        v38 = [resourcesCopy objectForKeyedSubscript:&unk_1F102C968];
        if (v38)
        {
          v22 = v38;
          v32 = &unk_1F102C968;
        }

        else
        {
          v40 = [resourcesCopy objectForKeyedSubscript:&unk_1F102C980];
          if (v40)
          {
            v22 = v40;
            v32 = &unk_1F102C980;
          }

          else
          {
            v42 = [resourcesCopy objectForKeyedSubscript:&unk_1F102C998];
            if (!v42)
            {
              if (((originalResourcesCopy | [assetCopy hasAdjustments] ^ 1) & 1) == 0 && !objc_msgSend(assetCopy, "isHighFrameRateVideo"))
              {
                v59 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138413314;
                  v66 = assetCopy;
                  v67 = 2112;
                  v68 = resourcesCopy;
                  v69 = 2112;
                  v70 = optionsCopy;
                  v71 = 1024;
                  *v72 = 0;
                  *&v72[4] = 1024;
                  *&v72[6] = v62;
                  _os_log_impl(&dword_19C86F000, v59, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Found no video resource to share for asset: %@, resources: %@, options: %@, useOriginalResources: %d, knownUnsupported: %d", buf, 0x2Cu);
                }

                v23 = _PHResourceLocalAvailabilityRequestError(0, 0, 0);
                v22 = 0;
                v28 = v61;
                goto LABEL_68;
              }

              v53 = PLPhotoKitGetLog();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413314;
                v66 = assetCopy;
                v67 = 2112;
                v68 = resourcesCopy;
                v69 = 2112;
                v70 = optionsCopy;
                v71 = 1024;
                *v72 = originalResourcesCopy;
                *&v72[4] = 1024;
                *&v72[6] = v62;
                _os_log_impl(&dword_19C86F000, v53, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest] Falling back to possible unsupported original resource for asset: %@, resources: %@, options: %@, useOriginalResources: %d, knownUnsupported: %d", buf, 0x2Cu);
              }

              currentHandler = [resourcesCopy objectForKeyedSubscript:&unk_1F102C818];
              [dictionary setObject:currentHandler forKeyedSubscript:&unk_1F102C818];
              goto LABEL_16;
            }

            v22 = v42;
            v32 = &unk_1F102C998;
          }
        }
      }

      [dictionary setObject:v22 forKeyedSubscript:v32];
      goto LABEL_43;
    }

    v23 = 0;
    if (mediaType != 3)
    {
      goto LABEL_44;
    }

LABEL_15:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1314 description:@"Code which should be unreachable has been reached"];
LABEL_16:

    v22 = 0;
LABEL_43:
    v23 = 0;
    goto LABEL_44;
  }

  if (!mediaType)
  {
    goto LABEL_15;
  }

  v23 = 0;
  if (mediaType != 1)
  {
    goto LABEL_44;
  }

  canPlayLoopingVideo = [assetCopy canPlayLoopingVideo];
  playbackStyle = [assetCopy playbackStyle];
  v26 = originalResourcesCopy & includeOriginalResourcesOnly & [assetCopy isMediaSubtype:8] ^ 1;
  if (playbackStyle == 3)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  if (v27 != 1 || (canPlayLoopingVideo & 1) == 0)
  {
    v33 = playbackStyle;
    if (originalResourcesCopy && ([v63 objectForKeyedSubscript:&unk_1F102C818], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v34;
      v35 = &unk_1F102C818;
    }

    else
    {
      v37 = [v63 objectForKeyedSubscript:&unk_1F102C848];
      if (v37)
      {
        v22 = v37;
        v35 = &unk_1F102C848;
      }

      else
      {
        v39 = [v63 objectForKeyedSubscript:&unk_1F102C920];
        if (v39)
        {
          v22 = v39;
          v35 = &unk_1F102C920;
        }

        else
        {
          v41 = [v63 objectForKeyedSubscript:&unk_1F102C938];
          if (v41)
          {
            v22 = v41;
            v35 = &unk_1F102C938;
          }

          else
          {
            v44 = [v63 objectForKeyedSubscript:&unk_1F102C950];
            if (!v44)
            {
              if (originalResourcesCopy || ([assetCopy isRAW] & dontAllowRAW) != 1)
              {
                v57 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138413314;
                  v66 = assetCopy;
                  v67 = 2112;
                  v68 = v63;
                  v69 = 2112;
                  v70 = optionsCopy;
                  v71 = 1024;
                  *v72 = originalResourcesCopy;
                  *&v72[4] = 1024;
                  *&v72[6] = v62;
                  _os_log_impl(&dword_19C86F000, v57, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Found no photo resource to share for asset: %@, resources: %@, options: %@, useOriginalResources: %d, knownUnsupported: %d", buf, 0x2Cu);
                }

                v23 = _PHResourceLocalAvailabilityRequestError(0, 0, 0);
              }

              else
              {
                v56 = [v63 objectForKeyedSubscript:&unk_1F102C818];
                [dictionary setObject:v56 forKeyedSubscript:&unk_1F102C818];

                v23 = 0;
              }

              v22 = 0;
LABEL_50:
              v28 = v61;
              if (v33 == 3)
              {
                v45 = 0;
              }

              else
              {
                v45 = v26;
              }

              if ((v45 | v20))
              {
                goto LABEL_68;
              }

              goto LABEL_54;
            }

            v22 = v44;
            v35 = &unk_1F102C950;
          }
        }
      }
    }

    [dictionary setObject:v22 forKeyedSubscript:v35];
    v23 = 0;
    goto LABEL_50;
  }

  v22 = 0;
  v23 = 0;
  v28 = v61;
LABEL_54:
  if (originalResourcesCopy)
  {
    v46 = [v63 objectForKeyedSubscript:&unk_1F102C890];

    if (v46)
    {
      v47 = &unk_1F102C890;
LABEL_60:
      [dictionary setObject:v46 forKeyedSubscript:v47];
      v22 = v46;
      goto LABEL_68;
    }

    v22 = 0;
  }

  v46 = [v63 objectForKeyedSubscript:&unk_1F102C8A8];

  if (v46)
  {
    v47 = &unk_1F102C8A8;
    goto LABEL_60;
  }

  v48 = [v63 objectForKeyedSubscript:&unk_1F102C968];
  if (v48)
  {
    v22 = v48;
    v49 = &unk_1F102C968;
  }

  else
  {
    v50 = [v63 objectForKeyedSubscript:&unk_1F102C980];
    if (v50)
    {
      v22 = v50;
      v49 = &unk_1F102C980;
    }

    else
    {
      v51 = [v63 objectForKeyedSubscript:&unk_1F102C998];
      if (!v51)
      {
        v54 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          uuid = [assetCopy uuid];
          *buf = 138544642;
          v66 = uuid;
          v67 = 2112;
          v68 = assetCopy;
          v69 = 2112;
          v70 = v63;
          v71 = 2112;
          *v72 = optionsCopy;
          *&v72[8] = 1024;
          v73 = originalResourcesCopy;
          v74 = 1024;
          v75 = v62;
          _os_log_impl(&dword_19C86F000, v54, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Found no video complement resource to share for asset (uuid: %{public}@): %@, resources: %@, options: %@, useOriginalResources: %d, knownUnsupported: %d", buf, 0x36u);
        }

        if ([optionsCopy allowMissingVideoComplement])
        {
          v22 = 0;
        }

        else
        {
          v58 = _PHResourceLocalAvailabilityRequestError(0, 0, 0);

          v22 = 0;
          v23 = v58;
        }

        goto LABEL_68;
      }

      v22 = v51;
      v49 = &unk_1F102C998;
    }
  }

  [dictionary setObject:v22 forKeyedSubscript:v49];
LABEL_68:
  if (v28 && v23)
  {
    v52 = v23;
    *v28 = v23;
  }

LABEL_44:

  return dictionary;
}

+ (id)_originalsAndFullSizeResourcesToShareForAsset:(id)asset fromAvailableResources:(id)resources options:(id)options error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourcesCopy = resources;
  optionsCopy = options;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mediaType = [assetCopy mediaType];
  if (mediaType != 2)
  {
    if (mediaType == 1)
    {
      if (([objc_opt_class() setValuesInDictionary:dictionary fromDictionary:resourcesCopy keysToCopy:&unk_1F102DF10] & 1) == 0)
      {
        v16 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v21 = 138412802;
          v22 = assetCopy;
          v23 = 2112;
          v24 = resourcesCopy;
          v25 = 2112;
          v26 = optionsCopy;
          v17 = "[PHResourceLocalAvailabilityRequest] Found no photo or video complement resources to share for asset: %@, resources: %@, options: %@";
LABEL_9:
          _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, v17, &v21, 0x20u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:1193 description:@"Code which should be unreachable has been reached"];
    }

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  if ([objc_opt_class() setValuesInDictionary:dictionary fromDictionary:resourcesCopy keysToCopy:&unk_1F102DF28])
  {
    goto LABEL_14;
  }

  v16 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v21 = 138412802;
    v22 = assetCopy;
    v23 = 2112;
    v24 = resourcesCopy;
    v25 = 2112;
    v26 = optionsCopy;
    v17 = "[PHResourceLocalAvailabilityRequest] Found no video resource to share for asset: %@, resources: %@, options: %@";
    goto LABEL_9;
  }

LABEL_10:

  v18 = _PHResourceLocalAvailabilityRequestError(0, 0, 0);
  if (error && v18)
  {
    v18 = v18;
    *error = v18;
  }

LABEL_15:

  return dictionary;
}

+ (BOOL)setValuesInDictionary:(id)dictionary fromDictionary:(id)fromDictionary keysToCopy:(id)copy
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  fromDictionaryCopy = fromDictionary;
  copyCopy = copy;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [copyCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(copyCopy);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [fromDictionaryCopy objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = [fromDictionaryCopy objectForKeyedSubscript:v15];
          [dictionaryCopy setObject:v17 forKeyedSubscript:v15];

          v12 = 1;
        }
      }

      v11 = [copyCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

+ (id)resourceLocalAvailabilityRequestLog
{
  if (resourceLocalAvailabilityRequestLog_onceToken != -1)
  {
    dispatch_once(&resourceLocalAvailabilityRequestLog_onceToken, &__block_literal_global_316);
  }

  v3 = resourceLocalAvailabilityRequestLog_log;

  return v3;
}

uint64_t __73__PHResourceLocalAvailabilityRequest_resourceLocalAvailabilityRequestLog__block_invoke()
{
  resourceLocalAvailabilityRequestLog_log = os_log_create("com.apple.photos", "PHResourceLocalAvailabilityRequest");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isKnownUnsupportedFormatForAsset:(id)asset
{
  v57[8] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
  if ([uniformTypeIdentifier length])
  {
    v42 = assetCopy;
    v43 = uniformTypeIdentifier;
    v5 = MEMORY[0x1E695DFD8];
    identifier = [*MEMORY[0x1E6982E00] identifier];
    v57[0] = identifier;
    identifier2 = [*MEMORY[0x1E6982E58] identifier];
    v57[1] = identifier2;
    identifier3 = [*MEMORY[0x1E6982F28] identifier];
    v57[2] = identifier3;
    identifier4 = [*MEMORY[0x1E6982D58] identifier];
    v57[3] = identifier4;
    identifier5 = [*MEMORY[0x1E6982DE8] identifier];
    v57[4] = identifier5;
    identifier6 = [*MEMORY[0x1E6983008] identifier];
    v57[5] = identifier6;
    identifier7 = [*MEMORY[0x1E6982E10] identifier];
    v57[6] = identifier7;
    identifier8 = [*MEMORY[0x1E6982EC8] identifier];
    v57[7] = identifier8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:8];
    v15 = [v5 setWithArray:v14];

    v16 = *MEMORY[0x1E6982F88];
    v56[0] = *MEMORY[0x1E6983138];
    v56[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
    v18 = [v17 mutableCopy];

    supportedMovieTypes = [MEMORY[0x1E69C08F0] supportedMovieTypes];
    [v18 addObjectsFromArray:supportedMovieTypes];

    [v18 removeObject:*MEMORY[0x1E6982F80]];
    v20 = MEMORY[0x1E695DFD8];
    h264fourCharCode = [MEMORY[0x1E69BE350] H264fourCharCode];
    v55[0] = h264fourCharCode;
    hEVCfourCharCode = [MEMORY[0x1E69BE350] HEVCfourCharCode];
    v55[1] = hEVCfourCharCode;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v24 = [v20 setWithArray:v23];

    if (isKnownUnsupportedFormatForAsset__onceToken != -1)
    {
      dispatch_once(&isKnownUnsupportedFormatForAsset__onceToken, &__block_literal_global_312);
    }

    uniformTypeIdentifier = v43;
    v25 = [v15 member:v43];

    assetCopy = v42;
    if (v25)
    {
      codec = 0;
LABEL_6:
      v27 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v30 = [MEMORY[0x1E6982C40] typeWithIdentifier:v43];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v31 = v18;
    v32 = [v31 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v45;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(v31);
          }

          if ([v30 conformsToType:*(*(&v44 + 1) + 8 * i)])
          {

            codec = 0;
            v27 = 0;
            uniformTypeIdentifier = v43;
            goto LABEL_29;
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    if ([v42 playbackStyle] == 4)
    {
      [v42 fetchPropertySetsIfNeeded];
      photosInfoPanelExtendedProperties = [v42 photosInfoPanelExtendedProperties];
      codec = [photosInfoPanelExtendedProperties codec];

      uniformTypeIdentifier = v43;
      if (codec)
      {
        v37 = [v24 member:codec];

        if (v37)
        {
          goto LABEL_6;
        }

        v38 = [isKnownUnsupportedFormatForAsset__cachedPlayableVideoCodecs member:codec];

        if (v38)
        {
          goto LABEL_6;
        }

        if ([MEMORY[0x1E69BE350] isPlayableFourCharCodecName:codec])
        {
          [isKnownUnsupportedFormatForAsset__cachedPlayableVideoCodecs addObject:codec];
          goto LABEL_6;
        }
      }
    }

    else
    {
      codec = 0;
      uniformTypeIdentifier = v43;
    }

    v39 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [v42 uuid];
      *buf = 138543874;
      v49 = uuid;
      v50 = 2114;
      v51 = uniformTypeIdentifier;
      v52 = 2114;
      v53 = codec;
      _os_log_impl(&dword_19C86F000, v39, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest] Slower known unsupported formats lookup for asset: %{public}@. Type identifier: %{public}@, codec (if video): %{public}@", buf, 0x20u);
    }

    v27 = [PHAsset isOriginalKnownUnsupportedFormatForAsset:v42 failureInfo:0];
    goto LABEL_29;
  }

  v28 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    uuid2 = [assetCopy uuid];
    *buf = 138543618;
    v49 = uniformTypeIdentifier;
    v50 = 2114;
    v51 = uuid2;
    _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Unexpected empty uniformTypeIdentifier (%{public}@) on asset: %{public}@. Falling back to known unsupported formats lookup", buf, 0x16u);
  }

  v27 = [PHAsset isOriginalKnownUnsupportedFormatForAsset:assetCopy failureInfo:0];
LABEL_30:

  return v27;
}

uint64_t __71__PHResourceLocalAvailabilityRequest_isKnownUnsupportedFormatForAsset___block_invoke()
{
  isKnownUnsupportedFormatForAsset__cachedPlayableVideoCodecs = [MEMORY[0x1E695DFA8] set];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_resourcesToShareForAsset:(id)asset options:(id)options error:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  resourceLocalAvailabilityRequestLog = [objc_opt_class() resourceLocalAvailabilityRequestLog];
  v10 = os_signpost_id_generate(resourceLocalAvailabilityRequestLog);
  v11 = resourceLocalAvailabilityRequestLog;
  v12 = v11;
  spid = v10;
  v62 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = v12;
    localIdentifier = [assetCopy localIdentifier];
    *buf = 138543362;
    *&buf[4] = localIdentifier;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ResourcesToShareLookup", "localIdentifier==%{public}@", buf, 0xCu);

    v12 = v13;
  }

  v61 = v12;

  if ([self isKnownUnsupportedFormatForAsset:assetCopy] && !objc_msgSend(optionsCopy, "includeOriginalResourcesOnly"))
  {
    isCloudSharedAsset = 1;
    v60 = 1;
  }

  else
  {
    isCloudSharedAsset = [assetCopy isCloudSharedAsset];
    v60 = 0;
    if (![assetCopy hasAdjustments])
    {
      includeOriginalResourcesOnly = 1;
      goto LABEL_10;
    }
  }

  includeOriginalResourcesOnly = [optionsCopy includeOriginalResourcesOnly];
LABEL_10:
  if ([assetCopy isRAW])
  {
    isProRes = 1;
    if (!includeOriginalResourcesOnly)
    {
      goto LABEL_17;
    }
  }

  else
  {
    isProRes = [assetCopy isProRes];
    if (!includeOriginalResourcesOnly)
    {
      goto LABEL_17;
    }
  }

  if (([optionsCopy dontAllowRAW] & isProRes) == 1)
  {
    includeOriginalResourcesOnly = [optionsCopy includeOriginalResourcesOnly];
    isCloudSharedAsset |= includeOriginalResourcesOnly ^ 1;
  }

  else
  {
    includeOriginalResourcesOnly = 1;
  }

LABEL_17:
  v18 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [assetCopy uuid];
    hasAdjustments = [assetCopy hasAdjustments];
    dontAllowRAW = [optionsCopy dontAllowRAW];
    includeOriginalResourcesOnly2 = [optionsCopy includeOriginalResourcesOnly];
    *buf = 67110658;
    *&buf[4] = includeOriginalResourcesOnly;
    *&buf[8] = 2114;
    *&buf[10] = uuid;
    *&buf[18] = 1024;
    *&buf[20] = hasAdjustments;
    LOWORD(v73) = 1024;
    *(&v73 + 2) = v60;
    HIWORD(v73) = 1024;
    LODWORD(v74) = isProRes;
    WORD2(v74) = 1024;
    *(&v74 + 6) = dontAllowRAW;
    WORD5(v74) = 1024;
    HIDWORD(v74) = includeOriginalResourcesOnly2;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "[PHResourceLocalAvailabilityRequest] Using original/primary resource(s): %{BOOL}d for asset %{public}@ because it is edited: %{BOOL}d, known unsupported: %{BOOL}d, isRAW: %{BOOL}d, dontAllowRAW: %{BOOL}d, should use unmodified original: %{BOOL}d", buf, 0x30u);
  }

  v23 = _FetchableResourcesForAsset(assetCopy, isCloudSharedAsset & 1);
  v24 = assetCopy;
  v25 = v23;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__12696;
  v70 = __Block_byref_object_dispose__12697;
  v71 = 0;
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CollectAssetResourcesByCplResourceType_block_invoke;
  v73 = &unk_1E75A56E8;
  v27 = v24;
  *&v74 = v27;
  v28 = v26;
  *(&v74 + 1) = v28;
  v29 = v25;
  v75 = v29;
  v76 = &v66;
  [v29 enumerateObjectsUsingBlock:buf];
  if (v67[5])
  {

    v30 = v67[5];
    v31 = v30;
    v28 = 0;
  }

  else
  {
    v30 = 0;
  }

  v32 = v75;
  v33 = v28;

  _Block_object_dispose(&v66, 8);
  v34 = v30;
  if (![v33 count])
  {
    v39 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = optionsCopy;
      *&buf[22] = 2112;
      v73 = v34;
      _os_log_impl(&dword_19C86F000, v39, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] No candidate resources found for sharing asset: %@, options: %@, error: %@", buf, 0x20u);
    }

    v37 = 0;
    goto LABEL_43;
  }

  includeAllAssetResources = [optionsCopy includeAllAssetResources];
  v36 = objc_opt_class();
  if (includeAllAssetResources)
  {
    v65 = v34;
    v37 = [v36 _originalsAndFullSizeResourcesToShareForAsset:v27 fromAvailableResources:v33 options:optionsCopy error:&v65];
    v38 = &v65;
  }

  else
  {
    v64 = v34;
    v37 = [v36 _singularResourcesToShareForAsset:v27 fromAvailableResources:v33 options:optionsCopy useOriginalResources:includeOriginalResourcesOnly knownUnsupported:v60 error:&v64];
    v38 = &v64;
  }

  v40 = *v38;

  if ([v37 count])
  {
    v34 = v40;
  }

  else
  {
    v41 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = optionsCopy;
      _os_log_impl(&dword_19C86F000, v41, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Found no photo or video resources to share for asset: %@, options: %@", buf, 0x16u);
    }

    v34 = _PHResourceLocalAvailabilityRequestError(0, v40, 0);
  }

  v42 = [v33 objectForKeyedSubscript:&unk_1F102C7B8];
  v43 = v42 == 0;

  if (!v43)
  {
    v44 = [v33 objectForKeyedSubscript:&unk_1F102C7B8];
    [v37 setObject:v44 forKeyedSubscript:&unk_1F102C7B8];
  }

  v45 = [v33 objectForKeyedSubscript:&unk_1F102C7D0];
  v46 = v45 == 0;

  if (!v46)
  {
    v47 = [v33 objectForKeyedSubscript:&unk_1F102C7D0];
    [v37 setObject:v47 forKeyedSubscript:&unk_1F102C7D0];
  }

  if (includeAllAssetResources)
  {
    v48 = [v33 objectForKeyedSubscript:&unk_1F102C7E8];
    v49 = v48 == 0;

    if (!v49)
    {
      v50 = [v33 objectForKeyedSubscript:&unk_1F102C7E8];
      [v37 setObject:v50 forKeyedSubscript:&unk_1F102C7E8];
    }

    v51 = [v33 objectForKeyedSubscript:&unk_1F102C800];
    v52 = v51 == 0;

    if (!v52)
    {
      v39 = [v33 objectForKeyedSubscript:&unk_1F102C800];
      [v37 setObject:v39 forKeyedSubscript:&unk_1F102C800];
LABEL_43:
    }
  }

  if (error && v34)
  {
    v53 = v34;
    *error = v34;
  }

  v54 = v61;
  v55 = v54;
  if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v55, OS_SIGNPOST_INTERVAL_END, spid, "ResourcesToShareLookup", byte_19CB567AE, buf, 2u);
  }

  if (v34)
  {
    v56 = 0;
  }

  else
  {
    v56 = v37;
  }

  v57 = v56;

  return v56;
}

+ (id)_resourcesToShareForAsset:(id)asset asUnmodifiedOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  assetCopy = asset;
  v9 = objc_alloc_init(PHResourceLocalAvailabilityRequestOptions);
  [(PHResourceLocalAvailabilityRequestOptions *)v9 setAllowMissingVideoComplement:1];
  if (originalCopy)
  {
    [(PHResourceLocalAvailabilityRequestOptions *)v9 setIncludeOriginalResourcesOnly:1];
  }

  v10 = [self _resourcesToShareForAsset:assetCopy options:v9 error:error];

  return v10;
}

+ (id)fetchResourcesToShareForAsset:(id)asset requestOptions:(id)options error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  v11 = optionsCopy;
  if (assetCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHResourceLocalAvailabilityRequest.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"requestOptions"}];

LABEL_3:
  if (([assetCopy mediaType] - 1) >= 2)
  {
    v17 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = assetCopy;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "[PHResourceLocalAvailabilityRequest] Cannot fetch resources to share for invalid asset: %@", buf, 0xCu);
    }

    if (error)
    {
      _PHResourceLocalAvailabilityRequestError(0, 0, 0);
      *error = allValues = 0;
    }

    else
    {
      allValues = 0;
    }
  }

  else
  {
    v21 = 0;
    v12 = [objc_opt_class() _resourcesToShareForAsset:assetCopy options:v11 error:&v21];
    v13 = v21;
    v14 = v13;
    if (error && v13)
    {
      v15 = v13;
      *error = v14;
    }

    allValues = [v12 allValues];
  }

  return allValues;
}

@end