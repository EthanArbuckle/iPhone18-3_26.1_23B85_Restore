@interface PHContentEditingInputRequestContext
+ (BOOL)shouldUseRAWResourceAsUnadjustedBaseForAsset:(id)asset options:(id)options;
+ (id)contentEditingInputRequestContextForAsset:(id)asset requestID:(int)d managerID:(unint64_t)iD networkAccessAllowed:(BOOL)allowed downloadIntent:(int64_t)intent progressHandler:(id)handler resultHandler:(id)resultHandler;
- (BOOL)_shouldRequestImage;
- (BOOL)_shouldRequestVideo;
- (PHContentEditingInputRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options useRAWAsUnadjustedBase:(BOOL)base resultHandler:(id)handler;
- (id)_assetResourceForType:(int64_t)type;
- (id)_assetResources;
- (id)_baseMediaRequestsForBaseVersion:(int64_t)version error:(id *)error;
- (id)_largestUnadjustedDerivativeImageResource;
- (id)_lazyAdjustmentProgress;
- (id)_lazyImageProgress;
- (id)_lazyVideoProgress;
- (id)_resourceRequestForAssetResource:(id)resource wantsURLOnly:(BOOL)only progress:(id)progress;
- (id)_videoBehaviorSpecForBaseVersion:(int64_t)version;
- (id)initialRequests;
- (id)produceChildRequestsForRequest:(id)request reportingIsLocallyAvailable:(BOOL)available isDegraded:(BOOL)degraded result:(id)result;
- (id)progressHandler;
- (id)progresses;
- (int64_t)_adjustmentBaseVersionFromResult:(id)result request:(id)request canHandleAdjustmentData:(BOOL *)data;
- (int64_t)_assetResourceTypeForResourceType:(unsigned int)type withBaseVersion:(int64_t)version;
- (int64_t)downloadIntent;
- (void)_prepareAndAddMediaRequestsToChildRequests:(id)requests;
- (void)_renderTemporaryVideoForObjectBuilder:(id)builder resultHandler:(id)handler;
- (void)_renderVideoFromVideoURL:(id)l asset:(id)asset adjustmentData:(id)data canHandleAdjustmentData:(BOOL)adjustmentData resultHandler:(id)handler;
- (void)cancel;
- (void)processAndReturnResultsWithRequest:(id)request;
- (void)processMediaResult:(id)result forRequest:(id)request;
- (void)start;
@end

@implementation PHContentEditingInputRequestContext

- (void)processMediaResult:(id)result forRequest:(id)request
{
  v88[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  requestCopy = request;
  if ([resultCopy isInCloud])
  {
    if (([resultCopy containsValidData] & 1) == 0)
    {
      error = [resultCopy error];

      if (!error)
      {
        options = [(PHContentEditingInputRequestContext *)self options];
        isNetworkAccessAllowed = [options isNetworkAccessAllowed];

        if (isNetworkAccessAllowed)
        {
          v12 = MEMORY[0x1E696ABC0];
          v87 = *MEMORY[0x1E696A578];
          v88[0] = @"Download failed";
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
          v14 = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v13];
          [resultCopy setError:v14];
        }

        else
        {
          v15 = PHNetworkAccessAllowedRequiredError();
          [resultCopy setError:v15];
        }
      }
    }
  }

  if (self->_adjustmentRequest == requestCopy)
  {
    v21 = PLImageManagerGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      identifierString = [(PHMediaRequest *)requestCopy identifierString];
      info = [resultCopy info];
      *buf = 138412802;
      v82 = identifierString;
      v83 = 2112;
      resourceType2 = resultCopy;
      v85 = 2112;
      v86 = info;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "[RM] %@ Content editing adjustment data request finished with result: %@, info: %@", buf, 0x20u);
    }

    _lazyAdjustmentProgress = [(PHContentEditingInputRequestContext *)self _lazyAdjustmentProgress];
    [(PHAdjustmentDataRequest *)_lazyAdjustmentProgress setCompletedUnitCount:[(PHAdjustmentDataRequest *)_lazyAdjustmentProgress totalUnitCount]];
    os_unfair_lock_lock(&self->_lock);
    [(PHContentEditingInputResult *)self->_contentEditingInputResult addAdjustmentDataResult:resultCopy];
    v24 = self->_inflightMediaRequestCount - 1;
    self->_inflightMediaRequestCount = v24;
    os_unfair_lock_unlock(&self->_lock);
    if (v24)
    {
      goto LABEL_53;
    }

    selfCopy2 = self;
    v26 = requestCopy;
    goto LABEL_52;
  }

  if (self->_displayImageRequest == requestCopy)
  {
    v27 = PLImageManagerGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      identifierString2 = [(PHMediaRequest *)requestCopy identifierString];
      info2 = [resultCopy info];
      *buf = 138412802;
      v82 = identifierString2;
      v83 = 2112;
      resourceType2 = resultCopy;
      v85 = 2112;
      v86 = info2;
      _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_DEBUG, "[RM] %@ Content editing image request finished with result: %@, info: %@", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(PHContentEditingInputResult *)self->_contentEditingInputResult addImageResult:resultCopy];
LABEL_67:
    v64 = self->_inflightMediaRequestCount - 1;
    self->_inflightMediaRequestCount = v64;
    os_unfair_lock_unlock(&self->_lock);
    if (v64)
    {
      goto LABEL_69;
    }

LABEL_68:
    [(PHContentEditingInputRequestContext *)self processAndReturnResultsWithRequest:requestCopy];
    goto LABEL_69;
  }

  if (self->_videoRequest != requestCopy)
  {
    if ([(NSMutableIndexSet *)self->_requestIndexesOfAssetResourceRequests containsIndex:[(PHMediaRequest *)requestCopy requestIndex]])
    {
      _lazyAdjustmentProgress = requestCopy;
      if (([resultCopy containsValidData] & 1) == 0)
      {
        v52 = PLImageManagerGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          error2 = [resultCopy error];
          *buf = 138412290;
          v82 = error2;
          _os_log_impl(&dword_19C86F000, v52, OS_LOG_TYPE_ERROR, "Media resource request failed to return valid data or url with error: %@", buf, 0xCu);
        }

        error3 = [resultCopy error];

        if (!error3)
        {
          v55 = MEMORY[0x1E696ABC0];
          v79 = *MEMORY[0x1E696A278];
          v56 = MEMORY[0x1E696AEC0];
          identifierString3 = [(PHMediaRequest *)_lazyAdjustmentProgress identifierString];
          v58 = [v56 stringWithFormat:@"request %@ failed but did not provide error, ", identifierString3];
          v80 = v58;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v60 = [v55 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v59];
          [resultCopy setError:v60];
        }

        [(PHContentEditingInputResult *)self->_contentEditingInputResult mergeInfoDictionaryFromResult:resultCopy];
        goto LABEL_50;
      }

      resourceType = [(PHAdjustmentDataRequest *)_lazyAdjustmentProgress resourceType];
      if (resourceType > 102)
      {
        if ((resourceType - 104) < 2)
        {
          adjustmentData = PLImageManagerGetLog();
          if (!os_log_type_enabled(adjustmentData, OS_LOG_TYPE_DEBUG))
          {
LABEL_90:

            goto LABEL_50;
          }

          identifierString4 = [(PHMediaRequest *)_lazyAdjustmentProgress identifierString];
          *buf = 138412290;
          v82 = identifierString4;
          v71 = "[RM] %@ Content editing found renderable media metadata";
          v72 = adjustmentData;
          v73 = OS_LOG_TYPE_DEBUG;
          v74 = 12;
LABEL_89:
          _os_log_impl(&dword_19C86F000, v72, v73, v71, buf, v74);

          goto LABEL_90;
        }

        if (resourceType == 103)
        {
LABEL_16:
          if ([(PHMediaRequest *)_lazyAdjustmentProgress requestIndex]== self->_imageBaseRequestIndex)
          {
            v18 = PLImageManagerGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              identifierString5 = [(PHMediaRequest *)_lazyAdjustmentProgress identifierString];
              info3 = [resultCopy info];
              *buf = 138412802;
              v82 = identifierString5;
              v83 = 2112;
              resourceType2 = resultCopy;
              v85 = 2112;
              v86 = info3;
              _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "[RM] %@ Content editing resource request for base image finished with result: %@, info: %@", buf, 0x20u);
            }

            [(PHContentEditingInputResult *)self->_contentEditingInputResult addImageResult:resultCopy];
          }

          goto LABEL_50;
        }

        if (resourceType == 110)
        {
          os_unfair_lock_lock(&self->_lock);
          [(PHContentEditingInputResult *)self->_contentEditingInputResult addAdjustmentSecondaryDataResult:resultCopy];
          os_unfair_lock_unlock(&self->_lock);
          goto LABEL_50;
        }
      }

      else if (resourceType <= 0x10)
      {
        if (((1 << resourceType) & 0xFE44) == 0)
        {
          if (((1 << resourceType) & 0x132) != 0)
          {
            goto LABEL_16;
          }

          if (resourceType == 16)
          {
            adjustmentData = [resultCopy adjustmentData];
            [(PHContentEditingInputResult *)self->_contentEditingInputResult setOriginalAdjustmentData:adjustmentData];
            goto LABEL_90;
          }

          goto LABEL_87;
        }

LABEL_50:
        os_unfair_lock_lock(&self->_lock);
        v61 = self->_inflightMediaRequestCount - 1;
        self->_inflightMediaRequestCount = v61;
        os_unfair_lock_unlock(&self->_lock);
        if (v61)
        {
LABEL_53:

          goto LABEL_69;
        }

        selfCopy2 = self;
        v26 = _lazyAdjustmentProgress;
LABEL_52:
        [(PHContentEditingInputRequestContext *)selfCopy2 processAndReturnResultsWithRequest:v26];
        goto LABEL_53;
      }

LABEL_87:
      adjustmentData = PLImageManagerGetLog();
      if (!os_log_type_enabled(adjustmentData, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      identifierString4 = [(PHMediaRequest *)_lazyAdjustmentProgress identifierString];
      *buf = 138412546;
      v82 = identifierString4;
      v83 = 2048;
      resourceType2 = [(PHAdjustmentDataRequest *)_lazyAdjustmentProgress resourceType];
      v71 = "[RM] %@ Content editing made request for invalid resource type for edit: %lu";
      v72 = adjustmentData;
      v73 = OS_LOG_TYPE_ERROR;
      v74 = 22;
      goto LABEL_89;
    }

    if (self->_repairRequest == requestCopy)
    {
      v37 = PLImageManagerGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        identifierString6 = [(PHMediaRequest *)requestCopy identifierString];
        error4 = [resultCopy error];
        if (error4)
        {
          v40 = MEMORY[0x1E696AEC0];
          error5 = [resultCopy error];
          v41 = [v40 stringWithFormat:@" with error: %@", error5];
        }

        else
        {
          v41 = &stru_1F0FC60C8;
        }

        *buf = 138412546;
        v82 = identifierString6;
        v83 = 2112;
        resourceType2 = v41;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_DEFAULT, "[RM] %@ repair request finished%@", buf, 0x16u);
        if (error4)
        {
        }
      }
    }

    os_unfair_lock_lock(&self->_lock);
    goto LABEL_67;
  }

  v30 = PLImageManagerGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    identifierString7 = [(PHMediaRequest *)requestCopy identifierString];
    info4 = [resultCopy info];
    *buf = 138412802;
    v82 = identifierString7;
    v83 = 2112;
    resourceType2 = resultCopy;
    v85 = 2112;
    v86 = info4;
    _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEBUG, "[RM] %@ Content editing video request finished with result: %@, info: %@", buf, 0x20u);
  }

  if (![resultCopy containsValidData])
  {
    os_unfair_lock_lock(&self->_lock);
    v42 = self->_inflightMediaRequestCount - 1;
    self->_inflightMediaRequestCount = v42;
    asset = [(PHMediaRequestContext *)self asset];
    if ([asset isPhotoIris])
    {
      asset2 = [(PHMediaRequestContext *)self asset];
      if (![asset2 canPlayPhotoIris])
      {
        behaviorSpec = [(PHVideoRequest *)self->_videoRequest behaviorSpec];
        version = [behaviorSpec version];

        if (version != 1)
        {
          v49 = PLImageManagerGetLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            identifierString8 = [(PHMediaRequest *)requestCopy identifierString];
            *buf = 138412290;
            v82 = identifierString8;
            v51 = "[RM] %@ Live photo edit request continuing with missing video, reason: unplayable";
            goto LABEL_77;
          }

LABEL_78:

          goto LABEL_81;
        }

LABEL_39:
        asset3 = [(PHMediaRequestContext *)self asset];
        if ([asset3 isPhotoIris])
        {
          behaviorSpec2 = [(PHVideoRequest *)self->_videoRequest behaviorSpec];
          if ([behaviorSpec2 version] == 8)
          {
            error6 = [resultCopy error];
            if ([error6 code] == 3303)
            {
              isInCloud = [resultCopy isInCloud];

              if ((isInCloud & 1) == 0)
              {
                v49 = PLImageManagerGetLog();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  identifierString8 = [(PHMediaRequest *)requestCopy identifierString];
                  *buf = 138412290;
                  v82 = identifierString8;
                  v51 = "[RM] %@ Live photo edit request continuing with missing video, reason: missing penultimate";
LABEL_77:
                  _os_log_impl(&dword_19C86F000, v49, OS_LOG_TYPE_DEFAULT, v51, buf, 0xCu);

                  goto LABEL_78;
                }

                goto LABEL_78;
              }

LABEL_73:
              asset4 = [(PHMediaRequestContext *)self asset];
              if ([asset4 isPhotoIris])
              {
                error7 = [resultCopy error];
                userInfo = [error7 userInfo];
                v68 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BF130]];

                if (v68)
                {
                  v49 = PLImageManagerGetLog();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    identifierString8 = [(PHMediaRequest *)requestCopy identifierString];
                    *buf = 138412290;
                    v82 = identifierString8;
                    v51 = "[RM] %@ Live photo edit request continuing with missing video, reason: zero videos found";
                    goto LABEL_77;
                  }

                  goto LABEL_78;
                }
              }

              else
              {
              }

              [(PHContentEditingInputResult *)self->_contentEditingInputResult addVideoResult:resultCopy];
LABEL_81:
              os_unfair_lock_unlock(&self->_lock);
              if (v42)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            }
          }
        }

        goto LABEL_73;
      }
    }

    goto LABEL_39;
  }

  videoURL = [resultCopy videoURL];
  asset5 = [(PHMediaRequestContext *)self asset];
  videoAdjustmentData = [resultCopy videoAdjustmentData];
  canHandleAdjustmentData = [(PHContentEditingInputResult *)self->_contentEditingInputResult canHandleAdjustmentData];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __69__PHContentEditingInputRequestContext_processMediaResult_forRequest___block_invoke;
  v75[3] = &unk_1E75A9390;
  v76 = resultCopy;
  selfCopy3 = self;
  v78 = requestCopy;
  [(PHContentEditingInputRequestContext *)self _renderVideoFromVideoURL:videoURL asset:asset5 adjustmentData:videoAdjustmentData canHandleAdjustmentData:canHandleAdjustmentData resultHandler:v75];

LABEL_69:
}

void __69__PHContentEditingInputRequestContext_processMediaResult_forRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *(a1 + 32);
  v6 = a3;
  [v9 setVideoURL:a2];
  [v9 setErrorIfNone:v6];

  os_unfair_lock_lock((*(a1 + 40) + 200));
  --*(*(a1 + 40) + 208);
  v7 = *(a1 + 40);
  v8 = *(v7 + 208);
  [*(v7 + 152) addVideoResult:v9];
  os_unfair_lock_unlock((*(a1 + 40) + 200));
  if (!v8)
  {
    [*(a1 + 40) processAndReturnResultsWithRequest:*(a1 + 48)];
  }
}

- (void)processAndReturnResultsWithRequest:(id)request
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = PLImageManagerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 134218240;
    *&v12[4] = [(PHMediaRequestContext *)self managerID];
    v13 = 2048;
    requestID = [(PHMediaRequestContext *)self requestID];
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld All content editing requests complete, building content editing input", v12, 0x16u);
  }

  progressHandler = [(PHContentEditingInputRequestOptions *)self->_options progressHandler];
  if (progressHandler)
  {
    v7 = progressHandler;
    [(PHMediaRequestContext *)self totalProgressFraction];
    v9 = v8;

    if (v9 < 1.0)
    {
      v12[0] = 0;
      progressHandler2 = [(PHContentEditingInputRequestOptions *)self->_options progressHandler];
      (progressHandler2)[2](progressHandler2, v12, 1.0);
    }
  }

  resultHandler = self->super._resultHandler;
  if (resultHandler)
  {
    resultHandler[2](resultHandler, self->_contentEditingInputResult, requestCopy, self);
  }
}

- (id)progresses
{
  v3 = MEMORY[0x1E695DF70];
  _lazyAdjustmentProgress = [(PHContentEditingInputRequestContext *)self _lazyAdjustmentProgress];
  v5 = [v3 arrayWithObject:_lazyAdjustmentProgress];

  if ([(PHContentEditingInputRequestContext *)self _shouldRequestImage])
  {
    _lazyImageProgress = [(PHContentEditingInputRequestContext *)self _lazyImageProgress];
    [v5 addObject:_lazyImageProgress];
  }

  if ([(PHContentEditingInputRequestContext *)self _shouldRequestVideo])
  {
    _lazyVideoProgress = [(PHContentEditingInputRequestContext *)self _lazyVideoProgress];
    [v5 addObject:_lazyVideoProgress];
  }

  return v5;
}

- (id)progressHandler
{
  progressHandler = [(PHContentEditingInputRequestOptions *)self->_options progressHandler];
  v3 = progressHandler;
  if (progressHandler)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__PHContentEditingInputRequestContext_progressHandler__block_invoke;
    aBlock[3] = &unk_1E75A9368;
    v7 = progressHandler;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)produceChildRequestsForRequest:(id)request reportingIsLocallyAvailable:(BOOL)available isDegraded:(BOOL)degraded result:(id)result
{
  v75 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultCopy = result;
  isCancelled = [(PHMediaRequestContext *)self isCancelled];
  array = 0;
  if (resultCopy && !isCancelled)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (self->_adjustmentRequest == requestCopy)
    {
      v72 = 0;
      v25 = [(PHContentEditingInputRequestContext *)self _adjustmentBaseVersionFromResult:resultCopy request:requestCopy canHandleAdjustmentData:&v72];
      contentEditingInputResult = self->_contentEditingInputResult;
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
      [(PHContentEditingInputResult *)contentEditingInputResult setBaseVersionNeeded:v27];

      [(PHContentEditingInputResult *)self->_contentEditingInputResult setCanHandleAdjustmentData:v72];
      if (!v25)
      {
        v28 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:16];
        if (v28)
        {
          _lazyAdjustmentProgress = [(PHContentEditingInputRequestContext *)self _lazyAdjustmentProgress];
          v30 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v28 wantsURLOnly:0 progress:_lazyAdjustmentProgress];

          [array addObject:v30];
          v31 = PLImageManagerGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            identifierString = [v30 identifierString];
            *buf = 138412290;
            v74 = identifierString;
            _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_DEBUG, "[RM] %@ Base version is unadjusted, starting request for original adjustment envelope", buf, 0xCu);
          }
        }
      }

      if (![(PHContentEditingInputRequestContext *)self _canSkipMediaMetadataCheckWithBaseVersion:v25])
      {
        v33 = v25 ? 105 : 104;
        v34 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:v33];
        if (v34)
        {
          v35 = v34;
          v36 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v34 wantsURLOnly:0 progress:0];
          [array addObject:v36];

LABEL_31:
          os_unfair_lock_lock(&self->_lock);
          self->_inflightMediaRequestCount += [array count];
          os_unfair_lock_unlock(&self->_lock);
          goto LABEL_32;
        }
      }
    }

    else if (self->_repairRequest == requestCopy)
    {
      asset = [(PHMediaRequestContext *)self asset];
      v38 = [PHAssetResource assetResourcesForAsset:asset includeDerivatives:1 includeMetadata:1];
      assetResources = self->_assetResources;
      self->_assetResources = v38;
    }

    else if (![(NSMutableIndexSet *)self->_requestIndexesOfAssetResourceRequests containsIndex:[(PHMediaRequest *)requestCopy requestIndex]]|| [(PHRepairRequest *)requestCopy resourceType]!= 104 && [(PHRepairRequest *)requestCopy resourceType]!= 105)
    {
      if ([(PHMediaRequest *)requestCopy requestIndex]== self->_imageBaseRequestIndex)
      {
        imageURL = [resultCopy imageURL];

        if (imageURL)
        {
          v13 = requestCopy;
          v14 = MEMORY[0x1E6982C40];
          uniformTypeIdentifier = [resultCopy uniformTypeIdentifier];
          v16 = [v14 typeWithIdentifier:uniformTypeIdentifier];
          v17 = [v16 conformsToType:*MEMORY[0x1E6982F88]];

          options = self->_options;
          if (v17)
          {
            canHandleRAW = [(PHContentEditingInputRequestOptions *)options canHandleRAW];

            if (canHandleRAW)
            {
              v20 = [resultCopy imagePropertiesLoadIfNeeded:1];
              canHandleRAW2 = [(PHContentEditingInputRequestOptions *)self->_options canHandleRAW];
              v22 = (canHandleRAW2)[2](canHandleRAW2, v20);

              if ((v22 & 1) == 0)
              {
                v23 = PLImageManagerGetLog();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  identifierString2 = [(PHMediaRequest *)v13 identifierString];
                  *buf = 138412290;
                  v74 = identifierString2;
                  _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEBUG, "[RM] %@ Image request for RAW completed, but client decided that this RAW is invalid, re-requesting JPEG", buf, 0xCu);
                }

                if ([(PHRepairRequest *)v13 resourceType]== 4)
                {
                  [(PHContentEditingInputRequestContext *)self _assetResourceForType:1];
                }

                else
                {
                  [(PHContentEditingInputRequestContext *)self _largestUnadjustedDerivativeImageResource];
                }
                v65 = ;
                if (v65)
                {
                  v66 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v65 wantsURLOnly:1 progress:0];
                  [array addObject:v66];
                  self->_imageBaseRequestIndex = [v66 requestIndex];
                }

                else
                {
                  v66 = PLImageManagerGetLog();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    identifierString3 = [(PHMediaRequest *)v13 identifierString];
                    *buf = 138412290;
                    v74 = identifierString3;
                    _os_log_impl(&dword_19C86F000, v66, OS_LOG_TYPE_ERROR, "%@ Client decided that this RAW is invalid, but no unadjusted JPEG resources available, returning the RAW anyway", buf, 0xCu);
                  }
                }
              }
            }
          }

          else if (![(PHContentEditingInputRequestOptions *)options skipDisplaySizeImage])
          {
            v41 = [PHImageDisplaySpec alloc];
            [(PHContentEditingInputRequestOptions *)self->_options targetSize];
            v71 = [(PHImageDisplaySpec *)v41 initWithTargetSize:[(PHContentEditingInputRequestOptions *)self->_options contentMode] contentMode:v42, v43];
            baseVersionNeeded = [(PHContentEditingInputResult *)self->_contentEditingInputResult baseVersionNeeded];
            integerValue = [baseVersionNeeded integerValue];

            isNetworkAccessAllowed = [(PHContentEditingInputRequestContext *)self isNetworkAccessAllowed];
            v70 = v13;
            downloadIntent = [(PHContentEditingInputRequestContext *)self downloadIntent];
            useRAWAsUnadjustedBase = self->_useRAWAsUnadjustedBase;
            asset2 = [(PHMediaRequestContext *)self asset];
            v50 = [PHImageRequestBehaviorSpec contentEditingInputImageBehaviorSpecForBaseVersion:integerValue isNetworkAccessAllowed:isNetworkAccessAllowed downloadIntent:downloadIntent shouldUseRAWAsUnadjustedBase:useRAWAsUnadjustedBase asset:asset2];

            [v50 setLoadingOptions:1];
            [v50 setResizeMode:2];
            v68 = [PHImageRequest alloc];
            requestID = [(PHMediaRequestContext *)self requestID];
            nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
            managerID = [(PHMediaRequestContext *)self managerID];
            asset3 = [(PHMediaRequestContext *)self asset];
            imageResourceChooser = [(PHMediaRequestContext *)self imageResourceChooser];
            v69 = v50;
            v56 = [(PHImageRequest *)v68 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:4 managerID:managerID asset:asset3 displaySpec:v71 behaviorSpec:v50 chooser:imageResourceChooser delegate:self];
            displayImageRequest = self->_displayImageRequest;
            self->_displayImageRequest = v56;

            v13 = v70;
            v58 = MEMORY[0x1E69BE540];
            resource = [(PHRepairRequest *)v70 resource];
            uniformTypeIdentifier2 = [resource uniformTypeIdentifier];
            LODWORD(v58) = [v58 isPrimaryImageFormatForUTI:uniformTypeIdentifier2];

            if (v58)
            {
              v61 = self->_displayImageRequest;
              imageURL2 = [resultCopy imageURL];
              uniformTypeIdentifier3 = [resultCopy uniformTypeIdentifier];
              exifOrientation = [resultCopy exifOrientation];
              -[PHImageRequest configureWithURL:uniformTypeIdentifier:exifOrientation:](v61, "configureWithURL:uniformTypeIdentifier:exifOrientation:", imageURL2, uniformTypeIdentifier3, [exifOrientation intValue]);
            }

            [array addObject:self->_displayImageRequest];
          }
        }
      }

      goto LABEL_31;
    }

    [(PHContentEditingInputRequestContext *)self _prepareAndAddMediaRequestsToChildRequests:array];
    goto LABEL_31;
  }

LABEL_32:

  return array;
}

- (id)initialRequests
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PHAdjustmentDataRequestBehaviorSpec);
  [(PHAdjustmentDataRequestBehaviorSpec *)v3 setNetworkAccessAllowed:[(PHContentEditingInputRequestOptions *)self->_options isNetworkAccessAllowed]];
  v4 = [PHAdjustmentDataRequest alloc];
  requestID = [(PHMediaRequestContext *)self requestID];
  nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
  type = [(PHContentEditingInputRequestContext *)self type];
  managerID = [(PHMediaRequestContext *)self managerID];
  asset = [(PHMediaRequestContext *)self asset];
  v10 = [(PHAdjustmentDataRequest *)v4 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset behaviorSpec:v3 delegate:self];
  adjustmentRequest = self->_adjustmentRequest;
  self->_adjustmentRequest = v10;

  os_unfair_lock_lock(&self->_lock);
  ++self->_inflightMediaRequestCount;
  os_unfair_lock_unlock(&self->_lock);
  _lazyAdjustmentProgress = [(PHContentEditingInputRequestContext *)self _lazyAdjustmentProgress];
  identifierString = [(PHMediaRequest *)self->_adjustmentRequest identifierString];
  [(PHMediaRequestContext *)self setProgress:_lazyAdjustmentProgress forRequestIdentifier:identifierString];

  v16[0] = self->_adjustmentRequest;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  return v14;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = PHContentEditingInputRequestContext;
  [(PHMediaRequestContext *)&v3 cancel];
  os_unfair_lock_lock(&self->_lock);
  [(PHCompositeMediaResult *)self->_contentEditingInputResult setCancelled:1];
  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)downloadIntent
{
  result = [(PHContentEditingInputRequestOptions *)self->_options downloadIntent];
  if (!result)
  {
    return 4;
  }

  return result;
}

- (void)start
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = PLImageManagerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    managerID = [(PHMediaRequestContext *)self managerID];
    requestID = [(PHMediaRequestContext *)self requestID];
    asset = [(PHMediaRequestContext *)self asset];
    uuid = [asset uuid];
    options = [(PHContentEditingInputRequestContext *)self options];
    v6 = @"N";
    v7 = @"Y";
    if ([options isNetworkAccessAllowed])
    {
      v8 = @"Y";
    }

    else
    {
      v8 = @"N";
    }

    options2 = [(PHContentEditingInputRequestContext *)self options];
    if (![options2 forceRunAsUnadjustedAsset])
    {
      v7 = @"N";
    }

    options3 = [(PHContentEditingInputRequestContext *)self options];
    shouldForceOriginalChoice = [options3 shouldForceOriginalChoice];
    if (shouldForceOriginalChoice)
    {
      v12 = MEMORY[0x1E696AEC0];
      options4 = [(PHContentEditingInputRequestContext *)self options];
      originalChoice = [options4 originalChoice];
      if (originalChoice > 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = off_1E75A71C8[originalChoice];
      }

      v2 = v14;
      v6 = [v12 stringWithFormat:@"Y (%@)", v2];
    }

    *buf = 134350338;
    v22 = managerID;
    v23 = 2050;
    v24 = requestID;
    v25 = 2114;
    v26 = uuid;
    v27 = 2114;
    v28 = v8;
    v29 = 2114;
    v30 = v7;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEFAULT, "[RM] %{public}ld-%{public}ld starting edit request for asset %{public}@, net: %{public}@, force unadjusted: %{public}@, set original choice: %{public}@", buf, 0x3Eu);
    if (shouldForceOriginalChoice)
    {
    }
  }

  v20.receiver = self;
  v20.super_class = PHContentEditingInputRequestContext;
  [(PHMediaRequestContext *)&v20 start];
}

- (id)_resourceRequestForAssetResource:(id)resource wantsURLOnly:(BOOL)only progress:(id)progress
{
  resourceCopy = resource;
  progressCopy = progress;
  if (resourceCopy)
  {
    v28 = progressCopy;
    nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
    v27 = resourceCopy;
    v11 = [PHMediaResourceRequest alloc];
    requestID = [(PHMediaRequestContext *)self requestID];
    type = [(PHContentEditingInputRequestContext *)self type];
    managerID = [(PHMediaRequestContext *)self managerID];
    asset = [(PHMediaRequestContext *)self asset];
    options = [(PHContentEditingInputRequestContext *)self options];
    isNetworkAccessAllowed = [options isNetworkAccessAllowed];
    LOWORD(v26) = only;
    downloadIntent = [(PHContentEditingInputRequestContext *)self downloadIntent];
    LOBYTE(v24) = isNetworkAccessAllowed;
    v18 = v11;
    resourceCopy = v27;
    v19 = [(PHMediaResourceRequest *)v18 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset assetResource:v27 networkAccessAllowed:v24 downloadIntent:downloadIntent downloadPriority:0 wantsURLOnly:v26 synchronous:self delegate:?];

    v20 = nextRequestIndex;
    progressCopy = v28;
    [(NSMutableIndexSet *)self->_requestIndexesOfAssetResourceRequests addIndex:v20];
    if (v28)
    {
      identifierString = [(PHMediaRequest *)v19 identifierString];
      [(PHMediaRequestContext *)self setProgress:v28 forRequestIdentifier:identifierString];
      objc_initWeak(&location, self);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __94__PHContentEditingInputRequestContext__resourceRequestForAssetResource_wantsURLOnly_progress___block_invoke;
      v29[3] = &unk_1E75A9340;
      objc_copyWeak(&v31, &location);
      v22 = identifierString;
      v30 = v22;
      [(PHMediaResourceRequest *)v19 setProgressHandler:v29];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __94__PHContentEditingInputRequestContext__resourceRequestForAssetResource_wantsURLOnly_progress___block_invoke(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained requestWithIdentifier:*(a1 + 32) didReportProgress:a2 completed:v7 error:a4];
}

- (id)_largestUnadjustedDerivativeImageResource
{
  v19 = *MEMORY[0x1E69E9840];
  _assetResources = [(PHContentEditingInputRequestContext *)self _assetResources];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [_assetResources countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v15;
  do
  {
    v7 = 0;
    do
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(_assetResources);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      backingResourceIdentity = [v8 backingResourceIdentity];
      version = [backingResourceIdentity version];

      if (!version)
      {
        if ([v8 cplResourceType] == 2)
        {
          goto LABEL_8;
        }

        if ([v8 cplResourceType] == 3)
        {
          if ([v5 cplResourceType] != 2)
          {
            goto LABEL_8;
          }
        }

        else if ([v8 cplResourceType] == 4 && objc_msgSend(v5, "cplResourceType") != 2 && objc_msgSend(v5, "cplResourceType") != 3)
        {
LABEL_8:
          v11 = v8;

          v5 = v11;
        }
      }

      ++v7;
    }

    while (v4 != v7);
    v12 = [_assetResources countByEnumeratingWithState:&v14 objects:v18 count:16];
    v4 = v12;
  }

  while (v12);
LABEL_21:

  return v5;
}

- (id)_assetResourceForType:(int64_t)type
{
  _assetResources = [(PHContentEditingInputRequestContext *)self _assetResources];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PHContentEditingInputRequestContext__assetResourceForType___block_invoke;
  v8[3] = &__block_descriptor_40_e32_B32__0__PHAssetResource_8Q16_B24l;
  v8[4] = type;
  v5 = [_assetResources indexOfObjectPassingTest:v8];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [_assetResources objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (id)_assetResources
{
  assetResources = self->_assetResources;
  if (!assetResources)
  {
    asset = [(PHMediaRequestContext *)self asset];
    v5 = [PHAssetResource assetResourcesForAsset:asset includeDerivatives:1 includeMetadata:1];
    v6 = self->_assetResources;
    self->_assetResources = v5;

    assetResources = self->_assetResources;
  }

  return assetResources;
}

- (int64_t)_assetResourceTypeForResourceType:(unsigned int)type withBaseVersion:(int64_t)version
{
  if (type == 3)
  {
    v8 = 9;
    if (version == 2)
    {
      v8 = 10;
    }

    v9 = version == 1;
    v10 = 11;
  }

  else
  {
    if (type != 1)
    {
      if (type)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PHContentEditingInputRequestContext.m" lineNumber:575 description:{@"Invalid resource type, valid options are image, video, or video complement"}];
      }

      else
      {
        if (version == 2)
        {
          return 5;
        }

        if (version == 1)
        {
          return 8;
        }

        if (!version && self->_useRAWAsUnadjustedBase)
        {
          asset = [(PHMediaRequestContext *)self asset];
          isRAWPlusJPEG = [asset isRAWPlusJPEG];

          if (isRAWPlusJPEG)
          {
            return 4;
          }

          else
          {
            return 1;
          }
        }
      }

      return 1;
    }

    v8 = 2;
    if (version == 2)
    {
      v8 = 6;
    }

    v9 = version == 1;
    v10 = 12;
  }

  if (v9)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

- (void)_prepareAndAddMediaRequestsToChildRequests:(id)requests
{
  v57 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  baseVersionNeeded = [(PHContentEditingInputResult *)self->_contentEditingInputResult baseVersionNeeded];
  integerValue = [baseVersionNeeded integerValue];

  v48 = 0;
  v7 = [(PHContentEditingInputRequestContext *)self _baseMediaRequestsForBaseVersion:integerValue error:&v48];
  v8 = v48;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = integerValue == 1;
  }

  if (v9)
  {
    disallowFallbackAdjustmentBase = [(PHContentEditingInputRequestOptions *)self->_options disallowFallbackAdjustmentBase];
    v11 = PLImageManagerGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (disallowFallbackAdjustmentBase)
    {
      if (v12)
      {
        managerID = [(PHMediaRequestContext *)self managerID];
        requestID = [(PHMediaRequestContext *)self requestID];
        v15 = @"penultimate";
        *buf = 134218754;
        v50 = managerID;
        v51 = 2048;
        v52 = requestID;
        v53 = 2114;
        v54 = @"penultimate";
        v55 = 2112;
        v56 = v8;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[RM] %ld-%ld Could not find media with base version %{public}@, error: %@", buf, 0x2Au);
      }

      goto LABEL_28;
    }

    if (v12)
    {
      managerID2 = [(PHMediaRequestContext *)self managerID];
      requestID2 = [(PHMediaRequestContext *)self requestID];
      v18 = @"penultimate";
      v19 = @"current";
      *buf = 134218754;
      v50 = managerID2;
      v51 = 2048;
      v52 = requestID2;
      v53 = 2114;
      v54 = @"penultimate";
      v55 = 2114;
      v56 = @"current";
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[RM] %ld-%ld Could not find media with base version %{public}@, retrying with base version %{public}@", buf, 0x2Au);
    }

    v47 = v8;
    v7 = [(PHContentEditingInputRequestContext *)self _baseMediaRequestsForBaseVersion:2 error:&v47];
    v20 = v47;

    if (!v7)
    {
      v8 = v20;
LABEL_28:
      v31 = PLImageManagerGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        managerID3 = [(PHMediaRequestContext *)self managerID];
        requestID3 = [(PHMediaRequestContext *)self requestID];
        *buf = 134218240;
        v50 = managerID3;
        v51 = 2048;
        v52 = requestID3;
        _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_ERROR, "[RM] %ld-%ld No media requests", buf, 0x16u);
      }

      [(PHCompositeMediaResult *)self->_contentEditingInputResult setErrorIfNone:v8];
      goto LABEL_51;
    }

    [(PHContentEditingInputResult *)self->_contentEditingInputResult clearAdjustmentData];
    integerValue = 2;
    v8 = v20;
  }

  else if (!v7)
  {
    goto LABEL_28;
  }

  contentEditingInputResult = self->_contentEditingInputResult;
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
  [(PHContentEditingInputResult *)contentEditingInputResult setBaseVersionNeeded:v22];

  [requestsCopy addObjectsFromArray:v7];
  if ([(PHContentEditingInputRequestContext *)self _shouldRequestVideo])
  {
    asset = [(PHMediaRequestContext *)self asset];
    if ([asset isPhotoIris])
    {
      v24 = 15;
    }

    else
    {
      v24 = 14;
    }

    v25 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:v24];
    if (v25)
    {
      v26 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v25 wantsURLOnly:1 progress:0];
      [requestsCopy addObject:v26];
    }

    if ([(PHContentEditingInputRequestOptions *)self->_options requireOriginalsDownloaded])
    {
      asset2 = [(PHMediaRequestContext *)self asset];
      if ([asset2 isPhotoIris])
      {
        v28 = 9;
      }

      else
      {
        v28 = 2;
      }

      v29 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:v28];

      if (v29)
      {
        v30 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v29 wantsURLOnly:1 progress:0];
        [requestsCopy addObject:v30];

        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  if ([(PHContentEditingInputRequestContext *)self _shouldRequestImage])
  {
    v34 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:13];
    if (v34)
    {
      v35 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v34 wantsURLOnly:1 progress:0];
      [requestsCopy addObject:v35];
    }

    if ([(PHContentEditingInputRequestOptions *)self->_options requireOriginalsDownloaded])
    {
      v36 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:1];

      if (v36)
      {
        v37 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v36 wantsURLOnly:1 progress:0];
        [requestsCopy addObject:v37];
      }

      asset3 = [(PHMediaRequestContext *)self asset];
      isRAWPlusJPEG = [asset3 isRAWPlusJPEG];

      if (isRAWPlusJPEG)
      {
        v34 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:4];

        if (v34)
        {
          v40 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v34 wantsURLOnly:1 progress:0];
          [requestsCopy addObject:v40];
        }
      }

      else
      {
        v34 = v36;
      }
    }
  }

  if (integerValue != 2)
  {
    v41 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:110];
    if (v41)
    {
      v42 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v41 wantsURLOnly:1 progress:0];
      [requestsCopy addObject:v42];
    }
  }

  v43 = PLImageManagerGetLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    managerID4 = [(PHMediaRequestContext *)self managerID];
    requestID4 = [(PHMediaRequestContext *)self requestID];
    v46 = [requestsCopy count];
    *buf = 134218496;
    v50 = managerID4;
    v51 = 2048;
    v52 = requestID4;
    v53 = 2048;
    v54 = v46;
    _os_log_impl(&dword_19C86F000, v43, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld Starting %ld child media requests", buf, 0x20u);
  }

LABEL_51:
}

- (id)_baseMediaRequestsForBaseVersion:(int64_t)version error:(id *)error
{
  v128 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = PLImageManagerGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    managerID = [(PHMediaRequestContext *)self managerID];
    requestID = [(PHMediaRequestContext *)self requestID];
    if ([(PHContentEditingInputRequestContext *)self _shouldRequestImage])
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }

    *buf = 134218754;
    if ([(PHContentEditingInputRequestContext *)self _shouldRequestVideo])
    {
      v11 = @"Y";
    }

    else
    {
      v11 = @"N";
    }

    v121 = managerID;
    v122 = 2048;
    v123 = requestID;
    v124 = 2112;
    v125 = v10;
    v126 = 2112;
    v127 = v11;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld Preparing media requests, for images: %@, video: %@", buf, 0x2Au);
  }

  options = [(PHContentEditingInputRequestContext *)self options];
  forcePrepareCurrentBaseVersionInAddition = [options forcePrepareCurrentBaseVersionInAddition];

  if (version != 2 && forcePrepareCurrentBaseVersionInAddition)
  {
    v14 = PLImageManagerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      managerID2 = [(PHMediaRequestContext *)self managerID];
      requestID2 = [(PHMediaRequestContext *)self requestID];
      *buf = 134218240;
      v121 = managerID2;
      v122 = 2048;
      v123 = requestID2;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld Can handle adjustment data, but also need adjusted FullSizeRenders for extensions (like Markup), kicking off additional requests", buf, 0x16u);
    }

    if ([(PHContentEditingInputRequestContext *)self _shouldRequestVideo])
    {
      v17 = [(PHContentEditingInputRequestContext *)self _videoBehaviorSpecForBaseVersion:2];
      v18 = [PHVideoRequest alloc];
      requestID3 = [(PHMediaRequestContext *)self requestID];
      nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
      type = [(PHContentEditingInputRequestContext *)self type];
      versionCopy = version;
      managerID3 = [(PHMediaRequestContext *)self managerID];
      asset = [(PHMediaRequestContext *)self asset];
      v25 = managerID3;
      version = versionCopy;
      v26 = [(PHVideoRequest *)v18 initWithRequestID:requestID3 requestIndex:nextRequestIndex contextType:type managerID:v25 asset:asset displaySpec:0 behaviorSpec:v17 delegate:self];

      [v6 addObject:v26];
    }

    if ([(PHContentEditingInputRequestContext *)self _shouldRequestImage])
    {
      isNetworkAccessAllowed = [(PHContentEditingInputRequestContext *)self isNetworkAccessAllowed];
      downloadIntent = [(PHContentEditingInputRequestContext *)self downloadIntent];
      useRAWAsUnadjustedBase = self->_useRAWAsUnadjustedBase;
      asset2 = [(PHMediaRequestContext *)self asset];
      v117 = [PHImageRequestBehaviorSpec contentEditingInputImageBehaviorSpecForBaseVersion:2 isNetworkAccessAllowed:isNetworkAccessAllowed downloadIntent:downloadIntent shouldUseRAWAsUnadjustedBase:useRAWAsUnadjustedBase asset:asset2];

      v31 = [PHImageResourceChooser alloc];
      asset3 = [(PHMediaRequestContext *)self asset];
      v33 = [(PHImageResourceChooser *)v31 initWithAsset:asset3 resourceHandler:0];
      backupChooser = self->_backupChooser;
      self->_backupChooser = v33;

      v35 = [PHImageRequest alloc];
      requestID4 = [(PHMediaRequestContext *)self requestID];
      nextRequestIndex2 = [(PHMediaRequestContext *)self nextRequestIndex];
      type2 = [(PHContentEditingInputRequestContext *)self type];
      managerID4 = [(PHMediaRequestContext *)self managerID];
      [(PHMediaRequestContext *)self asset];
      v41 = v40 = version;
      v42 = [(PHImageRequest *)v35 initWithRequestID:requestID4 requestIndex:nextRequestIndex2 contextType:type2 managerID:managerID4 asset:v41 displaySpec:0 behaviorSpec:v117 chooser:self->_backupChooser delegate:self];

      version = v40;
      [v6 addObject:v42];
    }
  }

  if (![(PHContentEditingInputRequestContext *)self _shouldRequestVideo])
  {
    if ([(PHContentEditingInputRequestContext *)self _shouldRequestImage])
    {
      goto LABEL_48;
    }

LABEL_52:
    v87 = 0;
    goto LABEL_70;
  }

  asset4 = [(PHMediaRequestContext *)self asset];
  if ([asset4 isPhotoIris])
  {
    v44 = 3;
  }

  else
  {
    v44 = 1;
  }

  v45 = [(PHContentEditingInputRequestContext *)self _assetResourceTypeForResourceType:v44 withBaseVersion:version];

  v46 = PLImageManagerGetLog();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    managerID5 = [(PHMediaRequestContext *)self managerID];
    requestID5 = [(PHMediaRequestContext *)self requestID];
    v49 = _PHAssetResourceTypeDescription(v45);
    if (version > 2)
    {
      v50 = @"unknown";
    }

    else
    {
      v50 = off_1E75A7398[version];
    }

    v51 = v50;
    *buf = 134218754;
    v121 = managerID5;
    v122 = 2048;
    v123 = requestID5;
    v124 = 2112;
    v125 = v49;
    v126 = 2112;
    v127 = v51;
    _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld determined video asset resource type: %@ for base version: %@", buf, 0x2Au);
  }

  v52 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:v45];
  if (!v52)
  {
    asset5 = [(PHMediaRequestContext *)self asset];
    isPhotoIris = [asset5 isPhotoIris];

    if (isPhotoIris)
    {
      asset6 = [(PHMediaRequestContext *)self asset];
      canPlayPhotoIris = [asset6 canPlayPhotoIris];

      if (version && (canPlayPhotoIris & 1) == 0)
      {
        v62 = PLImageManagerGetLog();
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        managerID6 = [(PHMediaRequestContext *)self managerID];
        requestID6 = [(PHMediaRequestContext *)self requestID];
        if (version > 2)
        {
          v74 = @"unknown";
        }

        else
        {
          v74 = off_1E75A7398[version];
        }

        v115 = v74;
        *buf = 134218498;
        v121 = managerID6;
        v122 = 2048;
        v123 = requestID6;
        v124 = 2112;
        v125 = v115;
        v116 = "[RM] %ld-%ld Live photo edit request allowing missing video, reason: unplayable, base version: %@";
LABEL_79:
        _os_log_impl(&dword_19C86F000, v62, OS_LOG_TYPE_DEFAULT, v116, buf, 0x20u);

        goto LABEL_30;
      }

      repairRequest = self->_repairRequest;
      if (version == 1)
      {
        if (repairRequest)
        {
          v62 = PLImageManagerGetLog();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            managerID7 = [(PHMediaRequestContext *)self managerID];
            requestID7 = [(PHMediaRequestContext *)self requestID];
            *buf = 134218240;
            v121 = managerID7;
            v122 = 2048;
            v123 = requestID7;
            _os_log_impl(&dword_19C86F000, v62, OS_LOG_TYPE_DEFAULT, "[RM] %ld-%ld Live photo edit request allowing missing video, reason: missing penultimate", buf, 0x16u);
          }

          goto LABEL_30;
        }
      }

      else if (repairRequest)
      {
        v62 = PLImageManagerGetLog();
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        managerID8 = [(PHMediaRequestContext *)self managerID];
        requestID8 = [(PHMediaRequestContext *)self requestID];
        if (version > 2)
        {
          v80 = @"unknown";
        }

        else
        {
          v80 = off_1E75A7398[version];
        }

        v115 = v80;
        *buf = 134218498;
        v121 = managerID8;
        v122 = 2048;
        v123 = requestID8;
        v124 = 2112;
        v125 = v115;
        v116 = "[RM] %ld-%ld Live photo edit request allowing missing video, reason: zero videos found, base version: %@";
        goto LABEL_79;
      }
    }

    v67 = 0;
    goto LABEL_46;
  }

  v53 = [(PHContentEditingInputRequestContext *)self _videoBehaviorSpecForBaseVersion:version];
  v118 = [PHVideoRequest alloc];
  requestID9 = [(PHMediaRequestContext *)self requestID];
  nextRequestIndex3 = [(PHMediaRequestContext *)self nextRequestIndex];
  type3 = [(PHContentEditingInputRequestContext *)self type];
  v57 = v52;
  versionCopy2 = version;
  managerID9 = [(PHMediaRequestContext *)self managerID];
  asset7 = [(PHMediaRequestContext *)self asset];
  v61 = managerID9;
  version = versionCopy2;
  v52 = v57;
  v62 = v53;
  v63 = [(PHVideoRequest *)v118 initWithRequestID:requestID9 requestIndex:nextRequestIndex3 contextType:type3 managerID:v61 asset:asset7 displaySpec:0 behaviorSpec:v53 delegate:self];
  videoRequest = self->_videoRequest;
  self->_videoRequest = v63;

  _lazyVideoProgress = [(PHContentEditingInputRequestContext *)self _lazyVideoProgress];
  identifierString = [(PHMediaRequest *)self->_videoRequest identifierString];
  [(PHMediaRequestContext *)self setProgress:_lazyVideoProgress forRequestIdentifier:identifierString];

  [v6 addObject:self->_videoRequest];
LABEL_30:

  v45 = 1;
  v67 = 1;
LABEL_46:

  _shouldRequestImage = [(PHContentEditingInputRequestContext *)self _shouldRequestImage];
  if (!v67 || !_shouldRequestImage)
  {
    if ((v67 & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_48:
  v45 = [(PHContentEditingInputRequestContext *)self _assetResourceTypeForResourceType:0 withBaseVersion:version];
  v82 = PLImageManagerGetLog();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
  {
    managerID10 = [(PHMediaRequestContext *)self managerID];
    requestID10 = [(PHMediaRequestContext *)self requestID];
    v85 = _PHAssetResourceTypeDescription(v45);
    if (version > 2)
    {
      v86 = @"unknown";
    }

    else
    {
      v86 = off_1E75A7398[version];
    }

    v88 = v86;
    *buf = 134218754;
    v121 = managerID10;
    v122 = 2048;
    v123 = requestID10;
    v124 = 2112;
    v125 = v85;
    v126 = 2112;
    v127 = v88;
    _os_log_impl(&dword_19C86F000, v82, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld determined image asset resource type: %@ for base version: %@", buf, 0x2Au);
  }

  v89 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:v45];
  if (v89)
  {
    v90 = v89;
    _lazyImageProgress = [(PHContentEditingInputRequestContext *)self _lazyImageProgress];
    v92 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v90 wantsURLOnly:1 progress:_lazyImageProgress];

    self->_imageBaseRequestIndex = [v92 requestIndex];
    [v6 addObject:v92];

    goto LABEL_66;
  }

LABEL_57:
  v93 = PLImageManagerGetLog();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
  {
    managerID11 = [(PHMediaRequestContext *)self managerID];
    requestID11 = [(PHMediaRequestContext *)self requestID];
    if (version > 2)
    {
      v96 = @"unknown";
    }

    else
    {
      v96 = off_1E75A7398[version];
    }

    v97 = v96;
    v98 = _PHAssetResourceTypeDescription(v45);
    *buf = 134218754;
    v121 = managerID11;
    v122 = 2048;
    v123 = requestID11;
    v124 = 2112;
    v125 = v97;
    v126 = 2112;
    v127 = v98;
    _os_log_impl(&dword_19C86F000, v93, OS_LOG_TYPE_ERROR, "[RM] %ld-%ld Base version needed is %@, but did not find asset resource of type %@", buf, 0x2Au);
  }

  if (self->_repairRequest)
  {

    v99 = MEMORY[0x1E696ABC0];
    if (version > 2)
    {
      v100 = @"unknown";
    }

    else
    {
      v100 = off_1E75A7398[version];
    }

    v90 = v100;
    v112 = _PHAssetResourceTypeDescription(v45);
    v87 = [v99 ph_errorWithCode:3306 localizedDescription:{@"Base version needed is %@, but did not find asset resource of type %@", v90, v112}];

    v6 = 0;
    goto LABEL_69;
  }

  v101 = [PHRepairRequest alloc];
  requestID12 = [(PHMediaRequestContext *)self requestID];
  v103 = v6;
  nextRequestIndex4 = [(PHMediaRequestContext *)self nextRequestIndex];
  type4 = [(PHContentEditingInputRequestContext *)self type];
  managerID12 = [(PHMediaRequestContext *)self managerID];
  asset8 = [(PHMediaRequestContext *)self asset];
  v108 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F102D580];
  v109 = nextRequestIndex4;
  v6 = v103;
  v110 = [(PHRepairRequest *)v101 initWithRequestID:requestID12 requestIndex:v109 contextType:type4 managerID:managerID12 asset:asset8 assetResource:0 errorCodes:v108 delegate:self];

  [v103 removeAllObjects];
  v111 = self->_repairRequest;
  self->_repairRequest = v110;
  v90 = v110;

  [v103 addObject:self->_repairRequest];
LABEL_66:
  v87 = 0;
LABEL_69:

LABEL_70:
  if (error)
  {
    v113 = v87;
    *error = v87;
  }

  return v6;
}

- (void)_renderTemporaryVideoForObjectBuilder:(id)builder resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = *MEMORY[0x1E6987338];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PHContentEditingInputRequestContext__renderTemporaryVideoForObjectBuilder_resultHandler___block_invoke;
  v8[3] = &unk_1E75A92F8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [builder requestExportSessionWithExportPreset:v6 resultHandler:v8];
}

void __91__PHContentEditingInputRequestContext__renderTemporaryVideoForObjectBuilder_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderedContent-%@.MOV", v5];
    v7 = NSTemporaryDirectory();
    v8 = [v7 stringByAppendingPathComponent:v6];

    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    [v3 setOutputFileType:*MEMORY[0x1E69874C0]];
    [v3 setOutputURL:v9];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__PHContentEditingInputRequestContext__renderTemporaryVideoForObjectBuilder_resultHandler___block_invoke_2;
    v12[3] = &unk_1E75AA870;
    v13 = v3;
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v11 = v9;
    [v13 exportAsynchronouslyWithCompletionHandler:v12];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __91__PHContentEditingInputRequestContext__renderTemporaryVideoForObjectBuilder_resultHandler___block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) status] == 4)
  {
    v2 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Rendering video failed";
    v3 = MEMORY[0x1E695DF20];
    v4 = v11;
    v5 = &v10;
  }

  else
  {
    if ([*(a1 + 32) status] != 5)
    {
      goto LABEL_7;
    }

    v2 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A578];
    v9 = @"Rendering video cancelled";
    v3 = MEMORY[0x1E695DF20];
    v4 = &v9;
    v5 = &v8;
  }

  v6 = [v3 dictionaryWithObjects:v4 forKeys:v5 count:1];
  v7 = [v2 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v6];

  if (v7)
  {
    (*(*(a1 + 48) + 16))();

    return;
  }

LABEL_7:
  (*(*(a1 + 48) + 16))();
}

- (void)_renderVideoFromVideoURL:(id)l asset:(id)asset adjustmentData:(id)data canHandleAdjustmentData:(BOOL)adjustmentData resultHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v14 = MEMORY[0x1E69C0910];
  dataCopy = data;
  assetCopy = asset;
  v17 = [v14 alloc];
  formatIdentifier = [dataCopy formatIdentifier];
  formatVersion = [dataCopy formatVersion];
  data = [dataCopy data];

  v21 = [v17 initWithFormatIdentifier:formatIdentifier formatVersion:formatVersion data:data baseVersion:0 editorBundleID:0 renderTypes:0];
  LOBYTE(v17) = [assetCopy isPhotoIris];

  if ((v17 & 1) != 0 || adjustmentData || ([v21 isRecognizedFormat] & 1) == 0)
  {
    handlerCopy[2](handlerCopy, lCopy, 0);
  }

  else
  {
    v22 = [MEMORY[0x1E6988168] assetWithURL:lCopy];
    v23 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v22 videoAdjustments:v21];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __123__PHContentEditingInputRequestContext__renderVideoFromVideoURL_asset_adjustmentData_canHandleAdjustmentData_resultHandler___block_invoke;
    v24[3] = &unk_1E75A92D0;
    v25 = handlerCopy;
    [(PHContentEditingInputRequestContext *)self _renderTemporaryVideoForObjectBuilder:v23 resultHandler:v24];
  }
}

- (int64_t)_adjustmentBaseVersionFromResult:(id)result request:(id)request canHandleAdjustmentData:(BOOL *)data
{
  v31 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  requestCopy = request;
  v24 = 0;
  options = [(PHContentEditingInputRequestContext *)self options];
  forceRunAsUnadjustedAsset = [options forceRunAsUnadjustedAsset];

  if (forceRunAsUnadjustedAsset)
  {
    adjustmentData = PLImageManagerGetLog();
    if (os_log_type_enabled(adjustmentData, OS_LOG_TYPE_DEBUG))
    {
      identifierString = [requestCopy identifierString];
      *buf = 138412290;
      v26 = identifierString;
      _os_log_impl(&dword_19C86F000, adjustmentData, OS_LOG_TYPE_DEBUG, "[RM] %@ Force run as unadjusted base", buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_20;
  }

  adjustmentData = [resultCopy adjustmentData];
  error = [resultCopy error];
  domain = [error domain];
  if ([domain isEqualToString:*MEMORY[0x1E69BE900]])
  {
    if ([error code] == 3)
    {

LABEL_12:
      adjustmentData = 0;
      error = 0;
      goto LABEL_13;
    }

    code = [error code];

    if (code == 4)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (!adjustmentData)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  canHandleAdjustmentData = [(PHContentEditingInputRequestOptions *)self->_options canHandleAdjustmentData];
  v14 = [adjustmentData _contentEditing_requiredBaseVersionReadableByClient:&v24 verificationBlock:canHandleAdjustmentData];

LABEL_14:
  v19 = PLImageManagerGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    identifierString2 = [requestCopy identifierString];
    if (v14 > 2)
    {
      v21 = @"unknown";
    }

    else
    {
      v21 = off_1E75A7398[v14];
    }

    v22 = v21;
    *buf = 138543874;
    v26 = identifierString2;
    v27 = 2114;
    v28 = v22;
    v29 = 2112;
    v30 = adjustmentData;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ Calculated adjustment base: %{public}@ from adjustment data: %@", buf, 0x20u);
  }

LABEL_20:
  if (data)
  {
    *data = v24;
  }

  return v14;
}

- (id)_videoBehaviorSpecForBaseVersion:(int64_t)version
{
  v5 = objc_alloc_init(PHVideoRequestBehaviorSpec);
  [(PHVideoRequestBehaviorSpec *)v5 setDeliveryMode:1];
  [(PHVideoRequestBehaviorSpec *)v5 setNetworkAccessAllowed:[(PHContentEditingInputRequestContext *)self isNetworkAccessAllowed]];
  asset = [(PHMediaRequestContext *)self asset];
  -[PHVideoRequestBehaviorSpec setVideoComplementAllowed:](v5, "setVideoComplementAllowed:", [asset isPhotoIris]);

  [(PHVideoRequestBehaviorSpec *)v5 setDownloadIntent:[(PHContentEditingInputRequestContext *)self downloadIntent]];
  [(PHVideoRequestBehaviorSpec *)v5 setVersion:[PHAdjustmentData videoRequestVersionFromAdjustmentBaseVersion:version]];

  return v5;
}

- (id)_lazyVideoProgress
{
  if (!self->_videoProgress && [(PHMediaRequestContext *)self shouldReportProgress])
  {
    if ([(PHContentEditingInputRequestContext *)self _shouldRequestImage])
    {
      v3 = 45;
    }

    else
    {
      v3 = 90;
    }

    v4 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v3];
    videoProgress = self->_videoProgress;
    self->_videoProgress = v4;
  }

  v6 = self->_videoProgress;

  return v6;
}

- (id)_lazyImageProgress
{
  if (!self->_imageProgress && [(PHMediaRequestContext *)self shouldReportProgress])
  {
    if ([(PHContentEditingInputRequestContext *)self _shouldRequestVideo])
    {
      v3 = 45;
    }

    else
    {
      v3 = 90;
    }

    v4 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v3];
    imageProgress = self->_imageProgress;
    self->_imageProgress = v4;
  }

  v6 = self->_imageProgress;

  return v6;
}

- (id)_lazyAdjustmentProgress
{
  if (!self->_adjustmentProgress && [(PHMediaRequestContext *)self shouldReportProgress])
  {
    v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:10];
    adjustmentProgress = self->_adjustmentProgress;
    self->_adjustmentProgress = v3;
  }

  v5 = self->_adjustmentProgress;

  return v5;
}

- (BOOL)_shouldRequestVideo
{
  asset = [(PHMediaRequestContext *)self asset];
  if ([asset isPhotoIris])
  {
    if ([(PHContentEditingInputRequestOptions *)self->_options forceReturnFullLivePhoto])
    {
      canPlayAutoloop = 1;
    }

    else
    {
      asset2 = [(PHMediaRequestContext *)self asset];
      if ([asset2 canPlayPhotoIris])
      {
        canPlayAutoloop = 1;
      }

      else
      {
        asset3 = [(PHMediaRequestContext *)self asset];
        if ([asset3 canPlayMirror])
        {
          canPlayAutoloop = 1;
        }

        else
        {
          asset4 = [(PHMediaRequestContext *)self asset];
          canPlayAutoloop = [asset4 canPlayAutoloop];
        }
      }
    }
  }

  else
  {
    canPlayAutoloop = 0;
  }

  asset5 = [(PHMediaRequestContext *)self asset];
  v9 = [asset5 isVideo] | canPlayAutoloop;

  return v9 & 1;
}

- (BOOL)_shouldRequestImage
{
  asset = [(PHMediaRequestContext *)self asset];
  isPhoto = [asset isPhoto];

  return isPhoto;
}

- (PHContentEditingInputRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options useRAWAsUnadjustedBase:(BOOL)base resultHandler:(id)handler
{
  v13 = *&d;
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = PHContentEditingInputRequestContext;
  v16 = [(PHMediaRequestContext *)&v23 initWithRequestID:v13 managerID:iD asset:asset displaySpec:0 resultHandler:handler];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_options, options);
    v17->_useRAWAsUnadjustedBase = base;
    v17->_lock._os_unfair_lock_opaque = 0;
    v18 = [(PHCompositeMediaResult *)[PHContentEditingInputResult alloc] initWithRequestID:v13];
    contentEditingInputResult = v17->_contentEditingInputResult;
    v17->_contentEditingInputResult = v18;

    v20 = objc_alloc_init(MEMORY[0x1E696AD50]);
    requestIndexesOfAssetResourceRequests = v17->_requestIndexesOfAssetResourceRequests;
    v17->_requestIndexesOfAssetResourceRequests = v20;
  }

  return v17;
}

+ (id)contentEditingInputRequestContextForAsset:(id)asset requestID:(int)d managerID:(unint64_t)iD networkAccessAllowed:(BOOL)allowed downloadIntent:(int64_t)intent progressHandler:(id)handler resultHandler:(id)resultHandler
{
  allowedCopy = allowed;
  v13 = *&d;
  resultHandlerCopy = resultHandler;
  handlerCopy = handler;
  assetCopy = asset;
  v19 = objc_alloc_init(PHContentEditingInputRequestOptions);
  [(PHContentEditingInputRequestOptions *)v19 setNetworkAccessAllowed:allowedCopy];
  [(PHContentEditingInputRequestOptions *)v19 setDownloadIntent:intent];
  [(PHContentEditingInputRequestOptions *)v19 setCanHandleAdjustmentData:&__block_literal_global_39286];
  [(PHContentEditingInputRequestOptions *)v19 setProgressHandler:handlerCopy];

  [(PHContentEditingInputRequestOptions *)v19 setForceReturnFullLivePhoto:1];
  [(PHContentEditingInputRequestOptions *)v19 setSkipDisplaySizeImage:1];
  [(PHContentEditingInputRequestOptions *)v19 setSkipLivePhotoImageAndAVAsset:1];
  [(PHContentEditingInputRequestOptions *)v19 setDisallowFallbackAdjustmentBase:1];
  v20 = +[PHMediaRequestContext contentEditingInputRequestContextWithRequestID:managerID:asset:options:useRAWAsUnadjustedBase:resultHandler:](PHMediaRequestContext, "contentEditingInputRequestContextWithRequestID:managerID:asset:options:useRAWAsUnadjustedBase:resultHandler:", v13, iD, assetCopy, v19, [self shouldUseRAWResourceAsUnadjustedBaseForAsset:assetCopy options:v19], resultHandlerCopy);

  return v20;
}

void *__167__PHContentEditingInputRequestContext_contentEditingInputRequestContextForAsset_requestID_managerID_networkAccessAllowed_downloadIntent_progressHandler_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 data];
  if (v3)
  {
    v4 = [v2 formatVersion];
    if (v4)
    {
      v5 = v4;
      v6 = [v2 formatIdentifier];

      if (v6)
      {
        v7 = MEMORY[0x1E69C0910];
        v8 = [v2 formatIdentifier];
        v9 = [v2 formatVersion];
        LOBYTE(v7) = [v7 isRecognizedSlowMotionFormatWithIdentifier:v8 version:v9];

        if ((v7 & 1) == 0)
        {
          v10 = MEMORY[0x1E69BE650];
          v11 = [v2 data];
          v12 = [v2 formatIdentifier];
          v13 = [v2 formatVersion];
          v15 = 0;
          v3 = [v10 validateAdjustmentData:v11 formatIdentifier:v12 formatVersion:v13 error:&v15];

          goto LABEL_8;
        }
      }
    }

    else
    {
    }

    v3 = 0;
  }

LABEL_8:

  return v3;
}

+ (BOOL)shouldUseRAWResourceAsUnadjustedBaseForAsset:(id)asset options:(id)options
{
  assetCopy = asset;
  optionsCopy = options;
  if (PHDeviceSupportsRAW_onceToken != -1)
  {
    dispatch_once(&PHDeviceSupportsRAW_onceToken, &__block_literal_global_19790);
  }

  if (PHDeviceSupportsRAW_deviceSupportsRAW == 1 && ([optionsCopy dontAllowRAW] & 1) == 0)
  {
    if ([optionsCopy shouldForceOriginalChoice])
    {
      originalChoice = [optionsCopy originalChoice];
    }

    else
    {
      originalChoice = [assetCopy originalResourceChoice];
    }

    v7 = [assetCopy shouldUseRAWResourceWithOriginalResourceChoice:originalChoice];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end