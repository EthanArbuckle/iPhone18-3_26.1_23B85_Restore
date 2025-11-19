@interface PHVideoRequestContext
- (PHVideoRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 displaySpec:(id)a6 options:(id)a7 intent:(int64_t)a8 resultHandler:(id)a9;
- (id)_lazyProgress;
- (id)initialRequests;
- (id)progresses;
- (void)processMediaResult:(id)a3 forRequest:(id)a4;
@end

@implementation PHVideoRequestContext

- (void)processMediaResult:(id)a3 forRequest:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLImageManagerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v7 identifierString];
    v10 = [v6 videoURL];
    if ([v6 isCancelled])
    {
      v11 = @"Y";
    }

    else
    {
      v11 = @"N";
    }

    v12 = [v6 info];
    *buf = 138413058;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "[RM]: %@ finished with video URL: %@, cancelled: %@, info: %@", buf, 0x2Au);
  }

  if (PHImageManagerRecordEnabled())
  {
    v14 = [v7 requestID];
    v15 = [v7 identifierString];
    v16 = [v6 videoURL];
    if ([v6 isCancelled])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    v18 = [v6 info];
    [PHImageManagerRequestTracer traceMessageForRequestID:v14 message:@"[RM]: %@ finished with video URL: %@, cancelled: %@, info: %@", v15, v16, v17, v18];
  }

  resultHandler = self->super._resultHandler;
  if (resultHandler)
  {
    resultHandler[2](resultHandler, v6, v7, self);
  }
}

- (id)progresses
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PHMediaRequestContext *)self shouldReportProgress])
  {
    v3 = [(PHVideoRequestContext *)self _lazyProgress];
    v6[0] = v3;
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
  v6 = [(PHMediaRequestContext *)self requestID];
  v7 = [(PHMediaRequestContext *)self nextRequestIndex];
  v8 = [(PHVideoRequestContext *)self type];
  v9 = [(PHMediaRequestContext *)self managerID];
  v10 = [(PHMediaRequestContext *)self asset];
  v11 = [(PHMediaRequestContext *)self displaySpec];
  v12 = [(PHVideoRequest *)v5 initWithRequestID:v6 requestIndex:v7 contextType:v8 managerID:v9 asset:v10 displaySpec:v11 behaviorSpec:v3 delegate:self];

  v13 = [(PHVideoRequestContext *)self _lazyProgress];
  v14 = [(PHMediaRequest *)v12 identifierString];
  [(PHMediaRequestContext *)self setProgress:v13 forRequestIdentifier:v14];

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

- (PHVideoRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 displaySpec:(id)a6 options:(id)a7 intent:(int64_t)a8 resultHandler:(id)a9
{
  v14 = *&a3;
  v28 = *MEMORY[0x1E69E9840];
  v16 = a7;
  v25.receiver = self;
  v25.super_class = PHVideoRequestContext;
  v17 = [(PHMediaRequestContext *)&v25 initWithRequestID:v14 managerID:a4 asset:a5 displaySpec:a6 resultHandler:a9];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_videoOptions, a7);
    v18->_intent = a8;
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
    v20 = [v16 isValidConfigurationWithError:&v24];
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