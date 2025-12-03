@interface AVTStickerSheetControllerSwiftProvider
+ (id)stickerCacheWithEnvironment:(id)environment;
- (AVTStickerSheetControllerSwiftProvider)init;
- (AVTStickerSheetControllerSwiftProviderDelegate)delegate;
- (UIEdgeInsets)sectionInsets;
- (id)stickerSheetController:(id)controller requestsStickerForFileURL:(id)l localizedDescription:(id)description forItemWithIdentifier:(id)identifier;
- (id)stickerSheetControllerForAvatarRecord:(id)record;
- (id)stickerSheetViewForAvatarRecord:(id)record;
- (void)_notifyStoreChanged;
- (void)beginObservingAvatarStoreChanges;
- (void)dealloc;
- (void)endObservingAvatarStoreChanges;
- (void)stickerSheetController:(id)controller didFinishRenderingStickersForRecord:(id)record;
- (void)stickerSheetController:(id)controller didScrollToContentOffset:(CGPoint)offset;
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

    logger = [(AVTUIEnvironment *)v2->_environment logger];
    logger = v2->_logger;
    v2->_logger = logger;

    v7 = objc_alloc_init(AVTAvatarStore);
    avatarStore = v2->_avatarStore;
    v2->_avatarStore = v7;

    v9 = [[AVTUIStickerGeneratorPool alloc] initWithMaxStickerGeneratorCount:2];
    generatorPool = v2->_generatorPool;
    v2->_generatorPool = v9;

    backgroundRenderingQueue = [(AVTUIEnvironment *)v2->_environment backgroundRenderingQueue];
    renderingQueue = v2->_renderingQueue;
    v2->_renderingQueue = backgroundRenderingQueue;

    backgroundEncodingQueue = [(AVTUIEnvironment *)v2->_environment backgroundEncodingQueue];
    encodingQueue = v2->_encodingQueue;
    v2->_encodingQueue = backgroundEncodingQueue;

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
    requestForAllAvatars = [MEMORY[0x1E698E310] requestForAllAvatars];
    v27 = [(AVTAvatarRecordDataSource *)v24 initWithRecordStore:v25 fetchRequest:requestForAllAvatars environment:v2->_environment];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;

  v5.receiver = self;
  v5.super_class = AVTStickerSheetControllerSwiftProvider;
  [(AVTStickerSheetControllerSwiftProvider *)&v5 dealloc];
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

- (id)stickerSheetControllerForAvatarRecord:(id)record
{
  recordCopy = record;
  sheetControllers = [(AVTStickerSheetControllerSwiftProvider *)self sheetControllers];
  identifier = [recordCopy identifier];
  v7 = [sheetControllers objectForKey:identifier];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(AVTStickerConfigurationProvider *)self->_configurationProvider stickerConfigurationsForAvatarRecord:recordCopy];
    v10 = [AVTStickerSheetModel sheetModelForAvatarRecord:recordCopy withConfigurations:v9 cache:self->_cache taskScheduler:self->_stickerScheduler renderingQueue:self->_renderingQueue encodingQueue:self->_encodingQueue stickerGeneratorPool:self->_generatorPool imageProvider:self->_imageProvider environment:self->_environment];
    v11 = [[AVTStickerSheetController alloc] initWithStickerSheetModel:v10 taskScheduler:self->_stickerScheduler allowsPeel:1];
    [(AVTStickerSheetController *)v11 setSectionInsets:self->_sectionInsets.top, self->_sectionInsets.left, self->_sectionInsets.bottom, self->_sectionInsets.right];
    sheetControllers2 = [(AVTStickerSheetControllerSwiftProvider *)self sheetControllers];
    identifier2 = [recordCopy identifier];
    [sheetControllers2 setObject:v11 forKey:identifier2];

    v8 = v11;
  }

  return v8;
}

- (id)stickerSheetViewForAvatarRecord:(id)record
{
  v4 = [(AVTStickerSheetControllerSwiftProvider *)self stickerSheetControllerForAvatarRecord:record];
  [v4 setDelegate:self];
  [v4 sheetWillAppear];
  view = [v4 view];

  return view;
}

- (void)stickerSheetController:(id)controller didFinishRenderingStickersForRecord:(id)record
{
  recordCopy = record;
  generatorPool = [(AVTStickerSheetControllerSwiftProvider *)self generatorPool];
  [generatorPool flushGeneratorForRecord:recordCopy];
}

- (void)stickerSheetController:(id)controller didScrollToContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  delegate = [(AVTStickerSheetControllerSwiftProvider *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(AVTStickerSheetControllerSwiftProvider *)self delegate];
    [delegate2 stickerSheetControllerDidScrollToContentOffset:{x, y}];
  }
}

- (id)stickerSheetController:(id)controller requestsStickerForFileURL:(id)l localizedDescription:(id)description forItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  descriptionCopy = description;
  lCopy = l;
  delegate = [(AVTStickerSheetControllerSwiftProvider *)self delegate];
  v13 = [delegate stickerSheetControllerProvider:self requestsStickerForFileURL:lCopy localizedDescription:descriptionCopy forItemWithIdentifier:identifierCopy];

  return v13;
}

- (void)beginObservingAvatarStoreChanges
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E698E308];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__AVTStickerSheetControllerSwiftProvider_beginObservingAvatarStoreChanges__block_invoke;
  v7[3] = &unk_1E7F3B248;
  objc_copyWeak(&v8, &location);
  v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_avatarStoreChangeObserver];

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