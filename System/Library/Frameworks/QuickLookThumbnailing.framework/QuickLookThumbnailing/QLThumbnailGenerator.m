@interface QLThumbnailGenerator
+ (QLThumbnailGenerator)sharedGenerator;
+ (id)debugDescriptionForErrorCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 request:(id)a4 additionalUserInfo:(id)a5;
+ (void)initialize;
- (BOOL)__finishRequestIfInvalid:(id)a3;
- (BOOL)__finishRequestIfNeeded:(id)a3;
- (BOOL)__requestWithUUIDIsStillRunning:(id)a3;
- (BOOL)_cancelRequestIfNeeded:(id)a3;
- (BOOL)_finishRequestIfInvalid:(id)a3;
- (BOOL)_finishRequestIfNeeded:(id)a3;
- (BOOL)_queueThumbnailGenerationForRequestIfNeeded:(id)a3;
- (BOOL)_requestRepresentationTypeIsMoreRepresentative:(id)a3 thanType:(int64_t)a4;
- (BOOL)canGenerateThumbnailsForContentType:(id)a3 atSize:(CGSize)a4;
- (QLThumbnailGenerator)init;
- (id)__requestWithUUID:(id)a3;
- (id)_cachedIconForContentType:(id)a3;
- (id)_requestWithUUID:(id)a3;
- (id)thumbnailIconForRequest:(id)a3;
- (void)__callCompletionBlockOfRequest:(id)a3 withError:(id)a4;
- (void)__finishRequest:(id)a3 withError:(id)a4;
- (void)__finishRequestWithoutError:(id)a3;
- (void)__notifyClientWithNewThumbnailRepresentationForRequestIfNeeded:(id)a3 thumbnail:(id)a4 type:(int64_t)a5 error:(id)a6;
- (void)__removeRequestWithUUID:(id)a3;
- (void)_addRequest:(id)a3;
- (void)_callCompletionBlockOfRequest:(id)a3 withError:(id)a4;
- (void)_callUpdateBlockOfRequestIfRunning:(id)a3 andUpdateMostRepresentativeThumbnail:(id)a4 type:(int64_t)a5 error:(id)a6;
- (void)_createSyncThumbnailServiceProxy;
- (void)_createThumbnailServiceProxy;
- (void)_finishAllRequestsWithError:(id)a3;
- (void)_finishRequest:(id)a3 withError:(id)a4;
- (void)_finishRequestWithoutError:(id)a3;
- (void)_handleThumbnailGenerationCompletionWithUUID:(id)a3 images:(id)a4 metadata:(id)a5 contentRect:(CGRect)a6 iconFlavor:(int)a7 thumbnailType:(int64_t)a8 clientShouldTakeOwnership:(BOOL)a9 error:(id)a10;
- (void)_logRequestDuration:(id)a3;
- (void)_notifyClientWithNewThumbnailRepresentationForRequestIfNeeded:(id)a3 thumbnail:(id)a4 type:(int64_t)a5 error:(id)a6;
- (void)_performInBatch:(id)a3;
- (void)_prepareSyncThumbnailRequest:(id)a3;
- (void)_prepareThumbnailRequestForQueueOrSending:(id)a3 synchronous:(BOOL)a4;
- (void)_queueIconGenerationForRequestIfNeeded:(id)a3;
- (void)_queueThumbnailRequest:(id)a3;
- (void)_removeRequest:(id)a3;
- (void)_sendPendingBatches;
- (void)_sendPendingCancelledRequests;
- (void)_sendPendingGenerationRequests;
- (void)_sendSyncGenerationRequest:(id)a3;
- (void)_setMostRepresentativeThumbnail:(id)a3 forRequest:(id)a4;
- (void)cancelRequest:(QLThumbnailGenerationRequest *)request;
- (void)didUpdateStatus:(int64_t)a3 ofThumbnailGenerationWithUUID:(id)a4;
- (void)generateBestRepresentationForRequest:(QLThumbnailGenerationRequest *)request completionHandler:(void *)completionHandler;
- (void)generateRepresentationsForRequest:(QLThumbnailGenerationRequest *)request updateHandler:(void *)updateHandler;
- (void)generateThumbnailForRequest:(id)a3 updateHandler:(id)a4 statusHandler:(id)a5 completionHandler:(id)a6;
- (void)performInBatch:(id)a3;
- (void)saveBestRepresentationForRequest:(QLThumbnailGenerationRequest *)request toFileAtURL:(NSURL *)fileURL withContentType:(NSString *)contentType completionHandler:(void *)completionHandler;
- (void)synchronousGenerateThumbnailForRequest:(id)a3 updateHandler:(id)a4 statusHandler:(id)a5 completionHandler:(id)a6;
@end

@implementation QLThumbnailGenerator

+ (void)initialize
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __34__QLThumbnailGenerator_initialize__block_invoke;
  v2[3] = &__block_descriptor_40_e30__24__0__NSError_8__NSString_16l;
  v2[4] = a1;
  [MEMORY[0x1E696ABC0] setUserInfoValueProviderForDomain:@"QLThumbnailErrorDomain" provider:v2];
}

+ (QLThumbnailGenerator)sharedGenerator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__QLThumbnailGenerator_sharedGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedGenerator_onceToken != -1)
  {
    dispatch_once(&sharedGenerator_onceToken, block);
  }

  v2 = sharedGenerator_sharedInstance;

  return v2;
}

uint64_t __39__QLThumbnailGenerator_sharedGenerator__block_invoke(uint64_t a1)
{
  sharedGenerator_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (QLThumbnailGenerator)init
{
  v23.receiver = self;
  v23.super_class = QLThumbnailGenerator;
  v2 = [(QLThumbnailGenerator *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_new();
    requests = v2->_requests;
    v2->_requests = v3;

    v5 = objc_opt_new();
    pendingCancelledRequests = v2->_pendingCancelledRequests;
    v2->_pendingCancelledRequests = v5;

    v7 = objc_opt_new();
    pendingGenerationRequests = v2->_pendingGenerationRequests;
    v2->_pendingGenerationRequests = v7;

    v9 = objc_opt_new();
    preparingGenerationRequests = v2->_preparingGenerationRequests;
    v2->_preparingGenerationRequests = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.quicklook.QLThumbnailGenerator", v11);
    queue = v2->_queue;
    v2->_queue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.quicklook.QLThumbnailGenerator.preparation", v14);
    requestPreparationQueue = v2->_requestPreparationQueue;
    v2->_requestPreparationQueue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.quicklook.QLThumbnailGenerator.response", v17);
    serialResponseQueue = v2->_serialResponseQueue;
    v2->_serialResponseQueue = v18;

    v2->_iconsLock._os_unfair_lock_opaque = 0;
    v20 = objc_opt_new();
    iconsByType = v2->_iconsByType;
    v2->_iconsByType = v20;
  }

  return v2;
}

void __54__QLThumbnailGenerator__sendPendingGenerationRequests__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__QLThumbnailGenerator__sendPendingGenerationRequests__block_invoke_2;
  v12[3] = &unk_1E8369DD8;
  v3 = *(a1 + 32);
  v12[4] = *(a1 + 40);
  v4 = v2;
  v13 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v12];
  [*(a1 + 32) removeObjectsForKeys:v4];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v6 + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__QLThumbnailGenerator__sendPendingGenerationRequests__block_invoke_3;
  block[3] = &unk_1E8369E00;
  block[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

void __54__QLThumbnailGenerator__sendPendingGenerationRequests__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 isCancelled])
  {
    [*(a1 + 32) _finishRequestIfNeeded:v5];
  }

  else if (([v5 prepareForSending] & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
    [*(a1 + 32) _finishRequestIfInvalid:v5];
  }
}

uint64_t __54__QLThumbnailGenerator__sendPendingGenerationRequests__block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = [*(a1 + 40) allKeys];
  [v2 removeObjectsForKeys:v3];

  [*(*(a1 + 32) + 56) removeObjectsForKeys:*(a1 + 48)];
  v4 = *(*(a1 + 32) + 64);
  v5 = [*(a1 + 40) allValues];
  [v4 generateSuccessiveThumbnailRepresentationsForRequests:v5 generationHandler:*(a1 + 32) completionHandler:&__block_literal_global_43];

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 16);

  return [v7 addEntriesFromDictionary:v6];
}

- (void)_createThumbnailServiceProxy
{
  objc_initWeak(&location, self);
  v3 = +[QLThumbnailServiceProxy sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__QLThumbnailGenerator__createThumbnailServiceProxy__block_invoke;
  v6[3] = &unk_1E8369E50;
  objc_copyWeak(&v7, &location);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];
  thumbnailServiceProxy = self->_thumbnailServiceProxy;
  self->_thumbnailServiceProxy = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_sendPendingGenerationRequests
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableDictionary *)self->_preparingGenerationRequests addEntriesFromDictionary:self->_pendingGenerationRequests];
  v3 = [(NSMutableDictionary *)self->_pendingGenerationRequests mutableCopy];
  [(NSMutableDictionary *)self->_pendingGenerationRequests removeAllObjects];
  requestPreparationQueue = self->_requestPreparationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__QLThumbnailGenerator__sendPendingGenerationRequests__block_invoke;
  v6[3] = &unk_1E8369BD0;
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_async(requestPreparationQueue, v6);
}

+ (id)debugDescriptionForErrorCode:(int64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E8369EB8[a3];
  }
}

id __34__QLThumbnailGenerator_initialize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (![a3 isEqualToString:*MEMORY[0x1E696A278]])
  {
    v11 = 0;
    goto LABEL_11;
  }

  v6 = [*(a1 + 32) debugDescriptionForErrorCode:{objc_msgSend(v5, "code")}];
  if (v6)
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A980]];

    v9 = [v8 absoluteString];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v12 = [v5 userInfo];
      v10 = [v12 objectForKeyedSubscript:@"QLErrorFailingFileNameKey"];

      if (!v10)
      {
        v11 = v6;
        goto LABEL_9;
      }
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ for %@", v6, v10];

LABEL_9:
    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

LABEL_11:

  return v11;
}

- (void)generateBestRepresentationForRequest:(QLThumbnailGenerationRequest *)request completionHandler:(void *)completionHandler
{
  v8 = request;
  v6 = completionHandler;
  if (!v6)
  {
    [QLThumbnailGenerator generateBestRepresentationForRequest:completionHandler:];
  }

  v7 = v6;
  [(QLThumbnailGenerator *)self generateThumbnailForRequest:v8 updateHandler:0 statusHandler:0 completionHandler:v6];
}

- (void)generateRepresentationsForRequest:(QLThumbnailGenerationRequest *)request updateHandler:(void *)updateHandler
{
  v8 = request;
  v6 = updateHandler;
  if (!v6)
  {
    [QLThumbnailGenerator generateRepresentationsForRequest:updateHandler:];
  }

  v7 = v6;
  [(QLThumbnailGenerator *)self generateThumbnailForRequest:v8 updateHandler:v6 statusHandler:0 completionHandler:0];
}

- (void)generateThumbnailForRequest:(id)a3 updateHandler:(id)a4 statusHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!(v11 | v13))
  {
    [QLThumbnailGenerator generateThumbnailForRequest:updateHandler:statusHandler:completionHandler:];
  }

  v14 = v13;
  [v10 setUpdateBlock:v11];
  [v10 setStatusBlock:v12];
  [v10 setCompletionBlock:v14];
  v15 = self;
  objc_sync_enter(v15);
  if ([(QLThumbnailGenerator *)v15 _isBuildingBatch])
  {
    [(QLThumbnailGenerator *)v15 _queueThumbnailRequest:v10];
  }

  else
  {
    queue = v15->_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__QLThumbnailGenerator_generateThumbnailForRequest_updateHandler_statusHandler_completionHandler___block_invoke;
    v17[3] = &unk_1E8369BD0;
    v17[4] = v15;
    v18 = v10;
    dispatch_sync(queue, v17);
  }

  objc_sync_exit(v15);
}

uint64_t __98__QLThumbnailGenerator_generateThumbnailForRequest_updateHandler_statusHandler_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queueThumbnailRequest:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _sendPendingGenerationRequests];
}

- (void)synchronousGenerateThumbnailForRequest:(id)a3 updateHandler:(id)a4 statusHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!(v11 | v13))
  {
    [QLThumbnailGenerator synchronousGenerateThumbnailForRequest:updateHandler:statusHandler:completionHandler:];
  }

  v14 = v13;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = dispatch_semaphore_create(0);
  [v10 setUpdateBlock:v11];
  [v10 setStatusBlock:v12];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __109__QLThumbnailGenerator_synchronousGenerateThumbnailForRequest_updateHandler_statusHandler_completionHandler___block_invoke;
  v24[3] = &unk_1E8369D10;
  v15 = v14;
  v25 = v15;
  v26 = &v27;
  [v10 setCompletionBlock:v24];
  queue = self->_queue;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __109__QLThumbnailGenerator_synchronousGenerateThumbnailForRequest_updateHandler_statusHandler_completionHandler___block_invoke_2;
  v21 = &unk_1E8369BD0;
  v22 = self;
  v17 = v10;
  v23 = v17;
  dispatch_sync(queue, &v18);
  [(QLThumbnailGenerator *)self _sendSyncGenerationRequest:v17, v18, v19, v20, v21, v22];
  dispatch_semaphore_wait(v28[5], 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v27, 8);
}

intptr_t __109__QLThumbnailGenerator_synchronousGenerateThumbnailForRequest_updateHandler_statusHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)saveBestRepresentationForRequest:(QLThumbnailGenerationRequest *)request toFileAtURL:(NSURL *)fileURL withContentType:(NSString *)contentType completionHandler:(void *)completionHandler
{
  v10 = MEMORY[0x1E6982C40];
  v11 = completionHandler;
  v12 = fileURL;
  v13 = request;
  v14 = [v10 typeWithIdentifier:contentType];
  [(QLThumbnailGenerator *)self saveBestRepresentationForRequest:v13 toFileAtURL:v12 asContentType:v14 allowingThumbnailDownloads:0 completionHandler:v11];
}

- (void)cancelRequest:(QLThumbnailGenerationRequest *)request
{
  v4 = request;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(QLThumbnailGenerator *)v5 _isBuildingBatch];
  queue = v5->_queue;
  if (v6)
  {
    dispatch_assert_queue_V2(v5->_queue);
    [(QLThumbnailGenerator *)v5 _cancelRequestIfNeeded:v4];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__QLThumbnailGenerator_cancelRequest___block_invoke;
    v8[3] = &unk_1E8369BD0;
    v8[4] = v5;
    v9 = v4;
    dispatch_sync(queue, v8);
  }

  objc_sync_exit(v5);
}

uint64_t __38__QLThumbnailGenerator_cancelRequest___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cancelRequestIfNeeded:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _sendPendingCancelledRequests];
  }

  return result;
}

- (BOOL)_cancelRequestIfNeeded:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  preparingGenerationRequests = self->_preparingGenerationRequests;
  v6 = [v4 uuid];
  v7 = [(NSMutableDictionary *)preparingGenerationRequests objectForKeyedSubscript:v6];

  if (v7)
  {
    [v4 cancel];
  }

  else
  {
    v8 = [v4 uuid];
    v9 = [(QLThumbnailGenerator *)self __requestWithUUIDIsStillRunning:v8];

    if (!v9)
    {
      v12 = 0;
      goto LABEL_6;
    }

    [v4 cancel];
    pendingCancelledRequests = self->_pendingCancelledRequests;
    v11 = [v4 uuid];
    [(NSMutableDictionary *)pendingCancelledRequests setObject:v4 forKey:v11];
  }

  v12 = 1;
LABEL_6:

  return v12;
}

- (void)performInBatch:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(QLThumbnailGenerator *)v5 _isBuildingBatch])
  {
    [(QLThumbnailGenerator *)v5 _performInBatch:v4];
  }

  else
  {
    queue = v5->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__QLThumbnailGenerator_performInBatch___block_invoke;
    v7[3] = &unk_1E8369D60;
    v7[4] = v5;
    v8 = v4;
    dispatch_sync(queue, v7);
  }

  objc_sync_exit(v5);
}

- (void)_performInBatch:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  ++self->_batchingCount;
  v5[2](v5);

  v6 = self->_batchingCount - 1;
  self->_batchingCount = v6;
  if (!v6)
  {

    [(QLThumbnailGenerator *)self _sendPendingBatches];
  }
}

- (void)_addRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__QLThumbnailGenerator__addRequest___block_invoke;
  v7[3] = &unk_1E8369BD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __36__QLThumbnailGenerator__addRequest___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) requests];
  v2 = *(a1 + 40);
  v3 = [v2 uuid];
  [v4 setObject:v2 forKey:v3];
}

- (void)_removeRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__QLThumbnailGenerator__removeRequest___block_invoke;
  v7[3] = &unk_1E8369BD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __39__QLThumbnailGenerator__removeRequest___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) requests];
  v2 = [*(a1 + 40) uuid];
  [v3 removeObjectForKey:v2];
}

- (void)__removeRequestWithUUID:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(QLThumbnailGenerator *)self requests];
  [v6 removeObjectForKey:v5];
}

- (id)_requestWithUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__QLThumbnailGenerator__requestWithUUID___block_invoke;
  block[3] = &unk_1E8369D88;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __41__QLThumbnailGenerator__requestWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __requestWithUUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)__requestWithUUID:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(QLThumbnailGenerator *)self requests];
  v7 = [v6 objectForKey:v5];

  return v7;
}

- (BOOL)__requestWithUUIDIsStillRunning:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(QLThumbnailGenerator *)self __requestWithUUID:v5];

  if (v6 && ([v6 isCancelled] & 1) == 0)
  {
    v7 = [v6 isFinished] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_sendPendingBatches
{
  dispatch_assert_queue_V2(self->_queue);
  [(QLThumbnailGenerator *)self _sendPendingGenerationRequests];

  [(QLThumbnailGenerator *)self _sendPendingCancelledRequests];
}

- (void)_sendSyncGenerationRequest:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__QLThumbnailGenerator__sendSyncGenerationRequest___block_invoke;
  v9[3] = &unk_1E8369DB0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);
  if ([v4 prepareForSending])
  {
    v6 = v11[5];
    v16[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v6 generateSuccessiveThumbnailRepresentationsForRequests:v7 generationHandler:self completionHandler:&__block_literal_global_2];
  }

  else
  {
    [(QLThumbnailGenerator *)self _finishRequestIfInvalid:v4];
  }

  _Block_object_dispose(&v10, 8);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_sendPendingCancelledRequests
{
  dispatch_assert_queue_V2(self->_queue);
  thumbnailServiceProxy = self->_thumbnailServiceProxy;
  v4 = [(NSMutableDictionary *)self->_pendingCancelledRequests allValues];
  [(QLThumbnailServiceProxy *)thumbnailServiceProxy cancelThumbnailRequests:v4];

  pendingCancelledRequests = self->_pendingCancelledRequests;

  [(NSMutableDictionary *)pendingCancelledRequests removeAllObjects];
}

- (void)_prepareThumbnailRequestForQueueOrSending:(id)a3 synchronous:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    [(QLThumbnailGenerator *)self _createSyncThumbnailServiceProxy];
  }

  else
  {
    [(QLThumbnailGenerator *)self _createThumbnailServiceProxy];
  }

  [v6 markDidBegin];
  if (![(QLThumbnailGenerator *)self __finishRequestIfInvalid:v6])
  {
    [(QLThumbnailGenerator *)self _queueIconGenerationForRequestIfNeeded:v6];
  }
}

- (void)_queueThumbnailRequest:(id)a3
{
  v4 = a3;
  [(QLThumbnailGenerator *)self _prepareThumbnailRequestForQueueOrSending:v4 synchronous:0];
  [(QLThumbnailGenerator *)self _queueThumbnailGenerationForRequestIfNeeded:v4];
}

- (void)_prepareSyncThumbnailRequest:(id)a3
{
  v6 = a3;
  [(QLThumbnailGenerator *)self _prepareThumbnailRequestForQueueOrSending:v6 synchronous:1];
  if (![(QLThumbnailGenerator *)self __finishRequestIfNeeded:v6])
  {
    if ([v6 representationTypes] > 1)
    {
      requests = self->_requests;
      v5 = [v6 uuid];
      [(NSMutableDictionary *)requests setObject:v6 forKeyedSubscript:v5];
    }

    else
    {
      [(QLThumbnailGenerator *)self __finishRequestWithoutError:v6];
    }
  }
}

- (void)_queueIconGenerationForRequestIfNeeded:(id)a3
{
  v4 = a3;
  if (!-[QLThumbnailGenerator __finishRequestIfNeeded:](self, "__finishRequestIfNeeded:", v4) && [v4 provideGenericIcon])
  {
    serialResponseQueue = self->_serialResponseQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__QLThumbnailGenerator__queueIconGenerationForRequestIfNeeded___block_invoke;
    v6[3] = &unk_1E8369BD0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(serialResponseQueue, v6);
  }
}

void __63__QLThumbnailGenerator__queueIconGenerationForRequestIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailIconForRequest:*(a1 + 40)];
  [*(a1 + 32) __notifyClientWithNewThumbnailRepresentationForRequestIfNeeded:*(a1 + 40) thumbnail:v2 type:0 error:0];
}

- (BOOL)_queueThumbnailGenerationForRequestIfNeeded:(id)a3
{
  v4 = a3;
  if (![(QLThumbnailGenerator *)self __finishRequestIfNeeded:v4])
  {
    if ([v4 representationTypes] > 1)
    {
      pendingGenerationRequests = self->_pendingGenerationRequests;
      v7 = [v4 uuid];
      [(NSMutableDictionary *)pendingGenerationRequests setObject:v4 forKeyedSubscript:v7];

      v5 = 1;
      goto LABEL_6;
    }

    [(QLThumbnailGenerator *)self __finishRequestWithoutError:v4];
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)_handleThumbnailGenerationCompletionWithUUID:(id)a3 images:(id)a4 metadata:(id)a5 contentRect:(CGRect)a6 iconFlavor:(int)a7 thumbnailType:(int64_t)a8 clientShouldTakeOwnership:(BOOL)a9 error:(id)a10
{
  v69 = a9;
  v86 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a10;
  v19 = _log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [QLThumbnailGenerator _handleThumbnailGenerationCompletionWithUUID:images:metadata:contentRect:iconFlavor:thumbnailType:clientShouldTakeOwnership:error:];
  }

  v20 = [(QLThumbnailGenerator *)self _requestWithUUID:v15];
  if (!v16 || v18)
  {
    [(QLThumbnailGenerator *)self _notifyClientWithNewThumbnailRepresentationForRequestIfNeeded:v20 thumbnail:0 type:a8 error:v18];
    goto LABEL_42;
  }

  if (![(QLThumbnailGenerator *)self _finishRequestIfNeeded:v20])
  {
    v59 = a7;
    v60 = self;
    v61 = a8;
    v62 = v17;
    v64 = v15;
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v63 = v16;
    obj = v16;
    v22 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
    if (!v22)
    {
      goto LABEL_27;
    }

    v23 = v22;
    v24 = *v72;
    destructor = *MEMORY[0x1E69E9650];
    v66 = *v72;
    while (1)
    {
      v25 = 0;
      v67 = v23;
      do
      {
        if (*v72 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v71 + 1) + 8 * v25);
        v27 = [v26 data];
        v28 = v27;
        if (v69)
        {
          v29 = v21;
          v30 = v20;
          v31 = [v27 length];
          v32 = v31 + *MEMORY[0x1E69E9AC8] - 1;
          v33 = -*MEMORY[0x1E69E9AC8];
          v34 = mmap(0, v32 & v33, 3, 4097, 1627389952, 0);
          if (v34)
          {
            v35 = v34;
            v36 = vm_copy(*MEMORY[0x1E69E9A60], [v28 bytes], [v28 length], v34);
            if (v36)
            {
              v37 = v36;
              v38 = _log();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v39 = mach_error_string(v37);
                *buf = 67109378;
                *v78 = v37;
                *&v78[4] = 2080;
                *&v78[6] = v39;
                v40 = v38;
                v41 = "Could not copy memory to make the thumbnail count against my jetsam limit: %d (%s)";
                goto LABEL_18;
              }
            }

            else
            {
              v45 = dispatch_data_create(v35, v32 & v33, 0, destructor);
              v38 = v28;
              v28 = v45;
            }
          }

          else
          {
            v38 = _log();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v42 = *__error();
              v43 = __error();
              v44 = strerror(*v43);
              *buf = 67109378;
              *v78 = v42;
              *&v78[4] = 2080;
              *&v78[6] = v44;
              v40 = v38;
              v41 = "Could not allocate memory to make the thumbnail count against my jetsam limit: %d (%s)";
LABEL_18:
              _os_log_error_impl(&dword_1CA1E7000, v40, OS_LOG_TYPE_ERROR, v41, buf, 0x12u);
            }
          }

          v20 = v30;
          v21 = v29;

          v24 = v66;
          v23 = v67;
        }

        v46 = QLImageCreateForDefaultThumbnailGenerationFromData(v26);
        v47 = qltLogHandles[0];
        if (!qltLogHandles[0])
        {
          QLTInitLogging();
          v47 = qltLogHandles[0];
        }

        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = v47;
          v49 = [v28 length];
          v50 = [v26 format];
          *buf = 138413314;
          *v78 = v20;
          *&v78[8] = 2048;
          *&v78[10] = v49;
          v79 = 2112;
          v80 = v50;
          v81 = 2112;
          v82 = 0;
          v83 = 2112;
          v84 = v46;
          _os_log_impl(&dword_1CA1E7000, v48, OS_LOG_TYPE_INFO, "Received thumbnail for %@: data of length %lu, bitmap format %@, error %@, image %@", buf, 0x34u);
        }

        [v21 addObject:v46];

        ++v25;
      }

      while (v23 != v25);
      v23 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
      if (!v23)
      {
LABEL_27:

        if (v21)
        {
          v17 = v62;
          v16 = v63;
          v51 = v61;
          if (v62)
          {
            v70 = 0;
            v52 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v62 error:&v70];
            v53 = v70;
            if (!v52)
            {
              v54 = qltLogHandles[0];
              if (!qltLogHandles[0])
              {
                QLTInitLogging();
                v54 = qltLogHandles[0];
              }

              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                [QLThumbnailGenerator _handleThumbnailGenerationCompletionWithUUID:images:metadata:contentRect:iconFlavor:thumbnailType:clientShouldTakeOwnership:error:];
              }

              v52 = 0;
            }
          }

          else
          {
            v52 = 0;
            v53 = 0;
          }

          v57 = [QLThumbnailRepresentation alloc];
          [v20 scale];
          v56 = [QLThumbnailRepresentation initWithThumbnailType:v57 iconFlavor:"initWithThumbnailType:iconFlavor:images:scale:contentRect:generatedProperties:" images:v61 scale:v59 contentRect:v21 generatedProperties:v52];
          v18 = 0;
        }

        else
        {
          v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not decode image for thumbnail request %@ from received thumbnail data", v20];
          v55 = _log();
          v17 = v62;
          v16 = v63;
          v51 = v61;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            [QLThumbnailGenerator _handleThumbnailGenerationCompletionWithUUID:images:metadata:contentRect:iconFlavor:thumbnailType:clientShouldTakeOwnership:error:];
          }

          v75 = *MEMORY[0x1E696A278];
          v76 = v53;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v18 = [QLThumbnailGenerator errorWithCode:0 request:v20 additionalUserInfo:v52];
          v56 = 0;
        }

        [(QLThumbnailGenerator *)v60 _notifyClientWithNewThumbnailRepresentationForRequestIfNeeded:v20 thumbnail:v56 type:v51 error:v18];
        v15 = v64;
LABEL_42:

        break;
      }
    }
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)_notifyClientWithNewThumbnailRepresentationForRequestIfNeeded:(id)a3 thumbnail:(id)a4 type:(int64_t)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  serialResponseQueue = self->_serialResponseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__QLThumbnailGenerator__notifyClientWithNewThumbnailRepresentationForRequestIfNeeded_thumbnail_type_error___block_invoke;
  block[3] = &unk_1E8369E28;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(serialResponseQueue, block);
}

- (void)__notifyClientWithNewThumbnailRepresentationForRequestIfNeeded:(id)a3 thumbnail:(id)a4 type:(int64_t)a5 error:(id)a6
{
  v14 = a3;
  v10 = a6;
  serialResponseQueue = self->_serialResponseQueue;
  v12 = a4;
  dispatch_assert_queue_V2(serialResponseQueue);
  v13 = [v14 updateBlock];

  if (v13)
  {
    [(QLThumbnailGenerator *)self _callUpdateBlockOfRequestIfRunning:v14 andUpdateMostRepresentativeThumbnail:v12 type:a5 error:v10];
  }

  else
  {
    [(QLThumbnailGenerator *)self _setMostRepresentativeThumbnail:v12 forRequest:v14];
  }

  if ([v14 thumbnailRepresentationTypeMatchesRequestedMostRepresentativeType:a5])
  {
    [(QLThumbnailGenerator *)self _finishAndCallCompletionBlockOfRequest:v14 withError:v10];
  }
}

- (id)thumbnailIconForRequest:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 scale];
  v6 = v5;
  v7 = [v4 contentType];
  v8 = objc_alloc(MEMORY[0x1E69A8A30]);
  [v4 size];
  v9 = [v8 initWithSize:? scale:?];
  if (v7)
  {
    v10 = [v7 conformsToType:*MEMORY[0x1E6982CB0]];
    v11 = *MEMORY[0x1E6982DC8];
    if ((v10 & 1) == 0 && ([v7 conformsToType:*MEMORY[0x1E6982DC8]] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = *MEMORY[0x1E6982DC8];
  }

  v12 = [v7 conformsToType:v11];
  v13 = [v4 fileURL];

  if (v12)
  {
    if (!v13)
    {
LABEL_11:
      v17 = [(QLThumbnailGenerator *)self _cachedIconForContentType:v7];
      goto LABEL_12;
    }

    v14 = MEMORY[0x1E6999E38];
    v15 = [v4 fileURL];
    v16 = [v14 fiNodeFromURL:v15];

    v17 = [v16 propertyAsNSObject:1769171299];
    QLApplyCurrentIconAppearance(v9);

LABEL_12:
    if (![v4 iconVariant])
    {
      [v9 setVariantOptions:1];
    }

    v20 = [v4 tintColor];

    if (v20)
    {
      v21 = [v4 tintColor];
      [v9 setTintColor:v21];

      [v9 setAppearance:2];
    }

    v22 = [v17 imageForDescriptor:v9];
    if ([v22 placeholder])
    {
      v23 = [v17 prepareImageForDescriptor:v9];

      v22 = v23;
    }

    if (v22)
    {
      v24 = [v22 CGImage];
      v25 = [QLThumbnailRepresentation alloc];
      v31[0] = v24;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v27 = CGImageGetWidth(v24) / v6;
      v28 = [(QLThumbnailRepresentation *)v25 initWithThumbnailType:0 iconFlavor:0 images:v26 scale:0 contentRect:v6 generatedProperties:0.0, 0.0, v27, CGImageGetHeight(v24) / v6];
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_22;
  }

  if (v13)
  {
    v18 = objc_alloc(MEMORY[0x1E69A8A00]);
    v19 = [v4 fileURL];
    v17 = [v18 initWithURL:v19];

    goto LABEL_12;
  }

  v17 = _log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [QLThumbnailGenerator thumbnailIconForRequest:];
  }

  v28 = 0;
LABEL_22:

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)_cachedIconForContentType:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_iconsLock);
  v5 = [(NSMutableDictionary *)self->_iconsByType objectForKey:v4];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A8A00]);
    v7 = [v4 identifier];
    v5 = [v6 initWithType:v7];

    if (v5)
    {
      [(NSMutableDictionary *)self->_iconsByType setObject:v5 forKey:v4];
    }
  }

  os_unfair_lock_unlock(&self->_iconsLock);

  return v5;
}

- (void)_callUpdateBlockOfRequestIfRunning:(id)a3 andUpdateMostRepresentativeThumbnail:(id)a4 type:(int64_t)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  dispatch_assert_queue_V2(self->_serialResponseQueue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__QLThumbnailGenerator__callUpdateBlockOfRequestIfRunning_andUpdateMostRepresentativeThumbnail_type_error___block_invoke;
  block[3] = &unk_1E8369E28;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(queue, block);
}

void __107__QLThumbnailGenerator__callUpdateBlockOfRequestIfRunning_andUpdateMostRepresentativeThumbnail_type_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) _requestRepresentationTypeIsMoreRepresentative:*(a1 + 40) thanType:*(a1 + 64)] & 1) == 0)
  {
    v2 = [*(a1 + 40) mostRepresentativeTypeForWhichUpdateBlockHasBeenCalled];
    v3 = *(a1 + 64);
    v4 = [*(a1 + 40) updateBlock];

    if (v4)
    {
      v5 = v2 < v3;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = qltLogHandles[0];
      if (!qltLogHandles[0])
      {
        QLTInitLogging();
        v6 = qltLogHandles[0];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v9 = *(a1 + 64);
        v10 = v6;
        v11 = QLThumbnailRepresentationTypeToString(v9);
        v12 = *(a1 + 56);
        v15 = 138413058;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_1CA1E7000, v10, OS_LOG_TYPE_INFO, "Calling request updateBlock for %@ with thumbnail: %@, type: %@, error: %@", &v15, 0x2Au);
      }

      v13 = [*(a1 + 40) updateBlock];
      v13[2](v13, *(a1 + 48), *(a1 + 64), *(a1 + 56));

      [*(a1 + 40) noteUpdateBlockHasBeenCalledForType:*(a1 + 64)];
    }

    if (*(a1 + 48))
    {
      [*(a1 + 40) setMostRepresentativeThumbnail:?];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_setMostRepresentativeThumbnail:(id)a3 forRequest:(id)a4
{
  v7 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_serialResponseQueue);
  if (v7)
  {
    [v6 setMostRepresentativeThumbnail:v7];
  }
}

- (void)_finishRequest:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__QLThumbnailGenerator__finishRequest_withError___block_invoke;
  block[3] = &unk_1E8369E00;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)__finishRequest:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isFinished] & 1) == 0)
  {
    [v6 finish];
    serialResponseQueue = self->_serialResponseQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__QLThumbnailGenerator___finishRequest_withError___block_invoke;
    block[3] = &unk_1E8369E00;
    v12 = v7;
    v13 = self;
    v9 = v6;
    v14 = v9;
    dispatch_async(serialResponseQueue, block);
    v10 = [v9 uuid];
    [(QLThumbnailGenerator *)self __removeRequestWithUUID:v10];
  }
}

uint64_t __50__QLThumbnailGenerator___finishRequest_withError___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _callUpdateBlockOfRequestIfRunning:*(a1 + 48) andUpdateMostRepresentativeThumbnail:0 type:objc_msgSend(*(a1 + 48) error:{"requestedMostRepresentativeType"), *(a1 + 32)}];
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 40) __callCompletionBlockOfRequest:*(a1 + 48) withError:v2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _logRequestDuration:v4];
}

- (void)_callCompletionBlockOfRequest:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialResponseQueue = self->_serialResponseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__QLThumbnailGenerator__callCompletionBlockOfRequest_withError___block_invoke;
  block[3] = &unk_1E8369E00;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialResponseQueue, block);
}

- (void)__callCompletionBlockOfRequest:(id)a3 withError:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 completionBlock];

  if (v7)
  {
    v8 = v6;
    v9 = [v5 mostRepresentativeThumbnail];

    if (v9)
    {

      v8 = 0;
    }

    v10 = qltLogHandles[0];
    if (!qltLogHandles[0])
    {
      QLTInitLogging();
      v10 = qltLogHandles[0];
    }

    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (v8)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"with error: %@", v8];
      }

      else
      {
        v12 = @"without error.";
      }

      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1CA1E7000, v11, OS_LOG_TYPE_INFO, "Calling request completionBlock for %@ %@", buf, 0x16u);
      if (v8)
      {
      }
    }

    v13 = [v5 completionBlock];
    v14 = [v5 mostRepresentativeThumbnail];
    (v13)[2](v13, v14, v8);

    [v5 setUpdateBlock:0];
    [v5 setStatusBlock:0];
    [v5 setCompletionBlock:0];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_finishRequestWithoutError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__QLThumbnailGenerator__finishRequestWithoutError___block_invoke;
  v7[3] = &unk_1E8369BD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)__finishRequestWithoutError:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(QLThumbnailGenerator *)self __finishRequest:v5 withError:0];
}

- (BOOL)_finishRequestIfInvalid:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__QLThumbnailGenerator__finishRequestIfInvalid___block_invoke;
  block[3] = &unk_1E8369D88;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __48__QLThumbnailGenerator__finishRequestIfInvalid___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) __finishRequestIfInvalid:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)__finishRequestIfInvalid:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 requestIsInvalidError];

  if (v5)
  {
    v6 = _log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1CA1E7000, v6, OS_LOG_TYPE_INFO, "Finishing request %@ because it is invalid.", &v10, 0xCu);
    }

    v7 = [v4 requestIsInvalidError];
    [(QLThumbnailGenerator *)self __finishRequest:v4 withError:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (BOOL)_finishRequestIfNeeded:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __47__QLThumbnailGenerator__finishRequestIfNeeded___block_invoke;
  v11 = &unk_1E8369BD0;
  v12 = self;
  v13 = v4;
  v6 = v4;
  dispatch_sync(queue, &v8);
  LOBYTE(queue) = [v6 isFinished];

  return queue;
}

- (BOOL)__finishRequestIfNeeded:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!-[QLThumbnailGenerator __finishRequestIfInvalid:](self, "__finishRequestIfInvalid:", v4) && [v4 isCancelled])
  {
    v5 = [QLThumbnailGenerator errorWithCode:5 request:v4 additionalUserInfo:0];
    [(QLThumbnailGenerator *)self __finishRequest:v4 withError:v5];
  }

  v6 = [v4 isFinished];

  return v6;
}

- (void)_finishAllRequestsWithError:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__0;
  v10[4] = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__QLThumbnailGenerator__finishAllRequestsWithError___block_invoke;
  block[3] = &unk_1E8369D88;
  v8 = v4;
  v9 = v10;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);

  _Block_object_dispose(v10, 8);
}

void __52__QLThumbnailGenerator__finishAllRequestsWithError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) requests];
  v3 = [v2 allKeys];
  v4 = [v3 copy];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [*(a1 + 32) requests];
        v14 = [v13 objectForKeyedSubscript:v12];

        [*(a1 + 32) __finishRequest:v14 withError:*(a1 + 40)];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_logRequestDuration:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 beginDate];
  [v4 timeIntervalSinceNow];
  v6 = v5;

  v7 = qltLogHandles[0];
  if (!qltLogHandles[0])
  {
    QLTInitLogging();
    v7 = qltLogHandles[0];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v3 mostRepresentativeThumbnail];
    v11 = 134218498;
    v12 = -v6;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1CA1E7000, v8, OS_LOG_TYPE_INFO, "Thumbnail generation duration of %.3f for %@. Most representative thumbnail generated: %@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateStatus:(int64_t)a3 ofThumbnailGenerationWithUUID:(id)a4
{
  v7 = [(QLThumbnailGenerator *)self _requestWithUUID:a4];
  v5 = [v7 statusBlock];

  if (v5)
  {
    v6 = [v7 statusBlock];
    v6[2](v6, a3);
  }
}

void __52__QLThumbnailGenerator__createThumbnailServiceProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__QLThumbnailGenerator__createThumbnailServiceProxy__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishAllRequestsWithError:v3];
}

- (void)_createSyncThumbnailServiceProxy
{
  objc_initWeak(&location, self);
  v3 = +[QLThumbnailServiceProxy sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__QLThumbnailGenerator__createSyncThumbnailServiceProxy__block_invoke;
  v6[3] = &unk_1E8369E50;
  objc_copyWeak(&v7, &location);
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v6];
  syncThumbnailServiceProxy = self->_syncThumbnailServiceProxy;
  self->_syncThumbnailServiceProxy = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __56__QLThumbnailGenerator__createSyncThumbnailServiceProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__QLThumbnailGenerator__createThumbnailServiceProxy__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishAllRequestsWithError:v3];
}

- (BOOL)_requestRepresentationTypeIsMoreRepresentative:(id)a3 thanType:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 mostRepresentativeThumbnail];

  if (v6)
  {
    v7 = [v5 mostRepresentativeThumbnail];
    v8 = [v7 type] > a4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)errorWithCode:(int64_t)a3 request:(id)a4 additionalUserInfo:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = [v8 fileURL];
  v10 = [v8 item];

  if (v9)
  {
    if (v7)
    {
LABEL_3:
      v11 = [v7 mutableCopy];
      [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A980]];
      v12 = [v11 copy];

      goto LABEL_13;
    }
  }

  else
  {
    v13 = [v10 fileURL];
    if (!v13)
    {
      v9 = [v10 filename];

      if (v9)
      {
        if (v7)
        {
          v14 = [v7 mutableCopy];
          v15 = [v10 filename];
          [v14 setObject:v15 forKeyedSubscript:@"QLErrorFailingFileNameKey"];

          v12 = [v14 copy];
        }

        else
        {
          v19 = @"QLErrorFailingFileNameKey";
          v14 = [v10 filename];
          v20 = v14;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        }

        v9 = 0;
      }

      else
      {
        v12 = v7;
      }

      goto LABEL_13;
    }

    v9 = v13;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v21 = *MEMORY[0x1E696A980];
  v22[0] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
LABEL_13:
  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:a3 userInfo:v12];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)canGenerateThumbnailsForContentType:(id)a3 atSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = +[QLThumbnailServiceProxy sharedInstance];
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_64];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__QLThumbnailGenerator_canGenerateThumbnailsForContentType_atSize___block_invoke_65;
  v10[3] = &unk_1E8369E98;
  v10[4] = &v11;
  [v8 canGenerateThumbnailsForContentType:v6 atSize:v10 completionHandler:{width, height}];

  LOBYTE(v7) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __67__QLThumbnailGenerator_canGenerateThumbnailsForContentType_atSize___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __52__QLThumbnailGenerator__createThumbnailServiceProxy__block_invoke_cold_1();
  }
}

- (void)_handleThumbnailGenerationCompletionWithUUID:images:metadata:contentRect:iconFlavor:thumbnailType:clientShouldTakeOwnership:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1CA1E7000, v0, OS_LOG_TYPE_DEBUG, "Processing thumbnail request completion for request uuid:%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_handleThumbnailGenerationCompletionWithUUID:images:metadata:contentRect:iconFlavor:thumbnailType:clientShouldTakeOwnership:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "Failed to unarchive thumbnail's generated properties: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleThumbnailGenerationCompletionWithUUID:images:metadata:contentRect:iconFlavor:thumbnailType:clientShouldTakeOwnership:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "Could not decode image for thumbnail request %@ from received thumbnail data", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)thumbnailIconForRequest:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "No fileURL or contentType for %@, not returning any icon", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__QLThumbnailGenerator__createThumbnailServiceProxy__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "An error occurred with ThumbnailsAgent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end