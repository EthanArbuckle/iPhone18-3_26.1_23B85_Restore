@interface AVTUIImageRenderService
+ (id)sharedInstance;
- (AVTUIImageRenderService)init;
- (id)cleanupBlock;
- (void)_generateAndCacheImageForAvatarRecord:(id)a3 scope:(id)a4 withReply:(id)a5;
- (void)_lock_beginCleanupTimer;
- (void)_lock_invalidateCleanupTimer;
- (void)_requestImageForAvatar:(id)a3 scope:(id)a4 withModifications:(id)a5 withReply:(id)a6;
- (void)_requestImageForAvatar:(id)a3 scope:(id)a4 withReply:(id)a5;
- (void)_requestStickerImageForAvatarRecord:(id)a3 withStickerPackName:(id)a4 stickerConfigurationName:(id)a5 resource:(id)a6 withReply:(id)a7;
- (void)dealloc;
- (void)generateAndCacheImageForAvatarRecord:(id)a3 scope:(id)a4 withReply:(id)a5;
- (void)requestAnimojiStickerImageForAvatarRecord:(id)a3 withStickerPackName:(id)a4 stickerConfigurationName:(id)a5 resource:(id)a6 withReply:(id)a7;
- (void)requestImageForAvatar:(id)a3 scope:(id)a4 withModifications:(id)a5 withReply:(id)a6;
- (void)requestImageForAvatar:(id)a3 scope:(id)a4 withReply:(id)a5;
- (void)requestStickerImageForAvatarRecord:(id)a3 withStickerPackName:(id)a4 stickerConfigurationName:(id)a5 resource:(id)a6 withReply:(id)a7;
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

    v5 = [MEMORY[0x1E698E330] defaultEnvironment];
    v6 = [AVTImageStore alloc];
    v7 = [v5 imageStoreLocation];
    v8 = [(AVTImageStore *)v6 initWithEnvironment:v5 validateImages:1 location:v7];
    imageStore = v2->_imageStore;
    v2->_imageStore = v8;

    v10 = [AVTClippableImageStore alloc];
    v11 = [v5 stickerImageStoreLocation];
    v12 = objc_alloc_init(AVTStickerImageEncoder);
    v13 = [(AVTImageStore *)v10 initWithEnvironment:v5 validateImages:1 location:v11 encoder:v12];
    clippableImageStore = v2->_clippableImageStore;
    v2->_clippableImageStore = v13;

    v15 = [(AVTUIEnvironment *)v2->_environment logger];
    logger = v2->_logger;
    v2->_logger = v15;

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
  v3 = [(AVTUIImageRenderService *)self transactionCountLock];
  [v3 lock];

  [(AVTUIImageRenderService *)self setActiveTransactionCount:[(AVTUIImageRenderService *)self activeTransactionCount]+ 1];
  v4 = [(AVTUIImageRenderService *)self activeTransactionCount];
  [(AVTUIImageRenderService *)self _lock_invalidateCleanupTimer];
  v5 = [(AVTUIImageRenderService *)self transactionCountLock];
  [v5 unlock];

  v6 = [(AVTUIImageRenderService *)self logger];
  [v6 logIncrementingRemoteRendererTransactionCount:v4];
}

- (void)transactionCompleted
{
  v3 = [(AVTUIImageRenderService *)self transactionCountLock];
  [v3 lock];

  [(AVTUIImageRenderService *)self setActiveTransactionCount:[(AVTUIImageRenderService *)self activeTransactionCount]- 1];
  v4 = [(AVTUIImageRenderService *)self activeTransactionCount];
  v5 = [(AVTUIImageRenderService *)self logger];
  [v5 logDecrementingRemoteRendererTransactionCount:v4];

  if (!v4)
  {
    [(AVTUIImageRenderService *)self _lock_beginCleanupTimer];
  }

  v6 = [(AVTUIImageRenderService *)self transactionCountLock];
  [v6 unlock];
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
    v5 = [(AVTUIImageRenderService *)self logger];
    [v5 logCancellingCleanupBlock];

    v6 = objc_loadWeakRetained(&self->_cleanupBlock);
    dispatch_block_cancel(v6);
  }
}

- (void)_requestImageForAvatar:(id)a3 scope:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(AVTUIImageRenderService *)self transactionAdded];
  v12 = [[AVTAvatarImageRenderer alloc] initWithEnvironment:self->_environment];
  v11 = [(AVTAvatarImageRenderer *)v12 _imageForAvatar:v10 scope:v9];

  v8[2](v8, v11);
  [(AVTUIImageRenderService *)self transactionCompleted];
}

- (void)_requestImageForAvatar:(id)a3 scope:(id)a4 withModifications:(id)a5 withReply:(id)a6
{
  v17 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  [(AVTUIImageRenderService *)self transactionAdded];
  v13 = [AVTAvatarImageRenderer alloc];
  if (v17)
  {
    v14 = [(AVTAvatarImageRenderer *)v13 initWithSceneNodeModifications:v17];
  }

  else
  {
    v14 = [(AVTAvatarImageRenderer *)v13 initWithEnvironment:self->_environment];
  }

  v15 = v14;
  v16 = [(AVTAvatarImageRenderer *)v14 _imageForAvatar:v12 scope:v11];

  v10[2](v10, v16);
  [(AVTUIImageRenderService *)self transactionCompleted];
}

- (void)_generateAndCacheImageForAvatarRecord:(id)a3 scope:(id)a4 withReply:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  [(AVTUIImageRenderService *)self transactionAdded];
  context = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x1E698E328] avatarForRecord:v22];
  v11 = [[AVTAvatarImageRenderer alloc] initWithEnvironment:self->_environment];
  v12 = [(AVTAvatarImageRenderer *)v11 _imageForAvatar:v10 scope:v8];
  if (!v12)
  {
    v13 = [(AVTUIImageRenderService *)self logger];
    [v13 logNilImageReturnedFromAVTAvatarRecordImageProvider];
  }

  v14 = [AVTAvatarRecordCacheableResource alloc];
  v15 = [(AVTUIImageRenderService *)self environment];
  v16 = [(AVTAvatarRecordCacheableResource *)v14 initWithAvatarRecord:v22 includeAvatarData:0 environment:v15];

  v17 = [(AVTImageStore *)self->_imageStore saveImage:v12 forItem:v16 scope:v8 error:0];
  v18 = [(AVTUIImageRenderService *)self logger];
  v19 = [0 path];
  if (v17)
  {
    [v18 logImageStoreDoneInServiceForPath:v19];

    v20 = [(AVTImageStore *)self->_imageStore resourceURLForItem:v16 scope:v8];
    v9[2](v9, v20);
  }

  else
  {
    [v18 logImageStoreFailedInServiceForPath:v19 error:0];

    v9[2](v9, 0);
  }

  [(AVTUIImageRenderService *)self transactionCompleted];

  objc_autoreleasePoolPop(context);
}

- (void)_requestStickerImageForAvatarRecord:(id)a3 withStickerPackName:(id)a4 stickerConfigurationName:(id)a5 resource:(id)a6 withReply:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = MEMORY[0x1E698E2C0];
  if (isKindOfClass)
  {
    v20 = v13;
    v21 = [v20 puppetName];
    v22 = [v19 stickerConfigurationForAnimojiNamed:v21 inStickerPack:v14 stickerName:v15];

    if (v22)
    {
      goto LABEL_3;
    }

LABEL_8:
    v27 = [v13 identifier];
    NSLog(&cfstr_NoStickerConfi.isa, v27, v14, v15);

    v17[2](v17, 0);
    goto LABEL_9;
  }

  v22 = [MEMORY[0x1E698E2C0] stickerConfigurationForMemojiInStickerPack:v14 stickerName:v15];
  if (!v22)
  {
    goto LABEL_8;
  }

LABEL_3:
  v28 = v16;
  [(AVTUIImageRenderService *)self transactionAdded];
  v23 = self->_currentStickerRenderer;
  if (!v23 || ([v13 isEqual:self->_currentAvatarRecord] & 1) == 0)
  {
    v24 = [[AVTUIStickerRenderer alloc] initWithAvatarRecord:v13 stickerGeneratorPool:self->_generatorPool scheduler:self->_taskScheduler];

    objc_storeStrong(&self->_currentAvatarRecord, a3);
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
  v31 = self;
  v32 = v17;
  v26 = (v25)[2](v25, v29, 1);

  _Block_object_dispose(v34, 8);
  v16 = v28;
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

- (void)requestImageForAvatar:(id)a3 scope:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__AVTUIImageRenderService_requestImageForAvatar_scope_withReply___block_invoke;
  v15[3] = &unk_1E7F3CD68;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(workQueue, v15);
}

- (void)requestImageForAvatar:(id)a3 scope:(id)a4 withModifications:(id)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__AVTUIImageRenderService_requestImageForAvatar_scope_withModifications_withReply___block_invoke;
  block[3] = &unk_1E7F3CD90;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_sync(workQueue, block);
}

- (void)generateAndCacheImageForAvatarRecord:(id)a3 scope:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__AVTUIImageRenderService_generateAndCacheImageForAvatarRecord_scope_withReply___block_invoke;
  v15[3] = &unk_1E7F3CD68;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(workQueue, v15);
}

- (void)requestStickerImageForAvatarRecord:(id)a3 withStickerPackName:(id)a4 stickerConfigurationName:(id)a5 resource:(id)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  workQueue = self->_workQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __126__AVTUIImageRenderService_requestStickerImageForAvatarRecord_withStickerPackName_stickerConfigurationName_resource_withReply___block_invoke;
  v23[3] = &unk_1E7F3CDB8;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(workQueue, v23);
}

- (void)requestAnimojiStickerImageForAvatarRecord:(id)a3 withStickerPackName:(id)a4 stickerConfigurationName:(id)a5 resource:(id)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  workQueue = self->_workQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __133__AVTUIImageRenderService_requestAnimojiStickerImageForAvatarRecord_withStickerPackName_stickerConfigurationName_resource_withReply___block_invoke;
  v23[3] = &unk_1E7F3CDB8;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(workQueue, v23);
}

- (id)cleanupBlock
{
  WeakRetained = objc_loadWeakRetained(&self->_cleanupBlock);

  return WeakRetained;
}

@end