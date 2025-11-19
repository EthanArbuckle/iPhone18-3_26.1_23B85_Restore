@interface MPStoreItemMetadataRequestController
+ (MPStoreItemMetadataRequestController)sharedStoreItemMetadataRequestController;
- (MPStoreItemMetadataRequestController)init;
- (id)getStoreItemMetadataForRequest:(id)a3 includeBatchResponseError:(BOOL)a4 responseHandler:(id)a5;
- (void)_removeExpiredItemsPeriodically;
- (void)addStoreItemMetadata:(id)a3 forUserIdentity:(id)a4;
- (void)beginTransaction;
- (void)endTransaction;
- (void)requestStoreItemMetadataForReason:(unint64_t)a3 withItemIdentifiers:(id)a4 responseHandler:(id)a5;
- (void)setCacheSize:(int64_t)a3;
@end

@implementation MPStoreItemMetadataRequestController

- (void)_removeExpiredItemsPeriodically
{
  os_unfair_lock_lock(&self->_transactionLock);
  transactionCount = self->_transactionCount;
  os_unfair_lock_unlock(&self->_transactionLock);
  if (transactionCount <= 0)
  {
    info = 0;
    mach_timebase_info(&info);
    if (info.denom)
    {
      v4 = mach_absolute_time();
      if ((v4 - self->_lastExpiredMetadataPurgeMachTime) * (info.numer / info.denom) >= 0x6FC23AC00)
      {
        v5 = v4;
        [(NSMutableDictionary *)self->_itemCaches enumerateKeysAndObjectsUsingBlock:&__block_literal_global_31_41652];
        self->_lastExpiredMetadataPurgeMachTime = v5;
      }
    }
  }
}

- (id)getStoreItemMetadataForRequest:(id)a3 includeBatchResponseError:(BOOL)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v11 = [v8 itemIdentifiers];
  if ([v11 count])
  {
    [v10 setCancellable:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke;
    v14[3] = &unk_1E767D728;
    v14[4] = v11;
    v14[5] = self;
    v15 = v8;
    v17 = v9;
    v16 = v10;
    v18 = a4;
    [MPStoreItemMetadataCacheKey getCacheKeyWithRequest:v15 completionHandler:v14];
  }

  else
  {
    [v10 setCompletedUnitCount:1];
    if (v9)
    {
      v12 = objc_alloc_init(MPStoreItemMetadataResponse);
      [(MPStoreItemMetadataResponse *)v12 setFinalResponse:1];
      (*(v9 + 2))(v9, v12, 0);
    }
  }

  return v10;
}

void __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MPAsyncBlockOperation alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_2;
  v7[3] = &unk_1E767D700;
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = *(a1 + 48);
  v12 = *(a1 + 64);
  v11 = *(a1 + 56);
  v13 = *(a1 + 72);
  v5 = v3;
  v6 = [(MPAsyncBlockOperation *)v4 initWithStartHandler:v7];
  [*(*(a1 + 40) + 16) addOperation:v6];
}

void __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v5 = objc_alloc_init(MPStoreItemMetadataResponse);
  [(MPStoreItemMetadataResponse *)v5 setRequestItemIdentifiers:*(a1 + 32)];
  v6 = [*(*(a1 + 40) + 32) objectForKey:*(a1 + 48)];
  v7 = [*(a1 + 56) reason];
  v33 = v6;
  if (v6 && (v8 = v7, ![*(a1 + 56) shouldIgnoreCache]))
  {
    v31 = v3;
    v32 = v5;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = a1;
    v11 = *(a1 + 32);
    v12 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        v15 = 0;
        do
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v44 + 1) + 8 * v15);
          v17 = [v33 metadataForItemIdentifier:v16 ignoreExpiration:{objc_msgSend(*(v10 + 56), "shouldIgnoreExpiration")}];
          if (v17)
          {
            [(MPStoreItemMetadataResponse *)v32 setStoreItemMetadata:v17 forItemIdentifier:v16];
          }

          if ([v17 hasMetadataForRequestReason:v8])
          {
            v18 = v9;
          }

          else
          {
            v18 = v4;
          }

          [v18 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v13);
    }

    v5 = v32;
    [(MPStoreItemMetadataResponse *)v32 setLastBatchItemIdentifiers:v9];

    v3 = v31;
    a1 = v10;
  }

  else
  {
    [v4 addObjectsFromArray:*(a1 + 32)];
  }

  if ([v4 count] && !objc_msgSend(*(a1 + 56), "shouldRequireCachedResults"))
  {
    v20 = [(MPStoreItemMetadataResponse *)v5 lastBatchItemIdentifiers];
    v21 = [v20 count];

    if (v21)
    {
      v22 = *(a1 + 72);
      if (v22)
      {
        v23 = [(MPStoreItemMetadataResponse *)v5 copy];
        (*(v22 + 16))(v22, v23, 0);
      }
    }

    v24 = [*(a1 + 56) storePlatformRequest];
    v25 = [v4 array];
    [v24 setItemIdentifiers:v25];

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("com.apple.MediaPlayer.MPStoreItemMetadataRequestController", v26);

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_3;
    v37[3] = &unk_1E767D6B0;
    v28 = *(a1 + 56);
    v29 = *(a1 + 40);
    v38 = v28;
    v39 = v29;
    v40 = v27;
    v41 = v5;
    v42 = *(a1 + 72);
    v43 = *(a1 + 80);
    [v24 setBatchResultsHandler:v37];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_8;
    v34[3] = &unk_1E767D6D8;
    v36 = *(a1 + 72);
    v34[4] = v27;
    v34[5] = v5;
    v35 = v3;
    v30 = [v24 performWithResponseHandler:v34];
    [*(a1 + 64) addChild:v30 withPendingUnitCount:1];
  }

  else
  {
    if ([v4 count])
    {
      v19 = [v4 array];
      [(MPStoreItemMetadataResponse *)v5 setCacheMissItemIdentifiers:v19];
    }

    if (*(a1 + 72))
    {
      [*(a1 + 64) setCompletedUnitCount:1];
      [(MPStoreItemMetadataResponse *)v5 setFinalResponse:1];
      (*(*(a1 + 72) + 16))();
    }

    [v3 finishWithError:0];
  }
}

void __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (v8)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_4;
    v30[3] = &unk_1E767D638;
    v30[4] = v10;
    [v8 enumerateItemsUsingBlock:v30];
    if ((MSVDeviceIsAudioAccessory() & 1) == 0)
    {
      v12 = [[MPStoreItemMetadataCacheKey alloc] initWithRequest:*(a1 + 32) response:v8];
      v13 = [*(*(a1 + 40) + 32) objectForKey:v12];
      if (!v13)
      {
        v13 = [[MPStoreItemMetadataCache alloc] initWithCacheSize:*(*(a1 + 40) + 64)];
        [*(*(a1 + 40) + 32) setObject:v13 forKey:v12];
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_5;
      v28[3] = &unk_1E767D660;
      v29 = v13;
      v14 = v13;
      [v11 enumerateKeysAndObjectsUsingBlock:v28];
    }

    [*(a1 + 40) _removeExpiredItemsPeriodically];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_6;
  block[3] = &unk_1E767D688;
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *(a1 + 64);
  block[4] = v11;
  block[5] = v15;
  v23 = v7;
  v24 = v8;
  v18 = v17;
  v27 = *(a1 + 72);
  v25 = v9;
  v26 = v18;
  v19 = v9;
  v20 = v8;
  v21 = v7;
  dispatch_async(v16, block);
}

void __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 56);
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_9;
    block[3] = &unk_1E7681568;
    v6 = *(a1 + 32);
    block[4] = *(a1 + 40);
    v9 = v5;
    v8 = v4;
    dispatch_async(v6, block);
  }

  [*(a1 + 48) finishWithError:0];
}

void __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  [v2 setLastBatchItemIdentifiers:0];
  [v2 setFinalResponse:1];
  (*(*(a1 + 48) + 16))();
}

void __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MPStoreItemMetadata alloc];
  v5 = [v3 metadataDictionary];
  v6 = [v3 expirationDate];

  v8 = [(MPStoreItemMetadata *)v4 initWithStorePlatformDictionary:v5 expirationDate:v6];
  v7 = [(MPStoreItemMetadata *)v8 cacheableItemIdentifier];
  if (v8 && [v7 length])
  {
    [*(a1 + 32) setObject:v8 forKey:v7];
  }
}

void __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __113__MPStoreItemMetadataRequestController_getStoreItemMetadataForRequest_includeBatchResponseError_responseHandler___block_invoke_7;
  v8[3] = &unk_1E767D660;
  v8[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v8];
  [*(a1 + 40) setLastBatchItemIdentifiers:*(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 56) performanceMetrics];
  [v3 setPerformanceMetrics:v4];

  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = [*(a1 + 40) copy];
    if (*(a1 + 80) == 1)
    {
      v7 = *(a1 + 64);
    }

    else
    {
      v7 = 0;
    }

    (*(v5 + 16))(v5, v6, v7);
  }
}

- (void)requestStoreItemMetadataForReason:(unint64_t)a3 withItemIdentifiers:(id)a4 responseHandler:(id)a5
{
  v11 = a5;
  v8 = a4;
  v9 = objc_alloc_init(MPStoreItemMetadataRequest);
  [(MPStoreItemMetadataRequest *)v9 setItemIdentifiers:v8];

  [(MPStoreItemMetadataRequest *)v9 setReason:a3];
  v10 = [(MPStoreItemMetadataRequestController *)self getStoreItemMetadataForRequest:v9 responseHandler:v11];
}

- (void)addStoreItemMetadata:(id)a3 forUserIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((MSVDeviceIsAudioAccessory() & 1) == 0)
  {
    v8 = [v6 cacheableItemIdentifier];
    if ([v8 length])
    {
      v9 = [MPAsyncBlockOperation alloc];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __77__MPStoreItemMetadataRequestController_addStoreItemMetadata_forUserIdentity___block_invoke;
      v13[3] = &unk_1E767D610;
      v13[4] = v8;
      v13[5] = self;
      v14 = v6;
      v10 = [(MPAsyncBlockOperation *)v9 initWithStartHandler:v13];
      [(NSOperationQueue *)self->_operationQueue addOperation:v10];
    }
  }

  importWindow = self->_importWindow;
  v12 = [v6 importableStorePlatformDictionary];
  [(MPStoreItemMetadataImportWindow *)importWindow addPayload:v12 userIdentity:v7];
}

void __77__MPStoreItemMetadataRequestController_addStoreItemMetadata_forUserIdentity___block_invoke(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MPStoreItemMetadataRequest);
  v14[0] = a1[4];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(MPStoreItemMetadataRequest *)v4 setItemIdentifiers:v5];

  [(MPStoreItemMetadataRequest *)v4 setPersonalizationStyle:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__MPStoreItemMetadataRequestController_addStoreItemMetadata_forUserIdentity___block_invoke_2;
  v10[3] = &unk_1E767D5E8;
  v6 = a1[6];
  v10[4] = a1[5];
  v7 = v6;
  v8 = a1[4];
  v11 = v7;
  v12 = v8;
  v13 = v3;
  v9 = v3;
  [MPStoreItemMetadataCacheKey getCacheKeyWithRequest:v4 completionHandler:v10];
}

void __77__MPStoreItemMetadataRequestController_addStoreItemMetadata_forUserIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 32) objectForKey:?];
  if (!v3)
  {
    v3 = [[MPStoreItemMetadataCache alloc] initWithCacheSize:*(*(a1 + 32) + 64)];
    [*(*(a1 + 32) + 32) setObject:v3 forKey:v5];
  }

  v4 = [(MPStoreItemMetadataCache *)v3 addMetadata:*(a1 + 40) forItemIdentifier:*(a1 + 48)];
  [*(a1 + 32) _removeExpiredItemsPeriodically];
  [*(a1 + 56) finishWithError:0];
}

- (void)setCacheSize:(int64_t)a3
{
  v5 = [MPAsyncBlockOperation alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MPStoreItemMetadataRequestController_setCacheSize___block_invoke;
  v7[3] = &unk_1E767D5C0;
  v7[4] = self;
  v7[5] = a3;
  v6 = [(MPAsyncBlockOperation *)v5 initWithStartHandler:v7];
  [(NSOperationQueue *)self->_operationQueue addOperation:v6];
}

void __53__MPStoreItemMetadataRequestController_setCacheSize___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 != *(v4 + 64))
  {
    [*(v4 + 32) removeAllObjects];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
  }

  *(v4 + 64) = v3;
  [v5 finishWithError:0];
}

- (void)endTransaction
{
  os_unfair_lock_lock(&self->_transactionLock);
  transactionCount = self->_transactionCount;
  v5 = transactionCount < 1;
  v6 = transactionCount - 1;
  if (v5)
  {
    os_unfair_lock_unlock(&self->_transactionLock);
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MPStoreItemMetadataRequestController.m" lineNumber:91 description:@"Attempting to end a transaction that never began"];
  }

  else
  {
    self->_transactionCount = v6;

    os_unfair_lock_unlock(&self->_transactionLock);
  }
}

- (void)beginTransaction
{
  os_unfair_lock_lock(&self->_transactionLock);
  ++self->_transactionCount;

  os_unfair_lock_unlock(&self->_transactionLock);
}

- (MPStoreItemMetadataRequestController)init
{
  v10.receiver = self;
  v10.super_class = MPStoreItemMetadataRequestController;
  v2 = [(MPStoreItemMetadataRequestController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    itemCaches = v2->_itemCaches;
    v2->_itemCaches = v3;

    v2->_lastExpiredMetadataPurgeMachTime = mach_absolute_time();
    v2->_cacheSize = 250;
    v5 = dispatch_queue_create("com.apple.MediaPlayer/MPStoreItemMetadata.callout", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v7;

    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.MediaPlayer.MPStoreItemMetadataRequestController.operationQueue"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v2->_transactionLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (MPStoreItemMetadataRequestController)sharedStoreItemMetadataRequestController
{
  if (sharedStoreItemMetadataRequestController_sSharedStoreItemMetadataRequestControllerOnceToken != -1)
  {
    dispatch_once(&sharedStoreItemMetadataRequestController_sSharedStoreItemMetadataRequestControllerOnceToken, &__block_literal_global_41694);
  }

  v3 = sharedStoreItemMetadataRequestController_sSharedStoreItemMetadataRequestController;

  return v3;
}

void __80__MPStoreItemMetadataRequestController_sharedStoreItemMetadataRequestController__block_invoke()
{
  v0 = objc_alloc_init(MPStoreItemMetadataRequestController);
  v1 = sharedStoreItemMetadataRequestController_sSharedStoreItemMetadataRequestController;
  sharedStoreItemMetadataRequestController_sSharedStoreItemMetadataRequestController = v0;
}

@end