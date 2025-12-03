@interface AVTUIImageRenderService
+ (id)sharedInstance;
- (AVTUIImageRenderService)init;
- (id)cleanupBlock;
- (void)_generateAndCacheImageForAvatarRecord:(id)record scope:(id)scope withReply:(id)reply;
- (void)_lock_beginCleanupTimer;
- (void)_lock_invalidateCleanupTimer;
- (void)_requestImageForAvatar:(id)avatar scope:(id)scope withModifications:(id)modifications withReply:(id)reply;
- (void)_requestImageForAvatar:(id)avatar scope:(id)scope withReply:(id)reply;
- (void)_requestStickerImageForAvatarRecord:(id)record withStickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource withReply:(id)reply;
- (void)dealloc;
- (void)generateAndCacheImageForAvatarRecord:(id)record scope:(id)scope withReply:(id)reply;
- (void)requestAnimojiStickerImageForAvatarRecord:(id)record withStickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource withReply:(id)reply;
- (void)requestImageForAvatar:(id)avatar scope:(id)scope withModifications:(id)modifications withReply:(id)reply;
- (void)requestImageForAvatar:(id)avatar scope:(id)scope withReply:(id)reply;
- (void)requestStickerImageForAvatarRecord:(id)record withStickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource withReply:(id)reply;
- (void)transactionAdded;
- (void)transactionCompleted;
@end

@implementation AVTUIImageRenderService

- (AVTUIImageRenderService)init
{
  v27.receiver = self;
  v27.super_class = AVTUIImageRenderService;
  v2 = [(AVTUIImageRenderService *)&v27 init];
  if (v2)
  {
    v3 = +[AVTUIEnvironment defaultEnvironment];
    environment = v2->_environment;
    v2->_environment = v3;

    defaultEnvironment = [MEMORY[0x1E698E330] defaultEnvironment];
    v6 = [AVTImageStore alloc];
    imageStoreLocation = [defaultEnvironment imageStoreLocation];
    v8 = [(AVTImageStore *)v6 initWithEnvironment:defaultEnvironment validateImages:1 location:imageStoreLocation];
    imageStore = v2->_imageStore;
    v2->_imageStore = v8;

    v10 = [AVTClippableImageStore alloc];
    stickerImageStoreLocation = [defaultEnvironment stickerImageStoreLocation];
    v12 = objc_alloc_init(AVTStickerImageEncoder);
    v13 = [(AVTImageStore *)v10 initWithEnvironment:defaultEnvironment validateImages:1 location:stickerImageStoreLocation encoder:v12];
    clippableImageStore = v2->_clippableImageStore;
    v2->_clippableImageStore = v13;

    logger = [(AVTUIEnvironment *)v2->_environment logger];
    logger = v2->_logger;
    v2->_logger = logger;

    v17 = [[AVTUIStickerGeneratorPool alloc] initWithMaxStickerGeneratorCount:1];
    generatorPool = v2->_generatorPool;
    v2->_generatorPool = v17;

    v19 = +[AVTSerialTaskScheduler fifoScheduler];
    taskScheduler = v2->_taskScheduler;
    v2->_taskScheduler = v19;

    v2->_activeTransactionCount = 0;
    v21 = objc_alloc_init(MEMORY[0x1E696AD10]);
    transactionCountLock = v2->_transactionCountLock;
    v2->_transactionCountLock = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.avatarui.MemojiImageRenderService.work", v23);
    workQueue = v2->_workQueue;
    v2->_workQueue = v24;
  }

  return v2;
}

- (void)dealloc
{
  transaction = self->_transaction;
  self->_transaction = 0;

  v4.receiver = self;
  v4.super_class = AVTUIImageRenderService;
  [(AVTUIImageRenderService *)&v4 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AVTUIImageRenderService sharedInstance];
  }

  v3 = sharedInstance_renderService;

  return v3;
}

uint64_t __41__AVTUIImageRenderService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AVTUIImageRenderService);
  v1 = sharedInstance_renderService;
  sharedInstance_renderService = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)transactionAdded
{
  transactionCountLock = [(AVTUIImageRenderService *)self transactionCountLock];
  [transactionCountLock lock];

  [(AVTUIImageRenderService *)self setActiveTransactionCount:[(AVTUIImageRenderService *)self activeTransactionCount]+ 1];
  activeTransactionCount = [(AVTUIImageRenderService *)self activeTransactionCount];
  [(AVTUIImageRenderService *)self _lock_invalidateCleanupTimer];
  transactionCountLock2 = [(AVTUIImageRenderService *)self transactionCountLock];
  [transactionCountLock2 unlock];

  logger = [(AVTUIImageRenderService *)self logger];
  [logger logIncrementingRemoteRendererTransactionCount:activeTransactionCount];
}

- (void)transactionCompleted
{
  transactionCountLock = [(AVTUIImageRenderService *)self transactionCountLock];
  [transactionCountLock lock];

  [(AVTUIImageRenderService *)self setActiveTransactionCount:[(AVTUIImageRenderService *)self activeTransactionCount]- 1];
  activeTransactionCount = [(AVTUIImageRenderService *)self activeTransactionCount];
  logger = [(AVTUIImageRenderService *)self logger];
  [logger logDecrementingRemoteRendererTransactionCount:activeTransactionCount];

  if (!activeTransactionCount)
  {
    [(AVTUIImageRenderService *)self _lock_beginCleanupTimer];
  }

  transactionCountLock2 = [(AVTUIImageRenderService *)self transactionCountLock];
  [transactionCountLock2 unlock];
}

- (void)_lock_beginCleanupTimer
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AVTUIImageRenderService__lock_beginCleanupTimer__block_invoke;
  v7[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v8, &location);
  v5 = dispatch_block_create(0, v7);
  objc_storeWeak(&self->_cleanupBlock, v5);
  v6 = dispatch_time(0, 10000000000);
  dispatch_after(v6, MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __50__AVTUIImageRenderService__lock_beginCleanupTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained logger];
    [v2 logCleanupTimerComplete];

    v3 = [v6 transactionCountLock];
    [v3 lock];

    v4 = v6[9];
    v6[9] = 0;

    v5 = [v6 transactionCountLock];
    [v5 unlock];

    [v6 exit];
    WeakRetained = v6;
  }
}

- (void)_lock_invalidateCleanupTimer
{
  transaction = self->_transaction;
  self->_transaction = 0;

  WeakRetained = objc_loadWeakRetained(&self->_cleanupBlock);
  if (WeakRetained)
  {
    logger = [(AVTUIImageRenderService *)self logger];
    [logger logCancellingCleanupBlock];

    v6 = objc_loadWeakRetained(&self->_cleanupBlock);
    dispatch_block_cancel(v6);
  }
}

- (void)_requestImageForAvatar:(id)avatar scope:(id)scope withReply:(id)reply
{
  replyCopy = reply;
  scopeCopy = scope;
  avatarCopy = avatar;
  [(AVTUIImageRenderService *)self transactionAdded];
  v12 = [[AVTAvatarImageRenderer alloc] initWithEnvironment:self->_environment];
  v11 = [(AVTAvatarImageRenderer *)v12 _imageForAvatar:avatarCopy scope:scopeCopy];

  replyCopy[2](replyCopy, v11);
  [(AVTUIImageRenderService *)self transactionCompleted];
}

- (void)_requestImageForAvatar:(id)avatar scope:(id)scope withModifications:(id)modifications withReply:(id)reply
{
  modificationsCopy = modifications;
  replyCopy = reply;
  scopeCopy = scope;
  avatarCopy = avatar;
  [(AVTUIImageRenderService *)self transactionAdded];
  v13 = [AVTAvatarImageRenderer alloc];
  if (modificationsCopy)
  {
    v14 = [(AVTAvatarImageRenderer *)v13 initWithSceneNodeModifications:modificationsCopy];
  }

  else
  {
    v14 = [(AVTAvatarImageRenderer *)v13 initWithEnvironment:self->_environment];
  }

  v15 = v14;
  v16 = [(AVTAvatarImageRenderer *)v14 _imageForAvatar:avatarCopy scope:scopeCopy];

  replyCopy[2](replyCopy, v16);
  [(AVTUIImageRenderService *)self transactionCompleted];
}

- (void)_generateAndCacheImageForAvatarRecord:(id)record scope:(id)scope withReply:(id)reply
{
  recordCopy = record;
  scopeCopy = scope;
  replyCopy = reply;
  [(AVTUIImageRenderService *)self transactionAdded];
  context = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x1E698E328] avatarForRecord:recordCopy];
  v11 = [[AVTAvatarImageRenderer alloc] initWithEnvironment:self->_environment];
  v12 = [(AVTAvatarImageRenderer *)v11 _imageForAvatar:v10 scope:scopeCopy];
  if (!v12)
  {
    logger = [(AVTUIImageRenderService *)self logger];
    [logger logNilImageReturnedFromAVTAvatarRecordImageProvider];
  }

  v14 = [AVTAvatarRecordCacheableResource alloc];
  environment = [(AVTUIImageRenderService *)self environment];
  v16 = [(AVTAvatarRecordCacheableResource *)v14 initWithAvatarRecord:recordCopy includeAvatarData:0 environment:environment];

  v17 = [(AVTImageStore *)self->_imageStore saveImage:v12 forItem:v16 scope:scopeCopy error:0];
  logger2 = [(AVTUIImageRenderService *)self logger];
  path = [0 path];
  if (v17)
  {
    [logger2 logImageStoreDoneInServiceForPath:path];

    v20 = [(AVTImageStore *)self->_imageStore resourceURLForItem:v16 scope:scopeCopy];
    replyCopy[2](replyCopy, v20);
  }

  else
  {
    [logger2 logImageStoreFailedInServiceForPath:path error:0];

    replyCopy[2](replyCopy, 0);
  }

  [(AVTUIImageRenderService *)self transactionCompleted];

  objc_autoreleasePoolPop(context);
}

- (void)_requestStickerImageForAvatarRecord:(id)record withStickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource withReply:(id)reply
{
  recordCopy = record;
  nameCopy = name;
  configurationNameCopy = configurationName;
  resourceCopy = resource;
  replyCopy = reply;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = MEMORY[0x1E698E2C0];
  if (isKindOfClass)
  {
    v20 = recordCopy;
    puppetName = [v20 puppetName];
    v22 = [v19 stickerConfigurationForAnimojiNamed:puppetName inStickerPack:nameCopy stickerName:configurationNameCopy];

    if (v22)
    {
      goto LABEL_3;
    }

LABEL_8:
    identifier = [recordCopy identifier];
    NSLog(&cfstr_NoStickerConfi.isa, identifier, nameCopy, configurationNameCopy);

    replyCopy[2](replyCopy, 0);
    goto LABEL_9;
  }

  v22 = [MEMORY[0x1E698E2C0] stickerConfigurationForMemojiInStickerPack:nameCopy stickerName:configurationNameCopy];
  if (!v22)
  {
    goto LABEL_8;
  }

LABEL_3:
  v28 = resourceCopy;
  [(AVTUIImageRenderService *)self transactionAdded];
  v23 = self->_currentStickerRenderer;
  if (!v23 || ([recordCopy isEqual:self->_currentAvatarRecord] & 1) == 0)
  {
    v24 = [[AVTUIStickerRenderer alloc] initWithAvatarRecord:recordCopy stickerGeneratorPool:self->_generatorPool scheduler:self->_taskScheduler];

    objc_storeStrong(&self->_currentAvatarRecord, record);
    objc_storeStrong(&self->_currentStickerRenderer, v24);
    v23 = v24;
  }

  v25 = [(AVTUIStickerRenderer *)v23 scheduledStickerResourceProviderForStickerConfiguration:v22 usingService:0];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __127__AVTUIImageRenderService__requestStickerImageForAvatarRecord_withStickerPackName_stickerConfigurationName_resource_withReply___block_invoke;
  v29[3] = &unk_1E7F3CD40;
  v33 = v34;
  v30 = v22;
  selfCopy = self;
  v32 = replyCopy;
  v26 = (v25)[2](v25, v29, 1);

  _Block_object_dispose(v34, 8);
  resourceCopy = v28;
LABEL_9:
}

void __127__AVTUIImageRenderService__requestStickerImageForAvatarRecord_withStickerPackName_stickerConfigurationName_resource_withReply___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 URL];

  if (v3)
  {
    [*(a1 + 32) unload];
  }

  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = v5 + 1;
  if (!v5)
  {
    if (!v9)
    {
      v6 = [*(a1 + 40) logger];
      [v6 logNilImageReturnedFromAVTUIStickerRenderer];
    }

    (*(*(a1 + 48) + 16))();
    v7 = [*(a1 + 40) logger];
    v8 = [*(a1 + 32) name];
    [v7 logRenderingStickerEnd:v8];

    [*(a1 + 40) transactionCompleted];
  }
}

- (void)requestImageForAvatar:(id)avatar scope:(id)scope withReply:(id)reply
{
  avatarCopy = avatar;
  scopeCopy = scope;
  replyCopy = reply;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__AVTUIImageRenderService_requestImageForAvatar_scope_withReply___block_invoke;
  v15[3] = &unk_1E7F3CD68;
  v15[4] = self;
  v16 = avatarCopy;
  v17 = scopeCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = scopeCopy;
  v14 = avatarCopy;
  dispatch_sync(workQueue, v15);
}

- (void)requestImageForAvatar:(id)avatar scope:(id)scope withModifications:(id)modifications withReply:(id)reply
{
  avatarCopy = avatar;
  scopeCopy = scope;
  modificationsCopy = modifications;
  replyCopy = reply;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__AVTUIImageRenderService_requestImageForAvatar_scope_withModifications_withReply___block_invoke;
  block[3] = &unk_1E7F3CD90;
  block[4] = self;
  v20 = avatarCopy;
  v21 = scopeCopy;
  v22 = modificationsCopy;
  v23 = replyCopy;
  v15 = replyCopy;
  v16 = modificationsCopy;
  v17 = scopeCopy;
  v18 = avatarCopy;
  dispatch_sync(workQueue, block);
}

- (void)generateAndCacheImageForAvatarRecord:(id)record scope:(id)scope withReply:(id)reply
{
  recordCopy = record;
  scopeCopy = scope;
  replyCopy = reply;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__AVTUIImageRenderService_generateAndCacheImageForAvatarRecord_scope_withReply___block_invoke;
  v15[3] = &unk_1E7F3CD68;
  v15[4] = self;
  v16 = recordCopy;
  v17 = scopeCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = scopeCopy;
  v14 = recordCopy;
  dispatch_sync(workQueue, v15);
}

- (void)requestStickerImageForAvatarRecord:(id)record withStickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource withReply:(id)reply
{
  recordCopy = record;
  nameCopy = name;
  configurationNameCopy = configurationName;
  resourceCopy = resource;
  replyCopy = reply;
  workQueue = self->_workQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __126__AVTUIImageRenderService_requestStickerImageForAvatarRecord_withStickerPackName_stickerConfigurationName_resource_withReply___block_invoke;
  v23[3] = &unk_1E7F3CDB8;
  v23[4] = self;
  v24 = recordCopy;
  v25 = nameCopy;
  v26 = configurationNameCopy;
  v27 = resourceCopy;
  v28 = replyCopy;
  v18 = replyCopy;
  v19 = resourceCopy;
  v20 = configurationNameCopy;
  v21 = nameCopy;
  v22 = recordCopy;
  dispatch_async(workQueue, v23);
}

- (void)requestAnimojiStickerImageForAvatarRecord:(id)record withStickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource withReply:(id)reply
{
  recordCopy = record;
  nameCopy = name;
  configurationNameCopy = configurationName;
  resourceCopy = resource;
  replyCopy = reply;
  workQueue = self->_workQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __133__AVTUIImageRenderService_requestAnimojiStickerImageForAvatarRecord_withStickerPackName_stickerConfigurationName_resource_withReply___block_invoke;
  v23[3] = &unk_1E7F3CDB8;
  v23[4] = self;
  v24 = recordCopy;
  v25 = nameCopy;
  v26 = configurationNameCopy;
  v27 = resourceCopy;
  v28 = replyCopy;
  v18 = replyCopy;
  v19 = resourceCopy;
  v20 = configurationNameCopy;
  v21 = nameCopy;
  v22 = recordCopy;
  dispatch_async(workQueue, v23);
}

- (id)cleanupBlock
{
  WeakRetained = objc_loadWeakRetained(&self->_cleanupBlock);

  return WeakRetained;
}

@end