@interface MPStoreDownload
+ (id)_SSPurchaseForType:(int64_t)type attributes:(id)attributes;
+ (id)storeDownloadForMediaItem:(id)item type:(int64_t)type attributes:(id)attributes;
+ (id)storeDownloadWithDownloadIdentifier:(int64_t)identifier;
- (BOOL)_isCanceled;
- (BOOL)isCanceled;
- (BOOL)isFinished;
- (BOOL)isPaused;
- (BOOL)isPurchasing;
- (BOOL)isRestore;
- (MPStoreDownload)initWithType:(int64_t)type attributes:(id)attributes;
- (NSDictionary)rentalInformation;
- (NSError)failureError;
- (NSError)purchaseError;
- (NSString)phaseIdentifier;
- (double)percentComplete;
- (id)_SSDownload;
- (id)_SSPurchase;
- (id)_SSPurchaseResponse;
- (id)_currentOverridePhaseIdentifier;
- (id)_valueForDownloadProperty:(id)property;
- (id)assetsForType:(id)type;
- (id)description;
- (int64_t)bytesDownloaded;
- (int64_t)bytesTotal;
- (int64_t)downloadIdentifier;
- (int64_t)downloadSizeLimit;
- (int64_t)reason;
- (int64_t)storeItemIdentifier;
- (unint64_t)libraryItemIdentifier;
- (void)_addOverridePhaseIdentifier:(id)identifier;
- (void)_removeOverridePhaseIdentifier:(id)identifier;
- (void)_setCanceled:(BOOL)canceled;
- (void)_setSSDownload:(id)download;
- (void)_setSSPurchase:(id)purchase SSPurchaseResponse:(id)response;
- (void)resetCachedRentalInformation;
@end

@implementation MPStoreDownload

- (id)_valueForDownloadProperty:(id)property
{
  propertyCopy = property;
  _SSDownload = [(MPStoreDownload *)self _SSDownload];
  v6 = [_SSDownload valueForProperty:propertyCopy];

  if (!v6)
  {
    _SSPurchase = [(MPStoreDownload *)self _SSPurchase];
    v6 = [_SSPurchase valueForDownloadProperty:propertyCopy];
  }

  return v6;
}

- (id)_currentOverridePhaseIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__99;
  v10 = __Block_byref_object_dispose__100;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MPStoreDownload__currentOverridePhaseIdentifier__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__MPStoreDownload__currentOverridePhaseIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_removeOverridePhaseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MPStoreDownload__removeOverridePhaseIdentifier___block_invoke;
    v7[3] = &unk_1E76823C0;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_barrier_async(accessQueue, v7);
  }
}

void __50__MPStoreDownload__removeOverridePhaseIdentifier___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v2 = *(*(a1 + 32) + 32);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __50__MPStoreDownload__removeOverridePhaseIdentifier___block_invoke_2;
  v8 = &unk_1E767CC70;
  v9 = *(a1 + 40);
  v10 = &v11;
  [v2 enumerateObjectsWithOptions:2 usingBlock:&v5];
  if (v12[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 32) removeObjectAtIndex:{v5, v6, v7, v8}];
    if (![*(*(a1 + 32) + 32) count])
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 32);
      *(v3 + 32) = 0;
    }
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __50__MPStoreDownload__removeOverridePhaseIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)_addOverridePhaseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__MPStoreDownload__addOverridePhaseIdentifier___block_invoke;
    v7[3] = &unk_1E76823C0;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_barrier_async(accessQueue, v7);
  }
}

uint64_t __47__MPStoreDownload__addOverridePhaseIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (id)_SSPurchaseResponse
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__99;
  v10 = __Block_byref_object_dispose__100;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MPStoreDownload__SSPurchaseResponse__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_SSPurchase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__99;
  v10 = __Block_byref_object_dispose__100;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__MPStoreDownload__SSPurchase__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_SSDownload
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__99;
  v10 = __Block_byref_object_dispose__100;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__MPStoreDownload__SSDownload__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setSSPurchase:(id)purchase SSPurchaseResponse:(id)response
{
  purchaseCopy = purchase;
  responseCopy = response;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MPStoreDownload__setSSPurchase_SSPurchaseResponse___block_invoke;
  block[3] = &unk_1E76800A0;
  block[4] = self;
  v12 = purchaseCopy;
  v13 = responseCopy;
  v9 = responseCopy;
  v10 = purchaseCopy;
  dispatch_barrier_async(accessQueue, block);
}

void __53__MPStoreDownload__setSSPurchase_SSPurchaseResponse___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (*(v2 + 48) != v3)
  {
    objc_storeStrong((v2 + 48), v3);
    v2 = a1[4];
  }

  v5 = *(v2 + 56);
  v4 = (v2 + 56);
  v6 = a1[6];
  if (v5 != v6)
  {

    objc_storeStrong(v4, v6);
  }
}

- (void)_setSSDownload:(id)download
{
  downloadCopy = download;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__MPStoreDownload__setSSDownload___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = downloadCopy;
  v6 = downloadCopy;
  dispatch_barrier_async(accessQueue, v7);
}

void __34__MPStoreDownload__setSSDownload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 40);
  v4 = (v2 + 40);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

- (void)_setCanceled:(BOOL)canceled
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__MPStoreDownload__setCanceled___block_invoke;
  v4[3] = &unk_1E7682280;
  v4[4] = self;
  canceledCopy = canceled;
  dispatch_barrier_async(accessQueue, v4);
}

uint64_t __32__MPStoreDownload__setCanceled___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 24) != v2)
  {
    *(v1 + 24) = v2;
  }

  return result;
}

- (BOOL)_isCanceled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__MPStoreDownload__isCanceled__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)resetCachedRentalInformation
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = getSSDownloadExternalPropertyRentalInformation();
  _SSDownload = [(MPStoreDownload *)self _SSDownload];
  [_SSDownload resetCachedExternalProperties:v4 count:1];
}

- (id)assetsForType:(id)type
{
  typeCopy = type;
  _SSDownload = [(MPStoreDownload *)self _SSDownload];
  v6 = [_SSDownload assetsForType:typeCopy];

  return v6;
}

- (int64_t)storeItemIdentifier
{
  v3 = getSSDownloadPropertyStoreItemIdentifier();
  v4 = [(MPStoreDownload *)self _valueForDownloadProperty:v3];
  longLongValue = [v4 longLongValue];

  return longLongValue;
}

- (NSDictionary)rentalInformation
{
  _SSDownload = [(MPStoreDownload *)self _SSDownload];
  v3 = getSSDownloadExternalPropertyRentalInformation();
  v4 = [_SSDownload valueForExternalProperty:v3];

  return v4;
}

- (int64_t)reason
{
  v3 = getSSDownloadPropertyReason();
  v4 = [(MPStoreDownload *)self _valueForDownloadProperty:v3];
  integerValue = [v4 integerValue];

  if (integerValue == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (integerValue == 2);
  }
}

- (NSError)purchaseError
{
  if ([(MPStoreDownload *)self _isCanceled])
  {
    error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-999 userInfo:0];
  }

  else
  {
    _SSPurchaseResponse = [(MPStoreDownload *)self _SSPurchaseResponse];
    error = [_SSPurchaseResponse error];
  }

  return error;
}

- (NSString)phaseIdentifier
{
  _currentOverridePhaseIdentifier = [(MPStoreDownload *)self _currentOverridePhaseIdentifier];
  v4 = _currentOverridePhaseIdentifier;
  if (!_currentOverridePhaseIdentifier)
  {
    _SSPurchaseResponse = [(MPStoreDownload *)self _SSPurchaseResponse];
    _SSPurchase = [(MPStoreDownload *)self _SSPurchase];
    _SSDownload = [(MPStoreDownload *)self _SSDownload];
    v9 = _SSDownload;
    v5 = @"MPStoreDownloadPhaseWaiting";
    if (_SSPurchase | _SSPurchaseResponse && !_SSDownload)
    {
      goto LABEL_53;
    }

    if (!_SSDownload)
    {
      error = [_SSPurchaseResponse error];

      if (_SSPurchase)
      {
        v14 = _SSPurchaseResponse == 0;
      }

      else
      {
        v14 = 0;
      }

      v15 = @"MPStoreDownloadPhasePurchasing";
      if (!v14)
      {
        v15 = @"MPStoreDownloadPhaseFailed";
      }

      if (error)
      {
        v5 = @"MPStoreDownloadPhaseFailed";
      }

      else
      {
        v5 = v15;
      }

      goto LABEL_53;
    }

    downloadPhaseIdentifier = [_SSDownload downloadPhaseIdentifier];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v11 = getSSDownloadPhaseCanceledSymbolLoc_ptr;
    v44 = getSSDownloadPhaseCanceledSymbolLoc_ptr;
    if (!getSSDownloadPhaseCanceledSymbolLoc_ptr)
    {
      v37 = MEMORY[0x1E69E9820];
      v38 = 3221225472;
      v39 = __getSSDownloadPhaseCanceledSymbolLoc_block_invoke;
      v40 = &unk_1E7680410;
      v12 = StoreServicesLibrary();
      v42[3] = dlsym(v12, "SSDownloadPhaseCanceled");
      getSSDownloadPhaseCanceledSymbolLoc_ptr = v42[3];
      v11 = v42[3];
    }

    _Block_object_dispose(&v41, 8);
    if (v11)
    {
      if ([downloadPhaseIdentifier isEqualToString:*v11])
      {
        v5 = @"MPStoreDownloadPhaseCanceled";
LABEL_52:

        v5 = v5;
LABEL_53:

        goto LABEL_54;
      }

      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v16 = getSSDownloadPhaseDataRestoreSymbolLoc_ptr;
      v44 = getSSDownloadPhaseDataRestoreSymbolLoc_ptr;
      if (!getSSDownloadPhaseDataRestoreSymbolLoc_ptr)
      {
        v37 = MEMORY[0x1E69E9820];
        v38 = 3221225472;
        v39 = __getSSDownloadPhaseDataRestoreSymbolLoc_block_invoke;
        v40 = &unk_1E7680410;
        v17 = StoreServicesLibrary();
        v42[3] = dlsym(v17, "SSDownloadPhaseDataRestore");
        getSSDownloadPhaseDataRestoreSymbolLoc_ptr = v42[3];
        v16 = v42[3];
      }

      _Block_object_dispose(&v41, 8);
      if (v16)
      {
        if ([downloadPhaseIdentifier isEqualToString:*v16])
        {
          v5 = @"MPStoreDownloadPhaseDataRestore";
          goto LABEL_52;
        }

        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v18 = getSSDownloadPhaseDownloadingSymbolLoc_ptr;
        v44 = getSSDownloadPhaseDownloadingSymbolLoc_ptr;
        if (!getSSDownloadPhaseDownloadingSymbolLoc_ptr)
        {
          v37 = MEMORY[0x1E69E9820];
          v38 = 3221225472;
          v39 = __getSSDownloadPhaseDownloadingSymbolLoc_block_invoke;
          v40 = &unk_1E7680410;
          v19 = StoreServicesLibrary();
          v42[3] = dlsym(v19, "SSDownloadPhaseDownloading");
          getSSDownloadPhaseDownloadingSymbolLoc_ptr = v42[3];
          v18 = v42[3];
        }

        _Block_object_dispose(&v41, 8);
        if (v18)
        {
          if ([downloadPhaseIdentifier isEqualToString:*v18])
          {
            v5 = @"MPStoreDownloadPhaseDownloading";
            goto LABEL_52;
          }

          v41 = 0;
          v42 = &v41;
          v43 = 0x2020000000;
          v20 = getSSDownloadPhaseFailedSymbolLoc_ptr;
          v44 = getSSDownloadPhaseFailedSymbolLoc_ptr;
          if (!getSSDownloadPhaseFailedSymbolLoc_ptr)
          {
            v37 = MEMORY[0x1E69E9820];
            v38 = 3221225472;
            v39 = __getSSDownloadPhaseFailedSymbolLoc_block_invoke;
            v40 = &unk_1E7680410;
            v21 = StoreServicesLibrary();
            v42[3] = dlsym(v21, "SSDownloadPhaseFailed");
            getSSDownloadPhaseFailedSymbolLoc_ptr = v42[3];
            v20 = v42[3];
          }

          _Block_object_dispose(&v41, 8);
          if (v20)
          {
            if ([downloadPhaseIdentifier isEqualToString:*v20])
            {
              v5 = @"MPStoreDownloadPhaseFailed";
              goto LABEL_52;
            }

            v41 = 0;
            v42 = &v41;
            v43 = 0x2020000000;
            v22 = getSSDownloadPhaseFinishedSymbolLoc_ptr;
            v44 = getSSDownloadPhaseFinishedSymbolLoc_ptr;
            if (!getSSDownloadPhaseFinishedSymbolLoc_ptr)
            {
              v37 = MEMORY[0x1E69E9820];
              v38 = 3221225472;
              v39 = __getSSDownloadPhaseFinishedSymbolLoc_block_invoke;
              v40 = &unk_1E7680410;
              v23 = StoreServicesLibrary();
              v42[3] = dlsym(v23, "SSDownloadPhaseFinished");
              getSSDownloadPhaseFinishedSymbolLoc_ptr = v42[3];
              v22 = v42[3];
            }

            _Block_object_dispose(&v41, 8);
            if (v22)
            {
              if ([downloadPhaseIdentifier isEqualToString:*v22])
              {
                v5 = @"MPStoreDownloadPhaseFinished";
                goto LABEL_52;
              }

              v41 = 0;
              v42 = &v41;
              v43 = 0x2020000000;
              v24 = getSSDownloadPhaseInstallingSymbolLoc_ptr;
              v44 = getSSDownloadPhaseInstallingSymbolLoc_ptr;
              if (!getSSDownloadPhaseInstallingSymbolLoc_ptr)
              {
                v37 = MEMORY[0x1E69E9820];
                v38 = 3221225472;
                v39 = __getSSDownloadPhaseInstallingSymbolLoc_block_invoke;
                v40 = &unk_1E7680410;
                v25 = StoreServicesLibrary();
                v42[3] = dlsym(v25, "SSDownloadPhaseInstalling");
                getSSDownloadPhaseInstallingSymbolLoc_ptr = v42[3];
                v24 = v42[3];
              }

              _Block_object_dispose(&v41, 8);
              if (v24)
              {
                if ([downloadPhaseIdentifier isEqualToString:*v24])
                {
                  v5 = @"MPStoreDownloadPhaseInstalling";
                }

                else
                {
                  v26 = getSSDownloadPhasePaused();
                  v27 = [downloadPhaseIdentifier isEqualToString:v26];

                  if (v27)
                  {
                    v5 = @"MPStoreDownloadPhasePaused";
                  }

                  else
                  {
                    v28 = getSSDownloadPhasePreflight();
                    v29 = [downloadPhaseIdentifier isEqualToString:v28];

                    if (v29)
                    {
                      v5 = @"MPStoreDownloadPhasePreflight";
                    }

                    else
                    {
                      v30 = getSSDownloadPhaseProcessing();
                      v31 = [downloadPhaseIdentifier isEqualToString:v30];

                      if (v31)
                      {
                        v5 = @"MPStoreDownloadPhaseProcessing";
                      }

                      else
                      {
                        v32 = getSSDownloadPhaseWaiting();
                        v33 = [downloadPhaseIdentifier isEqualToString:v32];

                        if (!v33)
                        {
                          v5 = 0;
                        }
                      }
                    }
                  }
                }

                goto LABEL_52;
              }

              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseInstalling(void)"];
              [currentHandler handleFailureInFunction:v36 file:@"MPStoreDownload.m" lineNumber:37 description:{@"%s", dlerror(), v37, v38, v39, v40}];
            }

            else
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseFinished(void)"];
              [currentHandler handleFailureInFunction:v36 file:@"MPStoreDownload.m" lineNumber:36 description:{@"%s", dlerror(), v37, v38, v39, v40}];
            }
          }

          else
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseFailed(void)"];
            [currentHandler handleFailureInFunction:v36 file:@"MPStoreDownload.m" lineNumber:35 description:{@"%s", dlerror(), v37, v38, v39, v40}];
          }
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseDownloading(void)"];
          [currentHandler handleFailureInFunction:v36 file:@"MPStoreDownload.m" lineNumber:34 description:{@"%s", dlerror(), v37, v38, v39, v40}];
        }
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseDataRestore(void)"];
        [currentHandler handleFailureInFunction:v36 file:@"MPStoreDownload.m" lineNumber:33 description:{@"%s", dlerror(), v37, v38, v39, v40}];
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseCanceled(void)"];
      [currentHandler handleFailureInFunction:v36 file:@"MPStoreDownload.m" lineNumber:32 description:{@"%s", dlerror(), v37, v38, v39, v40}];
    }

    __break(1u);
    return result;
  }

  v5 = _currentOverridePhaseIdentifier;
LABEL_54:

  return v5;
}

- (double)percentComplete
{
  _SSDownload = [(MPStoreDownload *)self _SSDownload];
  [_SSDownload percentComplete];
  v4 = v3;

  return v4;
}

- (unint64_t)libraryItemIdentifier
{
  v3 = getSSDownloadPropertyLibraryItemIdentifier();
  v4 = [(MPStoreDownload *)self _valueForDownloadProperty:v3];
  longLongValue = [v4 longLongValue];

  return longLongValue;
}

- (BOOL)isPaused
{
  phaseIdentifier = [(MPStoreDownload *)self phaseIdentifier];
  v3 = [phaseIdentifier isEqualToString:@"MPStoreDownloadPhasePaused"];

  return v3;
}

- (BOOL)isRestore
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getSSDownloadPropertyIsRestoreSymbolLoc_ptr;
  v13 = getSSDownloadPropertyIsRestoreSymbolLoc_ptr;
  if (!getSSDownloadPropertyIsRestoreSymbolLoc_ptr)
  {
    v4 = StoreServicesLibrary();
    v11[3] = dlsym(v4, "SSDownloadPropertyIsRestore");
    getSSDownloadPropertyIsRestoreSymbolLoc_ptr = v11[3];
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v3)
  {
    v5 = [(MPStoreDownload *)self _valueForDownloadProperty:*v3];
    bOOLValue = [v5 BOOLValue];

    return bOOLValue;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyIsRestore(void)"];
    [currentHandler handleFailureInFunction:v9 file:@"MPStoreDownload.m" lineNumber:50 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)isPurchasing
{
  _SSPurchase = [(MPStoreDownload *)self _SSPurchase];
  v3 = _SSPurchase != 0;

  return v3;
}

- (BOOL)isFinished
{
  if ([(MPStoreDownload *)self _isCanceled])
  {
    return 1;
  }

  phaseIdentifier = [(MPStoreDownload *)self phaseIdentifier];
  if ([phaseIdentifier isEqualToString:@"MPStoreDownloadPhaseFinished"] & 1) != 0 || (objc_msgSend(phaseIdentifier, "isEqualToString:", @"MPStoreDownloadPhaseCanceled") & 1) != 0 || (objc_msgSend(phaseIdentifier, "isEqualToString:", @"MPStoreDownloadPhaseFailed"))
  {
    v3 = 1;
  }

  else
  {
    _SSPurchaseResponse = [(MPStoreDownload *)self _SSPurchaseResponse];
    error = [_SSPurchaseResponse error];

    v3 = error != 0;
  }

  return v3;
}

- (BOOL)isCanceled
{
  if ([(MPStoreDownload *)self _isCanceled])
  {
    return 1;
  }

  phaseIdentifier = [(MPStoreDownload *)self phaseIdentifier];
  v5 = [phaseIdentifier isEqualToString:@"MPStoreDownloadPhaseCanceled"];

  return v5;
}

- (NSError)failureError
{
  if ([(MPStoreDownload *)self _isCanceled])
  {
    goto LABEL_2;
  }

  _SSPurchaseResponse = [(MPStoreDownload *)self _SSPurchaseResponse];
  error = [_SSPurchaseResponse error];
  if (error)
  {
    failureError = error;
  }

  else
  {
    _SSDownload = [(MPStoreDownload *)self _SSDownload];
    failureError = [_SSDownload failureError];

    if (!failureError)
    {
      if ([(MPStoreDownload *)self isCanceled])
      {
LABEL_2:
        failureError = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-999 userInfo:0];
        goto LABEL_8;
      }

      failureError = 0;
    }
  }

LABEL_8:

  return failureError;
}

- (int64_t)downloadSizeLimit
{
  _SSDownload = [(MPStoreDownload *)self _SSDownload];
  downloadSizeLimit = [_SSDownload downloadSizeLimit];

  return downloadSizeLimit;
}

- (int64_t)downloadIdentifier
{
  _SSDownload = [(MPStoreDownload *)self _SSDownload];
  persistentIdentifier = [_SSDownload persistentIdentifier];
  if (!persistentIdentifier)
  {
    _SSPurchase = [(MPStoreDownload *)self _SSPurchase];
    persistentIdentifier = [_SSPurchase placeholderDownloadIdentifier];
  }

  return persistentIdentifier;
}

- (int64_t)bytesTotal
{
  _SSDownload = [(MPStoreDownload *)self _SSDownload];
  bytesTotal = [_SSDownload bytesTotal];

  return bytesTotal;
}

- (int64_t)bytesDownloaded
{
  _SSDownload = [(MPStoreDownload *)self _SSDownload];
  bytesDownloaded = [_SSDownload bytesDownloaded];

  return bytesDownloaded;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  phaseIdentifier = [(MPStoreDownload *)self phaseIdentifier];
  failureError = [(MPStoreDownload *)self failureError];
  isCanceled = [(MPStoreDownload *)self isCanceled];
  v9 = @"NO";
  if (isCanceled)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@ %p %@ error:%@ canceled:%@>", v5, self, phaseIdentifier, failureError, v9];

  return v10;
}

- (MPStoreDownload)initWithType:(int64_t)type attributes:(id)attributes
{
  attributesCopy = attributes;
  v14.receiver = self;
  v14.super_class = MPStoreDownload;
  v7 = [(MPStoreDownload *)&v14 init];
  if (v7)
  {
    v8 = dispatch_queue_create("com.apple.MediaPlayer.MPStoreDownload.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v8;

    v7->_type = type;
    v10 = [attributesCopy copy];
    attributes = v7->_attributes;
    v7->_attributes = v10;

    v12 = [objc_opt_class() _SSPurchaseForType:type attributes:attributesCopy];
    [(MPStoreDownload *)v7 _setSSPurchase:v12 SSPurchaseResponse:0];
  }

  return v7;
}

+ (id)_SSPurchaseForType:(int64_t)type attributes:(id)attributes
{
  v140[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v123 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeBuyParameters"];
  v116 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeOriginator"];
  if (v116)
  {
    v116 = [MEMORY[0x1E696AEC0] stringWithFormat:@"&reporting=%@", v116];
  }

  else
  {
    v116 = 0;
  }

  v113 = v116;
  if ([v116 length])
  {
    v6 = [v123 stringByAppendingString:v116];

    v123 = v6;
  }

  v134 = 0;
  v135 = &v134;
  v136 = 0x2050000000;
  v7 = getSSPurchaseClass_softClass;
  v137 = getSSPurchaseClass_softClass;
  if (!getSSPurchaseClass_softClass)
  {
    v129 = MEMORY[0x1E69E9820];
    v130 = 3221225472;
    v131 = __getSSPurchaseClass_block_invoke;
    v132 = &unk_1E7680410;
    v133 = &v134;
    __getSSPurchaseClass_block_invoke(&v129);
    v7 = v135[3];
  }

  v8 = v7;
  _Block_object_dispose(&v134, 8);
  v9 = objc_alloc_init(v7);
  [v9 setBuyParameters:v123];
  [v9 setIgnoresForcedPasswordRestriction:type == 1];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v122 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeTitle"];
  if (v122)
  {
    v134 = 0;
    v135 = &v134;
    v136 = 0x2020000000;
    v11 = getSSDownloadPropertyTitleSymbolLoc_ptr;
    v137 = getSSDownloadPropertyTitleSymbolLoc_ptr;
    if (!getSSDownloadPropertyTitleSymbolLoc_ptr)
    {
      v129 = MEMORY[0x1E69E9820];
      v130 = 3221225472;
      v131 = __getSSDownloadPropertyTitleSymbolLoc_block_invoke;
      v132 = &unk_1E7680410;
      v133 = &v134;
      v12 = StoreServicesLibrary();
      v13 = dlsym(v12, "SSDownloadPropertyTitle");
      *(v133[1] + 24) = v13;
      getSSDownloadPropertyTitleSymbolLoc_ptr = *(v133[1] + 24);
      v11 = v135[3];
    }

    _Block_object_dispose(&v134, 8);
    if (!v11)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyTitle(void)"];
      [currentHandler handleFailureInFunction:v91 file:@"MPStoreDownload.m" lineNumber:51 description:{@"%s", dlerror()}];

      goto LABEL_109;
    }

    v14 = *v11;
    [v10 setObject:v122 forKey:v14];
  }

  v124 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeKind"];
  if (v124)
  {
    v134 = 0;
    v135 = &v134;
    v136 = 0x2020000000;
    v15 = getSSDownloadPropertyKindSymbolLoc_ptr;
    v137 = getSSDownloadPropertyKindSymbolLoc_ptr;
    if (!getSSDownloadPropertyKindSymbolLoc_ptr)
    {
      v129 = MEMORY[0x1E69E9820];
      v130 = 3221225472;
      v131 = __getSSDownloadPropertyKindSymbolLoc_block_invoke;
      v132 = &unk_1E7680410;
      v133 = &v134;
      v16 = StoreServicesLibrary();
      v17 = dlsym(v16, "SSDownloadPropertyKind");
      *(v133[1] + 24) = v17;
      getSSDownloadPropertyKindSymbolLoc_ptr = *(v133[1] + 24);
      v15 = v135[3];
    }

    _Block_object_dispose(&v134, 8);
    if (!v15)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v93 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyKind(void)"];
      [currentHandler2 handleFailureInFunction:v93 file:@"MPStoreDownload.m" lineNumber:30 description:{@"%s", dlerror()}];

      goto LABEL_109;
    }

    v18 = *v15;
    [v10 setObject:v124 forKey:v18];
  }

  v121 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeDownloadHandlerIdentifier"];
  if (v121)
  {
    v134 = 0;
    v135 = &v134;
    v136 = 0x2020000000;
    v19 = getSSDownloadPropertyHandlerIDSymbolLoc_ptr;
    v137 = getSSDownloadPropertyHandlerIDSymbolLoc_ptr;
    if (!getSSDownloadPropertyHandlerIDSymbolLoc_ptr)
    {
      v129 = MEMORY[0x1E69E9820];
      v130 = 3221225472;
      v131 = __getSSDownloadPropertyHandlerIDSymbolLoc_block_invoke;
      v132 = &unk_1E7680410;
      v133 = &v134;
      v20 = StoreServicesLibrary();
      v21 = dlsym(v20, "SSDownloadPropertyHandlerID");
      *(v133[1] + 24) = v21;
      getSSDownloadPropertyHandlerIDSymbolLoc_ptr = *(v133[1] + 24);
      v19 = v135[3];
    }

    _Block_object_dispose(&v134, 8);
    if (!v19)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyHandlerID(void)"];
      [currentHandler3 handleFailureInFunction:v95 file:@"MPStoreDownload.m" lineNumber:52 description:{@"%s", dlerror()}];

      goto LABEL_109;
    }

    v22 = *v19;
    [v10 setObject:v121 forKey:v22];
  }

  v120 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeStoreItemIdentifier"];
  if (v120)
  {
    v23 = getSSDownloadPropertyStoreItemIdentifier();
    [v10 setObject:v120 forKey:v23];
  }

  v119 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeLibraryItemIdentifier"];
  if (v119)
  {
    v24 = getSSDownloadPropertyLibraryItemIdentifier();
    [v10 setObject:v119 forKey:v24];
  }

  v118 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeStoreSagaItemIdentifier"];
  if (v118)
  {
    v134 = 0;
    v135 = &v134;
    v136 = 0x2020000000;
    v25 = getSSDownloadPropertyStoreSagaIdentifierSymbolLoc_ptr;
    v137 = getSSDownloadPropertyStoreSagaIdentifierSymbolLoc_ptr;
    if (!getSSDownloadPropertyStoreSagaIdentifierSymbolLoc_ptr)
    {
      v129 = MEMORY[0x1E69E9820];
      v130 = 3221225472;
      v131 = __getSSDownloadPropertyStoreSagaIdentifierSymbolLoc_block_invoke;
      v132 = &unk_1E7680410;
      v133 = &v134;
      v26 = StoreServicesLibrary();
      v27 = dlsym(v26, "SSDownloadPropertyStoreSagaIdentifier");
      *(v133[1] + 24) = v27;
      getSSDownloadPropertyStoreSagaIdentifierSymbolLoc_ptr = *(v133[1] + 24);
      v25 = v135[3];
    }

    _Block_object_dispose(&v134, 8);
    if (!v25)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v97 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyStoreSagaIdentifier(void)"];
      [currentHandler4 handleFailureInFunction:v97 file:@"MPStoreDownload.m" lineNumber:42 description:{@"%s", dlerror()}];

      goto LABEL_109;
    }

    v28 = *v25;
    [v10 setObject:v118 forKey:v28];
  }

  v117 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeClientBundleIdentifier"];
  if (v117)
  {
    v134 = 0;
    v135 = &v134;
    v136 = 0x2020000000;
    v29 = getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr;
    v137 = getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr;
    if (!getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr)
    {
      v129 = MEMORY[0x1E69E9820];
      v130 = 3221225472;
      v131 = __getSSDownloadPropertyClientBundleIdentifierSymbolLoc_block_invoke;
      v132 = &unk_1E7680410;
      v133 = &v134;
      v30 = StoreServicesLibrary();
      v31 = dlsym(v30, "SSDownloadPropertyClientBundleIdentifier");
      *(v133[1] + 24) = v31;
      getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr = *(v133[1] + 24);
      v29 = v135[3];
    }

    _Block_object_dispose(&v134, 8);
    if (!v29)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyClientBundleIdentifier(void)"];
      [currentHandler5 handleFailureInFunction:v99 file:@"MPStoreDownload.m" lineNumber:44 description:{@"%s", dlerror()}];

      goto LABEL_109;
    }

    v32 = *v29;
    [v10 setObject:v117 forKey:v32];
  }

  if (v124)
  {
    v115 = v124;
  }

  else
  {
    v134 = 0;
    v135 = &v134;
    v136 = 0x2020000000;
    v33 = getSSDownloadKindMusicSymbolLoc_ptr;
    v137 = getSSDownloadKindMusicSymbolLoc_ptr;
    if (!getSSDownloadKindMusicSymbolLoc_ptr)
    {
      v129 = MEMORY[0x1E69E9820];
      v130 = 3221225472;
      v131 = __getSSDownloadKindMusicSymbolLoc_block_invoke;
      v132 = &unk_1E7680410;
      v133 = &v134;
      v34 = StoreServicesLibrary();
      v35 = dlsym(v34, "SSDownloadKindMusic");
      *(v133[1] + 24) = v35;
      getSSDownloadKindMusicSymbolLoc_ptr = *(v133[1] + 24);
      v33 = v135[3];
    }

    _Block_object_dispose(&v134, 8);
    if (!v33)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadKindMusic(void)"];
      [currentHandler6 handleFailureInFunction:v105 file:@"MPStoreDownload.m" lineNumber:43 description:{@"%s", dlerror()}];

      goto LABEL_109;
    }

    v115 = *v33;
  }

  v36 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeShouldDisableCellularRestrictionEnforcement"];
  bOOLValue = [v36 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_68;
  }

  v112 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeShouldRespectStoreCellularDataRestriction"];
  if (!v112 || [v112 BOOLValue])
  {
    downloadPolicy = [v9 downloadPolicy];
    if (!downloadPolicy)
    {
      downloadPolicy = [objc_alloc(getSSDownloadPolicyClass()) initWithDownloadKind:v115 URLBagType:0];
    }

    v39 = objc_alloc_init(getSSDownloadPolicyRuleClass());
    [v39 setCellularDataStates:2];
    policyRules = [downloadPolicy policyRules];
    v41 = [policyRules mutableCopy];

    if (v41)
    {
      v42 = [v41 arrayByAddingObject:v39];
    }

    else
    {
      v140[0] = v39;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:1];
    }

    [downloadPolicy setPolicyRules:v42];
    [v9 setDownloadPolicy:downloadPolicy];
  }

  v43 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeShouldRespectMusicCellularDataRestriction"];
  bOOLValue2 = [v43 BOOLValue];

  if (bOOLValue2)
  {
    downloadPolicy2 = [v9 downloadPolicy];
    if (!downloadPolicy2)
    {
      downloadPolicy2 = [objc_alloc(getSSDownloadPolicyClass()) initWithDownloadKind:v115 URLBagType:0];
    }

    v110 = objc_alloc_init(getSSDownloadPolicyRuleClass());
    v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v45 addObject:&unk_1F1509550];
    [v45 addObject:&unk_1F1509568];
    [v45 addObject:&unk_1F1509580];
    [v45 addObject:&unk_1F1509598];
    [v45 addObject:&unk_1F15095B0];
    [v45 addObject:&unk_1F15095C8];
    [v45 addObject:&unk_1F15095E0];
    [v45 addObject:&unk_1F15095F8];
    [v110 setNetworkTypes:v45];
    v134 = 0;
    v135 = &v134;
    v136 = 0x2020000000;
    v46 = getSSDownloadSizeLimitNoLimitSymbolLoc_ptr;
    v137 = getSSDownloadSizeLimitNoLimitSymbolLoc_ptr;
    if (!getSSDownloadSizeLimitNoLimitSymbolLoc_ptr)
    {
      v129 = MEMORY[0x1E69E9820];
      v130 = 3221225472;
      v131 = __getSSDownloadSizeLimitNoLimitSymbolLoc_block_invoke;
      v132 = &unk_1E7680410;
      v133 = &v134;
      v47 = StoreServicesLibrary();
      v48 = dlsym(v47, "SSDownloadSizeLimitNoLimit");
      *(v133[1] + 24) = v48;
      getSSDownloadSizeLimitNoLimitSymbolLoc_ptr = *(v133[1] + 24);
      v46 = v135[3];
    }

    _Block_object_dispose(&v134, 8);
    if (v46)
    {
      [v110 setDownloadSizeLimit:*v46];
      v134 = 0;
      v135 = &v134;
      v136 = 0x2050000000;
      v49 = getSSDownloadPolicyUserDefaultStateClass_softClass;
      v137 = getSSDownloadPolicyUserDefaultStateClass_softClass;
      if (!getSSDownloadPolicyUserDefaultStateClass_softClass)
      {
        v129 = MEMORY[0x1E69E9820];
        v130 = 3221225472;
        v131 = __getSSDownloadPolicyUserDefaultStateClass_block_invoke;
        v132 = &unk_1E7680410;
        v133 = &v134;
        __getSSDownloadPolicyUserDefaultStateClass_block_invoke(&v129);
        v49 = v135[3];
      }

      v50 = v49;
      _Block_object_dispose(&v134, 8);
      v51 = objc_alloc_init(v49);
      [v51 setDomain:@"com.apple.Music"];
      [v51 setKey:@"AllowsCellularDataDownloads"];
      [v51 setFallbackNumberValue:MEMORY[0x1E695E110]];
      [v110 addUserDefaultState:v51];
      v52 = objc_alloc_init(getSSDownloadPolicyRuleClass());
      [v52 setNetworkTypes:v45];
      v134 = 0;
      v135 = &v134;
      v136 = 0x2020000000;
      v53 = getSSDownloadSizeLimitDisabledSymbolLoc_ptr;
      v137 = getSSDownloadSizeLimitDisabledSymbolLoc_ptr;
      if (!getSSDownloadSizeLimitDisabledSymbolLoc_ptr)
      {
        v129 = MEMORY[0x1E69E9820];
        v130 = 3221225472;
        v131 = __getSSDownloadSizeLimitDisabledSymbolLoc_block_invoke;
        v132 = &unk_1E7680410;
        v133 = &v134;
        v54 = StoreServicesLibrary();
        v55 = dlsym(v54, "SSDownloadSizeLimitDisabled");
        *(v133[1] + 24) = v55;
        getSSDownloadSizeLimitDisabledSymbolLoc_ptr = *(v133[1] + 24);
        v53 = v135[3];
      }

      _Block_object_dispose(&v134, 8);
      if (v53)
      {
        [v52 setDownloadSizeLimit:*v53];
        v56 = [v51 copy];
        [v56 setShouldInvertBoolValue:1];
        [v52 addUserDefaultState:v56];
        v139[0] = v110;
        v139[1] = v52;
        v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:2];
        policyRules2 = [downloadPolicy2 policyRules];
        v59 = policyRules2;
        if (policyRules2)
        {
          v60 = [policyRules2 arrayByAddingObjectsFromArray:v57];
        }

        else
        {
          v60 = v57;
        }

        [downloadPolicy2 setPolicyRules:v60];
        [v9 setDownloadPolicy:downloadPolicy2];

        goto LABEL_67;
      }

      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v109 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"off_t getSSDownloadSizeLimitDisabled(void)"];
      [currentHandler7 handleFailureInFunction:v109 file:@"MPStoreDownload.m" lineNumber:54 description:{@"%s", dlerror()}];
    }

    else
    {
      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"off_t getSSDownloadSizeLimitNoLimit(void)"];
      [currentHandler8 handleFailureInFunction:v107 file:@"MPStoreDownload.m" lineNumber:53 description:{@"%s", dlerror()}];
    }

LABEL_109:
    __break(1u);
  }

LABEL_67:

LABEL_68:
  v61 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeBackgroundRequest"];
  bOOLValue3 = [v61 BOOLValue];

  if (!bOOLValue3)
  {
    goto LABEL_76;
  }

  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v63 = getSSDownloadPropertyShouldCancelOnFailureSymbolLoc_ptr;
  v137 = getSSDownloadPropertyShouldCancelOnFailureSymbolLoc_ptr;
  if (!getSSDownloadPropertyShouldCancelOnFailureSymbolLoc_ptr)
  {
    v129 = MEMORY[0x1E69E9820];
    v130 = 3221225472;
    v131 = __getSSDownloadPropertyShouldCancelOnFailureSymbolLoc_block_invoke;
    v132 = &unk_1E7680410;
    v133 = &v134;
    v64 = StoreServicesLibrary();
    v65 = dlsym(v64, "SSDownloadPropertyShouldCancelOnFailure");
    *(v133[1] + 24) = v65;
    getSSDownloadPropertyShouldCancelOnFailureSymbolLoc_ptr = *(v133[1] + 24);
    v63 = v135[3];
  }

  _Block_object_dispose(&v134, 8);
  if (!v63)
  {
    currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
    v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyShouldCancelOnFailure(void)"];
    [currentHandler9 handleFailureInFunction:v101 file:@"MPStoreDownload.m" lineNumber:45 description:{@"%s", dlerror()}];

    goto LABEL_109;
  }

  v66 = *v63;
  [v10 setObject:MEMORY[0x1E695E118] forKey:v66];

  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v67 = getSSDownloadPropertyShouldSuppressErrorDialogsSymbolLoc_ptr;
  v137 = getSSDownloadPropertyShouldSuppressErrorDialogsSymbolLoc_ptr;
  if (!getSSDownloadPropertyShouldSuppressErrorDialogsSymbolLoc_ptr)
  {
    v129 = MEMORY[0x1E69E9820];
    v130 = 3221225472;
    v131 = __getSSDownloadPropertyShouldSuppressErrorDialogsSymbolLoc_block_invoke;
    v132 = &unk_1E7680410;
    v133 = &v134;
    v68 = StoreServicesLibrary();
    v69 = dlsym(v68, "SSDownloadPropertyShouldSuppressErrorDialogs");
    *(v133[1] + 24) = v69;
    getSSDownloadPropertyShouldSuppressErrorDialogsSymbolLoc_ptr = *(v133[1] + 24);
    v67 = v135[3];
  }

  _Block_object_dispose(&v134, 8);
  if (!v67)
  {
    currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
    v103 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyShouldSuppressErrorDialogs(void)"];
    [currentHandler10 handleFailureInFunction:v103 file:@"MPStoreDownload.m" lineNumber:46 description:{@"%s", dlerror()}];

    goto LABEL_109;
  }

  v70 = *v67;
  [v10 setObject:MEMORY[0x1E695E118] forKey:v70];

  [v9 setBackgroundPurchase:1];
LABEL_76:
  v71 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeDisplaysOnLockscreen"];
  bOOLValue4 = [v71 BOOLValue];

  if (bOOLValue4)
  {
    [v9 setDisplaysOnLockScreen:1];
  }

  v73 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeReason"];
  if (v73)
  {
    v74 = getSSDownloadPropertyReason();
    [v10 setObject:v73 forKey:v74];
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v75 = v10;
  v76 = [v75 countByEnumeratingWithState:&v125 objects:v138 count:16];
  if (v76)
  {
    v77 = *v126;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v126 != v77)
        {
          objc_enumerationMutation(v75);
        }

        v79 = *(*(&v125 + 1) + 8 * i);
        v80 = [v75 objectForKey:v79];
        [v9 setValue:v80 forDownloadProperty:v79];
      }

      v76 = [v75 countByEnumeratingWithState:&v125 objects:v138 count:16];
    }

    while (v76);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (!v124 || ([MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"MPStoreDownloadURLBagKeyOverride", v124], v82 = objc_claimAutoreleasedReturnValue(), objc_msgSend(standardUserDefaults, "objectForKey:", v82), v83 = objc_claimAutoreleasedReturnValue(), v82, !v83))
  {
    v83 = [standardUserDefaults objectForKey:@"MPStoreDownloadURLBagKeyOverride"];
    if (!v83)
    {
      v83 = [attributesCopy objectForKey:@"MPStoreDownloadAttributeURLBagKey"];
      if (!v83)
      {
        v84 = @"buyProduct";
        if (type != 2)
        {
          v84 = 0;
        }

        if (type == 1)
        {
          v83 = @"redownloadProduct";
        }

        else
        {
          v83 = v84;
        }
      }
    }
  }

  v134 = 0;
  v135 = &v134;
  v136 = 0x2050000000;
  v85 = getSSMutableURLRequestPropertiesClass_softClass;
  v137 = getSSMutableURLRequestPropertiesClass_softClass;
  if (!getSSMutableURLRequestPropertiesClass_softClass)
  {
    v129 = MEMORY[0x1E69E9820];
    v130 = 3221225472;
    v131 = __getSSMutableURLRequestPropertiesClass_block_invoke;
    v132 = &unk_1E7680410;
    v133 = &v134;
    __getSSMutableURLRequestPropertiesClass_block_invoke(&v129);
    v85 = v135[3];
  }

  v86 = v85;
  _Block_object_dispose(&v134, 8);
  v87 = [[v85 alloc] initWithURLRequest:0];
  [v87 setURLBagKey:v83];
  [v9 setRequestProperties:v87];
  v88 = v9;

  return v9;
}

+ (id)storeDownloadWithDownloadIdentifier:(int64_t)identifier
{
  v4 = [objc_alloc(objc_opt_class()) initWithType:0 attributes:0];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getSSDownloadClass_softClass;
  v13 = getSSDownloadClass_softClass;
  if (!getSSDownloadClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getSSDownloadClass_block_invoke;
    v9[3] = &unk_1E7680410;
    v9[4] = &v10;
    __getSSDownloadClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [[v5 alloc] initWithPersistentIdentifier:identifier];
  [v4 _setSSDownload:v7];

  return v4;
}

+ (id)storeDownloadForMediaItem:(id)item type:(int64_t)type attributes:(id)attributes
{
  v47[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (item)
  {
    typeCopy = type;
    v8 = MEMORY[0x1E695DF90];
    itemCopy = item;
    v10 = [[v8 alloc] initWithCapacity:{objc_msgSend(attributesCopy, "count")}];
    if (storeDownloadForMediaItem_type_attributes__sOnceToken != -1)
    {
      dispatch_once(&storeDownloadForMediaItem_type_attributes__sOnceToken, &__block_literal_global_112);
    }

    v11 = [itemCopy valuesForProperties:storeDownloadForMediaItem_type_attributes__sPropertiesToFetch];

    v12 = [v11 objectForKey:@"storeSagaID"];
    unsignedLongLongValue = [v12 unsignedLongLongValue];

    v14 = [v11 objectForKey:@"storeItemAdamID"];
    longLongValue = [v14 longLongValue];

    v16 = [v11 objectForKey:@"subscriptionStoreItemAdamID"];
    longLongValue2 = [v16 longLongValue];

    v17 = [v11 objectForKey:@"storePlaybackEndpointType"];
    integerValue = [v17 integerValue];

    v19 = 1;
    if (unsignedLongLongValue)
    {
      v19 = 2;
    }

    if (integerValue)
    {
      v19 = integerValue;
    }

    if (v19 == 3)
    {
      v21 = @"redownloadProduct";
      v20 = 1;
    }

    else
    {
      v20 = 0;
      if (v19 == 2)
      {
        v21 = @"paidRedownloadProduct";
      }

      else
      {
        v21 = @"redownloadProduct";
      }
    }

    v22 = [v11 objectForKey:@"persistentID"];
    longLongValue3 = [v22 longLongValue];

    if (longLongValue3)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", longLongValue3];
      [v10 setObject:v24 forKey:@"MPStoreDownloadAttributeLibraryItemIdentifier"];
    }

    v25 = [v11 objectForKey:@"title"];
    if (v25)
    {
      [v10 setObject:v25 forKey:@"MPStoreDownloadAttributeTitle"];
    }

    v26 = [v11 objectForKey:@"mediaType"];
    unsignedIntegerValue = [v26 unsignedIntegerValue];

    v28 = MPStoreDownloadSSDownloadKindFromMPMediaType(unsignedIntegerValue);
    [v10 setObject:v28 forKey:@"MPStoreDownloadAttributeKind"];
    if (v20)
    {
      if (!longLongValue)
      {
        longLongValue = longLongValue2;
      }

      if (longLongValue)
      {
        v44 = v28;
        v29 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
        [v10 setObject:v29 forKey:@"MPStoreDownloadAttributeStoreItemIdentifier"];

        v30 = objc_alloc_init(MEMORY[0x1E696AF20]);
        v31 = MEMORY[0x1E696AF60];
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", longLongValue];
        v33 = [v31 queryItemWithName:@"salableAdamId" value:v32];
        v47[0] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
        [v30 setQueryItems:v34];

        query = [v30 query];
        if (query)
        {
          [v10 setObject:query forKey:@"MPStoreDownloadAttributeBuyParameters"];
        }

        v36 = 1;
        v21 = @"subDownload";
        v28 = v44;
      }

      else
      {
        v36 = 0;
        v21 = @"subDownload";
      }
    }

    else
    {
      v45 = attributesCopy;
      v37 = [v11 objectForKey:@"storeRedownloadParameters"];
      v36 = v37 != 0;
      if (v37)
      {
        [v10 setObject:v37 forKey:@"MPStoreDownloadAttributeBuyParameters"];
      }

      if (unsignedLongLongValue)
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
        v39 = v38 = v28;
        [v10 setObject:v39 forKey:@"MPStoreDownloadAttributeStoreSagaItemIdentifier"];

        v28 = v38;
      }

      if (longLongValue)
      {
        [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
        v41 = v40 = v28;
        [v10 setObject:v41 forKey:@"MPStoreDownloadAttributeStoreItemIdentifier"];

        v28 = v40;
      }

      attributesCopy = v45;
    }

    [v10 setObject:v21 forKey:@"MPStoreDownloadAttributeURLBagKey"];
    if ([attributesCopy count])
    {
      [v10 addEntriesFromDictionary:attributesCopy];
    }

    if (v36)
    {
      item = [objc_alloc(objc_opt_class()) initWithType:typeCopy attributes:v10];
    }

    else
    {
      item = 0;
    }
  }

  return item;
}

void __61__MPStoreDownload_storeDownloadForMediaItem_type_attributes___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"storeRedownloadParameters", @"persistentID", @"storeSagaID", @"title", @"storeItemAdamID", @"subscriptionStoreItemAdamID", @"mediaType", @"storePlaybackEndpointType", 0}];
  v1 = storeDownloadForMediaItem_type_attributes__sPropertiesToFetch;
  storeDownloadForMediaItem_type_attributes__sPropertiesToFetch = v0;
}

@end