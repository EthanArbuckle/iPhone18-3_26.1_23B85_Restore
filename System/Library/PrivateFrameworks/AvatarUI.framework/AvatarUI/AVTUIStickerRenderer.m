@interface AVTUIStickerRenderer
+ (BOOL)clearStickersForAvatarRecordIdentifier:(id)a3;
+ (BOOL)clearStickersForAvatarRecordIdentifier:(id)a3 withEnvironment:(id)a4;
+ (id)imageEncoder;
+ (id)stickerCacheWithEnvironment:(id)a3;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 avatar:(id)a4 cache:(id)a5 imageStore:(id)a6 stickerGeneratorPool:(id)a7 environment:(id)a8 renderingScheduler:(id)a9 renderingQueue:(id)a10 encodingQueue:(id)a11 callbackQueue:(id)a12;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 avatar:(id)a4 stickerGeneratorPool:(id)a5 scheduler:(id)a6 imageStore:(id)a7 environment:(id)a8;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 cache:(id)a4 renderingScheduler:(id)a5 renderingQueue:(id)a6 encodingQueue:(id)a7 stickerGeneratorPool:(id)a8 environment:(id)a9;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 stickerGeneratorPool:(id)a4 scheduler:(id)a5;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 stickerGeneratorPool:(id)a4 scheduler:(id)a5 imageStore:(id)a6;
- (id)_providerForResource:(id)a3 forScope:(id)a4 queue:(id)a5 renderWithCompletionHandler:(id)a6;
- (id)_providerForResourceForScope:(id)a3 queue:(id)a4 renderWithCompletionHandler:(id)a5;
- (id)_scheduledRemoteImageRendererProviderForStickerConfiguration:(id)a3 correctClipping:(BOOL)a4;
- (id)_scheduledTaskForItem:(id)a3 scope:(id)a4 queue:(id)a5 renderWithCompletionHandler:(id)a6 resourceHandler:(id)a7 synchronous:(BOOL)a8;
- (id)providerForResource:(id)a3 forScope:(id)a4 queue:(id)a5 renderingHandler:(id)a6;
- (id)providerForResourceForScope:(id)a3 queue:(id)a4 renderingHandler:(id)a5;
- (id)providerForResourceWithAvatarConfiguration:(id)a3 forScope:(id)a4 queue:(id)a5 renderingHandler:(id)a6;
- (id)renderStickerResourceForItem:(id)a3 scope:(id)a4 stickerConfiguration:(id)a5 avatarConfiguration:(id)a6 correctClipping:(BOOL)a7;
- (id)scheduledStickerResourceProviderForStickerConfiguration:(id)a3 correctClipping:(BOOL)a4;
- (id)scheduledStickerResourceProviderForStickerConfiguration:(id)a3 usingService:(BOOL)a4;
- (id)scheduledStickerResourceProviderForThumbnailForModelPreset:(id)a3 presetOverrides:(id)a4 avatarConfiguration:(id)a5 stickerConfiguration:(id)a6 correctClipping:(BOOL)a7;
- (id)scheduledTaskForItem:(id)a3 scope:(id)a4 queue:(id)a5 renderingHandler:(id)a6 resourceHandler:(id)a7 synchronous:(BOOL)a8;
- (void)saveImageForResource:(id)a3 forScope:(id)a4 synchronous:(BOOL)a5 completionHandler:(id)a6;
- (void)stopUsingResources;
@end

@implementation AVTUIStickerRenderer

+ (id)imageEncoder
{
  v2 = objc_alloc_init(AVTStickerImageEncoder);

  return v2;
}

+ (id)stickerCacheWithEnvironment:(id)a3
{
  v3 = a3;
  if (AVTUIStickersCaching())
  {
    if (AVTUIFlushStickersCache())
    {
      v4 = [v3 stickerImageStoreLocation];
      v5 = [v3 logger];
      [AVTImageStore clearContentAtLocation:v4 logger:v5];

      AVTUISetFlushStickersCache();
    }

    v6 = [AVTInMemoryResourceCache alloc];
    v7 = [v3 lockProvider];
    v8 = [v3 logger];
    v9 = [(AVTInMemoryResourceCache *)v6 initWithLockProvider:v7 totalCostLimit:980000 logger:v8];
  }

  else
  {
    v10 = [v3 stickerImageStoreLocation];
    v11 = [v3 logger];
    [AVTImageStore clearContentAtLocation:v10 logger:v11];

    AVTUISetFlushStickersCache();
    v9 = objc_alloc_init(AVTPassThroughResourceCache);
  }

  return v9;
}

+ (BOOL)clearStickersForAvatarRecordIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [v5 coreEnvironment];
  LOBYTE(a1) = [a1 clearStickersForAvatarRecordIdentifier:v4 withEnvironment:v6];

  return a1;
}

+ (BOOL)clearStickersForAvatarRecordIdentifier:(id)a3 withEnvironment:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [AVTImageStore alloc];
  v8 = [v5 stickerImageStoreLocation];
  v9 = [(AVTImageStore *)v7 initWithEnvironment:v5 validateImages:0 location:v8];

  v10 = [AVTAvatarRecordCacheableResource persistentIdentifierPrefixForRecordWithIdentifier:v6];

  LOBYTE(v6) = [(AVTImageStore *)v9 deleteImagesForItemsWithPersistentIdentifierPrefix:v10 error:0];
  return v6;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 stickerGeneratorPool:(id)a4 scheduler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[AVTUIEnvironment defaultEnvironment];
  v12 = [objc_opt_class() stickerCacheWithEnvironment:v11];
  v13 = [v11 backgroundRenderingQueue];
  v14 = [v11 backgroundEncodingQueue];
  v15 = [(AVTUIStickerRenderer *)self initWithAvatarRecord:v10 cache:v12 renderingScheduler:v8 renderingQueue:v13 encodingQueue:v14 stickerGeneratorPool:v9 environment:v11];

  return v15;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 stickerGeneratorPool:(id)a4 scheduler:(id)a5 imageStore:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[AVTUIEnvironment defaultEnvironment];
  v15 = [objc_opt_class() stickerCacheWithEnvironment:v14];
  v16 = [v14 backgroundRenderingQueue];
  v17 = [v14 backgroundEncodingQueue];
  v18 = [(AVTUIStickerRenderer *)self initWithAvatarRecord:v13 avatar:0 cache:v15 imageStore:v10 stickerGeneratorPool:v12 environment:v14 renderingScheduler:v11 renderingQueue:v16 encodingQueue:v17 callbackQueue:MEMORY[0x1E69E96A0]];

  return v18;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 avatar:(id)a4 stickerGeneratorPool:(id)a5 scheduler:(id)a6 imageStore:(id)a7 environment:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [objc_opt_class() stickerCacheWithEnvironment:v14];
  v21 = [v14 backgroundRenderingQueue];
  v22 = [v14 backgroundEncodingQueue];
  v23 = [(AVTUIStickerRenderer *)self initWithAvatarRecord:v19 avatar:v18 cache:v20 imageStore:v15 stickerGeneratorPool:v17 environment:v14 renderingScheduler:v16 renderingQueue:v21 encodingQueue:v22 callbackQueue:MEMORY[0x1E69E96A0]];

  return v23;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 cache:(id)a4 renderingScheduler:(id)a5 renderingQueue:(id)a6 encodingQueue:(id)a7 stickerGeneratorPool:(id)a8 environment:(id)a9
{
  v16 = a9;
  v29 = a8;
  v28 = a7;
  v27 = a6;
  v26 = a5;
  v25 = a4;
  v17 = a3;
  v18 = [objc_opt_class() imageEncoder];
  v19 = [AVTClippableImageStore alloc];
  v20 = [v16 coreEnvironment];
  v21 = [v16 stickerImageStoreLocation];
  v22 = [(AVTImageStore *)v19 initWithEnvironment:v20 validateImages:0 location:v21 encoder:v18];

  v23 = [(AVTUIStickerRenderer *)self initWithAvatarRecord:v17 avatar:0 cache:v25 imageStore:v22 stickerGeneratorPool:v29 environment:v16 renderingScheduler:v26 renderingQueue:v27 encodingQueue:v28 callbackQueue:MEMORY[0x1E69E96A0]];
  return v23;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)a3 avatar:(id)a4 cache:(id)a5 imageStore:(id)a6 stickerGeneratorPool:(id)a7 environment:(id)a8 renderingScheduler:(id)a9 renderingQueue:(id)a10 encodingQueue:(id)a11 callbackQueue:(id)a12
{
  v37 = a3;
  obj = a4;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v29 = a8;
  v18 = a8;
  v32 = a9;
  v31 = a10;
  v19 = a11;
  v20 = a12;
  v38.receiver = self;
  v38.super_class = AVTUIStickerRenderer;
  v21 = [(AVTUIStickerRenderer *)&v38 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_avatarRecord, a3);
    objc_storeStrong(&v22->_avatar, obj);
    objc_storeStrong(&v22->_cache, a5);
    objc_storeStrong(&v22->_stickerGeneratorPool, a7);
    objc_storeStrong(&v22->_imageStore, a6);
    objc_storeStrong(&v22->_environment, v29);
    v23 = [v18 logger];
    logger = v22->_logger;
    v22->_logger = v23;

    objc_storeStrong(&v22->_renderingQueue, a10);
    objc_storeStrong(&v22->_encodingQueue, a11);
    objc_storeStrong(&v22->_renderingScheduler, a9);
    objc_storeStrong(&v22->_callbackQueue, a12);
    *&v22->_parallelizeEncoding = 0;
    v25 = -[AVTAvatarRecordCacheableResource initWithAvatarRecord:includeAvatarData:environment:]([AVTAvatarRecordCacheableResource alloc], "initWithAvatarRecord:includeAvatarData:environment:", v37, [v37 isEditable], v18);
    cacheableResourceItem = v22->_cacheableResourceItem;
    v22->_cacheableResourceItem = v25;
  }

  return v22;
}

- (id)scheduledTaskForItem:(id)a3 scope:(id)a4 queue:(id)a5 renderingHandler:(id)a6 resourceHandler:(id)a7 synchronous:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [(AVTUIStickerRenderer *)self cache];
  if (v8)
  {
    v20 = [AVTResourceCacheSupport resourceFromCache:v19 forItem:v14 scope:v15 preflightCacheMissHandler:0 cacheMissHandler:v17 cacheMissQueue:0 taskScheduler:0 callbackQueue:0 resourceHandler:v18];
  }

  else
  {
    v21 = [(AVTUIStickerRenderer *)self renderingScheduler];
    v22 = [(AVTUIStickerRenderer *)self callbackQueue];
    v20 = [AVTResourceCacheSupport resourceFromCache:v19 forItem:v14 scope:v15 preflightCacheMissHandler:0 cacheMissHandler:v17 cacheMissQueue:v16 taskScheduler:v21 callbackQueue:v22 resourceHandler:v18];
  }

  return v20;
}

- (id)providerForResourceForScope:(id)a3 queue:(id)a4 renderingHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AVTUIStickerRenderer *)self cacheableResourceItem];
  v12 = [(AVTUIStickerRenderer *)self providerForResource:v11 forScope:v10 queue:v9 renderingHandler:v8];

  return v12;
}

- (id)providerForResourceWithAvatarConfiguration:(id)a3 forScope:(id)a4 queue:(id)a5 renderingHandler:(id)a6
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [AVTAggregateCacheableResource alloc];
  v15 = [(AVTUIStickerRenderer *)self cacheableResourceItem];
  v20[0] = v15;
  v20[1] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

  v17 = [(AVTAggregateCacheableResource *)v14 initWithCacheableResources:v16];
  v18 = [(AVTUIStickerRenderer *)self providerForResource:v17 forScope:v12 queue:v11 renderingHandler:v10];

  return v18;
}

- (id)providerForResource:(id)a3 forScope:(id)a4 queue:(id)a5 renderingHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__AVTUIStickerRenderer_providerForResource_forScope_queue_renderingHandler___block_invoke;
  v20[3] = &unk_1E7F3BA28;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = [v20 copy];

  return v18;
}

id __76__AVTUIStickerRenderer_providerForResource_forScope_queue_renderingHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) imageStore];
  if (v6)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) imageStore];
    v9 = [v8 resourceExistsInCacheForItem:*(a1 + 40) scope:*(a1 + 48)];
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__AVTUIStickerRenderer_providerForResource_forScope_queue_renderingHandler___block_invoke_2;
  v18[3] = &unk_1E7F3BA00;
  v21 = v9;
  v20 = v5;
  v18[4] = v10;
  v19 = v12;
  v15 = v5;
  v16 = [v10 scheduledTaskForItem:v11 scope:v12 queue:v13 renderingHandler:v14 resourceHandler:v18 synchronous:v9];

  return v16;
}

void __76__AVTUIStickerRenderer_providerForResource_forScope_queue_renderingHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URL];

  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*(a1 + 56))
    {
      v5 = 1;
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      v5 = *(a1 + 56);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__AVTUIStickerRenderer_providerForResource_forScope_queue_renderingHandler___block_invoke_3;
    v8[3] = &unk_1E7F3B9D8;
    v9 = *(a1 + 48);
    [v6 saveImageForResource:v3 forScope:v7 synchronous:v5 & 1 completionHandler:v8];
  }
}

- (void)saveImageForResource:(id)a3 forScope:(id)a4 synchronous:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__AVTUIStickerRenderer_saveImageForResource_forScope_synchronous_completionHandler___block_invoke;
  v22[3] = &unk_1E7F3ADB0;
  v22[4] = self;
  v13 = v10;
  v23 = v13;
  v14 = v11;
  v24 = v14;
  v15 = MEMORY[0x1BFB0DE80](v22);
  v16 = v15;
  if (v7)
  {
    (*(v15 + 16))(v15);
    v12[2](v12, v13);
  }

  else
  {
    v17 = [(AVTUIStickerRenderer *)self encodingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__AVTUIStickerRenderer_saveImageForResource_forScope_synchronous_completionHandler___block_invoke_2;
    block[3] = &unk_1E7F3BA50;
    v20 = v16;
    block[4] = self;
    v21 = v12;
    v19 = v13;
    dispatch_async(v17, block);
  }
}

void __84__AVTUIStickerRenderer_saveImageForResource_forScope_synchronous_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageStore];

  if (v2)
  {
    v3 = [*(a1 + 32) cacheableResourceItem];
    v4 = [*(a1 + 32) imageStore];
    v5 = [*(a1 + 40) image];
    v6 = *(a1 + 48);
    [*(a1 + 40) clippingRect];
    v10 = 0;
    [v4 saveImage:v5 forItem:v3 scope:v6 clippingRect:&v10 error:?];
    v7 = v10;

    v8 = [*(a1 + 32) imageStore];
    v9 = [v8 resourceURLForItem:v3 scope:*(a1 + 48)];

    [*(a1 + 40) setURL:v9];
  }
}

void __84__AVTUIStickerRenderer_saveImageForResource_forScope_synchronous_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) callbackQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__AVTUIStickerRenderer_saveImageForResource_forScope_synchronous_completionHandler___block_invoke_3;
  v3[3] = &unk_1E7F3A8A8;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

- (id)renderStickerResourceForItem:(id)a3 scope:(id)a4 stickerConfiguration:(id)a5 avatarConfiguration:(id)a6 correctClipping:(BOOL)a7
{
  v59 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v62 = a6;
  v14 = [(AVTUIStickerRenderer *)self imageStore];
  v63 = [v14 resourceURLForItem:v11 scope:v12];

  v15 = [v13 stickerPack];
  v16 = *MEMORY[0x1E698E300];
  v17 = v15 == *MEMORY[0x1E698E300];

  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__8;
  v86 = __Block_byref_object_dispose__8;
  v87 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__8;
  v80 = __Block_byref_object_dispose__8;
  v81 = 0;
  v18 = [(AVTUIStickerRenderer *)self imageStore];
  v19 = (v77 + 5);
  obj = v77[5];
  v20 = [v18 imageForItem:v11 scope:v12 error:&obj];
  objc_storeStrong(v19, obj);

  if (v20)
  {
    v21 = [(AVTUIStickerRenderer *)self imageStore];
    [v21 resourceClippingRectForItem:v11 scope:v12];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [[AVTStickerResource alloc] initWithImage:v20 URL:v63 clippingRect:v23, v25, v27, v29];
    v31 = v83[5];
    v83[5] = v30;

    [v83[5] setPrereleaseSticker:v15 == v16];
  }

  else
  {
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __116__AVTUIStickerRenderer_renderStickerResourceForItem_scope_stickerConfiguration_avatarConfiguration_correctClipping___block_invoke;
    v67[3] = &unk_1E7F3BA78;
    v67[4] = self;
    v72 = &v82;
    v74 = v17;
    v68 = v11;
    v69 = v12;
    v73 = &v76;
    v70 = v63;
    v32 = v13;
    v71 = v32;
    v58 = MEMORY[0x1BFB0DE80](v67);
    v33 = [(AVTUIStickerRenderer *)self stickerGeneratorPool];
    v34 = [(AVTUIStickerRenderer *)self avatarRecord];
    v61 = [v33 dequeueStickerGeneratorForAvatarRecord:v34 needAvatar:{objc_msgSend(v32, "preRendered") ^ 1}];

    v35 = [(AVTUIStickerRenderer *)self avatar];

    if (v62 && v35)
    {
      v36 = [(AVTUIStickerRenderer *)self avatar];
      [v62 applyToAvatar:v36 animated:0];

      v37 = [(AVTUIStickerRenderer *)self avatar];
      [v61 setAvatar:v37];
    }

    [v61 setAsync:0];
    if (v61)
    {
      v38 = [(AVTUIStickerRenderer *)self logger];
      v39 = [v32 name];
      v40 = [(AVTUIStickerRenderer *)self avatarRecord];
      v41 = [v40 description];
      [v38 logRenderingStickerStart:v39 forRecord:v41];

      v42 = [MEMORY[0x1E698E2D0] defaultOptions];
      [v42 setCorrectClipping:v59];
      if ([(AVTUIStickerRenderer *)self usingService])
      {
        v43 = [(AVTUIStickerRenderer *)self environment];
        v57 = [v43 remoteRenderer];
        v56 = v42;

        v44 = dispatch_semaphore_create(0);
        v60 = [(AVTUIStickerRenderer *)self avatarRecord];
        v45 = [v32 stickerPack];
        v46 = [v32 name];
        v47 = v83[5];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __116__AVTUIStickerRenderer_renderStickerResourceForItem_scope_stickerConfiguration_avatarConfiguration_correctClipping___block_invoke_2;
        v64[3] = &unk_1E7F3BAA0;
        v66 = &v82;
        v48 = v44;
        v65 = v48;
        [v57 getStickerAndCacheForAvatarRecord:v60 withStickerPackName:v45 stickerConfigurationName:v46 resource:v47 withReply:v64];

        v49 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v48, v49))
        {
          v50 = [(AVTUIStickerRenderer *)self logger];
          v51 = [v32 name];
          [v50 logTimedOutWaitingForSnapshotInService:v51];
        }

        if (!v83[5])
        {
          v52 = [(AVTUIStickerRenderer *)self logger];
          v53 = [v32 name];
          [v52 logFailedToGenerateStickerInService:v53];
        }

        v42 = v56;
      }

      else
      {
        [v61 stickerImageWithConfiguration:v32 options:v42 completionHandler:v58];
      }
    }
  }

  v54 = v83[5];

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v82, 8);

  return v54;
}

void __116__AVTUIStickerRenderer_renderStickerResourceForItem_scope_stickerConfiguration_avatarConfiguration_correctClipping___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  if (!v13)
  {
    v15 = [*(a1 + 32) logger];
    [v15 logNilImageReturnedFromAVTUIStickerRenderer];
  }

  v16 = [[AVTStickerResource alloc] initWithImage:v13 URL:0 clippingRect:a4, a5, a6, a7];
  v17 = *(*(a1 + 72) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  [*(*(*(a1 + 72) + 8) + 40) setPrereleaseSticker:*(a1 + 88)];
  if (([*(a1 + 32) parallelizeEncoding] & 1) == 0)
  {
    v19 = [*(a1 + 32) imageStore];

    if (v19)
    {
      v20 = [*(a1 + 32) imageStore];
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      [*(*(*(a1 + 72) + 8) + 40) clippingRect];
      v23 = *(*(a1 + 80) + 8);
      obj = *(v23 + 40);
      [v20 saveImage:v13 forItem:v21 scope:v22 clippingRect:&obj error:?];
      objc_storeStrong((v23 + 40), obj);

      [*(*(*(a1 + 72) + 8) + 40) setURL:*(a1 + 56)];
    }
  }

  v24 = [*(a1 + 32) logger];
  v25 = [*(a1 + 64) name];
  [v24 logRenderingStickerEnd:v25];
}

void __116__AVTUIStickerRenderer_renderStickerResourceForItem_scope_stickerConfiguration_avatarConfiguration_correctClipping___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_scheduledTaskForItem:(id)a3 scope:(id)a4 queue:(id)a5 renderWithCompletionHandler:(id)a6 resourceHandler:(id)a7 synchronous:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [(AVTUIStickerRenderer *)self cache];
  if (v8)
  {
    v20 = [AVTResourceCacheSupport resourceFromCache:v19 forItem:v14 scope:v15 preflightCacheMissHandler:0 cacheMissWithCompletionHandler:v17 cacheMissQueue:0 taskScheduler:0 callbackQueue:0 resourceHandler:v18];
  }

  else
  {
    v21 = [(AVTUIStickerRenderer *)self renderingScheduler];
    v22 = [(AVTUIStickerRenderer *)self callbackQueue];
    v20 = [AVTResourceCacheSupport resourceFromCache:v19 forItem:v14 scope:v15 preflightCacheMissHandler:0 cacheMissWithCompletionHandler:v17 cacheMissQueue:v16 taskScheduler:v21 callbackQueue:v22 resourceHandler:v18];
  }

  return v20;
}

- (id)_providerForResource:(id)a3 forScope:(id)a4 queue:(id)a5 renderWithCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__AVTUIStickerRenderer__providerForResource_forScope_queue_renderWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E7F3BA28;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = [v20 copy];

  return v18;
}

id __88__AVTUIStickerRenderer__providerForResource_forScope_queue_renderWithCompletionHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) imageStore];
  if (v6)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) imageStore];
    v9 = [v8 resourceExistsInCacheForItem:*(a1 + 40) scope:*(a1 + 48)];
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__AVTUIStickerRenderer__providerForResource_forScope_queue_renderWithCompletionHandler___block_invoke_2;
  v18[3] = &unk_1E7F3BA00;
  v21 = v9;
  v20 = v5;
  v18[4] = v10;
  v19 = v12;
  v15 = v5;
  v16 = [v10 _scheduledTaskForItem:v11 scope:v12 queue:v13 renderWithCompletionHandler:v14 resourceHandler:v18 synchronous:v9];

  return v16;
}

void __88__AVTUIStickerRenderer__providerForResource_forScope_queue_renderWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 image], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "URL"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    if (*(a1 + 56))
    {
      v8 = 1;
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      v8 = *(a1 + 56);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__AVTUIStickerRenderer__providerForResource_forScope_queue_renderWithCompletionHandler___block_invoke_3;
    v11[3] = &unk_1E7F3B9D8;
    v12 = *(a1 + 48);
    [v9 saveImageForResource:v4 forScope:v10 synchronous:v8 & 1 completionHandler:v11];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)_providerForResourceForScope:(id)a3 queue:(id)a4 renderWithCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AVTUIStickerRenderer *)self cacheableResourceItem];
  v12 = [(AVTUIStickerRenderer *)self _providerForResource:v11 forScope:v10 queue:v9 renderWithCompletionHandler:v8];

  return v12;
}

- (id)_scheduledRemoteImageRendererProviderForStickerConfiguration:(id)a3 correctClipping:(BOOL)a4
{
  v5 = a3;
  v6 = [(AVTUIStickerRenderer *)self renderingQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__AVTUIStickerRenderer__scheduledRemoteImageRendererProviderForStickerConfiguration_correctClipping___block_invoke;
  v10[3] = &unk_1E7F3BAF0;
  v11 = v5;
  v12 = self;
  v7 = v5;
  v8 = [(AVTUIStickerRenderer *)self _providerForResourceForScope:v7 queue:v6 renderWithCompletionHandler:v10];

  return v8;
}

void __101__AVTUIStickerRenderer__scheduledRemoteImageRendererProviderForStickerConfiguration_correctClipping___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v38 = a4;
  v9 = [*(a1 + 32) stickerPack];
  v10 = *MEMORY[0x1E698E300];

  v11 = [*(a1 + 40) imageStore];
  v12 = [v11 resourceURLForItem:v7 scope:v8];

  v13 = [*(a1 + 40) imageStore];
  v42 = 0;
  v14 = [v13 imageForItem:v7 scope:v8 error:&v42];
  v15 = v42;

  if (!v14 || v15)
  {
    v28 = v9 == v10;
    v29 = [AVTStickerResource alloc];
    v26 = [(AVTStickerResource *)v29 initWithImage:0 URL:v12 clippingRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AVTStickerResource *)v26 setPrereleaseSticker:v28];
    v30 = [*(a1 + 40) environment];
    [v30 remoteRenderer];
    v31 = v37 = v12;

    v32 = [*(a1 + 40) avatarRecord];
    v33 = [*(a1 + 32) stickerPack];
    v34 = [*(a1 + 32) name];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __101__AVTUIStickerRenderer__scheduledRemoteImageRendererProviderForStickerConfiguration_correctClipping___block_invoke_2;
    v39[3] = &unk_1E7F3BAC8;
    v36 = *(a1 + 32);
    v35 = v36.i64[0];
    v40 = vextq_s8(v36, v36, 8uLL);
    v27 = v38;
    v41 = v38;
    [v31 getStickerAndCacheForAvatarRecord:v32 withStickerPackName:v33 stickerConfigurationName:v34 resource:v26 withReply:v39];

    v15 = v31;
    v12 = v37;
  }

  else
  {
    v16 = v9 == v10;
    v17 = [*(a1 + 40) imageStore];
    [v17 resourceClippingRectForItem:v7 scope:v8];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [[AVTStickerResource alloc] initWithImage:v14 URL:v12 clippingRect:v19, v21, v23, v25];
    [(AVTStickerResource *)v26 setPrereleaseSticker:v16];
    v27 = v38;
    (*(v38 + 2))(v38, v26);
  }
}

void __101__AVTUIStickerRenderer__scheduledRemoteImageRendererProviderForStickerConfiguration_correctClipping___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v3 = [*(a1 + 32) logger];
    v4 = [*(a1 + 40) name];
    [v3 logFailedToGenerateStickerInService:v4];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)scheduledStickerResourceProviderForStickerConfiguration:(id)a3 usingService:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(AVTUIStickerRenderer *)self setUsingService:v4];
  if (v4)
  {
    [(AVTUIStickerRenderer *)self _scheduledRemoteImageRendererProviderForStickerConfiguration:v6 correctClipping:1];
  }

  else
  {
    [(AVTUIStickerRenderer *)self scheduledStickerResourceProviderForStickerConfiguration:v6 correctClipping:1];
  }
  v7 = ;

  return v7;
}

- (id)scheduledStickerResourceProviderForStickerConfiguration:(id)a3 correctClipping:(BOOL)a4
{
  v6 = a3;
  v7 = [(AVTUIStickerRenderer *)self renderingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__AVTUIStickerRenderer_scheduledStickerResourceProviderForStickerConfiguration_correctClipping___block_invoke;
  v11[3] = &unk_1E7F3BB18;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [(AVTUIStickerRenderer *)self providerForResourceForScope:v8 queue:v7 renderingHandler:v11];

  return v9;
}

- (id)scheduledStickerResourceProviderForThumbnailForModelPreset:(id)a3 presetOverrides:(id)a4 avatarConfiguration:(id)a5 stickerConfiguration:(id)a6 correctClipping:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(AVTUIStickerRenderer *)self avatar];

  if (v16)
  {
    v17 = [AVTPresetImageProvider configurationToRenderForPreset:v12 overrides:v13 baseConfiguration:v14];
    v18 = [(AVTUIStickerRenderer *)self renderingQueue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __156__AVTUIStickerRenderer_scheduledStickerResourceProviderForThumbnailForModelPreset_presetOverrides_avatarConfiguration_stickerConfiguration_correctClipping___block_invoke;
    v22[3] = &unk_1E7F3BB40;
    v22[4] = self;
    v23 = v15;
    v24 = v17;
    v25 = a7;
    v19 = v17;
    v20 = [(AVTUIStickerRenderer *)self providerForResourceWithAvatarConfiguration:v19 forScope:v23 queue:v18 renderingHandler:v22];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)stopUsingResources
{
  v4 = [(AVTUIStickerRenderer *)self stickerGeneratorPool];
  v3 = [(AVTUIStickerRenderer *)self avatarRecord];
  [v4 didStopUsingStickerGeneratorForRecord:v3];
}

@end