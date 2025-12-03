@interface PHPTPAssetManager
+ (BOOL)_isPrimaryAssetResourceType:(int64_t)type;
+ (BOOL)_shouldIncludeDiagnosticFile;
- (BOOL)_ensureLivePhotoComponentsAgreeOnConversionRequirementForPTPAssets:(id)assets withConversionSupport:(id)support;
- (BOOL)_isPenultimateAssetResource:(id)resource;
- (BOOL)_isSupportedPhotoAssetResourceType:(int64_t)type;
- (BOOL)_isSupportedResourceType:(int64_t)type;
- (BOOL)_isThumbnailSupportedForResourceType:(int64_t)type;
- (BOOL)_shouldSkipResource:(id)resource forAsset:(id)asset conversionSupport:(id)support debugAnalytics:(id)analytics;
- (BOOL)libraryIsAvailable;
- (BOOL)ptpCanDeleteFiles;
- (BOOL)ptpDeletePhotoForAssetHandle:(id)handle;
- (PHPTPAssetManager)init;
- (PHPTPAssetManager)initWithLibrary:(id)library;
- (PHPTPDelegate)delegate;
- (id)_assetTypeTranscodeLabelForType:(int64_t)type;
- (id)_createDiagnosticPTPAssetFromAsset:(id)asset primaryPTPAsset:(id)pAsset;
- (id)_createPTPAssetsFromAsset:(id)asset photosResources:(id)resources withConversionSupport:(id)support includeMetadata:(BOOL)metadata includeAdjustmentOverflowDataBlob:(BOOL)blob debugAnalytics:(id)analytics;
- (id)_diagnosticFilePathForLibrary:(id)library mainFilename:(id)filename createIfNeeded:(BOOL)needed;
- (id)_enumerateAssetsWithLocalIdentifiers:(id)identifiers usingBlock:(id)block;
- (id)_fetchAssetsForIdentifiers:(id)identifiers;
- (id)_photosAssetForPTPAssetHandle:(id)handle;
- (id)_primaryResourceForAsset:(id)asset;
- (id)_primaryResourceForAsset:(id)asset fromResources:(id)resources;
- (id)_processAsset:(id)asset resources:(id)resources shouldVendHiddenAssets:(BOOL)assets resourceAnalytics:(id)analytics;
- (id)_ptpAssetReaderForFormatConvertedPTPAsset:(id)asset ofPhotosAsset:(id)photosAsset resourcePath:(id)path originalResourcePath:(id)resourcePath;
- (id)_ptpAssetWithType:(int64_t)type fromPTPAssets:(id)assets requiresConversion:(BOOL)conversion;
- (id)_ptpThumbnailForOriginalVideoAsset:(id)asset size:(CGSize)size compressionQuality:(float)quality;
- (id)_resourceOfType:(int64_t)type fromResources:(id)resources;
- (id)_sendFinalizationRequestForAsset:(id)asset moc:(id)moc;
- (id)createPTPAssetsFromAsset:(id)asset;
- (id)popAnalyticsData;
- (id)ptpAssetReaderForAssetHandle:(id)handle;
- (id)ptpImagePropertiesForAssetHandle:(id)handle;
- (id)ptpThumbnailForAssetHandle:(id)handle size:(CGSize)size compressionQuality:(float)quality;
- (int64_t)_imageVersionForAsset:(id)asset resourceType:(int64_t)type;
- (int64_t)cplStorageState;
- (void)_addAssetsNeedingFinalization:(id)finalization;
- (void)_batchEnumerateResult:(id)result withBlock:(id)block;
- (void)_ensureDeferredRenderingIsComplete;
- (void)_expungeAsset:(id)asset withReason:(id)reason;
- (void)_handleMakeResourceReplyForAssetUUID:(id)d assetObjectID:(id)iD moc:(id)moc success:(BOOL)success error:(id)error;
- (void)_handlePhotoLibraryAvailableNotification;
- (void)_logGreenTeaStatusForPTPAssetHandle:(id)handle photosAsset:(id)asset;
- (void)_ptpEnumerateAllAssetsUsingBlock:(id)block;
- (void)_registerForFirstUnlockNotification;
- (void)_requestFinalizationOfNextAsset;
- (void)_startAnalyticsCollection;
- (void)_stopAnalyticsCollectionAndReport;
- (void)_unvendHiddenAssetsForResult:(id)result;
- (void)_updateConversionResultForPTPAssets:(id)assets conversionSupport:(id)support;
- (void)_updateWhetherHiddenAssetsShouldBeVended;
- (void)_vendHiddenAssetsForResult:(id)result withClientBlock:(id)block;
- (void)cameraWatcherDidChangeState:(id)state;
- (void)dealloc;
- (void)photoLibraryDidBecomeUnavailable:(id)unavailable;
- (void)photoLibraryDidChange:(id)change;
- (void)ptpCloseSession;
- (void)ptpEnumerateAllAssetsUsingBlock:(id)block;
- (void)ptpEnumerateAssetsWithLocalIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)ptpNotifyHostIsTrusted;
- (void)ptpOpenSession;
- (void)setDelegate:(id)delegate;
- (void)setHostCharacteristics:(id)characteristics;
- (void)setPeerMediaCapabilities:(id)capabilities;
@end

@implementation PHPTPAssetManager

- (PHPTPDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)createPTPAssetsFromAsset:(id)asset
{
  v14 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = MEMORY[0x1E695DEC8];
  assetCopy2 = asset;
  v6 = [v4 arrayWithObjects:&assetCopy count:1];
  v7 = [PHAssetResource assetResourcesForAssets:v6 includeDerivatives:0 includeMetadata:0 includeAdjustmentOverflowDataBlob:0, assetCopy, v14];

  v8 = [v7 objectForKeyedSubscript:assetCopy2];
  v9 = [(PHPTPAssetManager *)self _createPTPAssetsFromAsset:assetCopy2 photosResources:v8 withConversionSupport:self->_formatConversionManager includeMetadata:0 includeAdjustmentOverflowDataBlob:1 debugAnalytics:0];

  v10 = objc_alloc(MEMORY[0x1E695DEC8]);
  v11 = [v10 initWithArray:v9 copyItems:1];

  return v11;
}

- (id)popAnalyticsData
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__20675;
  v8 = __Block_byref_object_dispose__20676;
  v9 = 0;
  PLRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __37__PHPTPAssetManager_popAnalyticsData__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setTimeDisconnected:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)_stopAnalyticsCollectionAndReport
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__20675;
  v6[4] = __Block_byref_object_dispose__20676;
  popAnalyticsData = [(PHPTPAssetManager *)self popAnalyticsData];
  analyticsAsyncDataGroup = self->_analyticsAsyncDataGroup;
  v4 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PHPTPAssetManager__stopAnalyticsCollectionAndReport__block_invoke;
  block[3] = &unk_1E75A8DF0;
  block[4] = v6;
  dispatch_group_notify(analyticsAsyncDataGroup, v4, block);

  _Block_object_dispose(v6, 8);
}

- (void)_startAnalyticsCollection
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__20675;
  v21[4] = __Block_byref_object_dispose__20676;
  v22 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __46__PHPTPAssetManager__startAnalyticsCollection__block_invoke;
  v18 = &unk_1E75AADC0;
  selfCopy = self;
  v20 = v21;
  PLRunWithUnfairLock();
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  v3PhotoLibrary = [photoLibrary photoLibrary];

  dispatch_group_enter(self->_analyticsAsyncDataGroup);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__PHPTPAssetManager__startAnalyticsCollection__block_invoke_2;
  v11[3] = &unk_1E75AA3F8;
  v5 = v3PhotoLibrary;
  v12 = v5;
  selfCopy2 = self;
  v14 = v21;
  [v5 performBlock:v11 withPriority:0];
  dispatch_group_enter(self->_analyticsAsyncDataGroup);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PHPTPAssetManager__startAnalyticsCollection__block_invoke_217;
  v7[3] = &unk_1E75AA3F8;
  v6 = v5;
  v8 = v6;
  selfCopy3 = self;
  v10 = v21;
  [v6 performBlock:v7 withPriority:0];

  _Block_object_dispose(v21, 8);
}

void __46__PHPTPAssetManager__startAnalyticsCollection__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PHPTPAnalyticsData);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  [*(*(a1 + 32) + 24) setTimeConnected:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
  [*(*(a1 + 32) + 24) setCplState:{objc_msgSend(*(a1 + 32), "cplStorageState")}];
  v5 = *(*(a1 + 32) + 24);
  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v5);
}

void __46__PHPTPAssetManager__startAnalyticsCollection__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE540] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) managedObjectContext];
  v9 = 0;
  v6 = [v5 countForFetchRequest:v4 error:&v9];
  v7 = v9;

  if (v6)
  {
    PLRunWithUnfairLock();
  }

  else if (v7)
  {
    v8 = PLPTPGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Error fetching count of library assets: %@", buf, 0xCu);
    }
  }

  dispatch_group_leave(*(*(a1 + 40) + 40));
}

void __46__PHPTPAssetManager__startAnalyticsCollection__block_invoke_217(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE540] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %d", @"deferredProcessingNeeded", 0];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 32) managedObjectContext];
  v10 = 0;
  v7 = [v6 countForFetchRequest:v4 error:&v10];
  v8 = v10;

  if (v7)
  {
    PLRunWithUnfairLock();
  }

  else if (v8)
  {
    v9 = PLPTPGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Error fetching count for assets with pending deferred processing: %@", buf, 0xCu);
    }
  }

  dispatch_group_leave(*(*(a1 + 40) + 40));
}

- (void)cameraWatcherDidChangeState:(id)state
{
  stateCopy = state;
  isCameraRunning = [(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher isCameraRunning];
  v6 = PLPTPGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (isCameraRunning)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "Camera view finder change to running. Canceling inflight request.", buf, 2u);
    }

    *buf = 0;
    v10 = buf;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__20675;
    v13 = __Block_byref_object_dispose__20676;
    v14 = 0;
    v8 = MEMORY[0x1E69E9820];
    PLRunWithUnfairLock();
    [*(v10 + 5) invalidateWithHandler:{&__block_literal_global_20691, v8, 3221225472, __49__PHPTPAssetManager_cameraWatcherDidChangeState___block_invoke, &unk_1E75AADC0, self, buf}];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "Camera view finder change to NOT running.", buf, 2u);
    }

    [(PHPTPAssetManager *)self _requestFinalizationOfNextAsset];
  }
}

void __49__PHPTPAssetManager_cameraWatcherDidChangeState___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 104));
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;
}

- (id)_resourceOfType:(int64_t)type fromResources:(id)resources
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  resourcesCopy = resources;
  v6 = [resourcesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(resourcesCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == type)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [resourcesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)_primaryResourceForAsset:(id)asset fromResources:(id)resources
{
  v26 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourcesCopy = resources;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [resourcesCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (!v6)
  {
    v18 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v18 = 0;
  v8 = *v20;
  do
  {
    v9 = 0;
    do
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(resourcesCopy);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      type = [v10 type];
      if (type - 101 <= 0x12 && ((1 << (type - 101)) & 0x7ED7F) != 0)
      {
        goto LABEL_13;
      }

      if (type > 0x14)
      {
        goto LABEL_16;
      }

      if (((1 << type) & 0x1CE000) != 0)
      {
LABEL_13:
        v13 = PLPTPGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          type2 = [v10 type];
          *buf = 134217984;
          v24 = type2;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
        }

        goto LABEL_15;
      }

      if (((1 << type) & 6) != 0)
      {
        v13 = v18;
        v18 = v10;
LABEL_15:
      }

LABEL_16:
      ++v9;
    }

    while (v7 != v9);
    v15 = [resourcesCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
    v7 = v15;
  }

  while (v15);
LABEL_23:

  return v18;
}

- (id)_primaryResourceForAsset:(id)asset
{
  v13 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = [PHAssetResource assetResourcesForAsset:assetCopy includeDerivatives:0 includeMetadata:0 includeAdjustmentOverflowDataBlob:0];
  if (![v5 count])
  {
    v6 = PLPTPGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      objectID = [assetCopy objectID];
      pl_shortURI = [objectID pl_shortURI];
      v11 = 138412290;
      v12 = pl_shortURI;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to find resources for asset %@", &v11, 0xCu);
    }
  }

  v9 = [(PHPTPAssetManager *)self _primaryResourceForAsset:assetCopy fromResources:v5];

  return v9;
}

- (void)_logGreenTeaStatusForPTPAssetHandle:(id)handle photosAsset:(id)asset
{
  v12 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  assetCopy = asset;
  if (!MEMORY[0x19EAF3390]())
  {
    goto LABEL_14;
  }

  resourceType = [handleCopy resourceType];
  if (resourceType > 0x14)
  {
    goto LABEL_3;
  }

  if (((1 << resourceType) & 0x1F76) == 0)
  {
    if (((1 << resourceType) & 0x1CE000) != 0)
    {
LABEL_11:
      v9 = PLPTPGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134217984;
        resourceType2 = [handleCopy resourceType];
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", &v10, 0xCu);
      }

      goto LABEL_14;
    }

LABEL_3:
    if (resourceType - 101 > 0x12 || ((1 << (resourceType - 101)) & 0x7ED7F) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  location = [assetCopy location];

  if (location)
  {
    plslogGreenTea();
  }

  plslogGreenTeaTransmittingPhotosOrVideos();
LABEL_14:
}

- (int64_t)_imageVersionForAsset:(id)asset resourceType:(int64_t)type
{
  v15 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (type > 100)
  {
    if ((type - 101) <= 0x12)
    {
      if (((1 << (type - 101)) & 0x7ED7F) == 0)
      {
        goto LABEL_20;
      }

LABEL_13:
      v9 = PLPTPGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      goto LABEL_22;
    }

LABEL_27:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:1502 description:{@"Unhandled resource type (%lu) in %s", type, "-[PHPTPAssetManager _imageVersionForAsset:resourceType:]"}];

    v8 = 0;
    goto LABEL_25;
  }

  v8 = 0;
  if (type > 7)
  {
    if (type <= 0x14)
    {
      if (((1 << type) & 0x1CE000) != 0)
      {
        goto LABEL_13;
      }

      if (((1 << type) & 0x1800) != 0)
      {
        goto LABEL_24;
      }

      if (((1 << type) & 0x30000) != 0)
      {
        goto LABEL_20;
      }
    }

    if ((type - 8) < 2)
    {
      goto LABEL_24;
    }

    if (type == 10)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (type <= 3)
  {
    if ((type - 1) < 2)
    {
      goto LABEL_24;
    }

    if (type != 3)
    {
      goto LABEL_27;
    }

LABEL_20:
    v9 = PLPTPGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
      *buf = 138412290;
      typeCopy = v10;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "Unexpected request for an image version for resource type %@", buf, 0xCu);
    }

LABEL_22:

    v8 = 2;
    goto LABEL_25;
  }

  if ((type - 5) >= 2)
  {
    if (type != 4)
    {
      if (type != 7)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

LABEL_24:
    v8 = 1;
  }

LABEL_25:

  return v8;
}

- (BOOL)_isThumbnailSupportedForResourceType:(int64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  if (type > 0x14)
  {
    goto LABEL_5;
  }

  if (((1 << type) & 0x1F76) == 0)
  {
    if (((1 << type) & 0x1CE000) != 0)
    {
LABEL_7:
      v6 = PLPTPGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

    if (((1 << type) & 0x30088) != 0)
    {
      return 0;
    }

LABEL_5:
    if ((type - 101) > 0x12)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:1450 description:{@"Unhandled resource type (%lu) in %s", type, "-[PHPTPAssetManager _isThumbnailSupportedForResourceType:]"}];
    }

    else if (((1 << (type - 101)) & 0x7ED7F) != 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  return 1;
}

- (id)_assetTypeTranscodeLabelForType:(int64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  if (!(!v4 & v3))
  {
    result = @"original";
    switch(type)
    {
      case 1:
      case 2:
        return result;
      case 3:
      case 4:
      case 7:
      case 16:
      case 17:
        return @"non-transcoded resource type";
      case 5:
        return @"full size render image";
      case 6:
        return @"full size render video";
      case 8:
      case 12:
        return @"adjustment base original";
      case 9:
        return @"video complement sidecar";
      case 10:
        return @"full size render video complement sidecar";
      case 11:
        return @"spatial over capture video complement";
      case 13:
      case 14:
      case 15:
      case 18:
      case 19:
      case 20:
        goto LABEL_8;
      default:
        JUMPOUT(0);
    }
  }

  if ((type - 101) <= 0x12)
  {
    if (((1 << (type - 101)) & 0x7ED7F) != 0)
    {
LABEL_8:
      v7 = PLPTPGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

    else
    {
      return @"non-transcoded resource type";
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:1400 description:{@"Unhandled resource type (%lu) in %s", type, "-[PHPTPAssetManager _assetTypeTranscodeLabelForType:]"}];

    return @"unkown";
  }
}

- (BOOL)_isSupportedResourceType:(int64_t)type
{
  result = 1;
  if (type > 0x14)
  {
    goto LABEL_4;
  }

  if (((1 << type) & 0x31FFE) != 0)
  {
    return result;
  }

  if (((1 << type) & 0x1CE000) == 0)
  {
LABEL_4:
    if ((type - 101) > 0x12)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:1344 description:{@"Unhandled resource type (%lu) in %s", type, "-[PHPTPAssetManager _isSupportedResourceType:]"}];
    }

    else if (((1 << (type - 101)) & 0x7ED7F) == 0)
    {
      return result;
    }
  }

  return 0;
}

- (BOOL)_isSupportedPhotoAssetResourceType:(int64_t)type
{
  if (type > 0x14)
  {
LABEL_5:
    if ((type - 101) >= 0x13)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:1295 description:{@"Unhandled resource type (%lu) in %s", type, "-[PHPTPAssetManager _isSupportedPhotoAssetResourceType:]"}];
    }

    return 0;
  }

  if (((1 << type) & 0xFDECC) == 0)
  {
    if (((1 << type) & 0x102132) != 0)
    {
      return 1;
    }

    goto LABEL_5;
  }

  return 0;
}

- (BOOL)_isPenultimateAssetResource:(id)resource
{
  v13 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  type = [resourceCopy type];
  if (type > 0x14)
  {
    goto LABEL_6;
  }

  if (((1 << type) & 0x306FE) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << type) & 0x1CE000) != 0)
  {
LABEL_8:
    v8 = PLPTPGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      type2 = [resourceCopy type];
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (((1 << type) & 0x1900) == 0)
  {
LABEL_6:
    if (type - 101 > 0x12)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:1247 description:{@"Unhandled resource type (%lu) in %s", objc_msgSend(resourceCopy, "type"), "-[PHPTPAssetManager _isPenultimateAssetResource:]"}];
    }

    else if (((1 << (type - 101)) & 0x7ED7F) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (id)_ptpThumbnailForOriginalVideoAsset:(id)asset size:(CGSize)size compressionQuality:(float)quality
{
  height = size.height;
  width = size.width;
  v27 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v9 = PLPTPGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PHPTPAssetManager _ptpThumbnailForOriginalVideoAsset:size:compressionQuality:]";
    _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__20675;
  v25 = __Block_byref_object_dispose__20676;
  v26 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__PHPTPAssetManager__ptpThumbnailForOriginalVideoAsset_size_compressionQuality___block_invoke;
  v16[3] = &unk_1E75A6760;
  v16[4] = self;
  v13 = assetCopy;
  v17 = v13;
  p_buf = &buf;
  v19 = width;
  v20 = height;
  v21 = v10;
  [managedObjectContext performBlockAndWait:v16];
  v14 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v14;
}

void __80__PHPTPAssetManager__ptpThumbnailForOriginalVideoAsset_size_compressionQuality___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) photoLibrary];
  v4 = [v3 photoLibrary];

  v5 = MEMORY[0x1E69BE540];
  v6 = [*(a1 + 40) objectID];
  v7 = [v5 assetWithObjectID:v6 inLibrary:v4];

  if (v7)
  {
    v8 = [v7 pathForOriginalFile];
    v9 = *(*(a1 + 32) + 48);
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    v19 = 0;
    obj = v12;
    v13 = [v9 generatePosterFrameExportForVideoURL:v10 outputData:&obj maximumSize:&v19 error:{*(a1 + 56), *(a1 + 64)}];
    objc_storeStrong((v11 + 40), obj);
    v14 = v19;

    if ((v13 & 1) == 0)
    {
      v15 = PLPTPGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = *&v14;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Unable to generate video thumbnail (original video): %@", buf, 0xCu);
      }
    }
  }

  v16 = PLPTPGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - *(a1 + 72)) / 1000000000.0;
    v18 = [*(*(*(a1 + 48) + 8) + 40) length];
    *buf = 134218499;
    v22 = v17;
    v23 = 2113;
    v24 = 0;
    v25 = 2048;
    v26 = v18;
    _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "Generated thumbnail (original video) in %.3fs, name: %{private}@, size: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_registerForFirstUnlockNotification
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PHPTPAssetManager__registerForFirstUnlockNotification__block_invoke;
  aBlock[3] = &unk_1E75AADC0;
  aBlock[4] = self;
  aBlock[5] = v10;
  v2 = _Block_copy(aBlock);
  v3 = PLPTPGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_INFO, "Registering for first unlock", buf, 2u);
  }

  v4 = MEMORY[0x1E69E96A0];
  v5 = v2;
  v6 = pl_notify_register_dispatch();

  if (v6)
  {
    v7 = PLPTPGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Unable to wait for first unlock", buf, 2u);
    }
  }

  _Block_object_dispose(v10, 8);
}

uint64_t __56__PHPTPAssetManager__registerForFirstUnlockNotification__block_invoke(uint64_t a1)
{
  result = MKBDeviceUnlockedSinceBoot();
  if (result == 1)
  {
    notify_cancel(*(*(*(a1 + 40) + 8) + 24));
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v3 = *(a1 + 32);

    return [v3 _handlePhotoLibraryAvailableNotification];
  }

  return result;
}

uint64_t __56__PHPTPAssetManager__registerForFirstUnlockNotification__block_invoke_178(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_handlePhotoLibraryAvailableNotification
{
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  if (self->_libraryAvailabilityStatus <= 1 && photoLibrary != 0)
  {
    v8 = photoLibrary;
    [photoLibrary registerChangeObserver:self];
    self->_libraryAvailabilityStatus = 2;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    photoLibrary = v8;
    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 libraryDidBecomeAvailable];

      photoLibrary = v8;
    }
  }
}

- (id)_ptpAssetReaderForFormatConvertedPTPAsset:(id)asset ofPhotosAsset:(id)photosAsset resourcePath:(id)path originalResourcePath:(id)resourcePath
{
  v24 = *MEMORY[0x1E69E9840];
  photosAssetCopy = photosAsset;
  pathCopy = path;
  resourcePathCopy = resourcePath;
  assetCopy = asset;
  v14 = PLPTPGetLog();
  v15 = os_signpost_id_make_with_pointer(v14, photosAssetCopy);

  v16 = PLPTPGetLog();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v22 = 138412290;
    v23 = pathCopy;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PTP transcode", "PTP format converted asset reader for %@", &v22, 0xCu);
  }

  v18 = [(PHPTPFormatConversionManager *)self->_formatConversionManager ptpAssetReaderForFormatConvertedPTPAsset:assetCopy ofPhotosAsset:photosAssetCopy resourcePath:pathCopy originalResourcePath:resourcePathCopy];

  v19 = PLPTPGetLog();
  v20 = v19;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v20, OS_SIGNPOST_INTERVAL_END, v15, "PTP transcode", byte_19CB567AE, &v22, 2u);
  }

  return v18;
}

- (id)_photosAssetForPTPAssetHandle:(id)handle
{
  v20[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v20[0] = @"PHAssetPropertySetPTP";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v7];

  [librarySpecificFetchOptions setIncludeAllBurstAssets:1];
  localIdentifier = [handleCopy localIdentifier];
  v19 = localIdentifier;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v10 = [PHAsset fetchAssetsWithLocalIdentifiers:v9 options:librarySpecificFetchOptions];

  firstObject = [v10 firstObject];
  v12 = firstObject;
  if (firstObject)
  {
    v13 = firstObject;
  }

  else
  {
    v14 = PLPTPGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      localIdentifier2 = [handleCopy localIdentifier];
      v17 = 138412290;
      v18 = localIdentifier2;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Unable to find asset for asset local identifier: %@", &v17, 0xCu);
    }
  }

  return v12;
}

- (void)_expungeAsset:(id)asset withReason:(id)reason
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  reasonCopy = reason;
  v8 = PLPTPGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    objectID = [assetCopy objectID];
    pl_shortURI = [objectID pl_shortURI];
    *buf = 138543618;
    v22 = pl_shortURI;
    v23 = 2114;
    v24 = reasonCopy;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "Expunging asset: %{public}@, reason: %{public}@", buf, 0x16u);
  }

  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__PHPTPAssetManager__expungeAsset_withReason___block_invoke;
  v19[3] = &unk_1E75AB270;
  v12 = assetCopy;
  v20 = v12;
  v18 = 0;
  v13 = [photoLibrary performChangesAndWait:v19 error:&v18];
  v14 = v18;

  if ((v13 & 1) == 0)
  {
    v15 = PLPTPGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      objectID2 = [v12 objectID];
      pl_shortURI2 = [objectID2 pl_shortURI];
      *buf = 138543618;
      v22 = pl_shortURI2;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Error trying to expunge asset: %{public}@ (%@)", buf, 0x16u);
    }
  }
}

void __46__PHPTPAssetManager__expungeAsset_withReason___block_invoke(uint64_t a1)
{
  v2 = [(PHTrashableObjectDeleteRequest *)PHAssetDeleteRequest deleteRequestForObject:*(a1 + 32) operation:1];
  v1 = objc_alloc_init(PHAssetDeleteOptions);
  [(PHAssetDeleteOptions *)v1 setExpungeSource:8];
  [v2 setDeleteOptions:v1];
}

- (id)_diagnosticFilePathForLibrary:(id)library mainFilename:(id)filename createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  filenameCopy = filename;
  pathManager = [library pathManager];
  v9 = [pathManager privateDirectoryWithSubType:8 createIfNeeded:neededCopy error:0];

  stringByDeletingPathExtension = [filenameCopy stringByDeletingPathExtension];

  v11 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"DBG"];

  v12 = [v9 stringByAppendingPathComponent:v11];

  return v12;
}

- (id)_createDiagnosticPTPAssetFromAsset:(id)asset primaryPTPAsset:(id)pAsset
{
  assetCopy = asset;
  if (self->_provideDiagnosticFile)
  {
    photoLibrary = self->_photoLibrary;
    v8 = [pAsset url];
    lastPathComponent = [v8 lastPathComponent];
    v10 = [(PHPTPAssetManager *)self _diagnosticFilePathForLibrary:photoLibrary mainFilename:lastPathComponent createIfNeeded:0];

    memset(&v16, 0, sizeof(v16));
    if (lstat([v10 fileSystemRepresentation], &v16) || (v16.st_mode & 0xF000) != 0x8000)
    {
      v13 = 0;
    }

    else
    {
      v11 = [PHMutablePTPAsset alloc];
      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
      v13 = [(PHPTPAsset *)v11 initWithPhotosAsset:assetCopy url:v12 resourceType:113 orientation:1];

      lastPathComponent2 = [v10 lastPathComponent];
      [(PHMutablePTPAsset *)v13 setDcfFilename:lastPathComponent2];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_ptpAssetWithType:(int64_t)type fromPTPAssets:(id)assets requiresConversion:(BOOL)conversion
{
  conversionCopy = conversion;
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  assetsCopy = assets;
  v8 = [assetsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        resourceHandle = [v12 resourceHandle];
        if ([resourceHandle resourceType] == type)
        {
          resourceHandle2 = [v12 resourceHandle];
          requiresConversion = [resourceHandle2 requiresConversion];

          if (requiresConversion == conversionCopy)
          {
            v16 = v12;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v9 = [assetsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (BOOL)_ensureLivePhotoComponentsAgreeOnConversionRequirementForPTPAssets:(id)assets withConversionSupport:(id)support
{
  v25 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  supportCopy = support;
  v8 = 1;
  v9 = [(PHPTPAssetManager *)self _ptpAssetWithType:1 fromPTPAssets:assetsCopy requiresConversion:1];
  v10 = [(PHPTPAssetManager *)self _ptpAssetWithType:9 fromPTPAssets:assetsCopy requiresConversion:1];
  v11 = v10;
  if (!v9 && v10)
  {
    v9 = [(PHPTPAssetManager *)self _ptpAssetWithType:1 fromPTPAssets:assetsCopy requiresConversion:0];
    v12 = [PHPTPConversionSourceHints hintsForPTPAsset:v9 isVideo:0 isRender:0];
    v13 = [supportCopy conversionResultForPTPAsset:v9 sourceHints:v12 forceLegacyConversion:1 assetTypeLabel:@"originalAssetFromVideoComplement"];
    if (v13)
    {
      v14 = v13;
      if ([supportCopy peerSupportsTranscodeChoice])
      {
        v15 = [v9 updateForTranscodeChoiceWithConversionResult:v14];
        [assetsCopy addObject:v15];
      }

      else
      {
        [v9 updateWithConversionResult:v14];
      }

      v8 = 1;
    }

    else
    {
      v16 = PLPTPGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        resourceHandle = [v9 resourceHandle];
        resourceType = [resourceHandle resourceType];
        relatedUUID = [v9 relatedUUID];
        v21 = 134218242;
        v22 = resourceType;
        v23 = 2114;
        v24 = relatedUUID;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Unexpected nil PHPTPConversionResult for forced conversion for original asset resource %ld for asset %{public}@", &v21, 0x16u);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)_updateConversionResultForPTPAssets:(id)assets conversionSupport:(id)support
{
  v43 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  supportCopy = support;
  array = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        if (([v11 isPhoto] & 1) != 0 || objc_msgSend(v11, "isMovie"))
        {
          v12 = v11;
          v13 = v12;
          if ([v12 isMovie])
          {
            v13 = v12;
            if ([v12 isPartOfLivePhoto])
            {
              v14 = [v12 isRender] ? 5 : 1;
              v13 = [(PHPTPAssetManager *)self _ptpAssetWithType:v14 fromPTPAssets:v6 requiresConversion:0];

              if (!v13)
              {
                v15 = PLPTPGetLog();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  resourceHandle = [v12 resourceHandle];
                  localIdentifier = [resourceHandle localIdentifier];
                  *buf = 138543362;
                  v39 = localIdentifier;
                  _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Unexpected nil assetForSourceHints for live photo still image for asset %{public}@", buf, 0xCu);
                }

                v13 = 0;
              }
            }
          }

          v18 = +[PHPTPConversionSourceHints hintsForPTPAsset:isVideo:isRender:](PHPTPConversionSourceHints, "hintsForPTPAsset:isVideo:isRender:", v13, [v12 isMovie], objc_msgSend(v12, "isRender"));
          resourceHandle2 = [v12 resourceHandle];
          v20 = -[PHPTPAssetManager _assetTypeTranscodeLabelForType:](self, "_assetTypeTranscodeLabelForType:", [resourceHandle2 resourceType]);
          v21 = [supportCopy conversionResultForPTPAsset:v12 sourceHints:v18 forceLegacyConversion:0 assetTypeLabel:v20];

          if (!v21)
          {
            v26 = PLPTPGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              resourceHandle3 = [v12 resourceHandle];
              resourceType = [resourceHandle3 resourceType];
              relatedUUID = [v12 relatedUUID];
              *buf = 134218242;
              v39 = resourceType;
              v40 = 2114;
              v41 = relatedUUID;
              _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "No PHPTPConversionResult for conversion for original asset resource %ld for asset %{public}@", buf, 0x16u);
            }

            v25 = array;
            goto LABEL_34;
          }

          if ([v21 requiresConversion])
          {
            if ([supportCopy peerSupportsTranscodeChoice])
            {
              v22 = [v12 updateForTranscodeChoiceWithConversionResult:v21];
              if (v22)
              {
                [array addObject:v22];
              }

              else
              {
                v23 = PLPTPGetLog();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  resourceHandle4 = [v12 resourceHandle];
                  localIdentifier2 = [resourceHandle4 localIdentifier];
                  *buf = 138543362;
                  v39 = localIdentifier2;
                  _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Failed to make converted asset for asset %{public}@", buf, 0xCu);
                }
              }
            }

            else
            {
              [v12 updateWithConversionResult:v21];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v25 = array;
  [v6 addObjectsFromArray:array];
LABEL_34:
}

- (BOOL)_shouldSkipResource:(id)resource forAsset:(id)asset conversionSupport:(id)support debugAnalytics:(id)analytics
{
  v39 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  assetCopy = asset;
  supportCopy = support;
  analyticsCopy = analytics;
  if ([resourceCopy isLocallyAvailable])
  {
    if (!-[PHPTPAssetManager _isSupportedResourceType:](self, "_isSupportedResourceType:", [resourceCopy type]))
    {
      v14 = PLPTPGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        type = [resourceCopy type];
        objectID = [assetCopy objectID];
        pl_shortURI = [objectID pl_shortURI];
        v33 = 134218242;
        v34 = type;
        v35 = 2114;
        v36 = pl_shortURI;
        v18 = "PTP asset resource creation: skipping unsupported type (%lu) for asset (%{public}@)";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    if ([assetCopy isVideo] && -[PHPTPAssetManager _isSupportedPhotoAssetResourceType:](self, "_isSupportedPhotoAssetResourceType:", objc_msgSend(resourceCopy, "type")))
    {
      v14 = PLPTPGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        type2 = [resourceCopy type];
        objectID = [assetCopy objectID];
        pl_shortURI = [objectID pl_shortURI];
        v33 = 134218242;
        v34 = type2;
        v35 = 2114;
        v36 = pl_shortURI;
        v18 = "PTP asset resource creation: skipping photo type (%lu) for video asset (%{public}@)";
LABEL_11:
        _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_INFO, v18, &v33, 0x16u);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if ([assetCopy isPartOfBurst] && objc_msgSend(resourceCopy, "type") == 5)
    {
      v14 = PLPTPGetLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      objectID2 = [assetCopy objectID];
      pl_shortURI2 = [objectID2 pl_shortURI];
      v33 = 138543362;
      v34 = pl_shortURI2;
      v25 = "PTP asset resource creation: skipping full size resource for burst asset (%{public}@)";
      goto LABEL_35;
    }

    if (-[PHPTPAssetManager _isPenultimateAssetResource:](self, "_isPenultimateAssetResource:", resourceCopy) && (![supportCopy peerSupportsAdjustmentBaseResources] || (objc_msgSend(supportCopy, "penultimateIsPublic") & 1) == 0))
    {
      v14 = PLPTPGetLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      if ([supportCopy peerSupportsAdjustmentBaseResources])
      {
        v27 = @"Y";
      }

      else
      {
        v27 = @"N";
      }

      if ([supportCopy penultimateIsPublic])
      {
        v28 = @"Y";
      }

      else
      {
        v28 = @"N";
      }

      objectID2 = [assetCopy objectID];
      pl_shortURI2 = [objectID2 pl_shortURI];
      v33 = 138412802;
      v34 = v27;
      v35 = 2112;
      v36 = v28;
      v37 = 2114;
      v38 = pl_shortURI2;
      v25 = "PTP asset resource creation: skipping penultimate resource (peer support: %@, is public: %@) for asset (%{public}@)";
      v29 = v14;
      v30 = 32;
LABEL_36:
      _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_INFO, v25, &v33, v30);

      goto LABEL_12;
    }

    filename = [assetCopy filename];
    if (filename)
    {
    }

    else
    {
      ptpProperties = [assetCopy ptpProperties];
      originalFilename = [ptpProperties originalFilename];

      if (!originalFilename)
      {
        v14 = PLPTPGetLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        objectID2 = [assetCopy objectID];
        pl_shortURI2 = [objectID2 pl_shortURI];
        v33 = 138543362;
        v34 = pl_shortURI2;
        v25 = "PTP asset resource creation: skipping resource with missing filename AND originalFilename for asset (%{public}@)";
LABEL_35:
        v29 = v14;
        v30 = 12;
        goto LABEL_36;
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

  v14 = PLPTPGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    type3 = [resourceCopy type];
    objectID = [assetCopy objectID];
    pl_shortURI = [objectID pl_shortURI];
    v33 = 134218242;
    v34 = type3;
    v35 = 2114;
    v36 = pl_shortURI;
    v18 = "PTP asset resource creation: skipping non-local resource (%ld) for asset (%{public}@)";
    goto LABEL_11;
  }

LABEL_12:

  [analyticsCopy addSkippedResource:resourceCopy];
  v21 = 1;
LABEL_13:

  return v21;
}

- (id)_createPTPAssetsFromAsset:(id)asset photosResources:(id)resources withConversionSupport:(id)support includeMetadata:(BOOL)metadata includeAdjustmentOverflowDataBlob:(BOOL)blob debugAnalytics:(id)analytics
{
  v87 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourcesCopy = resources;
  supportCopy = support;
  analyticsCopy = analytics;
  v15 = PLPTPGetLog();
  v73 = supportCopy;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    objectID = [assetCopy objectID];
    pl_shortURI = [objectID pl_shortURI];
    *buf = 138412546;
    v81 = pl_shortURI;
    v82 = 2112;
    v83 = resourcesCopy;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "Creating PHPTPAssets for asset (%@) resources: %@", buf, 0x16u);

    supportCopy = v73;
  }

  array = [MEMORY[0x1E695DF70] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v18 = resourcesCopy;
  v19 = [v18 countByEnumeratingWithState:&v76 objects:v86 count:16];
  v20 = assetCopy;
  v75 = v18;
  if (v19)
  {
    v21 = v19;
    v22 = *v77;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v77 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v76 + 1) + 8 * i);
        v25 = +[PHPTPAssetManager _isPrimaryAssetResourceType:](PHPTPAssetManager, "_isPrimaryAssetResourceType:", [v24 type]);
        if (v25 && ([v24 isLocallyAvailable] & 1) == 0)
        {
          v28 = PLPTPGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            type = [v24 type];
            objectID2 = [v20 objectID];
            pl_shortURI2 = [objectID2 pl_shortURI];
            *buf = 134218242;
            v81 = type;
            v82 = 2114;
            v83 = pl_shortURI2;
            _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_INFO, "PHPTPAsset creation: skipping asset because non-local original resource (%ld) for asset (%{public}@)", buf, 0x16u);

            v18 = v75;
          }

          v62 = 0;
          v36 = v18;
          v58 = array;
          goto LABEL_50;
        }

        if (![(PHPTPAssetManager *)self _shouldSkipResource:v24 forAsset:v20 conversionSupport:supportCopy debugAnalytics:analyticsCopy])
        {
          v26 = analyticsCopy;
          v27 = [(PHPTPAsset *)[PHMutablePTPAsset alloc] initWithPhotosAsset:v20 photosResource:v24];
          if (v27)
          {
            [array addObject:v27];
          }

          else
          {
            v28 = PLPTPGetLog();
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
            if (v25)
            {
              if (v29)
              {
                objectID3 = [v20 objectID];
                pl_shortURI3 = [objectID3 pl_shortURI];
                type2 = [v24 type];
                *buf = 138543618;
                v81 = pl_shortURI3;
                v82 = 2048;
                v83 = type2;
                _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "Error: unable to create PHPTPAsset for PHAssetResource of asset (%{public}@) of type %ld (skipping asset)", buf, 0x16u);
              }

              v62 = 0;
              v58 = array;
              v36 = v75;
              analyticsCopy = v26;
              v18 = v75;
              goto LABEL_50;
            }

            if (v29)
            {
              objectID4 = [v20 objectID];
              pl_shortURI4 = [objectID4 pl_shortURI];
              type3 = [v24 type];
              *buf = 138543618;
              v81 = pl_shortURI4;
              v82 = 2048;
              v83 = type3;
              _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "Error: unable to create PHPTPAsset for PHAssetResource of asset (%{public}@) of type %ld (skipping resource)", buf, 0x16u);

              v20 = assetCopy;
            }

            supportCopy = v73;
          }

          analyticsCopy = v26;
          v18 = v75;
        }
      }

      v21 = [v18 countByEnumeratingWithState:&v76 objects:v86 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v71 = analyticsCopy;

  v33 = PLPTPGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = [array count];
    v35 = [v18 count];
    *buf = 134218498;
    v81 = v34;
    v20 = assetCopy;
    v82 = 2048;
    v83 = v35;
    v84 = 2112;
    v85 = array;
    _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_DEBUG, "Created %lu PHPTPAssets for %lu resources: %@", buf, 0x20u);
  }

  v36 = [(PHPTPAssetManager *)self _ptpAssetWithType:7 fromPTPAssets:array requiresConversion:0];
  v37 = [(PHPTPAssetManager *)self _ptpAssetWithType:108 fromPTPAssets:array requiresConversion:0];
  v28 = v37;
  if (v36 && v37)
  {
    v38 = PLPTPGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_DEBUG, "Combining adjustment resource with overflow adjustment resource. Removing overflow adjustment resource from created PHPTPAssets", buf, 2u);
    }

    v39 = MEMORY[0x1E696AD98];
    objectCompressedSize = [v36 objectCompressedSize];
    unsignedIntegerValue = [objectCompressedSize unsignedIntegerValue];
    objectCompressedSize2 = [v28 objectCompressedSize];
    v43 = [v39 numberWithUnsignedInteger:{objc_msgSend(objectCompressedSize2, "unsignedIntegerValue") + unsignedIntegerValue}];
    [v36 setObjectCompressedSize:v43];

    v44 = [v28 url];
    [v36 setOverflowURL:v44];

    [array removeObject:v28];
    v20 = assetCopy;
  }

  v45 = [(PHPTPAssetManager *)self _ptpAssetWithType:5 fromPTPAssets:array requiresConversion:0];
  if (!v45)
  {
    v46 = PLPTPGetLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      objectID5 = [assetCopy objectID];
      pl_shortURI5 = [objectID5 pl_shortURI];
      uuid = [assetCopy uuid];
      *buf = 138543618;
      v81 = pl_shortURI5;
      v82 = 2112;
      v83 = uuid;
      _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_INFO, "Skipping full size render video due to missing full size render image: %{public}@ (UUID: %@)", buf, 0x16u);
    }

    v50 = [(PHPTPAssetManager *)self _ptpAssetWithType:10 fromPTPAssets:array requiresConversion:0];
    [array removeObject:v50];

    v20 = assetCopy;
  }

  [(PHPTPAssetManager *)self _updateConversionResultForPTPAssets:array conversionSupport:v73];
  [(PHPTPAssetManager *)self _ensureLivePhotoComponentsAgreeOnConversionRequirementForPTPAssets:array withConversionSupport:v73];
  if ([v20 isPhoto])
  {
    v51 = 1;
  }

  else
  {
    v51 = 2;
  }

  v52 = [(PHPTPAssetManager *)self _ptpAssetWithType:v51 fromPTPAssets:array requiresConversion:0];
  v53 = [(PHPTPAssetManager *)self _createDiagnosticPTPAssetFromAsset:v20 primaryPTPAsset:v52];
  if (v53)
  {
    v54 = PLPTPGetLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      objectID6 = [v20 objectID];
      [objectID6 pl_shortURI];
      v57 = v56 = v45;
      *buf = 138412290;
      v81 = v57;
      _os_log_impl(&dword_19C86F000, v54, OS_LOG_TYPE_DEBUG, "Adding diagnostic resource for asset %@", buf, 0xCu);

      v45 = v56;
      v20 = assetCopy;
    }

    [array addObject:v53];
  }

  if ([array count])
  {
    v58 = array;
  }

  else
  {
    v66 = PLPTPGetLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      objectID7 = [v20 objectID];
      [objectID7 pl_shortURI];
      v69 = v68 = v45;
      *buf = 138543362;
      v81 = v69;
      _os_log_impl(&dword_19C86F000, v66, OS_LOG_TYPE_ERROR, "Failed to create PHPTPAssets for library asset '%{public}@'", buf, 0xCu);

      v45 = v68;
      v20 = assetCopy;
    }

    v58 = 0;
  }

  v62 = v58;
  analyticsCopy = v71;
  v18 = v75;
LABEL_50:

  return v62;
}

- (void)_ensureDeferredRenderingIsComplete
{
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  photoLibrary2 = [(PHPTPAssetManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

  v5 = [PHAsset fetchAnyCinematicVideosNeedingDeferredProcessingWithOptions:librarySpecificFetchOptions];
  if ([v5 count])
  {
    photoLibraryBundle = [photoLibrary photoLibraryBundle];
    assetsdClient = [photoLibraryBundle assetsdClient];
    notificationClient = [assetsdClient notificationClient];
    [notificationClient asyncNotifyStartOfInterestForUnrenderedCinematicVideoItems];
  }
}

- (id)_fetchAssetsForIdentifiers:(id)identifiers
{
  v13[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  [librarySpecificFetchOptions setCacheSizeForFetch:200];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:self->_sortAscending];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v8];

  v12[0] = @"PHAssetPropertySetIdentifier";
  v12[1] = @"PHAssetPropertySetPTP";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [librarySpecificFetchOptions setFetchPropertySets:v9];

  [librarySpecificFetchOptions setIncludeHiddenAssets:1];
  if (identifiersCopy)
  {
    [librarySpecificFetchOptions setIncludeTrashedAssets:1];
    [PHAsset fetchAssetsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];
  }

  else
  {
    [librarySpecificFetchOptions setIncludeTrashedAssets:0];
    [PHAsset fetchAssetsForPTPWithOptions:librarySpecificFetchOptions];
  }
  v10 = ;

  return v10;
}

- (id)_processAsset:(id)asset resources:(id)resources shouldVendHiddenAssets:(BOOL)assets resourceAnalytics:(id)analytics
{
  v34 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourcesCopy = resources;
  analyticsCopy = analytics;
  v13 = PLPTPGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [resourcesCopy count];
    objectID = [assetCopy objectID];
    pl_shortURI = [objectID pl_shortURI];
    *buf = 134218498;
    v29 = v14;
    v30 = 2112;
    v31 = pl_shortURI;
    v32 = 2112;
    v33 = resourcesCopy;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "Processing %lu resources for asset %@: %@", buf, 0x20u);
  }

  if (!assetCopy || assets)
  {
    if (!assetCopy)
    {
LABEL_12:
      v24 = MEMORY[0x1E695E0F0];
      goto LABEL_14;
    }
  }

  else
  {
    ptpProperties = [assetCopy ptpProperties];
    hidden = [ptpProperties hidden];

    if (hidden)
    {
      goto LABEL_12;
    }
  }

  ptpProperties2 = [assetCopy ptpProperties];
  deferredProcessingNeeded = [ptpProperties2 deferredProcessingNeeded];

  if (deferredProcessingNeeded)
  {
    v21 = PLPTPGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      uuid = [assetCopy uuid];
      *buf = 138412290;
      v29 = uuid;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "Found asset requiring finalization (uuid: %@)", buf, 0xCu);
    }

    v27 = assetCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [(PHPTPAssetManager *)self _addAssetsNeedingFinalization:v23];

    goto LABEL_12;
  }

  v24 = [(PHPTPAssetManager *)self _createPTPAssetsFromAsset:assetCopy photosResources:resourcesCopy withConversionSupport:self->_formatConversionManager includeMetadata:0 includeAdjustmentOverflowDataBlob:1];
  [analyticsCopy countResourceTypes:v24];
LABEL_14:
  v25 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v24 copyItems:1];

  return v25;
}

- (void)_batchEnumerateResult:(id)result withBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  blockCopy = block;
  v29 = 0;
  if ([resultCopy count])
  {
    v7 = 0;
    v23 = resultCopy;
    do
    {
      context = objc_autoreleasePoolPush();
      v8 = MEMORY[0x1E696AC90];
      v9 = [resultCopy count];
      if (v9 - v7 >= 0xC8)
      {
        v10 = 200;
      }

      else
      {
        v10 = v9 - v7;
      }

      v11 = [v8 indexSetWithIndexesInRange:{v7, v10, v23}];
      v12 = [resultCopy objectsAtIndexes:v11];

      v13 = [PHAssetResource assetResourcesForAssets:v12 includeDerivatives:0 includeMetadata:0 includeAdjustmentOverflowDataBlob:0];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
LABEL_8:
        v18 = 0;
        while (1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * v18);
          v20 = [v13 objectForKeyedSubscript:v19];
          blockCopy[2](blockCopy, v19, v20, &v29);

          if (v29)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
            if (v16)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v21 = v29;
      objc_autoreleasePoolPop(context);
      v22 = v21 == 1;
      resultCopy = v23;
      if (v22)
      {
        break;
      }

      v7 += 200;
    }

    while (v7 < [v23 count]);
  }
}

- (id)_enumerateAssetsWithLocalIdentifiers:(id)identifiers usingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  blockCopy = block;
  v8 = [(PHPTPAssetManager *)self _fetchAssetsForIdentifiers:identifiersCopy];
  if ([v8 count])
  {
    [(PHPTPAssetManager *)self _batchEnumerateResult:v8 withBlock:blockCopy];
    v9 = v8;
  }

  else
  {
    v10 = [identifiersCopy count];
    v11 = PLPTPGetLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = [identifiersCopy componentsJoinedByString:{@", "}];
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch asset for identifiers: %@", &v15, 0xCu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "No assets to enumerate", &v15, 2u);
    }

    LOBYTE(v15) = 0;
    (*(blockCopy + 2))(blockCopy, 0, 0, &v15);
    v9 = 0;
  }

  return v9;
}

- (void)_unvendHiddenAssetsForResult:(id)result
{
  resultCopy = result;
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v7 = [PHAsset fetchUserHiddenAssetsWithOptions:librarySpecificFetchOptions];

  v8 = [PHFetchResult alloc];
  fetchedObjectIDs = [v7 fetchedObjectIDs];
  v10 = [(PHFetchResult *)v8 initWithExistingFetchResult:resultCopy filteredObjectIDs:fetchedObjectIDs];

  array = [MEMORY[0x1E695DF70] array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__PHPTPAssetManager__unvendHiddenAssetsForResult___block_invoke;
  v14[3] = &unk_1E75A6FC8;
  v15 = array;
  v12 = array;
  [(PHFetchResult *)v10 enumerateObjectsUsingBlock:v14];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained addedPhotoKeys:MEMORY[0x1E695E0F0] deletedPhotoKeys:v12 changedPhotoKeys:MEMORY[0x1E695E0F0] changePendingPhotoKeys:MEMORY[0x1E695E0F0]];
}

void __50__PHPTPAssetManager__unvendHiddenAssetsForResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

- (void)_vendHiddenAssetsForResult:(id)result withClientBlock:(id)block
{
  blockCopy = block;
  resultCopy = result;
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v10 = [PHAsset fetchUserHiddenAssetsWithOptions:librarySpecificFetchOptions];

  v11 = [PHFetchResult alloc];
  fetchedObjectIDs = [v10 fetchedObjectIDs];
  v13 = [(PHFetchResult *)v11 initWithExistingFetchResult:resultCopy filteredObjectIDs:fetchedObjectIDs];

  if (blockCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__PHPTPAssetManager__vendHiddenAssetsForResult_withClientBlock___block_invoke;
    v14[3] = &unk_1E75A6710;
    v14[4] = self;
    v15 = blockCopy;
    [(PHPTPAssetManager *)self _batchEnumerateResult:v13 withBlock:v14];
  }
}

void __64__PHPTPAssetManager__vendHiddenAssetsForResult_withClientBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _processAsset:a2 resources:a3 shouldVendHiddenAssets:1 resourceAnalytics:0];
  (*(*(a1 + 40) + 16))();
}

- (void)_updateWhetherHiddenAssetsShouldBeVended
{
  v3 = PLPTPGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "Determining if hidden assets should be included or excluded via PTP", buf, 2u);
  }

  v4 = PLIsContentPrivacyEnabled();
  v5 = PLPTPGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v10 = 0;
      v7 = "Excluding hidden assets from PTP due to Photos LockingHidden pref being enabled";
      v8 = &v10;
LABEL_8:
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else if (v6)
  {
    v9 = 0;
    v7 = "Including hidden assets in PTP due to Photos LockingHidden pref being disabled";
    v8 = &v9;
    goto LABEL_8;
  }

  self->_shouldVendHiddenAssets = v4 ^ 1;
}

- (void)_handleMakeResourceReplyForAssetUUID:(id)d assetObjectID:(id)iD moc:(id)moc success:(BOOL)success error:(id)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  mocCopy = moc;
  errorCopy = error;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v32[0] = iDCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v17 = [PHAsset fetchAssetsWithObjectIDs:v16 options:librarySpecificFetchOptions];
  firstObject = [v17 firstObject];

  if (firstObject)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v21 = MEMORY[0x1E69E9820];
    v22 = errorCopy;
    v23 = firstObject;
    PLRunWithUnfairLock();
    v19 = PLPTPGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = v25[3];
      *buf = 138412546;
      v29 = dCopy;
      v30 = 2048;
      v31 = v20;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "Re-enqueued finalization for asset (uuid: %@, pending: %lu)", buf, 0x16u);
    }

    [(PHPTPAssetManager *)self _requestFinalizationOfNextAsset:v21];
    _Block_object_dispose(&v24, 8);
  }
}

void __90__PHPTPAssetManager__handleMakeResourceReplyForAssetUUID_assetObjectID_moc_success_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) code] == 3072)
  {
    [*(*(a1 + 40) + 96) insertObject:*(a1 + 48) atIndex:0];
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 40) + 96) count];
  v2 = *(a1 + 40);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;
}

- (id)_sendFinalizationRequestForAsset:(id)asset moc:(id)moc
{
  assetCopy = asset;
  mocCopy = moc;
  v9 = mocCopy;
  if (assetCopy)
  {
    if (mocCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:680 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__20675;
  v25 = __Block_byref_object_dispose__20676;
  v26 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__PHPTPAssetManager__sendFinalizationRequestForAsset_moc___block_invoke;
  v16[3] = &unk_1E75AA158;
  v10 = assetCopy;
  v17 = v10;
  selfCopy = self;
  v20 = &v21;
  v11 = v9;
  v19 = v11;
  [v11 performBlockAndWait:v16];
  v12 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __58__PHPTPAssetManager__sendFinalizationRequestForAsset_moc___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uuid];
  v3 = [*(a1 + 32) objectID];
  v4 = [*(a1 + 40) _primaryResourceForAsset:*(a1 + 32)];
  v5 = PLPTPGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) objectID];
      v8 = [v7 pl_shortURI];
      *buf = 138543362;
      v28 = v8;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_INFO, "Requesting finalization of asset: %{public}@", buf, 0xCu);
    }

    v9 = objc_alloc(MEMORY[0x1E69BE760]);
    v10 = MEMORY[0x1E696AEC0];
    v11 = [*(a1 + 32) uuid];
    v12 = [v10 stringWithFormat:@"ptp-%@", v11];
    v13 = [v4 backingResourceIdentity];
    v6 = [v9 initWithTaskIdentifier:v12 assetObjectID:v3 resource:v13];

    v14 = MEMORY[0x1E69BE688];
    v15 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
    v16 = [v14 sharedAssetsdClientForPhotoLibraryURL:v15];

    v17 = [v16 resourceAvailabilityClient];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58__PHPTPAssetManager__sendFinalizationRequestForAsset_moc___block_invoke_148;
    v23[3] = &unk_1E75A66E8;
    v23[4] = *(a1 + 40);
    v24 = v2;
    v25 = v3;
    v26 = *(a1 + 48);
    v18 = [v17 sendMakeResourceAvailableRequest:v6 reply:v23];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v21 = [*(a1 + 32) objectID];
    v22 = [v21 pl_shortURI];
    *buf = 138412290;
    v28 = v22;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to get the original resource for asset: %@", buf, 0xCu);
  }
}

- (void)_requestFinalizationOfNextAsset
{
  if ([(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher isCameraRunning])
  {
    v3 = PLPTPGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_INFO, "Camera view finder is running, skipping finalization requests", buf, 2u);
    }
  }

  else
  {
    *buf = 0;
    v6 = buf;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__20675;
    v9 = __Block_byref_object_dispose__20676;
    v10 = 0;
    v4 = MEMORY[0x1E69E9820];
    PLRunWithUnfairLock();
    [*(v6 + 5) objectValue];

    _Block_object_dispose(buf, 8);
  }
}

void __52__PHPTPAssetManager__requestFinalizationOfNextAsset__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = PLPTPGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(a1 + 32) + 96) count];
    *buf = 134217984;
    v17 = v3;
    _os_log_impl(&dword_19C86F000, v2, OS_LOG_TYPE_INFO, "Camera view finder is NOT running, sending finalization requests (pending:%lu)", buf, 0xCu);
  }

  while (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [*(*(a1 + 32) + 96) firstObject];
    if (!v4)
    {
      break;
    }

    v5 = *(a1 + 32);
    v6 = objc_initWeak(buf, v5);

    v7 = objc_alloc(MEMORY[0x1E69BF270]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__PHPTPAssetManager__requestFinalizationOfNextAsset__block_invoke_134;
    v13[3] = &unk_1E75A66C0;
    objc_copyWeak(&v15, buf);
    v8 = v4;
    v14 = v8;
    v9 = [v7 initWithBlock:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (v12)
    {
      objc_storeStrong((*(a1 + 32) + 104), v12);
    }

    [*(*(a1 + 32) + 96) removeObjectAtIndex:0];
  }
}

id __52__PHPTPAssetManager__requestFinalizationOfNextAsset__block_invoke_134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained photoLibrary];
    v6 = [v5 managedObjectContext];
    v7 = [v3 _sendFinalizationRequestForAsset:v4 moc:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addAssetsNeedingFinalization:(id)finalization
{
  finalizationCopy = finalization;
  v6 = MEMORY[0x1E69E9820];
  v7 = finalizationCopy;
  v5 = finalizationCopy;
  PLRunWithUnfairLock();
  [(PHPTPAssetManager *)self _requestFinalizationOfNextAsset:v6];
}

uint64_t __51__PHPTPAssetManager__addAssetsNeedingFinalization___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLPTPGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_19C86F000, v2, OS_LOG_TYPE_DEBUG, "Adding %lu assets to pending finalization queue.", &v5, 0xCu);
  }

  [*(*(a1 + 40) + 88) addObjectsFromArray:*(a1 + 32)];
  return [*(*(a1 + 40) + 96) addObjectsFromArray:*(a1 + 32)];
}

- (void)photoLibraryDidBecomeUnavailable:(id)unavailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 libraryDidBecomeUnavailable];
  }
}

- (void)photoLibraryDidChange:(id)change
{
  v148 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v135 = 0;
  v136 = &v135;
  v137 = 0x3032000000;
  v138 = __Block_byref_object_copy__20675;
  v139 = __Block_byref_object_dispose__20676;
  v140 = 0;
  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = __Block_byref_object_copy__20675;
  v133 = __Block_byref_object_dispose__20676;
  v134 = 0;
  v123 = MEMORY[0x1E69E9820];
  v124 = 3221225472;
  v125 = __43__PHPTPAssetManager_photoLibraryDidChange___block_invoke;
  v126 = &unk_1E75AADC0;
  v128 = &v129;
  selfCopy = self;
  PLRunWithUnfairLock();
  v117 = MEMORY[0x1E69E9820];
  v118 = 3221225472;
  v119 = __43__PHPTPAssetManager_photoLibraryDidChange___block_invoke_2;
  v120 = &unk_1E75AADC0;
  v122 = &v135;
  selfCopy2 = self;
  PLRunWithUnfairLock();
  selfCopy3 = self;
  if (!v136[5])
  {
    goto LABEL_95;
  }

  if (photoLibraryDidChange__completedInitialChangeHandling)
  {
    v84 = [changeCopy changeDetailsForFetchResult:?];
    if ([v84 hasIncrementalChanges])
    {
      goto LABEL_7;
    }

    v4 = [(PHPTPAssetManager *)self _fetchAssetsForIdentifiers:0];
    v5 = [PHFetchResultChangeDetails changeDetailsFromFetchResult:v136[5] toFetchResult:v4 changedObjects:MEMORY[0x1E695E0F0]];

    v84 = v5;
  }

  else
  {
    v4 = [(PHPTPAssetManager *)self _fetchAssetsForIdentifiers:0];
    v84 = [PHFetchResultChangeDetails changeDetailsFromFetchResult:v136[5] toFetchResult:v4 changedObjects:MEMORY[0x1E695E0F0]];
    photoLibraryDidChange__completedInitialChangeHandling = 1;
  }

LABEL_7:
  if (v84)
  {
    v6 = PLPTPGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      insertedObjects = [v84 insertedObjects];
      v8 = [insertedObjects count];
      changedObjects = [v84 changedObjects];
      v10 = [changedObjects count];
      removedObjects = [v84 removedObjects];
      v12 = [removedObjects count];
      *buf = 134218496;
      *&buf[4] = v8;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      *&buf[24] = v12;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "CHANGE NOTIFICATION: Inserted IDs: %lu, Changed IDs: %lu, Deleted IDs: %lu", buf, 0x20u);
    }

    array = [MEMORY[0x1E695DF70] array];
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    insertedObjects2 = [v84 insertedObjects];
    v14 = [insertedObjects2 countByEnumeratingWithState:&v113 objects:v147 count:16];
    if (v14)
    {
      v15 = *v114;
      obj = insertedObjects2;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v114 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v113 + 1) + 8 * i);
          deferredProcessingNeeded = [v17 deferredProcessingNeeded];
          v19 = PLPTPGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            objectID = [v17 objectID];
            pl_shortURI = [objectID pl_shortURI];
            *buf = 138543618;
            *&buf[4] = pl_shortURI;
            *&buf[12] = 2048;
            *&buf[14] = deferredProcessingNeeded;
            _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "Processing insert for asset (%{public}@) (deferredProcessingNeeded: %lu)", buf, 0x16u);
          }

          if ((deferredProcessingNeeded - 1) > 1u)
          {
            [array addObject:v17];
          }

          else
          {
            v22 = PLPTPGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              objectID2 = [v17 objectID];
              pl_shortURI2 = [objectID2 pl_shortURI];
              filename = [v17 filename];
              savedAssetType = [v17 savedAssetType];
              *buf = 67109890;
              *&buf[4] = deferredProcessingNeeded;
              *&buf[8] = 2114;
              *&buf[10] = pl_shortURI2;
              *&buf[18] = 2112;
              *&buf[20] = filename;
              *&buf[28] = 2048;
              *&buf[30] = savedAssetType;
              _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEBUG, "Requires camera deferred processing (%d) for asset (%{public}@) (filename: %@, savedAssetType: %ld)", buf, 0x26u);
            }

            v146 = v17;
            v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
            [(PHPTPAssetManager *)selfCopy3 _addAssetsNeedingFinalization:v27];
          }
        }

        insertedObjects2 = obj;
        v14 = [obj countByEnumeratingWithState:&v113 objects:v147 count:16];
      }

      while (v14);
    }

    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    changedObjects2 = [v84 changedObjects];
    v29 = [changedObjects2 countByEnumeratingWithState:&v109 objects:v145 count:16];
    if (v29)
    {
      v90 = *v110;
      v85 = v108;
      v87 = changedObjects2;
      do
      {
        v30 = 0;
        obja = v29;
        do
        {
          if (*v110 != v90)
          {
            objc_enumerationMutation(v87);
          }

          v31 = *(*(&v109 + 1) + 8 * v30);
          objectID3 = [v31 objectID];
          v33 = [changeCopy trashedStateChangedForPHAssetOID:objectID3];

          objectID4 = [v31 objectID];
          v35 = [changeCopy deferredProcessingNeededChangedForPHAssetOID:objectID4];

          objectID5 = [v31 objectID];
          v37 = [changeCopy contentOrThumbnailChangedForPHAssetOID:objectID5];

          objectID6 = [v31 objectID];
          v39 = [changeCopy hiddenStateChangedForPHAssetOID:objectID6];

          v40 = PLPTPGetLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            objectID7 = [v31 objectID];
            pl_shortURI3 = [objectID7 pl_shortURI];
            v43 = pl_shortURI3;
            v44 = @"N";
            if (v35)
            {
              v45 = @"Y";
            }

            else
            {
              v45 = @"N";
            }

            *buf = 138544386;
            *&buf[4] = pl_shortURI3;
            if (v33)
            {
              v46 = @"Y";
            }

            else
            {
              v46 = @"N";
            }

            *&buf[12] = 2112;
            if (v37)
            {
              v44 = @"Y";
            }

            *&buf[14] = v45;
            v47 = @"NO";
            if (v39)
            {
              v47 = @"Y";
            }

            *&buf[22] = 2112;
            *&buf[24] = v46;
            *&buf[32] = 2112;
            *&buf[34] = v44;
            v143 = 2112;
            v144 = v47;
            _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_DEBUG, "Processing change for asset (%{public}@) (deferredProcessingNeededChanged: %@, isTrashedChanged: %@, contentChanged: %@, hiddenChanged: %@)", buf, 0x34u);
          }

          if (v33)
          {
            if ([v130[5] containsObject:v31])
            {
              v48 = PLPTPGetLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                objectID8 = [v31 objectID];
                pl_shortURI4 = [objectID8 pl_shortURI];
                *buf = 138543362;
                *&buf[4] = pl_shortURI4;
                _os_log_impl(&dword_19C86F000, v48, OS_LOG_TYPE_DEBUG, "Not adding changed asset (%{public}@) to delegate", buf, 0xCu);
              }
            }

            else
            {
              isTrashed = [v31 isTrashed];
              v52 = array2;
              if ((isTrashed & 1) == 0)
              {
                v53 = PLPTPGetLog();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                {
                  objectID9 = [v31 objectID];
                  pl_shortURI5 = [objectID9 pl_shortURI];
                  *buf = 138543362;
                  *&buf[4] = pl_shortURI5;
                  _os_log_impl(&dword_19C86F000, v53, OS_LOG_TYPE_DEBUG, "Adding changed asset (%{public}@) to delegate", buf, 0xCu);
                }

                v52 = array;
              }

              [v52 addObject:v31];
            }
          }

          if (v37)
          {
            if ([v130[5] containsObject:v31])
            {
              if (([v31 isTrashed] & 1) != 0 || objc_msgSend(v31, "deferredProcessingNeeded") == 1 || objc_msgSend(v31, "deferredProcessingNeeded") == 2)
              {
                v56 = PLPTPGetLog();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  objectID10 = [v31 objectID];
                  pl_shortURI6 = [objectID10 pl_shortURI];
                  isTrashed2 = [v31 isTrashed];
                  deferredProcessingNeeded2 = [v31 deferredProcessingNeeded];
                  v61 = @"N";
                  if (isTrashed2)
                  {
                    v61 = @"Y";
                  }

                  *buf = 138543874;
                  *&buf[4] = pl_shortURI6;
                  *&buf[12] = 2112;
                  *&buf[14] = v61;
                  *&buf[22] = 2048;
                  *&buf[24] = deferredProcessingNeeded2;
                  _os_log_impl(&dword_19C86F000, v56, OS_LOG_TYPE_DEBUG, "Not adding changed asset (%{public}@) to delegate (isTrashed: %@, deferredProcessingNeeded: %lu)", buf, 0x20u);
                }
              }

              else
              {
                [array addObject:v31];
                v106 = MEMORY[0x1E69E9820];
                v107 = 3221225472;
                v108[0] = __43__PHPTPAssetManager_photoLibraryDidChange___block_invoke_125;
                v108[1] = &unk_1E75AAEB0;
                v108[2] = selfCopy3;
                v108[3] = v31;
                PLRunWithUnfairLock();
              }
            }

            else
            {
              [array3 addObject:v31];
            }
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          buf[24] = 0;
          v100 = MEMORY[0x1E69E9820];
          v101 = 3221225472;
          v102 = __43__PHPTPAssetManager_photoLibraryDidChange___block_invoke_126;
          v103 = &unk_1E75AADC0;
          v104 = selfCopy3;
          v105 = buf;
          PLRunWithUnfairLock();
          if (v39 && (*(*&buf[8] + 24) & 1) == 0)
          {
            if ([v31 isHidden])
            {
              v62 = array2;
            }

            else
            {
              v62 = array;
            }

            [v62 addObject:v31];
          }

          _Block_object_dispose(buf, 8);
          ++v30;
        }

        while (obja != v30);
        changedObjects2 = v87;
        v29 = [v87 countByEnumeratingWithState:&v109 objects:v145 count:16];
      }

      while (v29);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    removedObjects2 = [v84 removedObjects];
    v64 = [removedObjects2 countByEnumeratingWithState:&v96 objects:v141 count:16];
    if (v64)
    {
      v65 = *v97;
      do
      {
        for (j = 0; j != v64; ++j)
        {
          if (*v97 != v65)
          {
            objc_enumerationMutation(removedObjects2);
          }

          v67 = *(*(&v96 + 1) + 8 * j);
          v68 = PLPTPGetLog();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            objectID11 = [v67 objectID];
            pl_shortURI7 = [objectID11 pl_shortURI];
            *buf = 138543362;
            *&buf[4] = pl_shortURI7;
            _os_log_impl(&dword_19C86F000, v68, OS_LOG_TYPE_DEBUG, "Processing remove for asset (%{public}@)", buf, 0xCu);
          }

          if ([v130[5] containsObject:v67])
          {
            v71 = PLPTPGetLog();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              objectID12 = [v67 objectID];
              pl_shortURI8 = [objectID12 pl_shortURI];
              deferredProcessingNeeded3 = [v67 deferredProcessingNeeded];
              isTrashed3 = [v67 isTrashed];
              *buf = 138543874;
              *&buf[4] = pl_shortURI8;
              v76 = @"N";
              if (isTrashed3)
              {
                v76 = @"Y";
              }

              *&buf[12] = 2048;
              *&buf[14] = deferredProcessingNeeded3;
              *&buf[22] = 2112;
              *&buf[24] = v76;
              _os_log_impl(&dword_19C86F000, v71, OS_LOG_TYPE_DEBUG, "Not removing deleted asset (%{public}@) from delegate (deferredProcessingNeeded: %lu, isTrashed: %@)", buf, 0x20u);
            }
          }

          else
          {
            v77 = PLPTPGetLog();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              objectID13 = [v67 objectID];
              pl_shortURI9 = [objectID13 pl_shortURI];
              *buf = 138543362;
              *&buf[4] = pl_shortURI9;
              _os_log_impl(&dword_19C86F000, v77, OS_LOG_TYPE_DEBUG, "Removing asset (%{public}@) from delegate", buf, 0xCu);
            }

            [array2 addObject:v67];
          }
        }

        v64 = [removedObjects2 countByEnumeratingWithState:&v96 objects:v141 count:16];
      }

      while (v64);
    }

    if ([array count] || objc_msgSend(array3, "count") || objc_msgSend(array2, "count"))
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy3->_delegate);
      v81 = [array valueForKey:@"localIdentifier"];
      v82 = [array2 valueForKey:@"localIdentifier"];
      v83 = [array3 valueForKey:@"localIdentifier"];
      [WeakRetained addedPhotoKeys:v81 deletedPhotoKeys:v82 changedPhotoKeys:v83 changePendingPhotoKeys:0];
    }

    v95 = v84;
    PLRunWithUnfairLock();
  }

LABEL_95:
  _Block_object_dispose(&v129, 8);

  _Block_object_dispose(&v135, 8);
}

uint64_t __43__PHPTPAssetManager_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x1E695DFD8] setWithArray:*(*(a1 + 32) + 88)];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __43__PHPTPAssetManager_photoLibraryDidChange___block_invoke_130(uint64_t a1)
{
  *(*(a1 + 32) + 64) = [*(a1 + 40) fetchResultAfterChanges];

  return MEMORY[0x1EEE66BB8]();
}

- (int64_t)cplStorageState
{
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  isCloudPhotoLibraryEnabled = [photoLibrary isCloudPhotoLibraryEnabled];

  if (!isCloudPhotoLibraryEnabled)
  {
    return 0;
  }

  photoLibrary2 = [(PHPTPAssetManager *)self photoLibrary];
  isKeepOriginalsEnabled = [photoLibrary2 isKeepOriginalsEnabled];

  if (isKeepOriginalsEnabled)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)libraryIsAvailable
{
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  v3 = photoLibrary != 0;

  return v3;
}

- (void)ptpNotifyHostIsTrusted
{
  if (self->_hostIsTrusted)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:481 description:{@"%s is being called more than once", "-[PHPTPAssetManager ptpNotifyHostIsTrusted]"}];
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  PLRunWithUnfairLock();
  if (*(v6 + 24) == 1)
  {
    [(PHPTPAssetManager *)self _ensureDeferredRenderingIsComplete];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __43__PHPTPAssetManager_ptpNotifyHostIsTrusted__block_invoke(uint64_t result)
{
  *(*(result + 32) + 146) = 1;
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 144);
  return result;
}

- (void)ptpCloseSession
{
  if (self->_ptpCloseSessionWasCalled)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:473 description:{@"%s is being called more than once", "-[PHPTPAssetManager ptpCloseSession]"}];
  }

  PLRunWithUnfairLock();
}

uint64_t __36__PHPTPAssetManager_ptpCloseSession__block_invoke(uint64_t result)
{
  *(*(result + 32) + 144) = 0;
  *(*(result + 32) + 145) = 1;
  return result;
}

- (void)ptpOpenSession
{
  if (self->_ptpOpenSessionWasCalled)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:459 description:{@"%s is being called more than once", "-[PHPTPAssetManager ptpOpenSession]"}];
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  PLRunWithUnfairLock();
  if (*(v6 + 24) == 1)
  {
    [(PHPTPAssetManager *)self _ensureDeferredRenderingIsComplete];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __35__PHPTPAssetManager_ptpOpenSession__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 145) = 0;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 146);
  return [*(a1 + 32) _updateWhetherHiddenAssetsShouldBeVended];
}

- (id)ptpAssetReaderForAssetHandle:(id)handle
{
  v57 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v54[1] = MEMORY[0x1E69E9820];
  v54[2] = 3221225472;
  v54[3] = __50__PHPTPAssetManager_ptpAssetReaderForAssetHandle___block_invoke;
  v54[4] = &unk_1E75AB270;
  v54[5] = self;
  PLRunWithUnfairLock();
  v5 = [(PHPTPAssetManager *)self _photosAssetForPTPAssetHandle:handleCopy];
  v6 = [PHAssetResource assetResourcesForAsset:v5 includeDerivatives:0 includeMetadata:0 includeAdjustmentOverflowDataBlob:0];
  v7 = -[PHPTPAssetManager _resourceOfType:fromResources:](self, "_resourceOfType:fromResources:", [handleCopy resourceType], v6);
  v52 = [(PHPTPAssetManager *)self _createPTPAssetsFromAsset:v5 photosResources:v6 withConversionSupport:self->_formatConversionManager includeMetadata:0 includeAdjustmentOverflowDataBlob:1];
  v8 = -[PHPTPAssetManager _ptpAssetWithType:fromPTPAssets:requiresConversion:](self, "_ptpAssetWithType:fromPTPAssets:requiresConversion:", [handleCopy resourceType], v52, objc_msgSend(handleCopy, "requiresConversion"));
  privateFileURL = [v7 privateFileURL];
  v10 = PLPTPGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v56 = v8;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "Requesting path provider for ptpAsset: %@", buf, 0xCu);
  }

  resourceHandle = [v8 resourceHandle];
  if ([resourceHandle resourceType] != 7)
  {
    v26 = 0;
    goto LABEL_14;
  }

  v50 = privateFileURL;
  overflowURL = [v8 overflowURL];

  if (overflowURL)
  {
    v48 = v7;
    v46 = v6;
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v47 = v5;
    uuid = [v5 uuid];
    v17 = [v8 url];
    path = [v17 path];
    lastPathComponent = [path lastPathComponent];
    resourceHandle = [v13 stringWithFormat:@"%@-%@-reassembled-data-%@", v15, uuid, lastPathComponent];

    v20 = MEMORY[0x1E695DFF8];
    v21 = NSTemporaryDirectory();
    v22 = [v21 stringByAppendingPathComponent:resourceHandle];
    v23 = [v20 fileURLWithPath:v22 isDirectory:0];

    v24 = MEMORY[0x1E69C0660];
    v25 = [v8 url];
    v54[0] = 0;
    v26 = [v24 writeReassembleAdjustmentsPropertyListAtURL:v25 toURL:v23 error:v54];
    v27 = v54[0];

    if (v26)
    {
      privateFileURL = v23;
    }

    else
    {
      v29 = PLPTPGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v27;
        _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_ERROR, "Error writing combined adjustment data file (%@)", buf, 0xCu);
      }

      privateFileURL = 0;
    }

    v5 = v47;
    v7 = v48;

    v6 = v46;
LABEL_14:

    if (privateFileURL)
    {
      goto LABEL_15;
    }

LABEL_9:
    v28 = 0;
    goto LABEL_26;
  }

  v26 = 0;
  privateFileURL = v50;
  if (!v50)
  {
    goto LABEL_9;
  }

LABEL_15:
  [(PHPTPAssetManager *)self _logGreenTeaStatusForPTPAssetHandle:handleCopy photosAsset:v5];
  if ([handleCopy requiresConversion])
  {
    v30 = [(PHPTPAssetManager *)self _primaryResourceForAsset:v5 fromResources:v6];
    if (v30)
    {
      path2 = v30;
      [privateFileURL path];
      v32 = v49 = v7;
      [path2 privateFileURL];
      v33 = v51 = privateFileURL;
      [v33 path];
      v35 = v34 = v6;
      v28 = [(PHPTPAssetManager *)self _ptpAssetReaderForFormatConvertedPTPAsset:v8 ofPhotosAsset:v5 resourcePath:v32 originalResourcePath:v35];

      v6 = v34;
      privateFileURL = v51;

      v7 = v49;
      v53 = v5;
      PLRunWithUnfairLock();
    }

    else
    {
      path2 = PLPTPGetLog();
      if (os_log_type_enabled(path2, OS_LOG_TYPE_ERROR))
      {
        [v5 objectID];
        v42 = v41 = v7;
        [v42 pl_shortURI];
        v44 = v43 = privateFileURL;
        *buf = 138412290;
        v56 = v44;
        _os_log_impl(&dword_19C86F000, path2, OS_LOG_TYPE_ERROR, "Failed to get the original resource for asset: %@", buf, 0xCu);

        privateFileURL = v43;
        v7 = v41;
      }

      v28 = 0;
    }
  }

  else
  {
    v36 = [PHPTPAssetReader alloc];
    v37 = privateFileURL;
    v38 = v36;
    v39 = v37;
    path2 = [v37 path];
    if (v26)
    {
      v40 = [(PHPTPAssetReader *)v38 initWithTemporaryFileDeletedOnDeallocPath:path2];
    }

    else
    {
      v40 = [(PHPTPAssetReader *)v38 initWithPath:path2];
    }

    v28 = v40;
    privateFileURL = v39;
  }

LABEL_26:

  return v28;
}

uint64_t __50__PHPTPAssetManager_ptpAssetReaderForAssetHandle___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [v1 downloadedCount] + 1;

  return [v1 setDownloadedCount:v2];
}

uint64_t __50__PHPTPAssetManager_ptpAssetReaderForAssetHandle___block_invoke_109(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) kind];

  return [v1 incrementConversionCountForAssetType:v2];
}

- (BOOL)ptpDeletePhotoForAssetHandle:(id)handle
{
  v32 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = [(PHPTPAssetManager *)self _photosAssetForPTPAssetHandle:handleCopy];
  ptpProperties = [v5 ptpProperties];
  ptpTrashedState = [ptpProperties ptpTrashedState];

  v8 = PLPTPGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    resourceType = [handleCopy resourceType];
    objectID = [v5 objectID];
    pl_shortURI = [objectID pl_shortURI];
    *buf = 134218242;
    v29 = resourceType;
    v30 = 2114;
    v31 = pl_shortURI;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "Attempting to delete resource (%lu) for asset: %{public}@", buf, 0x16u);
  }

  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __50__PHPTPAssetManager_ptpDeletePhotoForAssetHandle___block_invoke;
  v24[3] = &unk_1E75AA318;
  v13 = handleCopy;
  v25 = v13;
  v26 = v5;
  v27 = ptpTrashedState;
  v23 = 0;
  v14 = v5;
  v15 = [photoLibrary performChangesAndWait:v24 error:&v23];
  v16 = v23;

  v17 = [(PHPTPAssetManager *)self _photosAssetForPTPAssetHandle:v13];
  if ([PHPTPUtilities shouldExpungeAsset:v17])
  {
    v18 = PLPTPGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      objectID2 = [v17 objectID];
      pl_shortURI2 = [objectID2 pl_shortURI];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "resourceType")}];
      *buf = 138543618;
      v29 = pl_shortURI2;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_INFO, "Expunge asset %{public}@ for asset resource: %@", buf, 0x16u);
    }

    [(PHPTPAssetManager *)self _expungeAsset:v17 withReason:@"PTP client deleted the asset"];
  }

  return v15;
}

void __50__PHPTPAssetManager_ptpDeletePhotoForAssetHandle___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[PHPTPAsset ptpTrashedStateForResourceType:](PHPTPAsset, "ptpTrashedStateForResourceType:", [*(a1 + 32) resourceType]);
  v3 = [PHAssetChangeRequest changeRequestForAsset:*(a1 + 40)];
  [v3 setPtpTrashedState:*(a1 + 48) | v2];
  v4 = PLPTPGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = 134218240;
    v7 = v5;
    v8 = 2048;
    v9 = v2;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEFAULT, "Updated asset trashed state (old: 0x%llx, new: 0x%llx)", &v6, 0x16u);
  }
}

- (BOOL)ptpCanDeleteFiles
{
  photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
  isCloudPhotoLibraryEnabled = [photoLibrary isCloudPhotoLibraryEnabled];

  return isCloudPhotoLibraryEnabled ^ 1;
}

- (id)ptpImagePropertiesForAssetHandle:(id)handle
{
  v16 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (-[PHPTPAssetManager _isThumbnailSupportedForResourceType:](self, "_isThumbnailSupportedForResourceType:", [handleCopy resourceType]))
  {
    v5 = [(PHPTPAssetManager *)self _photosAssetForPTPAssetHandle:handleCopy];
    v6 = [PHAssetResource assetResourcesForAsset:v5 includeDerivatives:0 includeMetadata:0 includeAdjustmentOverflowDataBlob:0];
    v7 = -[PHPTPAssetManager _resourceOfType:fromResources:](self, "_resourceOfType:fromResources:", [handleCopy resourceType], v6);
    v8 = objc_alloc(MEMORY[0x1E69C0718]);
    privateFileURL = [v7 privateFileURL];
    v10 = [v8 initWithMediaURL:privateFileURL detail:2 timeZoneLookup:0 shouldCache:0];

    ptpMediaMetadata = [v10 ptpMediaMetadata];
  }

  else
  {
    v12 = PLPTPGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134217984;
      resourceType = [handleCopy resourceType];
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "Resource type %ld doe snot support image properties", &v14, 0xCu);
    }

    ptpMediaMetadata = 0;
  }

  return ptpMediaMetadata;
}

- (id)ptpThumbnailForAssetHandle:(id)handle size:(CGSize)size compressionQuality:(float)quality
{
  height = size.height;
  width = size.width;
  v60 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"[ptpAssetHandle isKindOfClass:[PHPTPAssetHandle class]]"}];
  }

  v11 = -[PHPTPAssetManager _isThumbnailSupportedForResourceType:](self, "_isThumbnailSupportedForResourceType:", [handleCopy resourceType]);
  v12 = PLPTPGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = handleCopy;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "Requesting thumbnail for asset handle: %@", &buf, 0xCu);
    }

    if (width >= height)
    {
      height = width;
    }

    v12 = +[PHImageManager defaultManager];
    v14 = [(PHPTPAssetManager *)self _photosAssetForPTPAssetHandle:handleCopy];
    if (!v14)
    {
      v17 = 0;
LABEL_42:

      goto LABEL_43;
    }

    if ([handleCopy resourceType] == 2 && objc_msgSend(v14, "hasAdjustments"))
    {
      *&v15 = quality;
      data = [(PHPTPAssetManager *)self _ptpThumbnailForOriginalVideoAsset:v14 size:height compressionQuality:height, v15];
    }

    else
    {
      v18 = objc_alloc_init(PHImageRequestOptions);
      -[PHImageRequestOptions setVersion:](v18, "setVersion:", -[PHPTPAssetManager _imageVersionForAsset:resourceType:](self, "_imageVersionForAsset:resourceType:", v14, [handleCopy resourceType]));
      [(PHImageRequestOptions *)v18 setSynchronous:1];
      [(PHImageRequestOptions *)v18 setResizeMode:1];
      [(PHImageRequestOptions *)v18 setDeliveryMode:1];
      [(PHImageRequestOptions *)v18 setNetworkAccessAllowed:0];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v58 = 0x2020000000;
      v59 = 0;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __72__PHPTPAssetManager_ptpThumbnailForAssetHandle_size_compressionQuality___block_invoke;
      v42[3] = &unk_1E75A6698;
      v42[4] = self;
      v19 = handleCopy;
      v43 = v19;
      v20 = v14;
      v44 = v20;
      v47 = height;
      v48 = height;
      v21 = v18;
      v45 = v21;
      p_buf = &buf;
      [v12 requestNewCGImageForAsset:v20 targetSize:0 contentMode:v21 options:v42 resultHandler:height, height];
      if (*(*(&buf + 1) + 24))
      {
        data = [MEMORY[0x1E695DF88] data];
        identifier = [*MEMORY[0x1E6982E58] identifier];
        v23 = CGImageDestinationCreateWithData(data, identifier, 1uLL, 0);

        if (v23)
        {
          if ([v19 orientation] == 1)
          {
            v24 = 0;
          }

          else
          {
            v55[0] = *MEMORY[0x1E696D328];
            v40 = [MEMORY[0x1E696AD98] numberWithDouble:height];
            v30 = *MEMORY[0x1E696E000];
            v56[0] = v40;
            v56[1] = MEMORY[0x1E695E118];
            v31 = *MEMORY[0x1E696DE78];
            v55[1] = v30;
            v55[2] = v31;
            v32 = MEMORY[0x1E696AD98];
            [v19 orientation];
            v33 = [v32 numberWithInteger:PFOrientationInverse()];
            v56[2] = v33;
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
          }

          CGImageDestinationAddImage(v23, *(*(&buf + 1) + 24), v24);
          if (!CGImageDestinationFinalize(v23))
          {
            v34 = PLPTPGetLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              objectID = [v20 objectID];
              pl_shortURI = [objectID pl_shortURI];
              resourceType = [v19 resourceType];
              *v49 = 134218498;
              v50 = v23;
              v51 = 2114;
              v52 = pl_shortURI;
              v53 = 2048;
              v54 = resourceType;
              _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_ERROR, "Failed to finalize CGImageDestinationRef (%p) for asset %{public}@ and resource %ld", v49, 0x20u);
            }
          }

          CFRelease(v23);
          CGImageRelease(*(*(&buf + 1) + 24));
          v29 = 1;
        }

        else
        {
          v26 = PLPTPGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            objectID2 = [v20 objectID];
            pl_shortURI2 = [objectID2 pl_shortURI];
            *v49 = 138543362;
            v50 = pl_shortURI2;
            _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "Failed to create a CGImageDestinationRef for asset %{public}@", v49, 0xCu);
          }

          CGImageRelease(*(*(&buf + 1) + 24));
          v29 = 0;
          v24 = data;
          data = 0;
        }
      }

      else
      {
        if (-[PHPTPAssetManager _isSupportedPhotoAssetResourceType:](self, "_isSupportedPhotoAssetResourceType:", [v19 resourceType]))
        {
          data = 0;
        }

        else
        {
          *&v25 = quality;
          data = [(PHPTPAssetManager *)self _ptpThumbnailForOriginalVideoAsset:v20 size:height compressionQuality:height, v25];
        }

        v29 = 1;
      }

      _Block_object_dispose(&buf, 8);
      if ((v29 & 1) == 0)
      {
        v17 = 0;
LABEL_41:

        goto LABEL_42;
      }
    }

    if (![(__CFData *)data length])
    {

      v37 = PLPTPGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = handleCopy;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "No thumbnail for asset handle: %@", &buf, 0xCu);
      }

      data = 0;
    }

    data = data;
    v17 = data;
    goto LABEL_41;
  }

  if (v13)
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = handleCopy;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "No thumbnail for asset handle: %@", &buf, 0xCu);
  }

  v17 = 0;
LABEL_43:

  return v17;
}

void __72__PHPTPAssetManager_ptpThumbnailForAssetHandle_size_compressionQuality___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2 && [*(a1 + 32) _isSupportedPhotoAssetResourceType:{objc_msgSend(*(a1 + 40), "resourceType")}])
  {
    v4 = PLPTPGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 48) objectID];
      v6 = [v5 pl_shortURI];
      v7 = DCIM_NSStringFromCGSize();
      v8 = *(a1 + 56);
      v9 = 138543874;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Image manager did not return a thumbnail for asset %{public}@ for size %{public}@ with options %{public}@", &v9, 0x20u);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = a2;
}

- (void)ptpEnumerateAssetsWithLocalIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PHPTPAssetManager_ptpEnumerateAssetsWithLocalIdentifiers_usingBlock___block_invoke;
  v9[3] = &unk_1E75A6710;
  v9[4] = self;
  v10 = blockCopy;
  v7 = blockCopy;
  v8 = [(PHPTPAssetManager *)self _enumerateAssetsWithLocalIdentifiers:identifiers usingBlock:v9];
}

void __71__PHPTPAssetManager_ptpEnumerateAssetsWithLocalIdentifiers_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a2;
  v7 = a3;
  v8 = v13;
  v9 = v7;
  if (!v13)
  {
    (*(*(a1 + 40) + 16))();
    v8 = 0;
  }

  v10 = [*(a1 + 32) _createPTPAssetsFromAsset:v8 photosResources:v9 withConversionSupport:*(*(a1 + 32) + 48) includeMetadata:0 includeAdjustmentOverflowDataBlob:1];
  v11 = *(a1 + 40);
  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v10 copyItems:1];
  (*(v11 + 16))(v11, v12, a4);
}

- (void)_ptpEnumerateAllAssetsUsingBlock:(id)block
{
  blockCopy = block;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __54__PHPTPAssetManager__ptpEnumerateAllAssetsUsingBlock___block_invoke;
  v19 = &unk_1E75AADC0;
  selfCopy = self;
  v21 = &v22;
  PLRunWithUnfairLock();
  v5 = objc_alloc_init(PHPTPDebugAnalytics);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PHPTPAssetManager__ptpEnumerateAllAssetsUsingBlock___block_invoke_2;
  v12[3] = &unk_1E75A6670;
  v12[4] = self;
  v15 = &v22;
  v6 = v5;
  v13 = v6;
  v7 = blockCopy;
  v14 = v7;
  v8 = [(PHPTPAssetManager *)self _enumerateAssetsWithLocalIdentifiers:0 usingBlock:v12];
  [(PHPTPDebugAnalytics *)v6 reportResourceCounts];
  v9 = *(v23 + 24);
  v10 = v8;
  PLRunWithUnfairLock();
  v11 = *(v23 + 24);
  if (v11 != 1 || (v9 & 1) != 0)
  {
    if ((v11 & 1) == 0 && v9)
    {
      [(PHPTPAssetManager *)self _unvendHiddenAssetsForResult:v10];
    }
  }

  else
  {
    [(PHPTPAssetManager *)self _vendHiddenAssetsForResult:v10 withClientBlock:v7];
  }

  _Block_object_dispose(&v22, 8);
}

void __54__PHPTPAssetManager__ptpEnumerateAllAssetsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _processAsset:a2 resources:a3 shouldVendHiddenAssets:*(*(*(a1 + 56) + 8) + 24) resourceAnalytics:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)ptpEnumerateAllAssetsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:*MEMORY[0x1E69BFF18]];
  mEMORY[0x1E698B0D8] = [MEMORY[0x1E698B0D8] sharedGuard];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PHPTPAssetManager_ptpEnumerateAllAssetsUsingBlock___block_invoke;
  v8[3] = &unk_1E75A84A0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [mEMORY[0x1E698B0D8] authenticateForSubject:v5 completion:v8];
}

void __53__PHPTPAssetManager_ptpEnumerateAllAssetsUsingBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _ptpEnumerateAllAssetsUsingBlock:*(a1 + 40)];
  }

  else
  {
    v6 = PLPTPGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed APGuard authentication: %@", &v7, 0xCu);
    }

    LOBYTE(v7) = 0;
    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }
}

- (void)setHostCharacteristics:(id)characteristics
{
  v3 = MEMORY[0x1E695DF90];
  characteristicsCopy = characteristics;
  v5 = objc_alloc_init(v3);
  v6 = [characteristicsCopy objectForKeyedSubscript:@"PLPTPHostCharacteristicsKeyMake"];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C0A18]];

  v7 = [characteristicsCopy objectForKeyedSubscript:@"PLPTPHostCharacteristicsKeyOS"];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69C09F0]];

  v8 = [characteristicsCopy objectForKeyedSubscript:@"PLPTPHostCharacteristicsKeyOSVersion"];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69C0A38]];

  v9 = [characteristicsCopy objectForKeyedSubscript:@"PLPTPHostCharacteristicsKeyTransport"];

  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C0A10]];
  [v5 setObject:@"YES" forKeyedSubscript:*MEMORY[0x1E69C09E0]];
  v11 = v5;
  v10 = v5;
  PLRunWithUnfairLock();
}

- (void)setPeerMediaCapabilities:(id)capabilities
{
  v11 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  v5 = PLPTPGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v10 = capabilitiesCopy;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Set peer media capabilities: %@", buf, 0xCu);
  }

  [(PHPTPFormatConversionManager *)self->_formatConversionManager setPeerMediaCapabilities:capabilitiesCopy];
  v7 = MEMORY[0x1E69E9820];
  v8 = capabilitiesCopy;
  v6 = capabilitiesCopy;
  PLRunWithUnfairLock();
  self->_sortAscending = [v6 sortSourceEnumerationAscending];
}

void __46__PHPTPAssetManager_setPeerMediaCapabilities___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) platformInformation];
  [v1 updateWithPlatformInformation:v2];
}

- (void)setDelegate:(id)delegate
{
  v18 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = PLPTPGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = delegateCopy;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "setDelegate: %@", &v16, 0xCu);
  }

  v6 = objc_storeWeak(&self->_delegate, delegateCopy);
  if (delegateCopy)
  {
    v7 = PLPTPGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      cameraWatcher = self->_cameraWatcher;
      v16 = 134217984;
      v17 = cameraWatcher;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Starting camera viewfinder watching (%p)", &v16, 0xCu);
    }

    [(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher startWatching];
    [(PHPTPAssetManager *)self _startAnalyticsCollection];
    if (objc_opt_respondsToSelector())
    {
      [(PFCameraViewfinderSessionWatcher *)delegateCopy libraryDidBecomeAvailable];
    }
  }

  else
  {
    [(PHPhotoLibrary *)self->_photoLibrary unregisterChangeObserver:self];
    photoLibrary = [(PHPTPAssetManager *)self photoLibrary];
    photoLibraryBundle = [photoLibrary photoLibraryBundle];
    assetsdClient = [photoLibraryBundle assetsdClient];
    notificationClient = [assetsdClient notificationClient];
    [notificationClient asyncNotifyEndOfInterestForUnrenderedCinematicVideoItems];

    [(PHPTPAssetManager *)self _stopAnalyticsCollectionAndReport];
    v13 = PLPTPGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = self->_cameraWatcher;
      v16 = 134217984;
      v17 = v14;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "Stopping camera viewfinder watching (%p)", &v16, 0xCu);
    }

    [(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher stopWatching];
    v15 = self->_cameraWatcher;
    self->_cameraWatcher = 0;
  }
}

- (void)dealloc
{
  [(PHPTPFormatConversionManager *)self->_formatConversionManager invalidate];
  v3.receiver = self;
  v3.super_class = PHPTPAssetManager;
  [(PHPTPAssetManager *)&v3 dealloc];
}

- (PHPTPAssetManager)initWithLibrary:(id)library
{
  libraryCopy = library;
  v24.receiver = self;
  v24.super_class = PHPTPAssetManager;
  v6 = [(PHPTPAssetManager *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v7->_libraryAvailabilityStatus = 2;
    v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v7->_fileManager;
    v7->_fileManager = v8;

    v10 = objc_alloc_init(PHPTPFormatConversionManager);
    formatConversionManager = v7->_formatConversionManager;
    v7->_formatConversionManager = v10;

    v7->_sortAscending = 1;
    if (MKBDeviceUnlockedSinceBoot() != 1)
    {
      [(PHPTPAssetManager *)v7 _registerForFirstUnlockNotification];
    }

    v7->_vendedAssetsLock._os_unfair_lock_opaque = 0;
    v7->_analyticsDataLock._os_unfair_lock_opaque = 0;
    v12 = dispatch_group_create();
    analyticsAsyncDataGroup = v7->_analyticsAsyncDataGroup;
    v7->_analyticsAsyncDataGroup = v12;

    array = [MEMORY[0x1E695DF70] array];
    finalizationRequestLock_deferredAssets = v7->_finalizationRequestLock_deferredAssets;
    v7->_finalizationRequestLock_deferredAssets = array;

    array2 = [MEMORY[0x1E695DF70] array];
    finalizationRequestLock_inflightAssetsRequiringFinalization = v7->_finalizationRequestLock_inflightAssetsRequiringFinalization;
    v7->_finalizationRequestLock_inflightAssetsRequiringFinalization = array2;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INITIATED, 0);

    v20 = dispatch_queue_create("com.apple.photos.PHPTPAssetManager.finalizationrequestqueue", v19);
    v21 = [objc_alloc(MEMORY[0x1E69C0690]) initWithDispatchQueue:v20 delegate:v7];
    cameraWatcher = v7->_cameraWatcher;
    v7->_cameraWatcher = v21;

    v7->_finalizationRequestLock._os_unfair_lock_opaque = 0;
    v7->_provideDiagnosticFile = [objc_opt_class() _shouldIncludeDiagnosticFile];
    [(PHPhotoLibrary *)v7->_photoLibrary registerChangeObserver:v7];
    [(PHPhotoLibrary *)v7->_photoLibrary registerAvailabilityObserver:v7];
    v7->_sessionAndTrustedStateLock._os_unfair_lock_opaque = 0;
    [(PHPTPAssetManager *)v7 _updateWhetherHiddenAssetsShouldBeVended];
  }

  return v7;
}

- (PHPTPAssetManager)init
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [PHPhotoLibrary alloc];
  v4 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v5 = [(PHPhotoLibrary *)v3 initWithPhotoLibraryURL:v4];

  v11 = 0;
  v6 = [(PHPhotoLibrary *)v5 openAndWaitWithUpgrade:0 error:&v11];
  v7 = v11;
  if (v6)
  {
    self = [(PHPTPAssetManager *)self initWithLibrary:v5];
    selfCopy = self;
  }

  else
  {
    v9 = PLPTPGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to open photo library (ERROR: %@)", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)_isPrimaryAssetResourceType:(int64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  if (type <= 0x14)
  {
    if (((1 << type) & 0x31FF8) != 0)
    {
      return 0;
    }

    if (((1 << type) & 0x1CE000) != 0)
    {
LABEL_8:
      v7 = PLPTPGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

    if (((1 << type) & 6) != 0)
    {
      return 1;
    }
  }

  if ((type - 101) > 0x12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAssetManager.m" lineNumber:1197 description:{@"Unhandled resource type (%lu) in %s", type, "+[PHPTPAssetManager _isPrimaryAssetResourceType:]"}];
  }

  else if (((1 << (type - 101)) & 0x7ED7F) != 0)
  {
    goto LABEL_8;
  }

  return 0;
}

+ (BOOL)_shouldIncludeDiagnosticFile
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PLCameraProvideDiagnosticFile", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

@end