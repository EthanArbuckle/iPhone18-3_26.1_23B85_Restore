@interface PHCachingImageManager
+ (id)_chooseImageTableFormatForPreheatingFromFormats:(id)formats targetSize:(CGSize)size contentMode:(int64_t)mode returnBestTableRegardlessOfFit:(BOOL)fit;
- (BOOL)_cacheImageResult:(id)result forRequest:(id)request;
- (BOOL)_canPopulateCacheForResult:(id)result;
- (PHCachingImageManager)init;
- (id)_cacheFailReasonFromInfo:(id)info;
- (id)_imageTableForPreheatingDegradedOpportunisticRequestsWithPhotoLibrary:(id)library;
- (id)_tableFormatsForLibrary:(id)library;
- (void)_commitCacheChanges;
- (void)_handleCachingImageRequestResult:(id)result request:(id)request context:(id)context;
- (void)_handleMemoryWarning;
- (void)_preheatImageTable:(id)table forAssets:(id)assets;
- (void)_scheduleOrCommitCacheChangesIfNeeded;
- (void)additionalWorkForImageRequestCompletedWithResult:(id)result request:(id)request context:(id)context;
- (void)imageCache:(id)cache didEvictCacheEntry:(id)entry;
- (void)mediaRequestContext:(id)context isQueryingCacheForRequest:(id)request didWait:(BOOL *)wait didFindImage:(BOOL *)image resultHandler:(id)handler;
- (void)startCachingImagesForAssets:(NSArray *)assets targetSize:(CGSize)targetSize contentMode:(PHImageContentMode)contentMode options:(PHImageRequestOptions *)options;
- (void)stopCachingImagesForAllAssets;
- (void)stopCachingImagesForAssets:(NSArray *)assets targetSize:(CGSize)targetSize contentMode:(PHImageContentMode)contentMode options:(PHImageRequestOptions *)options;
@end

@implementation PHCachingImageManager

- (PHCachingImageManager)init
{
  v15.receiver = self;
  v15.super_class = PHCachingImageManager;
  v2 = [(PHImageManager *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    *(v2 + 10) = 0;
    v5 = objc_alloc_init(PHImageCache);
    v6 = *(v2 + 6);
    *(v2 + 6) = v5;

    [*(v2 + 6) setDelegate:v2];
    v7 = dispatch_queue_create("com.apple.photos.imageManagerCache", 0);
    v8 = *(v2 + 8);
    *(v2 + 8) = v7;

    v9 = dispatch_get_global_queue(0, 0);
    v10 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, v9);
    v11 = *(v2 + 9);
    *(v2 + 9) = v10;

    objc_initWeak(&location, v2);
    objc_copyWeak(&v13, &location);
    pl_dispatch_source_set_event_handler();
    dispatch_resume(*(v2 + 9));
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)imageCache:(id)cache didEvictCacheEntry:(id)entry
{
  v12 = *MEMORY[0x1E69E9840];
  imageRequestIDForPopulatingCache = [entry imageRequestIDForPopulatingCache];
  if (imageRequestIDForPopulatingCache)
  {
    v6 = imageRequestIDForPopulatingCache;
    v7 = PLImageManagerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      managerID = [(PHImageManager *)self managerID];
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "[RM][cache]: %ld-%ld cache entry was evicted with inflight request ID, cancelling now", buf, 0x16u);
    }

    if (PHImageManagerRecordEnabled())
    {
      [PHImageManagerRequestTracer traceMessageForRequestID:v6 message:@"[RM][cache]: %ld-%ld cache entry was evicted with inflight request ID, cancelling now", [(PHImageManager *)self managerID], v6];
    }

    [(PHImageManager *)self cancelImageRequest:v6];
  }
}

- (void)mediaRequestContext:(id)context isQueryingCacheForRequest:(id)request didWait:(BOOL *)wait didFindImage:(BOOL *)image resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_cachingLock);
  cachingRequestIDs = self->_cachingRequestIDs;
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(requestCopy, "requestID")}];
  LOBYTE(cachingRequestIDs) = [(NSMutableSet *)cachingRequestIDs containsObject:v14];

  os_unfair_lock_unlock(&self->_cachingLock);
  if ((cachingRequestIDs & 1) == 0)
  {
    imageCache = self->_imageCache;
    asset = [requestCopy asset];
    displaySpec = [requestCopy displaySpec];
    [displaySpec targetSize];
    v19 = v18;
    v21 = v20;
    displaySpec2 = [requestCopy displaySpec];
    [displaySpec2 contentMode];
    displaySpec3 = [requestCopy displaySpec];
    [displaySpec3 normalizedCropRect];
    v28 = _buildCacheKey(asset, v19, v21, v24, v25, v26, v27);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __106__PHCachingImageManager_mediaRequestContext_isQueryingCacheForRequest_didWait_didFindImage_resultHandler___block_invoke;
    v29[3] = &unk_1E75A4C48;
    v30 = requestCopy;
    [(PHImageCache *)imageCache queryEntryForKey:v28 didWaitForInFlightRequest:wait didFindImage:image entryIsValidBlock:v29 resultHandler:handlerCopy];
  }
}

uint64_t __106__PHCachingImageManager_mediaRequestContext_isQueryingCacheForRequest_didWait_didFindImage_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) asset];
  v5 = [v4 deferredProcessingNeeded];
  v6 = [v3 objectForKeyedSubscript:@"deferredProcessing"];
  v7 = [v6 intValue];

  if (v7 == v5)
  {
    v8 = [*(a1 + 32) asset];
    v9 = [v8 adjustmentVersion];

    if (!v9)
    {
      if (!v3)
      {
        v13 = 1;
        goto LABEL_9;
      }

      v10 = [v3 objectForKeyedSubscript:@"adjustmentVersion"];
      v13 = v10 == 0;
      goto LABEL_8;
    }

    if (v3)
    {
      v10 = [*(a1 + 32) asset];
      v11 = [v10 adjustmentVersion];
      v12 = [v3 objectForKeyedSubscript:@"adjustmentVersion"];
      v13 = [v11 isEqual:v12];

LABEL_8:
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (void)stopCachingImagesForAllAssets
{
  v3 = PLImageManagerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "[RM][cache]: Stop caching images for all assets", v4, 2u);
  }

  [(PHImageCache *)self->_imageCache removeAllEntries];
  [(PHCachingImageManager *)self _scheduleOrCommitCacheChangesIfNeeded];
}

- (void)stopCachingImagesForAssets:(NSArray *)assets targetSize:(CGSize)targetSize contentMode:(PHImageContentMode)contentMode options:(PHImageRequestOptions *)options
{
  height = targetSize.height;
  width = targetSize.width;
  v41 = *MEMORY[0x1E69E9840];
  v10 = assets;
  v11 = options;
  if ([(NSArray *)v10 count])
  {
    v12 = PLImageManagerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(NSArray *)v10 valueForKey:@"uuid"];
      *buf = 138412290;
      v40 = v13;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "[RM][cache]: stop caching images for assets: %@", buf, 0xCu);
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(PHImageRequestOptions *)v11 normalizedCropRect];
    v19 = PHSanitizeNormalizedCropRect(0, v15, v16, v17, v18);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = v10;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = ceil(width);
      v30 = ceil(height);
      v31 = *v35;
      do
      {
        v32 = 0;
        do
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(v26);
          }

          v33 = _buildCacheKey(*(*(&v34 + 1) + 8 * v32), v29, v30, v19, v21, v23, v25);
          [v14 addObject:{v33, v34}];

          ++v32;
        }

        while (v28 != v32);
        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v28);
    }

    [(PHImageCache *)self->_imageCache removeEntriesForKeys:v14];
    [(PHCachingImageManager *)self _scheduleOrCommitCacheChangesIfNeeded];
  }
}

- (void)startCachingImagesForAssets:(NSArray *)assets targetSize:(CGSize)targetSize contentMode:(PHImageContentMode)contentMode options:(PHImageRequestOptions *)options
{
  height = targetSize.height;
  width = targetSize.width;
  v82 = *MEMORY[0x1E69E9840];
  v11 = assets;
  v12 = options;
  v13 = v12;
  if (v12)
  {
    v14 = [(PHImageRequestOptions *)v12 copy];
  }

  else
  {
    v14 = objc_alloc_init(PHImageRequestOptions);
  }

  v66 = v14;
  if ([(NSArray *)v11 count])
  {
    v15 = ceil(width);
    v16 = ceil(height);
    firstObject = [(NSArray *)v11 firstObject];
    photoLibrary = [firstObject photoLibrary];

    v19 = objc_opt_class();
    v18PhotoLibrary = [photoLibrary photoLibrary];
    v21 = [(PHCachingImageManager *)self _tableFormatsForLibrary:v18PhotoLibrary];
    v22 = [v19 _chooseImageTableFormatForPreheatingFromFormats:v21 targetSize:contentMode contentMode:-[PHImageRequestOptions deliveryMode](v66 returnBestTableRegardlessOfFit:{"deliveryMode") == PHImageRequestOptionsDeliveryModeFastFormat, v15, v16}];

    v23 = PLImageManagerGetLog();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (v22)
    {
      if (v24)
      {
        v25 = [(NSArray *)v11 valueForKey:@"uuid"];
        *buf = 138412290;
        *&buf[4] = v25;
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEBUG, "[RM][cache]: preheating image table for assets: %@", buf, 0xCu);
      }

      v18PhotoLibrary2 = [photoLibrary photoLibrary];
      thumbnailManager = [v18PhotoLibrary2 thumbnailManager];
      v28 = [thumbnailManager imageTableForFormat:objc_msgSend(v22, "formatID")];

      [(PHCachingImageManager *)self _preheatImageTable:v28 forAssets:v11];
    }

    else
    {
      if (v24)
      {
        v29 = DCIM_NSStringFromCGSize();
        v30 = [(NSArray *)v11 valueForKey:@"uuid"];
        *buf = 138412546;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEBUG, "[RM][cache]: start caching images for size: %@, assets: %@", buf, 0x16u);
      }

      v31 = v66;
      if ([(PHImageRequestOptions *)v66 deliveryMode]== PHImageRequestOptionsDeliveryModeOpportunistic)
      {
        [(PHImageRequestOptions *)v66 setDeliveryMode:1];
        v32 = PLImageManagerGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_DEBUG, "[RM][cache]: preheating image table for opportunistic request", buf, 2u);
        }

        v18PhotoLibrary3 = [photoLibrary photoLibrary];
        v34 = [(PHCachingImageManager *)self _imageTableForPreheatingDegradedOpportunisticRequestsWithPhotoLibrary:v18PhotoLibrary3];

        [(PHCachingImageManager *)self _preheatImageTable:v34 forAssets:v11];
        v31 = v66;
      }

      v63 = photoLibrary;
      v64 = v13;
      [(PHImageRequestOptions *)v31 setSynchronous:0];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v65 = v11;
      obj = v11;
      v35 = [(NSArray *)obj countByEnumeratingWithState:&v74 objects:v78 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = v31;
        v68 = *v75;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v75 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v74 + 1) + 8 * i);
            nextID = [(PHImageManager *)self nextID];
            v41 = [PHImageDisplaySpec alloc];
            [(PHImageRequestOptions *)v37 normalizedCropRect];
            v42 = contentMode;
            v47 = [(PHImageDisplaySpec *)v41 initWithTargetSize:contentMode contentMode:v15 normalizedCropRect:v16, v43, v44, v45, v46];
            v73 = 0;
            imageCache = self->_imageCache;
            [(PHImageDisplaySpec *)v47 normalizedCropRect];
            v53 = _buildCacheKey(v39, v15, v16, v49, v50, v51, v52);
            LOBYTE(imageCache) = [(PHImageCache *)imageCache pinEntryForKey:v53 requestID:nextID inFlightRequestID:&v73];

            if ((imageCache & 1) != 0 || !v73)
            {
              os_unfair_lock_lock(&self->_cachingLock);
              cachingRequestIDs = self->_cachingRequestIDs;
              v55 = [MEMORY[0x1E696AD98] numberWithInt:nextID];
              [(NSMutableSet *)cachingRequestIDs addObject:v55];

              os_unfair_lock_unlock(&self->_cachingLock);
              v56 = PLImageManagerGetLog();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                managerID = [(PHImageManager *)self managerID];
                *buf = 134218240;
                *&buf[4] = managerID;
                *&buf[12] = 2048;
                *&buf[14] = nextID;
                _os_log_impl(&dword_19C86F000, v56, OS_LOG_TYPE_DEBUG, "[RM][cache]: %ld-%ld image request being run to populate cache", buf, 0x16u);
              }

              if (PHImageManagerRecordEnabled())
              {
                [PHImageManagerRequestTracer traceMessageForRequestID:nextID message:@"[RM][cache]: %ld-%ld image request being run to populate cache", [(PHImageManager *)self managerID], nextID];
              }

              serialQueue = self->_serialQueue;
              v69[0] = MEMORY[0x1E69E9820];
              v69[1] = 3221225472;
              v69[2] = __84__PHCachingImageManager_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke;
              v69[3] = &unk_1E75A4C20;
              v72 = nextID;
              v69[4] = self;
              v69[5] = v39;
              v70 = v66;
              v71 = v47;
              v59 = v69;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __cpl_dispatch_async_block_invoke;
              v80 = &unk_1E75AADE8;
              v81 = v59;
              v60 = serialQueue;
              v37 = v66;
              v61 = v60;
              v62 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
              dispatch_async(v61, v62);
            }

            contentMode = v42;
          }

          v36 = [(NSArray *)obj countByEnumeratingWithState:&v74 objects:v78 count:16];
        }

        while (v36);
      }

      v13 = v64;
      v11 = v65;
      v22 = 0;
      photoLibrary = v63;
      if ([(NSArray *)obj count])
      {
        [(PHCachingImageManager *)self _scheduleOrCommitCacheChangesIfNeeded];
      }
    }
  }
}

void __84__PHCachingImageManager_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) managerID];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__PHCachingImageManager_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke_2;
  v8[3] = &unk_1E75A4BF8;
  v8[4] = *(a1 + 32);
  v7 = [PHMediaRequestContext imageRequestContextWithRequestID:v2 managerID:v3 asset:v4 imageRequestOptions:v5 displaySpec:v6 resultHandler:v8];
  [*(a1 + 32) runRequestWithContext:v7];
}

- (void)_scheduleOrCommitCacheChangesIfNeeded
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!self->_imageCacheCommitScheduled)
    {
      self->_imageCacheCommitScheduled = 1;
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      v5[0] = *MEMORY[0x1E695DA28];
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
      [mainRunLoop performSelector:sel__commitCacheChanges target:self argument:0 order:0 modes:v4];
    }
  }

  else
  {

    [(PHCachingImageManager *)self _commitCacheChanges];
  }
}

- (void)_commitCacheChanges
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    self->_imageCacheCommitScheduled = 0;
  }

  v3 = PLImageManagerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "[RM][cache]: Committing image caching changes", v4, 2u);
  }

  [(PHImageCache *)self->_imageCache commitChangesWithQueueToProcessDeletes:self->_serialQueue];
}

- (void)_handleCachingImageRequestResult:(id)result request:(id)request context:(id)context
{
  v56 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  requestCopy = request;
  contextCopy = context;
  requestID = [requestCopy requestID];
  os_unfair_lock_lock(&self->_cachingLock);
  cachingRequestIDs = self->_cachingRequestIDs;
  v13 = [MEMORY[0x1E696AD98] numberWithInt:requestID];
  LODWORD(cachingRequestIDs) = [(NSMutableSet *)cachingRequestIDs containsObject:v13];

  os_unfair_lock_unlock(&self->_cachingLock);
  if (!cachingRequestIDs)
  {
    goto LABEL_23;
  }

  os_unfair_lock_lock(&self->_cachingLock);
  v14 = self->_cachingRequestIDs;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:requestID];
  [(NSMutableSet *)v14 removeObject:v15];

  os_unfair_lock_unlock(&self->_cachingLock);
  if (![(PHCachingImageManager *)self _canPopulateCacheForResult:resultCopy])
  {
    if (([resultCopy isDegraded] & 1) == 0)
    {
      v23 = PLImageManagerGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        identifierString = [requestCopy identifierString];
        info = [resultCopy info];
        v26 = [(PHCachingImageManager *)self _cacheFailReasonFromInfo:info];
        *buf = 138412546;
        v53 = identifierString;
        v54 = 2112;
        v55 = v26;
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEBUG, "[RM][cache]: %@ cache request failed, removing entry, reason: %@", buf, 0x16u);
      }

      if (PHImageManagerRecordEnabled())
      {
        identifierString2 = [requestCopy identifierString];
        info2 = [resultCopy info];
        v51 = [(PHCachingImageManager *)self _cacheFailReasonFromInfo:info2];
        [PHImageManagerRequestTracer traceMessageForRequestID:requestID message:@"[RM][cache]: %@ cache request failed, removing entry, reason: %@", identifierString2, v51];
      }
    }

    imageCache = self->_imageCache;
    asset = [requestCopy asset];
    displaySpec = [requestCopy displaySpec];
    [displaySpec targetSize];
    v31 = v30;
    v33 = v32;
    displaySpec2 = [requestCopy displaySpec];
    [displaySpec2 contentMode];
    displaySpec3 = [requestCopy displaySpec];
    [displaySpec3 normalizedCropRect];
    v40 = _buildCacheKey(asset, v31, v33, v36, v37, v38, v39);
    [(PHImageCache *)imageCache populateEntryWithImage:0 requestID:requestID forKey:v40 additionalInfo:0];

LABEL_14:
    v22 = 0;
LABEL_15:

    goto LABEL_20;
  }

  v16 = [(PHCachingImageManager *)self _cacheImageResult:resultCopy forRequest:requestCopy];
  v17 = PLImageManagerGetLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (!v16)
  {
    if (v18)
    {
      identifierString3 = [requestCopy identifierString];
      asset2 = [requestCopy asset];
      uuid = [asset2 uuid];
      *buf = 138412546;
      v53 = identifierString3;
      v54 = 2112;
      v55 = uuid;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "[RM][cache]: %@ cache request finished but request is stale, for asset: %@", buf, 0x16u);
    }

    if (!PHImageManagerRecordEnabled())
    {
      v22 = 0;
      goto LABEL_20;
    }

    asset = [requestCopy identifierString];
    displaySpec = [requestCopy asset];
    displaySpec2 = [displaySpec uuid];
    [PHImageManagerRequestTracer traceMessageForRequestID:requestID message:@"[RM][cache]: %@ cache request finished but request is stale, for asset: %@", asset, displaySpec2];
    goto LABEL_14;
  }

  if (v18)
  {
    identifierString4 = [requestCopy identifierString];
    asset3 = [requestCopy asset];
    uuid2 = [asset3 uuid];
    *buf = 138412546;
    v53 = identifierString4;
    v54 = 2112;
    v55 = uuid2;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "[RM][cache]: %@ cache request stored image in cache for asset: %@", buf, 0x16u);
  }

  if (PHImageManagerRecordEnabled())
  {
    asset = [requestCopy identifierString];
    displaySpec = [requestCopy asset];
    displaySpec2 = [displaySpec uuid];
    [PHImageManagerRequestTracer traceMessageForRequestID:requestID message:@"[RM][cache]: %@ cache request stored image in cache for asset: %@", asset, displaySpec2];
    v22 = 1;
    goto LABEL_15;
  }

  v22 = 1;
LABEL_20:
  imageOptions = [contextCopy imageOptions];
  cachingCompleteHandler = [imageOptions cachingCompleteHandler];

  if (cachingCompleteHandler)
  {
    cachingCompleteHandler2 = [imageOptions cachingCompleteHandler];
    asset4 = [requestCopy asset];
    localIdentifier = [asset4 localIdentifier];
    (cachingCompleteHandler2)[2](cachingCompleteHandler2, localIdentifier, v22);
  }

LABEL_23:
}

- (BOOL)_cacheImageResult:(id)result forRequest:(id)request
{
  v37[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultCopy = result;
  asset = [requestCopy asset];
  adjustmentVersion = [asset adjustmentVersion];

  if (adjustmentVersion)
  {
    v36[0] = @"adjustmentVersion";
    asset2 = [requestCopy asset];
    adjustmentVersion2 = [asset2 adjustmentVersion];
    v36[1] = @"deferredProcessing";
    v37[0] = adjustmentVersion2;
    v12 = MEMORY[0x1E696AD98];
    asset3 = [requestCopy asset];
    v14 = [v12 numberWithUnsignedShort:{objc_msgSend(asset3, "deferredProcessingNeeded")}];
    v37[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  }

  else
  {
    v34 = @"deferredProcessing";
    v16 = MEMORY[0x1E696AD98];
    asset2 = [requestCopy asset];
    adjustmentVersion2 = [v16 numberWithUnsignedShort:{objc_msgSend(asset2, "deferredProcessingNeeded")}];
    v35 = adjustmentVersion2;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  }

  imageRef = [resultCopy imageRef];
  imageCache = self->_imageCache;
  requestID = [requestCopy requestID];
  asset4 = [requestCopy asset];
  displaySpec = [requestCopy displaySpec];
  [displaySpec targetSize];
  v23 = v22;
  v25 = v24;
  displaySpec2 = [requestCopy displaySpec];
  [displaySpec2 contentMode];
  displaySpec3 = [requestCopy displaySpec];
  [displaySpec3 normalizedCropRect];
  v32 = _buildCacheKey(asset4, v23, v25, v28, v29, v30, v31);
  LOBYTE(imageRef) = [(PHImageCache *)imageCache populateEntryWithImage:imageRef requestID:requestID forKey:v32 additionalInfo:v15];

  return imageRef;
}

- (BOOL)_canPopulateCacheForResult:(id)result
{
  resultCopy = result;
  v4 = ([resultCopy isDegraded] & 1) == 0 && (objc_msgSend(resultCopy, "isPlaceholder") & 1) == 0 && (objc_msgSend(resultCopy, "isCancelled") & 1) == 0 && objc_msgSend(resultCopy, "imageRef") != 0;

  return v4;
}

- (id)_cacheFailReasonFromInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:@"PHImageCancelledKey"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = @"cancelled";
  }

  else
  {
    v7 = [infoCopy objectForKey:@"PHImageErrorKey"];
    if (v7)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error: %@", v7];
    }

    else
    {
      v6 = @"other failure";
    }
  }

  return v6;
}

- (void)_handleMemoryWarning
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PLImageManagerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    managerID = [(PHImageManager *)self managerID];
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "[cache] %lu: didReceiveMemoryWarning: flushing all caches", &v4, 0xCu);
  }

  [(PHImageCache *)self->_imageCache removeAllEntries];
}

- (void)_preheatImageTable:(id)table forAssets:(id)assets
{
  v22 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  assetsCopy = assets;
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = assetsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        thumbnailIndex = [*(*(&v17 + 1) + 8 * v12) thumbnailIndex];
        if (thumbnailIndex != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v7 addIndex:thumbnailIndex];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__PHCachingImageManager__preheatImageTable_forAssets___block_invoke;
  v15[3] = &unk_1E75A4BD0;
  v16 = tableCopy;
  v14 = tableCopy;
  [v7 enumerateRangesUsingBlock:v15];
}

- (id)_imageTableForPreheatingDegradedOpportunisticRequestsWithPhotoLibrary:(id)library
{
  v20 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = [(PHCachingImageManager *)self _tableFormatsForLibrary:libraryCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 isSquare] & 1) == 0)
        {
          thumbnailManager = [libraryCopy thumbnailManager];
          v13 = [thumbnailManager imageTableForFormat:objc_msgSend(v11, "formatID")];

          v8 = v13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_tableFormatsForLibrary:(id)library
{
  pathManager = [library pathManager];
  v4 = [MEMORY[0x1E69BF310] tableThumbnailFormatsForConfigPhase:1 withPathManager:pathManager];

  return v4;
}

- (void)additionalWorkForImageRequestCompletedWithResult:(id)result request:(id)request context:(id)context
{
  resultCopy = result;
  requestCopy = request;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PHCachingImageManager_additionalWorkForImageRequestCompletedWithResult_request_context___block_invoke;
  block[3] = &unk_1E75AB248;
  block[4] = self;
  v13 = resultCopy;
  v14 = requestCopy;
  v10 = requestCopy;
  v11 = resultCopy;
  dispatch_async(serialQueue, block);
}

void __90__PHCachingImageManager_additionalWorkForImageRequestCompletedWithResult_request_context___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _canPopulateCacheForResult:*(a1 + 40)] && objc_msgSend(*(a1 + 32), "_cacheImageResult:forRequest:", *(a1 + 40), *(a1 + 48)))
  {
    v2 = PLImageManagerGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [*(a1 + 48) identifierString];
      v4 = [*(a1 + 48) asset];
      v5 = [v4 uuid];
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_19C86F000, v2, OS_LOG_TYPE_DEBUG, "[RM][cache]: %@ request opportunistically stored image in cache for asset: %@", buf, 0x16u);
    }

    if (PHImageManagerRecordEnabled())
    {
      v6 = [*(a1 + 48) requestID];
      v7 = [*(a1 + 48) identifierString];
      v8 = [*(a1 + 48) asset];
      v9 = [v8 uuid];
      [PHImageManagerRequestTracer traceMessageForRequestID:v6 message:@"[RM][cache]: %@ request opportunistically stored image in cache for asset: %@", v7, v9];
    }
  }
}

void __29__PHCachingImageManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMemoryWarning];
}

+ (id)_chooseImageTableFormatForPreheatingFromFormats:(id)formats targetSize:(CGSize)size contentMode:(int64_t)mode returnBestTableRegardlessOfFit:(BOOL)fit
{
  fitCopy = fit;
  height = size.height;
  width = size.width;
  v48 = *MEMORY[0x1E69E9840];
  formatsCopy = formats;
  v11 = formatsCopy;
  if (width == height)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = [formatsCopy countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = 0;
      v16 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          if ([v18 isSquare])
          {
            if (!v15 || ([v15 dimension], v20 = v19, objc_msgSend(v18, "dimension"), v20 < v21))
            {
              v22 = v18;

              v15 = v22;
            }

            [v18 dimension];
            if (v23 >= width && v14 == 0)
            {
              v14 = v18;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v13);
      goto LABEL_43;
    }

LABEL_42:
    v14 = 0;
    v15 = 0;
    goto LABEL_43;
  }

  if (mode && !fitCopy)
  {
    goto LABEL_42;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = [formatsCopy countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (!v25)
  {
    goto LABEL_42;
  }

  v26 = v25;
  v14 = 0;
  v15 = 0;
  v27 = *v39;
  if (width >= height)
  {
    v28 = width;
  }

  else
  {
    v28 = height;
  }

  do
  {
    for (j = 0; j != v26; ++j)
    {
      if (*v39 != v27)
      {
        objc_enumerationMutation(v11);
      }

      v30 = *(*(&v38 + 1) + 8 * j);
      if ([v30 formatMode] == 2)
      {
        if (!v15 || ([v15 dimension], v32 = v31, objc_msgSend(v30, "dimension"), v32 < v33))
        {
          v34 = v30;

          v15 = v34;
        }

        [v30 dimension];
        if (v35 >= v28 && v14 == 0)
        {
          v14 = v30;
        }
      }
    }

    v26 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
  }

  while (v26);
LABEL_43:
  if (width <= 0.0 || height <= 0.0)
  {

    v14 = 0;
  }

  if (!v14 && fitCopy)
  {
    v14 = v15;
  }

  return v14;
}

@end