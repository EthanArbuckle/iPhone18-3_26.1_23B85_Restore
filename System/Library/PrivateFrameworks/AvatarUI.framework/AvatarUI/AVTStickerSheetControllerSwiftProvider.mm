@interface AVTStickerSheetControllerSwiftProvider
+ (id)stickerCacheWithEnvironment:(id)a3;
- (AVTStickerSheetControllerSwiftProvider)init;
- (AVTStickerSheetControllerSwiftProviderDelegate)delegate;
- (UIEdgeInsets)sectionInsets;
- (id)stickerSheetController:(id)a3 requestsStickerForFileURL:(id)a4 localizedDescription:(id)a5 forItemWithIdentifier:(id)a6;
- (id)stickerSheetControllerForAvatarRecord:(id)a3;
- (id)stickerSheetViewForAvatarRecord:(id)a3;
- (void)_notifyStoreChanged;
- (void)beginObservingAvatarStoreChanges;
- (void)dealloc;
- (void)endObservingAvatarStoreChanges;
- (void)stickerSheetController:(id)a3 didFinishRenderingStickersForRecord:(id)a4;
- (void)stickerSheetController:(id)a3 didScrollToContentOffset:(CGPoint)a4;
@end

@implementation AVTStickerSheetControllerSwiftProvider

- (AVTStickerSheetControllerSwiftProvider)init
{
  v38[2] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = AVTStickerSheetControllerSwiftProvider;
  v2 = [(AVTStickerSheetControllerSwiftProvider *)&v36 init];
  if (v2)
  {
    v3 = +[AVTUIEnvironment defaultEnvironment];
    environment = v2->_environment;
    v2->_environment = v3;

    v5 = [(AVTUIEnvironment *)v2->_environment logger];
    logger = v2->_logger;
    v2->_logger = v5;

    v7 = objc_alloc_init(AVTAvatarStore);
    avatarStore = v2->_avatarStore;
    v2->_avatarStore = v7;

    v9 = [[AVTUIStickerGeneratorPool alloc] initWithMaxStickerGeneratorCount:2];
    generatorPool = v2->_generatorPool;
    v2->_generatorPool = v9;

    v11 = [(AVTUIEnvironment *)v2->_environment backgroundRenderingQueue];
    renderingQueue = v2->_renderingQueue;
    v2->_renderingQueue = v11;

    v13 = [(AVTUIEnvironment *)v2->_environment backgroundEncodingQueue];
    encodingQueue = v2->_encodingQueue;
    v2->_encodingQueue = v13;

    v15 = [objc_opt_class() stickerCacheWithEnvironment:v2->_environment];
    cache = v2->_cache;
    v2->_cache = v15;

    if (AVTUIShowPrereleaseStickerPack_once())
    {
      v17 = *MEMORY[0x1E698E300];
      v38[0] = *MEMORY[0x1E698E2E0];
      v38[1] = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = v38;
      v20 = 2;
    }

    else
    {
      v37 = *MEMORY[0x1E698E2E0];
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v37;
      v20 = 1;
    }

    v21 = [v18 arrayWithObjects:v19 count:v20];
    v22 = [[AVTStickerConfigurationProvider alloc] initWithEnvironment:v2->_environment forStickerPacks:v21 stickerConfigurationNames:0];
    configurationProvider = v2->_configurationProvider;
    v2->_configurationProvider = v22;

    v24 = [AVTAvatarRecordDataSource alloc];
    v25 = v2->_avatarStore;
    v26 = [MEMORY[0x1E698E310] requestForAllAvatars];
    v27 = [(AVTAvatarRecordDataSource *)v24 initWithRecordStore:v25 fetchRequest:v26 environment:v2->_environment];

    v28 = [AVTStickerTaskScheduler schedulerWithRecordDataSource:v27];
    stickerScheduler = v2->_stickerScheduler;
    v2->_stickerScheduler = v28;

    v30 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:v2->_environment taskScheduler:v2->_stickerScheduler];
    imageProvider = v2->_imageProvider;
    v2->_imageProvider = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sheetControllers = v2->_sheetControllers;
    v2->_sheetControllers = v32;

    v34 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v2->_sectionInsets.top = *MEMORY[0x1E69DDCE0];
    *&v2->_sectionInsets.bottom = v34;
    [(AVTStickerSheetControllerSwiftProvider *)v2 beginObservingAvatarStoreChanges];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;

  v5.receiver = self;
  v5.super_class = AVTStickerSheetControllerSwiftProvider;
  [(AVTStickerSheetControllerSwiftProvider *)&v5 dealloc];
}

+ (id)stickerCacheWithEnvironment:(id)a3
{
  v3 = a3;
  if (!AVTUIStickersCaching() || AVTUIFlushStickersCache())
  {
    v4 = [v3 stickerImageStoreLocation];
    v5 = [v3 logger];
    [AVTImageStore clearContentAtLocation:v4 logger:v5];

    AVTUISetFlushStickersCache();
  }

  v6 = objc_alloc_init(AVTPassThroughResourceCache);

  return v6;
}

- (id)stickerSheetControllerForAvatarRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerSheetControllerSwiftProvider *)self sheetControllers];
  v6 = [v4 identifier];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(AVTStickerConfigurationProvider *)self->_configurationProvider stickerConfigurationsForAvatarRecord:v4];
    v10 = [AVTStickerSheetModel sheetModelForAvatarRecord:v4 withConfigurations:v9 cache:self->_cache taskScheduler:self->_stickerScheduler renderingQueue:self->_renderingQueue encodingQueue:self->_encodingQueue stickerGeneratorPool:self->_generatorPool imageProvider:self->_imageProvider environment:self->_environment];
    v11 = [[AVTStickerSheetController alloc] initWithStickerSheetModel:v10 taskScheduler:self->_stickerScheduler allowsPeel:1];
    [(AVTStickerSheetController *)v11 setSectionInsets:self->_sectionInsets.top, self->_sectionInsets.left, self->_sectionInsets.bottom, self->_sectionInsets.right];
    v12 = [(AVTStickerSheetControllerSwiftProvider *)self sheetControllers];
    v13 = [v4 identifier];
    [v12 setObject:v11 forKey:v13];

    v8 = v11;
  }

  return v8;
}

- (id)stickerSheetViewForAvatarRecord:(id)a3
{
  v4 = [(AVTStickerSheetControllerSwiftProvider *)self stickerSheetControllerForAvatarRecord:a3];
  [v4 setDelegate:self];
  [v4 sheetWillAppear];
  v5 = [v4 view];

  return v5;
}

- (void)stickerSheetController:(id)a3 didFinishRenderingStickersForRecord:(id)a4
{
  v5 = a4;
  v6 = [(AVTStickerSheetControllerSwiftProvider *)self generatorPool];
  [v6 flushGeneratorForRecord:v5];
}

- (void)stickerSheetController:(id)a3 didScrollToContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(AVTStickerSheetControllerSwiftProvider *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(AVTStickerSheetControllerSwiftProvider *)self delegate];
    [v9 stickerSheetControllerDidScrollToContentOffset:{x, y}];
  }
}

- (id)stickerSheetController:(id)a3 requestsStickerForFileURL:(id)a4 localizedDescription:(id)a5 forItemWithIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(AVTStickerSheetControllerSwiftProvider *)self delegate];
  v13 = [v12 stickerSheetControllerProvider:self requestsStickerForFileURL:v11 localizedDescription:v10 forItemWithIdentifier:v9];

  return v13;
}

- (void)beginObservingAvatarStoreChanges
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E698E308];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__AVTStickerSheetControllerSwiftProvider_beginObservingAvatarStoreChanges__block_invoke;
  v7[3] = &unk_1E7F3B248;
  objc_copyWeak(&v8, &location);
  v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __74__AVTStickerSheetControllerSwiftProvider_beginObservingAvatarStoreChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyStoreChanged];
}

- (void)endObservingAvatarStoreChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;
}

- (void)_notifyStoreChanged
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__AVTStickerSheetControllerSwiftProvider__notifyStoreChanged__block_invoke;
  v2[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __61__AVTStickerSheetControllerSwiftProvider__notifyStoreChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[12] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_9];
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = WeakRetained[12];
  WeakRetained[12] = v1;

  [WeakRetained[9] reloadData];
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [WeakRetained delegate];
    [v5 stickerSheetControllerDidUpdateContent];
  }
}

- (AVTStickerSheetControllerSwiftProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)sectionInsets
{
  top = self->_sectionInsets.top;
  left = self->_sectionInsets.left;
  bottom = self->_sectionInsets.bottom;
  right = self->_sectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end