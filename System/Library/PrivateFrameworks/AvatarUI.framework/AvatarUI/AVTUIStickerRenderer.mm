@interface AVTUIStickerRenderer
+ (BOOL)clearStickersForAvatarRecordIdentifier:(id)identifier;
+ (BOOL)clearStickersForAvatarRecordIdentifier:(id)identifier withEnvironment:(id)environment;
+ (id)imageEncoder;
+ (id)stickerCacheWithEnvironment:(id)environment;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record avatar:(id)avatar cache:(id)cache imageStore:(id)store stickerGeneratorPool:(id)pool environment:(id)environment renderingScheduler:(id)scheduler renderingQueue:(id)self0 encodingQueue:(id)self1 callbackQueue:(id)self2;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record avatar:(id)avatar stickerGeneratorPool:(id)pool scheduler:(id)scheduler imageStore:(id)store environment:(id)environment;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record cache:(id)cache renderingScheduler:(id)scheduler renderingQueue:(id)queue encodingQueue:(id)encodingQueue stickerGeneratorPool:(id)pool environment:(id)environment;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record stickerGeneratorPool:(id)pool scheduler:(id)scheduler;
- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record stickerGeneratorPool:(id)pool scheduler:(id)scheduler imageStore:(id)store;
- (id)_providerForResource:(id)resource forScope:(id)scope queue:(id)queue renderWithCompletionHandler:(id)handler;
- (id)_providerForResourceForScope:(id)scope queue:(id)queue renderWithCompletionHandler:(id)handler;
- (id)_scheduledRemoteImageRendererProviderForStickerConfiguration:(id)configuration correctClipping:(BOOL)clipping;
- (id)_scheduledTaskForItem:(id)item scope:(id)scope queue:(id)queue renderWithCompletionHandler:(id)handler resourceHandler:(id)resourceHandler synchronous:(BOOL)synchronous;
- (id)providerForResource:(id)resource forScope:(id)scope queue:(id)queue renderingHandler:(id)handler;
- (id)providerForResourceForScope:(id)scope queue:(id)queue renderingHandler:(id)handler;
- (id)providerForResourceWithAvatarConfiguration:(id)configuration forScope:(id)scope queue:(id)queue renderingHandler:(id)handler;
- (id)renderStickerResourceForItem:(id)item scope:(id)scope stickerConfiguration:(id)configuration avatarConfiguration:(id)avatarConfiguration correctClipping:(BOOL)clipping;
- (id)scheduledStickerResourceProviderForStickerConfiguration:(id)configuration correctClipping:(BOOL)clipping;
- (id)scheduledStickerResourceProviderForStickerConfiguration:(id)configuration usingService:(BOOL)service;
- (id)scheduledStickerResourceProviderForThumbnailForModelPreset:(id)preset presetOverrides:(id)overrides avatarConfiguration:(id)configuration stickerConfiguration:(id)stickerConfiguration correctClipping:(BOOL)clipping;
- (id)scheduledTaskForItem:(id)item scope:(id)scope queue:(id)queue renderingHandler:(id)handler resourceHandler:(id)resourceHandler synchronous:(BOOL)synchronous;
- (void)saveImageForResource:(id)resource forScope:(id)scope synchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)stopUsingResources;
@end

@implementation AVTUIStickerRenderer

+ (id)imageEncoder
{
  v2 = objc_alloc_init(AVTStickerImageEncoder);

  return v2;
}

+ (id)stickerCacheWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if (AVTUIStickersCaching())
  {
    if (AVTUIFlushStickersCache())
    {
      stickerImageStoreLocation = [environmentCopy stickerImageStoreLocation];
      logger = [environmentCopy logger];
      [AVTImageStore clearContentAtLocation:stickerImageStoreLocation logger:logger];

      AVTUISetFlushStickersCache();
    }

    v6 = [AVTInMemoryResourceCache alloc];
    lockProvider = [environmentCopy lockProvider];
    logger2 = [environmentCopy logger];
    v9 = [(AVTInMemoryResourceCache *)v6 initWithLockProvider:lockProvider totalCostLimit:980000 logger:logger2];
  }

  else
  {
    stickerImageStoreLocation2 = [environmentCopy stickerImageStoreLocation];
    logger3 = [environmentCopy logger];
    [AVTImageStore clearContentAtLocation:stickerImageStoreLocation2 logger:logger3];

    AVTUISetFlushStickersCache();
    v9 = objc_alloc_init(AVTPassThroughResourceCache);
  }

  return v9;
}

+ (BOOL)clearStickersForAvatarRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  coreEnvironment = [v5 coreEnvironment];
  LOBYTE(self) = [self clearStickersForAvatarRecordIdentifier:identifierCopy withEnvironment:coreEnvironment];

  return self;
}

+ (BOOL)clearStickersForAvatarRecordIdentifier:(id)identifier withEnvironment:(id)environment
{
  environmentCopy = environment;
  identifierCopy = identifier;
  v7 = [AVTImageStore alloc];
  stickerImageStoreLocation = [environmentCopy stickerImageStoreLocation];
  v9 = [(AVTImageStore *)v7 initWithEnvironment:environmentCopy validateImages:0 location:stickerImageStoreLocation];

  v10 = [AVTAvatarRecordCacheableResource persistentIdentifierPrefixForRecordWithIdentifier:identifierCopy];

  LOBYTE(identifierCopy) = [(AVTImageStore *)v9 deleteImagesForItemsWithPersistentIdentifierPrefix:v10 error:0];
  return identifierCopy;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record stickerGeneratorPool:(id)pool scheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  poolCopy = pool;
  recordCopy = record;
  v11 = +[AVTUIEnvironment defaultEnvironment];
  v12 = [objc_opt_class() stickerCacheWithEnvironment:v11];
  backgroundRenderingQueue = [v11 backgroundRenderingQueue];
  backgroundEncodingQueue = [v11 backgroundEncodingQueue];
  v15 = [(AVTUIStickerRenderer *)self initWithAvatarRecord:recordCopy cache:v12 renderingScheduler:schedulerCopy renderingQueue:backgroundRenderingQueue encodingQueue:backgroundEncodingQueue stickerGeneratorPool:poolCopy environment:v11];

  return v15;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record stickerGeneratorPool:(id)pool scheduler:(id)scheduler imageStore:(id)store
{
  storeCopy = store;
  schedulerCopy = scheduler;
  poolCopy = pool;
  recordCopy = record;
  v14 = +[AVTUIEnvironment defaultEnvironment];
  v15 = [objc_opt_class() stickerCacheWithEnvironment:v14];
  backgroundRenderingQueue = [v14 backgroundRenderingQueue];
  backgroundEncodingQueue = [v14 backgroundEncodingQueue];
  v18 = [(AVTUIStickerRenderer *)self initWithAvatarRecord:recordCopy avatar:0 cache:v15 imageStore:storeCopy stickerGeneratorPool:poolCopy environment:v14 renderingScheduler:schedulerCopy renderingQueue:backgroundRenderingQueue encodingQueue:backgroundEncodingQueue callbackQueue:MEMORY[0x1E69E96A0]];

  return v18;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record avatar:(id)avatar stickerGeneratorPool:(id)pool scheduler:(id)scheduler imageStore:(id)store environment:(id)environment
{
  environmentCopy = environment;
  storeCopy = store;
  schedulerCopy = scheduler;
  poolCopy = pool;
  avatarCopy = avatar;
  recordCopy = record;
  v20 = [objc_opt_class() stickerCacheWithEnvironment:environmentCopy];
  backgroundRenderingQueue = [environmentCopy backgroundRenderingQueue];
  backgroundEncodingQueue = [environmentCopy backgroundEncodingQueue];
  v23 = [(AVTUIStickerRenderer *)self initWithAvatarRecord:recordCopy avatar:avatarCopy cache:v20 imageStore:storeCopy stickerGeneratorPool:poolCopy environment:environmentCopy renderingScheduler:schedulerCopy renderingQueue:backgroundRenderingQueue encodingQueue:backgroundEncodingQueue callbackQueue:MEMORY[0x1E69E96A0]];

  return v23;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record cache:(id)cache renderingScheduler:(id)scheduler renderingQueue:(id)queue encodingQueue:(id)encodingQueue stickerGeneratorPool:(id)pool environment:(id)environment
{
  environmentCopy = environment;
  poolCopy = pool;
  encodingQueueCopy = encodingQueue;
  queueCopy = queue;
  schedulerCopy = scheduler;
  cacheCopy = cache;
  recordCopy = record;
  imageEncoder = [objc_opt_class() imageEncoder];
  v19 = [AVTClippableImageStore alloc];
  coreEnvironment = [environmentCopy coreEnvironment];
  stickerImageStoreLocation = [environmentCopy stickerImageStoreLocation];
  v22 = [(AVTImageStore *)v19 initWithEnvironment:coreEnvironment validateImages:0 location:stickerImageStoreLocation encoder:imageEncoder];

  v23 = [(AVTUIStickerRenderer *)self initWithAvatarRecord:recordCopy avatar:0 cache:cacheCopy imageStore:v22 stickerGeneratorPool:poolCopy environment:environmentCopy renderingScheduler:schedulerCopy renderingQueue:queueCopy encodingQueue:encodingQueueCopy callbackQueue:MEMORY[0x1E69E96A0]];
  return v23;
}

- (AVTUIStickerRenderer)initWithAvatarRecord:(id)record avatar:(id)avatar cache:(id)cache imageStore:(id)store stickerGeneratorPool:(id)pool environment:(id)environment renderingScheduler:(id)scheduler renderingQueue:(id)self0 encodingQueue:(id)self1 callbackQueue:(id)self2
{
  recordCopy = record;
  obj = avatar;
  avatarCopy = avatar;
  cacheCopy = cache;
  storeCopy = store;
  poolCopy = pool;
  environmentCopy = environment;
  environmentCopy2 = environment;
  schedulerCopy = scheduler;
  queueCopy = queue;
  encodingQueueCopy = encodingQueue;
  callbackQueueCopy = callbackQueue;
  v38.receiver = self;
  v38.super_class = AVTUIStickerRenderer;
  v21 = [(AVTUIStickerRenderer *)&v38 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_avatarRecord, record);
    objc_storeStrong(&v22->_avatar, obj);
    objc_storeStrong(&v22->_cache, cache);
    objc_storeStrong(&v22->_stickerGeneratorPool, pool);
    objc_storeStrong(&v22->_imageStore, store);
    objc_storeStrong(&v22->_environment, environmentCopy);
    logger = [environmentCopy2 logger];
    logger = v22->_logger;
    v22->_logger = logger;

    objc_storeStrong(&v22->_renderingQueue, queue);
    objc_storeStrong(&v22->_encodingQueue, encodingQueue);
    objc_storeStrong(&v22->_renderingScheduler, scheduler);
    objc_storeStrong(&v22->_callbackQueue, callbackQueue);
    *&v22->_parallelizeEncoding = 0;
    v25 = -[AVTAvatarRecordCacheableResource initWithAvatarRecord:includeAvatarData:environment:]([AVTAvatarRecordCacheableResource alloc], "initWithAvatarRecord:includeAvatarData:environment:", recordCopy, [recordCopy isEditable], environmentCopy2);
    cacheableResourceItem = v22->_cacheableResourceItem;
    v22->_cacheableResourceItem = v25;
  }

  return v22;
}

- (id)scheduledTaskForItem:(id)item scope:(id)scope queue:(id)queue renderingHandler:(id)handler resourceHandler:(id)resourceHandler synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  itemCopy = item;
  scopeCopy = scope;
  queueCopy = queue;
  handlerCopy = handler;
  resourceHandlerCopy = resourceHandler;
  cache = [(AVTUIStickerRenderer *)self cache];
  if (synchronousCopy)
  {
    v20 = [AVTResourceCacheSupport resourceFromCache:cache forItem:itemCopy scope:scopeCopy preflightCacheMissHandler:0 cacheMissHandler:handlerCopy cacheMissQueue:0 taskScheduler:0 callbackQueue:0 resourceHandler:resourceHandlerCopy];
  }

  else
  {
    renderingScheduler = [(AVTUIStickerRenderer *)self renderingScheduler];
    callbackQueue = [(AVTUIStickerRenderer *)self callbackQueue];
    v20 = [AVTResourceCacheSupport resourceFromCache:cache forItem:itemCopy scope:scopeCopy preflightCacheMissHandler:0 cacheMissHandler:handlerCopy cacheMissQueue:queueCopy taskScheduler:renderingScheduler callbackQueue:callbackQueue resourceHandler:resourceHandlerCopy];
  }

  return v20;
}

- (id)providerForResourceForScope:(id)scope queue:(id)queue renderingHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  scopeCopy = scope;
  cacheableResourceItem = [(AVTUIStickerRenderer *)self cacheableResourceItem];
  v12 = [(AVTUIStickerRenderer *)self providerForResource:cacheableResourceItem forScope:scopeCopy queue:queueCopy renderingHandler:handlerCopy];

  return v12;
}

- (id)providerForResourceWithAvatarConfiguration:(id)configuration forScope:(id)scope queue:(id)queue renderingHandler:(id)handler
{
  v20[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  queueCopy = queue;
  scopeCopy = scope;
  configurationCopy = configuration;
  v14 = [AVTAggregateCacheableResource alloc];
  cacheableResourceItem = [(AVTUIStickerRenderer *)self cacheableResourceItem];
  v20[0] = cacheableResourceItem;
  v20[1] = configurationCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

  v17 = [(AVTAggregateCacheableResource *)v14 initWithCacheableResources:v16];
  v18 = [(AVTUIStickerRenderer *)self providerForResource:v17 forScope:scopeCopy queue:queueCopy renderingHandler:handlerCopy];

  return v18;
}

- (id)providerForResource:(id)resource forScope:(id)scope queue:(id)queue renderingHandler:(id)handler
{
  resourceCopy = resource;
  scopeCopy = scope;
  queueCopy = queue;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__AVTUIStickerRenderer_providerForResource_forScope_queue_renderingHandler___block_invoke;
  v20[3] = &unk_1E7F3BA28;
  v20[4] = self;
  v21 = resourceCopy;
  v22 = scopeCopy;
  v23 = queueCopy;
  v24 = handlerCopy;
  v14 = handlerCopy;
  v15 = queueCopy;
  v16 = scopeCopy;
  v17 = resourceCopy;
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

- (void)saveImageForResource:(id)resource forScope:(id)scope synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  resourceCopy = resource;
  scopeCopy = scope;
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__AVTUIStickerRenderer_saveImageForResource_forScope_synchronous_completionHandler___block_invoke;
  v22[3] = &unk_1E7F3ADB0;
  v22[4] = self;
  v13 = resourceCopy;
  v23 = v13;
  v14 = scopeCopy;
  v24 = v14;
  v15 = MEMORY[0x1BFB0DE80](v22);
  v16 = v15;
  if (synchronousCopy)
  {
    (*(v15 + 16))(v15);
    handlerCopy[2](handlerCopy, v13);
  }

  else
  {
    encodingQueue = [(AVTUIStickerRenderer *)self encodingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__AVTUIStickerRenderer_saveImageForResource_forScope_synchronous_completionHandler___block_invoke_2;
    block[3] = &unk_1E7F3BA50;
    v20 = v16;
    block[4] = self;
    v21 = handlerCopy;
    v19 = v13;
    dispatch_async(encodingQueue, block);
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

- (id)renderStickerResourceForItem:(id)item scope:(id)scope stickerConfiguration:(id)configuration avatarConfiguration:(id)avatarConfiguration correctClipping:(BOOL)clipping
{
  clippingCopy = clipping;
  itemCopy = item;
  scopeCopy = scope;
  configurationCopy = configuration;
  avatarConfigurationCopy = avatarConfiguration;
  imageStore = [(AVTUIStickerRenderer *)self imageStore];
  v63 = [imageStore resourceURLForItem:itemCopy scope:scopeCopy];

  stickerPack = [configurationCopy stickerPack];
  v16 = *MEMORY[0x1E698E300];
  v17 = stickerPack == *MEMORY[0x1E698E300];

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
  imageStore2 = [(AVTUIStickerRenderer *)self imageStore];
  v19 = (v77 + 5);
  obj = v77[5];
  v20 = [imageStore2 imageForItem:itemCopy scope:scopeCopy error:&obj];
  objc_storeStrong(v19, obj);

  if (v20)
  {
    imageStore3 = [(AVTUIStickerRenderer *)self imageStore];
    [imageStore3 resourceClippingRectForItem:itemCopy scope:scopeCopy];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [[AVTStickerResource alloc] initWithImage:v20 URL:v63 clippingRect:v23, v25, v27, v29];
    v31 = v83[5];
    v83[5] = v30;

    [v83[5] setPrereleaseSticker:stickerPack == v16];
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
    v68 = itemCopy;
    v69 = scopeCopy;
    v73 = &v76;
    v70 = v63;
    v32 = configurationCopy;
    v71 = v32;
    v58 = MEMORY[0x1BFB0DE80](v67);
    stickerGeneratorPool = [(AVTUIStickerRenderer *)self stickerGeneratorPool];
    avatarRecord = [(AVTUIStickerRenderer *)self avatarRecord];
    v61 = [stickerGeneratorPool dequeueStickerGeneratorForAvatarRecord:avatarRecord needAvatar:{objc_msgSend(v32, "preRendered") ^ 1}];

    avatar = [(AVTUIStickerRenderer *)self avatar];

    if (avatarConfigurationCopy && avatar)
    {
      avatar2 = [(AVTUIStickerRenderer *)self avatar];
      [avatarConfigurationCopy applyToAvatar:avatar2 animated:0];

      avatar3 = [(AVTUIStickerRenderer *)self avatar];
      [v61 setAvatar:avatar3];
    }

    [v61 setAsync:0];
    if (v61)
    {
      logger = [(AVTUIStickerRenderer *)self logger];
      name = [v32 name];
      avatarRecord2 = [(AVTUIStickerRenderer *)self avatarRecord];
      v41 = [avatarRecord2 description];
      [logger logRenderingStickerStart:name forRecord:v41];

      defaultOptions = [MEMORY[0x1E698E2D0] defaultOptions];
      [defaultOptions setCorrectClipping:clippingCopy];
      if ([(AVTUIStickerRenderer *)self usingService])
      {
        environment = [(AVTUIStickerRenderer *)self environment];
        remoteRenderer = [environment remoteRenderer];
        v56 = defaultOptions;

        v44 = dispatch_semaphore_create(0);
        avatarRecord3 = [(AVTUIStickerRenderer *)self avatarRecord];
        stickerPack2 = [v32 stickerPack];
        name2 = [v32 name];
        v47 = v83[5];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __116__AVTUIStickerRenderer_renderStickerResourceForItem_scope_stickerConfiguration_avatarConfiguration_correctClipping___block_invoke_2;
        v64[3] = &unk_1E7F3BAA0;
        v66 = &v82;
        v48 = v44;
        v65 = v48;
        [remoteRenderer getStickerAndCacheForAvatarRecord:avatarRecord3 withStickerPackName:stickerPack2 stickerConfigurationName:name2 resource:v47 withReply:v64];

        v49 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v48, v49))
        {
          logger2 = [(AVTUIStickerRenderer *)self logger];
          name3 = [v32 name];
          [logger2 logTimedOutWaitingForSnapshotInService:name3];
        }

        if (!v83[5])
        {
          logger3 = [(AVTUIStickerRenderer *)self logger];
          name4 = [v32 name];
          [logger3 logFailedToGenerateStickerInService:name4];
        }

        defaultOptions = v56;
      }

      else
      {
        [v61 stickerImageWithConfiguration:v32 options:defaultOptions completionHandler:v58];
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

- (id)_scheduledTaskForItem:(id)item scope:(id)scope queue:(id)queue renderWithCompletionHandler:(id)handler resourceHandler:(id)resourceHandler synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  itemCopy = item;
  scopeCopy = scope;
  queueCopy = queue;
  handlerCopy = handler;
  resourceHandlerCopy = resourceHandler;
  cache = [(AVTUIStickerRenderer *)self cache];
  if (synchronousCopy)
  {
    v20 = [AVTResourceCacheSupport resourceFromCache:cache forItem:itemCopy scope:scopeCopy preflightCacheMissHandler:0 cacheMissWithCompletionHandler:handlerCopy cacheMissQueue:0 taskScheduler:0 callbackQueue:0 resourceHandler:resourceHandlerCopy];
  }

  else
  {
    renderingScheduler = [(AVTUIStickerRenderer *)self renderingScheduler];
    callbackQueue = [(AVTUIStickerRenderer *)self callbackQueue];
    v20 = [AVTResourceCacheSupport resourceFromCache:cache forItem:itemCopy scope:scopeCopy preflightCacheMissHandler:0 cacheMissWithCompletionHandler:handlerCopy cacheMissQueue:queueCopy taskScheduler:renderingScheduler callbackQueue:callbackQueue resourceHandler:resourceHandlerCopy];
  }

  return v20;
}

- (id)_providerForResource:(id)resource forScope:(id)scope queue:(id)queue renderWithCompletionHandler:(id)handler
{
  resourceCopy = resource;
  scopeCopy = scope;
  queueCopy = queue;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__AVTUIStickerRenderer__providerForResource_forScope_queue_renderWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E7F3BA28;
  v20[4] = self;
  v21 = resourceCopy;
  v22 = scopeCopy;
  v23 = queueCopy;
  v24 = handlerCopy;
  v14 = handlerCopy;
  v15 = queueCopy;
  v16 = scopeCopy;
  v17 = resourceCopy;
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

- (id)_providerForResourceForScope:(id)scope queue:(id)queue renderWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  scopeCopy = scope;
  cacheableResourceItem = [(AVTUIStickerRenderer *)self cacheableResourceItem];
  v12 = [(AVTUIStickerRenderer *)self _providerForResource:cacheableResourceItem forScope:scopeCopy queue:queueCopy renderWithCompletionHandler:handlerCopy];

  return v12;
}

- (id)_scheduledRemoteImageRendererProviderForStickerConfiguration:(id)configuration correctClipping:(BOOL)clipping
{
  configurationCopy = configuration;
  renderingQueue = [(AVTUIStickerRenderer *)self renderingQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__AVTUIStickerRenderer__scheduledRemoteImageRendererProviderForStickerConfiguration_correctClipping___block_invoke;
  v10[3] = &unk_1E7F3BAF0;
  v11 = configurationCopy;
  selfCopy = self;
  v7 = configurationCopy;
  v8 = [(AVTUIStickerRenderer *)self _providerForResourceForScope:v7 queue:renderingQueue renderWithCompletionHandler:v10];

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

- (id)scheduledStickerResourceProviderForStickerConfiguration:(id)configuration usingService:(BOOL)service
{
  serviceCopy = service;
  configurationCopy = configuration;
  [(AVTUIStickerRenderer *)self setUsingService:serviceCopy];
  if (serviceCopy)
  {
    [(AVTUIStickerRenderer *)self _scheduledRemoteImageRendererProviderForStickerConfiguration:configurationCopy correctClipping:1];
  }

  else
  {
    [(AVTUIStickerRenderer *)self scheduledStickerResourceProviderForStickerConfiguration:configurationCopy correctClipping:1];
  }
  v7 = ;

  return v7;
}

- (id)scheduledStickerResourceProviderForStickerConfiguration:(id)configuration correctClipping:(BOOL)clipping
{
  configurationCopy = configuration;
  renderingQueue = [(AVTUIStickerRenderer *)self renderingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__AVTUIStickerRenderer_scheduledStickerResourceProviderForStickerConfiguration_correctClipping___block_invoke;
  v11[3] = &unk_1E7F3BB18;
  v11[4] = self;
  v12 = configurationCopy;
  clippingCopy = clipping;
  v8 = configurationCopy;
  v9 = [(AVTUIStickerRenderer *)self providerForResourceForScope:v8 queue:renderingQueue renderingHandler:v11];

  return v9;
}

- (id)scheduledStickerResourceProviderForThumbnailForModelPreset:(id)preset presetOverrides:(id)overrides avatarConfiguration:(id)configuration stickerConfiguration:(id)stickerConfiguration correctClipping:(BOOL)clipping
{
  presetCopy = preset;
  overridesCopy = overrides;
  configurationCopy = configuration;
  stickerConfigurationCopy = stickerConfiguration;
  avatar = [(AVTUIStickerRenderer *)self avatar];

  if (avatar)
  {
    v17 = [AVTPresetImageProvider configurationToRenderForPreset:presetCopy overrides:overridesCopy baseConfiguration:configurationCopy];
    renderingQueue = [(AVTUIStickerRenderer *)self renderingQueue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __156__AVTUIStickerRenderer_scheduledStickerResourceProviderForThumbnailForModelPreset_presetOverrides_avatarConfiguration_stickerConfiguration_correctClipping___block_invoke;
    v22[3] = &unk_1E7F3BB40;
    v22[4] = self;
    v23 = stickerConfigurationCopy;
    v24 = v17;
    clippingCopy = clipping;
    v19 = v17;
    v20 = [(AVTUIStickerRenderer *)self providerForResourceWithAvatarConfiguration:v19 forScope:v23 queue:renderingQueue renderingHandler:v22];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)stopUsingResources
{
  stickerGeneratorPool = [(AVTUIStickerRenderer *)self stickerGeneratorPool];
  avatarRecord = [(AVTUIStickerRenderer *)self avatarRecord];
  [stickerGeneratorPool didStopUsingStickerGeneratorForRecord:avatarRecord];
}

@end