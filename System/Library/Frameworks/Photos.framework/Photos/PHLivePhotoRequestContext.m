@interface PHLivePhotoRequestContext
- (BOOL)shouldReportProgress;
- (PHLivePhotoRequestContext)init;
- (PHLivePhotoRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 displaySpec:(id)a6 options:(id)a7 resultHandler:(id)a8;
- (id)_lazyImageProgress;
- (id)_lazyVideoProgress;
- (id)initialRequests;
- (id)produceChildRequestsForRequest:(id)a3 reportingIsLocallyAvailable:(BOOL)a4 isDegraded:(BOOL)a5 result:(id)a6;
- (id)progresses;
- (void)processMediaResult:(id)a3 forRequest:(id)a4;
@end

@implementation PHLivePhotoRequestContext

- (void)processMediaResult:(id)a3 forRequest:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->super._resultHandler)
  {
    goto LABEL_20;
  }

  if (self->_videoRequest == v7)
  {
    [(PHLivePhotoResult *)self->_livePhotoResult addVideoResult:v6];
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

  if (self->_highQualityImageRequest == v7)
  {
    [(PHLivePhotoResult *)self->_livePhotoResult addImageResult:v6];
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

  v9 = [(PHLivePhotoRequestOptions *)self->_livePhotoOptions deliveryMode];
  if (v9 == PHImageRequestOptionsDeliveryModeFastFormat)
  {
    [(PHLivePhotoResult *)self->_livePhotoResult addImageResult:v6];
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

  if (v9 == PHImageRequestOptionsDeliveryModeOpportunistic && !self->_imagePartCompleted)
  {
    if (v6 && [v6 imageRef])
    {
      os_unfair_lock_lock(&self->_lock);
      if (!self->_imagePartCompleted)
      {
        os_unfair_lock_unlock(&self->_lock);
LABEL_26:
        v18 = [(PHCompositeMediaResult *)[PHLivePhotoResult alloc] initWithRequestID:[(PHMediaRequest *)v8 requestID]];
        [(PHLivePhotoResult *)v18 addImageResult:v6];
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
        v15 = [(PHMediaRequest *)v8 identifierString];
        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEBUG, "[RM]: %@ opportunistic early-stage request returned no image", buf, 0xCu);
      }

      if (PHImageManagerRecordEnabled())
      {
        v16 = [(PHMediaRequest *)v8 requestID];
        v17 = [(PHMediaRequest *)v8 identifierString];
        [PHImageManagerRequestTracer traceMessageForRequestID:v16 message:@"[RM]: %@ opportunistic early-stage request returned no image", v17];
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
    v3 = [(PHLivePhotoRequestOptions *)self->_livePhotoOptions deliveryMode];
    v4 = [(PHLivePhotoRequestContext *)self _lazyImageProgress];
    v5 = v4;
    if (v3 == PHImageRequestOptionsDeliveryModeFastFormat)
    {
      v9 = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    }

    else
    {
      v10[0] = v4;
      v7 = [(PHLivePhotoRequestContext *)self _lazyVideoProgress];
      v10[1] = v7;
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
  v3 = [(PHMediaRequestContext *)&v5 shouldReportProgress];
  if (v3)
  {
    LOBYTE(v3) = [(PHLivePhotoRequestOptions *)self->_livePhotoOptions isNetworkAccessAllowed];
  }

  return v3;
}

- (id)produceChildRequestsForRequest:(id)a3 reportingIsLocallyAvailable:(BOOL)a4 isDegraded:(BOOL)a5 result:(id)a6
{
  v6 = a5;
  v7 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ([(PHLivePhotoRequestOptions *)self->_livePhotoOptions deliveryMode])
  {
    goto LABEL_7;
  }

  fastImageRequest = self->_fastImageRequest;
  if (fastImageRequest != v9 || self->_highQualityImageRequest)
  {
    goto LABEL_7;
  }

  if (v7 && !v6)
  {
    objc_storeStrong(&self->_highQualityImageRequest, fastImageRequest);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v13 = PLImageManagerGetLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v14)
    {
      v15 = [(PHMediaRequest *)v9 identifierString];
      *buf = 138412290;
      v36 = v15;
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
      v17 = [(PHMediaRequest *)v9 identifierString];
      *buf = 138412290;
      v36 = v17;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "[RM]: %@ no local image for opp. request, kick off request for best image", buf, 0xCu);
    }

    if (!PHImageManagerRecordEnabled())
    {
      goto LABEL_19;
    }

    v16 = @"[RM]: %@ no local image for opp. request, kick off request for best image";
  }

  v30 = [(PHMediaRequest *)v9 requestID];
  v31 = [(PHMediaRequest *)v9 identifierString];
  [PHImageManagerRequestTracer traceMessageForRequestID:v30 message:v16, v31];

LABEL_19:
  v18 = [(PHImageRequest *)self->_fastImageRequest behaviorSpec];
  v19 = [PHImageRequestBehaviorSpec livePhotoRequestBestBehaviorSpecWithPreviousBehaviorSpec:v18 options:self->_livePhotoOptions];

  v33 = [PHImageRequest alloc];
  v32 = [(PHMediaRequestContext *)self requestID];
  v20 = [(PHMediaRequestContext *)self nextRequestIndex];
  v21 = [(PHLivePhotoRequestContext *)self type];
  v22 = [(PHMediaRequestContext *)self managerID];
  v23 = [(PHMediaRequestContext *)self asset];
  v24 = [(PHMediaRequestContext *)self displaySpec];
  v25 = [(PHMediaRequestContext *)self imageResourceChooser];
  v26 = [(PHImageRequest *)v33 initWithRequestID:v32 requestIndex:v20 contextType:v21 managerID:v22 asset:v23 displaySpec:v24 behaviorSpec:v19 chooser:v25 delegate:self];
  highQualityImageRequest = self->_highQualityImageRequest;
  self->_highQualityImageRequest = v26;

  v28 = [(PHLivePhotoRequestContext *)self _lazyImageProgress];
  v29 = [(PHMediaRequest *)self->_highQualityImageRequest identifierString];
  [(PHMediaRequestContext *)self setProgress:v28 forRequestIdentifier:v29];

  v34 = self->_highQualityImageRequest;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

LABEL_8:

  return v11;
}

- (id)initialRequests
{
  v35 = [(PHLivePhotoRequestOptions *)self->_livePhotoOptions deliveryMode];
  v3 = [(PHLivePhotoRequestContext *)self livePhotoOptions];
  v4 = [(PHMediaRequestContext *)self asset];
  v5 = [PHImageRequestBehaviorSpec livePhotoRequestInitialBehaviorSpecWithLivePhotoRequestOptions:v3 asset:v4];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v36 = v5;
  if (self->_includeImage)
  {
    v33 = [PHImageRequest alloc];
    v32 = [(PHMediaRequestContext *)self requestID];
    v7 = [(PHMediaRequestContext *)self nextRequestIndex];
    v8 = [(PHLivePhotoRequestContext *)self type];
    v9 = [(PHMediaRequestContext *)self managerID];
    v10 = [(PHMediaRequestContext *)self asset];
    [(PHMediaRequestContext *)self displaySpec];
    v12 = v11 = v5;
    v13 = [(PHMediaRequestContext *)self imageResourceChooser];
    v14 = [(PHImageRequest *)v33 initWithRequestID:v32 requestIndex:v7 contextType:v8 managerID:v9 asset:v10 displaySpec:v12 behaviorSpec:v11 chooser:v13 delegate:self];

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
    v17 = [(PHMediaRequestContext *)self requestID];
    v18 = [(PHMediaRequestContext *)self nextRequestIndex];
    v19 = [(PHLivePhotoRequestContext *)self type];
    v20 = [(PHMediaRequestContext *)self managerID];
    v21 = [(PHMediaRequestContext *)self asset];
    [(PHMediaRequestContext *)self displaySpec];
    v22 = v34 = v14;
    v23 = [(PHVideoRequest *)v16 initWithRequestID:v17 requestIndex:v18 contextType:v19 managerID:v20 asset:v21 displaySpec:v22 behaviorSpec:v15 delegate:self];
    videoRequest = self->_videoRequest;
    self->_videoRequest = v23;

    [v6 addObject:self->_videoRequest];
    v25 = [(PHLivePhotoRequestContext *)self _lazyVideoProgress];
    v26 = [(PHMediaRequest *)self->_videoRequest identifierString];
    [(PHMediaRequestContext *)self setProgress:v25 forRequestIdentifier:v26];

    v14 = v34;
  }

  else
  {
    self->_videoPartCompleted = 1;
  }

  if (v14)
  {
    if (v35 != PHImageRequestOptionsDeliveryModeFastFormat)
    {
      if (v35 == PHImageRequestOptionsDeliveryModeHighQualityFormat)
      {
        objc_storeStrong(&self->_highQualityImageRequest, v14);
        fastImageRequest = [(PHLivePhotoRequestContext *)self _lazyImageProgress];
        v29 = [(PHMediaRequest *)v14 identifierString];
        [(PHMediaRequestContext *)self setProgress:fastImageRequest forRequestIdentifier:v29];

        goto LABEL_13;
      }

      if (v35)
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PHLivePhotoRequestContext.m" lineNumber:51 description:@"Unavailable initializer"];

  return 0;
}

- (PHLivePhotoRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 displaySpec:(id)a6 options:(id)a7 resultHandler:(id)a8
{
  v13 = *&a3;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = PHLivePhotoRequestContext;
  v16 = [(PHMediaRequestContext *)&v22 initWithRequestID:v13 managerID:a4 asset:a5 displaySpec:a6 resultHandler:a8];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_livePhotoOptions, a7);
    v18 = [(PHCompositeMediaResult *)[PHLivePhotoResult alloc] initWithRequestID:v13];
    livePhotoResult = v17->_livePhotoResult;
    v17->_livePhotoResult = v18;

    if (v15)
    {
      v20 = [v15 includeImage];
    }

    else
    {
      v20 = 1;
    }

    v17->_includeImage = v20;
    [(PHLivePhotoResult *)v17->_livePhotoResult setRequiresImageResult:?];
    v17->_lock._os_unfair_lock_opaque = 0;
  }

  return v17;
}

@end