@interface PHLivePhotoRequestContext
- (BOOL)shouldReportProgress;
- (PHLivePhotoRequestContext)init;
- (PHLivePhotoRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec options:(id)options resultHandler:(id)handler;
- (id)_lazyImageProgress;
- (id)_lazyVideoProgress;
- (id)initialRequests;
- (id)produceChildRequestsForRequest:(id)request reportingIsLocallyAvailable:(BOOL)available isDegraded:(BOOL)degraded result:(id)result;
- (id)progresses;
- (void)processMediaResult:(id)result forRequest:(id)request;
@end

@implementation PHLivePhotoRequestContext

- (void)processMediaResult:(id)result forRequest:(id)request
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  requestCopy = request;
  v8 = requestCopy;
  if (!self->super._resultHandler)
  {
    goto LABEL_20;
  }

  if (self->_videoRequest == requestCopy)
  {
    [(PHLivePhotoResult *)self->_livePhotoResult addVideoResult:resultCopy];
    os_unfair_lock_lock(&self->_lock);
    self->_videoPartCompleted = 1;
    if (self->_imagePartCompleted)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      includeImage = self->_includeImage;
      os_unfair_lock_unlock(&self->_lock);
      if (includeImage)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (self->_highQualityImageRequest == requestCopy)
  {
    [(PHLivePhotoResult *)self->_livePhotoResult addImageResult:resultCopy];
    os_unfair_lock_lock(&self->_lock);
    self->_imagePartCompleted = 1;
    videoPartCompleted = self->_videoPartCompleted;
    os_unfair_lock_unlock(&self->_lock);
    if (!videoPartCompleted)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  deliveryMode = [(PHLivePhotoRequestOptions *)self->_livePhotoOptions deliveryMode];
  if (deliveryMode == PHImageRequestOptionsDeliveryModeFastFormat)
  {
    [(PHLivePhotoResult *)self->_livePhotoResult addImageResult:resultCopy];
    [(PHLivePhotoResult *)self->_livePhotoResult setDegraded:1];
    os_unfair_lock_lock(&self->_lock);
    self->_imagePartCompleted = 1;
    v13 = self->_videoPartCompleted;
    os_unfair_lock_unlock(&self->_lock);
    if (!v13)
    {
      goto LABEL_20;
    }

LABEL_19:
    (*(self->super._resultHandler + 2))();
    goto LABEL_20;
  }

  if (deliveryMode == PHImageRequestOptionsDeliveryModeOpportunistic && !self->_imagePartCompleted)
  {
    if (resultCopy && [resultCopy imageRef])
    {
      os_unfair_lock_lock(&self->_lock);
      if (!self->_imagePartCompleted)
      {
        os_unfair_lock_unlock(&self->_lock);
LABEL_26:
        v18 = [(PHCompositeMediaResult *)[PHLivePhotoResult alloc] initWithRequestID:[(PHMediaRequest *)v8 requestID]];
        [(PHLivePhotoResult *)v18 addImageResult:resultCopy];
        [(PHLivePhotoResult *)v18 setDegraded:1];
        (*(self->super._resultHandler + 2))();

        goto LABEL_20;
      }

      v10 = self->_videoPartCompleted;
      os_unfair_lock_unlock(&self->_lock);
      if (!v10)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v14 = PLImageManagerGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        identifierString = [(PHMediaRequest *)v8 identifierString];
        *buf = 138412290;
        v20 = identifierString;
        _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEBUG, "[RM]: %@ opportunistic early-stage request returned no image", buf, 0xCu);
      }

      if (PHImageManagerRecordEnabled())
      {
        requestID = [(PHMediaRequest *)v8 requestID];
        identifierString2 = [(PHMediaRequest *)v8 identifierString];
        [PHImageManagerRequestTracer traceMessageForRequestID:requestID message:@"[RM]: %@ opportunistic early-stage request returned no image", identifierString2];
      }
    }
  }

LABEL_20:
}

- (id)progresses
{
  v10[2] = *MEMORY[0x1E69E9840];
  if ([(PHLivePhotoRequestContext *)self shouldReportProgress])
  {
    deliveryMode = [(PHLivePhotoRequestOptions *)self->_livePhotoOptions deliveryMode];
    _lazyImageProgress = [(PHLivePhotoRequestContext *)self _lazyImageProgress];
    v5 = _lazyImageProgress;
    if (deliveryMode == PHImageRequestOptionsDeliveryModeFastFormat)
    {
      v9 = _lazyImageProgress;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    }

    else
    {
      v10[0] = _lazyImageProgress;
      _lazyVideoProgress = [(PHLivePhotoRequestContext *)self _lazyVideoProgress];
      v10[1] = _lazyVideoProgress;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldReportProgress
{
  v5.receiver = self;
  v5.super_class = PHLivePhotoRequestContext;
  shouldReportProgress = [(PHMediaRequestContext *)&v5 shouldReportProgress];
  if (shouldReportProgress)
  {
    LOBYTE(shouldReportProgress) = [(PHLivePhotoRequestOptions *)self->_livePhotoOptions isNetworkAccessAllowed];
  }

  return shouldReportProgress;
}

- (id)produceChildRequestsForRequest:(id)request reportingIsLocallyAvailable:(BOOL)available isDegraded:(BOOL)degraded result:(id)result
{
  degradedCopy = degraded;
  availableCopy = available;
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([(PHLivePhotoRequestOptions *)self->_livePhotoOptions deliveryMode])
  {
    goto LABEL_7;
  }

  fastImageRequest = self->_fastImageRequest;
  if (fastImageRequest != requestCopy || self->_highQualityImageRequest)
  {
    goto LABEL_7;
  }

  if (availableCopy && !degradedCopy)
  {
    objc_storeStrong(&self->_highQualityImageRequest, fastImageRequest);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v13 = PLImageManagerGetLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (degradedCopy)
  {
    if (v14)
    {
      identifierString = [(PHMediaRequest *)requestCopy identifierString];
      *buf = 138412290;
      v36 = identifierString;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "[RM]: %@ found degraded result for opp. request, kick off request for best image", buf, 0xCu);
    }

    if ((PHImageManagerRecordEnabled() & 1) == 0)
    {
      goto LABEL_19;
    }

    v16 = @"[RM]: %@ found degraded result for opp. request, kick off request for best image";
  }

  else
  {
    if (v14)
    {
      identifierString2 = [(PHMediaRequest *)requestCopy identifierString];
      *buf = 138412290;
      v36 = identifierString2;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "[RM]: %@ no local image for opp. request, kick off request for best image", buf, 0xCu);
    }

    if (!PHImageManagerRecordEnabled())
    {
      goto LABEL_19;
    }

    v16 = @"[RM]: %@ no local image for opp. request, kick off request for best image";
  }

  requestID = [(PHMediaRequest *)requestCopy requestID];
  identifierString3 = [(PHMediaRequest *)requestCopy identifierString];
  [PHImageManagerRequestTracer traceMessageForRequestID:requestID message:v16, identifierString3];

LABEL_19:
  behaviorSpec = [(PHImageRequest *)self->_fastImageRequest behaviorSpec];
  v19 = [PHImageRequestBehaviorSpec livePhotoRequestBestBehaviorSpecWithPreviousBehaviorSpec:behaviorSpec options:self->_livePhotoOptions];

  v33 = [PHImageRequest alloc];
  requestID2 = [(PHMediaRequestContext *)self requestID];
  nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
  type = [(PHLivePhotoRequestContext *)self type];
  managerID = [(PHMediaRequestContext *)self managerID];
  asset = [(PHMediaRequestContext *)self asset];
  displaySpec = [(PHMediaRequestContext *)self displaySpec];
  imageResourceChooser = [(PHMediaRequestContext *)self imageResourceChooser];
  v26 = [(PHImageRequest *)v33 initWithRequestID:requestID2 requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset displaySpec:displaySpec behaviorSpec:v19 chooser:imageResourceChooser delegate:self];
  highQualityImageRequest = self->_highQualityImageRequest;
  self->_highQualityImageRequest = v26;

  _lazyImageProgress = [(PHLivePhotoRequestContext *)self _lazyImageProgress];
  identifierString4 = [(PHMediaRequest *)self->_highQualityImageRequest identifierString];
  [(PHMediaRequestContext *)self setProgress:_lazyImageProgress forRequestIdentifier:identifierString4];

  v34 = self->_highQualityImageRequest;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

LABEL_8:

  return v11;
}

- (id)initialRequests
{
  deliveryMode = [(PHLivePhotoRequestOptions *)self->_livePhotoOptions deliveryMode];
  livePhotoOptions = [(PHLivePhotoRequestContext *)self livePhotoOptions];
  asset = [(PHMediaRequestContext *)self asset];
  v5 = [PHImageRequestBehaviorSpec livePhotoRequestInitialBehaviorSpecWithLivePhotoRequestOptions:livePhotoOptions asset:asset];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v36 = v5;
  if (self->_includeImage)
  {
    v33 = [PHImageRequest alloc];
    requestID = [(PHMediaRequestContext *)self requestID];
    nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
    type = [(PHLivePhotoRequestContext *)self type];
    managerID = [(PHMediaRequestContext *)self managerID];
    asset2 = [(PHMediaRequestContext *)self asset];
    [(PHMediaRequestContext *)self displaySpec];
    v12 = v11 = v5;
    imageResourceChooser = [(PHMediaRequestContext *)self imageResourceChooser];
    v14 = [(PHImageRequest *)v33 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset2 displaySpec:v12 behaviorSpec:v11 chooser:imageResourceChooser delegate:self];

    [v6 addObject:v14];
  }

  else
  {
    v14 = 0;
  }

  if ([(PHLivePhotoRequestContext *)self _shouldRequestVideo])
  {
    v15 = objc_alloc_init(PHVideoRequestBehaviorSpec);
    [(PHVideoRequestBehaviorSpec *)v15 setNetworkAccessAllowed:[(PHLivePhotoRequestOptions *)self->_livePhotoOptions isNetworkAccessAllowed]];
    [(PHVideoRequestBehaviorSpec *)v15 setDeliveryMode:0];
    [(PHVideoRequestBehaviorSpec *)v15 setDownloadIntent:[(PHLivePhotoRequestOptions *)self->_livePhotoOptions downloadIntent]];
    [(PHVideoRequestBehaviorSpec *)v15 setDownloadPriority:[(PHLivePhotoRequestOptions *)self->_livePhotoOptions downloadPriority]];
    v16 = [PHVideoRequest alloc];
    requestID2 = [(PHMediaRequestContext *)self requestID];
    nextRequestIndex2 = [(PHMediaRequestContext *)self nextRequestIndex];
    type2 = [(PHLivePhotoRequestContext *)self type];
    managerID2 = [(PHMediaRequestContext *)self managerID];
    asset3 = [(PHMediaRequestContext *)self asset];
    [(PHMediaRequestContext *)self displaySpec];
    v22 = v34 = v14;
    v23 = [(PHVideoRequest *)v16 initWithRequestID:requestID2 requestIndex:nextRequestIndex2 contextType:type2 managerID:managerID2 asset:asset3 displaySpec:v22 behaviorSpec:v15 delegate:self];
    videoRequest = self->_videoRequest;
    self->_videoRequest = v23;

    [v6 addObject:self->_videoRequest];
    _lazyVideoProgress = [(PHLivePhotoRequestContext *)self _lazyVideoProgress];
    identifierString = [(PHMediaRequest *)self->_videoRequest identifierString];
    [(PHMediaRequestContext *)self setProgress:_lazyVideoProgress forRequestIdentifier:identifierString];

    v14 = v34;
  }

  else
  {
    self->_videoPartCompleted = 1;
  }

  if (v14)
  {
    if (deliveryMode != PHImageRequestOptionsDeliveryModeFastFormat)
    {
      if (deliveryMode == PHImageRequestOptionsDeliveryModeHighQualityFormat)
      {
        objc_storeStrong(&self->_highQualityImageRequest, v14);
        fastImageRequest = [(PHLivePhotoRequestContext *)self _lazyImageProgress];
        identifierString2 = [(PHMediaRequest *)v14 identifierString];
        [(PHMediaRequestContext *)self setProgress:fastImageRequest forRequestIdentifier:identifierString2];

        goto LABEL_13;
      }

      if (deliveryMode)
      {
        goto LABEL_14;
      }
    }

    v27 = v14;
    fastImageRequest = self->_fastImageRequest;
    self->_fastImageRequest = v27;
LABEL_13:
  }

LABEL_14:
  v30 = [v6 copy];

  return v30;
}

- (id)_lazyVideoProgress
{
  if (!self->_videoProgress && [(PHLivePhotoRequestContext *)self shouldReportProgress])
  {
    v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:150];
    videoProgress = self->_videoProgress;
    self->_videoProgress = v3;
  }

  v5 = self->_videoProgress;

  return v5;
}

- (id)_lazyImageProgress
{
  if (!self->_imageProgress && [(PHLivePhotoRequestContext *)self shouldReportProgress])
  {
    v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    imageProgress = self->_imageProgress;
    self->_imageProgress = v3;
  }

  v5 = self->_imageProgress;

  return v5;
}

- (PHLivePhotoRequestContext)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHLivePhotoRequestContext.m" lineNumber:51 description:@"Unavailable initializer"];

  return 0;
}

- (PHLivePhotoRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec options:(id)options resultHandler:(id)handler
{
  v13 = *&d;
  optionsCopy = options;
  v22.receiver = self;
  v22.super_class = PHLivePhotoRequestContext;
  v16 = [(PHMediaRequestContext *)&v22 initWithRequestID:v13 managerID:iD asset:asset displaySpec:spec resultHandler:handler];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_livePhotoOptions, options);
    v18 = [(PHCompositeMediaResult *)[PHLivePhotoResult alloc] initWithRequestID:v13];
    livePhotoResult = v17->_livePhotoResult;
    v17->_livePhotoResult = v18;

    if (optionsCopy)
    {
      includeImage = [optionsCopy includeImage];
    }

    else
    {
      includeImage = 1;
    }

    v17->_includeImage = includeImage;
    [(PHLivePhotoResult *)v17->_livePhotoResult setRequiresImageResult:?];
    v17->_lock._os_unfair_lock_opaque = 0;
  }

  return v17;
}

@end