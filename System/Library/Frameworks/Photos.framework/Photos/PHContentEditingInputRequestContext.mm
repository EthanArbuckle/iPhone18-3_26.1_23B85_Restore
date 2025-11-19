@interface PHContentEditingInputRequestContext
+ (BOOL)shouldUseRAWResourceAsUnadjustedBaseForAsset:(id)a3 options:(id)a4;
+ (id)contentEditingInputRequestContextForAsset:(id)a3 requestID:(int)a4 managerID:(unint64_t)a5 networkAccessAllowed:(BOOL)a6 downloadIntent:(int64_t)a7 progressHandler:(id)a8 resultHandler:(id)a9;
- (BOOL)_shouldRequestImage;
- (BOOL)_shouldRequestVideo;
- (PHContentEditingInputRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 useRAWAsUnadjustedBase:(BOOL)a7 resultHandler:(id)a8;
- (id)_assetResourceForType:(int64_t)a3;
- (id)_assetResources;
- (id)_baseMediaRequestsForBaseVersion:(int64_t)a3 error:(id *)a4;
- (id)_largestUnadjustedDerivativeImageResource;
- (id)_lazyAdjustmentProgress;
- (id)_lazyImageProgress;
- (id)_lazyVideoProgress;
- (id)_resourceRequestForAssetResource:(id)a3 wantsURLOnly:(BOOL)a4 progress:(id)a5;
- (id)_videoBehaviorSpecForBaseVersion:(int64_t)a3;
- (id)initialRequests;
- (id)produceChildRequestsForRequest:(id)a3 reportingIsLocallyAvailable:(BOOL)a4 isDegraded:(BOOL)a5 result:(id)a6;
- (id)progressHandler;
- (id)progresses;
- (int64_t)_adjustmentBaseVersionFromResult:(id)a3 request:(id)a4 canHandleAdjustmentData:(BOOL *)a5;
- (int64_t)_assetResourceTypeForResourceType:(unsigned int)a3 withBaseVersion:(int64_t)a4;
- (int64_t)downloadIntent;
- (void)_prepareAndAddMediaRequestsToChildRequests:(id)a3;
- (void)_renderTemporaryVideoForObjectBuilder:(id)a3 resultHandler:(id)a4;
- (void)_renderVideoFromVideoURL:(id)a3 asset:(id)a4 adjustmentData:(id)a5 canHandleAdjustmentData:(BOOL)a6 resultHandler:(id)a7;
- (void)cancel;
- (void)processAndReturnResultsWithRequest:(id)a3;
- (void)processMediaResult:(id)a3 forRequest:(id)a4;
- (void)start;
@end

@implementation PHContentEditingInputRequestContext

- (void)processMediaResult:(id)a3 forRequest:(id)a4
{
  v88[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 isInCloud])
  {
    if (([v7 containsValidData] & 1) == 0)
    {
      v9 = [v7 error];

      if (!v9)
      {
        v10 = [(PHContentEditingInputRequestContext *)self options];
        v11 = [v10 isNetworkAccessAllowed];

        if (v11)
        {
          v12 = MEMORY[0x1E696ABC0];
          v87 = *MEMORY[0x1E696A578];
          v88[0] = @"Download failed";
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
          v14 = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v13];
          [v7 setError:v14];
        }

        else
        {
          v15 = PHNetworkAccessAllowedRequiredError();
          [v7 setError:v15];
        }
      }
    }
  }

  if (self->_adjustmentRequest == v8)
  {
    v21 = PLImageManagerGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(PHMediaRequest *)v8 identifierString];
      v23 = [v7 info];
      *buf = 138412802;
      v82 = v22;
      v83 = 2112;
      v84 = v7;
      v85 = 2112;
      v86 = v23;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "[RM] %@ Content editing adjustment data request finished with result: %@, info: %@", buf, 0x20u);
    }

    v16 = [(PHContentEditingInputRequestContext *)self _lazyAdjustmentProgress];
    [(PHAdjustmentDataRequest *)v16 setCompletedUnitCount:[(PHAdjustmentDataRequest *)v16 totalUnitCount]];
    os_unfair_lock_lock(&self->_lock);
    [(PHContentEditingInputResult *)self->_contentEditingInputResult addAdjustmentDataResult:v7];
    v24 = self->_inflightMediaRequestCount - 1;
    self->_inflightMediaRequestCount = v24;
    os_unfair_lock_unlock(&self->_lock);
    if (v24)
    {
      goto LABEL_53;
    }

    v25 = self;
    v26 = v8;
    goto LABEL_52;
  }

  if (self->_displayImageRequest == v8)
  {
    v27 = PLImageManagerGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = [(PHMediaRequest *)v8 identifierString];
      v29 = [v7 info];
      *buf = 138412802;
      v82 = v28;
      v83 = 2112;
      v84 = v7;
      v85 = 2112;
      v86 = v29;
      _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_DEBUG, "[RM] %@ Content editing image request finished with result: %@, info: %@", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(PHContentEditingInputResult *)self->_contentEditingInputResult addImageResult:v7];
LABEL_67:
    v64 = self->_inflightMediaRequestCount - 1;
    self->_inflightMediaRequestCount = v64;
    os_unfair_lock_unlock(&self->_lock);
    if (v64)
    {
      goto LABEL_69;
    }

LABEL_68:
    [(PHContentEditingInputRequestContext *)self processAndReturnResultsWithRequest:v8];
    goto LABEL_69;
  }

  if (self->_videoRequest != v8)
  {
    if ([(NSMutableIndexSet *)self->_requestIndexesOfAssetResourceRequests containsIndex:[(PHMediaRequest *)v8 requestIndex]])
    {
      v16 = v8;
      if (([v7 containsValidData] & 1) == 0)
      {
        v52 = PLImageManagerGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = [v7 error];
          *buf = 138412290;
          v82 = v53;
          _os_log_impl(&dword_19C86F000, v52, OS_LOG_TYPE_ERROR, "Media resource request failed to return valid data or url with error: %@", buf, 0xCu);
        }

        v54 = [v7 error];

        if (!v54)
        {
          v55 = MEMORY[0x1E696ABC0];
          v79 = *MEMORY[0x1E696A278];
          v56 = MEMORY[0x1E696AEC0];
          v57 = [(PHMediaRequest *)v16 identifierString];
          v58 = [v56 stringWithFormat:@"request %@ failed but did not provide error, ", v57];
          v80 = v58;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v60 = [v55 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v59];
          [v7 setError:v60];
        }

        [(PHContentEditingInputResult *)self->_contentEditingInputResult mergeInfoDictionaryFromResult:v7];
        goto LABEL_50;
      }

      v17 = [(PHAdjustmentDataRequest *)v16 resourceType];
      if (v17 > 102)
      {
        if ((v17 - 104) < 2)
        {
          v69 = PLImageManagerGetLog();
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
LABEL_90:

            goto LABEL_50;
          }

          v70 = [(PHMediaRequest *)v16 identifierString];
          *buf = 138412290;
          v82 = v70;
          v71 = "[RM] %@ Content editing found renderable media metadata";
          v72 = v69;
          v73 = OS_LOG_TYPE_DEBUG;
          v74 = 12;
LABEL_89:
          _os_log_impl(&dword_19C86F000, v72, v73, v71, buf, v74);

          goto LABEL_90;
        }

        if (v17 == 103)
        {
LABEL_16:
          if ([(PHMediaRequest *)v16 requestIndex]== self->_imageBaseRequestIndex)
          {
            v18 = PLImageManagerGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v19 = [(PHMediaRequest *)v16 identifierString];
              v20 = [v7 info];
              *buf = 138412802;
              v82 = v19;
              v83 = 2112;
              v84 = v7;
              v85 = 2112;
              v86 = v20;
              _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "[RM] %@ Content editing resource request for base image finished with result: %@, info: %@", buf, 0x20u);
            }

            [(PHContentEditingInputResult *)self->_contentEditingInputResult addImageResult:v7];
          }

          goto LABEL_50;
        }

        if (v17 == 110)
        {
          os_unfair_lock_lock(&self->_lock);
          [(PHContentEditingInputResult *)self->_contentEditingInputResult addAdjustmentSecondaryDataResult:v7];
          os_unfair_lock_unlock(&self->_lock);
          goto LABEL_50;
        }
      }

      else if (v17 <= 0x10)
      {
        if (((1 << v17) & 0xFE44) == 0)
        {
          if (((1 << v17) & 0x132) != 0)
          {
            goto LABEL_16;
          }

          if (v17 == 16)
          {
            v69 = [v7 adjustmentData];
            [(PHContentEditingInputResult *)self->_contentEditingInputResult setOriginalAdjustmentData:v69];
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

        v25 = self;
        v26 = v16;
LABEL_52:
        [(PHContentEditingInputRequestContext *)v25 processAndReturnResultsWithRequest:v26];
        goto LABEL_53;
      }

LABEL_87:
      v69 = PLImageManagerGetLog();
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      v70 = [(PHMediaRequest *)v16 identifierString];
      *buf = 138412546;
      v82 = v70;
      v83 = 2048;
      v84 = [(PHAdjustmentDataRequest *)v16 resourceType];
      v71 = "[RM] %@ Content editing made request for invalid resource type for edit: %lu";
      v72 = v69;
      v73 = OS_LOG_TYPE_ERROR;
      v74 = 22;
      goto LABEL_89;
    }

    if (self->_repairRequest == v8)
    {
      v37 = PLImageManagerGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(PHMediaRequest *)v8 identifierString];
        v39 = [v7 error];
        if (v39)
        {
          v40 = MEMORY[0x1E696AEC0];
          v4 = [v7 error];
          v41 = [v40 stringWithFormat:@" with error: %@", v4];
        }

        else
        {
          v41 = &stru_1F0FC60C8;
        }

        *buf = 138412546;
        v82 = v38;
        v83 = 2112;
        v84 = v41;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_DEFAULT, "[RM] %@ repair request finished%@", buf, 0x16u);
        if (v39)
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
    v31 = [(PHMediaRequest *)v8 identifierString];
    v32 = [v7 info];
    *buf = 138412802;
    v82 = v31;
    v83 = 2112;
    v84 = v7;
    v85 = 2112;
    v86 = v32;
    _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEBUG, "[RM] %@ Content editing video request finished with result: %@, info: %@", buf, 0x20u);
  }

  if (![v7 containsValidData])
  {
    os_unfair_lock_lock(&self->_lock);
    v42 = self->_inflightMediaRequestCount - 1;
    self->_inflightMediaRequestCount = v42;
    v43 = [(PHMediaRequestContext *)self asset];
    if ([v43 isPhotoIris])
    {
      v44 = [(PHMediaRequestContext *)self asset];
      if (![v44 canPlayPhotoIris])
      {
        v62 = [(PHVideoRequest *)self->_videoRequest behaviorSpec];
        v63 = [v62 version];

        if (v63 != 1)
        {
          v49 = PLImageManagerGetLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [(PHMediaRequest *)v8 identifierString];
            *buf = 138412290;
            v82 = v50;
            v51 = "[RM] %@ Live photo edit request continuing with missing video, reason: unplayable";
            goto LABEL_77;
          }

LABEL_78:

          goto LABEL_81;
        }

LABEL_39:
        v45 = [(PHMediaRequestContext *)self asset];
        if ([v45 isPhotoIris])
        {
          v46 = [(PHVideoRequest *)self->_videoRequest behaviorSpec];
          if ([v46 version] == 8)
          {
            v47 = [v7 error];
            if ([v47 code] == 3303)
            {
              v48 = [v7 isInCloud];

              if ((v48 & 1) == 0)
              {
                v49 = PLImageManagerGetLog();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = [(PHMediaRequest *)v8 identifierString];
                  *buf = 138412290;
                  v82 = v50;
                  v51 = "[RM] %@ Live photo edit request continuing with missing video, reason: missing penultimate";
LABEL_77:
                  _os_log_impl(&dword_19C86F000, v49, OS_LOG_TYPE_DEFAULT, v51, buf, 0xCu);

                  goto LABEL_78;
                }

                goto LABEL_78;
              }

LABEL_73:
              v65 = [(PHMediaRequestContext *)self asset];
              if ([v65 isPhotoIris])
              {
                v66 = [v7 error];
                v67 = [v66 userInfo];
                v68 = [v67 objectForKeyedSubscript:*MEMORY[0x1E69BF130]];

                if (v68)
                {
                  v49 = PLImageManagerGetLog();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = [(PHMediaRequest *)v8 identifierString];
                    *buf = 138412290;
                    v82 = v50;
                    v51 = "[RM] %@ Live photo edit request continuing with missing video, reason: zero videos found";
                    goto LABEL_77;
                  }

                  goto LABEL_78;
                }
              }

              else
              {
              }

              [(PHContentEditingInputResult *)self->_contentEditingInputResult addVideoResult:v7];
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

  v33 = [v7 videoURL];
  v34 = [(PHMediaRequestContext *)self asset];
  v35 = [v7 videoAdjustmentData];
  v36 = [(PHContentEditingInputResult *)self->_contentEditingInputResult canHandleAdjustmentData];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __69__PHContentEditingInputRequestContext_processMediaResult_forRequest___block_invoke;
  v75[3] = &unk_1E75A9390;
  v76 = v7;
  v77 = self;
  v78 = v8;
  [(PHContentEditingInputRequestContext *)self _renderVideoFromVideoURL:v33 asset:v34 adjustmentData:v35 canHandleAdjustmentData:v36 resultHandler:v75];

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

- (void)processAndReturnResultsWithRequest:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLImageManagerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 134218240;
    *&v12[4] = [(PHMediaRequestContext *)self managerID];
    v13 = 2048;
    v14 = [(PHMediaRequestContext *)self requestID];
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld All content editing requests complete, building content editing input", v12, 0x16u);
  }

  v6 = [(PHContentEditingInputRequestOptions *)self->_options progressHandler];
  if (v6)
  {
    v7 = v6;
    [(PHMediaRequestContext *)self totalProgressFraction];
    v9 = v8;

    if (v9 < 1.0)
    {
      v12[0] = 0;
      v10 = [(PHContentEditingInputRequestOptions *)self->_options progressHandler];
      (v10)[2](v10, v12, 1.0);
    }
  }

  resultHandler = self->super._resultHandler;
  if (resultHandler)
  {
    resultHandler[2](resultHandler, self->_contentEditingInputResult, v4, self);
  }
}

- (id)progresses
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(PHContentEditingInputRequestContext *)self _lazyAdjustmentProgress];
  v5 = [v3 arrayWithObject:v4];

  if ([(PHContentEditingInputRequestContext *)self _shouldRequestImage])
  {
    v6 = [(PHContentEditingInputRequestContext *)self _lazyImageProgress];
    [v5 addObject:v6];
  }

  if ([(PHContentEditingInputRequestContext *)self _shouldRequestVideo])
  {
    v7 = [(PHContentEditingInputRequestContext *)self _lazyVideoProgress];
    [v5 addObject:v7];
  }

  return v5;
}

- (id)progressHandler
{
  v2 = [(PHContentEditingInputRequestOptions *)self->_options progressHandler];
  v3 = v2;
  if (v2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__PHContentEditingInputRequestContext_progressHandler__block_invoke;
    aBlock[3] = &unk_1E75A9368;
    v7 = v2;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)produceChildRequestsForRequest:(id)a3 reportingIsLocallyAvailable:(BOOL)a4 isDegraded:(BOOL)a5 result:(id)a6
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
  v10 = [(PHMediaRequestContext *)self isCancelled];
  v11 = 0;
  if (v9 && !v10)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    if (self->_adjustmentRequest == v8)
    {
      v72 = 0;
      v25 = [(PHContentEditingInputRequestContext *)self _adjustmentBaseVersionFromResult:v9 request:v8 canHandleAdjustmentData:&v72];
      contentEditingInputResult = self->_contentEditingInputResult;
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
      [(PHContentEditingInputResult *)contentEditingInputResult setBaseVersionNeeded:v27];

      [(PHContentEditingInputResult *)self->_contentEditingInputResult setCanHandleAdjustmentData:v72];
      if (!v25)
      {
        v28 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:16];
        if (v28)
        {
          v29 = [(PHContentEditingInputRequestContext *)self _lazyAdjustmentProgress];
          v30 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v28 wantsURLOnly:0 progress:v29];

          [v11 addObject:v30];
          v31 = PLImageManagerGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = [v30 identifierString];
            *buf = 138412290;
            v74 = v32;
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
          [v11 addObject:v36];

LABEL_31:
          os_unfair_lock_lock(&self->_lock);
          self->_inflightMediaRequestCount += [v11 count];
          os_unfair_lock_unlock(&self->_lock);
          goto LABEL_32;
        }
      }
    }

    else if (self->_repairRequest == v8)
    {
      v37 = [(PHMediaRequestContext *)self asset];
      v38 = [PHAssetResource assetResourcesForAsset:v37 includeDerivatives:1 includeMetadata:1];
      assetResources = self->_assetResources;
      self->_assetResources = v38;
    }

    else if (![(NSMutableIndexSet *)self->_requestIndexesOfAssetResourceRequests containsIndex:[(PHMediaRequest *)v8 requestIndex]]|| [(PHRepairRequest *)v8 resourceType]!= 104 && [(PHRepairRequest *)v8 resourceType]!= 105)
    {
      if ([(PHMediaRequest *)v8 requestIndex]== self->_imageBaseRequestIndex)
      {
        v12 = [v9 imageURL];

        if (v12)
        {
          v13 = v8;
          v14 = MEMORY[0x1E6982C40];
          v15 = [v9 uniformTypeIdentifier];
          v16 = [v14 typeWithIdentifier:v15];
          v17 = [v16 conformsToType:*MEMORY[0x1E6982F88]];

          options = self->_options;
          if (v17)
          {
            v19 = [(PHContentEditingInputRequestOptions *)options canHandleRAW];

            if (v19)
            {
              v20 = [v9 imagePropertiesLoadIfNeeded:1];
              v21 = [(PHContentEditingInputRequestOptions *)self->_options canHandleRAW];
              v22 = (v21)[2](v21, v20);

              if ((v22 & 1) == 0)
              {
                v23 = PLImageManagerGetLog();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  v24 = [(PHMediaRequest *)v13 identifierString];
                  *buf = 138412290;
                  v74 = v24;
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
                  [v11 addObject:v66];
                  self->_imageBaseRequestIndex = [v66 requestIndex];
                }

                else
                {
                  v66 = PLImageManagerGetLog();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    v67 = [(PHMediaRequest *)v13 identifierString];
                    *buf = 138412290;
                    v74 = v67;
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
            v44 = [(PHContentEditingInputResult *)self->_contentEditingInputResult baseVersionNeeded];
            v45 = [v44 integerValue];

            v46 = [(PHContentEditingInputRequestContext *)self isNetworkAccessAllowed];
            v70 = v13;
            v47 = [(PHContentEditingInputRequestContext *)self downloadIntent];
            useRAWAsUnadjustedBase = self->_useRAWAsUnadjustedBase;
            v49 = [(PHMediaRequestContext *)self asset];
            v50 = [PHImageRequestBehaviorSpec contentEditingInputImageBehaviorSpecForBaseVersion:v45 isNetworkAccessAllowed:v46 downloadIntent:v47 shouldUseRAWAsUnadjustedBase:useRAWAsUnadjustedBase asset:v49];

            [v50 setLoadingOptions:1];
            [v50 setResizeMode:2];
            v68 = [PHImageRequest alloc];
            v51 = [(PHMediaRequestContext *)self requestID];
            v52 = [(PHMediaRequestContext *)self nextRequestIndex];
            v53 = [(PHMediaRequestContext *)self managerID];
            v54 = [(PHMediaRequestContext *)self asset];
            v55 = [(PHMediaRequestContext *)self imageResourceChooser];
            v69 = v50;
            v56 = [(PHImageRequest *)v68 initWithRequestID:v51 requestIndex:v52 contextType:4 managerID:v53 asset:v54 displaySpec:v71 behaviorSpec:v50 chooser:v55 delegate:self];
            displayImageRequest = self->_displayImageRequest;
            self->_displayImageRequest = v56;

            v13 = v70;
            v58 = MEMORY[0x1E69BE540];
            v59 = [(PHRepairRequest *)v70 resource];
            v60 = [v59 uniformTypeIdentifier];
            LODWORD(v58) = [v58 isPrimaryImageFormatForUTI:v60];

            if (v58)
            {
              v61 = self->_displayImageRequest;
              v62 = [v9 imageURL];
              v63 = [v9 uniformTypeIdentifier];
              v64 = [v9 exifOrientation];
              -[PHImageRequest configureWithURL:uniformTypeIdentifier:exifOrientation:](v61, "configureWithURL:uniformTypeIdentifier:exifOrientation:", v62, v63, [v64 intValue]);
            }

            [v11 addObject:self->_displayImageRequest];
          }
        }
      }

      goto LABEL_31;
    }

    [(PHContentEditingInputRequestContext *)self _prepareAndAddMediaRequestsToChildRequests:v11];
    goto LABEL_31;
  }

LABEL_32:

  return v11;
}

- (id)initialRequests
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PHAdjustmentDataRequestBehaviorSpec);
  [(PHAdjustmentDataRequestBehaviorSpec *)v3 setNetworkAccessAllowed:[(PHContentEditingInputRequestOptions *)self->_options isNetworkAccessAllowed]];
  v4 = [PHAdjustmentDataRequest alloc];
  v5 = [(PHMediaRequestContext *)self requestID];
  v6 = [(PHMediaRequestContext *)self nextRequestIndex];
  v7 = [(PHContentEditingInputRequestContext *)self type];
  v8 = [(PHMediaRequestContext *)self managerID];
  v9 = [(PHMediaRequestContext *)self asset];
  v10 = [(PHAdjustmentDataRequest *)v4 initWithRequestID:v5 requestIndex:v6 contextType:v7 managerID:v8 asset:v9 behaviorSpec:v3 delegate:self];
  adjustmentRequest = self->_adjustmentRequest;
  self->_adjustmentRequest = v10;

  os_unfair_lock_lock(&self->_lock);
  ++self->_inflightMediaRequestCount;
  os_unfair_lock_unlock(&self->_lock);
  v12 = [(PHContentEditingInputRequestContext *)self _lazyAdjustmentProgress];
  v13 = [(PHMediaRequest *)self->_adjustmentRequest identifierString];
  [(PHMediaRequestContext *)self setProgress:v12 forRequestIdentifier:v13];

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
    v17 = [(PHMediaRequestContext *)self managerID];
    v16 = [(PHMediaRequestContext *)self requestID];
    v18 = [(PHMediaRequestContext *)self asset];
    v19 = [v18 uuid];
    v5 = [(PHContentEditingInputRequestContext *)self options];
    v6 = @"N";
    v7 = @"Y";
    if ([v5 isNetworkAccessAllowed])
    {
      v8 = @"Y";
    }

    else
    {
      v8 = @"N";
    }

    v9 = [(PHContentEditingInputRequestContext *)self options];
    if (![v9 forceRunAsUnadjustedAsset])
    {
      v7 = @"N";
    }

    v10 = [(PHContentEditingInputRequestContext *)self options];
    v11 = [v10 shouldForceOriginalChoice];
    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v15 = [(PHContentEditingInputRequestContext *)self options];
      v13 = [v15 originalChoice];
      if (v13 > 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = off_1E75A71C8[v13];
      }

      v2 = v14;
      v6 = [v12 stringWithFormat:@"Y (%@)", v2];
    }

    *buf = 134350338;
    v22 = v17;
    v23 = 2050;
    v24 = v16;
    v25 = 2114;
    v26 = v19;
    v27 = 2114;
    v28 = v8;
    v29 = 2114;
    v30 = v7;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEFAULT, "[RM] %{public}ld-%{public}ld starting edit request for asset %{public}@, net: %{public}@, force unadjusted: %{public}@, set original choice: %{public}@", buf, 0x3Eu);
    if (v11)
    {
    }
  }

  v20.receiver = self;
  v20.super_class = PHContentEditingInputRequestContext;
  [(PHMediaRequestContext *)&v20 start];
}

- (id)_resourceRequestForAssetResource:(id)a3 wantsURLOnly:(BOOL)a4 progress:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v28 = v9;
    v10 = [(PHMediaRequestContext *)self nextRequestIndex];
    v27 = v8;
    v11 = [PHMediaResourceRequest alloc];
    v12 = [(PHMediaRequestContext *)self requestID];
    v13 = [(PHContentEditingInputRequestContext *)self type];
    v14 = [(PHMediaRequestContext *)self managerID];
    v15 = [(PHMediaRequestContext *)self asset];
    v16 = [(PHContentEditingInputRequestContext *)self options];
    v17 = [v16 isNetworkAccessAllowed];
    LOWORD(v26) = a4;
    v25 = [(PHContentEditingInputRequestContext *)self downloadIntent];
    LOBYTE(v24) = v17;
    v18 = v11;
    v8 = v27;
    v19 = [(PHMediaResourceRequest *)v18 initWithRequestID:v12 requestIndex:v10 contextType:v13 managerID:v14 asset:v15 assetResource:v27 networkAccessAllowed:v24 downloadIntent:v25 downloadPriority:0 wantsURLOnly:v26 synchronous:self delegate:?];

    v20 = v10;
    v9 = v28;
    [(NSMutableIndexSet *)self->_requestIndexesOfAssetResourceRequests addIndex:v20];
    if (v28)
    {
      v21 = [(PHMediaRequest *)v19 identifierString];
      [(PHMediaRequestContext *)self setProgress:v28 forRequestIdentifier:v21];
      objc_initWeak(&location, self);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __94__PHContentEditingInputRequestContext__resourceRequestForAssetResource_wantsURLOnly_progress___block_invoke;
      v29[3] = &unk_1E75A9340;
      objc_copyWeak(&v31, &location);
      v22 = v21;
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
  v2 = [(PHContentEditingInputRequestContext *)self _assetResources];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      v9 = [v8 backingResourceIdentity];
      v10 = [v9 version];

      if (!v10)
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
    v12 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    v4 = v12;
  }

  while (v12);
LABEL_21:

  return v5;
}

- (id)_assetResourceForType:(int64_t)a3
{
  v4 = [(PHContentEditingInputRequestContext *)self _assetResources];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PHContentEditingInputRequestContext__assetResourceForType___block_invoke;
  v8[3] = &__block_descriptor_40_e32_B32__0__PHAssetResource_8Q16_B24l;
  v8[4] = a3;
  v5 = [v4 indexOfObjectPassingTest:v8];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (id)_assetResources
{
  assetResources = self->_assetResources;
  if (!assetResources)
  {
    v4 = [(PHMediaRequestContext *)self asset];
    v5 = [PHAssetResource assetResourcesForAsset:v4 includeDerivatives:1 includeMetadata:1];
    v6 = self->_assetResources;
    self->_assetResources = v5;

    assetResources = self->_assetResources;
  }

  return assetResources;
}

- (int64_t)_assetResourceTypeForResourceType:(unsigned int)a3 withBaseVersion:(int64_t)a4
{
  if (a3 == 3)
  {
    v8 = 9;
    if (a4 == 2)
    {
      v8 = 10;
    }

    v9 = a4 == 1;
    v10 = 11;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"PHContentEditingInputRequestContext.m" lineNumber:575 description:{@"Invalid resource type, valid options are image, video, or video complement"}];
      }

      else
      {
        if (a4 == 2)
        {
          return 5;
        }

        if (a4 == 1)
        {
          return 8;
        }

        if (!a4 && self->_useRAWAsUnadjustedBase)
        {
          v5 = [(PHMediaRequestContext *)self asset];
          v6 = [v5 isRAWPlusJPEG];

          if (v6)
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
    if (a4 == 2)
    {
      v8 = 6;
    }

    v9 = a4 == 1;
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

- (void)_prepareAndAddMediaRequestsToChildRequests:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHContentEditingInputResult *)self->_contentEditingInputResult baseVersionNeeded];
  v6 = [v5 integerValue];

  v48 = 0;
  v7 = [(PHContentEditingInputRequestContext *)self _baseMediaRequestsForBaseVersion:v6 error:&v48];
  v8 = v48;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 == 1;
  }

  if (v9)
  {
    v10 = [(PHContentEditingInputRequestOptions *)self->_options disallowFallbackAdjustmentBase];
    v11 = PLImageManagerGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v12)
      {
        v13 = [(PHMediaRequestContext *)self managerID];
        v14 = [(PHMediaRequestContext *)self requestID];
        v15 = @"penultimate";
        *buf = 134218754;
        v50 = v13;
        v51 = 2048;
        v52 = v14;
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
      v16 = [(PHMediaRequestContext *)self managerID];
      v17 = [(PHMediaRequestContext *)self requestID];
      v18 = @"penultimate";
      v19 = @"current";
      *buf = 134218754;
      v50 = v16;
      v51 = 2048;
      v52 = v17;
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
        v32 = [(PHMediaRequestContext *)self managerID];
        v33 = [(PHMediaRequestContext *)self requestID];
        *buf = 134218240;
        v50 = v32;
        v51 = 2048;
        v52 = v33;
        _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_ERROR, "[RM] %ld-%ld No media requests", buf, 0x16u);
      }

      [(PHCompositeMediaResult *)self->_contentEditingInputResult setErrorIfNone:v8];
      goto LABEL_51;
    }

    [(PHContentEditingInputResult *)self->_contentEditingInputResult clearAdjustmentData];
    v6 = 2;
    v8 = v20;
  }

  else if (!v7)
  {
    goto LABEL_28;
  }

  contentEditingInputResult = self->_contentEditingInputResult;
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  [(PHContentEditingInputResult *)contentEditingInputResult setBaseVersionNeeded:v22];

  [v4 addObjectsFromArray:v7];
  if ([(PHContentEditingInputRequestContext *)self _shouldRequestVideo])
  {
    v23 = [(PHMediaRequestContext *)self asset];
    if ([v23 isPhotoIris])
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
      [v4 addObject:v26];
    }

    if ([(PHContentEditingInputRequestOptions *)self->_options requireOriginalsDownloaded])
    {
      v27 = [(PHMediaRequestContext *)self asset];
      if ([v27 isPhotoIris])
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
        [v4 addObject:v30];

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
      [v4 addObject:v35];
    }

    if ([(PHContentEditingInputRequestOptions *)self->_options requireOriginalsDownloaded])
    {
      v36 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:1];

      if (v36)
      {
        v37 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v36 wantsURLOnly:1 progress:0];
        [v4 addObject:v37];
      }

      v38 = [(PHMediaRequestContext *)self asset];
      v39 = [v38 isRAWPlusJPEG];

      if (v39)
      {
        v34 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:4];

        if (v34)
        {
          v40 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v34 wantsURLOnly:1 progress:0];
          [v4 addObject:v40];
        }
      }

      else
      {
        v34 = v36;
      }
    }
  }

  if (v6 != 2)
  {
    v41 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:110];
    if (v41)
    {
      v42 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v41 wantsURLOnly:1 progress:0];
      [v4 addObject:v42];
    }
  }

  v43 = PLImageManagerGetLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v44 = [(PHMediaRequestContext *)self managerID];
    v45 = [(PHMediaRequestContext *)self requestID];
    v46 = [v4 count];
    *buf = 134218496;
    v50 = v44;
    v51 = 2048;
    v52 = v45;
    v53 = 2048;
    v54 = v46;
    _os_log_impl(&dword_19C86F000, v43, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld Starting %ld child media requests", buf, 0x20u);
  }

LABEL_51:
}

- (id)_baseMediaRequestsForBaseVersion:(int64_t)a3 error:(id *)a4
{
  v128 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = PLImageManagerGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(PHMediaRequestContext *)self managerID];
    v9 = [(PHMediaRequestContext *)self requestID];
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

    v121 = v8;
    v122 = 2048;
    v123 = v9;
    v124 = 2112;
    v125 = v10;
    v126 = 2112;
    v127 = v11;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld Preparing media requests, for images: %@, video: %@", buf, 0x2Au);
  }

  v12 = [(PHContentEditingInputRequestContext *)self options];
  v13 = [v12 forcePrepareCurrentBaseVersionInAddition];

  if (a3 != 2 && v13)
  {
    v14 = PLImageManagerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(PHMediaRequestContext *)self managerID];
      v16 = [(PHMediaRequestContext *)self requestID];
      *buf = 134218240;
      v121 = v15;
      v122 = 2048;
      v123 = v16;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld Can handle adjustment data, but also need adjusted FullSizeRenders for extensions (like Markup), kicking off additional requests", buf, 0x16u);
    }

    if ([(PHContentEditingInputRequestContext *)self _shouldRequestVideo])
    {
      v17 = [(PHContentEditingInputRequestContext *)self _videoBehaviorSpecForBaseVersion:2];
      v18 = [PHVideoRequest alloc];
      v19 = [(PHMediaRequestContext *)self requestID];
      v20 = [(PHMediaRequestContext *)self nextRequestIndex];
      v21 = [(PHContentEditingInputRequestContext *)self type];
      v22 = a3;
      v23 = [(PHMediaRequestContext *)self managerID];
      v24 = [(PHMediaRequestContext *)self asset];
      v25 = v23;
      a3 = v22;
      v26 = [(PHVideoRequest *)v18 initWithRequestID:v19 requestIndex:v20 contextType:v21 managerID:v25 asset:v24 displaySpec:0 behaviorSpec:v17 delegate:self];

      [v6 addObject:v26];
    }

    if ([(PHContentEditingInputRequestContext *)self _shouldRequestImage])
    {
      v27 = [(PHContentEditingInputRequestContext *)self isNetworkAccessAllowed];
      v28 = [(PHContentEditingInputRequestContext *)self downloadIntent];
      useRAWAsUnadjustedBase = self->_useRAWAsUnadjustedBase;
      v30 = [(PHMediaRequestContext *)self asset];
      v117 = [PHImageRequestBehaviorSpec contentEditingInputImageBehaviorSpecForBaseVersion:2 isNetworkAccessAllowed:v27 downloadIntent:v28 shouldUseRAWAsUnadjustedBase:useRAWAsUnadjustedBase asset:v30];

      v31 = [PHImageResourceChooser alloc];
      v32 = [(PHMediaRequestContext *)self asset];
      v33 = [(PHImageResourceChooser *)v31 initWithAsset:v32 resourceHandler:0];
      backupChooser = self->_backupChooser;
      self->_backupChooser = v33;

      v35 = [PHImageRequest alloc];
      v36 = [(PHMediaRequestContext *)self requestID];
      v37 = [(PHMediaRequestContext *)self nextRequestIndex];
      v38 = [(PHContentEditingInputRequestContext *)self type];
      v39 = [(PHMediaRequestContext *)self managerID];
      [(PHMediaRequestContext *)self asset];
      v41 = v40 = a3;
      v42 = [(PHImageRequest *)v35 initWithRequestID:v36 requestIndex:v37 contextType:v38 managerID:v39 asset:v41 displaySpec:0 behaviorSpec:v117 chooser:self->_backupChooser delegate:self];

      a3 = v40;
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

  v43 = [(PHMediaRequestContext *)self asset];
  if ([v43 isPhotoIris])
  {
    v44 = 3;
  }

  else
  {
    v44 = 1;
  }

  v45 = [(PHContentEditingInputRequestContext *)self _assetResourceTypeForResourceType:v44 withBaseVersion:a3];

  v46 = PLImageManagerGetLog();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = [(PHMediaRequestContext *)self managerID];
    v48 = [(PHMediaRequestContext *)self requestID];
    v49 = _PHAssetResourceTypeDescription(v45);
    if (a3 > 2)
    {
      v50 = @"unknown";
    }

    else
    {
      v50 = off_1E75A7398[a3];
    }

    v51 = v50;
    *buf = 134218754;
    v121 = v47;
    v122 = 2048;
    v123 = v48;
    v124 = 2112;
    v125 = v49;
    v126 = 2112;
    v127 = v51;
    _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_DEBUG, "[RM] %ld-%ld determined video asset resource type: %@ for base version: %@", buf, 0x2Au);
  }

  v52 = [(PHContentEditingInputRequestContext *)self _assetResourceForType:v45];
  if (!v52)
  {
    v68 = [(PHMediaRequestContext *)self asset];
    v69 = [v68 isPhotoIris];

    if (v69)
    {
      v70 = [(PHMediaRequestContext *)self asset];
      v71 = [v70 canPlayPhotoIris];

      if (a3 && (v71 & 1) == 0)
      {
        v62 = PLImageManagerGetLog();
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v72 = [(PHMediaRequestContext *)self managerID];
        v73 = [(PHMediaRequestContext *)self requestID];
        if (a3 > 2)
        {
          v74 = @"unknown";
        }

        else
        {
          v74 = off_1E75A7398[a3];
        }

        v115 = v74;
        *buf = 134218498;
        v121 = v72;
        v122 = 2048;
        v123 = v73;
        v124 = 2112;
        v125 = v115;
        v116 = "[RM] %ld-%ld Live photo edit request allowing missing video, reason: unplayable, base version: %@";
LABEL_79:
        _os_log_impl(&dword_19C86F000, v62, OS_LOG_TYPE_DEFAULT, v116, buf, 0x20u);

        goto LABEL_30;
      }

      repairRequest = self->_repairRequest;
      if (a3 == 1)
      {
        if (repairRequest)
        {
          v62 = PLImageManagerGetLog();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v76 = [(PHMediaRequestContext *)self managerID];
            v77 = [(PHMediaRequestContext *)self requestID];
            *buf = 134218240;
            v121 = v76;
            v122 = 2048;
            v123 = v77;
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

        v78 = [(PHMediaRequestContext *)self managerID];
        v79 = [(PHMediaRequestContext *)self requestID];
        if (a3 > 2)
        {
          v80 = @"unknown";
        }

        else
        {
          v80 = off_1E75A7398[a3];
        }

        v115 = v80;
        *buf = 134218498;
        v121 = v78;
        v122 = 2048;
        v123 = v79;
        v124 = 2112;
        v125 = v115;
        v116 = "[RM] %ld-%ld Live photo edit request allowing missing video, reason: zero videos found, base version: %@";
        goto LABEL_79;
      }
    }

    v67 = 0;
    goto LABEL_46;
  }

  v53 = [(PHContentEditingInputRequestContext *)self _videoBehaviorSpecForBaseVersion:a3];
  v118 = [PHVideoRequest alloc];
  v54 = [(PHMediaRequestContext *)self requestID];
  v55 = [(PHMediaRequestContext *)self nextRequestIndex];
  v56 = [(PHContentEditingInputRequestContext *)self type];
  v57 = v52;
  v58 = a3;
  v59 = [(PHMediaRequestContext *)self managerID];
  v60 = [(PHMediaRequestContext *)self asset];
  v61 = v59;
  a3 = v58;
  v52 = v57;
  v62 = v53;
  v63 = [(PHVideoRequest *)v118 initWithRequestID:v54 requestIndex:v55 contextType:v56 managerID:v61 asset:v60 displaySpec:0 behaviorSpec:v53 delegate:self];
  videoRequest = self->_videoRequest;
  self->_videoRequest = v63;

  v65 = [(PHContentEditingInputRequestContext *)self _lazyVideoProgress];
  v66 = [(PHMediaRequest *)self->_videoRequest identifierString];
  [(PHMediaRequestContext *)self setProgress:v65 forRequestIdentifier:v66];

  [v6 addObject:self->_videoRequest];
LABEL_30:

  v45 = 1;
  v67 = 1;
LABEL_46:

  v81 = [(PHContentEditingInputRequestContext *)self _shouldRequestImage];
  if (!v67 || !v81)
  {
    if ((v67 & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_48:
  v45 = [(PHContentEditingInputRequestContext *)self _assetResourceTypeForResourceType:0 withBaseVersion:a3];
  v82 = PLImageManagerGetLog();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
  {
    v83 = [(PHMediaRequestContext *)self managerID];
    v84 = [(PHMediaRequestContext *)self requestID];
    v85 = _PHAssetResourceTypeDescription(v45);
    if (a3 > 2)
    {
      v86 = @"unknown";
    }

    else
    {
      v86 = off_1E75A7398[a3];
    }

    v88 = v86;
    *buf = 134218754;
    v121 = v83;
    v122 = 2048;
    v123 = v84;
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
    v91 = [(PHContentEditingInputRequestContext *)self _lazyImageProgress];
    v92 = [(PHContentEditingInputRequestContext *)self _resourceRequestForAssetResource:v90 wantsURLOnly:1 progress:v91];

    self->_imageBaseRequestIndex = [v92 requestIndex];
    [v6 addObject:v92];

    goto LABEL_66;
  }

LABEL_57:
  v93 = PLImageManagerGetLog();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
  {
    v94 = [(PHMediaRequestContext *)self managerID];
    v95 = [(PHMediaRequestContext *)self requestID];
    if (a3 > 2)
    {
      v96 = @"unknown";
    }

    else
    {
      v96 = off_1E75A7398[a3];
    }

    v97 = v96;
    v98 = _PHAssetResourceTypeDescription(v45);
    *buf = 134218754;
    v121 = v94;
    v122 = 2048;
    v123 = v95;
    v124 = 2112;
    v125 = v97;
    v126 = 2112;
    v127 = v98;
    _os_log_impl(&dword_19C86F000, v93, OS_LOG_TYPE_ERROR, "[RM] %ld-%ld Base version needed is %@, but did not find asset resource of type %@", buf, 0x2Au);
  }

  if (self->_repairRequest)
  {

    v99 = MEMORY[0x1E696ABC0];
    if (a3 > 2)
    {
      v100 = @"unknown";
    }

    else
    {
      v100 = off_1E75A7398[a3];
    }

    v90 = v100;
    v112 = _PHAssetResourceTypeDescription(v45);
    v87 = [v99 ph_errorWithCode:3306 localizedDescription:{@"Base version needed is %@, but did not find asset resource of type %@", v90, v112}];

    v6 = 0;
    goto LABEL_69;
  }

  v101 = [PHRepairRequest alloc];
  v102 = [(PHMediaRequestContext *)self requestID];
  v103 = v6;
  v104 = [(PHMediaRequestContext *)self nextRequestIndex];
  v105 = [(PHContentEditingInputRequestContext *)self type];
  v106 = [(PHMediaRequestContext *)self managerID];
  v107 = [(PHMediaRequestContext *)self asset];
  v108 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F102D580];
  v109 = v104;
  v6 = v103;
  v110 = [(PHRepairRequest *)v101 initWithRequestID:v102 requestIndex:v109 contextType:v105 managerID:v106 asset:v107 assetResource:0 errorCodes:v108 delegate:self];

  [v103 removeAllObjects];
  v111 = self->_repairRequest;
  self->_repairRequest = v110;
  v90 = v110;

  [v103 addObject:self->_repairRequest];
LABEL_66:
  v87 = 0;
LABEL_69:

LABEL_70:
  if (a4)
  {
    v113 = v87;
    *a4 = v87;
  }

  return v6;
}

- (void)_renderTemporaryVideoForObjectBuilder:(id)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x1E6987338];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PHContentEditingInputRequestContext__renderTemporaryVideoForObjectBuilder_resultHandler___block_invoke;
  v8[3] = &unk_1E75A92F8;
  v9 = v5;
  v7 = v5;
  [a3 requestExportSessionWithExportPreset:v6 resultHandler:v8];
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

- (void)_renderVideoFromVideoURL:(id)a3 asset:(id)a4 adjustmentData:(id)a5 canHandleAdjustmentData:(BOOL)a6 resultHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = MEMORY[0x1E69C0910];
  v15 = a5;
  v16 = a4;
  v17 = [v14 alloc];
  v18 = [v15 formatIdentifier];
  v19 = [v15 formatVersion];
  v20 = [v15 data];

  v21 = [v17 initWithFormatIdentifier:v18 formatVersion:v19 data:v20 baseVersion:0 editorBundleID:0 renderTypes:0];
  LOBYTE(v17) = [v16 isPhotoIris];

  if ((v17 & 1) != 0 || a6 || ([v21 isRecognizedFormat] & 1) == 0)
  {
    v13[2](v13, v12, 0);
  }

  else
  {
    v22 = [MEMORY[0x1E6988168] assetWithURL:v12];
    v23 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v22 videoAdjustments:v21];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __123__PHContentEditingInputRequestContext__renderVideoFromVideoURL_asset_adjustmentData_canHandleAdjustmentData_resultHandler___block_invoke;
    v24[3] = &unk_1E75A92D0;
    v25 = v13;
    [(PHContentEditingInputRequestContext *)self _renderTemporaryVideoForObjectBuilder:v23 resultHandler:v24];
  }
}

- (int64_t)_adjustmentBaseVersionFromResult:(id)a3 request:(id)a4 canHandleAdjustmentData:(BOOL *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v10 = [(PHContentEditingInputRequestContext *)self options];
  v11 = [v10 forceRunAsUnadjustedAsset];

  if (v11)
  {
    v12 = PLImageManagerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v9 identifierString];
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "[RM] %@ Force run as unadjusted base", buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_20;
  }

  v12 = [v8 adjustmentData];
  v15 = [v8 error];
  v16 = [v15 domain];
  if ([v16 isEqualToString:*MEMORY[0x1E69BE900]])
  {
    if ([v15 code] == 3)
    {

LABEL_12:
      v12 = 0;
      v15 = 0;
      goto LABEL_13;
    }

    v18 = [v15 code];

    if (v18 == 4)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (!v12)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v17 = [(PHContentEditingInputRequestOptions *)self->_options canHandleAdjustmentData];
  v14 = [v12 _contentEditing_requiredBaseVersionReadableByClient:&v24 verificationBlock:v17];

LABEL_14:
  v19 = PLImageManagerGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v9 identifierString];
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
    v26 = v20;
    v27 = 2114;
    v28 = v22;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ Calculated adjustment base: %{public}@ from adjustment data: %@", buf, 0x20u);
  }

LABEL_20:
  if (a5)
  {
    *a5 = v24;
  }

  return v14;
}

- (id)_videoBehaviorSpecForBaseVersion:(int64_t)a3
{
  v5 = objc_alloc_init(PHVideoRequestBehaviorSpec);
  [(PHVideoRequestBehaviorSpec *)v5 setDeliveryMode:1];
  [(PHVideoRequestBehaviorSpec *)v5 setNetworkAccessAllowed:[(PHContentEditingInputRequestContext *)self isNetworkAccessAllowed]];
  v6 = [(PHMediaRequestContext *)self asset];
  -[PHVideoRequestBehaviorSpec setVideoComplementAllowed:](v5, "setVideoComplementAllowed:", [v6 isPhotoIris]);

  [(PHVideoRequestBehaviorSpec *)v5 setDownloadIntent:[(PHContentEditingInputRequestContext *)self downloadIntent]];
  [(PHVideoRequestBehaviorSpec *)v5 setVersion:[PHAdjustmentData videoRequestVersionFromAdjustmentBaseVersion:a3]];

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
  v3 = [(PHMediaRequestContext *)self asset];
  if ([v3 isPhotoIris])
  {
    if ([(PHContentEditingInputRequestOptions *)self->_options forceReturnFullLivePhoto])
    {
      v4 = 1;
    }

    else
    {
      v5 = [(PHMediaRequestContext *)self asset];
      if ([v5 canPlayPhotoIris])
      {
        v4 = 1;
      }

      else
      {
        v6 = [(PHMediaRequestContext *)self asset];
        if ([v6 canPlayMirror])
        {
          v4 = 1;
        }

        else
        {
          v7 = [(PHMediaRequestContext *)self asset];
          v4 = [v7 canPlayAutoloop];
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = [(PHMediaRequestContext *)self asset];
  v9 = [v8 isVideo] | v4;

  return v9 & 1;
}

- (BOOL)_shouldRequestImage
{
  v2 = [(PHMediaRequestContext *)self asset];
  v3 = [v2 isPhoto];

  return v3;
}

- (PHContentEditingInputRequestContext)initWithRequestID:(int)a3 managerID:(unint64_t)a4 asset:(id)a5 options:(id)a6 useRAWAsUnadjustedBase:(BOOL)a7 resultHandler:(id)a8
{
  v13 = *&a3;
  v15 = a6;
  v23.receiver = self;
  v23.super_class = PHContentEditingInputRequestContext;
  v16 = [(PHMediaRequestContext *)&v23 initWithRequestID:v13 managerID:a4 asset:a5 displaySpec:0 resultHandler:a8];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_options, a6);
    v17->_useRAWAsUnadjustedBase = a7;
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

+ (id)contentEditingInputRequestContextForAsset:(id)a3 requestID:(int)a4 managerID:(unint64_t)a5 networkAccessAllowed:(BOOL)a6 downloadIntent:(int64_t)a7 progressHandler:(id)a8 resultHandler:(id)a9
{
  v11 = a6;
  v13 = *&a4;
  v16 = a9;
  v17 = a8;
  v18 = a3;
  v19 = objc_alloc_init(PHContentEditingInputRequestOptions);
  [(PHContentEditingInputRequestOptions *)v19 setNetworkAccessAllowed:v11];
  [(PHContentEditingInputRequestOptions *)v19 setDownloadIntent:a7];
  [(PHContentEditingInputRequestOptions *)v19 setCanHandleAdjustmentData:&__block_literal_global_39286];
  [(PHContentEditingInputRequestOptions *)v19 setProgressHandler:v17];

  [(PHContentEditingInputRequestOptions *)v19 setForceReturnFullLivePhoto:1];
  [(PHContentEditingInputRequestOptions *)v19 setSkipDisplaySizeImage:1];
  [(PHContentEditingInputRequestOptions *)v19 setSkipLivePhotoImageAndAVAsset:1];
  [(PHContentEditingInputRequestOptions *)v19 setDisallowFallbackAdjustmentBase:1];
  v20 = +[PHMediaRequestContext contentEditingInputRequestContextWithRequestID:managerID:asset:options:useRAWAsUnadjustedBase:resultHandler:](PHMediaRequestContext, "contentEditingInputRequestContextWithRequestID:managerID:asset:options:useRAWAsUnadjustedBase:resultHandler:", v13, a5, v18, v19, [a1 shouldUseRAWResourceAsUnadjustedBaseForAsset:v18 options:v19], v16);

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

+ (BOOL)shouldUseRAWResourceAsUnadjustedBaseForAsset:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (PHDeviceSupportsRAW_onceToken != -1)
  {
    dispatch_once(&PHDeviceSupportsRAW_onceToken, &__block_literal_global_19790);
  }

  if (PHDeviceSupportsRAW_deviceSupportsRAW == 1 && ([v6 dontAllowRAW] & 1) == 0)
  {
    if ([v6 shouldForceOriginalChoice])
    {
      v8 = [v6 originalChoice];
    }

    else
    {
      v8 = [v5 originalResourceChoice];
    }

    v7 = [v5 shouldUseRAWResourceWithOriginalResourceChoice:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end