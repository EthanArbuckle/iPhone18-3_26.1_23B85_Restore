@interface PHVideoRequest
- (PHVideoRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 displaySpec:(id)a8 behaviorSpec:(id)a9 delegate:(id)a10;
- (void)_finish;
- (void)_handleResultVideoURL:(id)a3 mediaItemMakerData:(id)a4 fingerPrint:(id)a5 info:(id)a6 error:(id)a7;
- (void)configureWithError:(id)a3;
- (void)startRequest;
@end

@implementation PHVideoRequest

- (void)startRequest
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(PHMediaRequest *)self isCancelled]|| self->super._configurationError)
  {

    [(PHVideoRequest *)self _finish];
    return;
  }

  v3 = PLImageManagerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(PHMediaRequest *)self identifierString];
    v5 = [(PHMediaRequest *)self asset];
    v6 = [v5 uuid];
    *buf = 138412546;
    v41 = v4;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "[RM]: %@ Video request running for asset %@", buf, 0x16u);
  }

  v7 = [(PHMediaRequest *)self asset];
  if (![v7 isPhotoIris])
  {
    goto LABEL_11;
  }

  v8 = [(PHMediaRequest *)self asset];
  if ([v8 canPlayPhotoIris])
  {
    goto LABEL_10;
  }

  v35 = [(PHVideoRequest *)self behaviorSpec];
  v36 = [v35 version];

  if (v36)
  {
    goto LABEL_12;
  }

  v7 = PLImageManagerGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(PHMediaRequest *)self identifierString];
    v37 = [(PHMediaRequest *)self asset];
    v38 = [v37 uuid];
    *buf = 138543618;
    v41 = v8;
    v42 = 2114;
    v43 = v38;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[RM] %{public}@ video request for unplayable live photo (uuid: %{public}@) will likely fail", buf, 0x16u);

LABEL_10:
  }

LABEL_11:

LABEL_12:
  if ([(PHVideoRequestBehaviorSpec *)self->_behaviorSpec deliveryMode])
  {
    v9 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    displaySpec = self->_displaySpec;
    v12 = [(PHMediaRequest *)self asset];
    v13 = [v12 pixelWidth];
    v14 = [(PHMediaRequest *)self asset];
    -[PHImageDisplaySpec requestSizeFromFullSizedWidth:height:](displaySpec, "requestSizeFromFullSizedWidth:height:", v13, [v14 pixelHeight]);
    v9 = v15;
    v10 = v16;

    v17 = PLImageManagerGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(PHMediaRequest *)self identifierString];
      v19 = DCIM_NSStringFromCGSize();
      *buf = 138412546;
      v41 = v18;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "[RM]: %@ request sized to %@", buf, 0x16u);
    }
  }

  v20 = [PHVideoXPCRequest alloc];
  v21 = [(PHMediaRequest *)self identifierString];
  v22 = [(PHMediaRequest *)self asset];
  v23 = [v22 objectID];
  v24 = [(PHVideoXPCRequest *)v20 initWithTaskIdentifier:v21 assetObjectID:v23 size:self->_behaviorSpec behavior:v9, v10];

  [(PLResourceXPCRequest *)v24 setWantsProgress:[(PHMediaRequest *)self wantsProgress]];
  v25 = PLImageManagerGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = [(PHMediaRequest *)self identifierString];
    v27 = [(PHMediaRequest *)self asset];
    v28 = [v27 uuid];
    *buf = 138412546;
    v41 = v26;
    v42 = 2112;
    v43 = v28;
    _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEBUG, "[RM] %@ sending video request for asset: %@", buf, 0x16u);
  }

  v29 = [(PHMediaRequest *)self asset];
  v30 = [v29 photoLibrary];
  v31 = [v30 assetsdClient];
  v32 = [v31 resourceAvailabilityClient];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __30__PHVideoRequest_startRequest__block_invoke;
  v39[3] = &unk_1E75A42B8;
  v39[4] = self;
  v33 = [v32 sendVideoRequest:v24 reply:v39];

  if (v33)
  {
    if ([(PHMediaRequest *)self addProgressIfNotCanceled:v33])
    {
      v34 = [(PHMediaRequest *)self lazyProgressContainer];
      [v34 setRequestProgress:v33];
    }

    else
    {
      [v33 cancel];
    }
  }
}

void __30__PHVideoRequest_startRequest__block_invoke(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v57 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v47 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v15 objectForKeyedSubscript:@"PHImageFileUTIKey"];
  [*(*(a1 + 32) + 136) setUniformTypeIdentifier:v17];

  v18 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
  v19 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
  v20 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
  v21 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69BF390]];
  if (v19)
  {
    v22 = v18 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22 || v20 == 0;
  v45 = v21;
  v46 = v18;
  if (!v23)
  {
    v24 = [[PHAdjustmentData alloc] initWithFormatIdentifier:v18 formatVersion:v19 adjustmentRenderType:v21 data:v20];
    if (v14)
    {
      v25 = [v14 mutableCopy];
    }

    else
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v26 = v25;
    [v25 setObject:v24 forKeyedSubscript:@"PHAdjustmentDataKey"];

    v14 = v26;
  }

  v27 = [v15 objectForKeyedSubscript:@"PHImageRequestResultEligibleForCacheMetricsLogging"];
  v28 = [v27 BOOLValue];

  if (v28)
  {
    v29 = [v15 objectForKeyedSubscript:@"PHImageRequestResultIsLocallyAvailableForCacheMetricsLogging"];
    v30 = [v29 BOOLValue];

    v31 = *(a1 + 32);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __30__PHVideoRequest_startRequest__block_invoke_2;
    v49[3] = &__block_descriptor_33_e39_v16__0__PLCacheMetricsCollectorClient_8l;
    v50 = v30;
    [v31 recordMetricsWithMetricsHandler:v49];
  }

  if (v13 && a2)
  {
    v32 = MEMORY[0x1E69BE730];
    v33 = [*(a1 + 32) asset];
    v48 = 0;
    v34 = [v32 refreshSandboxExtensionForURL:v13 assetID:v33 error:&v48];
    v35 = v48;

    if ((v34 & 1) == 0)
    {
      v36 = PLImageManagerGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v44 = [*(a1 + 32) identifierString];
        v37 = [v13 path];
        *buf = 138543874;
        v52 = v44;
        v53 = 2112;
        v54 = v37;
        v38 = v37;
        v55 = 2112;
        v56 = v35;
        _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, "[RM] %{public}@ video request failed to refresh sandbox extension for path: %@, error; %@", buf, 0x20u);
      }

      v39 = v35;
      v13 = 0;
      v16 = v39;
    }

    v40 = v47;

    goto LABEL_22;
  }

  v41 = [*(a1 + 32) delegate];
  v42 = [v41 retryMediaRequest:*(a1 + 32) afterFailureWithError:v16];

  v40 = v47;
  if ((v42 & 1) == 0)
  {
LABEL_22:
    v43 = [v15 objectForKeyedSubscript:@"PHImageResultFingerPrintKey"];
    [*(a1 + 32) _handleResultVideoURL:v13 mediaItemMakerData:v40 fingerPrint:v43 info:v14 error:v16];
  }
}

uint64_t __30__PHVideoRequest_startRequest__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    return [a2 incrementVideoComplementCacheHitCount];
  }

  else
  {
    return [a2 incrementVideoComplementCacheMissCount];
  }
}

- (void)configureWithError:(id)a3
{
  v5.receiver = self;
  v5.super_class = PHVideoRequest;
  v4 = a3;
  [(PHMediaRequest *)&v5 configureWithError:v4];
  [(PHCompositeMediaResult *)self->_videoResult setError:v4, v5.receiver, v5.super_class];
}

- (void)_handleResultVideoURL:(id)a3 mediaItemMakerData:(id)a4 fingerPrint:(id)a5 info:(id)a6 error:(id)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (![(PHMediaRequest *)self isCancelled])
  {
    [(PHVideoResult *)self->_videoResult setVideoURL:v16];
    [(PHVideoResult *)self->_videoResult setVideoMediaItemMakerData:v12];
    [(PHVideoResult *)self->_videoResult setFingerPrint:v13];
    [(PHCompositeMediaResult *)self->_videoResult setError:v15];
    [(PHCompositeMediaResult *)self->_videoResult addInfoFromDictionary:v14];
  }

  [(PHVideoRequest *)self _finish];
}

- (void)_finish
{
  if ([(PHMediaRequest *)self isCancelled])
  {
    [(PHCompositeMediaResult *)self->_videoResult setCancelled:1];
  }

  v3 = [(PHMediaRequest *)self delegate];
  [v3 mediaRequest:self didFinishWithResult:self->_videoResult];
}

- (PHVideoRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 displaySpec:(id)a8 behaviorSpec:(id)a9 delegate:(id)a10
{
  v15 = *&a3;
  v23 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = PHVideoRequest;
  v18 = [(PHMediaRequest *)&v24 initWithRequestID:v15 requestIndex:a4 contextType:a5 managerID:a6 asset:a7 delegate:a10];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_displaySpec, a8);
    objc_storeStrong(&v19->_behaviorSpec, a9);
    v20 = [(PHCompositeMediaResult *)[PHVideoResult alloc] initWithRequestID:v15];
    videoResult = v19->_videoResult;
    v19->_videoResult = v20;
  }

  return v19;
}

@end