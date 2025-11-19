@interface AVTCoreEnvironment
+ (id)defaultEnvironment;
+ (id)imageCacheStoreLocationWithError:(id *)a3;
+ (id)imageStoreLocation;
+ (id)serialQueueProvider;
+ (id)stickerImageStoreLocation;
+ (void)resetFlushCacheValuesIfNeeded;
- (AVTCoreEnvironment)init;
- (NSURL)imageCacheStoreLocation;
- (NSURL)imageStoreLocation;
- (NSURL)stickerImageStoreLocation;
- (NSURL)storeLocation;
@end

@implementation AVTCoreEnvironment

+ (void)resetFlushCacheValuesIfNeeded
{
  v2 = AVTAvatarKitSnapshotVersionNumber();
  if (AVTUILastCacheVersion() != v2)
  {
    AVTUISetLastCacheVersion(v2);
    AVTUISetFlushStickersCache(1);

    AVTUISetFlushThumbnailCache(1);
  }
}

- (AVTCoreEnvironment)init
{
  v16.receiver = self;
  v16.super_class = AVTCoreEnvironment;
  v2 = [(AVTCoreEnvironment *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVTUILogger);
    logger = v2->_logger;
    v2->_logger = v3;

    v5 = objc_alloc_init(AVTBlockScheduler);
    scheduler = v2->_scheduler;
    v2->_scheduler = v5;

    v7 = [objc_opt_class() serialQueueProvider];
    v8 = [v7 copy];
    serialQueueProvider = v2->_serialQueueProvider;
    v2->_serialQueueProvider = v8;

    v10 = [objc_opt_class() serialQueueProvider];
    v11 = [v10 copy];
    lockProvider = v2->_lockProvider;
    v2->_lockProvider = v11;

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v13;

    [objc_opt_class() resetFlushCacheValuesIfNeeded];
  }

  return v2;
}

+ (id)defaultEnvironment
{
  if (defaultEnvironment_onceToken != -1)
  {
    +[AVTCoreEnvironment defaultEnvironment];
  }

  v3 = defaultEnvironment_sInstance;

  return v3;
}

uint64_t __40__AVTCoreEnvironment_defaultEnvironment__block_invoke()
{
  defaultEnvironment_sInstance = objc_alloc_init(AVTCoreEnvironment);

  return MEMORY[0x2821F96F8]();
}

+ (id)serialQueueProvider
{
  v2 = [&__block_literal_global_6 copy];

  return v2;
}

dispatch_queue_t __41__AVTCoreEnvironment_serialQueueProvider__block_invoke(uint64_t a1, const char *a2)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create(a2, v3);

  return v4;
}

+ (id)imageStoreLocation
{
  v2 = [a1 storeLocation];
  v3 = [v2 URLByAppendingPathComponent:@"Images"];

  return v3;
}

+ (id)imageCacheStoreLocationWithError:(id *)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v8 = 0;
  v4 = [v3 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v8];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 URLByAppendingPathComponent:@"Animoji"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)stickerImageStoreLocation
{
  v2 = [a1 storeLocation];
  v3 = [v2 URLByAppendingPathComponent:@"Stickers"];

  return v3;
}

- (NSURL)storeLocation
{
  v2 = self;
  objc_sync_enter(v2);
  storeLocation = v2->_storeLocation;
  if (!storeLocation)
  {
    v4 = [objc_opt_class() storeLocation];
    v5 = [v4 copy];
    v6 = v2->_storeLocation;
    v2->_storeLocation = v5;

    storeLocation = v2->_storeLocation;
  }

  v7 = storeLocation;
  objc_sync_exit(v2);

  return v7;
}

- (NSURL)imageStoreLocation
{
  v2 = self;
  objc_sync_enter(v2);
  imageStoreLocation = v2->_imageStoreLocation;
  if (!imageStoreLocation)
  {
    v4 = [objc_opt_class() imageStoreLocation];
    v5 = [v4 copy];
    v6 = v2->_imageStoreLocation;
    v2->_imageStoreLocation = v5;

    imageStoreLocation = v2->_imageStoreLocation;
  }

  v7 = imageStoreLocation;
  objc_sync_exit(v2);

  return v7;
}

- (NSURL)imageCacheStoreLocation
{
  v3 = [(AVTCoreEnvironment *)self logger];
  v4 = self;
  objc_sync_enter(v4);
  imageCacheStoreLocation = v4->_imageCacheStoreLocation;
  if (!imageCacheStoreLocation)
  {
    v13 = 0;
    v6 = [objc_opt_class() imageCacheStoreLocationWithError:&v13];
    v7 = v13;
    v8 = [v6 copy];
    v9 = v4->_imageCacheStoreLocation;
    v4->_imageCacheStoreLocation = v8;

    if (!v4->_imageCacheStoreLocation)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't get image cache location %@", v7];
      [v3 logFileSystemError:v10];
    }

    imageCacheStoreLocation = v4->_imageCacheStoreLocation;
  }

  v11 = imageCacheStoreLocation;
  objc_sync_exit(v4);

  return v11;
}

- (NSURL)stickerImageStoreLocation
{
  v2 = self;
  objc_sync_enter(v2);
  stickerImageStoreLocation = v2->_stickerImageStoreLocation;
  if (!stickerImageStoreLocation)
  {
    v4 = [objc_opt_class() stickerImageStoreLocation];
    v5 = [v4 copy];
    v6 = v2->_stickerImageStoreLocation;
    v2->_stickerImageStoreLocation = v5;

    stickerImageStoreLocation = v2->_stickerImageStoreLocation;
  }

  v7 = stickerImageStoreLocation;
  objc_sync_exit(v2);

  return v7;
}

@end