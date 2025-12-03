@interface PHVideoRequest
- (PHVideoRequest)initWithRequestID:(int)d requestIndex:(unint64_t)index contextType:(int64_t)type managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec behaviorSpec:(id)behaviorSpec delegate:(id)self0;
- (void)_finish;
- (void)_handleResultVideoURL:(id)l mediaItemMakerData:(id)data fingerPrint:(id)print info:(id)info error:(id)error;
- (void)configureWithError:(id)error;
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
    identifierString = [(PHMediaRequest *)self identifierString];
    asset = [(PHMediaRequest *)self asset];
    uuid = [asset uuid];
    *buf = 138412546;
    v41 = identifierString;
    v42 = 2112;
    v43 = uuid;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "[RM]: %@ Video request running for asset %@", buf, 0x16u);
  }

  asset2 = [(PHMediaRequest *)self asset];
  if (![asset2 isPhotoIris])
  {
    goto LABEL_11;
  }

  asset3 = [(PHMediaRequest *)self asset];
  if ([asset3 canPlayPhotoIris])
  {
    goto LABEL_10;
  }

  behaviorSpec = [(PHVideoRequest *)self behaviorSpec];
  version = [behaviorSpec version];

  if (version)
  {
    goto LABEL_12;
  }

  asset2 = PLImageManagerGetLog();
  if (os_log_type_enabled(asset2, OS_LOG_TYPE_ERROR))
  {
    asset3 = [(PHMediaRequest *)self identifierString];
    asset4 = [(PHMediaRequest *)self asset];
    uuid2 = [asset4 uuid];
    *buf = 138543618;
    v41 = asset3;
    v42 = 2114;
    v43 = uuid2;
    _os_log_impl(&dword_19C86F000, asset2, OS_LOG_TYPE_ERROR, "[RM] %{public}@ video request for unplayable live photo (uuid: %{public}@) will likely fail", buf, 0x16u);

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
    asset5 = [(PHMediaRequest *)self asset];
    pixelWidth = [asset5 pixelWidth];
    asset6 = [(PHMediaRequest *)self asset];
    -[PHImageDisplaySpec requestSizeFromFullSizedWidth:height:](displaySpec, "requestSizeFromFullSizedWidth:height:", pixelWidth, [asset6 pixelHeight]);
    v9 = v15;
    v10 = v16;

    v17 = PLImageManagerGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      identifierString2 = [(PHMediaRequest *)self identifierString];
      v19 = DCIM_NSStringFromCGSize();
      *buf = 138412546;
      v41 = identifierString2;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "[RM]: %@ request sized to %@", buf, 0x16u);
    }
  }

  v20 = [PHVideoXPCRequest alloc];
  identifierString3 = [(PHMediaRequest *)self identifierString];
  asset7 = [(PHMediaRequest *)self asset];
  objectID = [asset7 objectID];
  v24 = [(PHVideoXPCRequest *)v20 initWithTaskIdentifier:identifierString3 assetObjectID:objectID size:self->_behaviorSpec behavior:v9, v10];

  [(PLResourceXPCRequest *)v24 setWantsProgress:[(PHMediaRequest *)self wantsProgress]];
  v25 = PLImageManagerGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    identifierString4 = [(PHMediaRequest *)self identifierString];
    asset8 = [(PHMediaRequest *)self asset];
    uuid3 = [asset8 uuid];
    *buf = 138412546;
    v41 = identifierString4;
    v42 = 2112;
    v43 = uuid3;
    _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEBUG, "[RM] %@ sending video request for asset: %@", buf, 0x16u);
  }

  asset9 = [(PHMediaRequest *)self asset];
  photoLibrary = [asset9 photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];
  resourceAvailabilityClient = [assetsdClient resourceAvailabilityClient];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __30__PHVideoRequest_startRequest__block_invoke;
  v39[3] = &unk_1E75A42B8;
  v39[4] = self;
  v33 = [resourceAvailabilityClient sendVideoRequest:v24 reply:v39];

  if (v33)
  {
    if ([(PHMediaRequest *)self addProgressIfNotCanceled:v33])
    {
      lazyProgressContainer = [(PHMediaRequest *)self lazyProgressContainer];
      [lazyProgressContainer setRequestProgress:v33];
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

- (void)configureWithError:(id)error
{
  v5.receiver = self;
  v5.super_class = PHVideoRequest;
  errorCopy = error;
  [(PHMediaRequest *)&v5 configureWithError:errorCopy];
  [(PHCompositeMediaResult *)self->_videoResult setError:errorCopy, v5.receiver, v5.super_class];
}

- (void)_handleResultVideoURL:(id)l mediaItemMakerData:(id)data fingerPrint:(id)print info:(id)info error:(id)error
{
  lCopy = l;
  dataCopy = data;
  printCopy = print;
  infoCopy = info;
  errorCopy = error;
  if (![(PHMediaRequest *)self isCancelled])
  {
    [(PHVideoResult *)self->_videoResult setVideoURL:lCopy];
    [(PHVideoResult *)self->_videoResult setVideoMediaItemMakerData:dataCopy];
    [(PHVideoResult *)self->_videoResult setFingerPrint:printCopy];
    [(PHCompositeMediaResult *)self->_videoResult setError:errorCopy];
    [(PHCompositeMediaResult *)self->_videoResult addInfoFromDictionary:infoCopy];
  }

  [(PHVideoRequest *)self _finish];
}

- (void)_finish
{
  if ([(PHMediaRequest *)self isCancelled])
  {
    [(PHCompositeMediaResult *)self->_videoResult setCancelled:1];
  }

  delegate = [(PHMediaRequest *)self delegate];
  [delegate mediaRequest:self didFinishWithResult:self->_videoResult];
}

- (PHVideoRequest)initWithRequestID:(int)d requestIndex:(unint64_t)index contextType:(int64_t)type managerID:(unint64_t)iD asset:(id)asset displaySpec:(id)spec behaviorSpec:(id)behaviorSpec delegate:(id)self0
{
  v15 = *&d;
  specCopy = spec;
  behaviorSpecCopy = behaviorSpec;
  v24.receiver = self;
  v24.super_class = PHVideoRequest;
  v18 = [(PHMediaRequest *)&v24 initWithRequestID:v15 requestIndex:index contextType:type managerID:iD asset:asset delegate:delegate];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_displaySpec, spec);
    objc_storeStrong(&v19->_behaviorSpec, behaviorSpec);
    v20 = [(PHCompositeMediaResult *)[PHVideoResult alloc] initWithRequestID:v15];
    videoResult = v19->_videoResult;
    v19->_videoResult = v20;
  }

  return v19;
}

@end