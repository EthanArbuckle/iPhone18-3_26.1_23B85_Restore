@interface AVTUIEnvironment
+ (id)createFunCamEnvironment;
+ (id)createQueueWithQoSClass:(unsigned int)class label:(const char *)label;
+ (id)createUsageTrackingSessionWithCoreModel:(id)model serialQueueProvider:(id)provider logger:(id)logger;
+ (id)defaultEnvironment;
- (AVTAvatarConfigurationImageRenderer)renderer;
- (AVTAvatarRemoteImageRenderer)remoteRenderer;
- (AVTCoreModel)editorCoreModel;
- (AVTImageCache)inMemoryImageCache;
- (AVTMemoji)editorThumbnailAvatar;
- (AVTUIEnvironment)initWithCoreEnvironment:(id)environment platform:(unint64_t)platform;
- (AVTUILogger)logger;
- (AVTUsageTrackingSession)usageTrackingSession;
- (CGSize)mainScreenSize;
- (NSNotificationCenter)notificationCenter;
- (NSURL)imageCacheStoreLocation;
- (NSURL)imageStoreLocation;
- (NSURL)stickerImageStoreLocation;
- (NSURL)storeLocation;
- (id)lockProvider;
- (id)serialQueueProvider;
@end

@implementation AVTUIEnvironment

- (AVTUIEnvironment)initWithCoreEnvironment:(id)environment platform:(unint64_t)platform
{
  environmentCopy = environment;
  v31.receiver = self;
  v31.super_class = AVTUIEnvironment;
  v8 = [(AVTUIEnvironment *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_coreEnvironment, environment);
    v9->_platform = platform;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v9->_deviceIsPad = [currentDevice userInterfaceIdiom] == 1;

    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    v9->_deviceIsMac = [currentDevice2 userInterfaceIdiom] == 5;

    currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
    v9->_deviceIsVision = [currentDevice3 userInterfaceIdiom] == 6;

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v9->_mainScreenSize.width = v14;
    v9->_mainScreenSize.height = v15;

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v9->_mainScreenScale = v17;

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v9->_userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    v19 = [AVTDeviceResourceManager alloc];
    logger = [environmentCopy logger];
    lockProvider = [environmentCopy lockProvider];
    v22 = [(AVTDeviceResourceManager *)v19 initWithLogger:logger lockProvider:lockProvider];
    deviceResourceManager = v9->_deviceResourceManager;
    v9->_deviceResourceManager = v22;

    v9->_actionAnimationsMultiplier = 1.0;
    v24 = [objc_opt_class() createQueueWithQoSClass:21 label:"com.apple.AvatarUI.AVTUIEnvironment.backgroundQueue"];
    backgroundQueue = v9->_backgroundQueue;
    v9->_backgroundQueue = v24;

    v26 = [objc_opt_class() createQueueWithQoSClass:21 label:"com.apple.AvatarUI.AVTUIEnvironment.backgroundRenderingQueue"];
    backgroundRenderingQueue = v9->_backgroundRenderingQueue;
    v9->_backgroundRenderingQueue = v26;

    v28 = [objc_opt_class() createQueueWithQoSClass:21 label:"com.apple.AvatarUI.AVTUIEnvironment.backgroundEncodingQueue"];
    backgroundEncodingQueue = v9->_backgroundEncodingQueue;
    v9->_backgroundEncodingQueue = v28;
  }

  return v9;
}

+ (id)defaultEnvironment
{
  if (defaultEnvironment_onceToken != -1)
  {
    +[AVTUIEnvironment defaultEnvironment];
  }

  v3 = defaultEnvironment_sInstance;

  return v3;
}

void __38__AVTUIEnvironment_defaultEnvironment__block_invoke()
{
  v0 = [AVTUIEnvironment alloc];
  v3 = [MEMORY[0x1E698E330] defaultEnvironment];
  v1 = [(AVTUIEnvironment *)v0 initWithCoreEnvironment:v3];
  v2 = defaultEnvironment_sInstance;
  defaultEnvironment_sInstance = v1;
}

+ (id)createFunCamEnvironment
{
  v2 = [AVTUIEnvironment alloc];
  defaultEnvironment = [MEMORY[0x1E698E330] defaultEnvironment];
  v4 = [(AVTUIEnvironment *)v2 initWithCoreEnvironment:defaultEnvironment];

  return v4;
}

+ (id)createQueueWithQoSClass:(unsigned int)class label:(const char *)label
{
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, class, 0);
  v8 = dispatch_queue_create(label, v7);

  return v8;
}

- (AVTCoreModel)editorCoreModel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  editorCoreModel = selfCopy->_editorCoreModel;
  if (!editorCoreModel)
  {
    v4 = objc_opt_class();
    platform = [(AVTUIEnvironment *)selfCopy platform];
    logger = [(AVTUIEnvironment *)selfCopy logger];
    v7 = [v4 createEditorCoreModelForPlatform:platform withLogger:logger];
    v8 = selfCopy->_editorCoreModel;
    selfCopy->_editorCoreModel = v7;

    editorCoreModel = selfCopy->_editorCoreModel;
  }

  v9 = editorCoreModel;
  objc_sync_exit(selfCopy);

  return v9;
}

- (AVTAvatarConfigurationImageRenderer)renderer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  renderer = selfCopy->_renderer;
  if (!renderer)
  {
    v4 = [AVTAvatarConfigurationImageRenderer alloc];
    editorThumbnailAvatar = [(AVTUIEnvironment *)selfCopy editorThumbnailAvatar];
    v6 = [(AVTAvatarConfigurationImageRenderer *)v4 initWithEnvironment:selfCopy avatar:editorThumbnailAvatar];
    v7 = selfCopy->_renderer;
    selfCopy->_renderer = v6;

    renderer = selfCopy->_renderer;
  }

  v8 = renderer;
  objc_sync_exit(selfCopy);

  return v8;
}

- (AVTAvatarRemoteImageRenderer)remoteRenderer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  remoteRenderer = selfCopy->_remoteRenderer;
  if (!remoteRenderer)
  {
    v4 = [[AVTAvatarRemoteImageRenderer alloc] initWithEnvironment:selfCopy];
    v5 = selfCopy->_remoteRenderer;
    selfCopy->_remoteRenderer = v4;

    remoteRenderer = selfCopy->_remoteRenderer;
  }

  v6 = remoteRenderer;
  objc_sync_exit(selfCopy);

  return v6;
}

- (AVTMemoji)editorThumbnailAvatar
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  editorThumbnailAvatar = selfCopy->_editorThumbnailAvatar;
  if (!editorThumbnailAvatar)
  {
    memoji = [MEMORY[0x1E698E2A0] memoji];
    v5 = selfCopy->_editorThumbnailAvatar;
    selfCopy->_editorThumbnailAvatar = memoji;

    editorThumbnailAvatar = selfCopy->_editorThumbnailAvatar;
  }

  v6 = editorThumbnailAvatar;
  objc_sync_exit(selfCopy);

  return v6;
}

- (AVTImageCache)inMemoryImageCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  inMemoryImageCache = selfCopy->_inMemoryImageCache;
  if (!inMemoryImageCache)
  {
    v4 = [AVTInMemoryImageCache alloc];
    lockProvider = [(AVTUIEnvironment *)selfCopy lockProvider];
    logger = [(AVTUIEnvironment *)selfCopy logger];
    v7 = [(AVTInMemoryImageCache *)v4 initWithLockProvider:lockProvider logger:logger];
    v8 = selfCopy->_inMemoryImageCache;
    selfCopy->_inMemoryImageCache = v7;

    inMemoryImageCache = selfCopy->_inMemoryImageCache;
  }

  v9 = inMemoryImageCache;
  objc_sync_exit(selfCopy);

  return v9;
}

- (AVTUsageTrackingSession)usageTrackingSession
{
  editorCoreModel = [(AVTUIEnvironment *)self editorCoreModel];
  serialQueueProvider = [(AVTUIEnvironment *)self serialQueueProvider];
  logger = [(AVTUIEnvironment *)self logger];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  usageTrackingSession = selfCopy->_usageTrackingSession;
  if (!usageTrackingSession)
  {
    v8 = [objc_opt_class() createUsageTrackingSessionWithCoreModel:editorCoreModel serialQueueProvider:serialQueueProvider logger:logger];
    v9 = selfCopy->_usageTrackingSession;
    selfCopy->_usageTrackingSession = v8;

    usageTrackingSession = selfCopy->_usageTrackingSession;
  }

  v10 = usageTrackingSession;
  objc_sync_exit(selfCopy);

  return v10;
}

+ (id)createUsageTrackingSessionWithCoreModel:(id)model serialQueueProvider:(id)provider logger:(id)logger
{
  loggerCopy = logger;
  providerCopy = provider;
  modelCopy = model;
  v10 = [AVTUsageTrackingSession alloc];
  v11 = [AVTUsageTrackingSession defaultRecordTransformerForCoreModel:modelCopy];

  v12 = [(AVTUsageTrackingSession *)v10 initWithSerialQueueProvider:providerCopy recordTransformer:v11 logger:loggerCopy];

  return v12;
}

- (AVTUILogger)logger
{
  coreEnvironment = [(AVTUIEnvironment *)self coreEnvironment];
  logger = [coreEnvironment logger];

  return logger;
}

- (id)serialQueueProvider
{
  coreEnvironment = [(AVTUIEnvironment *)self coreEnvironment];
  serialQueueProvider = [coreEnvironment serialQueueProvider];

  return serialQueueProvider;
}

- (id)lockProvider
{
  coreEnvironment = [(AVTUIEnvironment *)self coreEnvironment];
  lockProvider = [coreEnvironment lockProvider];

  return lockProvider;
}

- (NSURL)storeLocation
{
  coreEnvironment = [(AVTUIEnvironment *)self coreEnvironment];
  storeLocation = [coreEnvironment storeLocation];

  return storeLocation;
}

- (NSURL)imageStoreLocation
{
  coreEnvironment = [(AVTUIEnvironment *)self coreEnvironment];
  imageStoreLocation = [coreEnvironment imageStoreLocation];

  return imageStoreLocation;
}

- (NSURL)imageCacheStoreLocation
{
  coreEnvironment = [(AVTUIEnvironment *)self coreEnvironment];
  imageCacheStoreLocation = [coreEnvironment imageCacheStoreLocation];

  return imageCacheStoreLocation;
}

- (NSURL)stickerImageStoreLocation
{
  coreEnvironment = [(AVTUIEnvironment *)self coreEnvironment];
  stickerImageStoreLocation = [coreEnvironment stickerImageStoreLocation];

  return stickerImageStoreLocation;
}

- (NSNotificationCenter)notificationCenter
{
  coreEnvironment = [(AVTUIEnvironment *)self coreEnvironment];
  notificationCenter = [coreEnvironment notificationCenter];

  return notificationCenter;
}

- (CGSize)mainScreenSize
{
  width = self->_mainScreenSize.width;
  height = self->_mainScreenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end