@interface PHVideoRequestContext
- (PHVideoRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec options:(id)options intent:(int64_t)intent resultHandler:(id)handler;
- (id)_lazyProgress;
- (id)initialRequests;
- (id)progresses;
- (void)processMediaResult:(id)result forRequest:(id)request;
@end

@implementation PHVideoRequestContext

- (void)processMediaResult:(id)result forRequest:(id)request
{
  v27 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  requestCopy = request;
  v8 = PLImageManagerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    identifierString = [requestCopy identifierString];
    videoURL = [resultCopy videoURL];
    if ([resultCopy isCancelled])
    {
      v11 = @"Y";
    }

    else
    {
      v11 = @"N";
    }

    info = [resultCopy info];
    *buf = 138413058;
    v20 = identifierString;
    v21 = 2112;
    v22 = videoURL;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = info;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "[RM]: %@ finished with video URL: %@, cancelled: %@, info: %@", buf, 0x2Au);
  }

  if (PHImageManagerRecordEnabled())
  {
    requestID = [requestCopy requestID];
    identifierString2 = [requestCopy identifierString];
    videoURL2 = [resultCopy videoURL];
    if ([resultCopy isCancelled])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    info2 = [resultCopy info];
    [PHImageManagerRequestTracer traceMessageForRequestID:requestID message:@"[RM]: %@ finished with video URL: %@, cancelled: %@, info: %@", identifierString2, videoURL2, v17, info2];
  }

  resultHandler = self->super._resultHandler;
  if (resultHandler)
  {
    resultHandler[2](resultHandler, resultCopy, requestCopy, self);
  }
}

- (id)progresses
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PHMediaRequestContext *)self shouldReportProgress])
  {
    _lazyProgress = [(PHVideoRequestContext *)self _lazyProgress];
    v6[0] = _lazyProgress;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)initialRequests
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PHVideoRequestBehaviorSpec);
  [(PHVideoRequestBehaviorSpec *)v3 setNetworkAccessAllowed:[(PHVideoRequestOptions *)self->_videoOptions isNetworkAccessAllowed]];
  [(PHVideoRequestBehaviorSpec *)v3 setDeliveryMode:[(PHVideoRequestOptions *)self->_videoOptions deliveryMode]];
  [(PHVideoRequestBehaviorSpec *)v3 setVersion:[(PHVideoRequestOptions *)self->_videoOptions version]];
  [(PHVideoRequestBehaviorSpec *)v3 setStreamingAllowed:[(PHVideoRequestOptions *)self->_videoOptions isStreamingAllowed]];
  [(PHVideoRequestBehaviorSpec *)v3 setStreamingVideoIntent:[(PHVideoRequestOptions *)self->_videoOptions streamingVideoIntent]];
  [(PHVideoRequestBehaviorSpec *)v3 setVideoComplementAllowed:[(PHVideoRequestOptions *)self->_videoOptions isVideoComplementAllowed]];
  [(PHVideoRequestBehaviorSpec *)v3 setMediumHighQualityAllowed:[(PHVideoRequestOptions *)self->_videoOptions isMediumHighQualityAllowed]];
  [(PHVideoRequestBehaviorSpec *)v3 setRestrictToPlayableOnCurrentDevice:[(PHVideoRequestOptions *)self->_videoOptions restrictToPlayableOnCurrentDevice]];
  [(PHVideoRequestBehaviorSpec *)v3 setRestrictToStreamable:[(PHVideoRequestOptions *)self->_videoOptions restrictToStreamable]];
  [(PHVideoRequestBehaviorSpec *)v3 setRestrictToEncryptedStream:[(PHVideoRequestOptions *)self->_videoOptions restrictToEncryptedStream]];
  [(PHVideoRequestBehaviorSpec *)v3 setDownloadIntent:[(PHVideoRequestOptions *)self->_videoOptions downloadIntent]];
  [(PHVideoRequestBehaviorSpec *)v3 setDownloadPriority:[(PHVideoRequestOptions *)self->_videoOptions downloadPriority]];
  videoOptions = self->_videoOptions;
  if (videoOptions)
  {
    [(PHVideoRequestOptions *)videoOptions timeRange];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  [(PHVideoRequestBehaviorSpec *)v3 setTimeRange:v17];
  v5 = [PHVideoRequest alloc];
  requestID = [(PHMediaRequestContext *)self requestID];
  nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
  type = [(PHVideoRequestContext *)self type];
  managerID = [(PHMediaRequestContext *)self managerID];
  asset = [(PHMediaRequestContext *)self asset];
  displaySpec = [(PHMediaRequestContext *)self displaySpec];
  v12 = [(PHVideoRequest *)v5 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset displaySpec:displaySpec behaviorSpec:v3 delegate:self];

  _lazyProgress = [(PHVideoRequestContext *)self _lazyProgress];
  identifierString = [(PHMediaRequest *)v12 identifierString];
  [(PHMediaRequestContext *)self setProgress:_lazyProgress forRequestIdentifier:identifierString];

  v18[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  return v15;
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

- (PHVideoRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec options:(id)options intent:(int64_t)intent resultHandler:(id)handler
{
  v14 = *&d;
  v28 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v25.receiver = self;
  v25.super_class = PHVideoRequestContext;
  v17 = [(PHMediaRequestContext *)&v25 initWithRequestID:v14 managerID:iD asset:asset displaySpec:spec resultHandler:handler];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_videoOptions, options);
    v18->_intent = intent;
    if ([(PHVideoRequestOptions *)v18->_videoOptions version]&& [(PHVideoRequestOptions *)v18->_videoOptions deliveryMode])
    {
      v19 = PLImageManagerGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Video request delivery mode is only applicable for current version requests", buf, 2u);
      }
    }

    v24 = 0;
    v20 = [optionsCopy isValidConfigurationWithError:&v24];
    v21 = v24;
    if ((v20 & 1) == 0)
    {
      v22 = PLImageManagerGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v21;
        _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Invalid options configuration for video request: %@", buf, 0xCu);
      }
    }
  }

  return v18;
}

@end