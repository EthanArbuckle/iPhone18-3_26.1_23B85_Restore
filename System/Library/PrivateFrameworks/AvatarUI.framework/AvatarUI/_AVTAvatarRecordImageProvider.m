@interface _AVTAvatarRecordImageProvider
+ (void)makePersistentImageCache:(id *)a3 volatileImageCache:(id *)a4 withEnvironment:(id)a5;
- (_AVTAvatarRecordImageProvider)initWithEnvironment:(id)a3;
- (_AVTAvatarRecordImageProvider)initWithEnvironment:(id)a3 taskScheduler:(id)a4;
- (_AVTAvatarRecordImageProvider)initWithPersistentCache:(id)a3 volatileCache:(id)a4 allowPreFlight:(BOOL)a5 taskScheduler:(id)a6 environment:(id)a7;
- (_AVTAvatarRecordImageProvider)initWithPersistentCache:(id)a3 volatileCache:(id)a4 renderingQueue:(id)a5 callbackQueue:(id)a6 configurationRenderer:(id)a7 avatarRenderer:(id)a8 taskScheduler:(id)a9 allowPreFlight:(BOOL)a10 environment:(id)a11;
- (id)_providerForAvatar:(id)a3 forRecord:(id)a4 scope:(id)a5 usingCache:(BOOL)a6 usingService:(BOOL)a7;
- (id)_providerForRecord:(id)a3 scope:(id)a4;
@end

@implementation _AVTAvatarRecordImageProvider

+ (void)makePersistentImageCache:(id *)a3 volatileImageCache:(id *)a4 withEnvironment:(id)a5
{
  v23 = a5;
  if (AVTUIThumbnailCaching_once())
  {
    if (AVTUIFlushThumbnailCache())
    {
      v7 = [v23 imageStoreLocation];
      v8 = [v23 logger];
      [AVTImageStore clearContentAtLocation:v7 logger:v8];

      v9 = [v23 imageCacheStoreLocation];
      v10 = [v23 logger];
      [AVTImageStore clearContentAtLocation:v9 logger:v10];

      AVTUISetFlushThumbnailCache();
    }

    v11 = [v23 inMemoryImageCache];
    v12 = [AVTImageStore alloc];
    v13 = [v23 coreEnvironment];
    v14 = [v23 imageStoreLocation];
    v15 = [(AVTImageStore *)v12 initWithEnvironment:v13 validateImages:1 location:v14];

    v16 = [[AVTTwoLevelsImageCache alloc] initWithFirstLevelCache:v11 secondLevelCache:v15 environment:v23];
    *a3 = v16;
    v17 = [AVTImageStore alloc];
    v18 = [v23 coreEnvironment];
    v19 = [v23 imageCacheStoreLocation];
    v20 = [(AVTImageStore *)v17 initWithEnvironment:v18 validateImages:1 location:v19];

    v21 = [[AVTTwoLevelsImageCache alloc] initWithFirstLevelCache:v11 secondLevelCache:v20 environment:v23];
    *a4 = v21;
  }

  else
  {
    v22 = objc_alloc_init(AVTPassThroughResourceCache);
    *a3 = v22;
    *a4 = v22;
  }
}

- (_AVTAvatarRecordImageProvider)initWithEnvironment:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = 0;
  [objc_opt_class() makePersistentImageCache:&v12 volatileImageCache:&v11 withEnvironment:v4];
  v5 = v12;
  v6 = v11;
  v7 = v5;
  v8 = objc_alloc_init(AVTImmediateTaskScheduler);
  v9 = [(_AVTAvatarRecordImageProvider *)self initWithPersistentCache:v7 volatileCache:v6 allowPreFlight:1 taskScheduler:v8 environment:v4];

  return v9;
}

- (_AVTAvatarRecordImageProvider)initWithEnvironment:(id)a3 taskScheduler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = 0;
  v13 = 0;
  [objc_opt_class() makePersistentImageCache:&v13 volatileImageCache:&v12 withEnvironment:v7];
  v8 = v12;
  v9 = v13;
  v10 = [(_AVTAvatarRecordImageProvider *)self initWithPersistentCache:v9 volatileCache:v8 allowPreFlight:1 taskScheduler:v6 environment:v7];

  return v10;
}

- (_AVTAvatarRecordImageProvider)initWithPersistentCache:(id)a3 volatileCache:(id)a4 allowPreFlight:(BOOL)a5 taskScheduler:(id)a6 environment:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [[AVTAvatarImageRenderer alloc] initWithEnvironment:v12];
  v17 = [v12 backgroundRenderingQueue];
  LOBYTE(v20) = a5;
  v18 = [(_AVTAvatarRecordImageProvider *)self initWithPersistentCache:v15 volatileCache:v14 renderingQueue:v17 callbackQueue:MEMORY[0x1E69E96A0] configurationRenderer:0 avatarRenderer:v16 taskScheduler:v13 allowPreFlight:v20 environment:v12];

  return v18;
}

- (_AVTAvatarRecordImageProvider)initWithPersistentCache:(id)a3 volatileCache:(id)a4 renderingQueue:(id)a5 callbackQueue:(id)a6 configurationRenderer:(id)a7 avatarRenderer:(id)a8 taskScheduler:(id)a9 allowPreFlight:(BOOL)a10 environment:(id)a11
{
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v18 = a5;
  v19 = a6;
  obj = a7;
  v32 = a7;
  v31 = a8;
  v20 = a9;
  v21 = a11;
  v33.receiver = self;
  v33.super_class = _AVTAvatarRecordImageProvider;
  v22 = [(_AVTAvatarRecordImageProvider *)&v33 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_peristentCache, a3);
    objc_storeStrong(&v23->_volatileCache, a4);
    objc_storeStrong(&v23->_configurationRenderer, obj);
    objc_storeStrong(&v23->_avatarRenderer, a8);
    v23->_allowPreFlight = a10;
    objc_storeStrong(&v23->_environment, a11);
    objc_storeStrong(&v23->_workQueue, v28);
    objc_storeStrong(&v23->_callbackQueue, a6);
    objc_storeStrong(&v23->_renderingScheduler, a9);
    v24 = [v21 logger];
    logger = v23->_logger;
    v23->_logger = v24;
  }

  return v23;
}

- (id)_providerForRecord:(id)a3 scope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_AVTAvatarRecordImageProvider *)self configurationRenderer];

  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't render without a configuration renderer"];
  }

  v9 = [AVTAvatarRecordCacheableResource alloc];
  v10 = [(_AVTAvatarRecordImageProvider *)self environment];
  v11 = [(AVTAvatarRecordCacheableResource *)v9 initWithAvatarRecord:v6 includeAvatarData:0 environment:v10];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58___AVTAvatarRecordImageProvider__providerForRecord_scope___block_invoke;
  v22[3] = &unk_1E7F3CC08;
  v22[4] = self;
  v23 = v6;
  v24 = v7;
  v25 = v11;
  v12 = v11;
  v13 = v7;
  v14 = v6;
  v15 = [v22 copy];
  v20 = MEMORY[0x1BFB0DE80](v15, v16, v17, v18, v19);

  return v20;
}

- (id)_providerForAvatar:(id)a3 forRecord:(id)a4 scope:(id)a5 usingCache:(BOOL)a6 usingService:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [AVTAvatarRecordCacheableResource alloc];
  v16 = [(_AVTAvatarRecordImageProvider *)self environment];
  v17 = [(AVTAvatarRecordCacheableResource *)v15 initWithAvatarRecord:v13 includeAvatarData:0 environment:v16];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke;
  v29[3] = &unk_1E7F3CC80;
  v29[4] = self;
  v30 = v13;
  v34 = a7;
  v31 = v14;
  v32 = v17;
  v33 = v12;
  v35 = a6;
  v18 = v12;
  v19 = v17;
  v20 = v14;
  v21 = v13;
  v22 = [v29 copy];
  v27 = MEMORY[0x1BFB0DE80](v22, v23, v24, v25, v26);

  return v27;
}

@end