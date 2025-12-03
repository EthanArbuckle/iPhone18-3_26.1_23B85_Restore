@interface PHAssetResourceRequest
+ (id)_globalFileIOQueue;
- (BOOL)isCancelled;
- (NSString)taskIdentifier;
- (PHAssetResourceRequest)initWithAssetResource:(id)resource options:(id)options requestID:(int)d managerID:(unint64_t)iD delegate:(id)delegate urlReceivedHandler:(id)handler dataReceivedHandler:(id)receivedHandler completionHandler:(id)self0;
- (PHAssetResourceRequestDelegate)delegate;
- (id)_initialValidationError;
- (id)_loadMediaMetadataFromDatabaseWithPhotoLibrary:(id)library type:(id *)type error:(id *)error;
- (int64_t)_streamDataAtURL:(id)l error:(id *)error dataHandler:(id)handler;
- (void)_assetsdMakeAvailableRequestRepliedWithSuccess:(BOOL)success url:(id)url data:(id)data info:(id)info error:(id)error;
- (void)_finishAsyncWithFileURL:(id)l didBecomeAvailable:(BOOL)available error:(id)error;
- (void)_finishWithFileURL:(id)l didBecomeAvailable:(BOOL)available error:(id)error;
- (void)_setAvailabilityProgress:(id)progress;
- (void)_setupFilestreamProgressIfNeeded;
- (void)_setupTotalProgressIfNeeded;
- (void)_updateAssetResourceWithLocallyAvailable:(BOOL)available fileURL:(id)l;
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

- (id)_loadMediaMetadataFromDatabaseWithPhotoLibrary:(id)library type:(id *)type error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
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
    taskIdentifier = [(PHAssetResourceRequest *)self taskIdentifier];
    *buf = 138412290;
    v35 = taskIdentifier;
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
  [libraryCopy performBlockAndWait:v15];
  if (type)
  {
    *type = v17[5];
  }

  v11 = v23[5];
  v12 = v29[5];
  if (!v11 && error)
  {
    v12 = v12;
    *error = v12;
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

- (void)_updateAssetResourceWithLocallyAvailable:(BOOL)available fileURL:(id)l
{
  availableCopy = available;
  assetResource = self->_assetResource;
  lCopy = l;
  [(PHAssetResource *)assetResource setLocallyAvailable:availableCopy];
  [(PHAssetResource *)self->_assetResource setPrivateFileURL:lCopy];
}

- (int64_t)_streamDataAtURL:(id)l error:(id *)error dataHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (lCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetResourceRequest.m" lineNumber:418 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetResourceRequest.m" lineNumber:419 description:{@"Invalid parameter not satisfying: %@", @"dataHandler"}];

LABEL_3:
  v12 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:lCopy];
  v13 = v12;
  if (!v12)
  {
    v23 = @"Unable to initialize stream for resource %@";
LABEL_18:
    streamError = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{v23, self->_assetResource}];
    goto LABEL_19;
  }

  [v12 open];
  streamError = [v13 streamError];
  if (streamError)
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
  selfCopy = self;
  streamError = 0;
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
        streamError2 = [v13 streamError];
        v28 = [v26 ph_genericErrorWithUnderlyingError:streamError2 localizedDescription:{@"Unable to continue reading data for resource %@", selfCopy->_assetResource}];

        v17 = -1;
        streamError = v28;
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
        streamError = v22;
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
  if (error)
  {
    v24 = streamError;
    *error = streamError;
  }

  return v17;
}

- (void)_finishAsyncWithFileURL:(id)l didBecomeAvailable:(BOOL)available error:(id)error
{
  lCopy = l;
  errorCopy = error;
  _globalFileIOQueue = [objc_opt_class() _globalFileIOQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PHAssetResourceRequest__finishAsyncWithFileURL_didBecomeAvailable_error___block_invoke;
  v13[3] = &unk_1E75A9D00;
  v13[4] = self;
  v14 = lCopy;
  availableCopy = available;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = lCopy;
  dispatch_async(_globalFileIOQueue, v13);
}

- (void)_finishWithFileURL:(id)l didBecomeAvailable:(BOOL)available error:(id)error
{
  availableCopy = available;
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  errorCopy = error;
  v10 = errorCopy;
  if (!lCopy || errorCopy)
  {
    goto LABEL_25;
  }

  urlReceivedHandler = self->_urlReceivedHandler;
  if (urlReceivedHandler)
  {
    urlReceivedHandler[2](urlReceivedHandler, lCopy);
  }

  if (self->_loadURLOnly)
  {
    v10 = 0;
    if (!availableCopy)
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
    v13 = [lCopy getResourceValue:&v41 forKey:v12 error:&v40];
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
  [(PHAssetResourceRequest *)self _streamDataAtURL:lCopy error:&v39 dataHandler:v38];
  v10 = v39;

  if (availableCopy)
  {
LABEL_17:
    if ([(PHAssetResourceRequestOptions *)self->_options pruneAfterAvailableOnLowDisk])
    {
      pruneAfterAvailableLowDiskThresholdBytes = [(PHAssetResourceRequestOptions *)self->_options pruneAfterAvailableLowDiskThresholdBytes];
      if (pruneAfterAvailableLowDiskThresholdBytes)
      {
        pruneAfterAvailableLowDiskThresholdBytes2 = [(PHAssetResourceRequestOptions *)self->_options pruneAfterAvailableLowDiskThresholdBytes];
        longLongValue = [pruneAfterAvailableLowDiskThresholdBytes2 longLongValue];
      }

      else
      {
        longLongValue = 0x80000000;
      }

      v20 = MEMORY[0x1E69BF208];
      path = [lCopy path];
      v22 = [v20 diskSpaceAvailableForPath:path];

      if (v22 < longLongValue)
      {
        v23 = PLImageManagerGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          taskIdentifier = [(PHAssetResourceRequest *)self taskIdentifier];
          *buf = 138543874;
          v43 = taskIdentifier;
          v44 = 2048;
          v45 = v22;
          v46 = 2048;
          v47 = longLongValue;
          _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ sending resource unavailable request, availableStorage: %lld purgeThreshold: %lld", buf, 0x20u);
        }

        v25 = objc_alloc(MEMORY[0x1E69BE760]);
        taskIdentifier2 = [(PHAssetResourceRequest *)self taskIdentifier];
        assetObjectID = [(PHAssetResource *)self->_assetResource assetObjectID];
        backingResourceIdentity = [(PHAssetResource *)self->_assetResource backingResourceIdentity];
        v29 = [v25 initWithTaskIdentifier:taskIdentifier2 assetObjectID:assetObjectID resource:backingResourceIdentity];

        assetResource = [(PHAssetResourceRequest *)self assetResource];
        photoLibrary = [assetResource photoLibrary];
        assetsdClient = [photoLibrary assetsdClient];
        resourceAvailabilityClient = [assetsdClient resourceAvailabilityClient];
        [resourceAvailabilityClient sendMakeResourceUnavailableRequest:v29];
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

- (void)_setAvailabilityProgress:(id)progress
{
  progressCopy = progress;
  v5 = progressCopy;
  if (progressCopy && self->_availabilityPendingCount >= 1)
  {
    availabilityRequestProgressContainer = self->_availabilityRequestProgressContainer;
    v11 = v5;
    if (!availabilityRequestProgressContainer)
    {
      v7 = objc_alloc_init(PHProgressContainerForRetryableRequest);
      v8 = self->_availabilityRequestProgressContainer;
      self->_availabilityRequestProgressContainer = v7;

      totalProgress = self->_totalProgress;
      totalProgress = [(PHProgressContainerForRetryableRequest *)self->_availabilityRequestProgressContainer totalProgress];
      [(NSProgress *)totalProgress addChild:totalProgress withPendingUnitCount:self->_availabilityPendingCount];

      availabilityRequestProgressContainer = self->_availabilityRequestProgressContainer;
    }

    progressCopy = [(PHProgressContainerForRetryableRequest *)availabilityRequestProgressContainer setRequestProgress:v11];
    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](progressCopy, v5);
}

- (void)_setupTotalProgressIfNeeded
{
  progressHandler = [(PHAssetResourceRequestOptions *)self->_options progressHandler];

  if (!progressHandler || self->_totalProgress)
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

    privateFileLoader = [(PHAssetResource *)self->_assetResource privateFileLoader];

    if (privateFileLoader)
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

- (void)_assetsdMakeAvailableRequestRepliedWithSuccess:(BOOL)success url:(id)url data:(id)data info:(id)info error:(id)error
{
  successCopy = success;
  v43 = *MEMORY[0x1E69E9840];
  urlCopy = url;
  dataCopy = data;
  infoCopy = info;
  errorCopy = error;
  objc_storeStrong(&self->_info, info);
  if (successCopy)
  {
    if (!dataCopy)
    {
      if (urlCopy)
      {
        v22 = MEMORY[0x1E69BE730];
        assetResource = [(PHAssetResourceRequest *)self assetResource];
        libraryID = [assetResource libraryID];
        assetResource2 = [(PHAssetResourceRequest *)self assetResource];
        assetLocalIdentifier = [assetResource2 assetLocalIdentifier];
        v26 = [(PHObject *)PHAsset uuidFromLocalIdentifier:assetLocalIdentifier];
        v36 = 0;
        LOBYTE(v22) = [v22 refreshSandboxExtensionForURL:urlCopy libraryID:libraryID assetUUID:v26 error:&v36];
        v35 = v36;

        if (v22)
        {
          [(PHAssetResourceRequest *)self _updateAssetResourceWithLocallyAvailable:1 fileURL:urlCopy];
          v27 = v35;
        }

        else
        {
          v30 = PLImageManagerGetLog();
          v27 = v35;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            taskIdentifier = [(PHAssetResourceRequest *)self taskIdentifier];
            path = [urlCopy path];
            *buf = 138543874;
            v38 = taskIdentifier;
            v39 = 2112;
            v40 = path;
            v41 = 2112;
            v42 = v35;
            _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "[RM] %{public}@ asset resource request failed to refresh sandbox extension for path: %@, error; %@", buf, 0x20u);
          }

          v33 = v35;
          errorCopy = v33;
        }

        v28 = 1;
      }

      else
      {
        v29 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Download reported success but no file URL specified"];

        v28 = 0;
        errorCopy = v29;
      }

      goto LABEL_16;
    }

    dataHandler = self->_dataHandler;
    if (dataHandler)
    {
      dataHandler[2](dataHandler, dataCopy);
    }

    goto LABEL_15;
  }

  if (![(PHAssetResourceRequestOptions *)self->_options isNetworkAccessAllowed])
  {
    v17 = [infoCopy objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
    bOOLValue = [v17 BOOLValue];

    if (bOOLValue)
    {
      v19 = PHNetworkAccessAllowedRequiredError();

      errorCopy = v19;
    }
  }

  delegate = [(PHAssetResourceRequest *)self delegate];
  v21 = [delegate retryAssetResourceRequest:self afterFailureWithError:errorCopy];

  if (errorCopy)
  {
    if (v21)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  errorCopy = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Download failed"];
  if ((v21 & 1) == 0)
  {
LABEL_15:
    v28 = 0;
LABEL_16:
    [(PHAssetResourceRequest *)self _finishWithFileURL:urlCopy didBecomeAvailable:v28 error:errorCopy];
  }

LABEL_17:
}

- (void)startRequest
{
  v73[1] = *MEMORY[0x1E69E9840];
  _initialValidationError = [(PHAssetResourceRequest *)self _initialValidationError];
  if (_initialValidationError)
  {
    [(PHAssetResourceRequest *)self _finishWithFileURL:0 didBecomeAvailable:0 error:_initialValidationError];
    goto LABEL_37;
  }

  [(PHAssetResourceRequest *)self _setupTotalProgressIfNeeded];
  backingResourceIdentity = [(PHAssetResource *)self->_assetResource backingResourceIdentity];
  if ([backingResourceIdentity resourceType] == 9)
  {
    cplResourceType = [(PHAssetResource *)self->_assetResource cplResourceType];

    if (!cplResourceType)
    {
      photoLibrary = [(PHAssetResource *)self->_assetResource photoLibrary];
      v6PhotoLibrary = [photoLibrary photoLibrary];
      v60 = 0;
      v61 = 0;
      v8 = [(PHAssetResourceRequest *)self _loadMediaMetadataFromDatabaseWithPhotoLibrary:v6PhotoLibrary type:&v61 error:&v60];
      privateFileURL3 = v61;
      v10 = v60;

      if (privateFileURL3)
      {
        v72 = @"PHMediaMetadataTypeKey";
        v73[0] = privateFileURL3;
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
    privateFileURL = [(PHAssetResource *)self->_assetResource privateFileURL];

    if (privateFileURL)
    {
      privateFileURL2 = [(PHAssetResource *)self->_assetResource privateFileURL];
      v16 = [privateFileURL2 checkResourceIsReachableAndReturnError:0];

      if (v16)
      {
        if (![(PHAssetResourceRequestOptions *)self->_options downloadIsTransient])
        {
          synchronous = self->_synchronous;
          privateFileURL3 = [(PHAssetResource *)self->_assetResource privateFileURL];
          if (synchronous)
          {
            [(PHAssetResourceRequest *)self _finishWithFileURL:privateFileURL3 didBecomeAvailable:0 error:0];
          }

          else
          {
            [(PHAssetResourceRequest *)self _finishAsyncWithFileURL:privateFileURL3 didBecomeAvailable:0 error:0];
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
  privateFileLoader = [(PHAssetResource *)self->_assetResource privateFileLoader];

  if (privateFileLoader)
  {
    v21 = PLImageManagerGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      taskIdentifier = [(PHAssetResourceRequest *)self taskIdentifier];
      *buf = 138412290;
      v65 = taskIdentifier;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "[RM] %@ Using private file loader to load asset resource data", buf, 0xCu);
    }

    v23 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    [(PHAssetResourceRequest *)self _setAvailabilityProgress:v23];
    privateFileLoader2 = [(PHAssetResource *)self->_assetResource privateFileLoader];
    isNetworkAccessAllowed = [(PHAssetResourceRequestOptions *)self->_options isNetworkAccessAllowed];
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
    selfCopy = self;
    v26 = privateFileLoader2[2];
    v27 = v59;
    v26(privateFileLoader2, isNetworkAccessAllowed, v58, v55);
  }

  else
  {
    backingResourceIdentity2 = [(PHAssetResource *)self->_assetResource backingResourceIdentity];

    if (backingResourceIdentity2)
    {
      v29 = objc_alloc(MEMORY[0x1E69BE760]);
      taskIdentifier2 = [(PHAssetResourceRequest *)self taskIdentifier];
      assetObjectID = [(PHAssetResource *)self->_assetResource assetObjectID];
      backingResourceIdentity3 = [(PHAssetResource *)self->_assetResource backingResourceIdentity];
      privateFileURL3 = [v29 initWithTaskIdentifier:taskIdentifier2 assetObjectID:assetObjectID resource:backingResourceIdentity3];

      [privateFileURL3 setNetworkAccessAllowed:{-[PHAssetResourceRequestOptions isNetworkAccessAllowed](self->_options, "isNetworkAccessAllowed")}];
      progressHandler = [(PHAssetResourceRequestOptions *)self->_options progressHandler];
      [privateFileURL3 setWantsProgress:progressHandler != 0];

      [privateFileURL3 setTransient:{-[PHAssetResourceRequestOptions downloadIsTransient](self->_options, "downloadIsTransient")}];
      [privateFileURL3 setDownloadIntent:{-[PHAssetResourceRequestOptions downloadIntent](self->_options, "downloadIntent")}];
      [privateFileURL3 setDownloadPriority:{-[PHAssetResourceRequestOptions downloadPriority](self->_options, "downloadPriority")}];
      v34 = PLImageManagerGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        taskIdentifier3 = [(PHAssetResourceRequest *)self taskIdentifier];
        assetObjectID2 = [(PHAssetResource *)self->_assetResource assetObjectID];
        pl_shortURI = [assetObjectID2 pl_shortURI];
        asset = [(PHAssetResource *)self->_assetResource asset];
        uuid = [asset uuid];
        backingResourceIdentity4 = [(PHAssetResource *)self->_assetResource backingResourceIdentity];
        v40 = PLResourceIdentityShortDescription();
        *buf = 138544130;
        v65 = taskIdentifier3;
        v66 = 2114;
        v67 = pl_shortURI;
        v68 = 2114;
        v69 = uuid;
        v70 = 2114;
        v71 = v40;
        _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ asset resource request sending make available request for asset: %{public}@ %{public}@, resource: %{public}@", buf, 0x2Au);
      }

      assetResource = [(PHAssetResourceRequest *)self assetResource];
      photoLibrary2 = [assetResource photoLibrary];
      assetsdClient = [photoLibrary2 assetsdClient];
      resourceAvailabilityClient = [assetsdClient resourceAvailabilityClient];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __38__PHAssetResourceRequest_startRequest__block_invoke_41;
      v54[3] = &unk_1E75A9C88;
      v54[4] = self;
      v45 = [resourceAvailabilityClient sendMakeResourceAvailableRequest:privateFileURL3 reply:v54];

      [(PHAssetResourceRequest *)self _setAvailabilityProgress:v45];
      goto LABEL_32;
    }

    v46 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A278];
    v47 = MEMORY[0x1E696AEC0];
    assetLocalIdentifier = [(PHAssetResource *)self->_assetResource assetLocalIdentifier];
    originalFilename = [(PHAssetResource *)self->_assetResource originalFilename];
    v50 = [v47 stringWithFormat:@"Asset resource (asset identifier: %@, filename: %@) missing fileLoader or backing resource, unable to load data", assetLocalIdentifier, originalFilename];
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
  totalProgress = [(PHProgressContainerForRetryableRequest *)self->_availabilityRequestProgressContainer totalProgress];
  [totalProgress cancel];
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

- (PHAssetResourceRequest)initWithAssetResource:(id)resource options:(id)options requestID:(int)d managerID:(unint64_t)iD delegate:(id)delegate urlReceivedHandler:(id)handler dataReceivedHandler:(id)receivedHandler completionHandler:(id)self0
{
  resourceCopy = resource;
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  receivedHandlerCopy = receivedHandler;
  completionHandlerCopy = completionHandler;
  if (!resourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetResourceRequest.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"assetResource"}];
  }

  v34.receiver = self;
  v34.super_class = PHAssetResourceRequest;
  v22 = [(PHAssetResourceRequest *)&v34 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_assetResource, resource);
    if (handlerCopy)
    {
      v24 = [handlerCopy copy];
      urlReceivedHandler = v23->_urlReceivedHandler;
      v23->_urlReceivedHandler = v24;
    }

    if (receivedHandlerCopy)
    {
      v26 = [receivedHandlerCopy copy];
      dataHandler = v23->_dataHandler;
      v23->_dataHandler = v26;
    }

    if (completionHandlerCopy)
    {
      v28 = [completionHandlerCopy copy];
      completionHandler = v23->_completionHandler;
      v23->_completionHandler = v28;
    }

    v23->_managerID = iD;
    v23->_requestID = d;
    objc_storeStrong(&v23->_options, options);
    objc_storeWeak(&v23->_delegate, delegateCopy);
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