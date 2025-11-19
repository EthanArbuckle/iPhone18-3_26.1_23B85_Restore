@interface PHAssetResourceRequest
+ (id)_globalFileIOQueue;
- (BOOL)isCancelled;
- (NSString)taskIdentifier;
- (PHAssetResourceRequest)initWithAssetResource:(id)a3 options:(id)a4 requestID:(int)a5 managerID:(unint64_t)a6 delegate:(id)a7 urlReceivedHandler:(id)a8 dataReceivedHandler:(id)a9 completionHandler:(id)a10;
- (PHAssetResourceRequestDelegate)delegate;
- (id)_initialValidationError;
- (id)_loadMediaMetadataFromDatabaseWithPhotoLibrary:(id)a3 type:(id *)a4 error:(id *)a5;
- (int64_t)_streamDataAtURL:(id)a3 error:(id *)a4 dataHandler:(id)a5;
- (void)_assetsdMakeAvailableRequestRepliedWithSuccess:(BOOL)a3 url:(id)a4 data:(id)a5 info:(id)a6 error:(id)a7;
- (void)_finishAsyncWithFileURL:(id)a3 didBecomeAvailable:(BOOL)a4 error:(id)a5;
- (void)_finishWithFileURL:(id)a3 didBecomeAvailable:(BOOL)a4 error:(id)a5;
- (void)_setAvailabilityProgress:(id)a3;
- (void)_setupFilestreamProgressIfNeeded;
- (void)_setupTotalProgressIfNeeded;
- (void)_updateAssetResourceWithLocallyAvailable:(BOOL)a3 fileURL:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)startRequest;
@end

@implementation PHAssetResourceRequest

- (PHAssetResourceRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_loadMediaMetadataFromDatabaseWithPhotoLibrary:(id)a3 type:(id *)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__45825;
  v32 = __Block_byref_object_dispose__45826;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__45825;
  v26 = __Block_byref_object_dispose__45826;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__45825;
  v20 = __Block_byref_object_dispose__45826;
  v21 = 0;
  v9 = PLImageManagerGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(PHAssetResourceRequest *)self taskIdentifier];
    *buf = 138412290;
    v35 = v10;
    _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "[RM] %@ Attempting to load media metadata from database", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__PHAssetResourceRequest__loadMediaMetadataFromDatabaseWithPhotoLibrary_type_error___block_invoke;
  v15[3] = &unk_1E75A9D28;
  v15[4] = self;
  v15[5] = &v28;
  v15[6] = &v22;
  v15[7] = &v16;
  [v8 performBlockAndWait:v15];
  if (a4)
  {
    *a4 = v17[5];
  }

  v11 = v23[5];
  v12 = v29[5];
  if (!v11 && a5)
  {
    v12 = v12;
    *a5 = v12;
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

void __84__PHAssetResourceRequest__loadMediaMetadataFromDatabaseWithPhotoLibrary_type_error___block_invoke(void *a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE540] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AE18];
  v6 = [*(a1[4] + 96) assetObjectID];
  v7 = [v5 predicateWithFormat:@"self = %@", v6];
  [v4 setPredicate:v7];

  v8 = [*(a1[4] + 96) photoLibrary];
  v9 = [v8 photoLibrary];
  v10 = [v9 managedObjectContext];
  v11 = *(a1[5] + 8);
  obj = *(v11 + 40);
  v12 = [v10 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v11 + 40), obj);

  if (v12)
  {
    v13 = [v12 firstObject];
    if (v13)
    {
      v14 = [*(a1[4] + 96) backingResourceIdentity];
      v15 = [v14 version];
      v16 = *(a1[7] + 8);
      v26 = *(v16 + 40);
      v17 = [v13 mediaMetadataForResourceVersion:v15 mediaMetadataType:&v26];
      objc_storeStrong((v16 + 40), v26);
      v18 = *(a1[6] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v21 = MEMORY[0x1E696AEC0];
      v14 = [*(a1[4] + 96) assetObjectID];
      v19 = [v21 stringWithFormat:@"Cannot find asset with object ID %@", v14];
      v29[0] = v19;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v23 = [v20 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v22];
      v24 = *(a1[5] + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }
  }
}

- (void)_updateAssetResourceWithLocallyAvailable:(BOOL)a3 fileURL:(id)a4
{
  v4 = a3;
  assetResource = self->_assetResource;
  v7 = a4;
  [(PHAssetResource *)assetResource setLocallyAvailable:v4];
  [(PHAssetResource *)self->_assetResource setPrivateFileURL:v7];
}

- (int64_t)_streamDataAtURL:(id)a3 error:(id *)a4 dataHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PHAssetResourceRequest.m" lineNumber:418 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"PHAssetResourceRequest.m" lineNumber:419 description:{@"Invalid parameter not satisfying: %@", @"dataHandler"}];

LABEL_3:
  v12 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v9];
  v13 = v12;
  if (!v12)
  {
    v23 = @"Unable to initialize stream for resource %@";
LABEL_18:
    v14 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{v23, self->_assetResource}];
    goto LABEL_19;
  }

  [v12 open];
  v14 = [v13 streamError];
  if (v14)
  {
LABEL_19:
    v32 = 0;
    v17 = -1;
    goto LABEL_20;
  }

  v15 = malloc_type_malloc(0x100000uLL, 0x33F2AFB1uLL);
  if (!v15)
  {
    v23 = @"Unable to reserve temporary space for resource %@";
    goto LABEL_18;
  }

  v16 = v15;
  v31 = self;
  v14 = 0;
  v17 = 0;
  v32 = 0;
  while ([v13 hasBytesAvailable])
  {
    v18 = [v13 read:v16 maxLength:0x100000];
    v19 = v18;
    if (v18 <= 0)
    {
      if (v18 < 0)
      {
        v26 = MEMORY[0x1E696ABC0];
        v27 = [v13 streamError];
        v28 = [v26 ph_genericErrorWithUnderlyingError:v27 localizedDescription:{@"Unable to continue reading data for resource %@", v31->_assetResource}];

        v17 = -1;
        v14 = v28;
        break;
      }

      if (v17 < 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v16 length:v19 freeWhenDone:0];
      (v11)[2](v11, v21, &v32);
      if (v32 == 1)
      {
        v22 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];

        v17 = -1;
        v14 = v22;
      }

      else
      {
        v17 += v19;
      }

      objc_autoreleasePoolPop(v20);
      if (v17 < 0)
      {
LABEL_16:
        v17 = -1;
        break;
      }
    }
  }

  free(v16);
LABEL_20:
  [v13 close];
  if (a4)
  {
    v24 = v14;
    *a4 = v14;
  }

  return v17;
}

- (void)_finishAsyncWithFileURL:(id)a3 didBecomeAvailable:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [objc_opt_class() _globalFileIOQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PHAssetResourceRequest__finishAsyncWithFileURL_didBecomeAvailable_error___block_invoke;
  v13[3] = &unk_1E75A9D00;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_finishWithFileURL:(id)a3 didBecomeAvailable:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8 || v9)
  {
    goto LABEL_25;
  }

  urlReceivedHandler = self->_urlReceivedHandler;
  if (urlReceivedHandler)
  {
    urlReceivedHandler[2](urlReceivedHandler, v8);
  }

  if (self->_loadURLOnly)
  {
    v10 = 0;
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  [(PHAssetResourceRequest *)self _setupFilestreamProgressIfNeeded];
  if (self->_fileStreamProgress)
  {
    v41 = 0;
    v12 = *MEMORY[0x1E695DB50];
    v40 = 0;
    v13 = [v8 getResourceValue:&v41 forKey:v12 error:&v40];
    v14 = v41;
    v15 = v40;
    if (v13)
    {
      -[NSProgress setTotalUnitCount:](self->_fileStreamProgress, "setTotalUnitCount:", [v14 unsignedIntegerValue]);
    }

    else
    {
      [(NSProgress *)self->_fileStreamProgress setTotalUnitCount:0];
      v16 = PLImageManagerGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v15;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Unable to read file size, error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v38[4] = self;
  v39 = v15;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __70__PHAssetResourceRequest__finishWithFileURL_didBecomeAvailable_error___block_invoke;
  v38[3] = &unk_1E75A9CD8;
  [(PHAssetResourceRequest *)self _streamDataAtURL:v8 error:&v39 dataHandler:v38];
  v10 = v39;

  if (v6)
  {
LABEL_17:
    if ([(PHAssetResourceRequestOptions *)self->_options pruneAfterAvailableOnLowDisk])
    {
      v17 = [(PHAssetResourceRequestOptions *)self->_options pruneAfterAvailableLowDiskThresholdBytes];
      if (v17)
      {
        v18 = [(PHAssetResourceRequestOptions *)self->_options pruneAfterAvailableLowDiskThresholdBytes];
        v19 = [v18 longLongValue];
      }

      else
      {
        v19 = 0x80000000;
      }

      v20 = MEMORY[0x1E69BF208];
      v21 = [v8 path];
      v22 = [v20 diskSpaceAvailableForPath:v21];

      if (v22 < v19)
      {
        v23 = PLImageManagerGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(PHAssetResourceRequest *)self taskIdentifier];
          *buf = 138543874;
          v43 = v24;
          v44 = 2048;
          v45 = v22;
          v46 = 2048;
          v47 = v19;
          _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ sending resource unavailable request, availableStorage: %lld purgeThreshold: %lld", buf, 0x20u);
        }

        v25 = objc_alloc(MEMORY[0x1E69BE760]);
        v26 = [(PHAssetResourceRequest *)self taskIdentifier];
        v27 = [(PHAssetResource *)self->_assetResource assetObjectID];
        v28 = [(PHAssetResource *)self->_assetResource backingResourceIdentity];
        v29 = [v25 initWithTaskIdentifier:v26 assetObjectID:v27 resource:v28];

        v30 = [(PHAssetResourceRequest *)self assetResource];
        v31 = [v30 photoLibrary];
        v32 = [v31 assetsdClient];
        v33 = [v32 resourceAvailabilityClient];
        [v33 sendMakeResourceUnavailableRequest:v29];
      }
    }
  }

LABEL_25:
  os_unfair_lock_lock(&self->_lock);
  v34 = _Block_copy(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v34)
  {
    v36 = PHPublicErrorFromError(v10);
    v34[2](v34, v36);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assetResourceRequest:self didFinishWithError:v10];
}

void __70__PHAssetResourceRequest__finishWithFileURL_didBecomeAvailable_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v5 = *(a1 + 32);
  v6 = *(v5 + 12);
  os_unfair_lock_unlock((v5 + 8));
  if (v6 == 1)
  {
    *a3 = 1;
  }

  else
  {
    if ([*(*(a1 + 32) + 32) totalUnitCount] >= 1)
    {
      [*(*(a1 + 32) + 32) setCompletedUnitCount:{objc_msgSend(v8, "length") + objc_msgSend(*(*(a1 + 32) + 32), "completedUnitCount")}];
    }

    v7 = *(*(a1 + 32) + 160);
    if (v7)
    {
      (*(v7 + 16))(v7, v8);
    }
  }
}

- (void)_setupFilestreamProgressIfNeeded
{
  if (self->_fileStreamPendingCount >= 1 && !self->_fileStreamProgress)
  {
    v3 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
    fileStreamProgress = self->_fileStreamProgress;
    self->_fileStreamProgress = v3;

    fileStreamPendingCount = self->_fileStreamPendingCount;
    totalProgress = self->_totalProgress;
    v7 = self->_fileStreamProgress;

    [(NSProgress *)totalProgress addChild:v7 withPendingUnitCount:fileStreamPendingCount];
  }
}

- (void)_setAvailabilityProgress:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_availabilityPendingCount >= 1)
  {
    availabilityRequestProgressContainer = self->_availabilityRequestProgressContainer;
    v11 = v5;
    if (!availabilityRequestProgressContainer)
    {
      v7 = objc_alloc_init(PHProgressContainerForRetryableRequest);
      v8 = self->_availabilityRequestProgressContainer;
      self->_availabilityRequestProgressContainer = v7;

      totalProgress = self->_totalProgress;
      v10 = [(PHProgressContainerForRetryableRequest *)self->_availabilityRequestProgressContainer totalProgress];
      [(NSProgress *)totalProgress addChild:v10 withPendingUnitCount:self->_availabilityPendingCount];

      availabilityRequestProgressContainer = self->_availabilityRequestProgressContainer;
    }

    v4 = [(PHProgressContainerForRetryableRequest *)availabilityRequestProgressContainer setRequestProgress:v11];
    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_setupTotalProgressIfNeeded
{
  v3 = [(PHAssetResourceRequestOptions *)self->_options progressHandler];

  if (!v3 || self->_totalProgress)
  {
    return;
  }

  v4 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
  totalProgress = self->_totalProgress;
  self->_totalProgress = v4;

  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x1E69BE6E8]);
  v7 = self->_totalProgress;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __53__PHAssetResourceRequest__setupTotalProgressIfNeeded__block_invoke;
  v17 = &unk_1E75A9CB0;
  objc_copyWeak(&v18, &location);
  v8 = [v6 initWithSourceProgress:v7 progressHandler:&v14];
  progressFollower = self->_progressFollower;
  self->_progressFollower = v8;

  v10 = [(PHAssetResource *)self->_assetResource isLocallyAvailable:v14];
  if ([(PHAssetResourceRequestOptions *)self->_options downloadIsTransient])
  {
    v11 = 0;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_7:
    v12 = 100;
    if (v11)
    {
      v12 = 50;
    }

    self->_availabilityPendingCount = v12;
    goto LABEL_10;
  }

  v11 = !self->_loadURLOnly;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v11)
  {
    v13 = 50;
    if (v10)
    {
      v13 = 100;
    }

    self->_fileStreamPendingCount = v13;
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __53__PHAssetResourceRequest__setupTotalProgressIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained options];
  v5 = [v4 progressHandler];
  [v3 fractionCompleted];
  v7 = v6;

  v5[2](v5, v7);
}

- (id)_initialValidationError
{
  configuredError = self->_configuredError;
  if (configuredError)
  {
    v3 = configuredError;
  }

  else if ([(PHAssetResourceRequestOptions *)self->_options downloadIsTransient])
  {
    if ([(PHAssetResourceRequestOptions *)self->_options isNetworkAccessAllowed])
    {
      v3 = 0;
    }

    else
    {
      v3 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3164 localizedDescription:@"Transient data requests can only run with network access allowed"];
    }

    v5 = [(PHAssetResource *)self->_assetResource privateFileLoader];

    if (v5)
    {
      v6 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"File loader backed asset resources do not support transient data requests"];

      v3 = v6;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)taskIdentifier
{
  taskIdentifier = self->_taskIdentifier;
  if (taskIdentifier)
  {
    v3 = taskIdentifier;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AR-%lu-%lu", self->_managerID, self->_requestID];
  }

  return v3;
}

- (void)_assetsdMakeAvailableRequestRepliedWithSuccess:(BOOL)a3 url:(id)a4 data:(id)a5 info:(id)a6 error:(id)a7
{
  v10 = a3;
  v43 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_storeStrong(&self->_info, a6);
  if (v10)
  {
    if (!v13)
    {
      if (v12)
      {
        v22 = MEMORY[0x1E69BE730];
        v34 = [(PHAssetResourceRequest *)self assetResource];
        v23 = [v34 libraryID];
        v24 = [(PHAssetResourceRequest *)self assetResource];
        v25 = [v24 assetLocalIdentifier];
        v26 = [(PHObject *)PHAsset uuidFromLocalIdentifier:v25];
        v36 = 0;
        LOBYTE(v22) = [v22 refreshSandboxExtensionForURL:v12 libraryID:v23 assetUUID:v26 error:&v36];
        v35 = v36;

        if (v22)
        {
          [(PHAssetResourceRequest *)self _updateAssetResourceWithLocallyAvailable:1 fileURL:v12];
          v27 = v35;
        }

        else
        {
          v30 = PLImageManagerGetLog();
          v27 = v35;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = [(PHAssetResourceRequest *)self taskIdentifier];
            v32 = [v12 path];
            *buf = 138543874;
            v38 = v31;
            v39 = 2112;
            v40 = v32;
            v41 = 2112;
            v42 = v35;
            _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "[RM] %{public}@ asset resource request failed to refresh sandbox extension for path: %@, error; %@", buf, 0x20u);
          }

          v33 = v35;
          v15 = v33;
        }

        v28 = 1;
      }

      else
      {
        v29 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Download reported success but no file URL specified"];

        v28 = 0;
        v15 = v29;
      }

      goto LABEL_16;
    }

    dataHandler = self->_dataHandler;
    if (dataHandler)
    {
      dataHandler[2](dataHandler, v13);
    }

    goto LABEL_15;
  }

  if (![(PHAssetResourceRequestOptions *)self->_options isNetworkAccessAllowed])
  {
    v17 = [v14 objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
    v18 = [v17 BOOLValue];

    if (v18)
    {
      v19 = PHNetworkAccessAllowedRequiredError();

      v15 = v19;
    }
  }

  v20 = [(PHAssetResourceRequest *)self delegate];
  v21 = [v20 retryAssetResourceRequest:self afterFailureWithError:v15];

  if (v15)
  {
    if (v21)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v15 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Download failed"];
  if ((v21 & 1) == 0)
  {
LABEL_15:
    v28 = 0;
LABEL_16:
    [(PHAssetResourceRequest *)self _finishWithFileURL:v12 didBecomeAvailable:v28 error:v15];
  }

LABEL_17:
}

- (void)startRequest
{
  v73[1] = *MEMORY[0x1E69E9840];
  v3 = [(PHAssetResourceRequest *)self _initialValidationError];
  if (v3)
  {
    [(PHAssetResourceRequest *)self _finishWithFileURL:0 didBecomeAvailable:0 error:v3];
    goto LABEL_37;
  }

  [(PHAssetResourceRequest *)self _setupTotalProgressIfNeeded];
  v4 = [(PHAssetResource *)self->_assetResource backingResourceIdentity];
  if ([v4 resourceType] == 9)
  {
    v5 = [(PHAssetResource *)self->_assetResource cplResourceType];

    if (!v5)
    {
      v6 = [(PHAssetResource *)self->_assetResource photoLibrary];
      v7 = [v6 photoLibrary];
      v60 = 0;
      v61 = 0;
      v8 = [(PHAssetResourceRequest *)self _loadMediaMetadataFromDatabaseWithPhotoLibrary:v7 type:&v61 error:&v60];
      v9 = v61;
      v10 = v60;

      if (v9)
      {
        v72 = @"PHMediaMetadataTypeKey";
        v73[0] = v9;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
        info = self->_info;
        self->_info = v11;
      }

      dataHandler = self->_dataHandler;
      if (dataHandler)
      {
        dataHandler[2](dataHandler, v8);
      }

      [(PHAssetResourceRequest *)self _finishWithFileURL:0 didBecomeAvailable:0 error:v10];

      goto LABEL_32;
    }
  }

  else
  {
  }

  if ([(PHAssetResource *)self->_assetResource isLocallyAvailable]&& ![(PHAssetResourceRequestOptions *)self->_options downloadIsTransient])
  {
    v14 = [(PHAssetResource *)self->_assetResource privateFileURL];

    if (v14)
    {
      v15 = [(PHAssetResource *)self->_assetResource privateFileURL];
      v16 = [v15 checkResourceIsReachableAndReturnError:0];

      if (v16)
      {
        if (![(PHAssetResourceRequestOptions *)self->_options downloadIsTransient])
        {
          synchronous = self->_synchronous;
          v9 = [(PHAssetResource *)self->_assetResource privateFileURL];
          if (synchronous)
          {
            [(PHAssetResourceRequest *)self _finishWithFileURL:v9 didBecomeAvailable:0 error:0];
          }

          else
          {
            [(PHAssetResourceRequest *)self _finishAsyncWithFileURL:v9 didBecomeAvailable:0 error:0];
          }

LABEL_32:

          goto LABEL_37;
        }

        goto LABEL_24;
      }

      v18 = PLImageManagerGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v19 = "Asset resource file URL not reachable, may have been pruned, will attempt availability change request";
        goto LABEL_22;
      }
    }

    else
    {
      v18 = PLImageManagerGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v19 = "Asset resource marked locally available but has no file URL";
LABEL_22:
        _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
      }
    }
  }

LABEL_24:
  v20 = [(PHAssetResource *)self->_assetResource privateFileLoader];

  if (v20)
  {
    v21 = PLImageManagerGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(PHAssetResourceRequest *)self taskIdentifier];
      *buf = 138412290;
      v65 = v22;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "[RM] %@ Using private file loader to load asset resource data", buf, 0xCu);
    }

    v23 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    [(PHAssetResourceRequest *)self _setAvailabilityProgress:v23];
    v24 = [(PHAssetResource *)self->_assetResource privateFileLoader];
    v25 = [(PHAssetResourceRequestOptions *)self->_options isNetworkAccessAllowed];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __38__PHAssetResourceRequest_startRequest__block_invoke;
    v58[3] = &unk_1E75A9C10;
    v58[4] = self;
    v59 = v23;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __38__PHAssetResourceRequest_startRequest__block_invoke_2;
    v55[3] = &unk_1E75A9C38;
    v56 = v59;
    v57 = self;
    v26 = v24[2];
    v27 = v59;
    v26(v24, v25, v58, v55);
  }

  else
  {
    v28 = [(PHAssetResource *)self->_assetResource backingResourceIdentity];

    if (v28)
    {
      v29 = objc_alloc(MEMORY[0x1E69BE760]);
      v30 = [(PHAssetResourceRequest *)self taskIdentifier];
      v31 = [(PHAssetResource *)self->_assetResource assetObjectID];
      v32 = [(PHAssetResource *)self->_assetResource backingResourceIdentity];
      v9 = [v29 initWithTaskIdentifier:v30 assetObjectID:v31 resource:v32];

      [v9 setNetworkAccessAllowed:{-[PHAssetResourceRequestOptions isNetworkAccessAllowed](self->_options, "isNetworkAccessAllowed")}];
      v33 = [(PHAssetResourceRequestOptions *)self->_options progressHandler];
      [v9 setWantsProgress:v33 != 0];

      [v9 setTransient:{-[PHAssetResourceRequestOptions downloadIsTransient](self->_options, "downloadIsTransient")}];
      [v9 setDownloadIntent:{-[PHAssetResourceRequestOptions downloadIntent](self->_options, "downloadIntent")}];
      [v9 setDownloadPriority:{-[PHAssetResourceRequestOptions downloadPriority](self->_options, "downloadPriority")}];
      v34 = PLImageManagerGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(PHAssetResourceRequest *)self taskIdentifier];
        v53 = [(PHAssetResource *)self->_assetResource assetObjectID];
        v36 = [v53 pl_shortURI];
        v37 = [(PHAssetResource *)self->_assetResource asset];
        v38 = [v37 uuid];
        v39 = [(PHAssetResource *)self->_assetResource backingResourceIdentity];
        v40 = PLResourceIdentityShortDescription();
        *buf = 138544130;
        v65 = v35;
        v66 = 2114;
        v67 = v36;
        v68 = 2114;
        v69 = v38;
        v70 = 2114;
        v71 = v40;
        _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ asset resource request sending make available request for asset: %{public}@ %{public}@, resource: %{public}@", buf, 0x2Au);
      }

      v41 = [(PHAssetResourceRequest *)self assetResource];
      v42 = [v41 photoLibrary];
      v43 = [v42 assetsdClient];
      v44 = [v43 resourceAvailabilityClient];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __38__PHAssetResourceRequest_startRequest__block_invoke_41;
      v54[3] = &unk_1E75A9C88;
      v54[4] = self;
      v45 = [v44 sendMakeResourceAvailableRequest:v9 reply:v54];

      [(PHAssetResourceRequest *)self _setAvailabilityProgress:v45];
      goto LABEL_32;
    }

    v46 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A278];
    v47 = MEMORY[0x1E696AEC0];
    v48 = [(PHAssetResource *)self->_assetResource assetLocalIdentifier];
    v49 = [(PHAssetResource *)self->_assetResource originalFilename];
    v50 = [v47 stringWithFormat:@"Asset resource (asset identifier: %@, filename: %@) missing fileLoader or backing resource, unable to load data", v48, v49];
    v63 = v50;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v52 = [v46 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v51];

    if (self->_synchronous)
    {
      [(PHAssetResourceRequest *)self _finishWithFileURL:0 didBecomeAvailable:0 error:v52];
    }

    else
    {
      [(PHAssetResourceRequest *)self _finishAsyncWithFileURL:0 didBecomeAvailable:0 error:v52];
    }
  }

LABEL_37:
}

void __38__PHAssetResourceRequest_startRequest__block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v6 = *(a1 + 32);
  v7 = *(v6 + 12);
  os_unfair_lock_unlock((v6 + 8));
  if (v7 == 1)
  {
    *a2 = 1;
  }

  else
  {
    v8 = ([*(a1 + 40) totalUnitCount] * a3);
    v9 = *(a1 + 40);

    [v9 setCompletedUnitCount:v8];
  }
}

void __38__PHAssetResourceRequest_startRequest__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  if (v6)
  {
    [*(a1 + 40) _updateAssetResourceWithLocallyAvailable:1 fileURL:v6];
  }

  [*(a1 + 40) _finishAsyncWithFileURL:v6 didBecomeAvailable:0 error:v5];
}

void __38__PHAssetResourceRequest_startRequest__block_invoke_41(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [objc_opt_class() _globalFileIOQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __38__PHAssetResourceRequest_startRequest__block_invoke_2_42;
  v21[3] = &unk_1E75A9C60;
  v16 = *(a1 + 32);
  v26 = a2;
  v21[4] = v16;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  dispatch_async(v15, v21);
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  self->_cancelled = 1;
  os_unfair_lock_unlock(&self->_lock);
  v3 = [(PHProgressContainerForRetryableRequest *)self->_availabilityRequestProgressContainer totalProgress];
  [v3 cancel];
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_lock);
  return cancelled;
}

- (void)dealloc
{
  [(PLProgressFollower *)self->_progressFollower invalidate];
  v3.receiver = self;
  v3.super_class = PHAssetResourceRequest;
  [(PHAssetResourceRequest *)&v3 dealloc];
}

- (PHAssetResourceRequest)initWithAssetResource:(id)a3 options:(id)a4 requestID:(int)a5 managerID:(unint64_t)a6 delegate:(id)a7 urlReceivedHandler:(id)a8 dataReceivedHandler:(id)a9 completionHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if (!v16)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PHAssetResourceRequest.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"assetResource"}];
  }

  v34.receiver = self;
  v34.super_class = PHAssetResourceRequest;
  v22 = [(PHAssetResourceRequest *)&v34 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_assetResource, a3);
    if (v19)
    {
      v24 = [v19 copy];
      urlReceivedHandler = v23->_urlReceivedHandler;
      v23->_urlReceivedHandler = v24;
    }

    if (v20)
    {
      v26 = [v20 copy];
      dataHandler = v23->_dataHandler;
      v23->_dataHandler = v26;
    }

    if (v21)
    {
      v28 = [v21 copy];
      completionHandler = v23->_completionHandler;
      v23->_completionHandler = v28;
    }

    v23->_managerID = a6;
    v23->_requestID = a5;
    objc_storeStrong(&v23->_options, a4);
    objc_storeWeak(&v23->_delegate, v18);
    v23->_lock._os_unfair_lock_opaque = 0;
    atomic_store(0, &v23->_retryAttemptCount);
    v23->_retryInterval = 0.1;
  }

  return v23;
}

+ (id)_globalFileIOQueue
{
  if (_globalFileIOQueue_onceToken != -1)
  {
    dispatch_once(&_globalFileIOQueue_onceToken, &__block_literal_global_45910);
  }

  v3 = _globalFileIOQueue_ioQueue;

  return v3;
}

void __44__PHAssetResourceRequest__globalFileIOQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.photos.assetResources.fileIO", v2);
  v1 = _globalFileIOQueue_ioQueue;
  _globalFileIOQueue_ioQueue = v0;
}

@end