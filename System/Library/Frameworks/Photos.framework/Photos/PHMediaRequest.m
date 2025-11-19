@interface PHMediaRequest
- (BOOL)_lock_addProgressIfNotCanceled:(id)a3;
- (BOOL)addProgressIfNotCanceled:(id)a3;
- (BOOL)isCancelled;
- (BOOL)isSynchronous;
- (PHMediaRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 delegate:(id)a8;
- (PHMediaRequestDelegate)delegate;
- (id)identifierString;
- (id)lazyProgressContainer;
- (id)sendMakeAvailableRequestForResource:(id)a3 reply:(id)a4;
- (id)sendResourceRepairRequestForResource:(id)a3 errorCodes:(id)a4 reply:(id)a5;
- (id)sendResourceRepairRequestWithErrorCodes:(id)a3 reply:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)handleAvailabilityChangeForResource:(id)a3 url:(id)a4 info:(id)a5 error:(id)a6;
- (void)recordMetricsWithMetricsHandler:(id)a3;
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

- (void)recordMetricsWithMetricsHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PHMediaRequest.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  if (recordMetricsWithMetricsHandler__onceToken != -1)
  {
    dispatch_once(&recordMetricsWithMetricsHandler__onceToken, &__block_literal_global_34956);
  }

  v6 = [(PHMediaRequest *)self asset];
  v7 = [v6 photoLibrary];

  v8 = recordMetricsWithMetricsHandler__metricsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PHMediaRequest_recordMetricsWithMetricsHandler___block_invoke_2;
  block[3] = &unk_1E75AA820;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v7;
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

- (id)sendResourceRepairRequestWithErrorCodes:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PHMediaRequest *)self isCancelled])
  {
    v8 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
    v7[2](v7, 0, v8);

    v9 = 0;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E69BE768]);
    v11 = [(PHMediaRequest *)self identifierString];
    v12 = [(PHObject *)self->_asset objectID];
    v8 = [v10 initWithTaskIdentifier:v11 assetObjectID:v12];

    v13 = [(PHObject *)self->_asset photoLibrary];
    v14 = [v13 assetsdClient];
    v15 = [v14 resourceAvailabilityClient];
    v9 = [v15 sendResourceRepairRequestForAsset:v8 errorCodes:v6 reply:v7];

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

- (id)sendResourceRepairRequestForResource:(id)a3 errorCodes:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (-[PHMediaRequest isCancelled](self, "isCancelled") || ([v8 conformsToProtocol:&unk_1F106EC20] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
    v10[2](v10, 0, v14);
    v18 = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E69BE760]);
    v12 = [(PHMediaRequest *)self identifierString];
    v13 = [(PHObject *)self->_asset objectID];
    v14 = [v11 initWithTaskIdentifier:v12 assetObjectID:v13 resource:v8];

    v15 = [(PHObject *)self->_asset photoLibrary];
    v16 = [v15 assetsdClient];
    v17 = [v16 resourceAvailabilityClient];
    v18 = [v17 sendResourceRepairRequest:v14 errorCodes:v9 reply:v10];

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

- (id)sendMakeAvailableRequestForResource:(id)a3 reply:(id)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (-[PHMediaRequest isCancelled](self, "isCancelled") || ([v6 conformsToProtocol:&unk_1F106EC20] & 1) == 0)
  {
    v37 = @"PHImageCancelledKey";
    v38[0] = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v23 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, 0, v11, v23);

    v24 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69BE760]);
    v9 = [(PHMediaRequest *)self identifierString];
    v10 = [(PHObject *)self->_asset objectID];
    v11 = [v8 initWithTaskIdentifier:v9 assetObjectID:v10 resource:v6];

    [v11 setWantsProgress:self->_wantsProgress];
    [v11 setNetworkAccessAllowed:{-[PHMediaRequest isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
    [v11 setDownloadIntent:{-[PHMediaRequest downloadIntent](self, "downloadIntent")}];
    [v11 setDownloadPriority:{-[PHMediaRequest downloadPriority](self, "downloadPriority")}];
    v12 = PLImageManagerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(PHMediaRequest *)self identifierString];
      v14 = [(PHObject *)self->_asset objectID];
      v15 = [v14 pl_shortURI];
      v16 = [(PHObject *)self->_asset uuid];
      v17 = PLResourceIdentityShortDescription();
      *buf = 138544130;
      v30 = v13;
      v31 = 2114;
      v32 = v15;
      v33 = 2114;
      v34 = v16;
      v35 = 2114;
      v36 = v17;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ media request sending make available request for asset: %{public}@ %{public}@, resource: %{public}@", buf, 0x2Au);
    }

    v18 = [(PHObject *)self->_asset photoLibrary];
    v19 = [v18 assetsdClient];
    v20 = [v19 resourceAvailabilityClient];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__PHMediaRequest_sendMakeAvailableRequestForResource_reply___block_invoke;
    v26[3] = &unk_1E75A8970;
    v26[4] = self;
    v27 = v6;
    v28 = v7;
    v21 = [v20 sendMakeResourceAvailableRequest:v11 reply:v26];

    if (v21)
    {
      os_unfair_lock_lock(&self->_lock);
      if ([(PHMediaRequest *)self _lock_addProgressIfNotCanceled:v21])
      {
        v22 = [(PHMediaRequest *)self lazyProgressContainer];
        [v22 setRequestProgress:v21];

        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock);
        [v21 cancel];
      }
    }

    v24 = [(PHProgressContainerForRetryableRequest *)self->_progressContainer totalProgress];
  }

  return v24;
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
    v7 = [(PHProgressContainerForRetryableRequest *)self->_progressContainer totalProgress];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__PHMediaRequest_lazyProgressContainer__block_invoke;
    v11[3] = &unk_1E75A9CB0;
    objc_copyWeak(&v12, &location);
    v8 = [v6 initWithSourceProgress:v7 progressHandler:v11];
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

- (BOOL)addProgressIfNotCanceled:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PHMediaRequest *)self _lock_addProgressIfNotCanceled:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)_lock_addProgressIfNotCanceled:(id)a3
{
  v4 = a3;
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

    [(NSMutableArray *)progresses addObject:v4];
  }

  v9 = atomic_load(&self->_cancelled);

  return (v9 & 1) == 0;
}

- (void)handleAvailabilityChangeForResource:(id)a3 url:(id)a4 info:(id)a5 error:(id)a6
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v10 handleFailureInMethod:a2 object:self file:@"PHMediaRequest.m" lineNumber:77 description:{@"%@ Subclass must implement", v9}];
}

- (void)startRequest
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:self file:@"PHMediaRequest.m" lineNumber:73 description:{@"%@ Subclass must implement", v5}];
}

- (BOOL)isSynchronous
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PHMediaRequest.m" lineNumber:61 description:{@"%@ Subclass must implement", v6}];

  return 0;
}

- (PHMediaRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 delegate:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = PHMediaRequest;
  v17 = [(PHMediaRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_requestID = a3;
    v17->_requestIndex = a4;
    v17->_contextType = a5;
    v17->_managerID = a6;
    objc_storeStrong(&v17->_asset, a7);
    v18->_signpostID = 0;
    v18->_wantsProgress = 1;
    v18->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v18->_delegate, v16);
    atomic_store(0, &v18->_retryAttemptCount);
    v18->_retryInterval = 0.1;
  }

  return v18;
}

@end