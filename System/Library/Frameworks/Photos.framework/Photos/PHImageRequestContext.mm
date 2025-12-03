@interface PHImageRequestContext
- (BOOL)_isVideoFrameRequest;
- (BOOL)representsShareableHighQualityResource;
- (BOOL)shouldReportProgress;
- (PHImageRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec options:(id)options resultHandler:(id)handler;
- (id)_lazyProgress;
- (id)_produceFinalImageRequestForRequest:(id)request;
- (id)_produceIntermediateImageRequestForRequest:(id)request;
- (id)_videoBehavior;
- (id)initialRequests;
- (id)produceChildRequestsForRequest:(id)request reportingIsLocallyAvailable:(BOOL)available isDegraded:(BOOL)degraded result:(id)result;
- (id)progresses;
- (void)processMediaResult:(id)result forRequest:(id)request;
@end

@implementation PHImageRequestContext

- (BOOL)shouldReportProgress
{
  v5.receiver = self;
  v5.super_class = PHImageRequestContext;
  shouldReportProgress = [(PHMediaRequestContext *)&v5 shouldReportProgress];
  if (shouldReportProgress)
  {
    LOBYTE(shouldReportProgress) = [(PHImageRequestOptions *)self->_imageOptions isNetworkAccessAllowed];
  }

  return shouldReportProgress;
}

- (id)progresses
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PHImageRequestContext *)self shouldReportProgress])
  {
    _lazyProgress = [(PHImageRequestContext *)self _lazyProgress];
    v6[0] = _lazyProgress;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_lazyProgress
{
  if (!self->_progress && [(PHImageRequestContext *)self shouldReportProgress])
  {
    v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    progress = self->_progress;
    self->_progress = v3;
  }

  v5 = self->_progress;

  return v5;
}

- (id)initialRequests
{
  v61[1] = *MEMORY[0x1E69E9840];
  if ([(PHImageRequestContext *)self _isVideoFrameRequest])
  {
    v3 = [PHVideoRequest alloc];
    requestID = [(PHMediaRequestContext *)self requestID];
    nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
    type = [(PHImageRequestContext *)self type];
    managerID = [(PHMediaRequestContext *)self managerID];
    asset = [(PHMediaRequestContext *)self asset];
    displaySpec = [(PHMediaRequestContext *)self displaySpec];
    _videoBehavior = [(PHImageRequestContext *)self _videoBehavior];
    v11 = [(PHVideoRequest *)v3 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset displaySpec:displaySpec behaviorSpec:_videoBehavior delegate:self];

    v12 = PLImageManagerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifierString = [v11 identifierString];
      imageOptions = self->_imageOptions;
      if (imageOptions)
      {
        [(PHImageRequestOptions *)imageOptions videoFrameTime];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v45 = CMTimeCopyDescription(0, &buf);
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = identifierString;
      LOWORD(buf.flags) = 2114;
      *(&buf.flags + 2) = v45;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ starting video request to load video frame at time: %{public}@", &buf, 0x16u);
    }

    v61[0] = v11;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  }

  else if (([PHImageRequestBehaviorSpec loadingOptionsFromLoadingMode:[(PHImageRequestOptions *)self->_imageOptions loadingMode]]& 7) != 0)
  {
    HasSingleRequest = PHImageRequestDeliveryModeHasSingleRequest([(PHImageRequestOptions *)self->_imageOptions deliveryMode]);
    imageOptions = [(PHImageRequestContext *)self imageOptions];
    asset2 = [(PHMediaRequestContext *)self asset];
    v11 = [PHImageRequestBehaviorSpec imageRequestInitialBehaviorSpecWithImageRequestOptions:imageOptions asset:asset2];

    v17 = [PHImageRequest alloc];
    requestID2 = [(PHMediaRequestContext *)self requestID];
    nextRequestIndex2 = [(PHMediaRequestContext *)self nextRequestIndex];
    type2 = [(PHImageRequestContext *)self type];
    managerID2 = [(PHMediaRequestContext *)self managerID];
    asset3 = [(PHMediaRequestContext *)self asset];
    displaySpec2 = [(PHMediaRequestContext *)self displaySpec];
    imageResourceChooser = [(PHMediaRequestContext *)self imageResourceChooser];
    v25 = [(PHImageRequest *)v17 initWithRequestID:requestID2 requestIndex:nextRequestIndex2 contextType:type2 managerID:managerID2 asset:asset3 displaySpec:displaySpec2 behaviorSpec:v11 chooser:imageResourceChooser delegate:self];

    _lazyProgress = [(PHImageRequestContext *)self _lazyProgress];
    identifierString2 = [(PHMediaRequest *)v25 identifierString];
    [(PHMediaRequestContext *)self setProgress:_lazyProgress forRequestIdentifier:identifierString2];

    if ([(PHImageRequestOptions *)self->_imageOptions chooseAlchemist])
    {
      v47 = MEMORY[0x1E69BE540];
      asset4 = [(PHMediaRequestContext *)self asset];
      uuid = [asset4 uuid];
      asset5 = [(PHMediaRequestContext *)self asset];
      bundleScope = [asset5 bundleScope];
      asset6 = [(PHMediaRequestContext *)self asset];
      directory = [asset6 directory];
      asset7 = [(PHMediaRequestContext *)self asset];
      filename = [asset7 filename];
      asset8 = [(PHMediaRequestContext *)self asset];
      photoLibrary = [asset8 photoLibrary];
      pathManager = [photoLibrary pathManager];
      v35 = [v47 pathForAlchemistImageWithUUID:uuid bundleScope:bundleScope directory:directory filename:filename pathManager:pathManager];

      v36 = [MEMORY[0x1E695DFF8] fileURLWithPath:v35 isDirectory:0];
      identifier = [*MEMORY[0x1E6982E00] identifier];
      [(PHImageRequest *)v25 configureWithURL:v36 uniformTypeIdentifier:identifier exifOrientation:1];
    }

    contextualVideoThumbnailIdentifier = [(PHImageRequestOptions *)self->_imageOptions contextualVideoThumbnailIdentifier];

    if (contextualVideoThumbnailIdentifier)
    {
      asset9 = [(PHMediaRequestContext *)self asset];
      managedObjectContextForFetchingResources = [asset9 managedObjectContextForFetchingResources];

      buf.value = 0;
      *&buf.timescale = &buf;
      buf.epoch = 0x3032000000;
      v58 = __Block_byref_object_copy__34485;
      v59 = __Block_byref_object_dispose__34486;
      v60 = 0;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __40__PHImageRequestContext_initialRequests__block_invoke;
      v53[3] = &unk_1E75AA3F8;
      v53[4] = self;
      v41 = managedObjectContextForFetchingResources;
      v54 = v41;
      p_buf = &buf;
      [v41 performBlockAndWait:v53];
      v42 = *(*&buf.timescale + 40);
      if (v42)
      {
        utiForContextualVideoThumbnail = [MEMORY[0x1E69BE6D0] utiForContextualVideoThumbnail];
        [(PHImageRequest *)v25 configureWithURL:v42 uniformTypeIdentifier:utiForContextualVideoThumbnail exifOrientation:1];
      }

      _Block_object_dispose(&buf, 8);
    }

    objc_storeStrong(&self->_initialRequest, v25);
    if (HasSingleRequest)
    {
      objc_storeStrong(&self->_finalRequest, v25);
    }

    v56 = v25;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  }

  else
  {
    v11 = PLImageManagerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.value) = 134218240;
      *(&buf.value + 4) = [(PHMediaRequestContext *)self managerID];
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = [(PHMediaRequestContext *)self requestID];
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "Loading options don't specify any result, request %ld-%ld will be a no-op", &buf, 0x16u);
    }

    v44 = 0;
  }

  return v44;
}

- (BOOL)_isVideoFrameRequest
{
  asset = [(PHMediaRequestContext *)self asset];
  if ([asset isVideo])
  {
    imageOptions = self->_imageOptions;
    if (imageOptions)
    {
      [(PHImageRequestOptions *)imageOptions videoFrameTime];
      v5 = v7 & 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)processMediaResult:(id)result forRequest:(id)request
{
  v56 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  requestCopy = request;
  if (self->super._resultHandler)
  {
    _isVideoFrameRequest = [(PHImageRequestContext *)self _isVideoFrameRequest];
    v10 = resultCopy;
    v11 = v10;
    if (_isVideoFrameRequest)
    {
      videoURL = [v10 videoURL];

      if (videoURL)
      {
        v13 = PLImageManagerGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          identifierString = [requestCopy identifierString];
          imageOptions = self->_imageOptions;
          if (imageOptions)
          {
            [(PHImageRequestOptions *)imageOptions videoFrameTime];
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
          }

          v34 = CMTimeCopyDescription(0, &buf);
          videoURL2 = [v11 videoURL];
          path = [videoURL2 path];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = identifierString;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = v34;
          HIWORD(buf.epoch) = 2112;
          v55 = path;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ generating video frame at time: %{public}@, file path: '%@'", &buf, 0x20u);
        }

        v37 = MEMORY[0x1E69BE6D8];
        videoURL3 = [v11 videoURL];
        v39 = self->_imageOptions;
        if (v39)
        {
          [(PHImageRequestOptions *)v39 videoFrameTime];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __55__PHImageRequestContext_processMediaResult_forRequest___block_invoke;
        v52[3] = &unk_1E75A88E0;
        v52[4] = self;
        v53 = requestCopy;
        [v37 generateKeyFrameFromVideoURL:videoURL3 time:&buf completion:v52];
      }

      else
      {
        (*(self->super._resultHandler + 2))();
      }
    }

    else
    {
      v16 = requestCopy;
      behaviorSpec = [v16 behaviorSpec];
      choosingPolicy = [behaviorSpec choosingPolicy];

      if ([(PHImageRequestOptions *)self->_imageOptions deliveryMode])
      {
        v19 = 1;
      }

      else
      {
        v19 = choosingPolicy == 3;
      }

      v20 = v19;
      if (v19)
      {
        v23 = 0;
        v21 = 3;
      }

      else
      {
        v22 = choosingPolicy == 1;
        v23 = choosingPolicy != 1;
        if (v22)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if ([v11 imageRef] && objc_msgSend(v11, "isPlaceholder") && objc_msgSend(v11, "isPlaceholder"))
        {
          [v11 setDegraded:1];
        }
      }

      os_unfair_lock_lock(&self->_lock);
      lock_highestResultPhaseDelivered = self->_lock_highestResultPhaseDelivered;
      if (v21 <= lock_highestResultPhaseDelivered)
      {
        v32 = PLImageManagerGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          identifierString2 = [v16 identifierString];
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = identifierString2;
          _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_DEBUG, "[RM]: %@ image request context avoiding delivering out of order result.", &buf, 0xCu);
        }

        if (PHImageManagerRecordEnabled())
        {
          requestID = [v16 requestID];
          identifierString3 = [v16 identifierString];
          [PHImageManagerRequestTracer traceMessageForRequestID:requestID message:@"[RM]: %@ image request context avoiding delivering out of order result.", identifierString3];
        }
      }

      else
      {
        if (lock_highestResultPhaseDelivered > 1)
        {
          goto LABEL_64;
        }

        v25 = v20 ^ 1;
        if (!self->_intermediateRequest)
        {
          v25 = 1;
        }

        if (v25 & 1) != 0 || ([v11 containsValidData])
        {
LABEL_64:
          if ((v20 & 1) != 0 || [v11 imageRef])
          {
            v26 = PLImageManagerGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [v16 identifierString];
              v28 = v27 = v23;
              v29 = off_1E75A8900[v21 - 1];
              LODWORD(buf.value) = 138412546;
              *(&buf.value + 4) = v28;
              LOWORD(buf.flags) = 2112;
              *(&buf.flags + 2) = v29;
              _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "[RM]: %@ image request context delivering %@ result.", &buf, 0x16u);

              v23 = v27;
            }

            if (PHImageManagerRecordEnabled())
            {
              v44 = v23;
              requestID2 = [v16 requestID];
              identifierString4 = [v16 identifierString];
              v47 = requestID2;
              v23 = v44;
              [PHImageManagerRequestTracer traceMessageForRequestID:v47 message:@"[RM]: %@ image request context delivering %@ result.", identifierString4, off_1E75A8900[v21 - 1]];
            }

            (*(self->super._resultHandler + 2))();
            self->_lock_highestResultPhaseDelivered = v21;
          }

          if (v23 && self->_delayedFinalInvalidDataResult)
          {
            v30 = PLImageManagerGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              identifierString5 = [v16 identifierString];
              LODWORD(buf.value) = 138412290;
              *(&buf.value + 4) = identifierString5;
              _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEBUG, "[RM]: %@ image request context delivering delayed final result.", &buf, 0xCu);
            }

            if (PHImageManagerRecordEnabled())
            {
              requestID3 = [v16 requestID];
              identifierString6 = [v16 identifierString];
              [PHImageManagerRequestTracer traceMessageForRequestID:requestID3 message:@"[RM]: %@ image request context delivering delayed final result.", identifierString6];
            }

            (*(self->super._resultHandler + 2))();
            self->_lock_highestResultPhaseDelivered = 3;
          }
        }

        else
        {
          v40 = PLImageManagerGetLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            identifierString7 = [v16 identifierString];
            LODWORD(buf.value) = 138412290;
            *(&buf.value + 4) = identifierString7;
            _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_DEBUG, "[RM]: %@ image request delaying empty final result while waiting on secondary intermediate...", &buf, 0xCu);
          }

          if (PHImageManagerRecordEnabled())
          {
            requestID4 = [v16 requestID];
            identifierString8 = [v16 identifierString];
            [PHImageManagerRequestTracer traceMessageForRequestID:requestID4 message:@"[RM]: %@ image request delaying empty final result while waiting on secondary intermediate...", identifierString8];
          }

          (*(self->super._resultHandler + 2))();
          objc_storeStrong(&self->_delayedFinalInvalidDataResult, result);
        }
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

void __55__PHImageRequestContext_processMediaResult_forRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = -[PHCompositeMediaResult initWithRequestID:]([PHImageResult alloc], "initWithRequestID:", [*(a1 + 32) requestID]);
  [(PHImageResult *)v6 setImageRef:a2];
  [(PHCompositeMediaResult *)v6 setError:v5];

  (*(*(*(a1 + 32) + 8) + 16))();
}

- (id)produceChildRequestsForRequest:(id)request reportingIsLocallyAvailable:(BOOL)available isDegraded:(BOOL)degraded result:(id)result
{
  degradedCopy = degraded;
  availableCopy = available;
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([(PHImageRequestContext *)self _isVideoFrameRequest])
  {
    v10 = 0;
    goto LABEL_24;
  }

  v11 = requestCopy;
  if (availableCopy && !degradedCopy)
  {
    goto LABEL_22;
  }

  if ([(PHImageRequestOptions *)self->_imageOptions deliveryMode])
  {
    goto LABEL_22;
  }

  behaviorSpec = [(PHImageRequest *)v11 behaviorSpec];
  choosingPolicy = [behaviorSpec choosingPolicy];

  if (choosingPolicy == 3)
  {
    goto LABEL_22;
  }

  initialRequest = self->_initialRequest;
  if (initialRequest == v11)
  {
    behaviorSpec2 = [(PHImageRequest *)initialRequest behaviorSpec];
    choosingPolicy2 = [behaviorSpec2 choosingPolicy];

    v25 = [(PHImageRequestOptions *)self->_imageOptions opportunisticDegradedImagesToReturn]& 2;
    if (choosingPolicy2 != 1 || v25 == 0)
    {
      p_finalRequest = &self->_finalRequest;
      if (self->_finalRequest)
      {
        goto LABEL_22;
      }

      v27 = [(PHImageRequestContext *)self _produceFinalImageRequestForRequest:v11];
    }

    else
    {
      p_finalRequest = &self->_intermediateRequest;
      if (self->_intermediateRequest)
      {
        goto LABEL_22;
      }

      v27 = [(PHImageRequestContext *)self _produceIntermediateImageRequestForRequest:v11];
    }

    v31 = *p_finalRequest;
    *p_finalRequest = v27;

LABEL_29:
    v29 = *p_finalRequest;
    v28 = v29;
    if (v29)
    {
      v32 = v29;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    }

    goto LABEL_23;
  }

  if (self->_intermediateRequest == v11)
  {
    p_finalRequest = &self->_finalRequest;
    if (!self->_finalRequest)
    {
      v16 = [(PHImageRequestContext *)self _produceFinalImageRequestForRequest:v11];
      v17 = *p_finalRequest;
      *p_finalRequest = v16;

      v18 = PLImageManagerGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        identifierString = [*p_finalRequest identifierString];
        *buf = 138412290;
        v34 = identifierString;
        _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "[RM]: %@ starting final image request", buf, 0xCu);
      }

      if (PHImageManagerRecordEnabled())
      {
        requestID = [(PHMediaRequest *)v11 requestID];
        [*p_finalRequest identifierString];
        v22 = v21 = p_finalRequest;
        [PHImageManagerRequestTracer traceMessageForRequestID:requestID message:@"[RM]: %@ starting final image request", v22];

        p_finalRequest = v21;
      }

      goto LABEL_29;
    }
  }

LABEL_22:
  v28 = 0;
  v29 = 0;
LABEL_23:
  v10 = v29;

LABEL_24:

  return v10;
}

void __40__PHImageRequestContext_initialRequests__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE540];
  v3 = [*(a1 + 32) asset];
  v4 = [v3 objectID];
  v9 = [v2 assetWithObjectID:v4 inManagedObjectContext:*(a1 + 40)];

  v5 = [*(*(a1 + 32) + 208) contextualVideoThumbnailIdentifier];
  v6 = [v9 readonlyFileURLForContextualVideoThumbnailIdentifier:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)representsShareableHighQualityResource
{
  asset = [(PHMediaRequestContext *)self asset];
  playbackStyle = [asset playbackStyle];
  if (playbackStyle == 1)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    asset2 = [(PHMediaRequestContext *)self asset];
    if ([asset2 playbackStyle] == 3)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      asset3 = [(PHMediaRequestContext *)self asset];
      if ([asset3 playbackStyle] == 2)
      {
        v9 = 0;
        v8 = 1;
      }

      else
      {
        asset4 = [(PHMediaRequestContext *)self asset];
        if ([asset4 playbackStyle] != 5)
        {

          v13 = 0;
          goto LABEL_21;
        }

        v16 = asset4;
        v8 = 1;
        v9 = 1;
      }
    }
  }

  displaySpec = [(PHMediaRequestContext *)self displaySpec];
  if (displaySpec)
  {
    displaySpec2 = [(PHMediaRequestContext *)self displaySpec];
    [displaySpec2 targetSize];
    if (v12 == -1.0 && v11 == -1.0)
    {
      v13 = 1;
      goto LABEL_13;
    }
  }

  if (([(PHImageRequestOptions *)self->_imageOptions loadingMode]& 2) != 0)
  {
    v13 = [(PHImageRequestOptions *)self->_imageOptions deliveryMode]== PHImageRequestOptionsDeliveryModeHighQualityFormat;
    if (displaySpec)
    {
LABEL_13:

      if (v9)
      {
        goto LABEL_14;
      }

LABEL_18:
      if (!v8)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v13 = 0;
    if (displaySpec)
    {
      goto LABEL_13;
    }
  }

  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_14:

  if (v8)
  {
LABEL_19:
  }

LABEL_20:
  if (playbackStyle != 1)
  {
LABEL_21:
  }

  return v13;
}

- (id)_produceIntermediateImageRequestForRequest:(id)request
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  behaviorSpec = [requestCopy behaviorSpec];
  imageOptions = [(PHImageRequestContext *)self imageOptions];
  asset = [(PHMediaRequestContext *)self asset];
  v7 = [PHImageRequestBehaviorSpec imageRequestIntermediateBehaviorSpecWithPreviousBehaviorSpec:behaviorSpec options:imageOptions asset:asset];

  v8 = [PHImageRequest alloc];
  requestID = [(PHMediaRequestContext *)self requestID];
  nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
  type = [(PHImageRequestContext *)self type];
  managerID = [(PHMediaRequestContext *)self managerID];
  asset2 = [(PHMediaRequestContext *)self asset];
  displaySpec = [(PHMediaRequestContext *)self displaySpec];
  imageResourceChooser = [(PHMediaRequestContext *)self imageResourceChooser];
  v16 = [(PHImageRequest *)v8 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset2 displaySpec:displaySpec behaviorSpec:v7 chooser:imageResourceChooser delegate:self];

  v17 = PLImageManagerGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    identifierString = [requestCopy identifierString];
    identifierString2 = [(PHMediaRequest *)v16 identifierString];
    *buf = 138412546;
    v26 = identifierString;
    v27 = 2112;
    v28 = identifierString2;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "[RM]: %@ Spawned intermediate (SPI) child request: %@", buf, 0x16u);
  }

  if (PHImageManagerRecordEnabled())
  {
    requestID2 = [requestCopy requestID];
    identifierString3 = [requestCopy identifierString];
    identifierString4 = [(PHMediaRequest *)v16 identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:requestID2 message:@"[RM]: %@ Spawned intermediate (SPI) child request: %@", identifierString3, identifierString4];
  }

  return v16;
}

- (id)_produceFinalImageRequestForRequest:(id)request
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  behaviorSpec = [requestCopy behaviorSpec];
  imageOptions = [(PHImageRequestContext *)self imageOptions];
  asset = [(PHMediaRequestContext *)self asset];
  v7 = [PHImageRequestBehaviorSpec imageRequestBestBehaviorSpecWithPreviousBehaviorSpec:behaviorSpec options:imageOptions asset:asset];

  v8 = [PHImageRequest alloc];
  requestID = [(PHMediaRequestContext *)self requestID];
  nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
  type = [(PHImageRequestContext *)self type];
  managerID = [(PHMediaRequestContext *)self managerID];
  asset2 = [(PHMediaRequestContext *)self asset];
  displaySpec = [(PHMediaRequestContext *)self displaySpec];
  imageResourceChooser = [(PHMediaRequestContext *)self imageResourceChooser];
  v16 = [(PHImageRequest *)v8 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset2 displaySpec:displaySpec behaviorSpec:v7 chooser:imageResourceChooser delegate:self];

  _lazyProgress = [(PHImageRequestContext *)self _lazyProgress];
  identifierString = [(PHMediaRequest *)v16 identifierString];
  [(PHMediaRequestContext *)self setProgress:_lazyProgress forRequestIdentifier:identifierString];

  v19 = PLImageManagerGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    identifierString2 = [requestCopy identifierString];
    identifierString3 = [(PHMediaRequest *)v16 identifierString];
    *buf = 138412546;
    v28 = identifierString2;
    v29 = 2112;
    v30 = identifierString3;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "[RM]: %@ Spawned final (best) child request: %@", buf, 0x16u);
  }

  if (PHImageManagerRecordEnabled())
  {
    requestID2 = [requestCopy requestID];
    identifierString4 = [requestCopy identifierString];
    identifierString5 = [(PHMediaRequest *)v16 identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:requestID2 message:@"[RM]: %@ Spawned final (best) child request: %@", identifierString4, identifierString5];
  }

  return v16;
}

- (id)_videoBehavior
{
  v3 = objc_alloc_init(PHVideoRequestBehaviorSpec);
  if ([(PHImageRequestOptions *)self->_imageOptions deliveryMode]== PHImageRequestOptionsDeliveryModeFastFormat)
  {
    v4 = 3;
  }

  else
  {
    displaySpec = [(PHMediaRequestContext *)self displaySpec];
    asset = [(PHMediaRequestContext *)self asset];
    pixelWidth = [asset pixelWidth];
    asset2 = [(PHMediaRequestContext *)self asset];
    [displaySpec requestSizeFromFullSizedWidth:pixelWidth height:{objc_msgSend(asset2, "pixelHeight")}];
    v10 = v9;
    v12 = v11;

    if (fmax(v10, v12) > 720.0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  [(PHVideoRequestBehaviorSpec *)v3 setDeliveryMode:v4];
  [(PHVideoRequestBehaviorSpec *)v3 setNetworkAccessAllowed:[(PHImageRequestOptions *)self->_imageOptions isNetworkAccessAllowed]];
  [(PHVideoRequestBehaviorSpec *)v3 setStreamingAllowed:[(PHImageRequestOptions *)self->_imageOptions isNetworkAccessAllowed]];
  [(PHVideoRequestBehaviorSpec *)v3 setDownloadIntent:[(PHImageRequestOptions *)self->_imageOptions downloadIntent]];
  [(PHVideoRequestBehaviorSpec *)v3 setDownloadPriority:[(PHImageRequestOptions *)self->_imageOptions downloadPriority]];
  version = [(PHImageRequestOptions *)self->_imageOptions version];
  v14 = 8;
  if (version != 8)
  {
    v14 = 0;
  }

  if ((version - 1) >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  [(PHVideoRequestBehaviorSpec *)v3 setVersion:v15];

  return v3;
}

- (PHImageRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec options:(id)options resultHandler:(id)handler
{
  v12 = *&d;
  specCopy = spec;
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = PHImageRequestContext;
  v16 = [(PHMediaRequestContext *)&v23 initWithRequestID:v12 managerID:iD asset:asset displaySpec:specCopy resultHandler:handler];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_imageOptions, options);
    v17->_lock_highestResultPhaseDelivered = 0;
    v17->_lock._os_unfair_lock_opaque = 0;
    if ([(PHImageRequestOptions *)v17->_imageOptions isSynchronous])
    {
      if (initWithRequestID_managerID_asset_displaySpec_options_resultHandler__onceToken != -1)
      {
        dispatch_once(&initWithRequestID_managerID_asset_displaySpec_options_resultHandler__onceToken, &__block_literal_global_34499);
      }

      if ((initWithRequestID_managerID_asset_displaySpec_options_resultHandler__allowFastSync & 1) == 0 && [(PHImageRequestOptions *)v17->_imageOptions deliveryMode]== PHImageRequestOptionsDeliveryModeFastFormat)
      {
        v18 = PLImageManagerGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v22 = 0;
          _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "Synchronous image requests are incompatible with fast delivery mode, changing delivery mode to high", v22, 2u);
        }

        [(PHImageRequestOptions *)v17->_imageOptions setDeliveryMode:1];
      }

      if ([(PHImageRequestOptions *)v17->_imageOptions deliveryMode]== PHImageRequestOptionsDeliveryModeOpportunistic)
      {
        v19 = PLImageManagerGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *v22 = 0;
          _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "Synchronous image requests in opportunistic delivery mode will only deliver 1 image", v22, 2u);
        }

        [(PHImageRequestOptions *)v17->_imageOptions setDeliveryMode:1];
      }
    }

    if ([specCopy hasExplicitCrop] && objc_msgSend(optionsCopy, "resizeMode") != 2)
    {
      v20 = PLImageManagerGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Image request with normalized crop rect must use resize mode exact", v22, 2u);
      }
    }
  }

  return v17;
}

uint64_t __93__PHImageRequestContext_initWithRequestID_managerID_asset_displaySpec_options_resultHandler___block_invoke()
{
  result = dyld_program_sdk_at_least();
  initWithRequestID_managerID_asset_displaySpec_options_resultHandler__allowFastSync = result;
  return result;
}

@end