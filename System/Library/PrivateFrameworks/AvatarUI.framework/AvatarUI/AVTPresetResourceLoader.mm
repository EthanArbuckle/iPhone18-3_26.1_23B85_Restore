@interface AVTPresetResourceLoader
- (AVTPresetResourceLoader)initWithEnvironment:(id)environment renderingScheduler:(id)scheduler callbackQueue:(id)queue;
- (AVTPresetResourceLoader)initWithPresetCache:(id)cache renderingScheduler:(id)scheduler callbackQueue:(id)queue environment:(id)environment;
- (id)preLoadResourcesForPresetResourcesProvider:(id)provider completionHandler:(id)handler;
- (id)preLoadResourcesForSectionItem:(id)item completionHandler:(id)handler;
- (void)performPresetLoadingForPresetResources:(id)resources task:(id)task;
- (void)performPresetResourcesPreloadingTask:(id)task;
- (void)performSectionItemPreloadingTask:(id)task;
- (void)startPresetPreloadingTask:(id)task;
- (void)startSectionItemPreloadingTask:(id)task;
@end

@implementation AVTPresetResourceLoader

- (AVTPresetResourceLoader)initWithEnvironment:(id)environment renderingScheduler:(id)scheduler callbackQueue:(id)queue
{
  queueCopy = queue;
  schedulerCopy = scheduler;
  environmentCopy = environment;
  v11 = [AVTInMemoryResourceCache alloc];
  lockProvider = [environmentCopy lockProvider];
  logger = [environmentCopy logger];
  v14 = [(AVTInMemoryResourceCache *)v11 initWithLockProvider:lockProvider totalCostLimit:50 logger:logger];

  v15 = [(AVTPresetResourceLoader *)self initWithPresetCache:v14 renderingScheduler:schedulerCopy callbackQueue:queueCopy environment:environmentCopy];
  return v15;
}

- (AVTPresetResourceLoader)initWithPresetCache:(id)cache renderingScheduler:(id)scheduler callbackQueue:(id)queue environment:(id)environment
{
  cacheCopy = cache;
  schedulerCopy = scheduler;
  queueCopy = queue;
  environmentCopy = environment;
  v25.receiver = self;
  v25.super_class = AVTPresetResourceLoader;
  v15 = [(AVTPresetResourceLoader *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_environment, environment);
    objc_storeStrong(&v16->_presetCache, cache);
    inMemoryImageCache = [environmentCopy inMemoryImageCache];
    inMemoryImageCache = v16->_inMemoryImageCache;
    v16->_inMemoryImageCache = inMemoryImageCache;

    serialQueueProvider = [environmentCopy serialQueueProvider];
    v20 = (serialQueueProvider)[2](serialQueueProvider, "com.apple.AvatarUI.AVTPresetResourceLoader.workQueue");
    workQueue = v16->_workQueue;
    v16->_workQueue = v20;

    logger = [environmentCopy logger];
    logger = v16->_logger;
    v16->_logger = logger;

    objc_storeStrong(&v16->_renderingScheduler, scheduler);
    objc_storeStrong(&v16->_callbackQueue, queue);
  }

  return v16;
}

- (id)preLoadResourcesForSectionItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  v8 = [[AVTSectionItemLoadingTask alloc] initWithSectionItem:itemCopy completionHandler:handlerCopy];

  [(AVTPresetResourceLoader *)self startSectionItemPreloadingTask:v8];

  return v8;
}

- (void)startSectionItemPreloadingTask:(id)task
{
  taskCopy = task;
  workQueue = [(AVTPresetResourceLoader *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AVTPresetResourceLoader_startSectionItemPreloadingTask___block_invoke;
  v7[3] = &unk_1E7F3AD60;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __58__AVTPresetResourceLoader_startSectionItemPreloadingTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [*(a1 + 40) description];
  [v2 logStartingPreLoadingTask:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 performSectionItemPreloadingTask:v5];
}

- (void)performSectionItemPreloadingTask:(id)task
{
  taskCopy = task;
  if (([taskCopy isCanceled] & 1) == 0)
  {
    sectionItem = [taskCopy sectionItem];
    presetResourcesProvider = [sectionItem presetResourcesProvider];
    v7 = presetResourcesProvider[2]();
    [(AVTPresetResourceLoader *)self performPresetLoadingForPresetResources:v7 task:taskCopy];

    if (([taskCopy isCanceled] & 1) == 0)
    {
      logger = [(AVTPresetResourceLoader *)self logger];
      v9 = objc_autoreleasePoolPush();
      sectionItem2 = [taskCopy sectionItem];
      stickerResourceProvider = [sectionItem2 stickerResourceProvider];

      sectionItem3 = [taskCopy sectionItem];
      v13 = sectionItem3;
      if (stickerResourceProvider)
      {
        stickerResourceProvider2 = [sectionItem3 stickerResourceProvider];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __60__AVTPresetResourceLoader_performSectionItemPreloadingTask___block_invoke;
        v25[3] = &unk_1E7F3BF68;
        v15 = &v26;
        v26 = logger;
        v16 = &v27;
        v27 = taskCopy;
        (stickerResourceProvider2)[2](stickerResourceProvider2, v25, 0);
      }

      else
      {
        stickerResourceProvider2 = [sectionItem3 thumbnailProvider];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __60__AVTPresetResourceLoader_performSectionItemPreloadingTask___block_invoke_2;
        v22[3] = &unk_1E7F3BF90;
        v15 = &v23;
        v23 = logger;
        v16 = &v24;
        v24 = taskCopy;
        (stickerResourceProvider2)[2](stickerResourceProvider2, v22, 0);
      }
      v17 = ;

      renderingScheduler = [(AVTPresetResourceLoader *)self renderingScheduler];
      [renderingScheduler lowerTaskPriority:v17];

      objc_autoreleasePoolPop(v9);
      if (([taskCopy isCanceled] & 1) == 0)
      {
        callbackQueue = [(AVTPresetResourceLoader *)self callbackQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__AVTPresetResourceLoader_performSectionItemPreloadingTask___block_invoke_3;
        block[3] = &unk_1E7F3A9B8;
        v21 = taskCopy;
        dispatch_async(callbackQueue, block);
      }
    }
  }
}

void __60__AVTPresetResourceLoader_performSectionItemPreloadingTask___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) description];
  [v1 logDonePreLoadingThumbnailForPreLoadingTask:v2];
}

void __60__AVTPresetResourceLoader_performSectionItemPreloadingTask___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) description];
  [v1 logDonePreLoadingThumbnailForPreLoadingTask:v2];
}

void __60__AVTPresetResourceLoader_performSectionItemPreloadingTask___block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v2 = [*(a1 + 32) completionHandler];
    v2[2](v2, *(a1 + 32));
  }
}

- (id)preLoadResourcesForPresetResourcesProvider:(id)provider completionHandler:(id)handler
{
  handlerCopy = handler;
  providerCopy = provider;
  v8 = [AVTPresetResourcesLoadingTask alloc];
  representedAVTPresetResources = [providerCopy representedAVTPresetResources];

  v10 = [(AVTPresetResourcesLoadingTask *)v8 initWithPresetResources:representedAVTPresetResources completionHandler:handlerCopy];
  [(AVTPresetResourceLoader *)self startPresetPreloadingTask:v10];

  return v10;
}

- (void)startPresetPreloadingTask:(id)task
{
  taskCopy = task;
  logger = [(AVTPresetResourceLoader *)self logger];
  v6 = [taskCopy description];
  [logger logStartingPreLoadingTask:v6];

  workQueue = [(AVTPresetResourceLoader *)self workQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__AVTPresetResourceLoader_startPresetPreloadingTask___block_invoke;
  v9[3] = &unk_1E7F3AD60;
  v9[4] = self;
  v10 = taskCopy;
  v8 = taskCopy;
  dispatch_async(workQueue, v9);
}

- (void)performPresetResourcesPreloadingTask:(id)task
{
  v18 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  if (([taskCopy isCanceled] & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    presetResources = [taskCopy presetResources];
    v6 = [presetResources countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(presetResources);
        }

        [(AVTPresetResourceLoader *)self performPresetLoadingForPresetResources:*(*(&v13 + 1) + 8 * v9) task:taskCopy];
        if ([taskCopy isCanceled])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [presetResources countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      callbackQueue = [(AVTPresetResourceLoader *)self callbackQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__AVTPresetResourceLoader_performPresetResourcesPreloadingTask___block_invoke;
      block[3] = &unk_1E7F3A9B8;
      v12 = taskCopy;
      dispatch_async(callbackQueue, block);

      presetResources = v12;
    }
  }
}

void __64__AVTPresetResourceLoader_performPresetResourcesPreloadingTask___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v2 = [*(a1 + 32) completionHandler];
    v2[2](v2, *(a1 + 32));
  }
}

- (void)performPresetLoadingForPresetResources:(id)resources task:(id)task
{
  resourcesCopy = resources;
  taskCopy = task;
  v8 = objc_autoreleasePoolPush();
  logger = [(AVTPresetResourceLoader *)self logger];
  v10 = [resourcesCopy volatileIdentifierForScope:0];
  v11 = [taskCopy description];
  [logger logLookingUpPreLoadedPreset:v10 task:v11];

  presetCache = [(AVTPresetResourceLoader *)self presetCache];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__AVTPresetResourceLoader_performPresetLoadingForPresetResources_task___block_invoke;
  v16[3] = &unk_1E7F3BFB8;
  v16[4] = self;
  v13 = resourcesCopy;
  v17 = v13;
  v14 = taskCopy;
  v18 = v14;
  v15 = [presetCache resourceForItem:v13 scope:0 cacheMissHandler:v16];

  objc_autoreleasePoolPop(v8);
}

id __71__AVTPresetResourceLoader_performPresetLoadingForPresetResources_task___block_invoke(id *a1)
{
  v2 = [a1[4] logger];
  v3 = [a1[5] volatileIdentifierForScope:0];
  v4 = [a1[6] description];
  [v2 logPreLoadingPreset:v3 task:v4];

  v5 = [a1[5] resources];
  v6 = [a1[4] logger];
  v7 = [a1[5] volatileIdentifierForScope:0];
  v8 = [a1[6] description];
  [v6 logDonePreLoadingPreset:v7 task:v8];

  return v5;
}

@end