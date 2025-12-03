@interface PHMediaRequestContext
+ (id)contentEditingInputRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options useRAWAsUnadjustedBase:(BOOL)base resultHandler:(id)handler;
+ (id)imageRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset imageRequestOptions:(id)options displaySpec:(id)spec resultHandler:(id)handler;
+ (id)livePhotoRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset livePhotoRequestOptions:(id)options displaySpec:(id)spec resultHandler:(id)handler;
+ (id)videoRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset videoRequestOptions:(id)options intent:(int64_t)intent resultHandler:(id)handler;
+ (void)initialize;
- (BOOL)isCancelled;
- (BOOL)mediaRequestCanRequestRepair:(id)repair;
- (BOOL)retryMediaRequest:(id)request afterFailureWithError:(id)error;
- (BOOL)shouldReportProgress;
- (PHImageResourceChooser)imageResourceChooser;
- (PHMediaRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec resultHandler:(id)handler;
- (PHMediaRequestContextDelegate)delegate;
- (id)_produceChildRequestsForRequest:(id)request withResult:(id)result;
- (id)_requestWithIdentifier:(id)identifier;
- (id)initialRequests;
- (int64_t)type;
- (void)_registerAndStartRequests:(id)requests;
- (void)_setupProgressIfNeeded;
- (void)adjustmentDataRequest:(id)request didReportProgress:(double)progress completed:(BOOL)completed error:(id)error;
- (void)beginCustomAsyncWorkWithIdentifier:(id)identifier;
- (void)cancel;
- (void)finishCustomAsyncWorkWithIdentifier:(id)identifier;
- (void)imageRequest:(id)request isQueryingCacheAndDidWait:(BOOL *)wait didFindImage:(BOOL *)image resultHandler:(id)handler;
- (void)imageRequest:(id)request isRequestingScheduledWorkBlock:(id)block;
- (void)mediaRequest:(id)request didFindLocallyAvailableResult:(BOOL)result isDegraded:(BOOL)degraded;
- (void)mediaRequest:(id)request didFinishWithResult:(id)result;
- (void)mediaRequest:(id)request didReportProgress:(id)progress;
- (void)mediaRequest:(id)request didRequestRetryWithHintsAllowed:(BOOL)allowed;
- (void)processMediaResult:(id)result forRequest:(id)request;
- (void)requestWithIdentifier:(id)identifier didReportProgress:(double)progress completed:(BOOL)completed error:(id)error;
- (void)setProgress:(id)progress forRequestIdentifier:(id)identifier;
- (void)start;
@end

@implementation PHMediaRequestContext

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    attr = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_USER_INITIATED, 0);

    v3 = dispatch_queue_create("com.apple.photos.imgmgr.ctxt.bgchooser", attr);
    v4 = s_backgroundChooserQueue;
    s_backgroundChooserQueue = v3;

    dispatch_queue_set_specific(s_backgroundChooserQueue, &s_chooserQueueDispatchSpecificKey, s_chooserQueueDispatchSpecificKey, 0);
  }
}

- (void)start
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = PLImageManagerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    managerID = self->_managerID;
    requestID = self->_requestID;
    type = [(PHMediaRequestContext *)self type];
    if (type > 6)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E75A4190[type];
    }

    v8 = v7;
    asset = [(PHMediaRequestContext *)self asset];
    uuid = [asset uuid];
    isNetworkAccessAllowed = [(PHMediaRequestContext *)self isNetworkAccessAllowed];
    *buf = 134219010;
    v12 = @"N";
    v35 = managerID;
    v36 = 2048;
    if (isNetworkAccessAllowed)
    {
      v12 = @"Y";
    }

    v37 = requestID;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = uuid;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "[RM]: %ld-%ld Starting request with type %@, asset: %@, net: %@", buf, 0x34u);
  }

  if (PHImageManagerRecordEnabled())
  {
    v22 = self->_requestID;
    v23 = self->_managerID;
    type2 = [(PHMediaRequestContext *)self type];
    if (type2 > 6)
    {
      v25 = 0;
    }

    else
    {
      v25 = off_1E75A4190[type2];
    }

    v26 = v25;
    asset2 = [(PHMediaRequestContext *)self asset];
    uuid2 = [asset2 uuid];
    isNetworkAccessAllowed2 = [(PHMediaRequestContext *)self isNetworkAccessAllowed];
    v30 = @"N";
    if (isNetworkAccessAllowed2)
    {
      v30 = @"Y";
    }

    [PHImageManagerRequestTracer traceMessageForRequestID:v22 message:@"[RM]: %ld-%ld Starting request with type %@, asset: %@, net: %@", v23, v22, v26, uuid2, v30];
  }

  if ([(PHMediaRequestContext *)self shouldReportProgress])
  {
    [(PHMediaRequestContext *)self _setupProgressIfNeeded];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__PHMediaRequestContext_start__block_invoke;
  aBlock[3] = &unk_1E75AB320;
  aBlock[4] = self;
  v13 = _Block_copy(aBlock);
  prestartError = [(PHMediaRequestContext *)self prestartError];

  if (prestartError)
  {
    prestartError2 = [(PHMediaRequestContext *)self prestartError];
    v13[2](v13, prestartError2);
  }

  else
  {
    prestartError2 = [(PHMediaRequestContext *)self initialRequests];
    if ([prestartError2 count])
    {
      [(PHMediaRequestContext *)self _registerAndStartRequests:prestartError2];
    }

    else
    {
      v16 = PLImageManagerGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = self->_managerID;
        v18 = self->_requestID;
        *buf = 134218240;
        v35 = v17;
        v36 = 2048;
        v37 = v18;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "%ld-%ld Media request started without requesting image or video, this is a no op", buf, 0x16u);
      }

      if (PHImageManagerRecordEnabled())
      {
        [PHImageManagerRequestTracer traceMessageForRequestID:self->_managerID message:self->_requestID];
      }

      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v32 = *MEMORY[0x1E696A278];
      v33 = @"Image manager unable to find initial requests, potential request for nonexistent resource";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v21 = [v19 initWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v20];

      v13[2](v13, v21);
    }
  }
}

- (BOOL)shouldReportProgress
{
  progressHandler = [(PHMediaRequestContext *)self progressHandler];
  v3 = progressHandler != 0;

  return v3;
}

- (void)_setupProgressIfNeeded
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self->_totalProgress)
  {
    os_unfair_lock_lock(&self->_lock);
    progresses = [(PHMediaRequestContext *)self progresses];
    if ([progresses count])
    {
      if ([progresses count] == 1)
      {
        firstObject = [progresses firstObject];
        totalProgress = self->_totalProgress;
        self->_totalProgress = firstObject;
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = progresses;
        v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          v10 = *v26;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(v6);
              }

              v9 += [*(*(&v25 + 1) + 8 * i) totalUnitCount];
            }

            v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v8);
        }

        else
        {
          v9 = 0;
        }

        v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v9];
        v13 = self->_totalProgress;
        self->_totalProgress = v12;

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v14 = v6;
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v22;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v22 != v17)
              {
                objc_enumerationMutation(v14);
              }

              -[NSProgress addChild:withPendingUnitCount:](self->_totalProgress, "addChild:withPendingUnitCount:", *(*(&v21 + 1) + 8 * j), [*(*(&v21 + 1) + 8 * j) totalUnitCount]);
            }

            v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v16);
        }
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    progressByTaskIdentifier = self->_progressByTaskIdentifier;
    self->_progressByTaskIdentifier = dictionary;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (PHImageResourceChooser)imageResourceChooser
{
  imageResourceChooser = self->_imageResourceChooser;
  if (!imageResourceChooser)
  {
    if (self->_asset)
    {
      v4 = objc_alloc_init(PHResourceChooserList);
      v5 = [[PHImageResourceChooser alloc] initWithChooserList:v4 asset:self->_asset resourceHandler:0];
      v6 = self->_imageResourceChooser;
      self->_imageResourceChooser = v5;

      [(PHImageResourceChooser *)self->_imageResourceChooser setIsCloudSharedMode:[(PHAsset *)self->_asset isCloudSharedAsset]];
      imageResourceChooser = self->_imageResourceChooser;
    }

    else
    {
      imageResourceChooser = 0;
    }
  }

  return imageResourceChooser;
}

- (PHMediaRequestContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  isCancelled = self->_isCancelled;
  os_unfair_lock_unlock(&self->_lock);
  return isCancelled;
}

- (void)adjustmentDataRequest:(id)request didReportProgress:(double)progress completed:(BOOL)completed error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  identifierString = [request identifierString];
  [(PHMediaRequestContext *)self requestWithIdentifier:identifierString didReportProgress:completedCopy completed:errorCopy error:progress];
}

- (void)imageRequest:(id)request isRequestingScheduledWorkBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  if (blockCopy)
  {
    if ([requestCopy isSynchronous])
    {
      blockCopy[2](blockCopy, requestCopy);
    }

    else
    {
      objc_initWeak(&location, requestCopy);
      v7 = s_backgroundChooserQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__PHMediaRequestContext_imageRequest_isRequestingScheduledWorkBlock___block_invoke;
      block[3] = &unk_1E75A4D08;
      objc_copyWeak(&v10, &location);
      v9 = blockCopy;
      dispatch_async(v7, block);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __69__PHMediaRequestContext_imageRequest_isRequestingScheduledWorkBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

- (void)imageRequest:(id)request isQueryingCacheAndDidWait:(BOOL *)wait didFindImage:(BOOL *)image resultHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  delegate = [(PHMediaRequestContext *)self delegate];
  [delegate mediaRequestContext:self isQueryingCacheForRequest:requestCopy didWait:wait didFindImage:image resultHandler:handlerCopy];
}

- (BOOL)mediaRequestCanRequestRepair:(id)repair
{
  v23 = *MEMORY[0x1E69E9840];
  if (([(PHMediaRequestContext *)self maxRepairRequests]& 0x80000000) == 0)
  {
    add = atomic_fetch_add(&self->_repairAttemptCount, 1u);
    if (add >= [(PHMediaRequestContext *)self maxRepairRequests])
    {
      v12 = atomic_load(&self->_repairAttemptCount);
      v8 = PLImageManagerGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        managerID = self->_managerID;
        requestID = self->_requestID;
        v15 = 134218752;
        v16 = managerID;
        v17 = 2048;
        v18 = requestID;
        v19 = 2048;
        maxRepairRequests = [(PHMediaRequestContext *)self maxRepairRequests];
        v21 = 1024;
        v22 = v12;
        v11 = "[RM]: %ld-%ld Exceeded context wide limit (%ld) for resource repair requests (%d).";
        goto LABEL_9;
      }

LABEL_10:

      return 0;
    }
  }

  shouldLimitRepairRequestsPerProcess = [(PHMediaRequestContext *)self shouldLimitRepairRequestsPerProcess];
  result = 1;
  if (shouldLimitRepairRequestsPerProcess && atomic_fetch_add(sProcessRepairAttemptCount, 1u) == 0x7FFFFFFF)
  {
    v7 = atomic_load(sProcessRepairAttemptCount);
    v8 = PLImageManagerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_managerID;
      v10 = self->_requestID;
      v15 = 134218752;
      v16 = v9;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      maxRepairRequests = 0x7FFFFFFFLL;
      v21 = 1024;
      v22 = v7;
      v11 = "[RM]: %ld-%ld Exceeded process wide limit (%ld) for resource repair requests (%d).";
LABEL_9:
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, v11, &v15, 0x26u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  return result;
}

- (void)mediaRequest:(id)request didFinishWithResult:(id)result
{
  v38 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultCopy = result;
  v8 = [(PHMediaRequestContext *)self _produceChildRequestsForRequest:requestCopy withResult:resultCopy];
  [(PHMediaRequestContext *)self _registerAndStartRequests:v8];
  if (([resultCopy containsValidData] & 1) == 0)
  {
    if ([resultCopy isInCloud])
    {
      if (![(PHMediaRequestContext *)self isNetworkAccessAllowed])
      {
        error = [resultCopy error];

        if (!error)
        {
          v10 = PLImageManagerGetLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            managerID = self->_managerID;
            requestID = self->_requestID;
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            type = [(PHMediaRequestContext *)self type];
            if (type > 6)
            {
              v16 = 0;
            }

            else
            {
              v16 = off_1E75A4190[type];
            }

            v17 = v16;
            *buf = 134218754;
            v31 = managerID;
            v32 = 2048;
            v33 = requestID;
            v34 = 2112;
            v35 = v14;
            v36 = 2112;
            v37 = v17;
            _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "[RM] %ld-%ld %@ subrequest for %@ request should be reporting network access allowed error", buf, 0x2Au);
          }

          if (PHImageManagerRecordEnabled())
          {
            v23 = self->_requestID;
            v24 = self->_managerID;
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            type2 = [(PHMediaRequestContext *)self type];
            if (type2 > 6)
            {
              v28 = 0;
            }

            else
            {
              v28 = off_1E75A4190[type2];
            }

            v29 = v28;
            [PHImageManagerRequestTracer traceMessageForRequestID:v23 message:@"[RM] %ld-%ld %@ subrequest for %@ request should be reporting network access allowed error", v24, v23, v26, v29];
          }

          v18 = PHNetworkAccessAllowedRequiredError();
          [resultCopy setErrorIfNone:v18];
        }
      }
    }
  }

  [(PHMediaRequestContext *)self processMediaResult:resultCopy forRequest:requestCopy];
  os_unfair_lock_lock(&self->_lock);
  inflightRequestIdentifiers = self->_inflightRequestIdentifiers;
  identifierString = [requestCopy identifierString];
  [(NSMutableSet *)inflightRequestIdentifiers removeObject:identifierString];

  v21 = [(NSMutableSet *)self->_inflightRequestIdentifiers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v21)
  {
    delegate = [(PHMediaRequestContext *)self delegate];
    [delegate mediaRequestContextDidFinish:self];
  }
}

- (void)mediaRequest:(id)request didReportProgress:(id)progress
{
  progressCopy = progress;
  identifierString = [request identifierString];
  [progressCopy fractionCompleted];
  v8 = v7;

  [(PHMediaRequestContext *)self requestWithIdentifier:identifierString didReportProgress:0 completed:0 error:v8];
}

- (void)mediaRequest:(id)request didFindLocallyAvailableResult:(BOOL)result isDegraded:(BOOL)degraded
{
  v6 = [(PHMediaRequestContext *)self _produceChildRequestsForRequest:request reportingIsLocallyAvailable:result isDegraded:degraded];
  [(PHMediaRequestContext *)self _registerAndStartRequests:v6];
}

- (void)mediaRequest:(id)request didRequestRetryWithHintsAllowed:(BOOL)allowed
{
  requestCopy = request;
  v7 = s_backgroundChooserQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PHMediaRequestContext_mediaRequest_didRequestRetryWithHintsAllowed___block_invoke;
  block[3] = &unk_1E75A4170;
  allowedCopy = allowed;
  block[4] = self;
  v10 = requestCopy;
  v8 = requestCopy;
  dispatch_async(v7, block);
}

uint64_t __70__PHMediaRequestContext_mediaRequest_didRequestRetryWithHintsAllowed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageResourceChooser];
  [v2 setAllowHints:*(a1 + 48)];

  v3 = [*(a1 + 32) imageResourceChooser];
  [v3 moveFirst];

  v4 = *(a1 + 40);

  return [v4 startRequest];
}

- (BOOL)retryMediaRequest:(id)request afterFailureWithError:(id)error
{
  v44 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  errorCopy = error;
  v8 = PHRequestRetryTypeForRequest(requestCopy, errorCopy);
  if ((v8 - 2) < 2)
  {
    v12 = PLImageManagerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      identifierString = [requestCopy identifierString];
      [requestCopy retryInterval];
      *buf = 138543874;
      v39 = identifierString;
      v40 = 2048;
      v41 = v14;
      v42 = 2112;
      v43 = errorCopy;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "[RM] %{public}@ media request retrying after %f due to error: %@", buf, 0x20u);
    }

    [requestCopy retryInterval];
    v16 = dispatch_time(0, (v15 * 1000000000.0));
    v17 = s_backgroundChooserQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PHMediaRequestContext_retryMediaRequest_afterFailureWithError___block_invoke;
    block[3] = &unk_1E75AB270;
    v37 = requestCopy;
    dispatch_after(v16, v17, block);
    v11 = 1;
    v9 = v37;
  }

  else if (v8 == 4)
  {
    v18 = PLImageManagerGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      identifierString2 = [requestCopy identifierString];
      *buf = 138543362;
      v39 = identifierString2;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ media request requires additional resources to generate adjustment on demand", buf, 0xCu);
    }

    v20 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    lazyProgressContainer = [requestCopy lazyProgressContainer];
    [lazyProgressContainer setRequestProgress:v20];

    objc_initWeak(buf, self);
    asset = [(PHMediaRequestContext *)self asset];
    requestID = [(PHMediaRequestContext *)self requestID];
    managerID = [(PHMediaRequestContext *)self managerID];
    isNetworkAccessAllowed = [(PHMediaRequestContext *)self isNetworkAccessAllowed];
    downloadIntent = [requestCopy downloadIntent];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __65__PHMediaRequestContext_retryMediaRequest_afterFailureWithError___block_invoke_239;
    v34[3] = &unk_1E75A4120;
    v9 = v20;
    v35 = v9;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __65__PHMediaRequestContext_retryMediaRequest_afterFailureWithError___block_invoke_2;
    v31[3] = &unk_1E75A4148;
    objc_copyWeak(&v33, buf);
    v32 = requestCopy;
    v27 = [PHContentEditingInputRequestContext contentEditingInputRequestContextForAsset:asset requestID:requestID managerID:managerID networkAccessAllowed:isNetworkAccessAllowed downloadIntent:downloadIntent progressHandler:v34 resultHandler:v31];
    supplementaryRequestContext = self->_supplementaryRequestContext;
    self->_supplementaryRequestContext = v27;

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __65__PHMediaRequestContext_retryMediaRequest_afterFailureWithError___block_invoke_3;
    v30[3] = &unk_1E75AB270;
    v30[4] = self;
    dispatch_async(s_backgroundChooserQueue, v30);

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
    v11 = 1;
  }

  else
  {
    if (v8 != 1)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v9 = PLImageManagerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      identifierString3 = [requestCopy identifierString];
      *buf = 138543618;
      v39 = identifierString3;
      v40 = 2112;
      v41 = errorCopy;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "[RM] %{public}@ media request exceeded retry limit, failing with error: %@", buf, 0x16u);
    }

    v11 = 0;
  }

LABEL_15:
  return v11;
}

uint64_t __65__PHMediaRequestContext_retryMediaRequest_afterFailureWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareForRetry];
  v2 = *(a1 + 32);

  return [v2 startRequest];
}

uint64_t __65__PHMediaRequestContext_retryMediaRequest_afterFailureWithError___block_invoke_239(uint64_t a1, double a2)
{
  v3 = ([*(a1 + 32) totalUnitCount] * a2);
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

void __65__PHMediaRequestContext_retryMediaRequest_afterFailureWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSupplementaryRequestContext:0];
  if ([v3 containsValidData])
  {
    [*(a1 + 32) prepareForRetry];
    [*(a1 + 32) startRequest];
  }

  else
  {
    v5 = [v3 error];
    if (!v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E696A278];
      v9[0] = @"Supplementary content editing request failed";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      v5 = [v6 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v7];
    }

    [*(a1 + 32) configureWithError:v5];
    [*(a1 + 32) startRequest];
  }
}

- (void)cancel
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  self->_isCancelled = 1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_requests;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __30__PHMediaRequestContext_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5 = a2;
  v6 = +[PHCompositeMediaResult resultWithRequestID:error:](PHCompositeMediaResult, "resultWithRequestID:error:", [v3 requestID], v5);

  (*(v4 + 16))(v4, v6, 0, *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained mediaRequestContextDidFinish:*(a1 + 32)];
}

- (void)processMediaResult:(id)result forRequest:(id)request
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaRequestContext.m" lineNumber:359 description:@"Subclasses to implement"];
}

- (void)requestWithIdentifier:(id)identifier didReportProgress:(double)progress completed:(BOOL)completed error:(id)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  progressHandler = [(PHMediaRequestContext *)self progressHandler];
  if ([(PHMediaRequestContext *)self shouldReportProgress]&& ![(PHMediaRequestContext *)self isCancelled])
  {
    os_unfair_lock_lock(&self->_lock);
    v12 = [(NSMutableDictionary *)self->_progressByTaskIdentifier objectForKey:identifierCopy];
    os_unfair_lock_unlock(&self->_lock);
    [v12 setCompletedUnitCount:{vcvtmd_s64_f64(objc_msgSend(v12, "totalUnitCount") * progress)}];
    [(NSProgress *)self->_totalProgress fractionCompleted];
    v14 = v13;
    v18 = 0;
    v25 = @"PHImageResultRequestIDKey";
    v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_requestID];
    v26[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    (progressHandler)[2](progressHandler, errorCopy, &v18, v16, v14);
    v17 = PLImageManagerGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v20 = identifierCopy;
      v21 = 2048;
      progressCopy = progress;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "[RM]: %@ request progress is %f, total progress is %f", buf, 0x20u);
    }

    if (PHImageManagerRecordEnabled())
    {
      [PHImageManagerRequestTracer traceMessageForRequestID:self->_requestID message:@"[RM]: %@ request progress is %f, total progress is %f", identifierCopy, *&progress, *&v14];
    }

    if (v18 == 1)
    {
      [(PHMediaRequestContext *)self cancel];
    }
  }
}

- (void)setProgress:(id)progress forRequestIdentifier:(id)identifier
{
  if (progress)
  {
    identifierCopy = identifier;
    progressCopy = progress;
    [(PHMediaRequestContext *)self _setupProgressIfNeeded];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_progressByTaskIdentifier setObject:progressCopy forKey:identifierCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)_produceChildRequestsForRequest:(id)request withResult:(id)result
{
  resultCopy = result;
  requestCopy = request;
  v8 = -[PHMediaRequestContext produceChildRequestsForRequest:reportingIsLocallyAvailable:isDegraded:result:](self, "produceChildRequestsForRequest:reportingIsLocallyAvailable:isDegraded:result:", requestCopy, [resultCopy containsValidData], objc_msgSend(resultCopy, "isDegraded"), resultCopy);

  return v8;
}

- (id)initialRequests
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaRequestContext.m" lineNumber:288 description:@"Subclasses to implement"];

  return 0;
}

- (void)finishCustomAsyncWorkWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_inflightRequestIdentifiers removeObject:identifierCopy];

  v5 = [(NSMutableSet *)self->_inflightRequestIdentifiers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    delegate = [(PHMediaRequestContext *)self delegate];
    [delegate mediaRequestContextDidFinish:self];
  }
}

- (void)beginCustomAsyncWorkWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_inflightRequestIdentifiers addObject:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)type
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaRequestContext.m" lineNumber:236 description:@"Subclasses to implement"];

  return 0;
}

- (void)_registerAndStartRequests:(id)requests
{
  v50 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  os_unfair_lock_lock(&self->_lock);
  v31 = requestsCopy;
  if (self->_isCancelled)
  {
    os_unfair_lock_unlock(&self->_lock);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = requestsCopy;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v47 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = PLImageManagerGetLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            identifierString = [v10 identifierString];
            *buf = 138412290;
            v46 = identifierString;
            _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEBUG, "[RM]: %@ Ignoring request start due to cancellation", buf, 0xCu);
          }

          if (PHImageManagerRecordEnabled())
          {
            requestID = [v10 requestID];
            identifierString2 = [v10 identifierString];
            [PHImageManagerRequestTracer traceMessageForRequestID:requestID message:@"[RM]: %@ Ignoring request start due to cancellation", identifierString2];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v47 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = requestsCopy;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v41 + 1) + 8 * j);
          [(NSMutableArray *)self->_requests addObject:v20];
          inflightRequestIdentifiers = self->_inflightRequestIdentifiers;
          identifierString3 = [v20 identifierString];
          [(NSMutableSet *)inflightRequestIdentifiers addObject:identifierString3];
        }

        v17 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v17);
    }

    os_unfair_lock_unlock(&self->_lock);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = v15;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        v27 = 0;
        do
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v37 + 1) + 8 * v27);
          [v28 setSignpostID:self->_signpostID];
          progressHandler = [(PHMediaRequestContext *)self progressHandler];
          [v28 setWantsProgress:progressHandler != 0];

          if ([v28 isSynchronous] || dispatch_get_specific(&s_chooserQueueDispatchSpecificKey))
          {
            [v28 startRequest];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __51__PHMediaRequestContext__registerAndStartRequests___block_invoke;
            block[3] = &unk_1E75AB270;
            block[4] = v28;
            dispatch_async(s_backgroundChooserQueue, block);
          }

          ++v27;
        }

        while (v25 != v27);
        v30 = [v23 countByEnumeratingWithState:&v37 objects:v48 count:16];
        v25 = v30;
      }

      while (v30);
    }
  }
}

- (id)_requestWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_requests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifierString = [v9 identifierString];
        v11 = [identifierString isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (PHMediaRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec resultHandler:(id)handler
{
  assetCopy = asset;
  specCopy = spec;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = PHMediaRequestContext;
  v16 = [(PHMediaRequestContext *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_requestID = d;
    v16->_managerID = iD;
    objc_storeStrong(&v16->_asset, asset);
    if (!v17->_asset)
    {
      v18 = PLImageManagerGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "Media context with a nil asset is invalid, will result in a no-op media request", v26, 2u);
      }

      if (PHImageManagerRecordEnabled())
      {
        [PHImageManagerRequestTracer traceMessageForRequestID:v17->_requestID message:@"Media context with a nil asset is invalid, will result in a no-op media request"];
      }
    }

    objc_storeStrong(&v17->_displaySpec, spec);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requests = v17->_requests;
    v17->_requests = v19;

    if (handlerCopy)
    {
      v21 = [handlerCopy copy];
      resultHandler = v17->_resultHandler;
      v17->_resultHandler = v21;
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    inflightRequestIdentifiers = v17->_inflightRequestIdentifiers;
    v17->_inflightRequestIdentifiers = v23;

    v17->_lock._os_unfair_lock_opaque = 0;
    v17->_signpostID = 0;
    atomic_store(0, &v17->_repairAttemptCount);
  }

  return v17;
}

+ (id)contentEditingInputRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options useRAWAsUnadjustedBase:(BOOL)base resultHandler:(id)handler
{
  baseCopy = base;
  v12 = *&d;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v16 = [[PHContentEditingInputRequestContext alloc] initWithRequestID:v12 managerID:iD asset:assetCopy options:optionsCopy useRAWAsUnadjustedBase:baseCopy resultHandler:handlerCopy];

  return v16;
}

+ (id)livePhotoRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset livePhotoRequestOptions:(id)options displaySpec:(id)spec resultHandler:(id)handler
{
  v12 = *&d;
  handlerCopy = handler;
  specCopy = spec;
  optionsCopy = options;
  assetCopy = asset;
  v17 = [[PHLivePhotoRequestContext alloc] initWithRequestID:v12 managerID:iD asset:assetCopy displaySpec:specCopy options:optionsCopy resultHandler:handlerCopy];

  return v17;
}

+ (id)videoRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset videoRequestOptions:(id)options intent:(int64_t)intent resultHandler:(id)handler
{
  v12 = *&d;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v16 = [PHImageDisplaySpec alloc];
  [optionsCopy targetSize];
  v19 = -[PHImageDisplaySpec initWithTargetSize:contentMode:](v16, "initWithTargetSize:contentMode:", [optionsCopy contentMode], v17, v18);
  v20 = [[PHVideoRequestContext alloc] initWithRequestID:v12 managerID:iD asset:assetCopy displaySpec:v19 options:optionsCopy intent:intent resultHandler:handlerCopy];

  return v20;
}

+ (id)imageRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset imageRequestOptions:(id)options displaySpec:(id)spec resultHandler:(id)handler
{
  v12 = *&d;
  assetCopy = asset;
  optionsCopy = options;
  specCopy = spec;
  handlerCopy = handler;
  if ([optionsCopy version] == 16)
  {
    v17 = [[PHAdjustmentDataRequestContext alloc] initWithRequestID:v12 managerID:iD asset:assetCopy options:optionsCopy resultHandler:handlerCopy];
  }

  else if ([optionsCopy version] == 17)
  {
    v17 = [PHSingleMediaRequestContext originalAdjustmentDataRequestContextWithRequestID:v12 managerID:iD asset:assetCopy options:optionsCopy resultHandler:handlerCopy];
  }

  else
  {
    v17 = [[PHImageRequestContext alloc] initWithRequestID:v12 managerID:iD asset:assetCopy displaySpec:specCopy options:optionsCopy resultHandler:handlerCopy];
  }

  v18 = v17;

  return v18;
}

@end