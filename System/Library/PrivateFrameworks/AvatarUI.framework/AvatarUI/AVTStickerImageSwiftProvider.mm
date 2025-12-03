@interface AVTStickerImageSwiftProvider
+ (id)imageStoreWithEnvironment:(id)environment;
+ (id)stickerCacheWithEnvironment:(id)environment;
- (AVTStickerImageSwiftProvider)init;
- (void)dealloc;
- (void)imageForAvatarRecord:(id)record poseName:(id)name completionHandler:(id)handler;
@end

@implementation AVTStickerImageSwiftProvider

- (AVTStickerImageSwiftProvider)init
{
  v35[2] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = AVTStickerImageSwiftProvider;
  v2 = [(AVTStickerImageSwiftProvider *)&v33 init];
  if (v2)
  {
    v3 = +[AVTUIEnvironment defaultEnvironment];
    environment = v2->_environment;
    v2->_environment = v3;

    v5 = [objc_opt_class() imageStoreWithEnvironment:v2->_environment];
    imageStore = v2->_imageStore;
    v2->_imageStore = v5;

    v7 = objc_alloc_init(AVTAvatarStore);
    if (([(AVTAvatarStore *)v7 conformsToProtocol:&unk_1F39DD3B0]& 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v7}];
    }

    v8 = v7;
    [(AVTAvatarStore *)v8 setStickerBackendDelegate:v2];
    objc_storeStrong(&v2->_avatarStore, v7);
    v9 = [AVTUIStickerGeneratorPool alloc];
    logger = [(AVTUIEnvironment *)v2->_environment logger];
    v11 = [(AVTUIStickerGeneratorPool *)v9 initWithMaxStickerGeneratorCount:2 logger:logger];
    generatorPool = v2->_generatorPool;
    v2->_generatorPool = v11;

    serialQueueProvider = [(AVTUIEnvironment *)v2->_environment serialQueueProvider];
    v14 = (serialQueueProvider)[2](serialQueueProvider, "com.apple.AvatarUI.StickerImageWorkQueue");
    recentsWorkQueue = v2->_recentsWorkQueue;
    v2->_recentsWorkQueue = v14;

    backgroundRenderingQueue = [(AVTUIEnvironment *)v2->_environment backgroundRenderingQueue];
    renderingQueue = v2->_renderingQueue;
    v2->_renderingQueue = backgroundRenderingQueue;

    backgroundEncodingQueue = [(AVTUIEnvironment *)v2->_environment backgroundEncodingQueue];
    encodingQueue = v2->_encodingQueue;
    v2->_encodingQueue = backgroundEncodingQueue;

    v20 = [objc_opt_class() stickerCacheWithEnvironment:v2->_environment];
    cache = v2->_cache;
    v2->_cache = v20;

    if (AVTUIShowPrereleaseStickerPack_once())
    {
      v22 = *MEMORY[0x1E698E300];
      v35[0] = *MEMORY[0x1E698E2E0];
      v35[1] = v22;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v35;
      v25 = 2;
    }

    else
    {
      v34 = *MEMORY[0x1E698E2E0];
      v23 = MEMORY[0x1E695DEC8];
      v24 = &v34;
      v25 = 1;
    }

    v26 = [v23 arrayWithObjects:v24 count:v25];
    v27 = [[AVTStickerConfigurationProvider alloc] initWithEnvironment:v2->_environment forStickerPacks:v26 stickerConfigurationNames:0];
    configurationProvider = v2->_configurationProvider;
    v2->_configurationProvider = v27;

    coreEnvironment = [(AVTUIEnvironment *)v2->_environment coreEnvironment];
    v30 = [AVTSerialTaskScheduler fifoSchedulerWithEnvironment:coreEnvironment];
    taskScheduler = v2->_taskScheduler;
    v2->_taskScheduler = v30;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;

  v5.receiver = self;
  v5.super_class = AVTStickerImageSwiftProvider;
  [(AVTStickerImageSwiftProvider *)&v5 dealloc];
}

+ (id)stickerCacheWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!AVTUIStickersCaching() || AVTUIFlushStickersCache())
  {
    stickerImageStoreLocation = [environmentCopy stickerImageStoreLocation];
    logger = [environmentCopy logger];
    [AVTImageStore clearContentAtLocation:stickerImageStoreLocation logger:logger];

    AVTUISetFlushStickersCache();
  }

  v6 = objc_alloc_init(AVTPassThroughResourceCache);

  return v6;
}

+ (id)imageStoreWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!AVTUIStickersCaching() || AVTUIFlushStickersCache())
  {
    stickerImageStoreLocation = [environmentCopy stickerImageStoreLocation];
    logger = [environmentCopy logger];
    [AVTImageStore clearContentAtLocation:stickerImageStoreLocation logger:logger];

    AVTUISetFlushStickersCache();
  }

  v6 = +[AVTUIStickerRenderer imageEncoder];
  v7 = [AVTClippableImageStore alloc];
  coreEnvironment = [environmentCopy coreEnvironment];
  stickerImageStoreLocation2 = [environmentCopy stickerImageStoreLocation];
  v10 = [(AVTImageStore *)v7 initWithEnvironment:coreEnvironment validateImages:1 location:stickerImageStoreLocation2 encoder:v6];

  return v10;
}

- (void)imageForAvatarRecord:(id)record poseName:(id)name completionHandler:(id)handler
{
  recordCopy = record;
  nameCopy = name;
  handlerCopy = handler;
  v11 = [(AVTStickerConfigurationProvider *)self->_configurationProvider stickerConfigurationForAvatarRecord:recordCopy stickerName:nameCopy];
  v12 = [AVTUIStickerRenderer alloc];
  v13 = [(AVTUIStickerRenderer *)v12 initWithAvatarRecord:recordCopy cache:self->_cache imageStore:self->_imageStore stickerGeneratorPool:self->_generatorPool environment:self->_environment renderingScheduler:self->_taskScheduler renderingQueue:self->_renderingQueue encodingQueue:self->_encodingQueue callbackQueue:MEMORY[0x1E69E96A0]];
  v14 = [(AVTUIStickerRenderer *)v13 scheduledStickerResourceProviderForStickerConfiguration:v11];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__AVTStickerImageSwiftProvider_imageForAvatarRecord_poseName_completionHandler___block_invoke;
  v17[3] = &unk_1E7F3CDE0;
  objc_copyWeak(&v20, &location);
  v19 = v22;
  v15 = handlerCopy;
  v18 = v15;
  v16 = (v14)[2](v14, v17, 0);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(v22, 8);
}

void __80__AVTStickerImageSwiftProvider_imageForAvatarRecord_poseName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [v6 image];
    (*(v4 + 16))(v4, v5);

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end