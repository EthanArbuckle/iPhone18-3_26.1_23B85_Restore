@interface PHSingleMediaRequestContext
+ (id)avProxyRequestContextWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 resultHandler:(id)a7;
+ (id)originalAdjustmentDataRequestContextWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 resultHandler:(id)a7;
+ (int64_t)_indexOfAvProxyFromResources:(id)a3 hasAdjustments:(BOOL)a4 version:(int64_t)a5;
- (PHSingleMediaRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 displaySpec:(id)a6 type:(int64_t)a7 networkAccessAllowed:(BOOL)a8 progressHandler:(id)a9 resultHandler:(id)a10;
- (id)_lazyProgress;
- (id)initialRequests;
- (id)progressHandler;
- (id)progresses;
- (void)processMediaResult:(id)a3 forRequest:(id)a4;
@end

@implementation PHSingleMediaRequestContext

- (void)processMediaResult:(id)a3 forRequest:(id)a4
{
  resultHandler = self->super._resultHandler;
  if (resultHandler)
  {
    resultHandler[2](resultHandler, a3, a4, self);
  }
}

- (id)progresses
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PHMediaRequestContext *)self shouldReportProgress])
  {
    v3 = [(PHSingleMediaRequestContext *)self _lazyProgress];
    v6[0] = v3;
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

- (PHSingleMediaRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 displaySpec:(id)a6 type:(int64_t)a7 networkAccessAllowed:(BOOL)a8 progressHandler:(id)a9 resultHandler:(id)a10
{
  v15 = *&a3;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = PHSingleMediaRequestContext;
  v18 = [(PHMediaRequestContext *)&v23 initWithRequestID:v15 managerID:a4 asset:a5 displaySpec:a6 resultHandler:a10];
  v19 = v18;
  if (v18)
  {
    v18->_type = a7;
    v18->_networkAccessAllowed = a8;
    v20 = [v17 copy];
    progressHandler = v19->_progressHandler;
    v19->_progressHandler = v20;
  }

  return v19;
}

+ (int64_t)_indexOfAvProxyFromResources:(id)a3 hasAdjustments:(BOOL)a4 version:(int64_t)a5
{
  v7 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PHSingleMediaRequestContext__indexOfAvProxyFromResources_hasAdjustments_version___block_invoke;
  v12[3] = &__block_descriptor_41_e32_B32__0__PHAssetResource_8Q16_B24l;
  v13 = a4;
  v12[4] = a5;
  v8 = [v7 indexOfObjectPassingTest:v12];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__PHSingleMediaRequestContext__indexOfAvProxyFromResources_hasAdjustments_version___block_invoke_2;
    v10[3] = &__block_descriptor_41_e32_B32__0__PHAssetResource_8Q16_B24l;
    v11 = a4;
    v10[4] = a5;
    v8 = [v7 indexOfObjectPassingTest:v10];
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

+ (id)originalAdjustmentDataRequestContextWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 resultHandler:(id)a7
{
  v10 = *&a3;
  v43[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [PHSingleMediaRequestContext alloc];
  v15 = [v12 isNetworkAccessAllowed];
  v16 = [v12 progressHandler];
  v17 = [(PHSingleMediaRequestContext *)v14 initWithRequestID:v10 managerID:a4 asset:v11 displaySpec:0 type:6 networkAccessAllowed:v15 progressHandler:v16 resultHandler:v13];

  v18 = [PHAssetResource assetResourcesForAsset:v11 includeDerivatives:0 includeMetadata:0];
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
    v23 = [v11 uuid];
    v24 = [v22 stringWithFormat:@"asset %@ does not have original adjustemnt data resource", v23];
    v43[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v26 = [v21 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v25];
    [(PHMediaRequestContext *)v17 setPrestartError:v26];
  }

  else
  {
    v40 = [v18 objectAtIndexedSubscript:v19];
    v39 = [PHMediaResourceRequest alloc];
    v27 = [(PHSingleMediaRequestContext *)v17 type];
    v28 = [v12 isNetworkAccessAllowed];
    v29 = v18;
    v30 = a4;
    v31 = [v12 downloadIntent];
    v32 = v10;
    v33 = [v12 downloadPriority];
    BYTE1(v38) = [v12 isSynchronous];
    LOBYTE(v38) = 0;
    LOBYTE(v37) = v28;
    v34 = v30;
    v18 = v29;
    v35 = [(PHMediaResourceRequest *)v39 initWithRequestID:v32 requestIndex:0 contextType:v27 managerID:v34 asset:v11 assetResource:v40 networkAccessAllowed:v37 downloadIntent:v31 downloadPriority:v33 wantsURLOnly:v38 synchronous:v17 delegate:?];
    [(PHSingleMediaRequestContext *)v17 setRequest:v35];
  }

  return v17;
}

+ (id)avProxyRequestContextWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 resultHandler:(id)a7
{
  v10 = *&a3;
  v50 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [PHSingleMediaRequestContext alloc];
  v16 = [v13 isNetworkAccessAllowed];
  v17 = [v13 progressHandler];
  v18 = [(PHSingleMediaRequestContext *)v15 initWithRequestID:v10 managerID:a4 asset:v12 displaySpec:0 type:5 networkAccessAllowed:v16 progressHandler:v17 resultHandler:v14];

  v19 = [PHAssetResource assetResourcesForAsset:v12 includeDerivatives:0 includeMetadata:1];
  v20 = [a1 _indexOfAvProxyFromResources:v19 hasAdjustments:objc_msgSend(v12 version:{"hasAdjustments"), objc_msgSend(v13, "version")}];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![v12 hasAdjustments] || (v20 = objc_msgSend(a1, "_indexOfAvProxyFromResources:hasAdjustments:version:", v19, 0, objc_msgSend(v13, "version")), v20 == 0x7FFFFFFFFFFFFFFFLL))
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
      v24 = [v12 uuid];
      v25 = [v23 stringWithFormat:@"asset %@ does not have media metadata or video resources", v24];
      v45 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v27 = [v22 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v26];
      [(PHMediaRequestContext *)v18 setPrestartError:v27];
LABEL_7:

      goto LABEL_14;
    }
  }

  v42 = v10;
  v28 = a4;
  v43 = v19;
  v24 = [v19 objectAtIndexedSubscript:v20];
  v29 = v18;
  v30 = [v24 type] != 105 && objc_msgSend(v24, "type") != 104;
  v31 = [PHMediaResourceRequest alloc];
  v32 = [v13 isNetworkAccessAllowed];
  v33 = [v13 downloadIntent];
  v34 = [v13 downloadPriority];
  BYTE1(v41) = [v13 isSynchronous];
  LOBYTE(v41) = v30;
  v40 = v33;
  v18 = v29;
  LOBYTE(v39) = v32;
  v25 = [(PHMediaResourceRequest *)v31 initWithRequestID:v42 requestIndex:0 contextType:5 managerID:v28 asset:v12 assetResource:v24 networkAccessAllowed:v39 downloadIntent:v40 downloadPriority:v34 wantsURLOnly:v41 synchronous:v29 delegate:?];
  [(PHSingleMediaRequestContext *)v18 setRequest:v25];
  if (v30 && ([v24 isLocallyAvailable] & 1) == 0)
  {
    v36 = [v12 deferredProcessingNeeded];
    v37 = @"unexpected state, will attempt to continue";
    if (v36 == 2)
    {
      v37 = @"deferred processing needed";
    }

    v26 = v37;
    v27 = PLImageManagerGetLog();
    v19 = v43;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(PHMediaRequest *)v25 identifierString];
      *buf = 138412546;
      v47 = v38;
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