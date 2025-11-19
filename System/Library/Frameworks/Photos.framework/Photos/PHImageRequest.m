@interface PHImageRequest
- (CGSize)desiredImageSize;
- (PHImageRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 displaySpec:(id)a8 behaviorSpec:(id)a9 chooser:(id)a10 delegate:(id)a11;
- (PHImageRequestDelegate)imageDelegate;
- (id)description;
- (void)_decodeImageConfiguredWithURL:(id)a3 isPrimaryFormat:(BOOL)a4;
- (void)cancel;
- (void)configureWithError:(id)a3;
- (void)configureWithURL:(id)a3 uniformTypeIdentifier:(id)a4 exifOrientation:(int)a5;
- (void)handleAvailabilityChangeForResource:(id)a3 url:(id)a4 info:(id)a5 error:(id)a6;
- (void)startRequest;
@end

@implementation PHImageRequest

- (void)startRequest
{
  v100 = *MEMORY[0x1E69E9840];
  if ([(PHMediaRequest *)self isCancelled]|| self->super._configurationError)
  {

    _finishRequest(self);
    return;
  }

  v3 = [(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadURL];
  v4 = [(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadData];
  v5 = [(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadImage];
  if ([(PHImageRequestBehaviorSpec *)self->_behaviorSpec choosingPolicy]< 3 && (v4 || v3) || !v5 && !v4 && !v3)
  {
    v15 = PLImageManagerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [(PHMediaRequest *)self identifierString];
      *buf = 138412290;
      v95 = v16;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Invalid loading mode for image request %@ is a no-op", buf, 0xCu);
    }

    if (!PHImageManagerRecordEnabled())
    {
      goto LABEL_23;
    }

    v17 = [(PHMediaRequest *)self requestID];
    v18 = [(PHMediaRequest *)self identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v17 message:@"Invalid loading mode for image request %@ is a no-op", v18];
LABEL_71:

    goto LABEL_23;
  }

  if (!self->_chooser)
  {
    v19 = PLImageManagerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(PHMediaRequest *)self identifierString];
      *buf = 138412290;
      v95 = v20;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Image request %@ running without chooser is a no-op", buf, 0xCu);
    }

    if (!PHImageManagerRecordEnabled())
    {
      goto LABEL_23;
    }

    v75 = [(PHMediaRequest *)self requestID];
    v18 = [(PHMediaRequest *)self identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v75 message:@"Image request %@ running without chooser is a no-op", v18];
    goto LABEL_71;
  }

  if (!self->_forceIgnoreCache && v5 && !v4 && !v3)
  {
    v21 = [(PHImageRequestBehaviorSpec *)self->_behaviorSpec choosingPolicy];
    v93 = 0;
    v22 = [(PHImageRequest *)self imageDelegate];
    v23 = v22;
    v24 = v21 == 3 ? &v93 + 1 : 0;
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __30__PHImageRequest_startRequest__block_invoke;
    v92[3] = &unk_1E75A3D78;
    v92[4] = self;
    [v22 imageRequest:self isQueryingCacheAndDidWait:v24 didFindImage:&v93 resultHandler:v92];

    if ((v93 & 0x100) != 0 || v93 == 1)
    {
      v25 = PLImageManagerGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [(PHMediaRequest *)self identifierString];
        v27 = v26;
        v28 = @"waiting for in-flight request";
        if (v93)
        {
          v28 = @"found image";
        }

        *buf = 138412546;
        v95 = v26;
        v96 = 2112;
        v97 = v28;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEBUG, "[RM][cache]: %@ early return from image cache, reason: %@", buf, 0x16u);
      }

      if (PHImageManagerRecordEnabled())
      {
        v29 = [(PHMediaRequest *)self requestID];
        v30 = [(PHMediaRequest *)self identifierString];
        v31 = v30;
        if (v93)
        {
          v32 = @"found image";
        }

        else
        {
          v32 = @"waiting for in-flight request";
        }

        [PHImageManagerRequestTracer traceMessageForRequestID:v29 message:@"[RM][cache]: %@ early return from image cache, reason: %@", v30, v32];
      }

      return;
    }
  }

  v6 = PLImageManagerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(PHMediaRequest *)self identifierString];
    *buf = 138412546;
    v95 = v7;
    v96 = 2112;
    v97 = self;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "[RM]: %@ Image request: %@", buf, 0x16u);
  }

  if (PHImageManagerRecordEnabled())
  {
    v69 = [(PHMediaRequest *)self requestID];
    v70 = [(PHMediaRequest *)self identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v69 message:@"[RM]: %@ Image request: %@", v70, self];
  }

  p_desiredImageSize = &self->_desiredImageSize;
  displaySpec = self->_displaySpec;
  if (displaySpec)
  {
    v10 = [(PHMediaRequest *)self asset];
    v11 = [v10 pixelWidth];
    v12 = [(PHMediaRequest *)self asset];
    -[PHImageDisplaySpec requestSizeFromFullSizedWidth:height:resizeMode:](displaySpec, "requestSizeFromFullSizedWidth:height:resizeMode:", v11, [v12 pixelHeight], -[PHImageRequestBehaviorSpec resizeMode](self->_behaviorSpec, "resizeMode"));
    p_desiredImageSize->width = v13;
    self->_desiredImageSize.height = v14;
  }

  else
  {
    *p_desiredImageSize = *MEMORY[0x1E695F060];
  }

  v33 = PLImageManagerGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = [(PHMediaRequest *)self identifierString];
    v35 = DCIM_NSStringFromCGSize();
    v36 = [(PHImageDisplaySpec *)self->_displaySpec shortDescription];
    *buf = 138412802;
    v95 = v34;
    v96 = 2112;
    v97 = v35;
    v98 = 2112;
    v99 = v36;
    _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_DEBUG, "[RM]: %@ request sized to %@, for display spec: %@", buf, 0x20u);
  }

  if (PHImageManagerRecordEnabled())
  {
    v71 = [(PHMediaRequest *)self requestID];
    v72 = [(PHMediaRequest *)self identifierString];
    v73 = DCIM_NSStringFromCGSize();
    v74 = [(PHImageDisplaySpec *)self->_displaySpec shortDescription];
    [PHImageManagerRequestTracer traceMessageForRequestID:v71 message:@"[RM]: %@ request sized to %@, for display spec: %@", v72, v73, v74];
  }

  if (self->_configuredImageURL)
  {
    if ((![(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadDataOrURL]|| _loadURLIntoResult([(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadURL], [(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadData], self->_configuredImageURL, self->_configuredImageUTI, self->_configuredExifOrientation, self)) && [(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadImage])
    {
      if (self->_configuredImageUTI)
      {
        v37 = [MEMORY[0x1E69BE540] isPrimaryImageFormatForUTI:?];
      }

      else
      {
        v37 = 0;
      }

      [(PHImageRequest *)self _decodeImageConfiguredWithURL:self->_configuredImageURL isPrimaryFormat:v37];
      return;
    }

LABEL_23:
    _finishRequest(self);
    return;
  }

  v38 = PLImageManagerGetLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v89 = [(PHMediaRequest *)self identifierString];
    v39 = MEMORY[0x1E69BE540];
    v91 = [(PHMediaRequest *)self asset];
    v40 = [v91 imageRequestHints];
    v41 = [(PHMediaRequest *)self asset];
    v42 = [v41 pixelWidth];
    v43 = [(PHMediaRequest *)self asset];
    v44 = [v43 pixelHeight];
    v45 = [(PHMediaRequest *)self asset];
    v46 = [v39 debugDescriptionForHintData:v40 assetWidth:v42 assetHeight:v44 assetID:v45];
    *buf = 138412546;
    v95 = v89;
    v96 = 2112;
    v97 = v46;
    _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_DEBUG, "[RM]: %@ choosing image resource, hints are: %@", buf, 0x16u);
  }

  if (PHImageManagerRecordEnabled())
  {
    v90 = [(PHMediaRequest *)self requestID];
    v88 = [(PHMediaRequest *)self identifierString];
    v76 = MEMORY[0x1E69BE540];
    v77 = [(PHMediaRequest *)self asset];
    v78 = [v77 imageRequestHints];
    v79 = [(PHMediaRequest *)self asset];
    v80 = [v79 pixelWidth];
    v81 = [(PHMediaRequest *)self asset];
    v82 = [v81 pixelHeight];
    v83 = [(PHMediaRequest *)self asset];
    v84 = [v76 debugDescriptionForHintData:v78 assetWidth:v80 assetHeight:v82 assetID:v83];
    [PHImageManagerRequestTracer traceMessageForRequestID:v90 message:@"[RM]: %@ choosing image resource, hints are: %@", v88, v84];
  }

  v47 = self->_chooser;
  v48 = [(PHImageRequest *)self behaviorSpec];
  [(PHImageResourceChooser *)v47 setBehaviorSpec:v48];

  [(PHImageRequest *)self desiredImageSize];
  [(PHImageResourceChooser *)v47 setDesiredSize:?];
  [(PHImageResourceChooser *)v47 setContext:self];
  v49 = [(PHMediaRequest *)self identifierString];
  [(PHImageResourceChooser *)v47 setLoggingPrefix:v49];

  [(PHImageResourceChooser *)v47 setResourceHandler:&__block_literal_global_3000];
  if ([(PHImageRequest *)self downloadIntent]== 2)
  {
    [(PHImageResourceChooser *)v47 setAllowChoosingNonLocalVideoKeyFrameResource:0];
  }

  [(PHImageDisplaySpec *)self->_displaySpec fallbackTargetSizeIfRequestedSizeNotLocallyAvailable];
  v52 = *MEMORY[0x1E695F060];
  v51 = *(MEMORY[0x1E695F060] + 8);
  if (v53 != *MEMORY[0x1E695F060] || v50 != v51)
  {
    [(PHImageDisplaySpec *)self->_displaySpec fallbackTargetSizeIfRequestedSizeNotLocallyAvailable];
    v56 = v54 * v55;
    [(PHImageDisplaySpec *)self->_displaySpec targetSize];
    v58 = v57;
    [(PHImageDisplaySpec *)self->_displaySpec targetSize];
    if (v56 < v58 * v59 || ([(PHImageDisplaySpec *)self->_displaySpec targetSize], v61 == v52) && v60 == v51)
    {
      v62 = [(PHMediaRequest *)self asset];
      v63 = [v62 pixelWidth];
      v64 = [(PHMediaRequest *)self asset];
      v65 = v56 / ([v64 pixelHeight] * v63);

      if (v65 < 0.000000238418579)
      {
        v65 = 0.000000238418579;
      }

      [(PHImageResourceChooser *)v47 setFallbackRequestedScaleIfPreferredResourceNotLocallyAvailable:v65];
      v66 = PLImageManagerGetLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        v67 = [(PHMediaRequest *)self identifierString];
        v68 = DCIM_NSStringFromCGSize();
        *buf = 138412802;
        v95 = v67;
        v96 = 2048;
        v97 = *&v65;
        v98 = 2112;
        v99 = v68;
        _os_log_impl(&dword_19C86F000, v66, OS_LOG_TYPE_DEBUG, "[RM]: %@ enabling fallback-best scale: %f based on fallback size: %@", buf, 0x20u);
      }

      if (PHImageManagerRecordEnabled())
      {
        v85 = [(PHMediaRequest *)self requestID];
        v86 = [(PHMediaRequest *)self identifierString];
        v87 = DCIM_NSStringFromCGSize();
        [PHImageManagerRequestTracer traceMessageForRequestID:v85 message:@"[RM]: %@ enabling fallback-best scale: %f based on fallback size: %@", v86, *&v65, v87];
      }
    }
  }

  [(PHImageResourceChooser *)self->_chooser presentNextQualifyingResource];
}

- (PHImageRequestDelegate)imageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageDelegate);

  return WeakRetained;
}

- (CGSize)desiredImageSize
{
  width = self->_desiredImageSize.width;
  height = self->_desiredImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __30__PHImageRequest_startRequest__block_invoke_63(uint64_t a1, void *a2, void *a3, void *a4)
{
  v122 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  WeakRetained = objc_loadWeakRetained(v9 + 28);
  [WeakRetained mediaRequest:v9 didFindLocallyAvailableResult:v10 != 0 isDegraded:{objc_msgSend(v10, "isDegraded")}];

  v107 = v10;
  v108 = v11;
  if ([v11 recipeID] == 65749 && (objc_msgSend(v11, "isHintBased") & 1) == 0)
  {
  }

  else if (v10)
  {
    v13 = v10;
    v14 = v9;
    v15 = [v13 dataStore];
    v16 = [v13 dataStoreKey];
    v101 = [v13 isDegraded];
    v102 = [v13 isPrimaryFormat];
    v100 = [v13 isDerivedFromDeferredPreview];
    v17 = [v13 keyIsHintBased];
    *v109 = MEMORY[0x1E69E9820];
    *&v109[8] = 3221225472;
    *&v109[16] = ___chooserDidPresentLocallyAvailableBag_block_invoke;
    v110 = &unk_1E75A3DE8;
    v18 = v14;
    *&v111 = v18;
    v19 = v15;
    *(&v111 + 1) = v19;
    v20 = v16;
    v112 = v20;
    v103 = v13;
    v113 = v103;
    v105 = v19;
    v21 = v20;
    v22 = v18;
    v104 = v109;
    v23 = [v22 behaviorSpec];
    if ((v17 & 1) == 0)
    {
      if (PHSignpostEventsEnabled_onceToken != -1)
      {
        dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
      }

      if (PHSignpostEventsEnabled_eventsEnabled == 1)
      {
        v24 = [v22 signpostID];
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = PLImageManagerGetLog();
          v26 = [v22 managerID];
          v27 = [v22 requestID];
          v28 = [v22 requestIndex];
          if (os_signpost_enabled(v25))
          {
            *buf = 134218752;
            *&buf[4] = v26;
            *&buf[12] = 2048;
            *&buf[14] = v27;
            *&buf[22] = 2048;
            v115 = v28;
            LOWORD(v116) = 2048;
            *(&v116 + 2) = 35;
            _os_signpost_emit_with_name_impl(&dword_19C86F000, v25, OS_SIGNPOST_EVENT, v24, "RequestEvent", "Change: [%lu-%lu-%lu], state: %lu", buf, 0x2Au);
          }
        }
      }
    }

    v29 = [v23 shouldLoadURL];
    v30 = [v23 shouldLoadData];
    if (((v29 | v30) & 1) != 0 && ([v22 asset], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "fileURLForAssetID:", v31), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "uniformTypeIdentifier"), v33 = objc_claimAutoreleasedReturnValue(), URLIntoResult = _loadURLIntoResult(v29, v30, v32, v33, -1, v22), v33, v32, v31, !URLIntoResult))
    {
      v76 = PLImageManagerGetLog();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = [v22 identifierString];
        v78 = [v22 asset];
        v79 = [v21 fileURLForAssetID:v78];
        *buf = 138412546;
        *&buf[4] = v77;
        *&buf[12] = 2112;
        *&buf[14] = v79;
        _os_log_impl(&dword_19C86F000, v76, OS_LOG_TYPE_ERROR, "[RM]: %@ Failed to load image from URL: %@", buf, 0x16u);
      }

      if (PHImageManagerRecordEnabled())
      {
        v91 = [v22 requestID];
        v92 = [v22 identifierString];
        v93 = [v22 asset];
        v94 = [v21 fileURLForAssetID:v93];
        [PHImageManagerRequestTracer traceMessageForRequestID:v91 message:@"[RM]: %@ Failed to load image from URL: %@", v92, v94];
      }

      v60 = 0;
    }

    else
    {
      if ([v23 shouldLoadImage])
      {
        [v22 desiredImageSize];
        v36 = v35;
        v38 = v37;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___loadImageFromStoreAndKey_block_invoke;
        v115 = &unk_1E75A3E30;
        v39 = v22;
        *&v116 = v39;
        v118 = v100;
        v119 = v101;
        v120 = v102;
        v121 = v17;
        v40 = v21;
        *(&v116 + 1) = v40;
        v117 = v104;
        PHDecodeImageFromStoreForRequest(v105, v40, v102, v39, buf, v36, v38);

LABEL_50:
        goto LABEL_71;
      }

      v60 = 1;
    }

    (*&v109[16])(v104, v60);
    goto LABEL_50;
  }

  if (v11)
  {
    if ([v11 isHintBased])
    {
      v41 = PLImageManagerGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = [v9 identifierString];
        v43 = [v9 asset];
        v44 = [v43 uuid];
        *v109 = 138543874;
        *&v109[4] = v42;
        *&v109[12] = 2114;
        *&v109[14] = v108;
        *&v109[22] = 2114;
        v110 = v44;
        _os_log_impl(&dword_19C86F000, v41, OS_LOG_TYPE_ERROR, "[RM]: %{public}@ unexpected hint based resource info found w/o bag: %{public}@, for asset %{public}@", v109, 0x20u);
      }

      v45 = v9[19];
      v46 = MEMORY[0x1E696ABC0];
      *buf = *MEMORY[0x1E696A278];
      *v109 = @"Unexpected hint based resource missing locally available bag";
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:buf count:1];
      v48 = [v46 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v47];
      [v45 setErrorIfNone:v48];

      _finishRequest(v9);
      goto LABEL_71;
    }

    v61 = [v11 canDownload];
    v62 = [v9 asset];
    v63 = [v108 locallyGeneratableForAsset:v62];
    v106 = v108;
    v64 = v9;
    if (PHSignpostEventsEnabled_onceToken != -1)
    {
      dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
    }

    if (PHSignpostEventsEnabled_eventsEnabled == 1)
    {
      v65 = [v64 signpostID];
      if ((v65 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v66 = v65;
        v67 = PLImageManagerGetLog();
        v68 = [v64 managerID];
        v69 = [v64 requestID];
        v70 = [v64 requestIndex];
        if (os_signpost_enabled(v67))
        {
          *v109 = 134218752;
          *&v109[4] = v68;
          *&v109[12] = 2048;
          *&v109[14] = v69;
          *&v109[22] = 2048;
          v110 = v70;
          LOWORD(v111) = 2048;
          *(&v111 + 2) = 34;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v67, OS_SIGNPOST_EVENT, v66, "RequestEvent", "Change: [%lu-%lu-%lu], state: %lu", v109, 0x2Au);
        }
      }
    }

    v71 = [v64 behaviorSpec];
    v72 = v71;
    if (v61)
    {
      v73 = [v71 isNetworkAccessAllowed];
      if ((v63 | v73))
      {
        if (v73)
        {
          v74 = PLImageManagerGetLog();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            v75 = [v64 identifierString];
            *v109 = 138412290;
            *&v109[4] = v75;
            _os_log_impl(&dword_19C86F000, v74, OS_LOG_TYPE_DEBUG, "[RM]: %@ remotely available, requesting availability change", v109, 0xCu);
          }

          if (PHImageManagerRecordEnabled())
          {
            v97 = [v64 requestID];
            v98 = [v64 identifierString];
            [PHImageManagerRequestTracer traceMessageForRequestID:v97 message:@"[RM]: %@ remotely available, requesting availability change", v98];
          }

          if (![v106 recipeID])
          {
            [v64 recordMetricsWithMetricsHandler:&__block_literal_global_217];
          }

LABEL_56:
          objc_initWeak(buf, v64);
          *v109 = MEMORY[0x1E69E9820];
          *&v109[8] = 3221225472;
          *&v109[16] = ___chooserDidPresentResourceIdentity_block_invoke_2;
          v110 = &unk_1E75A3E80;
          objc_copyWeak(&v111 + 1, buf);
          *&v111 = v106;
          v82 = [v64 sendMakeAvailableRequestForResource:v111 reply:v109];
          if ([v64[30] isSynchronous])
          {
            dispatch_semaphore_wait(v64[24], 0xFFFFFFFFFFFFFFFFLL);
            _finishRequest(v64);
          }

          objc_destroyWeak(&v111 + 1);
          objc_destroyWeak(buf);
          goto LABEL_70;
        }

LABEL_52:
        v80 = PLImageManagerGetLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v81 = [v64 identifierString];
          *v109 = 138412290;
          *&v109[4] = v81;
          _os_log_impl(&dword_19C86F000, v80, OS_LOG_TYPE_DEBUG, "[RM]: %@ locally generatable, requesting availability change", v109, 0xCu);
        }

        if (PHImageManagerRecordEnabled())
        {
          v95 = [v64 requestID];
          v96 = [v64 identifierString];
          [PHImageManagerRequestTracer traceMessageForRequestID:v95 message:@"[RM]: %@ locally generatable, requesting availability change", v96];
        }

        goto LABEL_56;
      }

      if (([v72 isNetworkAccessAllowed] & 1) == 0)
      {
        [v64[19] setIsInCloud:1];
        v87 = v64[19];
        v88 = PHNetworkAccessAllowedRequiredError();
        [v87 setErrorIfNone:v88];

        v89 = PLImageManagerGetLog();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          v90 = [v64 identifierString];
          *v109 = 138412290;
          *&v109[4] = v90;
          _os_log_impl(&dword_19C86F000, v89, OS_LOG_TYPE_DEBUG, "[RM]: %@ remotely available but network access not allowed", v109, 0xCu);
        }

        if (!PHImageManagerRecordEnabled())
        {
          goto LABEL_69;
        }

        v99 = [v64 requestID];
        v86 = [v64 identifierString];
        [PHImageManagerRequestTracer traceMessageForRequestID:v99 message:@"[RM]: %@ remotely available but network access not allowed", v86];
        goto LABEL_73;
      }
    }

    else if (v63)
    {
      goto LABEL_52;
    }

    v83 = PLImageManagerGetLog();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      v84 = [v64 identifierString];
      *v109 = 138412290;
      *&v109[4] = v84;
      _os_log_impl(&dword_19C86F000, v83, OS_LOG_TYPE_DEBUG, "[RM]: %@ nothing remotely available nor locally generatable", v109, 0xCu);
    }

    if (!PHImageManagerRecordEnabled())
    {
      goto LABEL_69;
    }

    v85 = [v64 requestID];
    v86 = [v64 identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v85 message:@"[RM]: %@ nothing remotely available nor locally generatable", v86];
LABEL_73:

LABEL_69:
    _finishRequest(v64);
LABEL_70:

    goto LABEL_71;
  }

  v49 = [v9 behaviorSpec];
  v50 = [v49 choosingPolicy];
  if (v50 <= 4 && ((1 << v50) & 0x19) != 0)
  {

    v51 = PLImageManagerGetLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v9 identifierString];
      v53 = [v9 behaviorSpec];
      v54 = [v9 asset];
      v55 = [v54 uuid];
      *v109 = 138543874;
      *&v109[4] = v52;
      *&v109[12] = 2114;
      *&v109[14] = v53;
      *&v109[22] = 2114;
      v110 = v55;
      _os_log_impl(&dword_19C86F000, v51, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ no resource found matching image request spec %{public}@, for asset %{public}@", v109, 0x20u);
    }

    v56 = v9[19];
    v57 = MEMORY[0x1E696ABC0];
    *buf = *MEMORY[0x1E696A278];
    *v109 = @"No resource found matching image request spec";
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:buf count:1];
    v59 = [v57 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v58];
    [v56 setErrorIfNone:v59];
  }

  else
  {
  }

  _finishRequest(v9);
LABEL_71:
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PHMediaRequest *)self identifierString];
  v6 = [(PHMediaRequest *)self asset];
  v7 = [v6 uuid];
  if ([(PHImageRequest *)self isSynchronous])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v9 = [(PHImageRequest *)self displaySpec];
  v10 = [v9 shortDescription];
  v11 = [(PHImageRequest *)self behaviorSpec];
  v12 = [v11 shortDescription];
  v13 = [v15 stringWithFormat:@"<%@ %p> %@ - asset: %@, sync: %@, display: (%@), behavior: (%@)", v4, self, v5, v7, v8, v10, v12];

  return v13;
}

- (void)configureWithURL:(id)a3 uniformTypeIdentifier:(id)a4 exifOrientation:(int)a5
{
  v8 = a3;
  v9 = a4;
  configuredImageURL = self->_configuredImageURL;
  self->_configuredImageURL = v8;
  v11 = v8;

  configuredImageUTI = self->_configuredImageUTI;
  self->_configuredImageUTI = v9;

  self->_configuredExifOrientation = a5;
}

- (void)handleAvailabilityChangeForResource:(id)a3 url:(id)a4 info:(id)a5 error:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  behaviorSpec = self->_behaviorSpec;
  v14 = a6;
  if ([(PHImageRequestBehaviorSpec *)behaviorSpec isSynchronous])
  {
    v15 = v38;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v16 = __69__PHImageRequest_handleAvailabilityChangeForResource_url_info_error___block_invoke;
  }

  else
  {
    v15 = aBlock;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v16 = __69__PHImageRequest_handleAvailabilityChangeForResource_url_info_error___block_invoke_2;
  }

  v15[2] = v16;
  v15[3] = &unk_1E75AB270;
  v15[4] = self;
  v17 = _Block_copy(v15);
  [(PHCompositeMediaResult *)self->_imageResult setError:v14];

  [(PHCompositeMediaResult *)self->_imageResult addInfoFromDictionary:v12];
  v18 = PLImageManagerGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = [(PHMediaRequest *)self identifierString];
    *buf = 138412546;
    v40 = v19;
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "[RM]: %@ Image request handling resource availabilty at url: %@", buf, 0x16u);
  }

  if (PHImageManagerRecordEnabled())
  {
    v32 = [(PHMediaRequest *)self requestID];
    v33 = [(PHMediaRequest *)self identifierString];
    [PHImageManagerRequestTracer traceMessageForRequestID:v32 message:@"[RM]: %@ Image request handling resource availabilty at url: %@", v33, v11];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else if (!v11)
  {
    goto LABEL_16;
  }

  if (![(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadDataOrURL])
  {
    goto LABEL_13;
  }

  v20 = [(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadURL];
  v21 = [(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadData];
  v22 = [v12 objectForKeyedSubscript:@"PHImageFileUTIKey"];
  v23 = [v12 objectForKeyedSubscript:@"PHImageFileOrientationKey"];
  if (!v23)
  {
    URLIntoResult = _loadURLIntoResult(v20, v21, v11, v22, -1, self);

    if (URLIntoResult)
    {
      goto LABEL_13;
    }

LABEL_16:
    v17[2](v17);
    goto LABEL_17;
  }

  v24 = v23;
  [v12 objectForKeyedSubscript:@"PHImageFileOrientationKey"];
  v25 = v34 = v10;
  [v25 integerValue];
  v26 = PLExifOrientationFromImageOrientation();
  v27 = _loadURLIntoResult(v20, v21, v11, v22, v26, self);

  v10 = v34;
  if (!v27)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (![(PHImageRequestBehaviorSpec *)self->_behaviorSpec shouldLoadImage])
  {
    goto LABEL_16;
  }

  v29 = MEMORY[0x1E69BE540];
  v30 = [v10 uniformTypeIdentifier];
  v31 = [v30 identifier];
  LODWORD(v29) = [v29 isPrimaryImageFormatForUTI:v31];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __69__PHImageRequest_handleAvailabilityChangeForResource_url_info_error___block_invoke_72;
  v35[3] = &unk_1E75A3DC0;
  v35[4] = self;
  v36 = v17;
  PHDecodeImageFromURLForRequest(v11, v29, self, v35, self->_desiredImageSize.width, self->_desiredImageSize.height);

LABEL_17:
}

void __69__PHImageRequest_handleAvailabilityChangeForResource_url_info_error___block_invoke_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (a2)
  {
    [*(*(a1 + 32) + 152) setImageRef:a2];
    if (a3)
    {
      [*(*(a1 + 32) + 152) setHighDynamicRangeGainMap:a3 orientation:a4 averagePixelLuminance:v9];
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __30__PHImageRequest_startRequest__block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (PHSignpostEventsEnabled_onceToken != -1)
    {
      dispatch_once(&PHSignpostEventsEnabled_onceToken, &__block_literal_global_49262);
    }

    if (PHSignpostEventsEnabled_eventsEnabled == 1)
    {
      v4 = [*(a1 + 32) signpostID];
      if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        v6 = PLImageManagerGetLog();
        v7 = [*(a1 + 32) managerID];
        v8 = [*(a1 + 32) requestID];
        v9 = [*(a1 + 32) requestIndex];
        if (os_signpost_enabled(v6))
        {
          *buf = 134218752;
          v20 = v7;
          v21 = 2048;
          v22 = v8;
          v23 = 2048;
          v24 = v9;
          v25 = 2048;
          v26 = 33;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_EVENT, v5, "RequestEvent", "Change: [%lu-%lu-%lu], state: %lu", buf, 0x2Au);
        }
      }
    }

    v10 = PLImageManagerGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [*(a1 + 32) identifierString];
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "[RM][cache]: %@ request vended image from cache", buf, 0xCu);
    }

    if (PHImageManagerRecordEnabled())
    {
      v15 = [*(a1 + 32) requestID];
      v16 = [*(a1 + 32) identifierString];
      [PHImageManagerRequestTracer traceMessageForRequestID:v15 message:@"[RM][cache]: %@ request vended image from cache", v16];
    }

    [*(*(a1 + 32) + 152) setImageRef:a2];
    v12 = [*(a1 + 32) delegate];
    [v12 mediaRequest:*(a1 + 32) didFinishWithResult:*(*(a1 + 32) + 152)];
  }

  else
  {
    v13 = PLImageManagerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [*(a1 + 32) identifierString];
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "[RM][cache]: %@ cache request was cancelled or errored, restarting request", buf, 0xCu);
    }

    if (PHImageManagerRecordEnabled())
    {
      v17 = [*(a1 + 32) requestID];
      v18 = [*(a1 + 32) identifierString];
      [PHImageManagerRequestTracer traceMessageForRequestID:v17 message:@"[RM][cache]: %@ cache request was cancelled or errored, restarting request", v18];
    }

    *(*(a1 + 32) + 184) = 1;
    [*(a1 + 32) startRequest];
  }
}

- (void)configureWithError:(id)a3
{
  v5.receiver = self;
  v5.super_class = PHImageRequest;
  v4 = a3;
  [(PHMediaRequest *)&v5 configureWithError:v4];
  [(PHCompositeMediaResult *)self->_imageResult setError:v4, v5.receiver, v5.super_class];
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  v3.receiver = self;
  v3.super_class = PHImageRequest;
  [(PHMediaRequest *)&v3 cancel];
  [(PHImageDecoderAsyncDecodeRequestHandle *)self->_asyncDecodeRequestHandle cancel];
  os_unfair_lock_unlock(&self->_lock);
}

- (PHImageRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 displaySpec:(id)a8 behaviorSpec:(id)a9 chooser:(id)a10 delegate:(id)a11
{
  v15 = *&a3;
  v29 = a8;
  v17 = a9;
  v28 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = PHImageRequest;
  v19 = v15;
  v20 = [(PHMediaRequest *)&v30 initWithRequestID:v15 requestIndex:a4 contextType:a5 managerID:a6 asset:a7 delegate:v18];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_displaySpec, a8);
    objc_storeStrong(&v21->_behaviorSpec, a9);
    v21->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v21->_imageDelegate, v18);
    v22 = [(PHCompositeMediaResult *)[PHImageResult alloc] initWithRequestID:v19];
    imageResult = v21->_imageResult;
    v21->_imageResult = v22;

    objc_storeStrong(&v21->_chooser, a10);
    if ([v17 isSynchronous])
    {
      v24 = dispatch_semaphore_create(0);
      syncDownloadWaitSemaphore = v21->_syncDownloadWaitSemaphore;
      v21->_syncDownloadWaitSemaphore = v24;
    }
  }

  return v21;
}

- (void)_decodeImageConfiguredWithURL:(id)a3 isPrimaryFormat:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PHImageRequest__decodeImageConfiguredWithURL_isPrimaryFormat___block_invoke;
  v4[3] = &unk_1E75A3D50;
  v4[4] = self;
  PHDecodeImageFromURLForRequest(a3, a4, self, v4, self->_desiredImageSize.width, self->_desiredImageSize.height);
}

void __64__PHImageRequest__decodeImageConfiguredWithURL_isPrimaryFormat___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (a2)
  {
    [*(*(a1 + 32) + 152) setImageRef:a2];
    if (a3)
    {
      [*(*(a1 + 32) + 152) setHighDynamicRangeGainMap:a3 orientation:a4 averagePixelLuminance:v9];
    }
  }

  _finishRequest(*(a1 + 32));
}

@end