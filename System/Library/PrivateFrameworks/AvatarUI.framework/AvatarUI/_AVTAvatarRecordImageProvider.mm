@interface _AVTAvatarRecordImageProvider
+ (void)makePersistentImageCache:(id *)cache volatileImageCache:(id *)imageCache withEnvironment:(id)environment;
- (_AVTAvatarRecordImageProvider)initWithEnvironment:(id)environment;
- (_AVTAvatarRecordImageProvider)initWithEnvironment:(id)environment taskScheduler:(id)scheduler;
- (_AVTAvatarRecordImageProvider)initWithPersistentCache:(id)cache volatileCache:(id)volatileCache allowPreFlight:(BOOL)flight taskScheduler:(id)scheduler environment:(id)environment;
- (_AVTAvatarRecordImageProvider)initWithPersistentCache:(id)cache volatileCache:(id)volatileCache renderingQueue:(id)queue callbackQueue:(id)callbackQueue configurationRenderer:(id)renderer avatarRenderer:(id)avatarRenderer taskScheduler:(id)scheduler allowPreFlight:(BOOL)self0 environment:(id)self1;
- (id)_providerForAvatar:(id)avatar forRecord:(id)record scope:(id)scope usingCache:(BOOL)cache usingService:(BOOL)service;
- (id)_providerForRecord:(id)record scope:(id)scope;
@end

@implementation _AVTAvatarRecordImageProvider

+ (void)makePersistentImageCache:(id *)cache volatileImageCache:(id *)imageCache withEnvironment:(id)environment
{
  environmentCopy = environment;
  if (AVTUIThumbnailCaching_once())
  {
    if (AVTUIFlushThumbnailCache())
    {
      imageStoreLocation = [environmentCopy imageStoreLocation];
      logger = [environmentCopy logger];
      [AVTImageStore clearContentAtLocation:imageStoreLocation logger:logger];

      imageCacheStoreLocation = [environmentCopy imageCacheStoreLocation];
      logger2 = [environmentCopy logger];
      [AVTImageStore clearContentAtLocation:imageCacheStoreLocation logger:logger2];

      AVTUISetFlushThumbnailCache();
    }

    inMemoryImageCache = [environmentCopy inMemoryImageCache];
    v12 = [AVTImageStore alloc];
    coreEnvironment = [environmentCopy coreEnvironment];
    imageStoreLocation2 = [environmentCopy imageStoreLocation];
    v15 = [(AVTImageStore *)v12 initWithEnvironment:coreEnvironment validateImages:1 location:imageStoreLocation2];

    v16 = [[AVTTwoLevelsImageCache alloc] initWithFirstLevelCache:inMemoryImageCache secondLevelCache:v15 environment:environmentCopy];
    *cache = v16;
    v17 = [AVTImageStore alloc];
    coreEnvironment2 = [environmentCopy coreEnvironment];
    imageCacheStoreLocation2 = [environmentCopy imageCacheStoreLocation];
    v20 = [(AVTImageStore *)v17 initWithEnvironment:coreEnvironment2 validateImages:1 location:imageCacheStoreLocation2];

    v21 = [[AVTTwoLevelsImageCache alloc] initWithFirstLevelCache:inMemoryImageCache secondLevelCache:v20 environment:environmentCopy];
    *imageCache = v21;
  }

  else
  {
    v22 = objc_alloc_init(AVTPassThroughResourceCache);
    *cache = v22;
    *imageCache = v22;
  }
}

- (_AVTAvatarRecordImageProvider)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v11 = 0;
  v12 = 0;
  [objc_opt_class() makePersistentImageCache:&v12 volatileImageCache:&v11 withEnvironment:environmentCopy];
  v5 = v12;
  v6 = v11;
  v7 = v5;
  v8 = objc_alloc_init(AVTImmediateTaskScheduler);
  v9 = [(_AVTAvatarRecordImageProvider *)self initWithPersistentCache:v7 volatileCache:v6 allowPreFlight:1 taskScheduler:v8 environment:environmentCopy];

  return v9;
}

- (_AVTAvatarRecordImageProvider)initWithEnvironment:(id)environment taskScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  environmentCopy = environment;
  v12 = 0;
  v13 = 0;
  [objc_opt_class() makePersistentImageCache:&v13 volatileImageCache:&v12 withEnvironment:environmentCopy];
  v8 = v12;
  v9 = v13;
  v10 = [(_AVTAvatarRecordImageProvider *)self initWithPersistentCache:v9 volatileCache:v8 allowPreFlight:1 taskScheduler:schedulerCopy environment:environmentCopy];

  return v10;
}

- (_AVTAvatarRecordImageProvider)initWithPersistentCache:(id)cache volatileCache:(id)volatileCache allowPreFlight:(BOOL)flight taskScheduler:(id)scheduler environment:(id)environment
{
  environmentCopy = environment;
  schedulerCopy = scheduler;
  volatileCacheCopy = volatileCache;
  cacheCopy = cache;
  v16 = [[AVTAvatarImageRenderer alloc] initWithEnvironment:environmentCopy];
  backgroundRenderingQueue = [environmentCopy backgroundRenderingQueue];
  LOBYTE(v20) = flight;
  v18 = [(_AVTAvatarRecordImageProvider *)self initWithPersistentCache:cacheCopy volatileCache:volatileCacheCopy renderingQueue:backgroundRenderingQueue callbackQueue:MEMORY[0x1E69E96A0] configurationRenderer:0 avatarRenderer:v16 taskScheduler:schedulerCopy allowPreFlight:v20 environment:environmentCopy];

  return v18;
}

- (_AVTAvatarRecordImageProvider)initWithPersistentCache:(id)cache volatileCache:(id)volatileCache renderingQueue:(id)queue callbackQueue:(id)callbackQueue configurationRenderer:(id)renderer avatarRenderer:(id)avatarRenderer taskScheduler:(id)scheduler allowPreFlight:(BOOL)self0 environment:(id)self1
{
  cacheCopy = cache;
  volatileCacheCopy = volatileCache;
  queueCopy = queue;
  queueCopy2 = queue;
  callbackQueueCopy = callbackQueue;
  obj = renderer;
  rendererCopy = renderer;
  avatarRendererCopy = avatarRenderer;
  schedulerCopy = scheduler;
  environmentCopy = environment;
  v33.receiver = self;
  v33.super_class = _AVTAvatarRecordImageProvider;
  v22 = [(_AVTAvatarRecordImageProvider *)&v33 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_peristentCache, cache);
    objc_storeStrong(&v23->_volatileCache, volatileCache);
    objc_storeStrong(&v23->_configurationRenderer, obj);
    objc_storeStrong(&v23->_avatarRenderer, avatarRenderer);
    v23->_allowPreFlight = flight;
    objc_storeStrong(&v23->_environment, environment);
    objc_storeStrong(&v23->_workQueue, queueCopy);
    objc_storeStrong(&v23->_callbackQueue, callbackQueue);
    objc_storeStrong(&v23->_renderingScheduler, scheduler);
    logger = [environmentCopy logger];
    logger = v23->_logger;
    v23->_logger = logger;
  }

  return v23;
}

- (id)_providerForRecord:(id)record scope:(id)scope
{
  recordCopy = record;
  scopeCopy = scope;
  configurationRenderer = [(_AVTAvatarRecordImageProvider *)self configurationRenderer];

  if (!configurationRenderer)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't render without a configuration renderer"];
  }

  v9 = [AVTAvatarRecordCacheableResource alloc];
  environment = [(_AVTAvatarRecordImageProvider *)self environment];
  v11 = [(AVTAvatarRecordCacheableResource *)v9 initWithAvatarRecord:recordCopy includeAvatarData:0 environment:environment];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58___AVTAvatarRecordImageProvider__providerForRecord_scope___block_invoke;
  v22[3] = &unk_1E7F3CC08;
  v22[4] = self;
  v23 = recordCopy;
  v24 = scopeCopy;
  v25 = v11;
  v12 = v11;
  v13 = scopeCopy;
  v14 = recordCopy;
  v15 = [v22 copy];
  v20 = MEMORY[0x1BFB0DE80](v15, v16, v17, v18, v19);

  return v20;
}

- (id)_providerForAvatar:(id)avatar forRecord:(id)record scope:(id)scope usingCache:(BOOL)cache usingService:(BOOL)service
{
  avatarCopy = avatar;
  recordCopy = record;
  scopeCopy = scope;
  v15 = [AVTAvatarRecordCacheableResource alloc];
  environment = [(_AVTAvatarRecordImageProvider *)self environment];
  v17 = [(AVTAvatarRecordCacheableResource *)v15 initWithAvatarRecord:recordCopy includeAvatarData:0 environment:environment];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke;
  v29[3] = &unk_1E7F3CC80;
  v29[4] = self;
  v30 = recordCopy;
  serviceCopy = service;
  v31 = scopeCopy;
  v32 = v17;
  v33 = avatarCopy;
  cacheCopy = cache;
  v18 = avatarCopy;
  v19 = v17;
  v20 = scopeCopy;
  v21 = recordCopy;
  v22 = [v29 copy];
  v27 = MEMORY[0x1BFB0DE80](v22, v23, v24, v25, v26);

  return v27;
}

@end