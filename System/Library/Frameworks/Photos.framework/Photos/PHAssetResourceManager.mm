@interface PHAssetResourceManager
+ (PHAssetResourceManager)defaultManager;
- (BOOL)retryAssetResourceRequest:(id)request afterFailureWithError:(id)error;
- (PHAssetResourceDataRequestID)requestDataForAssetResource:(PHAssetResource *)resource options:(PHAssetResourceRequestOptions *)options dataReceivedHandler:(void *)handler completionHandler:(void *)completionHandler;
- (PHAssetResourceManager)init;
- (id)consolidateAssets:(id)assets completionHandler:(id)handler;
- (id)infoForRequest:(int)request;
- (id)reconnectAssets:(id)assets urlResolvingHandler:(id)handler completionHandler:(id)completionHandler;
- (int)_requestForAssetResource:(id)resource loadURLOnly:(BOOL)only options:(id)options urlReceivedHandler:(id)handler dataReceivedHandler:(id)receivedHandler completionHandler:(id)completionHandler;
- (int)requestFileURLForAssetResource:(id)resource options:(id)options urlReceivedHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestWriteDataForAssetResource:(id)resource toFile:(id)file options:(id)options completionHandler:(id)handler;
- (void)_autoResolveReferencedResources:(id)resources folderURL:(id)l resourceClient:(id)client;
- (void)assetResourceRequest:(id)request didFinishWithError:(id)error;
- (void)cancelDataRequest:(PHAssetResourceDataRequestID)requestID;
@end

@implementation PHAssetResourceManager

- (BOOL)retryAssetResourceRequest:(id)request afterFailureWithError:(id)error
{
  v50 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  errorCopy = error;
  v8 = PHRequestRetryTypeForRequest(requestCopy, errorCopy);
  if ((v8 - 2) < 2)
  {
    v11 = PLImageManagerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      taskIdentifier = [requestCopy taskIdentifier];
      [requestCopy retryInterval];
      *buf = 138543874;
      v45 = taskIdentifier;
      v46 = 2048;
      v47 = v13;
      v48 = 2112;
      v49 = errorCopy;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[RM] %{public}@ asset resource request retrying after %f due to error: %@", buf, 0x20u);
    }

    asset2 = dispatch_queue_create("PHAssetResourceManager.retryRequest", 0);
    [requestCopy retryInterval];
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PHAssetResourceManager_retryAssetResourceRequest_afterFailureWithError___block_invoke;
    block[3] = &unk_1E75AB270;
    v41 = requestCopy;
    dispatch_after(v15, asset2, block);
    v16 = v41;
    goto LABEL_9;
  }

  if (v8 == 4)
  {
    v18 = PLImageManagerGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      taskIdentifier2 = [requestCopy taskIdentifier];
      *buf = 138543362;
      v45 = taskIdentifier2;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ asset resource request requires additional resources to generate adjustment on demand", buf, 0xCu);
    }

    assetResource = [requestCopy assetResource];
    asset = [assetResource asset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v31 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A278];
      v43 = @"Unable to start content editing request on behalf of asset resource request that is not backed by PHAsset";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      asset2 = [v31 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v32];

      [requestCopy configureWithError:asset2];
      [requestCopy startRequest];
LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }

    assetResource2 = [requestCopy assetResource];
    asset2 = [assetResource2 asset];

    requestID = [requestCopy requestID];
    managerID = self->_managerID;
    options = [requestCopy options];
    isNetworkAccessAllowed = [options isNetworkAccessAllowed];
    options2 = [requestCopy options];
    downloadIntent = [options2 downloadIntent];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __74__PHAssetResourceManager_retryAssetResourceRequest_afterFailureWithError___block_invoke_2;
    v37[3] = &unk_1E75A9288;
    v28 = requestCopy;
    v38 = v28;
    selfCopy = self;
    v29 = [PHContentEditingInputRequestContext contentEditingInputRequestContextForAsset:asset2 requestID:requestID managerID:managerID networkAccessAllowed:isNetworkAccessAllowed downloadIntent:downloadIntent progressHandler:&__block_literal_global_146_38953 resultHandler:v37];

    v36 = v28;
    v30 = v29;
    PLSafeRunWithUnfairLock();
    [v30 start];

    v16 = v38;
LABEL_9:

    v17 = 1;
LABEL_17:

    goto LABEL_18;
  }

  if (v8 == 1)
  {
    asset2 = PLImageManagerGetLog();
    if (os_log_type_enabled(asset2, OS_LOG_TYPE_ERROR))
    {
      taskIdentifier3 = [requestCopy taskIdentifier];
      *buf = 138543618;
      v45 = taskIdentifier3;
      v46 = 2112;
      v47 = errorCopy;
      _os_log_impl(&dword_19C86F000, asset2, OS_LOG_TYPE_ERROR, "[RM] %{public}@ asset resource request exceeded retry limit, failing with error: %@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v17 = 0;
LABEL_18:

  return v17;
}

void __74__PHAssetResourceManager_retryAssetResourceRequest_afterFailureWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 containsValidData] & 1) == 0)
  {
    v4 = [v3 error];
    if (!v4)
    {
      v5 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E696A278];
      v9[0] = @"Content editing input request on behalf of asset resource request failed";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      v4 = [v5 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v6];
    }

    [*(a1 + 32) configureWithError:v4];
  }

  [*(a1 + 32) startRequest];
  v7 = *(a1 + 32);
  PLSafeRunWithUnfairLock();
}

void __74__PHAssetResourceManager_retryAssetResourceRequest_afterFailureWithError___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "requestID")}];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

void __74__PHAssetResourceManager_retryAssetResourceRequest_afterFailureWithError___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "requestID")}];
  [v1 setObject:0 forKeyedSubscript:v2];
}

- (void)assetResourceRequest:(id)request didFinishWithError:(id)error
{
  requestCopy = request;
  v4 = requestCopy;
  PLSafeRunWithUnfairLock();
}

void __66__PHAssetResourceManager_assetResourceRequest_didFinishWithError___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "requestID")}];
  [v1 setObject:0 forKeyedSubscript:v2];
}

- (int)_requestForAssetResource:(id)resource loadURLOnly:(BOOL)only options:(id)options urlReceivedHandler:(id)handler dataReceivedHandler:(id)receivedHandler completionHandler:(id)completionHandler
{
  onlyCopy = only;
  v37 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  optionsCopy = options;
  handlerCopy = handler;
  receivedHandlerCopy = receivedHandler;
  if (resourceCopy)
  {
    completionHandlerCopy = completionHandler;
    v19 = [optionsCopy copy];

    completionHandlerCopy2 = [(PHAssetResourceManager *)self _nextRequestID];
    v21 = [[PHAssetResourceRequest alloc] initWithAssetResource:resourceCopy options:v19 requestID:completionHandlerCopy2 managerID:self->_managerID delegate:self urlReceivedHandler:handlerCopy dataReceivedHandler:receivedHandlerCopy completionHandler:completionHandlerCopy];

    [(PHAssetResourceRequest *)v21 setLoadURLOnly:onlyCopy];
    v22 = v21;
    PLSafeRunWithUnfairLock();
    v23 = PLImageManagerGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      taskIdentifier = [(PHAssetResourceRequest *)v22 taskIdentifier];
      if ([v19 isNetworkAccessAllowed])
      {
        v25 = @"Y";
      }

      else
      {
        v25 = @"N";
      }

      progressHandler = [v19 progressHandler];
      *buf = 138412802;
      v27 = @"Y";
      if (!progressHandler)
      {
        v27 = @"N";
      }

      v32 = taskIdentifier;
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = v27;
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEBUG, "[RM]: %@ starting asset resource request with network: %@, progress: %@", buf, 0x20u);
    }

    [(PHAssetResourceRequest *)v22 startRequest];
  }

  else
  {
    v28 = MEMORY[0x1E696ABC0];
    completionHandlerCopy2 = completionHandler;
    v29 = [v28 ph_genericErrorWithLocalizedDescription:@"Cannot perform resource request for nil asset resource"];
    (*(completionHandlerCopy2 + 2))(completionHandlerCopy2, v29);

    LODWORD(completionHandlerCopy2) = 0;
    v19 = optionsCopy;
  }

  return completionHandlerCopy2;
}

void __128__PHAssetResourceManager__requestForAssetResource_loadURLOnly_options_urlReceivedHandler_dataReceivedHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

- (void)_autoResolveReferencedResources:(id)resources folderURL:(id)l resourceClient:(id)client
{
  v51 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  lCopy = l;
  clientCopy = client;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = resourcesCopy;
  v8 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v43;
    *&v9 = 138543362;
    v37 = v9;
    do
    {
      v12 = 0;
      v40 = v10;
      do
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        fileURL = [v13 fileURL];
        if (!fileURL)
        {
          fileSystemBookmark = [v13 fileSystemBookmark];
          fileSystemVolume = [v13 fileSystemVolume];
          v18 = PLPrimaryResourceDataStoreReferenceFileURL();
          fileURL = 0;

          if (v18 == 3)
          {
            v19 = PLImageManagerGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              asset = [v13 asset];
              uuid = [asset uuid];
              *buf = 138543618;
              v47 = uuid;
              v48 = 2112;
              v49 = fileURL;
              v22 = v19;
              v23 = OS_LOG_TYPE_DEFAULT;
              v24 = "No volume URL for referenced resource for asset %{public}@, using artificial volume for URL %@";
              v25 = 22;
LABEL_13:
              _os_log_impl(&dword_19C86F000, v22, v23, v24, buf, v25);
            }

LABEL_14:
          }

          else if (!v18)
          {
            v19 = PLImageManagerGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              asset = [v13 asset];
              uuid = [asset uuid];
              *buf = v37;
              v47 = uuid;
              v22 = v19;
              v23 = OS_LOG_TYPE_ERROR;
              v24 = "Failed to resolve bookmark URL for asset %{public}@";
              v25 = 12;
              goto LABEL_13;
            }

            goto LABEL_14;
          }

          if (!fileURL)
          {
            goto LABEL_22;
          }
        }

        v26 = MEMORY[0x1E69BF238];
        path = [fileURL path];
        v28 = [v26 realPathForPath:path error:0];

        if (!v28)
        {
          v29 = v11;
          lastPathComponent = [fileURL lastPathComponent];
          objectID = [v13 objectID];
          uRIRepresentation = [objectID URIRepresentation];

          v33 = [lCopy URLByAppendingPathComponent:lastPathComponent isDirectory:0];
          v34 = MEMORY[0x1E69BF238];
          path2 = [v33 path];
          v36 = [v34 realPathForPath:path2 error:0];

          if (v36 && [MEMORY[0x1E69BF2E0] processCanReadSandboxForPath:v36])
          {
            [clientCopy updateInternalResourcePath:v36 objectURI:uRIRepresentation error:0];
          }

          v11 = v29;
          v10 = v40;
        }

LABEL_22:
        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v10);
  }
}

- (id)reconnectAssets:(id)assets urlResolvingHandler:(id)handler completionHandler:(id)completionHandler
{
  v40 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (objc_opt_respondsToSelector())
  {
    v11 = [assetsCopy count];
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = assetsCopy;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v11 = 0;
      v15 = *v36;
      do
      {
        v16 = v14;
        do
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          --v16;
        }

        while (v16);
        v11 += v14;
        v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v14);
    }

    else
    {
      v11 = 0;
    }
  }

  v17 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:v11];
  v18 = dispatch_queue_create("PHAssetResourceManager.reconnectAssets", 0);
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke;
  v28[3] = &unk_1E75A9260;
  v29 = assetsCopy;
  v30 = v19;
  v33 = handlerCopy;
  selfCopy = self;
  v20 = v17;
  v32 = v20;
  v34 = completionHandlerCopy;
  v21 = completionHandlerCopy;
  v22 = handlerCopy;
  v23 = v19;
  v24 = assetsCopy;
  dispatch_async(v18, v28);
  v25 = v34;
  v26 = v20;

  return v20;
}

uint64_t __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke(uint64_t a1)
{
  v110 = *MEMORY[0x1E69E9840];
  v107 = 0;
  v106 = 0;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = *(a1 + 32);
  v40 = [obj countByEnumeratingWithState:&v102 objects:v109 count:16];
  if (v40)
  {
    v39 = *v103;
    v36 = &v70;
    v37 = &v69;
    v34 = &v66;
    v35 = &v65;
    v32 = v52;
    v33 = v57;
LABEL_3:
    v43 = 0;
    while (1)
    {
      if (*v103 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(*(&v102 + 1) + 8 * v43);
      context = objc_autoreleasePoolPush();
      if ([v50 isReferencedAsset])
      {
        break;
      }

LABEL_45:
      [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "completedUnitCount") + 1}];
LABEL_46:
      objc_autoreleasePoolPop(context);
      if (++v43 == v40)
      {
        v40 = [obj countByEnumeratingWithState:&v102 objects:v109 count:16];
        if (!v40)
        {
          goto LABEL_50;
        }

        goto LABEL_3;
      }
    }

    if ((v107 & 0x100) == 0)
    {
      if (v107 == 1 && v106 == 1)
      {
        v1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:3110 userInfo:MEMORY[0x1E695E0F8]];
        v2 = *(a1 + 40);
        v3 = [v50 localIdentifier];
        [v2 setObject:v1 forKeyedSubscript:v3];

        goto LABEL_46;
      }

      v41 = [v50 photoLibrary];
      v4 = [v41 photoLibrary];
      v96 = 0;
      v97 = &v96;
      v98 = 0x3032000000;
      v99 = __Block_byref_object_copy__38985;
      v100 = __Block_byref_object_dispose__38986;
      v101 = 0;
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke_127;
      v93[3] = &unk_1E75AA3F8;
      v93[4] = v50;
      v94 = v4;
      v95 = &v96;
      v48 = v94;
      [v94 performBlockAndWait:v93];
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v46 = v97[5];
      v5 = [v46 countByEnumeratingWithState:&v89 objects:v108 count:16];
      if (!v5)
      {
        goto LABEL_44;
      }

      v47 = *v90;
LABEL_13:
      v6 = 0;
      while (1)
      {
        if (*v90 != v47)
        {
          objc_enumerationMutation(v46);
        }

        v7 = *(*(&v89 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v83 = 0;
        v84 = &v83;
        v85 = 0x3032000000;
        v86 = __Block_byref_object_copy__38985;
        v87 = __Block_byref_object_dispose__38986;
        v88 = 0;
        v81[0] = 0;
        v81[1] = v81;
        v81[2] = 0x3032000000;
        v81[3] = __Block_byref_object_copy__38985;
        v81[4] = __Block_byref_object_dispose__38986;
        v82 = 0;
        v75 = 0;
        v76 = &v75;
        v77 = 0x3032000000;
        v78 = __Block_byref_object_copy__38985;
        v79 = __Block_byref_object_dispose__38986;
        v80 = 0;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke_3;
        v74[3] = &unk_1E75A9D28;
        v74[4] = v7;
        v74[5] = &v83;
        v74[6] = v81;
        v74[7] = &v75;
        [v48 performBlockAndWait:v74];
        v9 = v84[5];
        if (v9)
        {
          v10 = MEMORY[0x1E69BF238];
          v11 = [v9 path];
          v12 = [v10 realPathForPath:v11 error:0];

          if (v12 && ([MEMORY[0x1E69BF2E0] processCanReadSandboxForPath:v12] & 1) != 0)
          {
            v13 = 5;
            goto LABEL_40;
          }

          v107 = 0;
          v106 = 0;
          v14 = (*(*(a1 + 64) + 16))();
          if (!v14)
          {
            v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:3110 userInfo:MEMORY[0x1E695E0F8]];
            v16 = *(a1 + 40);
            v17 = [v50 localIdentifier];
            [v16 setObject:v15 forKeyedSubscript:v17];
          }

          if ((v107 & 0x100) != 0)
          {
            v13 = 4;
          }

          else
          {
            if (v107)
            {
              v13 = 4;
            }

            else
            {
              v13 = 5;
            }

            if (v14 && (v107 & 1) == 0)
            {
              v19 = MEMORY[0x1E69BF238];
              v20 = [v14 path];
              v73 = 0;
              v45 = [v19 realPathForPath:v20 error:&v73];
              v44 = v73;

              if (v45)
              {
                v21 = [v41 assetsdClient];
                v22 = [v21 resourceClient];

                v23 = v76[5];
                v72 = 0;
                LODWORD(v21) = [v22 updateInternalResourcePath:v45 objectURI:v23 error:&v72];
                v24 = v72;
                v25 = v24;
                if (v21)
                {
                  v68[0] = 0;
                  v68[1] = v68;
                  v68[2] = 0x3032000000;
                  v69 = __Block_byref_object_copy__38985;
                  v70 = __Block_byref_object_dispose__38986;
                  v71 = 0;
                  v62 = 0;
                  v63 = &v62;
                  v64 = 0x3032000000;
                  v65 = __Block_byref_object_copy__38985;
                  v66 = __Block_byref_object_dispose__38986;
                  v67 = 0;
                  v56[0] = MEMORY[0x1E69E9820];
                  v56[1] = 3221225472;
                  v57[0] = __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke_134;
                  v57[1] = &unk_1E75A9238;
                  v57[2] = v7;
                  v59 = v81;
                  v60 = v68;
                  v61 = &v62;
                  v58 = v14;
                  [v48 performBlockAndWait:v56];
                  v26 = v25;
                  if (v63[5])
                  {
                    v51[0] = MEMORY[0x1E69E9820];
                    v51[1] = 3221225472;
                    v52[0] = __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke_2_135;
                    v52[1] = &unk_1E75A9D58;
                    v52[2] = *(a1 + 48);
                    v54 = v68;
                    v55 = &v62;
                    v53 = v22;
                    [v48 performBlockAndWait:v51];
                  }

                  _Block_object_dispose(&v62, 8);
                  _Block_object_dispose(v68, 8);
                }

                else
                {
                  v28 = PHErrorFromPLError(v24);
                  v26 = v25;
                  v29 = *(a1 + 40);
                  v30 = [v50 localIdentifier];
                  [v29 setObject:v28 forKeyedSubscript:v30];
                }

                v13 = 0;
              }

              else
              {
                v22 = PHErrorFromPLError(v44);
                v27 = *(a1 + 40);
                v26 = [v50 localIdentifier];
                [v27 setObject:v22 forKeyedSubscript:v26];
                v13 = 5;
              }
            }
          }
        }

        else
        {
          v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:3110 userInfo:MEMORY[0x1E695E0F8]];
          v18 = *(a1 + 40);
          v14 = [v50 localIdentifier];
          [v18 setObject:v12 forKeyedSubscript:v14];
          v13 = 5;
        }

LABEL_40:
        _Block_object_dispose(&v75, 8);

        _Block_object_dispose(v81, 8);
        _Block_object_dispose(&v83, 8);

        objc_autoreleasePoolPop(v8);
        if (v13 != 5 && v13)
        {
          goto LABEL_44;
        }

        if (v5 == ++v6)
        {
          v5 = [v46 countByEnumeratingWithState:&v89 objects:v108 count:16];
          if (!v5)
          {
LABEL_44:

            _Block_object_dispose(&v96, 8);
            goto LABEL_45;
          }

          goto LABEL_13;
        }
      }
    }

    objc_autoreleasePoolPop(context);
  }

LABEL_50:

  return (*(*(a1 + 72) + 16))();
}

void __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke_127(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE540];
  v3 = [*(a1 + 32) objectID];
  v7 = [v2 assetWithObjectID:v3 inLibrary:*(a1 + 40)];

  v4 = [v7 persistedResourcesMatching:&__block_literal_global_131];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) fileURL];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) fileSystemBookmark];
    v6 = [*(a1 + 32) fileSystemVolume];
    v7 = PLPrimaryResourceDataStoreReferenceFileURL();
    v8 = 0;

    if ((v7 - 1) >= 2)
    {
      if (!v7)
      {
        v14 = PLImageManagerGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v22 = [*(a1 + 32) asset];
          v23 = [v22 uuid];
          *buf = 138543362;
          v25 = v23;
          _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Failed to resolve bookmark URL for asset %{public}@", buf, 0xCu);
        }

        goto LABEL_9;
      }

      if (v7 != 3)
      {
LABEL_10:

        goto LABEL_11;
      }

      v9 = PLImageManagerGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) asset];
        v11 = [v10 uuid];
        *buf = 138543618;
        v25 = v11;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEFAULT, "No volume URL for referenced resource for asset %{public}@, using artificial volume for URL %@", buf, 0x16u);
      }
    }

    v12 = *(*(a1 + 40) + 8);
    v13 = v8;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
  v15 = [*(a1 + 32) fileSystemVolume];
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = [*(a1 + 32) objectID];
  v19 = [v18 URIRepresentation];
  v20 = *(*(a1 + 56) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

void __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke_134(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 refreshObject:*(a1 + 32) mergeChanges:1];

  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [*(a1 + 32) objectID];
  v18 = [v3 existingObjectWithID:v4 error:0];

  v5 = v18;
  if (v18)
  {
    v6 = [v18 fileSystemVolume];
    v7 = [*(*(*(a1 + 48) + 8) + 40) url];
    v8 = [v7 path];

    if (!v8 || ([v6 url], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "path"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v8), v10, v9, (v11 & 1) == 0))
    {
      v12 = [*(*(*(a1 + 48) + 8) + 40) resources];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = [*(a1 + 40) URLByDeletingLastPathComponent];
      v16 = *(*(a1 + 64) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    v5 = v18;
  }
}

uint64_t __80__PHAssetResourceManager_reconnectAssets_urlResolvingHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 version] == 0;
  v4 = [v2 isDerivative];

  return v3 & (v4 ^ 1u);
}

- (id)consolidateAssets:(id)assets completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  handlerCopy = handler;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = assetsCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    photoLibrary = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([v14 isReferencedAsset])
        {
          uuid = [v14 uuid];
          [v7 addObject:uuid];

          if (!photoLibrary)
          {
            photoLibrary = [v14 photoLibrary];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    photoLibrary = 0;
  }

  assetsdClient = [photoLibrary assetsdClient];
  resourceClient = [assetsdClient resourceClient];

  if (resourceClient)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__PHAssetResourceManager_consolidateAssets_completionHandler___block_invoke;
    v20[3] = &unk_1E75A91F0;
    v21 = handlerCopy;
    v18 = [resourceClient consolidateAssets:v7 completionHandler:v20];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)infoForRequest:(int)request
{
  v3 = PLSafeResultWithUnfairLock();

  return v3;
}

id __41__PHAssetResourceManager_infoForRequest___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v3 = [v1 objectForKeyedSubscript:v2];

  v4 = [v3 info];

  return v4;
}

- (int)requestFileURLForAssetResource:(id)resource options:(id)options urlReceivedHandler:(id)handler completionHandler:(id)completionHandler
{
  resourceCopy = resource;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v15 = completionHandlerCopy;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetResourceManager.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"urlReceivedHandler"}];

    if (v15)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetResourceManager.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionHandlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = [(PHAssetResourceManager *)self _requestForAssetResource:resourceCopy loadURLOnly:1 options:optionsCopy urlReceivedHandler:handlerCopy dataReceivedHandler:0 completionHandler:v15];

  return v16;
}

- (void)cancelDataRequest:(PHAssetResourceDataRequestID)requestID
{
  v4 = MEMORY[0x1E69E9820];
  LODWORD(v6) = requestID;
  v3 = PLSafeResultWithUnfairLock();
  [v3 cancel];
}

id __44__PHAssetResourceManager_cancelDataRequest___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v3 = [v1 objectForKeyedSubscript:v2];

  return v3;
}

- (int)requestWriteDataForAssetResource:(id)resource toFile:(id)file options:(id)options completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  fileCopy = file;
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetResourceManager.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  if ([fileCopy isFileURL])
  {
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Invalid file url at '%@' for resource %@", fileCopy, resourceCopy}];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [fileCopy path];
  v18 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if (!v18)
  {
    if (resourceCopy)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Cannot write data for nil asset resource"];

    v15 = v22;
    if (v22)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"File already exists at '%@' for resource %@", fileCopy, resourceCopy}];

  v15 = v21;
  if (!resourceCopy)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v15)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, v15);
    LODWORD(_nextRequestID) = 0;
    v20 = optionsCopy;
    goto LABEL_19;
  }

LABEL_12:
  v20 = [optionsCopy copy];

  _nextRequestID = [(PHAssetResourceManager *)self _nextRequestID];
  v23 = [[PHAssetResourceWriteRequest alloc] initWithAssetResource:resourceCopy destinationFileURL:fileCopy options:v20 requestID:_nextRequestID managerID:self->_managerID delegate:self completionHandler:handlerCopy];
  PLSafeRunWithUnfairLock();
  v24 = PLImageManagerGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    taskIdentifier = [(PHAssetResourceWriteRequest *)v23 taskIdentifier];
    isNetworkAccessAllowed = [v20 isNetworkAccessAllowed];
    v27 = @"N";
    if (isNetworkAccessAllowed)
    {
      v27 = @"Y";
    }

    v32 = v27;
    progressHandler = [v20 progressHandler];
    *buf = 138412802;
    v29 = @"N";
    if (progressHandler)
    {
      v29 = @"Y";
    }

    v34 = taskIdentifier;
    v35 = 2112;
    v36 = v32;
    v37 = 2112;
    v38 = v29;
    _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEBUG, "[RM]: %@ starting asset resource write request with network: %@, progress: %@", buf, 0x20u);
  }

  [(PHAssetResourceWriteRequest *)v23 startRequest];
LABEL_19:

  return _nextRequestID;
}

void __92__PHAssetResourceManager_requestWriteDataForAssetResource_toFile_options_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

- (PHAssetResourceDataRequestID)requestDataForAssetResource:(PHAssetResource *)resource options:(PHAssetResourceRequestOptions *)options dataReceivedHandler:(void *)handler completionHandler:(void *)completionHandler
{
  v11 = resource;
  v12 = options;
  v13 = handler;
  v14 = completionHandler;
  v15 = v14;
  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetResourceManager.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    if (v15)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetResourceManager.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = [(PHAssetResourceManager *)self _requestForAssetResource:v11 loadURLOnly:0 options:v12 urlReceivedHandler:0 dataReceivedHandler:v13 completionHandler:v15];

  return v16;
}

- (PHAssetResourceManager)init
{
  v9.receiver = self;
  v9.super_class = PHAssetResourceManager;
  v2 = [(PHAssetResourceManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    atomic_store(1u, &v2->_nextRequestID);
    v2->_requestsLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestsLock_requestsByID = v3->_requestsLock_requestsByID;
    v3->_requestsLock_requestsByID = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestsLock_supplementaryContextsByID = v3->_requestsLock_supplementaryContextsByID;
    v3->_requestsLock_supplementaryContextsByID = v6;

    if (PHNextImageAndAssetResourceManagerID_onceToken != -1)
    {
      dispatch_once(&PHNextImageAndAssetResourceManagerID_onceToken, &__block_literal_global_24244);
    }

    v3->_managerID = atomic_fetch_add(&PHNextImageAndAssetResourceManagerID_managerID, 1uLL);
  }

  return v3;
}

+ (PHAssetResourceManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, &__block_literal_global_39028);
  }

  v3 = defaultManager__manager;

  return v3;
}

void __40__PHAssetResourceManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(PHAssetResourceManager);
  v1 = defaultManager__manager;
  defaultManager__manager = v0;

  *(defaultManager__manager + 16) = 2;
}

@end