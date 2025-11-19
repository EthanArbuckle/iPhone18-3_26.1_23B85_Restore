@interface AVTUIEnvironment
+ (id)createFunCamEnvironment;
+ (id)createQueueWithQoSClass:(unsigned int)a3 label:(const char *)a4;
+ (id)createUsageTrackingSessionWithCoreModel:(id)a3 serialQueueProvider:(id)a4 logger:(id)a5;
+ (id)defaultEnvironment;
- (AVTAvatarConfigurationImageRenderer)renderer;
- (AVTAvatarRemoteImageRenderer)remoteRenderer;
- (AVTCoreModel)editorCoreModel;
- (AVTImageCache)inMemoryImageCache;
- (AVTMemoji)editorThumbnailAvatar;
- (AVTUIEnvironment)initWithCoreEnvironment:(id)a3 platform:(unint64_t)a4;
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

- (AVTUIEnvironment)initWithCoreEnvironment:(id)a3 platform:(unint64_t)a4
{
  v7 = a3;
  v31.receiver = self;
  v31.super_class = AVTUIEnvironment;
  v8 = [(AVTUIEnvironment *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_coreEnvironment, a3);
    v9->_platform = a4;
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v9->_deviceIsPad = [v10 userInterfaceIdiom] == 1;

    v11 = [MEMORY[0x1E69DC938] currentDevice];
    v9->_deviceIsMac = [v11 userInterfaceIdiom] == 5;

    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v9->_deviceIsVision = [v12 userInterfaceIdiom] == 6;

    v13 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v13 bounds];
    v9->_mainScreenSize.width = v14;
    v9->_mainScreenSize.height = v15;

    v16 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v16 scale];
    v9->_mainScreenScale = v17;

    v18 = [MEMORY[0x1E69DC668] sharedApplication];
    v9->_userInterfaceLayoutDirection = [v18 userInterfaceLayoutDirection];

    v19 = [AVTDeviceResourceManager alloc];
    v20 = [v7 logger];
    v21 = [v7 lockProvider];
    v22 = [(AVTDeviceResourceManager *)v19 initWithLogger:v20 lockProvider:v21];
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
  v3 = [MEMORY[0x1E698E330] defaultEnvironment];
  v4 = [(AVTUIEnvironment *)v2 initWithCoreEnvironment:v3];

  return v4;
}

+ (id)createQueueWithQoSClass:(unsigned int)a3 label:(const char *)a4
{
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, a3, 0);
  v8 = dispatch_queue_create(a4, v7);

  return v8;
}

- (AVTCoreModel)editorCoreModel
{
  v2 = self;
  objc_sync_enter(v2);
  editorCoreModel = v2->_editorCoreModel;
  if (!editorCoreModel)
  {
    v4 = objc_opt_class();
    v5 = [(AVTUIEnvironment *)v2 platform];
    v6 = [(AVTUIEnvironment *)v2 logger];
    v7 = [v4 createEditorCoreModelForPlatform:v5 withLogger:v6];
    v8 = v2->_editorCoreModel;
    v2->_editorCoreModel = v7;

    editorCoreModel = v2->_editorCoreModel;
  }

  v9 = editorCoreModel;
  objc_sync_exit(v2);

  return v9;
}

- (AVTAvatarConfigurationImageRenderer)renderer
{
  v2 = self;
  objc_sync_enter(v2);
  renderer = v2->_renderer;
  if (!renderer)
  {
    v4 = [AVTAvatarConfigurationImageRenderer alloc];
    v5 = [(AVTUIEnvironment *)v2 editorThumbnailAvatar];
    v6 = [(AVTAvatarConfigurationImageRenderer *)v4 initWithEnvironment:v2 avatar:v5];
    v7 = v2->_renderer;
    v2->_renderer = v6;

    renderer = v2->_renderer;
  }

  v8 = renderer;
  objc_sync_exit(v2);

  return v8;
}

- (AVTAvatarRemoteImageRenderer)remoteRenderer
{
  v2 = self;
  objc_sync_enter(v2);
  remoteRenderer = v2->_remoteRenderer;
  if (!remoteRenderer)
  {
    v4 = [[AVTAvatarRemoteImageRenderer alloc] initWithEnvironment:v2];
    v5 = v2->_remoteRenderer;
    v2->_remoteRenderer = v4;

    remoteRenderer = v2->_remoteRenderer;
  }

  v6 = remoteRenderer;
  objc_sync_exit(v2);

  return v6;
}

- (AVTMemoji)editorThumbnailAvatar
{
  v2 = self;
  objc_sync_enter(v2);
  editorThumbnailAvatar = v2->_editorThumbnailAvatar;
  if (!editorThumbnailAvatar)
  {
    v4 = [MEMORY[0x1E698E2A0] memoji];
    v5 = v2->_editorThumbnailAvatar;
    v2->_editorThumbnailAvatar = v4;

    editorThumbnailAvatar = v2->_editorThumbnailAvatar;
  }

  v6 = editorThumbnailAvatar;
  objc_sync_exit(v2);

  return v6;
}

- (AVTImageCache)inMemoryImageCache
{
  v2 = self;
  objc_sync_enter(v2);
  inMemoryImageCache = v2->_inMemoryImageCache;
  if (!inMemoryImageCache)
  {
    v4 = [AVTInMemoryImageCache alloc];
    v5 = [(AVTUIEnvironment *)v2 lockProvider];
    v6 = [(AVTUIEnvironment *)v2 logger];
    v7 = [(AVTInMemoryImageCache *)v4 initWithLockProvider:v5 logger:v6];
    v8 = v2->_inMemoryImageCache;
    v2->_inMemoryImageCache = v7;

    inMemoryImageCache = v2->_inMemoryImageCache;
  }

  v9 = inMemoryImageCache;
  objc_sync_exit(v2);

  return v9;
}

- (AVTUsageTrackingSession)usageTrackingSession
{
  v3 = [(AVTUIEnvironment *)self editorCoreModel];
  v4 = [(AVTUIEnvironment *)self serialQueueProvider];
  v5 = [(AVTUIEnvironment *)self logger];
  v6 = self;
  objc_sync_enter(v6);
  usageTrackingSession = v6->_usageTrackingSession;
  if (!usageTrackingSession)
  {
    v8 = [objc_opt_class() createUsageTrackingSessionWithCoreModel:v3 serialQueueProvider:v4 logger:v5];
    v9 = v6->_usageTrackingSession;
    v6->_usageTrackingSession = v8;

    usageTrackingSession = v6->_usageTrackingSession;
  }

  v10 = usageTrackingSession;
  objc_sync_exit(v6);

  return v10;
}

+ (id)createUsageTrackingSessionWithCoreModel:(id)a3 serialQueueProvider:(id)a4 logger:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [AVTUsageTrackingSession alloc];
  v11 = [AVTUsageTrackingSession defaultRecordTransformerForCoreModel:v9];

  v12 = [(AVTUsageTrackingSession *)v10 initWithSerialQueueProvider:v8 recordTransformer:v11 logger:v7];

  return v12;
}

- (AVTUILogger)logger
{
  v2 = [(AVTUIEnvironment *)self coreEnvironment];
  v3 = [v2 logger];

  return v3;
}

- (id)serialQueueProvider
{
  v2 = [(AVTUIEnvironment *)self coreEnvironment];
  v3 = [v2 serialQueueProvider];

  return v3;
}

- (id)lockProvider
{
  v2 = [(AVTUIEnvironment *)self coreEnvironment];
  v3 = [v2 lockProvider];

  return v3;
}

- (NSURL)storeLocation
{
  v2 = [(AVTUIEnvironment *)self coreEnvironment];
  v3 = [v2 storeLocation];

  return v3;
}

- (NSURL)imageStoreLocation
{
  v2 = [(AVTUIEnvironment *)self coreEnvironment];
  v3 = [v2 imageStoreLocation];

  return v3;
}

- (NSURL)imageCacheStoreLocation
{
  v2 = [(AVTUIEnvironment *)self coreEnvironment];
  v3 = [v2 imageCacheStoreLocation];

  return v3;
}

- (NSURL)stickerImageStoreLocation
{
  v2 = [(AVTUIEnvironment *)self coreEnvironment];
  v3 = [v2 stickerImageStoreLocation];

  return v3;
}

- (NSNotificationCenter)notificationCenter
{
  v2 = [(AVTUIEnvironment *)self coreEnvironment];
  v3 = [v2 notificationCenter];

  return v3;
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