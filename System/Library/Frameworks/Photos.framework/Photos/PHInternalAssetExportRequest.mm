@interface PHInternalAssetExportRequest
+ (BOOL)isHDRScreenshotAsset:(id)asset withCurrentType:(id)type;
+ (id)exportRequestForAsset:(id)asset variants:(id)variants error:(id *)error;
+ (id)knownCompatibleVariantTypeIdentifierForAsset:(id)asset withCurrentType:(id)type;
+ (id)variantsForAsset:(id)asset asUnmodifiedOriginal:(BOOL)original error:(id *)error;
- (id)_initWithAsset:(id)asset variants:(id)variants resourceRetrievalRequest:(id)request retrievalRequestProgressParent:(id)parent;
- (void)exportWithOptions:(id)options completionHandler:(id)handler;
- (void)preflightExportWithOptions:(id)options assetAvailability:(int64_t *)availability isProcessingRequired:(BOOL *)required fileURLs:(id *)ls info:(id *)info;
@end

@implementation PHInternalAssetExportRequest

- (void)exportWithOptions:(id)options completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  if ([optionsCopy variant] != 1)
  {
    variants = [(PHAssetExportRequest *)self variants];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(optionsCopy, "variant")}];
    v11 = [variants objectForKeyedSubscript:v10];

    if (!v11)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:398 description:{@"Invalid parameter not satisfying: %@", @"(options.variant == PHAssetExportRequestVariantCurrent) || self.variants[@(options.variant)]"}];
    }
  }

  if (!handlerCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:399 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  asset = [(PHAssetExportRequest *)self asset];
  v14 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [asset uuid];
    mediaType = [asset mediaType];
    if ((mediaType - 1) > 2)
    {
      v17 = @"unknown";
    }

    else
    {
      v17 = off_1E75A7238[mediaType - 1];
    }

    v18 = v17;
    v19 = +[PHAsset descriptionForMediaSubtypes:](PHAsset, "descriptionForMediaSubtypes:", [asset mediaSubtypes]);
    uniformTypeIdentifier = [asset uniformTypeIdentifier];
    *buf = 138413570;
    v32 = asset;
    v33 = 2114;
    v34 = uuid;
    v35 = 2114;
    v36 = v18;
    v37 = 2114;
    v38 = v19;
    v39 = 2114;
    v40 = uniformTypeIdentifier;
    v41 = 2114;
    v42 = optionsCopy;
    _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "[PHInternalAssetExportRequest] Will export asset: %@ (%{public}@, %{public}@/%{public}@, %{public}@), options: %{public}@", buf, 0x3Eu);
  }

  resourceRetrievingQueue = self->_resourceRetrievingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PHInternalAssetExportRequest_exportWithOptions_completionHandler___block_invoke;
  block[3] = &unk_1E75AA9D8;
  block[4] = self;
  v28 = asset;
  v29 = optionsCopy;
  v30 = handlerCopy;
  v22 = handlerCopy;
  v23 = optionsCopy;
  v24 = asset;
  dispatch_async(resourceRetrievingQueue, block);
}

void __68__PHInternalAssetExportRequest_exportWithOptions_completionHandler___block_invoke(id *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  [a1[4] setState:1];
  v2 = [a1[4] progress];
  v3 = _AssetAvailabilityForAssetWithOptions(a1[5], a1[6], *(a1[4] + 17), 0);
  v5 = a1[5];
  v4 = a1[6];
  v6 = [a1[4] assetMetadata];
  v7 = PHAssetExportRequestProcessingRequiredForAssetWithOptions(v5, v4, v6, 0);

  v8 = 50;
  if (!v3)
  {
    v8 = 98;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [v2 setTotalUnitCount:100];
  [v2 addChild:*(a1[4] + 18) withPendingUnitCount:100 - v9];
  v10 = _PHResourceLocalAvailabilityRequestOptionsFromPHAssetExportRequestOptions(a1[6]);
  v11 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [a1[5] uuid];
    v13 = off_1E75A3CD0[v3];
    *buf = 138543618;
    v31 = v12;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "[PHInternalAssetExportRequest] Resources availability for asset %{public}@: %{public}@", buf, 0x16u);
  }

  v14 = PLPhotoKitGetLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v3 == 2)
  {
    if (v15)
    {
      v18 = [a1[5] uuid];
      *buf = 138543362;
      v31 = v18;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "[PHInternalAssetExportRequest] Waiting for deferred processing of resources of asset %{public}@...", buf, 0xCu);
    }

    v17 = 4;
  }

  else if (v3 == 1)
  {
    if (v15)
    {
      v16 = [a1[5] uuid];
      *buf = 138543362;
      v31 = v16;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "[PHInternalAssetExportRequest] Downloading required for resources of asset %{public}@...", buf, 0xCu);
    }

    v17 = 3;
  }

  else
  {
    if (v15)
    {
      v19 = [a1[5] uuid];
      *buf = 138543362;
      v31 = v19;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "[PHInternalAssetExportRequest] Required resources of asset %{public}@ are locally available.", buf, 0xCu);
    }

    v17 = 2;
  }

  [a1[4] setState:v17];
  v21 = a1[4];
  v20 = a1[5];
  v22 = v21[17];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__PHInternalAssetExportRequest_exportWithOptions_completionHandler___block_invoke_80;
  v24[3] = &unk_1E75A40F8;
  v24[4] = v21;
  v25 = v20;
  v26 = a1[6];
  v27 = v2;
  v29 = v9;
  v28 = a1[7];
  v23 = v2;
  [v22 retrieveRequiredResourcesWithOptions:v10 completionHandler:v24];
}

void __68__PHInternalAssetExportRequest_exportWithOptions_completionHandler___block_invoke_80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = a4;
  v8 = a5;
  if ([v10 count])
  {
    v9 = _ResourceInfoToFileURLs(v10);
  }

  else
  {
    v9 = 0;
  }

  [*(a1 + 32) handleResultWithFileURLs:v9 cancelled:a3 withError:v8 forAsset:*(a1 + 40) withOptions:*(a1 + 48) progress:*(a1 + 56) processingUnitCount:*(a1 + 72) completionHandler:*(a1 + 64)];
}

- (void)preflightExportWithOptions:(id)options assetAvailability:(int64_t *)availability isProcessingRequired:(BOOL *)required fileURLs:(id *)ls info:(id *)info
{
  v42 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  if ([optionsCopy variant] != 1)
  {
    variants = [(PHAssetExportRequest *)self variants];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(optionsCopy, "variant")}];
    v15 = [variants objectForKeyedSubscript:v14];

    if (!v15)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"(options.variant == PHAssetExportRequestVariantCurrent) || self.variants[@(options.variant)]"}];
    }
  }

  if (!(availability | required))
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"assetAvailability || isProcessingRequired"}];
  }

  asset = [(PHAssetExportRequest *)self asset];
  v18 = asset;
  if (!(availability | ls))
  {
    if (!required)
    {
      v21 = 0;
      v22 = @"[Did not check]";
      v28 = @"[Did not check]";
      goto LABEL_23;
    }

    assetMetadata = [(PHAssetExportRequest *)self assetMetadata];
    v21 = 0;
    v25 = 0;
    v22 = @"[Did not check]";
    goto LABEL_17;
  }

  resourceRetrievalRequest = self->_resourceRetrievalRequest;
  v33 = 0;
  v20 = _AssetAvailabilityForAssetWithOptions(asset, optionsCopy, resourceRetrievalRequest, &v33);
  v21 = v33;
  v22 = off_1E75A3CD0[v20];
  *availability = v20;
  if (!ls)
  {
    if (required)
    {
      assetMetadata = [(PHAssetExportRequest *)self assetMetadata];
      v25 = 0;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (!(availability | required))
  {
    v29 = _ResourceInfoToFileURLs(v21);
    *ls = v29;

    goto LABEL_22;
  }

  v23 = 0;
  *ls = 0;
  if (!required)
  {
LABEL_22:
    v28 = @"[Did not check]";
    goto LABEL_23;
  }

  assetMetadata = [(PHAssetExportRequest *)self assetMetadata];
  v25 = *ls;
LABEL_17:
  v26 = PHAssetExportRequestProcessingRequiredForAssetWithOptions(v18, optionsCopy, assetMetadata, v25);

  v27 = @"NO";
  if (v26)
  {
    v27 = @"YES";
  }

  v28 = v27;
  *required = v26;
LABEL_23:
  v30 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v35 = v22;
    v36 = 2114;
    v37 = v28;
    v38 = 2112;
    v39 = v18;
    v40 = 2112;
    v41 = optionsCopy;
    _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEFAULT, "[PHInternalAssetExportRequest] Asset resources availability: %{public}@ Processing is required: %{public}@ for export of asset: %@, options: %@", buf, 0x2Au);
  }
}

- (id)_initWithAsset:(id)asset variants:(id)variants resourceRetrievalRequest:(id)request retrievalRequestProgressParent:(id)parent
{
  assetCopy = asset;
  variantsCopy = variants;
  requestCopy = request;
  parentCopy = parent;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if ([variantsCopy count])
  {
    if (requestCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"variants.count"}];

    if (requestCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"resourceRetrievalRequest"}];

LABEL_5:
  v24.receiver = self;
  v24.super_class = PHInternalAssetExportRequest;
  v15 = [(PHAssetExportRequest *)&v24 initWithAsset:assetCopy variants:variantsCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resourceRetrievalRequest, request);
    objc_storeStrong(&v16->_resourceRetrievalRequestProgressParent, parent);
    v17 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
    v18 = dispatch_queue_create("PHInternalAssetExportRequest.ResourceRetrievingQueue", v17);
    resourceRetrievingQueue = v16->_resourceRetrievingQueue;
    v16->_resourceRetrievingQueue = v18;
  }

  return v16;
}

+ (id)exportRequestForAsset:(id)asset variants:(id)variants error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  variantsCopy = variants;
  v11 = variantsCopy;
  if (assetCopy)
  {
    if (variantsCopy)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
  v11 = [objc_opt_class() variantsForAsset:assetCopy asUnmodifiedOriginal:0 error:&v21];
  v12 = v21;
LABEL_6:
  if ([v11 count])
  {
    v14 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    [v14 becomeCurrentWithPendingUnitCount:100];
    v15 = [[PHResourceLocalAvailabilityRequest alloc] initWithAsset:assetCopy requestType:1];
    [v14 resignCurrent];
    v16 = [[PHInternalAssetExportRequest alloc] _initWithAsset:assetCopy variants:v11 resourceRetrievalRequest:v15 retrievalRequestProgressParent:v14];
    v17 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v23 = v16;
      v24 = 2112;
      v25 = assetCopy;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "[PHInternalAssetExportRequest] Created export request: %@ for asset: %@", buf, 0x16u);
    }
  }

  else
  {
    v18 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = assetCopy;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "[PHInternalAssetExportRequest] Failed to create export request for asset: %@, error: %@", buf, 0x16u);
    }

    if (error)
    {
      v19 = v12;
      v16 = 0;
      *error = v12;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

+ (id)variantsForAsset:(id)asset asUnmodifiedOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  v83 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHInternalAssetExportRequest.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  assetExportLog = [objc_opt_class() assetExportLog];
  v11 = os_signpost_id_generate(assetExportLog);
  v12 = assetExportLog;
  v13 = v12;
  v73 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    localIdentifier = [assetCopy localIdentifier];
    *buf = 138543362;
    v80 = localIdentifier;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SharingVariantsLatency", "localIdentifier==%{public}@", buf, 0xCu);
  }

  spid = v11;
  v72 = v13;

  v78 = 0;
  v15 = [PHResourceLocalAvailabilityRequest resourceInfoForSharingAsset:assetCopy asUnmodifiedOriginal:originalCopy error:&v78];
  v16 = v78;
  v17 = PLPhotoKitGetLog();
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [assetCopy uuid];
      *buf = 138543618;
      v80 = uuid;
      v81 = 2112;
      v82 = v15;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "[PHInternalAssetExportRequest] Determining variants for asset %{public}@ with resource info: %@", buf, 0x16u);
    }

    errorCopy = error;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v18 = [v15 objectForKeyedSubscript:@"PHResourceLocalAvailabilityRequestPhotoUTIKey"];
    if (!v18)
    {
LABEL_34:
      v33 = [v15 objectForKeyedSubscript:@"PHResourceLocalAvailabilityRequestVideoUTIKey"];
      if (!v33)
      {
        goto LABEL_65;
      }

      if ([assetCopy canPlayLoopingVideo])
      {
        v34 = [assetCopy isMediaSubtype:8] & originalCopy ^ 1;
      }

      else
      {
        LOBYTE(v34) = 0;
      }

      playbackStyle = [assetCopy playbackStyle];
      if ((v34 & 1) == 0 && playbackStyle != 4)
      {
LABEL_61:
        v52 = v34 ^ 1;
        if (v16)
        {
          v52 = 1;
        }

        if ((v52 & 1) == 0)
        {
          identifier = [*MEMORY[0x1E6982DE8] identifier];
          [dictionary setObject:identifier forKeyedSubscript:&unk_1F102C410];

          goto LABEL_66;
        }

LABEL_65:
        if (v16)
        {
LABEL_73:

          error = errorCopy;
          goto LABEL_74;
        }

LABEL_66:
        v54 = [dictionary count];
        v55 = PLPhotoKitGetLog();
        v56 = v55;
        if (v54)
        {
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [assetCopy uuid];
            *buf = 138543618;
            v80 = dictionary;
            v81 = 2112;
            v82 = uuid2;
            _os_log_impl(&dword_19C86F000, v56, OS_LOG_TYPE_DEFAULT, "[PHInternalAssetExportRequest] Found variants: %{public}@ for asset %@", buf, 0x16u);
          }

          v16 = 0;
        }

        else
        {
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            uuid3 = [assetCopy uuid];
            *buf = 138412290;
            v80 = uuid3;
            _os_log_impl(&dword_19C86F000, v56, OS_LOG_TYPE_ERROR, "[PHInternalAssetExportRequest] Found no variants for asset %@", buf, 0xCu);
          }

          v16 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"No variants found for asset: %@", assetCopy}];
        }

        goto LABEL_73;
      }

      [dictionary setObject:v33 forKeyedSubscript:&unk_1F102C3E0];
      if ([assetCopy playbackStyle] == 4)
      {
        v36 = *MEMORY[0x1E6982F80];
        identifier2 = [*MEMORY[0x1E6982F80] identifier];
        v38 = [v33 isEqualToString:identifier2];

        if (v38)
        {
          v68 = v34;
          [assetCopy fetchPropertySetsIfNeeded];
          photosInfoPanelExtendedProperties = [assetCopy photosInfoPanelExtendedProperties];
          codec = [photosInfoPanelExtendedProperties codec];

          hEVCfourCharCode = [MEMORY[0x1E69BE350] HEVCfourCharCode];
          v42 = [codec isEqualToString:hEVCfourCharCode];

          if (!v42)
          {
            LOBYTE(v34) = v68;
LABEL_60:

            goto LABEL_61;
          }

          identifier3 = [v36 identifier];
          [dictionary setObject:identifier3 forKeyedSubscript:&unk_1F102C3F8];
          v44 = v16;
          LOBYTE(v34) = v68;
LABEL_59:

          v16 = v44;
          goto LABEL_60;
        }

        identifier4 = [*MEMORY[0x1E6982EC8] identifier];
        v46 = [v33 isEqualToString:identifier4];

        if (v46)
        {
          goto LABEL_61;
        }
      }

      codec = [v15 objectForKeyedSubscript:@"PHResourceLocalAvailabilityRequestVideoURLKey"];
      if (codec && ([MEMORY[0x1E69AE8A8] videoSourceForFileURL:codec], (v47 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        identifier3 = v47;
        v66 = codec;
        v69 = v34;
        [v47 markLivePhotoPairingIdentifierAsCheckedWithValue:*MEMORY[0x1E69AE9A8]];
        v74 = v16;
        v75 = 0;
        v48 = _PreflightMediaConversion(identifier3, &v75, &v74);
        v49 = v75;
        v44 = v74;

        if (v48)
        {
          v50 = v49;
          if (v49)
          {
            [dictionary setObject:v49 forKeyedSubscript:&unk_1F102C3F8];
          }

          LOBYTE(v34) = v69;
        }

        else
        {
          v51 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v80 = assetCopy;
            v81 = 2112;
            v82 = v44;
            _os_log_impl(&dword_19C86F000, v51, OS_LOG_TYPE_ERROR, "[PHInternalAssetExportRequest] Failed to find compatible UTI for asset: %@, error: %@", buf, 0x16u);
          }

          dictionary = 0;
          LOBYTE(v34) = v69;
          v50 = v49;
        }

        codec = v66;
      }

      else
      {
        identifier3 = PLPhotoKitGetLog();
        if (os_log_type_enabled(identifier3, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v80 = v15;
          _os_log_impl(&dword_19C86F000, identifier3, OS_LOG_TYPE_ERROR, "[PHInternalAssetExportRequest] Couldn't find a valid video source to pre-flight, from resource info: %@", buf, 0xCu);
        }

        v44 = v16;
      }

      goto LABEL_59;
    }

    [dictionary setObject:v18 forKeyedSubscript:&unk_1F102C3E0];
    v21 = [MEMORY[0x1E6982C40] typeWithIdentifier:v18];
    v22 = [objc_opt_class() knownCompatibleVariantTypeIdentifierForAsset:assetCopy withCurrentType:v21];
    if ([v21 conformsToType:*MEMORY[0x1E6983138]] && objc_msgSend(self, "isHDRScreenshotAsset:withCurrentType:", assetCopy, v21))
    {
      v23 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        uuid4 = [assetCopy uuid];
        *buf = 138543362;
        v80 = uuid4;
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEFAULT, "[PHInternalAssetExportRequest] Asset %{public}@ is an HDR screenshot in the HEIC format. Using PNG as compatible variant instead of JPG", buf, 0xCu);
      }

      identifier5 = [*MEMORY[0x1E6982F28] identifier];

      v22 = identifier5;
    }

    if (v22)
    {
      v26 = v16;
    }

    else
    {
      v27 = [v15 objectForKeyedSubscript:@"PHResourceLocalAvailabilityRequestPhotoURLKey"];
      if (!v27 || ([MEMORY[0x1E69AE8A8] imageSourceForFileURL:v27], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v32 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v80 = v15;
          _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, "[PHInternalAssetExportRequest] Couldn't find a valid image source to pre-flight, from resource info: %@", buf, 0xCu);
        }

        v26 = v16;
        goto LABEL_32;
      }

      v30 = v29;
      [v29 markLivePhotoPairingIdentifierAsCheckedWithValue:*MEMORY[0x1E69AE9A8]];
      v76 = v16;
      v77 = 0;
      v67 = v30;
      v65 = _PreflightMediaConversion(v30, &v77, &v76);
      v22 = v77;
      v26 = v76;

      if ((v65 & 1) == 0)
      {
        v31 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v80 = assetCopy;
          v81 = 2112;
          v82 = v26;
          _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_ERROR, "[PHInternalAssetExportRequest] Failed to find compatible UTI for asset: %@, error: %@", buf, 0x16u);
        }

        dictionary = 0;
      }

      if (!v22)
      {
        goto LABEL_33;
      }
    }

    [dictionary setObject:v22 forKeyedSubscript:&unk_1F102C3F8];
    v27 = v22;
LABEL_32:

LABEL_33:
    v16 = v26;
    goto LABEL_34;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    uuid5 = [assetCopy uuid];
    *buf = 138543618;
    v80 = uuid5;
    v81 = 2112;
    v82 = v16;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "[PHInternalAssetExportRequest] Failed to find resource info for asset %{public}@, error: %@", buf, 0x16u);
  }

  dictionary = 0;
LABEL_74:

  if (error && v16)
  {
    v59 = v16;
    *error = v16;
  }

  v60 = v72;
  v61 = v60;
  if (v73 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v61, OS_SIGNPOST_INTERVAL_END, spid, "SharingVariantsLatency", byte_19CB567AE, buf, 2u);
  }

  v62 = dictionary;
  return dictionary;
}

+ (BOOL)isHDRScreenshotAsset:(id)asset withCurrentType:(id)type
{
  assetCopy = asset;
  if ([type conformsToType:*MEMORY[0x1E6983138]])
  {
    v6 = [assetCopy isMediaSubtype:4];
    v7 = v6 & [assetCopy isMediaSubtype:512];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (id)knownCompatibleVariantTypeIdentifierForAsset:(id)asset withCurrentType:(id)type
{
  v15[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v15[0] = *MEMORY[0x1E6983138];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v13 = 0u;
  identifier = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (identifier)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != identifier; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([typeCopy conformsToType:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          identifier = [*MEMORY[0x1E6982E58] identifier];
          goto LABEL_11;
        }
      }

      identifier = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (identifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return identifier;
}

@end