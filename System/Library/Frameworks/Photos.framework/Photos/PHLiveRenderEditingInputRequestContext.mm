@interface PHLiveRenderEditingInputRequestContext
+ (id)videoLiveRenderContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options targetSize:(CGSize)size contentMode:(int64_t)mode renderedVideoHandler:(id)handler;
- (PHLiveRenderEditingInputRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options useRAWAsUnadjustedBase:(BOOL)base resultHandler:(id)handler;
- (id)initialRequests;
- (id)produceChildRequestsForRequest:(id)request reportingIsLocallyAvailable:(BOOL)available isDegraded:(BOOL)degraded result:(id)result;
- (id)progresses;
- (void)_handleRenderVideoFinishedWithRequest:(id)request avAsset:(id)asset videoComposition:(id)composition audioMix:(id)mix error:(id)error mutableInfo:(id)info;
- (void)cancel;
- (void)processAndReturnResultsWithRequest:(id)request;
- (void)processMediaResult:(id)result forRequest:(id)request;
@end

@implementation PHLiveRenderEditingInputRequestContext

- (void)processAndReturnResultsWithRequest:(id)request
{
  v54 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v45.receiver = self;
  v45.super_class = PHLiveRenderEditingInputRequestContext;
  [(PHContentEditingInputRequestContext *)&v45 processAndReturnResultsWithRequest:requestCopy];
  info = [(PHCompositeMediaResult *)self->super._contentEditingInputResult info];
  v6 = [info mutableCopy];

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
    isCancelled = [(PHMediaRequestContext *)self isCancelled];
    v29 = PLImageManagerGetLog();
    v30 = v29;
    if (isCancelled)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        identifierString = [requestCopy identifierString];
        *buf = 138412290;
        v47 = identifierString;
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEBUG, "%@ [LiveRender] - Request was cancelled, will not live render", buf, 0xCu);
      }

      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageCancelledKey"];
    }

    else
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        identifierString2 = [requestCopy identifierString];
        v33 = [v6 objectForKeyedSubscript:@"PHImageErrorKey"];
        *buf = 138412546;
        v47 = identifierString2;
        v48 = 2112;
        v49 = v33;
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "%@ Video URL unavailable, will not live render, error: %@", buf, 0x16u);
      }
    }

    (*(self->_renderedVideoHandler + 2))();
  }

  else
  {
    videoURL = [(PHContentEditingInputResult *)self->super._contentEditingInputResult videoURL];
    overCaptureVideoURL = [(PHContentEditingInputResult *)self->super._contentEditingInputResult overCaptureVideoURL];
    imageURL = [(PHContentEditingInputResult *)self->super._contentEditingInputResult imageURL];
    adjustmentData = [(PHContentEditingInputResult *)self->super._contentEditingInputResult adjustmentData];
    formatIdentifier = [adjustmentData formatIdentifier];
    formatVersion = [adjustmentData formatVersion];
    data = [adjustmentData data];
    v15 = PLImageManagerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      identifierString3 = [requestCopy identifierString];
      *buf = 138412802;
      v47 = identifierString3;
      v48 = 2112;
      v49 = videoURL;
      v50 = 2112;
      v51 = overCaptureVideoURL;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "%@ [LiveRender] - preparing live renderer for video at URL: %@, overcapture URL: %@", buf, 0x20u);
    }

    v17 = PLImageManagerGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      identifierString4 = [requestCopy identifierString];
      v19 = [data length];
      *buf = 138413058;
      v47 = identifierString4;
      v48 = 2048;
      v49 = v19;
      v50 = 2112;
      v51 = formatIdentifier;
      v52 = 2112;
      v53 = formatVersion;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "%@ [LiveRender] - adj data length: %ld, format id: %@, version: %@", buf, 0x2Au);
    }

    os_unfair_lock_lock(&self->_renderLock);
    v20 = [MEMORY[0x1E69BE658] rendererForVideoURL:videoURL livePhotoStillURL:imageURL adjustmentData:data formatIdentifier:formatIdentifier formatVersion:formatVersion];
    renderer = self->_renderer;
    self->_renderer = v20;

    os_unfair_lock_unlock(&self->_renderLock);
    if (self->_renderer)
    {
      objc_initWeak(buf, self);
      [(PHMediaRequestContext *)self beginCustomAsyncWorkWithIdentifier:@"renderVideoWithTargetSize"];
      options = [(PHContentEditingInputRequestContext *)self options];
      [options targetSize];
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
      v42 = requestCopy;
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
        identifierString5 = [requestCopy identifierString];
        *buf = 138412290;
        v47 = identifierString5;
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

- (void)_handleRenderVideoFinishedWithRequest:(id)request avAsset:(id)asset videoComposition:(id)composition audioMix:(id)mix error:(id)error mutableInfo:(id)info
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  assetCopy = asset;
  compositionCopy = composition;
  mixCopy = mix;
  errorCopy = error;
  infoCopy = info;
  [infoCopy setObject:errorCopy forKeyedSubscript:@"PHImageErrorKey"];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHMediaRequestContext isCancelled](self, "isCancelled")}];
  [infoCopy setObject:v20 forKeyedSubscript:@"PHImageCancelledKey"];

  v21 = PLImageManagerGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    identifierString = [requestCopy identifierString];
    v25 = 138412546;
    v26 = identifierString;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "%@ [LiveRender] - Live rendering video completed with error: %@", &v25, 0x16u);
  }

  if (!assetCopy)
  {
    v23 = PLImageManagerGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      videoURL = [(PHContentEditingInputResult *)self->super._contentEditingInputResult videoURL];
      v25 = 138412546;
      v26 = videoURL;
      v27 = 2112;
      v28 = errorCopy;
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
    progresses = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PHLiveRenderEditingInputRequestContext;
    progresses = [(PHContentEditingInputRequestContext *)&v5 progresses];
  }

  return progresses;
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

- (void)processMediaResult:(id)result forRequest:(id)request
{
  resultCopy = result;
  requestCopy = request;
  if ([(PHMediaRequestLiveRenderingOptions *)self->_liveRenderOptions liveRenderAndOnDemandRenderVideoConcurrently]&& self->_onDemandRenderRequest == requestCopy)
  {
    videoURL = [resultCopy videoURL];

    if (videoURL)
    {
      videoURL2 = [resultCopy videoURL];
      info = [resultCopy info];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __72__PHLiveRenderEditingInputRequestContext_processMediaResult_forRequest___block_invoke;
      v14[3] = &unk_1E75A9150;
      v15 = resultCopy;
      selfCopy = self;
      v17 = requestCopy;
      [PHImageManager buildAVAssetFromVideoURL:videoURL2 infoDictionary:info options:0 completion:v14];
    }

    else
    {
      renderedVideoHandler = self->_renderedVideoHandler;
      info2 = [resultCopy info];
      (*(renderedVideoHandler + 2))(renderedVideoHandler, 0, requestCopy, 0, 0, 0, info2);
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PHLiveRenderEditingInputRequestContext;
    [(PHContentEditingInputRequestContext *)&v13 processMediaResult:resultCopy forRequest:requestCopy];
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

- (id)produceChildRequestsForRequest:(id)request reportingIsLocallyAvailable:(BOOL)available isDegraded:(BOOL)degraded result:(id)result
{
  degradedCopy = degraded;
  availableCopy = available;
  requestCopy = request;
  resultCopy = result;
  if ([(PHMediaRequestLiveRenderingOptions *)self->_liveRenderOptions liveRenderAndOnDemandRenderVideoConcurrently]&& self->_onDemandRenderRequest == requestCopy)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PHLiveRenderEditingInputRequestContext;
    v12 = [(PHContentEditingInputRequestContext *)&v14 produceChildRequestsForRequest:requestCopy reportingIsLocallyAvailable:availableCopy isDegraded:degradedCopy result:resultCopy];
  }

  return v12;
}

- (id)initialRequests
{
  v17.receiver = self;
  v17.super_class = PHLiveRenderEditingInputRequestContext;
  initialRequests = [(PHContentEditingInputRequestContext *)&v17 initialRequests];
  if ([(PHMediaRequestLiveRenderingOptions *)self->_liveRenderOptions liveRenderAndOnDemandRenderVideoConcurrently])
  {
    v4 = objc_alloc_init(PHVideoRequestBehaviorSpec);
    [(PHVideoRequestBehaviorSpec *)v4 setDeliveryMode:1];
    [(PHVideoRequestBehaviorSpec *)v4 setVersion:0];
    v5 = [PHVideoRequest alloc];
    requestID = [(PHMediaRequestContext *)self requestID];
    nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
    type = [(PHContentEditingInputRequestContext *)self type];
    managerID = [(PHMediaRequestContext *)self managerID];
    asset = [(PHMediaRequestContext *)self asset];
    v11 = [(PHVideoRequest *)v5 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset displaySpec:0 behaviorSpec:v4 delegate:self];
    onDemandRenderRequest = self->_onDemandRenderRequest;
    self->_onDemandRenderRequest = v11;

    onDemandRenderProgress = self->_onDemandRenderProgress;
    identifierString = [(PHMediaRequest *)self->_onDemandRenderRequest identifierString];
    [(PHMediaRequestContext *)self setProgress:onDemandRenderProgress forRequestIdentifier:identifierString];

    v15 = [initialRequests arrayByAddingObject:self->_onDemandRenderRequest];

    initialRequests = v15;
  }

  return initialRequests;
}

- (PHLiveRenderEditingInputRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options useRAWAsUnadjustedBase:(BOOL)base resultHandler:(id)handler
{
  baseCopy = base;
  v12 = *&d;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  [optionsCopy setForceReturnFullLivePhoto:1];
  v19.receiver = self;
  v19.super_class = PHLiveRenderEditingInputRequestContext;
  v17 = [(PHContentEditingInputRequestContext *)&v19 initWithRequestID:v12 managerID:iD asset:assetCopy options:optionsCopy useRAWAsUnadjustedBase:baseCopy resultHandler:handlerCopy];

  if (v17)
  {
    v17->_renderLock._os_unfair_lock_opaque = 0;
  }

  return v17;
}

+ (id)videoLiveRenderContextWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options targetSize:(CGSize)size contentMode:(int64_t)mode renderedVideoHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v16 = *&d;
  optionsCopy = options;
  handlerCopy = handler;
  assetCopy = asset;
  v21 = objc_alloc_init(PHContentEditingInputRequestOptions);
  [(PHContentEditingInputRequestOptions *)v21 setCanHandleAdjustmentData:&__block_literal_global_38272];
  renderResultHandlerQueue = [optionsCopy renderResultHandlerQueue];
  [(PHContentEditingInputRequestOptions *)v21 setResultHandlerQueue:renderResultHandlerQueue];

  -[PHContentEditingInputRequestOptions setNetworkAccessAllowed:](v21, "setNetworkAccessAllowed:", [optionsCopy isNetworkAccessAllowed]);
  [(PHContentEditingInputRequestOptions *)v21 setTargetSize:width, height];
  [(PHContentEditingInputRequestOptions *)v21 setContentMode:mode];
  v23 = [[self alloc] initWithRequestID:v16 managerID:iD asset:assetCopy options:v21 useRAWAsUnadjustedBase:0 resultHandler:0];

  v24 = _Block_copy(handlerCopy);
  v25 = *(v23 + 304);
  *(v23 + 304) = v24;

  objc_storeStrong((v23 + 312), options);
  if ([optionsCopy liveRenderAndOnDemandRenderVideoConcurrently])
  {
    v26 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    v27 = *(v23 + 328);
    *(v23 + 328) = v26;
  }

  return v23;
}

@end