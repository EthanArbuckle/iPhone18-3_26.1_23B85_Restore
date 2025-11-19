@interface PHLiveRenderEditingInputRequestContext
+ (id)videoLiveRenderContextWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 targetSize:(CGSize)a7 contentMode:(int64_t)a8 renderedVideoHandler:(id)a9;
- (PHLiveRenderEditingInputRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 useRAWAsUnadjustedBase:(BOOL)a7 resultHandler:(id)a8;
- (id)initialRequests;
- (id)produceChildRequestsForRequest:(id)a3 reportingIsLocallyAvailable:(BOOL)a4 isDegraded:(BOOL)a5 result:(id)a6;
- (id)progresses;
- (void)_handleRenderVideoFinishedWithRequest:(id)a3 avAsset:(id)a4 videoComposition:(id)a5 audioMix:(id)a6 error:(id)a7 mutableInfo:(id)a8;
- (void)cancel;
- (void)processAndReturnResultsWithRequest:(id)a3;
- (void)processMediaResult:(id)a3 forRequest:(id)a4;
@end

@implementation PHLiveRenderEditingInputRequestContext

- (void)processAndReturnResultsWithRequest:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = PHLiveRenderEditingInputRequestContext;
  [(PHContentEditingInputRequestContext *)&v45 processAndReturnResultsWithRequest:v4];
  v5 = [(PHCompositeMediaResult *)self->super._contentEditingInputResult info];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"PHContentEditingInputCancelledKey"];
  [v6 setObject:v7 forKeyedSubscript:@"PHImageCancelledKey"];

  v8 = [v6 objectForKeyedSubscript:@"PHContentEditingInputResultIsInCloudKey"];
  [v6 setObject:v8 forKeyedSubscript:@"PHImageResultIsInCloudKey"];

  v9 = [v6 objectForKeyedSubscript:@"PHContentEditingInputErrorKey"];
  [v6 setObject:v9 forKeyedSubscript:@"PHImageErrorKey"];

  [v6 setObject:0 forKeyedSubscript:@"PHContentEditingInputCancelledKey"];
  [v6 setObject:0 forKeyedSubscript:@"PHContentEditingInputResultIsInCloudKey"];
  [v6 setObject:0 forKeyedSubscript:@"PHContentEditingInputErrorKey"];
  if ([(PHMediaRequestLiveRenderingOptions *)self->_liveRenderOptions liveRenderAndOnDemandRenderVideoConcurrently])
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageResultIsDegradedKey"];
  }

  if ([(PHMediaRequestContext *)self isCancelled]|| ![(PHContentEditingInputResult *)self->super._contentEditingInputResult containsValidData]|| ([(PHContentEditingInputResult *)self->super._contentEditingInputResult videoURL], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
  {
    v28 = [(PHMediaRequestContext *)self isCancelled];
    v29 = PLImageManagerGetLog();
    v30 = v29;
    if (v28)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v31 = [v4 identifierString];
        *buf = 138412290;
        v47 = v31;
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEBUG, "%@ [LiveRender] - Request was cancelled, will not live render", buf, 0xCu);
      }

      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageCancelledKey"];
    }

    else
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = [v4 identifierString];
        v33 = [v6 objectForKeyedSubscript:@"PHImageErrorKey"];
        *buf = 138412546;
        v47 = v32;
        v48 = 2112;
        v49 = v33;
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "%@ Video URL unavailable, will not live render, error: %@", buf, 0x16u);
      }
    }

    (*(self->_renderedVideoHandler + 2))();
  }

  else
  {
    v40 = [(PHContentEditingInputResult *)self->super._contentEditingInputResult videoURL];
    v37 = [(PHContentEditingInputResult *)self->super._contentEditingInputResult overCaptureVideoURL];
    v38 = [(PHContentEditingInputResult *)self->super._contentEditingInputResult imageURL];
    v12 = [(PHContentEditingInputResult *)self->super._contentEditingInputResult adjustmentData];
    v39 = [v12 formatIdentifier];
    v13 = [v12 formatVersion];
    v14 = [v12 data];
    v15 = PLImageManagerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v4 identifierString];
      *buf = 138412802;
      v47 = v16;
      v48 = 2112;
      v49 = v40;
      v50 = 2112;
      v51 = v37;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "%@ [LiveRender] - preparing live renderer for video at URL: %@, overcapture URL: %@", buf, 0x20u);
    }

    v17 = PLImageManagerGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v4 identifierString];
      v19 = [v14 length];
      *buf = 138413058;
      v47 = v18;
      v48 = 2048;
      v49 = v19;
      v50 = 2112;
      v51 = v39;
      v52 = 2112;
      v53 = v13;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "%@ [LiveRender] - adj data length: %ld, format id: %@, version: %@", buf, 0x2Au);
    }

    os_unfair_lock_lock(&self->_renderLock);
    v20 = [MEMORY[0x1E69BE658] rendererForVideoURL:v40 livePhotoStillURL:v38 adjustmentData:v14 formatIdentifier:v39 formatVersion:v13];
    renderer = self->_renderer;
    self->_renderer = v20;

    os_unfair_lock_unlock(&self->_renderLock);
    if (self->_renderer)
    {
      objc_initWeak(buf, self);
      [(PHMediaRequestContext *)self beginCustomAsyncWorkWithIdentifier:@"renderVideoWithTargetSize"];
      v22 = [(PHContentEditingInputRequestContext *)self options];
      [v22 targetSize];
      v24 = v23;
      v26 = v25;

      if (v24 == -1.0 && v26 == -1.0)
      {
        v26 = *(MEMORY[0x1E695F060] + 8);
        v24 = *MEMORY[0x1E695F060];
      }

      v27 = self->_renderer;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __77__PHLiveRenderEditingInputRequestContext_processAndReturnResultsWithRequest___block_invoke;
      v41[3] = &unk_1E75A9178;
      objc_copyWeak(&v44, buf);
      v42 = v4;
      v43 = v6;
      [(PLPhotoEditRenderer *)v27 renderVideoWithTargetSize:@"PHLiveRenderEditingInputRequestContext-renderVideo" name:v41 completion:v24, v26];
      os_unfair_lock_lock(&self->_renderLock);
      LODWORD(v27) = [(PHMediaRequestContext *)self isCancelled];
      os_unfair_lock_unlock(&self->_renderLock);
      if (v27)
      {
        [(PLPhotoEditRenderer *)self->_renderer cancelAllRenders];
      }

      objc_destroyWeak(&v44);
      objc_destroyWeak(buf);
    }

    else
    {
      v34 = PLImageManagerGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [v4 identifierString];
        *buf = 138412290;
        v47 = v35;
        _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_ERROR, "%@ PLPhotoEditRenderer unavailable, will not live render", buf, 0xCu);
      }

      v36 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"PLPhotoEditRenderer unavailable, will not live render"}];
      [v6 setObject:v36 forKeyedSubscript:@"PHImageErrorKey"];

      (*(self->_renderedVideoHandler + 2))();
    }
  }
}

void __77__PHLiveRenderEditingInputRequestContext_processAndReturnResultsWithRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleRenderVideoFinishedWithRequest:*(a1 + 32) avAsset:v12 videoComposition:v11 audioMix:v10 error:v9 mutableInfo:*(a1 + 40)];
}

- (void)_handleRenderVideoFinishedWithRequest:(id)a3 avAsset:(id)a4 videoComposition:(id)a5 audioMix:(id)a6 error:(id)a7 mutableInfo:(id)a8
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  [v19 setObject:v18 forKeyedSubscript:@"PHImageErrorKey"];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHMediaRequestContext isCancelled](self, "isCancelled")}];
  [v19 setObject:v20 forKeyedSubscript:@"PHImageCancelledKey"];

  v21 = PLImageManagerGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v14 identifierString];
    v25 = 138412546;
    v26 = v22;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "%@ [LiveRender] - Live rendering video completed with error: %@", &v25, 0x16u);
  }

  if (!v15)
  {
    v23 = PLImageManagerGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [(PHContentEditingInputResult *)self->super._contentEditingInputResult videoURL];
      v25 = 138412546;
      v26 = v24;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Error live rendering video at URL: %@, error: %@", &v25, 0x16u);
    }
  }

  (*(self->_renderedVideoHandler + 2))();
  [(PHMediaRequestContext *)self finishCustomAsyncWorkWithIdentifier:@"renderVideoWithTargetSize"];
}

- (id)progresses
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PHMediaRequestLiveRenderingOptions *)self->_liveRenderOptions liveRenderAndOnDemandRenderVideoConcurrently])
  {
    v6[0] = self->_onDemandRenderProgress;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PHLiveRenderEditingInputRequestContext;
    v3 = [(PHContentEditingInputRequestContext *)&v5 progresses];
  }

  return v3;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_renderLock);
  v4.receiver = self;
  v4.super_class = PHLiveRenderEditingInputRequestContext;
  [(PHContentEditingInputRequestContext *)&v4 cancel];
  renderer = self->_renderer;
  os_unfair_lock_unlock(&self->_renderLock);
  if (renderer)
  {
    [(PLPhotoEditRenderer *)self->_renderer cancelAllRenders];
  }
}

- (void)processMediaResult:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PHMediaRequestLiveRenderingOptions *)self->_liveRenderOptions liveRenderAndOnDemandRenderVideoConcurrently]&& self->_onDemandRenderRequest == v7)
  {
    v8 = [v6 videoURL];

    if (v8)
    {
      v9 = [v6 videoURL];
      v10 = [v6 info];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __72__PHLiveRenderEditingInputRequestContext_processMediaResult_forRequest___block_invoke;
      v14[3] = &unk_1E75A9150;
      v15 = v6;
      v16 = self;
      v17 = v7;
      [PHImageManager buildAVAssetFromVideoURL:v9 infoDictionary:v10 options:0 completion:v14];
    }

    else
    {
      renderedVideoHandler = self->_renderedVideoHandler;
      v12 = [v6 info];
      (*(renderedVideoHandler + 2))(renderedVideoHandler, 0, v7, 0, 0, 0, v12);
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PHLiveRenderEditingInputRequestContext;
    [(PHContentEditingInputRequestContext *)&v13 processMediaResult:v6 forRequest:v7];
  }
}

void __72__PHLiveRenderEditingInputRequestContext_processMediaResult_forRequest___block_invoke(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1[4];
  v10 = a4;
  v11 = a3;
  v12 = a2;
  [v9 setErrorIfNone:a5];
  v13 = a1[4];
  v14 = *(a1[5] + 304);
  v15 = a1[6];
  v16 = [v13 info];
  (*(v14 + 16))(v14, v13, v15, v12, v10, v11, v16);
}

- (id)produceChildRequestsForRequest:(id)a3 reportingIsLocallyAvailable:(BOOL)a4 isDegraded:(BOOL)a5 result:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if ([(PHMediaRequestLiveRenderingOptions *)self->_liveRenderOptions liveRenderAndOnDemandRenderVideoConcurrently]&& self->_onDemandRenderRequest == v10)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PHLiveRenderEditingInputRequestContext;
    v12 = [(PHContentEditingInputRequestContext *)&v14 produceChildRequestsForRequest:v10 reportingIsLocallyAvailable:v8 isDegraded:v7 result:v11];
  }

  return v12;
}

- (id)initialRequests
{
  v17.receiver = self;
  v17.super_class = PHLiveRenderEditingInputRequestContext;
  v3 = [(PHContentEditingInputRequestContext *)&v17 initialRequests];
  if ([(PHMediaRequestLiveRenderingOptions *)self->_liveRenderOptions liveRenderAndOnDemandRenderVideoConcurrently])
  {
    v4 = objc_alloc_init(PHVideoRequestBehaviorSpec);
    [(PHVideoRequestBehaviorSpec *)v4 setDeliveryMode:1];
    [(PHVideoRequestBehaviorSpec *)v4 setVersion:0];
    v5 = [PHVideoRequest alloc];
    v6 = [(PHMediaRequestContext *)self requestID];
    v7 = [(PHMediaRequestContext *)self nextRequestIndex];
    v8 = [(PHContentEditingInputRequestContext *)self type];
    v9 = [(PHMediaRequestContext *)self managerID];
    v10 = [(PHMediaRequestContext *)self asset];
    v11 = [(PHVideoRequest *)v5 initWithRequestID:v6 requestIndex:v7 contextType:v8 managerID:v9 asset:v10 displaySpec:0 behaviorSpec:v4 delegate:self];
    onDemandRenderRequest = self->_onDemandRenderRequest;
    self->_onDemandRenderRequest = v11;

    onDemandRenderProgress = self->_onDemandRenderProgress;
    v14 = [(PHMediaRequest *)self->_onDemandRenderRequest identifierString];
    [(PHMediaRequestContext *)self setProgress:onDemandRenderProgress forRequestIdentifier:v14];

    v15 = [v3 arrayByAddingObject:self->_onDemandRenderRequest];

    v3 = v15;
  }

  return v3;
}

- (PHLiveRenderEditingInputRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 useRAWAsUnadjustedBase:(BOOL)a7 resultHandler:(id)a8
{
  v8 = a7;
  v12 = *&a3;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  [v15 setForceReturnFullLivePhoto:1];
  v19.receiver = self;
  v19.super_class = PHLiveRenderEditingInputRequestContext;
  v17 = [(PHContentEditingInputRequestContext *)&v19 initWithRequestID:v12 managerID:a4 asset:v16 options:v15 useRAWAsUnadjustedBase:v8 resultHandler:v14];

  if (v17)
  {
    v17->_renderLock._os_unfair_lock_opaque = 0;
  }

  return v17;
}

+ (id)videoLiveRenderContextWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 targetSize:(CGSize)a7 contentMode:(int64_t)a8 renderedVideoHandler:(id)a9
{
  height = a7.height;
  width = a7.width;
  v16 = *&a3;
  v18 = a6;
  v19 = a9;
  v20 = a5;
  v21 = objc_alloc_init(PHContentEditingInputRequestOptions);
  [(PHContentEditingInputRequestOptions *)v21 setCanHandleAdjustmentData:&__block_literal_global_38272];
  v22 = [v18 renderResultHandlerQueue];
  [(PHContentEditingInputRequestOptions *)v21 setResultHandlerQueue:v22];

  -[PHContentEditingInputRequestOptions setNetworkAccessAllowed:](v21, "setNetworkAccessAllowed:", [v18 isNetworkAccessAllowed]);
  [(PHContentEditingInputRequestOptions *)v21 setTargetSize:width, height];
  [(PHContentEditingInputRequestOptions *)v21 setContentMode:a8];
  v23 = [[a1 alloc] initWithRequestID:v16 managerID:a4 asset:v20 options:v21 useRAWAsUnadjustedBase:0 resultHandler:0];

  v24 = _Block_copy(v19);
  v25 = *(v23 + 304);
  *(v23 + 304) = v24;

  objc_storeStrong((v23 + 312), a6);
  if ([v18 liveRenderAndOnDemandRenderVideoConcurrently])
  {
    v26 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    v27 = *(v23 + 328);
    *(v23 + 328) = v26;
  }

  return v23;
}

@end