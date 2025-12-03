@interface AVTCoreEnvironment
+ (id)defaultEnvironment;
+ (id)imageCacheStoreLocationWithError:(id *)error;
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

    serialQueueProvider = [objc_opt_class() serialQueueProvider];
    v8 = [serialQueueProvider copy];
    serialQueueProvider = v2->_serialQueueProvider;
    v2->_serialQueueProvider = v8;

    serialQueueProvider2 = [objc_opt_class() serialQueueProvider];
    v11 = [serialQueueProvider2 copy];
    lockProvider = v2->_lockProvider;
    v2->_lockProvider = v11;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = defaultCenter;

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
  storeLocation = [self storeLocation];
  v3 = [storeLocation URLByAppendingPathComponent:@"Images"];

  return v3;
}

+ (id)imageCacheStoreLocationWithError:(id *)error
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
  storeLocation = [self storeLocation];
  v3 = [storeLocation URLByAppendingPathComponent:@"Stickers"];

  return v3;
}

- (NSURL)storeLocation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  storeLocation = selfCopy->_storeLocation;
  if (!storeLocation)
  {
    storeLocation = [objc_opt_class() storeLocation];
    v5 = [storeLocation copy];
    v6 = selfCopy->_storeLocation;
    selfCopy->_storeLocation = v5;

    storeLocation = selfCopy->_storeLocation;
  }

  v7 = storeLocation;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSURL)imageStoreLocation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  imageStoreLocation = selfCopy->_imageStoreLocation;
  if (!imageStoreLocation)
  {
    imageStoreLocation = [objc_opt_class() imageStoreLocation];
    v5 = [imageStoreLocation copy];
    v6 = selfCopy->_imageStoreLocation;
    selfCopy->_imageStoreLocation = v5;

    imageStoreLocation = selfCopy->_imageStoreLocation;
  }

  v7 = imageStoreLocation;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSURL)imageCacheStoreLocation
{
  logger = [(AVTCoreEnvironment *)self logger];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  imageCacheStoreLocation = selfCopy->_imageCacheStoreLocation;
  if (!imageCacheStoreLocation)
  {
    v13 = 0;
    v6 = [objc_opt_class() imageCacheStoreLocationWithError:&v13];
    v7 = v13;
    v8 = [v6 copy];
    v9 = selfCopy->_imageCacheStoreLocation;
    selfCopy->_imageCacheStoreLocation = v8;

    if (!selfCopy->_imageCacheStoreLocation)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't get image cache location %@", v7];
      [logger logFileSystemError:v10];
    }

    imageCacheStoreLocation = selfCopy->_imageCacheStoreLocation;
  }

  v11 = imageCacheStoreLocation;
  objc_sync_exit(selfCopy);

  return v11;
}

- (NSURL)stickerImageStoreLocation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stickerImageStoreLocation = selfCopy->_stickerImageStoreLocation;
  if (!stickerImageStoreLocation)
  {
    stickerImageStoreLocation = [objc_opt_class() stickerImageStoreLocation];
    v5 = [stickerImageStoreLocation copy];
    v6 = selfCopy->_stickerImageStoreLocation;
    selfCopy->_stickerImageStoreLocation = v5;

    stickerImageStoreLocation = selfCopy->_stickerImageStoreLocation;
  }

  v7 = stickerImageStoreLocation;
  objc_sync_exit(selfCopy);

  return v7;
}

@end