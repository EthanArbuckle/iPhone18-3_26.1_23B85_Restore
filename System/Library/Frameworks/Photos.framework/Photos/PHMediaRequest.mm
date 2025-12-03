@interface PHMediaRequest
- (BOOL)_lock_addProgressIfNotCanceled:(id)canceled;
- (BOOL)addProgressIfNotCanceled:(id)canceled;
- (BOOL)isCancelled;
- (BOOL)isSynchronous;
- (PHMediaRequest)initWithRequestID:(int)d requestIndex:(unint64_t)index contextType:(int64_t)type managerID:(unint64_t)iD asset:(id)asset delegate:(id)delegate;
- (PHMediaRequestDelegate)delegate;
- (id)identifierString;
- (id)lazyProgressContainer;
- (id)sendMakeAvailableRequestForResource:(id)resource reply:(id)reply;
- (id)sendResourceRepairRequestForResource:(id)resource errorCodes:(id)codes reply:(id)reply;
- (id)sendResourceRepairRequestWithErrorCodes:(id)codes reply:(id)reply;
- (void)cancel;
- (void)dealloc;
- (void)handleAvailabilityChangeForResource:(id)resource url:(id)url info:(id)info error:(id)error;
- (void)recordMetricsWithMetricsHandler:(id)handler;
- (void)startRequest;
@end

@implementation PHMediaRequest

- (id)identifierString
{
  identifierString = self->_identifierString;
  if (!identifierString)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld-%ld-%ld", self->_managerID, self->_requestID, self->_requestIndex];
    v5 = self->_identifierString;
    self->_identifierString = v4;

    identifierString = self->_identifierString;
  }

  return identifierString;
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  v3 = atomic_load(&self->_cancelled);
  os_unfair_lock_unlock(&self->_lock);
  return v3 & 1;
}

- (PHMediaRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(PLProgressFollower *)self->_progressFollower invalidate];
  v3.receiver = self;
  v3.super_class = PHMediaRequest;
  [(PHMediaRequest *)&v3 dealloc];
}

- (void)recordMetricsWithMetricsHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaRequest.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  if (recordMetricsWithMetricsHandler__onceToken != -1)
  {
    dispatch_once(&recordMetricsWithMetricsHandler__onceToken, &__block_literal_global_34956);
  }

  asset = [(PHMediaRequest *)self asset];
  photoLibrary = [asset photoLibrary];

  v8 = recordMetricsWithMetricsHandler__metricsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PHMediaRequest_recordMetricsWithMetricsHandler___block_invoke_2;
  block[3] = &unk_1E75AA820;
  v13 = photoLibrary;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = photoLibrary;
  dispatch_async(v8, block);
}

void __50__PHMediaRequest_recordMetricsWithMetricsHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cacheMetricsCollector];
  (*(*(a1 + 40) + 16))();
}

void __50__PHMediaRequest_recordMetricsWithMetricsHandler___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.photos.imagemanager.metrics", 0);
  v1 = recordMetricsWithMetricsHandler__metricsQueue;
  recordMetricsWithMetricsHandler__metricsQueue = v0;

  v2 = recordMetricsWithMetricsHandler__metricsQueue;
  v3 = dispatch_get_global_queue(9, 0);
  dispatch_set_target_queue(v2, v3);
}

- (id)sendResourceRepairRequestWithErrorCodes:(id)codes reply:(id)reply
{
  codesCopy = codes;
  replyCopy = reply;
  if ([(PHMediaRequest *)self isCancelled])
  {
    v8 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
    replyCopy[2](replyCopy, 0, v8);

    v9 = 0;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E69BE768]);
    identifierString = [(PHMediaRequest *)self identifierString];
    objectID = [(PHObject *)self->_asset objectID];
    v8 = [v10 initWithTaskIdentifier:identifierString assetObjectID:objectID];

    photoLibrary = [(PHObject *)self->_asset photoLibrary];
    assetsdClient = [photoLibrary assetsdClient];
    resourceAvailabilityClient = [assetsdClient resourceAvailabilityClient];
    v9 = [resourceAvailabilityClient sendResourceRepairRequestForAsset:v8 errorCodes:codesCopy reply:replyCopy];

    if (v9)
    {
      os_unfair_lock_lock(&self->_lock);
      v16 = [(PHMediaRequest *)self _lock_addProgressIfNotCanceled:v9];
      os_unfair_lock_unlock(&self->_lock);
      if (!v16)
      {
        [v9 cancel];
      }
    }
  }

  return v9;
}

- (id)sendResourceRepairRequestForResource:(id)resource errorCodes:(id)codes reply:(id)reply
{
  resourceCopy = resource;
  codesCopy = codes;
  replyCopy = reply;
  if (-[PHMediaRequest isCancelled](self, "isCancelled") || ([resourceCopy conformsToProtocol:&unk_1F106EC20] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
    replyCopy[2](replyCopy, 0, v14);
    v18 = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E69BE760]);
    identifierString = [(PHMediaRequest *)self identifierString];
    objectID = [(PHObject *)self->_asset objectID];
    v14 = [v11 initWithTaskIdentifier:identifierString assetObjectID:objectID resource:resourceCopy];

    photoLibrary = [(PHObject *)self->_asset photoLibrary];
    assetsdClient = [photoLibrary assetsdClient];
    resourceAvailabilityClient = [assetsdClient resourceAvailabilityClient];
    v18 = [resourceAvailabilityClient sendResourceRepairRequest:v14 errorCodes:codesCopy reply:replyCopy];

    if (v18)
    {
      os_unfair_lock_lock(&self->_lock);
      v19 = [(PHMediaRequest *)self _lock_addProgressIfNotCanceled:v18];
      os_unfair_lock_unlock(&self->_lock);
      if (!v19)
      {
        [v18 cancel];
      }
    }
  }

  return v18;
}

- (id)sendMakeAvailableRequestForResource:(id)resource reply:(id)reply
{
  v38[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  replyCopy = reply;
  if (-[PHMediaRequest isCancelled](self, "isCancelled") || ([resourceCopy conformsToProtocol:&unk_1F106EC20] & 1) == 0)
  {
    v37 = @"PHImageCancelledKey";
    v38[0] = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v23 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v11, v23);

    totalProgress = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69BE760]);
    identifierString = [(PHMediaRequest *)self identifierString];
    objectID = [(PHObject *)self->_asset objectID];
    v11 = [v8 initWithTaskIdentifier:identifierString assetObjectID:objectID resource:resourceCopy];

    [v11 setWantsProgress:self->_wantsProgress];
    [v11 setNetworkAccessAllowed:{-[PHMediaRequest isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
    [v11 setDownloadIntent:{-[PHMediaRequest downloadIntent](self, "downloadIntent")}];
    [v11 setDownloadPriority:{-[PHMediaRequest downloadPriority](self, "downloadPriority")}];
    v12 = PLImageManagerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifierString2 = [(PHMediaRequest *)self identifierString];
      objectID2 = [(PHObject *)self->_asset objectID];
      pl_shortURI = [objectID2 pl_shortURI];
      uuid = [(PHObject *)self->_asset uuid];
      v17 = PLResourceIdentityShortDescription();
      *buf = 138544130;
      v30 = identifierString2;
      v31 = 2114;
      v32 = pl_shortURI;
      v33 = 2114;
      v34 = uuid;
      v35 = 2114;
      v36 = v17;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ media request sending make available request for asset: %{public}@ %{public}@, resource: %{public}@", buf, 0x2Au);
    }

    photoLibrary = [(PHObject *)self->_asset photoLibrary];
    assetsdClient = [photoLibrary assetsdClient];
    resourceAvailabilityClient = [assetsdClient resourceAvailabilityClient];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__PHMediaRequest_sendMakeAvailableRequestForResource_reply___block_invoke;
    v26[3] = &unk_1E75A8970;
    v26[4] = self;
    v27 = resourceCopy;
    v28 = replyCopy;
    v21 = [resourceAvailabilityClient sendMakeResourceAvailableRequest:v11 reply:v26];

    if (v21)
    {
      os_unfair_lock_lock(&self->_lock);
      if ([(PHMediaRequest *)self _lock_addProgressIfNotCanceled:v21])
      {
        lazyProgressContainer = [(PHMediaRequest *)self lazyProgressContainer];
        [lazyProgressContainer setRequestProgress:v21];

        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock);
        [v21 cancel];
      }
    }

    totalProgress = [(PHProgressContainerForRetryableRequest *)self->_progressContainer totalProgress];
  }

  return totalProgress;
}

void __60__PHMediaRequest_sendMakeAvailableRequestForResource_reply___block_invoke(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (PHSignpostEventsEnabled_onceToken != -1)
  {
    dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
  }

  if (PHSignpostEventsEnabled_eventsEnabled == 1)
  {
    v15 = [*(a1 + 32) signpostID];
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      v17 = PLImageManagerGetLog();
      v31 = [*(a1 + 32) managerID];
      v18 = [*(a1 + 32) requestID];
      v19 = [*(a1 + 32) requestIndex];
      v20 = v17;
      if (os_signpost_enabled(v20))
      {
        v21 = PHImageManagerSignpostRequestStateFromRecipeID([*(a1 + 40) recipeID], objc_msgSend(*(a1 + 40), "resourceType"));
        *buf = 134218752;
        v34 = v31;
        v35 = 2048;
        v36 = v18;
        v37 = 2048;
        v38 = v19;
        v39 = 2048;
        v40 = v21;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v20, OS_SIGNPOST_EVENT, v16, "RequestEvent", "Change: [%lu-%lu-%lu], state: %lu", buf, 0x2Au);
      }
    }
  }

  if (v11 && a2)
  {
    v22 = MEMORY[0x1E69BE730];
    v23 = [*(a1 + 32) asset];
    v32 = 0;
    LOBYTE(v22) = [v22 refreshSandboxExtensionForURL:v11 assetID:v23 error:&v32];
    v24 = v32;

    if ((v22 & 1) == 0)
    {
      v25 = PLImageManagerGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [*(a1 + 32) identifierString];
        v27 = [v11 path];
        *buf = 138412802;
        v34 = v26;
        v35 = 2112;
        v36 = v27;
        v37 = 2112;
        v38 = v24;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "[RM] %@ media request failed to refresh sandbox extension for path: %@, error; %@", buf, 0x20u);
      }

      v28 = v24;
      v14 = v28;
    }

    goto LABEL_16;
  }

  v29 = [*(a1 + 32) delegate];
  v30 = [v29 retryMediaRequest:*(a1 + 32) afterFailureWithError:v14];

  if ((v30 & 1) == 0)
  {
LABEL_16:
    (*(*(a1 + 48) + 16))();
  }
}

- (id)lazyProgressContainer
{
  progressContainer = self->_progressContainer;
  if (!progressContainer)
  {
    v4 = objc_alloc_init(PHProgressContainerForRetryableRequest);
    v5 = self->_progressContainer;
    self->_progressContainer = v4;

    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x1E69BE6E8]);
    totalProgress = [(PHProgressContainerForRetryableRequest *)self->_progressContainer totalProgress];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__PHMediaRequest_lazyProgressContainer__block_invoke;
    v11[3] = &unk_1E75A9CB0;
    objc_copyWeak(&v12, &location);
    v8 = [v6 initWithSourceProgress:totalProgress progressHandler:v11];
    progressFollower = self->_progressFollower;
    self->_progressFollower = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    progressContainer = self->_progressContainer;
  }

  return progressContainer;
}

void __39__PHMediaRequest_lazyProgressContainer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 mediaRequest:WeakRetained didReportProgress:v3];
}

- (void)cancel
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  atomic_store(1u, &self->_cancelled);
  v3 = [(NSMutableArray *)self->_progresses copy];
  [(NSMutableArray *)self->_progresses removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) cancel];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)addProgressIfNotCanceled:(id)canceled
{
  canceledCopy = canceled;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PHMediaRequest *)self _lock_addProgressIfNotCanceled:canceledCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)_lock_addProgressIfNotCanceled:(id)canceled
{
  canceledCopy = canceled;
  v5 = atomic_load(&self->_cancelled);
  if ((v5 & 1) == 0)
  {
    progresses = self->_progresses;
    if (!progresses)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_progresses;
      self->_progresses = v7;

      progresses = self->_progresses;
    }

    [(NSMutableArray *)progresses addObject:canceledCopy];
  }

  v9 = atomic_load(&self->_cancelled);

  return (v9 & 1) == 0;
}

- (void)handleAvailabilityChangeForResource:(id)resource url:(id)url info:(id)info error:(id)error
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaRequest.m" lineNumber:77 description:{@"%@ Subclass must implement", v9}];
}

- (void)startRequest
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaRequest.m" lineNumber:73 description:{@"%@ Subclass must implement", v5}];
}

- (BOOL)isSynchronous
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaRequest.m" lineNumber:61 description:{@"%@ Subclass must implement", v6}];

  return 0;
}

- (PHMediaRequest)initWithRequestID:(int)d requestIndex:(unint64_t)index contextType:(int64_t)type managerID:(unint64_t)iD asset:(id)asset delegate:(id)delegate
{
  assetCopy = asset;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = PHMediaRequest;
  v17 = [(PHMediaRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_requestID = d;
    v17->_requestIndex = index;
    v17->_contextType = type;
    v17->_managerID = iD;
    objc_storeStrong(&v17->_asset, asset);
    v18->_signpostID = 0;
    v18->_wantsProgress = 1;
    v18->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v18->_delegate, delegateCopy);
    atomic_store(0, &v18->_retryAttemptCount);
    v18->_retryInterval = 0.1;
  }

  return v18;
}

@end