@interface PHSingleMediaRequestContext
+ (id)avProxyRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options resultHandler:(id)handler;
+ (id)originalAdjustmentDataRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options resultHandler:(id)handler;
+ (int64_t)_indexOfAvProxyFromResources:(id)resources hasAdjustments:(BOOL)adjustments version:(int64_t)version;
- (PHSingleMediaRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec type:(int64_t)type networkAccessAllowed:(BOOL)allowed progressHandler:(id)handler resultHandler:(id)self0;
- (id)_lazyProgress;
- (id)initialRequests;
- (id)progressHandler;
- (id)progresses;
- (void)processMediaResult:(id)result forRequest:(id)request;
@end

@implementation PHSingleMediaRequestContext

- (void)processMediaResult:(id)result forRequest:(id)request
{
  resultHandler = self->super._resultHandler;
  if (resultHandler)
  {
    resultHandler[2](resultHandler, result, request, self);
  }
}

- (id)progresses
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PHMediaRequestContext *)self shouldReportProgress])
  {
    _lazyProgress = [(PHSingleMediaRequestContext *)self _lazyProgress];
    v6[0] = _lazyProgress;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)progressHandler
{
  v2 = _Block_copy(self->_progressHandler);

  return v2;
}

- (id)initialRequests
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_request)
  {
    v4[0] = self->_request;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_lazyProgress
{
  progress = self->_progress;
  if (!progress)
  {
    v4 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    v5 = self->_progress;
    self->_progress = v4;

    progress = self->_progress;
  }

  return progress;
}

- (PHSingleMediaRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec type:(int64_t)type networkAccessAllowed:(BOOL)allowed progressHandler:(id)handler resultHandler:(id)self0
{
  v15 = *&d;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = PHSingleMediaRequestContext;
  v18 = [(PHMediaRequestContext *)&v23 initWithRequestID:v15 managerID:iD asset:asset displaySpec:spec resultHandler:resultHandler];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    v18->_networkAccessAllowed = allowed;
    v20 = [handlerCopy copy];
    progressHandler = v19->_progressHandler;
    v19->_progressHandler = v20;
  }

  return v19;
}

+ (int64_t)_indexOfAvProxyFromResources:(id)resources hasAdjustments:(BOOL)adjustments version:(int64_t)version
{
  resourcesCopy = resources;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PHSingleMediaRequestContext__indexOfAvProxyFromResources_hasAdjustments_version___block_invoke;
  v12[3] = &__block_descriptor_41_e32_B32__0__PHAssetResource_8Q16_B24l;
  adjustmentsCopy = adjustments;
  v12[4] = version;
  v8 = [resourcesCopy indexOfObjectPassingTest:v12];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__PHSingleMediaRequestContext__indexOfAvProxyFromResources_hasAdjustments_version___block_invoke_2;
    v10[3] = &__block_descriptor_41_e32_B32__0__PHAssetResource_8Q16_B24l;
    adjustmentsCopy2 = adjustments;
    v10[4] = version;
    v8 = [resourcesCopy indexOfObjectPassingTest:v10];
  }

  return v8;
}

BOOL __83__PHSingleMediaRequestContext__indexOfAvProxyFromResources_hasAdjustments_version___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1 && !*(a1 + 32))
  {
    v5 = 105;
  }

  else
  {
    v5 = 104;
  }

  v6 = [v3 type] == v5;

  return v6;
}

BOOL __83__PHSingleMediaRequestContext__indexOfAvProxyFromResources_hasAdjustments_version___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1 && !*(a1 + 32))
  {
    v5 = 6;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v3 type] == v5;

  return v6;
}

+ (id)originalAdjustmentDataRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options resultHandler:(id)handler
{
  v10 = *&d;
  v43[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = [PHSingleMediaRequestContext alloc];
  isNetworkAccessAllowed = [optionsCopy isNetworkAccessAllowed];
  progressHandler = [optionsCopy progressHandler];
  v17 = [(PHSingleMediaRequestContext *)v14 initWithRequestID:v10 managerID:iD asset:assetCopy displaySpec:0 type:6 networkAccessAllowed:isNetworkAccessAllowed progressHandler:progressHandler resultHandler:handlerCopy];

  v18 = [PHAssetResource assetResourcesForAsset:assetCopy includeDerivatives:0 includeMetadata:0];
  v19 = [v18 indexOfObjectPassingTest:&__block_literal_global_1748];
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = PLImageManagerGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Request original adjustment data, but asset has none, invalid request", buf, 2u);
    }

    v21 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A278];
    v22 = MEMORY[0x1E696AEC0];
    uuid = [assetCopy uuid];
    v24 = [v22 stringWithFormat:@"asset %@ does not have original adjustemnt data resource", uuid];
    v43[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v26 = [v21 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v25];
    [(PHMediaRequestContext *)v17 setPrestartError:v26];
  }

  else
  {
    v40 = [v18 objectAtIndexedSubscript:v19];
    v39 = [PHMediaResourceRequest alloc];
    type = [(PHSingleMediaRequestContext *)v17 type];
    isNetworkAccessAllowed2 = [optionsCopy isNetworkAccessAllowed];
    v29 = v18;
    iDCopy = iD;
    downloadIntent = [optionsCopy downloadIntent];
    v32 = v10;
    downloadPriority = [optionsCopy downloadPriority];
    BYTE1(v38) = [optionsCopy isSynchronous];
    LOBYTE(v38) = 0;
    LOBYTE(v37) = isNetworkAccessAllowed2;
    v34 = iDCopy;
    v18 = v29;
    v35 = [(PHMediaResourceRequest *)v39 initWithRequestID:v32 requestIndex:0 contextType:type managerID:v34 asset:assetCopy assetResource:v40 networkAccessAllowed:v37 downloadIntent:downloadIntent downloadPriority:downloadPriority wantsURLOnly:v38 synchronous:v17 delegate:?];
    [(PHSingleMediaRequestContext *)v17 setRequest:v35];
  }

  return v17;
}

+ (id)avProxyRequestContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options resultHandler:(id)handler
{
  v10 = *&d;
  v50 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v15 = [PHSingleMediaRequestContext alloc];
  isNetworkAccessAllowed = [optionsCopy isNetworkAccessAllowed];
  progressHandler = [optionsCopy progressHandler];
  v18 = [(PHSingleMediaRequestContext *)v15 initWithRequestID:v10 managerID:iD asset:assetCopy displaySpec:0 type:5 networkAccessAllowed:isNetworkAccessAllowed progressHandler:progressHandler resultHandler:handlerCopy];

  v19 = [PHAssetResource assetResourcesForAsset:assetCopy includeDerivatives:0 includeMetadata:1];
  v20 = [self _indexOfAvProxyFromResources:v19 hasAdjustments:objc_msgSend(assetCopy version:{"hasAdjustments"), objc_msgSend(optionsCopy, "version")}];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![assetCopy hasAdjustments] || (v20 = objc_msgSend(self, "_indexOfAvProxyFromResources:hasAdjustments:version:", v19, 0, objc_msgSend(optionsCopy, "version")), v20 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v21 = PLImageManagerGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "Request for AVAssetProxy, but asset has no media metadata or video resources, invalid request", buf, 2u);
      }

      v22 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A278];
      v23 = MEMORY[0x1E696AEC0];
      uuid = [assetCopy uuid];
      v25 = [v23 stringWithFormat:@"asset %@ does not have media metadata or video resources", uuid];
      v45 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v27 = [v22 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v26];
      [(PHMediaRequestContext *)v18 setPrestartError:v27];
LABEL_7:

      goto LABEL_14;
    }
  }

  v42 = v10;
  iDCopy = iD;
  v43 = v19;
  uuid = [v19 objectAtIndexedSubscript:v20];
  v29 = v18;
  v30 = [uuid type] != 105 && objc_msgSend(uuid, "type") != 104;
  v31 = [PHMediaResourceRequest alloc];
  isNetworkAccessAllowed2 = [optionsCopy isNetworkAccessAllowed];
  downloadIntent = [optionsCopy downloadIntent];
  downloadPriority = [optionsCopy downloadPriority];
  BYTE1(v41) = [optionsCopy isSynchronous];
  LOBYTE(v41) = v30;
  v40 = downloadIntent;
  v18 = v29;
  LOBYTE(v39) = isNetworkAccessAllowed2;
  v25 = [(PHMediaResourceRequest *)v31 initWithRequestID:v42 requestIndex:0 contextType:5 managerID:iDCopy asset:assetCopy assetResource:uuid networkAccessAllowed:v39 downloadIntent:v40 downloadPriority:downloadPriority wantsURLOnly:v41 synchronous:v29 delegate:?];
  [(PHSingleMediaRequestContext *)v18 setRequest:v25];
  if (v30 && ([uuid isLocallyAvailable] & 1) == 0)
  {
    deferredProcessingNeeded = [assetCopy deferredProcessingNeeded];
    v37 = @"unexpected state, will attempt to continue";
    if (deferredProcessingNeeded == 2)
    {
      v37 = @"deferred processing needed";
    }

    v26 = v37;
    v27 = PLImageManagerGetLog();
    v19 = v43;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      identifierString = [(PHMediaRequest *)v25 identifierString];
      *buf = 138412546;
      v47 = identifierString;
      v48 = 2114;
      v49 = v26;
      _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_DEFAULT, "[RM] %@ Request for AVAssetProxy for asset with no media metadata resource, but video is not locally available: %{public}@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v19 = v43;
LABEL_14:

  return v18;
}

@end