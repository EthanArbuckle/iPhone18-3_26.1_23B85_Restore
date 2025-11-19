@interface AVTPresetResourceLoader
- (AVTPresetResourceLoader)initWithEnvironment:(id)a3 renderingScheduler:(id)a4 callbackQueue:(id)a5;
- (AVTPresetResourceLoader)initWithPresetCache:(id)a3 renderingScheduler:(id)a4 callbackQueue:(id)a5 environment:(id)a6;
- (id)preLoadResourcesForPresetResourcesProvider:(id)a3 completionHandler:(id)a4;
- (id)preLoadResourcesForSectionItem:(id)a3 completionHandler:(id)a4;
- (void)performPresetLoadingForPresetResources:(id)a3 task:(id)a4;
- (void)performPresetResourcesPreloadingTask:(id)a3;
- (void)performSectionItemPreloadingTask:(id)a3;
- (void)startPresetPreloadingTask:(id)a3;
- (void)startSectionItemPreloadingTask:(id)a3;
@end

@implementation AVTPresetResourceLoader

- (AVTPresetResourceLoader)initWithEnvironment:(id)a3 renderingScheduler:(id)a4 callbackQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [AVTInMemoryResourceCache alloc];
  v12 = [v10 lockProvider];
  v13 = [v10 logger];
  v14 = [(AVTInMemoryResourceCache *)v11 initWithLockProvider:v12 totalCostLimit:50 logger:v13];

  v15 = [(AVTPresetResourceLoader *)self initWithPresetCache:v14 renderingScheduler:v9 callbackQueue:v8 environment:v10];
  return v15;
}

- (AVTPresetResourceLoader)initWithPresetCache:(id)a3 renderingScheduler:(id)a4 callbackQueue:(id)a5 environment:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = AVTPresetResourceLoader;
  v15 = [(AVTPresetResourceLoader *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_environment, a6);
    objc_storeStrong(&v16->_presetCache, a3);
    v17 = [v14 inMemoryImageCache];
    inMemoryImageCache = v16->_inMemoryImageCache;
    v16->_inMemoryImageCache = v17;

    v19 = [v14 serialQueueProvider];
    v20 = (v19)[2](v19, "com.apple.AvatarUI.AVTPresetResourceLoader.workQueue");
    workQueue = v16->_workQueue;
    v16->_workQueue = v20;

    v22 = [v14 logger];
    logger = v16->_logger;
    v16->_logger = v22;

    objc_storeStrong(&v16->_renderingScheduler, a4);
    objc_storeStrong(&v16->_callbackQueue, a5);
  }

  return v16;
}

- (id)preLoadResourcesForSectionItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AVTSectionItemLoadingTask alloc] initWithSectionItem:v7 completionHandler:v6];

  [(AVTPresetResourceLoader *)self startSectionItemPreloadingTask:v8];

  return v8;
}

- (void)startSectionItemPreloadingTask:(id)a3
{
  v4 = a3;
  v5 = [(AVTPresetResourceLoader *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AVTPresetResourceLoader_startSectionItemPreloadingTask___block_invoke;
  v7[3] = &unk_1E7F3AD60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)performSectionItemPreloadingTask:(id)a3
{
  v4 = a3;
  if (([v4 isCanceled] & 1) == 0)
  {
    v5 = [v4 sectionItem];
    v6 = [v5 presetResourcesProvider];
    v7 = v6[2]();
    [(AVTPresetResourceLoader *)self performPresetLoadingForPresetResources:v7 task:v4];

    if (([v4 isCanceled] & 1) == 0)
    {
      v8 = [(AVTPresetResourceLoader *)self logger];
      v9 = objc_autoreleasePoolPush();
      v10 = [v4 sectionItem];
      v11 = [v10 stickerResourceProvider];

      v12 = [v4 sectionItem];
      v13 = v12;
      if (v11)
      {
        v14 = [v12 stickerResourceProvider];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __60__AVTPresetResourceLoader_performSectionItemPreloadingTask___block_invoke;
        v25[3] = &unk_1E7F3BF68;
        v15 = &v26;
        v26 = v8;
        v16 = &v27;
        v27 = v4;
        (v14)[2](v14, v25, 0);
      }

      else
      {
        v14 = [v12 thumbnailProvider];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __60__AVTPresetResourceLoader_performSectionItemPreloadingTask___block_invoke_2;
        v22[3] = &unk_1E7F3BF90;
        v15 = &v23;
        v23 = v8;
        v16 = &v24;
        v24 = v4;
        (v14)[2](v14, v22, 0);
      }
      v17 = ;

      v18 = [(AVTPresetResourceLoader *)self renderingScheduler];
      [v18 lowerTaskPriority:v17];

      objc_autoreleasePoolPop(v9);
      if (([v4 isCanceled] & 1) == 0)
      {
        v19 = [(AVTPresetResourceLoader *)self callbackQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__AVTPresetResourceLoader_performSectionItemPreloadingTask___block_invoke_3;
        block[3] = &unk_1E7F3A9B8;
        v21 = v4;
        dispatch_async(v19, block);
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

- (id)preLoadResourcesForPresetResourcesProvider:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AVTPresetResourcesLoadingTask alloc];
  v9 = [v7 representedAVTPresetResources];

  v10 = [(AVTPresetResourcesLoadingTask *)v8 initWithPresetResources:v9 completionHandler:v6];
  [(AVTPresetResourceLoader *)self startPresetPreloadingTask:v10];

  return v10;
}

- (void)startPresetPreloadingTask:(id)a3
{
  v4 = a3;
  v5 = [(AVTPresetResourceLoader *)self logger];
  v6 = [v4 description];
  [v5 logStartingPreLoadingTask:v6];

  v7 = [(AVTPresetResourceLoader *)self workQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__AVTPresetResourceLoader_startPresetPreloadingTask___block_invoke;
  v9[3] = &unk_1E7F3AD60;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)performPresetResourcesPreloadingTask:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isCanceled] & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 presetResources];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(AVTPresetResourceLoader *)self performPresetLoadingForPresetResources:*(*(&v13 + 1) + 8 * v9) task:v4];
        if ([v4 isCanceled])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

      v10 = [(AVTPresetResourceLoader *)self callbackQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__AVTPresetResourceLoader_performPresetResourcesPreloadingTask___block_invoke;
      block[3] = &unk_1E7F3A9B8;
      v12 = v4;
      dispatch_async(v10, block);

      v5 = v12;
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

- (void)performPresetLoadingForPresetResources:(id)a3 task:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(AVTPresetResourceLoader *)self logger];
  v10 = [v6 volatileIdentifierForScope:0];
  v11 = [v7 description];
  [v9 logLookingUpPreLoadedPreset:v10 task:v11];

  v12 = [(AVTPresetResourceLoader *)self presetCache];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__AVTPresetResourceLoader_performPresetLoadingForPresetResources_task___block_invoke;
  v16[3] = &unk_1E7F3BFB8;
  v16[4] = self;
  v13 = v6;
  v17 = v13;
  v14 = v7;
  v18 = v14;
  v15 = [v12 resourceForItem:v13 scope:0 cacheMissHandler:v16];

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