@interface PHAdjustmentDataRequest
- (PHAdjustmentDataRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 behaviorSpec:(id)a8 delegate:(id)a9;
- (PHAdjustmentDataRequestDelegate)adjustmentDataDelegate;
- (void)_cplDownloadStatusNotification:(id)a3;
- (void)_finishFromAsynchronousCallback;
- (void)cancel;
- (void)startRequest;
@end

@implementation PHAdjustmentDataRequest

- (PHAdjustmentDataRequestDelegate)adjustmentDataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_adjustmentDataDelegate);

  return WeakRetained;
}

- (void)_cplDownloadStatusNotification:(id)a3
{
  v4 = [a3 userInfo];
  legacyDownloadContext = self->_legacyDownloadContext;
  if (legacyDownloadContext)
  {
    v6 = [(PLCPLDownloadContext *)legacyDownloadContext taskIdentifier];
    v7 = [v4 objectForKey:*MEMORY[0x1E69BFEB8]];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BFE98]];
      v10 = [v9 BOOLValue];

      v11 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BFEB0]];
      v12 = v11;
      if (v11)
      {
        [v11 doubleValue];
        v14 = v13;
      }

      else
      {
        v14 = NAN;
      }

      v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BFEA0]];
      v16 = [(PHAdjustmentDataRequest *)self adjustmentDataDelegate];
      [v16 adjustmentDataRequest:self didReportProgress:v10 completed:v15 error:v14];

      if (v10)
      {
        v17 = [(PHMediaRequest *)self asset];
        v18 = [v17 photoLibrary];
        v19 = [v18 assetsdClient];

        v20 = [v19 resourceClient];
        v21 = [(PHMediaRequest *)self asset];
        v22 = [v21 objectID];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __58__PHAdjustmentDataRequest__cplDownloadStatusNotification___block_invoke;
        v23[3] = &unk_1E75AAD20;
        v23[4] = self;
        [v20 adjustmentDataForAsset:v22 networkAccessAllowed:0 trackCPLDownload:0 completionHandler:v23];
      }
    }
  }
}

void __58__PHAdjustmentDataRequest__cplDownloadStatusNotification___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, char a7, void *a8)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = [v15 length];
  v21 = 0;
  if (v18 && v20)
  {
    v21 = [[PHAdjustmentData alloc] initWithFormatIdentifier:v15 formatVersion:v16 data:v18];
  }

  v22 = [v19 error];
  if (v22)
  {

    v19 = 0;
  }

  [(PHAdjustmentData *)v21 setEditorBundleID:v17];
  [(PHAdjustmentData *)v21 setBaseVersion:a5];
  objc_storeStrong((*(a1 + 32) + 136), v19);
  if (v21)
  {
    [*(*(a1 + 32) + 144) setAdjustmentData:v21];
  }

  else if (a7)
  {
    [*(*(a1 + 32) + 144) setIsInCloud:1];
    if (!v22)
    {
      v23 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26[0] = @"Missing adjustment data";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v22 = [v23 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v24];
    }
  }

  [*(*(a1 + 32) + 144) setError:v22];
  [*(a1 + 32) _finishFromAsynchronousCallback];
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = PHAdjustmentDataRequest;
  [(PHMediaRequest *)&v8 cancel];
  if (self->_legacyDownloadContext)
  {
    v3 = [(PHMediaRequest *)self asset];
    v4 = [v3 photoLibrary];
    v5 = [v4 assetsdClient];

    v6 = [v5 cloudClient];
    [v6 cancelCPLDownloadWithContext:self->_legacyDownloadContext completionHandler:0];

    legacyDownloadContext = self->_legacyDownloadContext;
    self->_legacyDownloadContext = 0;
  }
}

- (void)startRequest
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = PLImageManagerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(PHMediaRequest *)self identifierString];
    v5 = [(PHAdjustmentDataRequest *)self isSynchronous];
    v6 = @"N";
    if (v5)
    {
      v6 = @"Y";
    }

    *buf = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_INFO, "[RM]: %@ starting adjustment data request, sync: %@", buf, 0x16u);
  }

  v7 = [(PHMediaRequest *)self asset];
  v8 = [v7 photoLibrary];
  v9 = [v8 assetsdClient];

  v10 = [v9 resourceClient];
  v11 = [(PHMediaRequest *)self asset];
  v12 = [v11 objectID];
  v13 = [(PHAdjustmentDataRequestBehaviorSpec *)self->_behaviorSpec isNetworkAccessAllowed];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__PHAdjustmentDataRequest_startRequest__block_invoke;
  v15[3] = &unk_1E75AAD20;
  v15[4] = self;
  [v10 adjustmentDataForAsset:v12 networkAccessAllowed:v13 trackCPLDownload:1 completionHandler:v15];

  if ([(PHAdjustmentDataRequestBehaviorSpec *)self->_behaviorSpec isSynchronous])
  {
    dispatch_semaphore_wait(self->_syncDownloadWaitSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v14 = [(PHMediaRequest *)self delegate];
    [v14 mediaRequest:self didFinishWithResult:self->_adjustmentDataResult];
  }
}

void __39__PHAdjustmentDataRequest_startRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, char a7, void *a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v19 = PLImageManagerGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [*(a1 + 32) identifierString];
    *buf = 138413058;
    v31 = v20;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = v15;
    v36 = 2112;
    v37 = v16;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_INFO, "[RM]: %@ adjustment data request finished with formatID: %@, version: %@, editor: %@", buf, 0x2Au);
  }

  v21 = [v14 length];
  v22 = 0;
  if (v17 && v21)
  {
    v22 = [[PHAdjustmentData alloc] initWithFormatIdentifier:v14 formatVersion:v15 data:v17];
  }

  v23 = [v18 error];
  if (v23)
  {

    v18 = 0;
  }

  [(PHAdjustmentData *)v22 setEditorBundleID:v16];
  [(PHAdjustmentData *)v22 setBaseVersion:a5];
  objc_storeStrong((*(a1 + 32) + 136), v18);
  if (v22)
  {
    [*(*(a1 + 32) + 144) setAdjustmentData:v22];
  }

  else if (a7)
  {
    [*(*(a1 + 32) + 144) setIsInCloud:1];
    v26 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = @"Missing adjustment data";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v27 = [v26 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v24];

    v23 = v27;
  }

  [*(*(a1 + 32) + 144) setError:v23];
  if (v22 || !v18)
  {
    [*(a1 + 32) _finishFromAsynchronousCallback];
  }
}

- (void)_finishFromAsynchronousCallback
{
  if ([(PHAdjustmentDataRequestBehaviorSpec *)self->_behaviorSpec isSynchronous])
  {
    syncDownloadWaitSemaphore = self->_syncDownloadWaitSemaphore;

    dispatch_semaphore_signal(syncDownloadWaitSemaphore);
  }

  else
  {
    v4 = [(PHMediaRequest *)self delegate];
    [v4 mediaRequest:self didFinishWithResult:self->_adjustmentDataResult];
  }
}

- (PHAdjustmentDataRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 behaviorSpec:(id)a8 delegate:(id)a9
{
  v14 = *&a3;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = PHAdjustmentDataRequest;
  v18 = [(PHMediaRequest *)&v26 initWithRequestID:v14 requestIndex:a4 contextType:a5 managerID:a6 asset:a7 delegate:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_behaviorSpec, a8);
    objc_storeWeak(&v19->_adjustmentDataDelegate, v17);
    v20 = [(PHCompositeMediaResult *)[PHAdjustmentDataResult alloc] initWithRequestID:v14];
    adjustmentDataResult = v19->_adjustmentDataResult;
    v19->_adjustmentDataResult = v20;

    if ([v16 isSynchronous])
    {
      v22 = dispatch_semaphore_create(0);
      syncDownloadWaitSemaphore = v19->_syncDownloadWaitSemaphore;
      v19->_syncDownloadWaitSemaphore = v22;
    }

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v19 selector:sel__cplDownloadStatusNotification_ name:*MEMORY[0x1E69BFEA8] object:0];
  }

  return v19;
}

@end