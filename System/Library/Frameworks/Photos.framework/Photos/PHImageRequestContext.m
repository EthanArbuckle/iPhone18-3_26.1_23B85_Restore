@interface PHImageRequestContext
- (BOOL)_isVideoFrameRequest;
- (BOOL)representsShareableHighQualityResource;
- (BOOL)shouldReportProgress;
- (PHImageRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 displaySpec:(id)a6 options:(id)a7 resultHandler:(id)a8;
- (id)_lazyProgress;
- (id)_produceFinalImageRequestForRequest:(id)a3;
- (id)_produceIntermediateImageRequestForRequest:(id)a3;
- (id)_videoBehavior;
- (id)initialRequests;
- (id)produceChildRequestsForRequest:(id)a3 reportingIsLocallyAvailable:(BOOL)a4 isDegraded:(BOOL)a5 result:(id)a6;
- (id)progresses;
- (void)processMediaResult:(id)a3 forRequest:(id)a4;
@end

@implementation PHImageRequestContext

- (BOOL)shouldReportProgress
{
  v5.receiver = self;
  v5.super_class = PHImageRequestContext;
  v3 = [(PHMediaRequestContext *)&v5 shouldReportProgress];
  if (v3)
  {
    LOBYTE(v3) = [(PHImageRequestOptions *)self->_imageOptions isNetworkAccessAllowed];
  }

  return v3;
}

- (id)progresses
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PHImageRequestContext *)self shouldReportProgress])
  {
    v3 = [(PHImageRequestContext *)self _lazyProgress];
    v6[0] = v3;
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
    v4 = [(PHMediaRequestContext *)self requestID];
    v5 = [(PHMediaRequestContext *)self nextRequestIndex];
    v6 = [(PHImageRequestContext *)self type];
    v7 = [(PHMediaRequestContext *)self managerID];
    v8 = [(PHMediaRequestContext *)self asset];
    v9 = [(PHMediaRequestContext *)self displaySpec];
    v10 = [(PHImageRequestContext *)self _videoBehavior];
    v11 = [(PHVideoRequest *)v3 initWithRequestID:v4 requestIndex:v5 contextType:v6 managerID:v7 asset:v8 displaySpec:v9 behaviorSpec:v10 delegate:self];

    v12 = PLImageManagerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 identifierString];
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
      *(&buf.value + 4) = v13;
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
    v15 = [(PHImageRequestContext *)self imageOptions];
    v16 = [(PHMediaRequestContext *)self asset];
    v11 = [PHImageRequestBehaviorSpec imageRequestInitialBehaviorSpecWithImageRequestOptions:v15 asset:v16];

    v17 = [PHImageRequest alloc];
    v18 = [(PHMediaRequestContext *)self requestID];
    v19 = [(PHMediaRequestContext *)self nextRequestIndex];
    v20 = [(PHImageRequestContext *)self type];
    v21 = [(PHMediaRequestContext *)self managerID];
    v22 = [(PHMediaRequestContext *)self asset];
    v23 = [(PHMediaRequestContext *)self displaySpec];
    v24 = [(PHMediaRequestContext *)self imageResourceChooser];
    v25 = [(PHImageRequest *)v17 initWithRequestID:v18 requestIndex:v19 contextType:v20 managerID:v21 asset:v22 displaySpec:v23 behaviorSpec:v11 chooser:v24 delegate:self];

    v26 = [(PHImageRequestContext *)self _lazyProgress];
    v27 = [(PHMediaRequest *)v25 identifierString];
    [(PHMediaRequestContext *)self setProgress:v26 forRequestIdentifier:v27];

    if ([(PHImageRequestOptions *)self->_imageOptions chooseAlchemist])
    {
      v47 = MEMORY[0x1E69BE540];
      v51 = [(PHMediaRequestContext *)self asset];
      v48 = [v51 uuid];
      v50 = [(PHMediaRequestContext *)self asset];
      v28 = [v50 bundleScope];
      v49 = [(PHMediaRequestContext *)self asset];
      v29 = [v49 directory];
      v30 = [(PHMediaRequestContext *)self asset];
      v31 = [v30 filename];
      v32 = [(PHMediaRequestContext *)self asset];
      v33 = [v32 photoLibrary];
      v34 = [v33 pathManager];
      v35 = [v47 pathForAlchemistImageWithUUID:v48 bundleScope:v28 directory:v29 filename:v31 pathManager:v34];

      v36 = [MEMORY[0x1E695DFF8] fileURLWithPath:v35 isDirectory:0];
      v37 = [*MEMORY[0x1E6982E00] identifier];
      [(PHImageRequest *)v25 configureWithURL:v36 uniformTypeIdentifier:v37 exifOrientation:1];
    }

    v38 = [(PHImageRequestOptions *)self->_imageOptions contextualVideoThumbnailIdentifier];

    if (v38)
    {
      v39 = [(PHMediaRequestContext *)self asset];
      v40 = [v39 managedObjectContextForFetchingResources];

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
      v41 = v40;
      v54 = v41;
      p_buf = &buf;
      [v41 performBlockAndWait:v53];
      v42 = *(*&buf.timescale + 40);
      if (v42)
      {
        v43 = [MEMORY[0x1E69BE6D0] utiForContextualVideoThumbnail];
        [(PHImageRequest *)v25 configureWithURL:v42 uniformTypeIdentifier:v43 exifOrientation:1];
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
  v3 = [(PHMediaRequestContext *)self asset];
  if ([v3 isVideo])
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

- (void)processMediaResult:(id)a3 forRequest:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (self->super._resultHandler)
  {
    v9 = [(PHImageRequestContext *)self _isVideoFrameRequest];
    v10 = v7;
    v11 = v10;
    if (v9)
    {
      v12 = [v10 videoURL];

      if (v12)
      {
        v13 = PLImageManagerGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v8 identifierString];
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
          v35 = [v11 videoURL];
          v36 = [v35 path];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v14;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = v34;
          HIWORD(buf.epoch) = 2112;
          v55 = v36;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ generating video frame at time: %{public}@, file path: '%@'", &buf, 0x20u);
        }

        v37 = MEMORY[0x1E69BE6D8];
        v38 = [v11 videoURL];
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
        v53 = v8;
        [v37 generateKeyFrameFromVideoURL:v38 time:&buf completion:v52];
      }

      else
      {
        (*(self->super._resultHandler + 2))();
      }
    }

    else
    {
      v16 = v8;
      v17 = [v16 behaviorSpec];
      v18 = [v17 choosingPolicy];

      if ([(PHImageRequestOptions *)self->_imageOptions deliveryMode])
      {
        v19 = 1;
      }

      else
      {
        v19 = v18 == 3;
      }

      v20 = v19;
      if (v19)
      {
        v23 = 0;
        v21 = 3;
      }

      else
      {
        v22 = v18 == 1;
        v23 = v18 != 1;
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
          v33 = [v16 identifierString];
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v33;
          _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_DEBUG, "[RM]: %@ image request context avoiding delivering out of order result.", &buf, 0xCu);
        }

        if (PHImageManagerRecordEnabled())
        {
          v42 = [v16 requestID];
          v43 = [v16 identifierString];
          [PHImageManagerRequestTracer traceMessageForRequestID:v42 message:@"[RM]: %@ image request context avoiding delivering out of order result.", v43];
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
              v45 = [v16 requestID];
              v46 = [v16 identifierString];
              v47 = v45;
              v23 = v44;
              [PHImageManagerRequestTracer traceMessageForRequestID:v47 message:@"[RM]: %@ image request context delivering %@ result.", v46, off_1E75A8900[v21 - 1]];
            }

            (*(self->super._resultHandler + 2))();
            self->_lock_highestResultPhaseDelivered = v21;
          }

          if (v23 && self->_delayedFinalInvalidDataResult)
          {
            v30 = PLImageManagerGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v31 = [v16 identifierString];
              LODWORD(buf.value) = 138412290;
              *(&buf.value + 4) = v31;
              _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEBUG, "[RM]: %@ image request context delivering delayed final result.", &buf, 0xCu);
            }

            if (PHImageManagerRecordEnabled())
            {
              v48 = [v16 requestID];
              v49 = [v16 identifierString];
              [PHImageManagerRequestTracer traceMessageForRequestID:v48 message:@"[RM]: %@ image request context delivering delayed final result.", v49];
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
            v41 = [v16 identifierString];
            LODWORD(buf.value) = 138412290;
            *(&buf.value + 4) = v41;
            _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_DEBUG, "[RM]: %@ image request delaying empty final result while waiting on secondary intermediate...", &buf, 0xCu);
          }

          if (PHImageManagerRecordEnabled())
          {
            v50 = [v16 requestID];
            v51 = [v16 identifierString];
            [PHImageManagerRequestTracer traceMessageForRequestID:v50 message:@"[RM]: %@ image request delaying empty final result while waiting on secondary intermediate...", v51];
          }

          (*(self->super._resultHandler + 2))();
          objc_storeStrong(&self->_delayedFinalInvalidDataResult, a3);
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

- (id)produceChildRequestsForRequest:(id)a3 reportingIsLocallyAvailable:(BOOL)a4 isDegraded:(BOOL)a5 result:(id)a6
{
  v6 = a5;
  v7 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ([(PHImageRequestContext *)self _isVideoFrameRequest])
  {
    v10 = 0;
    goto LABEL_24;
  }

  v11 = v9;
  if (v7 && !v6)
  {
    goto LABEL_22;
  }

  if ([(PHImageRequestOptions *)self->_imageOptions deliveryMode])
  {
    goto LABEL_22;
  }

  v12 = [(PHImageRequest *)v11 behaviorSpec];
  v13 = [v12 choosingPolicy];

  if (v13 == 3)
  {
    goto LABEL_22;
  }

  initialRequest = self->_initialRequest;
  if (initialRequest == v11)
  {
    v23 = [(PHImageRequest *)initialRequest behaviorSpec];
    v24 = [v23 choosingPolicy];

    v25 = [(PHImageRequestOptions *)self->_imageOptions opportunisticDegradedImagesToReturn]& 2;
    if (v24 != 1 || v25 == 0)
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
        v19 = [*p_finalRequest identifierString];
        *buf = 138412290;
        v34 = v19;
        _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "[RM]: %@ starting final image request", buf, 0xCu);
      }

      if (PHImageManagerRecordEnabled())
      {
        v20 = [(PHMediaRequest *)v11 requestID];
        [*p_finalRequest identifierString];
        v22 = v21 = p_finalRequest;
        [PHImageManagerRequestTracer traceMessageForRequestID:v20 message:@"[RM]: %@ starting final image request", v22];

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
  v6 = [(PHMediaRequestContext *)self asset];
  v7 = [v6 playbackStyle];
  if (v7 == 1)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v2 = [(PHMediaRequestContext *)self asset];
    if ([v2 playbackStyle] == 3)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v3 = [(PHMediaRequestContext *)self asset];
      if ([v3 playbackStyle] == 2)
      {
        v9 = 0;
        v8 = 1;
      }

      else
      {
        v15 = [(PHMediaRequestContext *)self asset];
        if ([v15 playbackStyle] != 5)
        {

          v13 = 0;
          goto LABEL_21;
        }

        v16 = v15;
        v8 = 1;
        v9 = 1;
      }
    }
  }

  v10 = [(PHMediaRequestContext *)self displaySpec];
  if (v10)
  {
    v4 = [(PHMediaRequestContext *)self displaySpec];
    [v4 targetSize];
    if (v12 == -1.0 && v11 == -1.0)
    {
      v13 = 1;
      goto LABEL_13;
    }
  }

  if (([(PHImageRequestOptions *)self->_imageOptions loadingMode]& 2) != 0)
  {
    v13 = [(PHImageRequestOptions *)self->_imageOptions deliveryMode]== PHImageRequestOptionsDeliveryModeHighQualityFormat;
    if (v10)
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
    if (v10)
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
  if (v7 != 1)
  {
LABEL_21:
  }

  return v13;
}

- (id)_produceIntermediateImageRequestForRequest:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v4 = [v24 behaviorSpec];
  v5 = [(PHImageRequestContext *)self imageOptions];
  v6 = [(PHMediaRequestContext *)self asset];
  v7 = [PHImageRequestBehaviorSpec imageRequestIntermediateBehaviorSpecWithPreviousBehaviorSpec:v4 options:v5 asset:v6];

  v8 = [PHImageRequest alloc];
  v9 = [(PHMediaRequestContext *)self requestID];
  v10 = [(PHMediaRequestContext *)self nextRequestIndex];
  v11 = [(PHImageRequestContext *)self type];
  v12 = [(PHMediaRequestContext *)self managerID];
  v13 = [(PHMediaRequestContext *)self asset];
  v14 = [(PHMediaRequestContext *)self displaySpec];
  v15 = [(PHMediaRequestContext *)self imageResourceChooser];
  v16 = [(PHImageRequest *)v8 initWithRequestID:v9 requestIndex:v10 contextType:v11 managerID:v12 asset:v13 displaySpec:v14 behaviorSpec:v7 chooser:v15 delegate:self];

  v17 = PLImageManagerGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v24 identifierString];
    v19 = [(PHMediaRequest *)v16 identifierString];
    *buf = 138412546;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "[RM]: %@ Spawned intermediate (SPI) child request: %@", buf, 0x16u);
  }

  if (PHImageManagerRecordEnabled())
  {
    v21 = [v24 requestID];
    v22 = [v24 identifierString];
    v23 = [(PHMediaRequest *)v16 identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v21 message:@"[RM]: %@ Spawned intermediate (SPI) child request: %@", v22, v23];
  }

  return v16;
}

- (id)_produceFinalImageRequestForRequest:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v4 = [v26 behaviorSpec];
  v5 = [(PHImageRequestContext *)self imageOptions];
  v6 = [(PHMediaRequestContext *)self asset];
  v7 = [PHImageRequestBehaviorSpec imageRequestBestBehaviorSpecWithPreviousBehaviorSpec:v4 options:v5 asset:v6];

  v8 = [PHImageRequest alloc];
  v9 = [(PHMediaRequestContext *)self requestID];
  v10 = [(PHMediaRequestContext *)self nextRequestIndex];
  v11 = [(PHImageRequestContext *)self type];
  v12 = [(PHMediaRequestContext *)self managerID];
  v13 = [(PHMediaRequestContext *)self asset];
  v14 = [(PHMediaRequestContext *)self displaySpec];
  v15 = [(PHMediaRequestContext *)self imageResourceChooser];
  v16 = [(PHImageRequest *)v8 initWithRequestID:v9 requestIndex:v10 contextType:v11 managerID:v12 asset:v13 displaySpec:v14 behaviorSpec:v7 chooser:v15 delegate:self];

  v17 = [(PHImageRequestContext *)self _lazyProgress];
  v18 = [(PHMediaRequest *)v16 identifierString];
  [(PHMediaRequestContext *)self setProgress:v17 forRequestIdentifier:v18];

  v19 = PLImageManagerGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v26 identifierString];
    v21 = [(PHMediaRequest *)v16 identifierString];
    *buf = 138412546;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "[RM]: %@ Spawned final (best) child request: %@", buf, 0x16u);
  }

  if (PHImageManagerRecordEnabled())
  {
    v23 = [v26 requestID];
    v24 = [v26 identifierString];
    v25 = [(PHMediaRequest *)v16 identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v23 message:@"[RM]: %@ Spawned final (best) child request: %@", v24, v25];
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
    v5 = [(PHMediaRequestContext *)self displaySpec];
    v6 = [(PHMediaRequestContext *)self asset];
    v7 = [v6 pixelWidth];
    v8 = [(PHMediaRequestContext *)self asset];
    [v5 requestSizeFromFullSizedWidth:v7 height:{objc_msgSend(v8, "pixelHeight")}];
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
  v13 = [(PHImageRequestOptions *)self->_imageOptions version];
  v14 = 8;
  if (v13 != 8)
  {
    v14 = 0;
  }

  if ((v13 - 1) >= 2)
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

- (PHImageRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 displaySpec:(id)a6 options:(id)a7 resultHandler:(id)a8
{
  v12 = *&a3;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = PHImageRequestContext;
  v16 = [(PHMediaRequestContext *)&v23 initWithRequestID:v12 managerID:a4 asset:a5 displaySpec:v14 resultHandler:a8];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_imageOptions, a7);
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

    if ([v14 hasExplicitCrop] && objc_msgSend(v15, "resizeMode") != 2)
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