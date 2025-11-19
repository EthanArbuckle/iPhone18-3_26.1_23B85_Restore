@interface PHCloudSharedAssetExportRequest
+ (id)_resourceRetrievingQueue;
+ (id)exportRequestForAsset:(id)a3 error:(id *)a4;
+ (id)variantsForAsset:(id)a3 asUnmodifiedOriginal:(BOOL)a4 error:(id *)a5;
- (PHCloudSharedAssetExportRequest)initWithAsset:(id)a3 variants:(id)a4;
- (int)_requestImageURLForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 progressHandler:(id)a5 resultHandler:(id)a6 resultHandlerQueue:(id)a7;
- (int)_requestVideoURLForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 progressHandler:(id)a5 resultHandler:(id)a6 resultHandlerQueue:(id)a7;
- (void)_handleImageManagerResultForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 progress:(id)a5 processingUnitCount:(unint64_t)a6 options:(id)a7 withFileUrls:(id)a8 info:(id)a9 completionHandler:(id)a10;
- (void)_requestFileURLsForAsset:(id)a3 withOptions:(id)a4 networkAccessAllowed:(BOOL)a5 progressHandler:(id)a6 resultHandler:(id)a7 resultHandlerQueue:(id)a8;
- (void)_requestLivePhotoURLsForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 progressHandler:(id)a5 resultHandler:(id)a6 resultHandlerQueue:(id)a7;
- (void)exportWithOptions:(id)a3 networkAccessAllowed:(BOOL)a4 completionHandler:(id)a5;
- (void)preflightExportWithOptions:(id)a3 assetAvailability:(int64_t *)a4 isProcessingRequired:(BOOL *)a5 fileURLs:(id *)a6 info:(id *)a7;
@end

@implementation PHCloudSharedAssetExportRequest

- (void)_handleImageManagerResultForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 progress:(id)a5 processingUnitCount:(unint64_t)a6 options:(id)a7 withFileUrls:(id)a8 info:(id)a9 completionHandler:(id)a10
{
  v35 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = [v18 objectForKeyedSubscript:@"PHImageCancelledKey"];
  if (v20)
  {
    v21 = [v18 objectForKeyedSubscript:@"PHImageCancelledKey"];
    v22 = [v21 BOOLValue];
  }

  else
  {
    v22 = 0;
  }

  v23 = [v18 objectForKeyedSubscript:@"PHImageErrorKey"];
  v24 = v23;
  if (!v17 || v23 || ![v17 count])
  {
    v34 = a6;
    v25 = [v18 objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
    v26 = [v25 BOOLValue];

    v27 = PLPhotoKitGetLog();
    v28 = v27;
    if (v35 || !v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v33 = @"NO";
        *buf = 138412802;
        v38 = v14;
        v39 = 2112;
        if (v35)
        {
          v33 = @"YES";
        }

        v40 = v33;
        v41 = 2112;
        v42 = v24;
        v29 = "[PHCloudSharedAssetExportRequest] Failed to download asset for export: %@, networkAccessAllowed: %@, error: %@";
        v30 = v28;
        v31 = OS_LOG_TYPE_ERROR;
        v32 = 32;
        goto LABEL_15;
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v14;
      v39 = 2112;
      v40 = v24;
      v29 = "[PHCloudSharedAssetExportRequest] Asset available in cloud, but export request options specified no network access. Export: %@, error: %@";
      v30 = v28;
      v31 = OS_LOG_TYPE_DEFAULT;
      v32 = 22;
LABEL_15:
      _os_log_impl(&dword_19C86F000, v30, v31, v29, buf, v32);
    }

    a6 = v34;
  }

  [(PHAssetExportRequest *)self handleResultWithFileURLs:v17 cancelled:v22 withError:v24 forAsset:v14 withOptions:v16 progress:v15 processingUnitCount:a6 completionHandler:v19];
}

- (void)_requestLivePhotoURLsForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 progressHandler:(id)a5 resultHandler:(id)a6 resultHandlerQueue:(id)a7
{
  v30 = a4;
  v11 = a3;
  v12 = a5;
  v29 = a6;
  v13 = a7;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v75[3] = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x2020000000;
  v74[3] = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = __Block_byref_object_copy__37358;
  v72[4] = __Block_byref_object_dispose__37359;
  v73 = 0;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = __Block_byref_object_copy__37358;
  v70[4] = __Block_byref_object_dispose__37359;
  v71 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__37358;
  v68[4] = __Block_byref_object_dispose__37359;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__37358;
  v66[4] = __Block_byref_object_dispose__37359;
  v67 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke;
  aBlock[3] = &unk_1E75A9068;
  v64 = v75;
  v65 = v74;
  v14 = v12;
  v63 = v14;
  v15 = _Block_copy(aBlock);
  v16 = dispatch_group_create();
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_2;
  v59[3] = &unk_1E75A9090;
  v61 = v75;
  v17 = v15;
  v60 = v17;
  v18 = _Block_copy(v59);
  dispatch_group_enter(v16);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_3;
  v54[3] = &unk_1E75A90B8;
  v56 = v75;
  v57 = v68;
  v58 = v72;
  v19 = v16;
  v55 = v19;
  v20 = _Block_copy(v54);
  v49 = MEMORY[0x1E69E9820];
  v50 = 3221225472;
  v51 = __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_4;
  v52 = &unk_1E75A90E0;
  v21 = v20;
  v53 = v21;
  v31 = v13;
  self->_imageManagerImageRequestId = [PHCloudSharedAssetExportRequest _requestImageURLForAsset:"_requestImageURLForAsset:networkAccessAllowed:progressHandler:resultHandler:resultHandlerQueue:" networkAccessAllowed:v11 progressHandler:? resultHandler:? resultHandlerQueue:?];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_5;
  v46[3] = &unk_1E75A9090;
  v48 = v74;
  v22 = v17;
  v47 = v22;
  v23 = _Block_copy(v46);
  dispatch_group_enter(v19);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_6;
  v41[3] = &unk_1E75A90B8;
  v43 = v74;
  v44 = v66;
  v45 = v70;
  v24 = v19;
  v42 = v24;
  v25 = _Block_copy(v41);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_7;
  v39[3] = &unk_1E75A90E0;
  v26 = v25;
  v40 = v26;
  self->_imageManagerVideoRequestId = [(PHCloudSharedAssetExportRequest *)self _requestVideoURLForAsset:v11 networkAccessAllowed:v30 progressHandler:v23 resultHandler:v39 resultHandlerQueue:v13];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_8;
  block[3] = &unk_1E75A9108;
  v35 = v72;
  v36 = v70;
  v37 = v68;
  v38 = v66;
  v33 = v14;
  v34 = v29;
  v27 = v29;
  v28 = v14;
  dispatch_group_notify(v24, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v68, 8);

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(v72, 8);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v75, 8);
}

uint64_t __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1[5] + 8) + 24) + *(*(a1[6] + 8) + 24) < 1.0)
  {
    v3 = a1[4];
    if (v3)
    {
      v6 = v4;
      v3 = v3[2]();
      v4 = v6;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0x3FD3333333333333;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"PHAssetExportRequestPhotoFileURLKey"];
  (*(v4 + 16))(v4, v6, v5);
}

void __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0x3FE6666666666666;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
  (*(v4 + 16))(v4, v6, v5);
}

void __135__PHCloudSharedAssetExportRequest__requestLivePhotoURLsForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_8(void *a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))(v2, 0, &v19, 1.0);
  }

  v3 = *(*(a1[6] + 8) + 40);
  if (v3 && (v4 = *(*(a1[7] + 8) + 40)) != 0)
  {
    v21[0] = @"PHAssetExportRequestPhotoFileURLKey";
    v21[1] = @"PHAssetExportRequestVideoFileURLKey";
    v22[0] = v3;
    v22[1] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(*(a1[8] + 8) + 40)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(*(a1[9] + 8) + 40);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [*(*(a1[8] + 8) + 40) objectForKeyedSubscript:{v12, v15}];
        if (v13)
        {
          [v6 setObject:v13 forKeyedSubscript:v12];
        }

        else
        {
          v14 = [*(*(a1[9] + 8) + 40) objectForKeyedSubscript:v12];
          [v6 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  (*(a1[5] + 16))();
}

- (int)_requestVideoURLForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 progressHandler:(id)a5 resultHandler:(id)a6 resultHandlerQueue:(id)a7
{
  v9 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a3;
  v15 = objc_alloc_init(PHVideoRequestOptions);
  [(PHVideoRequestOptions *)v15 setVersion:0];
  [(PHVideoRequestOptions *)v15 setRestrictToPlayableOnCurrentDevice:1];
  [(PHVideoRequestOptions *)v15 setDeliveryMode:1];
  [(PHVideoRequestOptions *)v15 setNetworkAccessAllowed:v9];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__PHCloudSharedAssetExportRequest__requestVideoURLForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke;
  v22[3] = &unk_1E75A9368;
  v23 = v11;
  v16 = v11;
  [(PHVideoRequestOptions *)v15 setProgressHandler:v22];
  [(PHVideoRequestOptions *)v15 setResultHandlerQueue:v13];

  v17 = +[PHImageManager defaultManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __130__PHCloudSharedAssetExportRequest__requestVideoURLForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_2;
  v20[3] = &unk_1E75A9040;
  v21 = v12;
  v18 = v12;
  LODWORD(v9) = [v17 requestURLForVideo:v14 options:v15 resultHandler:v20];

  return v9;
}

uint64_t __130__PHCloudSharedAssetExportRequest__requestVideoURLForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __130__PHCloudSharedAssetExportRequest__requestVideoURLForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = @"PHAssetExportRequestVideoFileURLKey";
    v9[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (int)_requestImageURLForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 progressHandler:(id)a5 resultHandler:(id)a6 resultHandlerQueue:(id)a7
{
  v9 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a3;
  v15 = objc_alloc_init(PHImageRequestOptions);
  [(PHImageRequestOptions *)v15 setVersion:0];
  [(PHImageRequestOptions *)v15 setDeliveryMode:1];
  [(PHImageRequestOptions *)v15 setNetworkAccessAllowed:v9];
  [(PHImageRequestOptions *)v15 setLoadingMode:0x10000];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__PHCloudSharedAssetExportRequest__requestImageURLForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke;
  v22[3] = &unk_1E75A9368;
  v23 = v11;
  v16 = v11;
  [(PHImageRequestOptions *)v15 setProgressHandler:v22];
  [(PHImageRequestOptions *)v15 setResultHandlerQueue:v13];

  v17 = +[PHImageManager defaultManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __130__PHCloudSharedAssetExportRequest__requestImageURLForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_2;
  v20[3] = &unk_1E75A9018;
  v21 = v12;
  v18 = v12;
  LODWORD(v9) = [v17 requestImageForAsset:v14 targetSize:0 contentMode:v15 options:v20 resultHandler:{-1.0, -1.0}];

  return v9;
}

uint64_t __130__PHCloudSharedAssetExportRequest__requestImageURLForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __130__PHCloudSharedAssetExportRequest__requestImageURLForAsset_networkAccessAllowed_progressHandler_resultHandler_resultHandlerQueue___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [v4 objectForKeyedSubscript:@"PHImageFileURLKey"];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:v6 forKeyedSubscript:@"PHAssetExportRequestPhotoFileURLKey"];
  (*(*(a1 + 32) + 16))();
}

- (void)_requestFileURLsForAsset:(id)a3 withOptions:(id)a4 networkAccessAllowed:(BOOL)a5 progressHandler:(id)a6 resultHandler:(id)a7 resultHandlerQueue:(id)a8
{
  v11 = a5;
  v21 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v21 playbackStyle];
  if ((v18 - 1) < 2)
  {
    goto LABEL_7;
  }

  if ((v18 - 4) < 2)
  {
    v19 = [(PHCloudSharedAssetExportRequest *)self _requestVideoURLForAsset:v21 networkAccessAllowed:v11 progressHandler:v15 resultHandler:v16 resultHandlerQueue:v17];
    v20 = 140;
LABEL_8:
    *(&self->super.super.isa + v20) = v19;
    goto LABEL_9;
  }

  if (v18 != 3)
  {
    goto LABEL_9;
  }

  if (!v14 || ([v14 treatLivePhotoAsStill] & 1) != 0)
  {
LABEL_7:
    v19 = [(PHCloudSharedAssetExportRequest *)self _requestImageURLForAsset:v21 networkAccessAllowed:v11 progressHandler:v15 resultHandler:v16 resultHandlerQueue:v17];
    v20 = 136;
    goto LABEL_8;
  }

  [(PHCloudSharedAssetExportRequest *)self _requestLivePhotoURLsForAsset:v21 networkAccessAllowed:v11 progressHandler:v15 resultHandler:v16 resultHandlerQueue:v17];
LABEL_9:
}

- (void)exportWithOptions:(id)a3 networkAccessAllowed:(BOOL)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PHCloudSharedAssetExportRequest.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  if ([v9 variant] != 1)
  {
    v11 = [(PHAssetExportRequest *)self variants];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "variant")}];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (!v13)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PHCloudSharedAssetExportRequest.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"(options.variant == PHAssetExportRequestVariantCurrent) || self.variants[@(options.variant)]"}];
    }
  }

  if (!v10)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PHCloudSharedAssetExportRequest.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v15 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(PHAssetExportRequest *)self asset];
    v17 = [v16 uuid];
    v18 = [(PHAssetExportRequest *)self asset];
    *buf = 138543874;
    v29 = v17;
    v30 = 2112;
    v31 = v18;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "[PHCloudSharedAssetExportRequest] Will export asset (%{public}@): %@, options: %@", buf, 0x20u);
  }

  v19 = [objc_opt_class() _resourceRetrievingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PHCloudSharedAssetExportRequest_exportWithOptions_networkAccessAllowed_completionHandler___block_invoke;
  block[3] = &unk_1E75A8FF0;
  block[4] = self;
  v25 = v9;
  v27 = a4;
  v26 = v10;
  v20 = v10;
  v21 = v9;
  dispatch_async(v19, block);
}

void __92__PHCloudSharedAssetExportRequest_exportWithOptions_networkAccessAllowed_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:1];
  v2 = [*(a1 + 32) progress];
  v3 = [*(a1 + 32) asset];
  if ([*(a1 + 40) shouldStripLocation])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  [v2 setTotalUnitCount:100];
  v28 = 0;
  v29 = 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v27 = 0;
  [v5 preflightExportWithOptions:v6 assetAvailability:&v29 isProcessingRequired:0 fileURLs:&v28 info:&v27];
  v7 = v28;
  v8 = v27;
  *(*(a1 + 32) + 136) = 0;
  *(*(a1 + 32) + 140) = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__PHCloudSharedAssetExportRequest_exportWithOptions_networkAccessAllowed_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E75A8FA0;
  v9 = v2;
  v26 = v9;
  v10 = _Block_copy(aBlock);
  objc_initWeak(&location, *(a1 + 32));
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__PHCloudSharedAssetExportRequest_exportWithOptions_networkAccessAllowed_completionHandler___block_invoke_3;
  v17[3] = &unk_1E75A8FC8;
  v11 = v9;
  v18 = v11;
  v22[1] = (100 - v4);
  objc_copyWeak(v22, &location);
  v12 = v3;
  v23 = *(a1 + 56);
  v19 = v12;
  v22[2] = v4;
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v13 = _Block_copy(v17);
  if (v29 == 1)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  [*(a1 + 32) setState:v14];
  if (!v29 && v7 && [v7 count])
  {
    v16 = 0;
    v10[2](v10, 0, &v16, 1.0);
    v13[2](v13, v7, v8);
  }

  else
  {
    [*(a1 + 32) _requestFileURLsForAsset:v12 withOptions:*(a1 + 40) networkAccessAllowed:*(a1 + 56) progressHandler:v10 resultHandler:v13 resultHandlerQueue:*(*(a1 + 32) + 144)];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__PHCloudSharedAssetExportRequest_exportWithOptions_networkAccessAllowed_completionHandler___block_invoke_4;
    v15[3] = &unk_1E75AB270;
    v15[4] = *(a1 + 32);
    [v11 setCancellationHandler:v15];
  }

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

uint64_t __92__PHCloudSharedAssetExportRequest_exportWithOptions_networkAccessAllowed_completionHandler___block_invoke_2(uint64_t result, double a2)
{
  if (llround(a2 * 100.0) <= 99)
  {
    return [*(result + 32) setCompletedUnitCount:?];
  }

  return result;
}

void __92__PHCloudSharedAssetExportRequest_exportWithOptions_networkAccessAllowed_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 72);
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  [v6 setCompletedUnitCount:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleImageManagerResultForAsset:*(a1 + 40) networkAccessAllowed:*(a1 + 88) progress:*(a1 + 32) processingUnitCount:*(a1 + 80) options:*(a1 + 48) withFileUrls:v8 info:v7 completionHandler:*(a1 + 56)];
}

void __92__PHCloudSharedAssetExportRequest_exportWithOptions_networkAccessAllowed_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = +[PHImageManager defaultManager];
  [v2 cancelImageRequest:*(*(a1 + 32) + 136)];

  v3 = +[PHImageManager defaultManager];
  [v3 cancelImageRequest:*(*(a1 + 32) + 140)];
}

- (void)preflightExportWithOptions:(id)a3 assetAvailability:(int64_t *)a4 isProcessingRequired:(BOOL *)a5 fileURLs:(id *)a6 info:(id *)a7
{
  v13 = a3;
  if (!v13)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PHCloudSharedAssetExportRequest.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  if (!(a4 | a5))
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PHCloudSharedAssetExportRequest.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"assetAvailability || isProcessingRequired"}];
  }

  if ([v13 variant] != 1)
  {
    v14 = [(PHAssetExportRequest *)self variants];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "variant")}];
    v16 = [v14 objectForKeyedSubscript:v15];

    if (!v16)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PHCloudSharedAssetExportRequest.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"(options.variant == PHAssetExportRequestVariantCurrent) || self.variants[@(options.variant)]"}];
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a4 || a6 || a7)
  {
    v18 = dispatch_semaphore_create(0);
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__37358;
    v38 = __Block_byref_object_dispose__37359;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__37358;
    v32 = __Block_byref_object_dispose__37359;
    v33 = 0;
    v19 = [(PHAssetExportRequest *)self asset];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __115__PHCloudSharedAssetExportRequest_preflightExportWithOptions_assetAvailability_isProcessingRequired_fileURLs_info___block_invoke;
    v23[3] = &unk_1E75A8F78;
    v25 = &v40;
    v26 = &v34;
    v27 = &v28;
    v20 = v18;
    v24 = v20;
    [(PHCloudSharedAssetExportRequest *)self _requestFileURLsForAsset:v19 withOptions:v13 networkAccessAllowed:0 progressHandler:0 resultHandler:v23 resultHandlerQueue:self->_imageManagerResultHandlerQueue];

    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    if (a4)
    {
      *a4 = v41[3];
    }

    if (a6)
    {
      *a6 = v35[5];
    }

    if (a7)
    {
      *a7 = v29[5];
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(&v40, 8);
  }
}

void __115__PHCloudSharedAssetExportRequest_preflightExportWithOptions_assetAvailability_isProcessingRequired_fileURLs_info___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"PHImageErrorKey"];
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (PHCloudSharedAssetExportRequest)initWithAsset:(id)a3 variants:(id)a4
{
  v9.receiver = self;
  v9.super_class = PHCloudSharedAssetExportRequest;
  v4 = [(PHAssetExportRequest *)&v9 initWithAsset:a3 variants:a4];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("PHCloudSharedAssetExportRequest.ImageManagerResultHandlerQueue", v5);
    imageManagerResultHandlerQueue = v4->_imageManagerResultHandlerQueue;
    v4->_imageManagerResultHandlerQueue = v6;
  }

  return v4;
}

+ (id)variantsForAsset:(id)a3 asUnmodifiedOriginal:(BOOL)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PHCloudSharedAssetExportRequest.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v12 = &unk_1F102D568;
  v8 = [v7 uniformTypeIdentifier];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v9;
}

+ (id)exportRequestForAsset:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6 && (([(PHCloudSharedAssetExportRequest *)v6 isCloudSharedAsset]& 1) != 0 || ([(PHCloudSharedAssetExportRequest *)v7 isStreamedVideo]& 1) != 0))
  {
    v8 = [a1 variantsForAsset:v7 asUnmodifiedOriginal:0 error:0];
    v9 = [[PHCloudSharedAssetExportRequest alloc] initWithAsset:v7 variants:v8];
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "[PHCloudSharedAssetExportRequest] Created export request: %@ for asset: %@", &v17, 0x16u);
    }
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Asset %@ is not available or not supported by PHCloudSharedAssetExportRequest.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v11 errorWithDomain:@"PHAssetExportRequestCloudSharedAssetExportRequestErrorDomain" code:0 userInfo:v12];
    v8 = PHAssetExportRequestError(0, v13);

    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "[PHCloudSharedAssetExportRequest] Failed to create export request for asset: %@, error: %@", &v17, 0x16u);
    }

    if (a4)
    {
      v15 = v8;
      v9 = 0;
      *a4 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_resourceRetrievingQueue
{
  if (_resourceRetrievingQueue_onceToken != -1)
  {
    dispatch_once(&_resourceRetrievingQueue_onceToken, &__block_literal_global_37419);
  }

  v3 = _resourceRetrievingQueue__sharedResourceRetrievingQueue;

  return v3;
}

void __59__PHCloudSharedAssetExportRequest__resourceRetrievingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("PHCloudSharedAssetExportRequest.SharedResourceRetrievingQueue", v2);
  v1 = _resourceRetrievingQueue__sharedResourceRetrievingQueue;
  _resourceRetrievingQueue__sharedResourceRetrievingQueue = v0;
}

@end