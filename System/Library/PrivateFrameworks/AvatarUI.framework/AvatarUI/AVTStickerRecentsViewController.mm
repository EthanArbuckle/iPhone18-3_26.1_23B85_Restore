@interface AVTStickerRecentsViewController
+ (id)imageStoreWithEnvironment:(id)environment;
+ (id)layoutForSize:(CGSize)size;
+ (id)stickerCacheWithEnvironment:(id)environment;
+ (id)stickerForRecentItem:(id)item;
+ (id)stickerRecentsController;
+ (id)stickerRecentsControllerForStore:(id)store;
- (AVTStickerRecentsViewController)initWithAvatarStore:(id)store environment:(id)environment;
- (AVTStickerRecentsViewControllerDelegate)delegate;
- (UIEdgeInsets)edgeInsetsForContainerSize:(CGSize)size;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)placeholderItems;
- (id)recentStickersWithCount:(int64_t)count;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)beginObservingAvatarStoreChanges;
- (void)buildRecentsItemsWithCompletionBlock:(id)block;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)determineOverlayTypeWithCompletionBlock:(id)block;
- (void)dismissOverlayViewAnimated:(BOOL)animated;
- (void)endObservingAvatarStoreChanges;
- (void)fetchDefaultMemojiIfNeeded;
- (void)overlayDidTapContinueButton:(id)button;
- (void)recentStickersDidChange:(id)change;
- (void)setupRenderingDependentPieces;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDisplayItems;
- (void)updateItemSizeForContainerSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AVTStickerRecentsViewController

+ (id)layoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  emojiGraphicsTraitsForCurrentScreenTraits = [MEMORY[0x1E69DCBD0] emojiGraphicsTraitsForCurrentScreenTraits];
  [emojiGraphicsTraitsForCurrentScreenTraits minimumInteritemSpacing];
  v7 = v6;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v10 = [AVTStickerRecentsLayout alloc];
  if (height == v9 && width == v8 || height < width)
  {
    v13 = 4;
    v14 = 2;
    v15 = v7;
    v16 = 7;
  }

  else
  {
    v13 = 3;
    v14 = 3;
    v15 = v7;
    v16 = 8;
  }

  v17 = [(AVTStickerRecentsLayout *)v10 initWithNumberOfItemsPerRow:v13 numberOfItemsPerColumn:v14 interitemPadding:v16 appButtonIndex:1 laysOutVertically:v15];

  return v17;
}

+ (id)stickerForRecentItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy url];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E6973F40]);
    v6 = [itemCopy url];
    localizedDescription = [itemCopy localizedDescription];
    v4 = [v5 initWithContentsOfFileURL:v6 localizedDescription:localizedDescription error:0];
  }

  return v4;
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

  if (AVTUIStickersCaching())
  {
    v6 = [AVTInMemoryResourceCache alloc];
    lockProvider = [environmentCopy lockProvider];
    logger2 = [environmentCopy logger];
    v9 = [(AVTInMemoryResourceCache *)v6 initWithLockProvider:lockProvider totalCostLimit:980000 logger:logger2];
  }

  else
  {
    v9 = objc_alloc_init(AVTPassThroughResourceCache);
  }

  return v9;
}

+ (id)imageStoreWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!AVTUIStickersCaching() || AVTUIFlushStickersCache())
  {
    stickerImageStoreLocation = [environmentCopy stickerImageStoreLocation];
    logger = [environmentCopy logger];
    [AVTImageStore clearContentAtLocation:stickerImageStoreLocation logger:logger];

    AVTUISetFlushStickersCache();
  }

  v6 = +[AVTUIStickerRenderer imageEncoder];
  v7 = [AVTClippableImageStore alloc];
  coreEnvironment = [environmentCopy coreEnvironment];
  stickerImageStoreLocation2 = [environmentCopy stickerImageStoreLocation];
  v10 = [(AVTImageStore *)v7 initWithEnvironment:coreEnvironment validateImages:1 location:stickerImageStoreLocation2 encoder:v6];

  return v10;
}

+ (id)stickerRecentsController
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  v4 = [self alloc];
  v5 = objc_alloc_init(AVTAvatarStore);
  v6 = [v4 initWithAvatarStore:v5 environment:v3];

  return v6;
}

+ (id)stickerRecentsControllerForStore:(id)store
{
  storeCopy = store;
  v5 = [self alloc];
  v6 = +[AVTUIEnvironment defaultEnvironment];
  v7 = [v5 initWithAvatarStore:storeCopy environment:v6];

  return v7;
}

- (AVTStickerRecentsViewController)initWithAvatarStore:(id)store environment:(id)environment
{
  storeCopy = store;
  environmentCopy = environment;
  v24.receiver = self;
  v24.super_class = AVTStickerRecentsViewController;
  v9 = [(AVTStickerRecentsViewController *)&v24 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = [AVTStickerRecentsButtonItem alloc];
    v11 = AVTAvatarUIBundle();
    v12 = [v11 localizedStringForKey:@"STICKER_RECENTS_BUTTON_TITLE" value:&stru_1F39618F0 table:@"Localized"];
    v13 = [(AVTStickerRecentsButtonItem *)v10 initWithLocalizedDescription:v12];
    buttonItem = v9->_buttonItem;
    v9->_buttonItem = v13;

    objc_storeStrong(&v9->_environment, environment);
    v15 = [objc_opt_class() layoutForSize:{50.0, 50.0}];
    stickerRecentsLayout = v9->_stickerRecentsLayout;
    v9->_stickerRecentsLayout = v15;

    v17 = [objc_opt_class() imageStoreWithEnvironment:v9->_environment];
    imageStore = v9->_imageStore;
    v9->_imageStore = v17;

    if (([storeCopy conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", storeCopy}];
    }

    v19 = storeCopy;
    [v19 setStickerBackendDelegate:v9];
    objc_storeStrong(&v9->_avatarStore, store);
    placeholderItems = [(AVTStickerRecentsViewController *)v9 placeholderItems];
    stickerItems = v9->_stickerItems;
    v9->_stickerItems = placeholderItems;

    [(AVTStickerRecentsViewController *)v9 updateDisplayItems];
    v22 = AVTUIShowPrereleaseStickerPack_once();
    if (v22)
    {
      LOBYTE(v22) = AVTUIShowPrereleaseStickerLabel_once();
    }

    v9->_showPrereleaseSticker = v22;
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;

  v5.receiver = self;
  v5.super_class = AVTStickerRecentsViewController;
  [(AVTStickerRecentsViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = AVTStickerRecentsViewController;
  [(AVTStickerRecentsViewController *)&v33 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(AVTStickerRecentsViewController *)self view];
  [view setBackgroundColor:clearColor];

  v5 = objc_alloc_init(MEMORY[0x1E69DC840]);
  collectionViewLayout = self->_collectionViewLayout;
  self->_collectionViewLayout = v5;

  interitemPadding = [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout interitemPadding];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setMinimumLineSpacing:interitemPadding];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setMinimumInteritemSpacing:interitemPadding];
  view2 = [(AVTStickerRecentsViewController *)self view];
  [view2 bounds];
  [(AVTStickerRecentsViewController *)self updateItemSizeForContainerSize:v9, v10];

  view3 = [(AVTStickerRecentsViewController *)self view];
  [view3 bounds];
  [(AVTStickerRecentsViewController *)self edgeInsetsForContainerSize:v12, v13];
  [(UICollectionView *)self->_collectionView setContentInset:?];

  v14 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view4 = [(AVTStickerRecentsViewController *)self view];
  [view4 bounds];
  v16 = [v14 initWithFrame:self->_collectionViewLayout collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v16;

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor2];

  [(UICollectionView *)self->_collectionView setScrollEnabled:0];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  view5 = [(AVTStickerRecentsViewController *)self view];
  [view5 addSubview:self->_collectionView];

  v20 = self->_collectionView;
  v21 = objc_opt_class();
  v22 = +[AVTStickerRecentsStickerCollectionViewCell identifier];
  [(UICollectionView *)v20 registerClass:v21 forCellWithReuseIdentifier:v22];

  v23 = self->_collectionView;
  v24 = objc_opt_class();
  v25 = +[AVTStickerRecentsButtonCollectionViewCell identifier];
  [(UICollectionView *)v23 registerClass:v24 forCellWithReuseIdentifier:v25];

  serialQueueProvider = [(AVTUIEnvironment *)self->_environment serialQueueProvider];
  v27 = (serialQueueProvider)[2](serialQueueProvider, "com.apple.AvatarUI.StickerRecentsWorkQueue");
  recentsWorkQueue = self->_recentsWorkQueue;
  self->_recentsWorkQueue = v27;

  objc_initWeak(&location, self);
  v29 = self->_recentsWorkQueue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __46__AVTStickerRecentsViewController_viewDidLoad__block_invoke;
  v30[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v31, &location);
  dispatch_async(v29, v30);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __46__AVTStickerRecentsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVTStickerRecentsViewController_viewDidLoad__block_invoke_2;
  v5[3] = &unk_1E7F3B220;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained determineOverlayTypeWithCompletionBlock:v5];
  [WeakRetained setupRenderingDependentPieces];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__AVTStickerRecentsViewController_viewDidLoad__block_invoke_3;
  v3[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained buildRecentsItemsWithCompletionBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
}

void __46__AVTStickerRecentsViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 integerValue];

    if (v4 == 1)
    {
      v5 = +[AVTStickerRecentsOverlayView overlayViewForMemojiCreation];
    }

    else
    {
      if (v4 == 2)
      {
        +[AVTStickerRecentsOverlayView disclosureOverlayView];
      }

      else
      {
        +[AVTStickerRecentsOverlayView standardOverlayView];
      }
      v5 = ;
    }

    v6 = v5;
    [v5 setDelegate:WeakRetained];
    v7 = [WeakRetained view];
    [v7 bounds];
    [v6 setFrame:?];

    [v6 setAutoresizingMask:18];
    v8 = [WeakRetained view];
    [v8 addSubview:v6];

    [WeakRetained setOverlayView:v6];
    v9 = [WeakRetained collectionView];
    [v9 setAlpha:0.25];
    v10 = objc_alloc_init(MEMORY[0x1E6979398]);
    [v10 setShadowRadius:10.0];
    LODWORD(v11) = 1.0;
    [v10 setShadowOpacity:v11];
    [v10 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v12 = [MEMORY[0x1E69DC888] whiteColor];
    [v10 setShadowColor:{objc_msgSend(v12, "CGColor")}];

    v13 = [WeakRetained collectionView];
    v14 = [v13 layer];
    [v14 setMask:v10];

    [WeakRetained setEdgeMaskLayer:v10];
  }
}

void __46__AVTStickerRecentsViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVTStickerRecentsViewController_viewDidLoad__block_invoke_4;
  block[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __46__AVTStickerRecentsViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained beginObservingAvatarStoreChanges];
  v1 = [WeakRetained collectionView];
  [v1 reloadData];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = AVTStickerRecentsViewController;
  [(AVTStickerRecentsViewController *)&v8 viewDidAppear:appear];
  kdebug_trace();
  if (perfLog_onceToken != -1)
  {
    [AVTStickerRecentsViewController viewDidAppear:];
  }

  v3 = perfLog_log;
  if (os_signpost_enabled(perfLog_log))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BB341000, v3, OS_SIGNPOST_INTERVAL_END, 0x33uLL, "recents-bringup", "enableTelemetry=YES", v7, 2u);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"com.apple.paddlefish.shouldNotifyOnAppear"];

  if (v5)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter postNotificationName:@"PaddlefishRecentsViewDidAppear" object:0 userInfo:0 deliverImmediately:1];
  }
}

- (void)setupRenderingDependentPieces
{
  v24 = *MEMORY[0x1E69E9840];
  backgroundRenderingQueue = [(AVTUIEnvironment *)self->_environment backgroundRenderingQueue];
  renderingQueue = self->_renderingQueue;
  self->_renderingQueue = backgroundRenderingQueue;

  backgroundEncodingQueue = [(AVTUIEnvironment *)self->_environment backgroundEncodingQueue];
  encodingQueue = self->_encodingQueue;
  self->_encodingQueue = backgroundEncodingQueue;

  v7 = [objc_opt_class() stickerCacheWithEnvironment:self->_environment];
  cache = self->_cache;
  self->_cache = v7;

  if (AVTUIShowPrereleaseStickerPack_once())
  {
    v9 = *MEMORY[0x1E698E300];
    v22 = *MEMORY[0x1E698E2E0];
    v23 = v9;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v22;
    v12 = 2;
  }

  else
  {
    v21 = *MEMORY[0x1E698E2E0];
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v21;
    v12 = 1;
  }

  v13 = [v10 arrayWithObjects:v11 count:{v12, v21, v22, v23}];
  v14 = [[AVTStickerConfigurationProvider alloc] initWithEnvironment:self->_environment forStickerPacks:v13 stickerConfigurationNames:0];
  configurationProvider = self->_configurationProvider;
  self->_configurationProvider = v14;

  v16 = [[AVTStickerRecentsMigrator alloc] initWithStore:self->_avatarStore stickerConfigurationProvider:self->_configurationProvider environment:self->_environment];
  stickerRecentsMigrator = self->_stickerRecentsMigrator;
  self->_stickerRecentsMigrator = v16;

  coreEnvironment = [(AVTUIEnvironment *)self->_environment coreEnvironment];
  v19 = [AVTSerialTaskScheduler fifoSchedulerWithEnvironment:coreEnvironment];
  taskScheduler = self->_taskScheduler;
  self->_taskScheduler = v19;
}

- (void)beginObservingAvatarStoreChanges
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E698E308];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__AVTStickerRecentsViewController_beginObservingAvatarStoreChanges__block_invoke;
  v7[3] = &unk_1E7F3B248;
  objc_copyWeak(&v8, &location);
  v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];
  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__AVTStickerRecentsViewController_beginObservingAvatarStoreChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained recentsWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVTStickerRecentsViewController_beginObservingAvatarStoreChanges__block_invoke_2;
  block[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __67__AVTStickerRecentsViewController_beginObservingAvatarStoreChanges__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasFetchedDefaultMemoji:0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__AVTStickerRecentsViewController_beginObservingAvatarStoreChanges__block_invoke_3;
  v3[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained buildRecentsItemsWithCompletionBlock:v3];
  objc_destroyWeak(&v4);
}

void __67__AVTStickerRecentsViewController_beginObservingAvatarStoreChanges__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVTStickerRecentsViewController_beginObservingAvatarStoreChanges__block_invoke_4;
  block[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __67__AVTStickerRecentsViewController_beginObservingAvatarStoreChanges__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collectionView];
  [v1 reloadData];
}

- (void)endObservingAvatarStoreChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;
}

- (void)fetchDefaultMemojiIfNeeded
{
  if (!self->_hasFetchedDefaultMemoji)
  {
    v3 = [MEMORY[0x1E698E310] requestForCustomAvatarsWithLimit:1];
    avatarStore = self->_avatarStore;
    v9 = 0;
    v5 = [(AVTAvatarStoreInternal *)avatarStore avatarsForFetchRequest:v3 error:&v9];
    v6 = v9;
    firstObject = [v5 firstObject];
    defaultMemoji = self->_defaultMemoji;
    self->_defaultMemoji = firstObject;

    self->_hasFetchedDefaultMemoji = 1;
  }
}

- (void)determineOverlayTypeWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (AVTUIStickerRecentsShowDisclosureWarning())
  {
    v5 = &unk_1F39A5A58;
  }

  else if (AVTUIHasShownStickerRecentsSplashView() && !AVTUIAlwaysShowRecentStickersSplashScreen_once())
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_1F39A5A70;
    if ((AVTUIForceNoMemojiRecentStickersSplashScreen_once() & 1) == 0)
    {
      [(AVTStickerRecentsViewController *)self fetchDefaultMemojiIfNeeded];
      if (self->_defaultMemoji)
      {
        v5 = &unk_1F39A5A88;
      }
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__AVTStickerRecentsViewController_determineOverlayTypeWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E7F3A8A8;
  v8 = v5;
  v9 = blockCopy;
  v6 = blockCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (id)placeholderItems
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[AVTStickerRecentsLayout numberOfItems](self->_stickerRecentsLayout, "numberOfItems") - 1}];
  if ([(AVTStickerRecentsLayout *)self->_stickerRecentsLayout numberOfItems]>= 2)
  {
    v4 = 0;
    do
    {
      v5 = objc_alloc_init(AVTStickerRecentsPlaceholderItem);
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout numberOfItems]- 1);
  }

  v6 = [v3 copy];

  return v6;
}

- (void)buildRecentsItemsWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(AVTStickerRecentsMigrator *)self->_stickerRecentsMigrator performMigrationIfNeeded];
  [(AVTStickerRecentsViewController *)self fetchDefaultMemojiIfNeeded];
  if (!self->_generatorPool)
  {
    v4 = [AVTUIStickerGeneratorPool alloc];
    logger = [(AVTUIEnvironment *)self->_environment logger];
    v6 = [(AVTUIStickerGeneratorPool *)v4 initWithMaxStickerGeneratorCount:1 logger:logger];
    generatorPool = self->_generatorPool;
    self->_generatorPool = v6;
  }

  [(AVTStickerRecentsViewController *)self recentStickersWithCount:8];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__4;
  v41 = v60 = __Block_byref_object_dispose__4;
  v61 = v41;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__4;
  v54 = __Block_byref_object_dispose__4;
  v55 = 0;
  v8 = v57[5];
  identifier = [(AVTAvatarRecord *)self->_defaultMemoji identifier];
  avatarStore = self->_avatarStore;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __72__AVTStickerRecentsViewController_buildRecentsItemsWithCompletionBlock___block_invoke;
  v49[3] = &unk_1E7F3B270;
  v49[4] = &v56;
  v49[5] = &v50;
  [AVTStickerRecentsPresetsProvider filteredAndPaddedStickerRecordsWithRecents:v8 excludingRecords:0 paddingMemojiIdentifier:identifier avatarStore:avatarStore numberOfStickers:8 resultBlock:v49];

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __72__AVTStickerRecentsViewController_buildRecentsItemsWithCompletionBlock___block_invoke_2;
  v48[3] = &unk_1E7F3B298;
  v48[4] = self;
  v48[5] = &v56;
  [v41 enumerateObjectsUsingBlock:v48];
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v11 = 0;
  v12 = MEMORY[0x1E69E96A0];
  do
  {
    if (v11 >= [v57[5] count])
    {
      break;
    }

    v13 = [v57[5] objectAtIndexedSubscript:v11];
    v14 = v51[5];
    avatarRecordIdentifier = [v13 avatarRecordIdentifier];
    v16 = [v14 objectForKeyedSubscript:avatarRecordIdentifier];

    configurationProvider = self->_configurationProvider;
    stickerConfigurationIdentifier = [v13 stickerConfigurationIdentifier];
    v19 = [(AVTStickerConfigurationProvider *)configurationProvider stickerConfigurationForAvatarRecord:v16 stickerName:stickerConfigurationIdentifier];

    if (!v19)
    {
      [(AVTStickerRecentsMigrator *)self->_stickerRecentsMigrator setNeedsMigrationOnNextLaunch];
      logger2 = [(AVTUIEnvironment *)self->_environment logger];
      v39 = [v13 description];
      [logger2 logFetchedRecentStickerWithNoStickerConfiguration:v39];

      goto LABEL_10;
    }

    v44 = v11;
    v45 = v13;
    v20 = [AVTUIStickerRenderer alloc];
    imageStore = self->_imageStore;
    cache = self->_cache;
    v21 = self->_generatorPool;
    environment = self->_environment;
    taskScheduler = self->_taskScheduler;
    renderingQueue = self->_renderingQueue;
    v25 = v16;
    encodingQueue = self->_encodingQueue;
    v27 = v12;
    v40 = encodingQueue;
    v28 = v25;
    v29 = [(AVTUIStickerRenderer *)v20 initWithAvatarRecord:v25 cache:cache imageStore:imageStore stickerGeneratorPool:v21 environment:environment renderingScheduler:taskScheduler renderingQueue:renderingQueue encodingQueue:v40 callbackQueue:v12];

    v30 = [(AVTUIStickerRenderer *)v29 scheduledStickerResourceProviderForStickerConfiguration:v19];
    v31 = [AVTStickerRecentsStickerItem alloc];
    identifier2 = [v25 identifier];
    name = [v19 name];
    localizedName = [v19 localizedName];
    v35 = [(AVTStickerRecentsStickerItem *)v31 initWithAvatarIdentifier:identifier2 stickerName:name localizedName:localizedName stickerProvider:v30];

    [v43 addObject:v35];
    v11 = v44 + 1;
  }

  while (v44 != 7);
  v36 = [v43 copy];
  stickerItems = self->_stickerItems;
  self->_stickerItems = v36;

  [(AVTStickerRecentsViewController *)self updateDisplayItems];
  if (blockCopy)
  {
    blockCopy[2]();
  }

LABEL_10:

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);
}

void __72__AVTStickerRecentsViewController_buildRecentsItemsWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __72__AVTStickerRecentsViewController_buildRecentsItemsWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (([*(*(*(a1 + 40) + 8) + 40) containsObject:?] & 1) == 0)
  {
    [*(*(a1 + 32) + 1008) setNeedsMigrationOnNextLaunch];
    v6 = [*(*(a1 + 32) + 1072) logger];
    v7 = [v8 description];
    [v6 logFetchedOrphanedRecentSticker:v7];

    *a4 = 1;
  }
}

- (void)updateDisplayItems
{
  v32[9] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_stickerItems count])
  {
    stickerRecentsLayout = [(AVTStickerRecentsViewController *)self stickerRecentsLayout];
    numberOfItems = [stickerRecentsLayout numberOfItems];

    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfItems];
    if (numberOfItems >= 1)
    {
      for (i = 0; i != numberOfItems; ++i)
      {
        if (i == [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout appButtonIndex])
        {
          [v5 addObject:self->_buttonItem];
        }

        else
        {
          v7 = [(NSArray *)self->_stickerItems objectAtIndexedSubscript:i - (i >= [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout appButtonIndex])];
          [v5 addObject:v7];
        }
      }
    }

    if ([(AVTStickerRecentsLayout *)self->_stickerRecentsLayout laysOutVertically])
    {
      if ([(AVTStickerRecentsLayout *)self->_stickerRecentsLayout numberOfItemsPerRow]== 3 && [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout numberOfItemsPerColumn]== 3)
      {
        v30 = [v5 objectAtIndexedSubscript:0];
        v32[0] = v30;
        v8 = [v5 objectAtIndexedSubscript:3];
        v32[1] = v8;
        v9 = [v5 objectAtIndexedSubscript:6];
        v32[2] = v9;
        v10 = [v5 objectAtIndexedSubscript:1];
        v32[3] = v10;
        v11 = [v5 objectAtIndexedSubscript:4];
        v32[4] = v11;
        v12 = [v5 objectAtIndexedSubscript:7];
        v32[5] = v12;
        v13 = [v5 objectAtIndexedSubscript:2];
        v32[6] = v13;
        v14 = [v5 objectAtIndexedSubscript:5];
        v32[7] = v14;
        v15 = [v5 objectAtIndexedSubscript:8];
        v32[8] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:9];
        displayItems = self->_displayItems;
        self->_displayItems = v16;
      }

      else
      {
        v20 = [v5 objectAtIndexedSubscript:0];
        v31[0] = v20;
        v21 = [v5 objectAtIndexedSubscript:2];
        v31[1] = v21;
        v22 = [v5 objectAtIndexedSubscript:4];
        v31[2] = v22;
        v23 = [v5 objectAtIndexedSubscript:6];
        v31[3] = v23;
        v24 = [v5 objectAtIndexedSubscript:1];
        v31[4] = v24;
        v25 = [v5 objectAtIndexedSubscript:3];
        v31[5] = v25;
        v26 = [v5 objectAtIndexedSubscript:5];
        v31[6] = v26;
        v27 = [v5 objectAtIndexedSubscript:7];
        v31[7] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:8];
        v29 = self->_displayItems;
        self->_displayItems = v28;
      }
    }

    else
    {
      v18 = [v5 copy];
      v19 = self->_displayItems;
      self->_displayItems = v18;
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = AVTStickerRecentsViewController;
  [(AVTStickerRecentsViewController *)&v16 viewWillLayoutSubviews];
  v3 = objc_opt_class();
  view = [(AVTStickerRecentsViewController *)self view];
  [view bounds];
  v7 = [v3 layoutForSize:{v5, v6}];

  if (([v7 isEqual:self->_stickerRecentsLayout] & 1) == 0)
  {
    objc_storeStrong(&self->_stickerRecentsLayout, v7);
    -[UICollectionViewFlowLayout setMinimumLineSpacing:](self->_collectionViewLayout, "setMinimumLineSpacing:", [v7 interitemPadding]);
    -[UICollectionViewFlowLayout setMinimumInteritemSpacing:](self->_collectionViewLayout, "setMinimumInteritemSpacing:", [v7 interitemPadding]);
    [(AVTStickerRecentsViewController *)self updateDisplayItems];
    collectionView = [(AVTStickerRecentsViewController *)self collectionView];
    [collectionView reloadData];
  }

  view2 = [(AVTStickerRecentsViewController *)self view];
  [view2 bounds];
  [(AVTStickerRecentsViewController *)self updateItemSizeForContainerSize:v10, v11];

  [(UICollectionViewFlowLayout *)self->_collectionViewLayout invalidateLayout];
  view3 = [(AVTStickerRecentsViewController *)self view];
  [view3 bounds];
  [(UICollectionView *)self->_collectionView setFrame:?];

  view4 = [(AVTStickerRecentsViewController *)self view];
  [view4 bounds];
  [(AVTStickerRecentsViewController *)self edgeInsetsForContainerSize:v14, v15];
  [(UICollectionView *)self->_collectionView setContentInset:?];
}

- (void)viewDidLayoutSubviews
{
  if (self->_edgeMaskLayer)
  {
    [(UICollectionView *)self->_collectionView bounds];
    v8 = CGRectInset(v7, 10.0, 10.0);
    [(CALayer *)self->_edgeMaskLayer setFrame:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
    [(CALayer *)self->_edgeMaskLayer shadowRadius];
    v4 = v3;
    [(CALayer *)self->_edgeMaskLayer bounds];
    v10 = CGRectInset(v9, v4, v4);
    v5 = CGPathCreateWithRect(v10, 0);
    [(CALayer *)self->_edgeMaskLayer setShadowPath:v5];
    CFRelease(v5);
  }

  v6.receiver = self;
  v6.super_class = AVTStickerRecentsViewController;
  [(AVTStickerRecentsViewController *)&v6 viewDidLayoutSubviews];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = AVTStickerRecentsViewController;
  changeCopy = change;
  [(AVTStickerRecentsViewController *)&v9 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(AVTStickerRecentsViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    collectionView = [(AVTStickerRecentsViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (id)recentStickersWithCount:(int64_t)count
{
  v4 = [MEMORY[0x1E698E350] requestForMostRecentStickersWithResultLimit:count];
  avatarStore = self->_avatarStore;
  v11 = 0;
  v6 = [(AVTAvatarStoreInternal *)avatarStore recentStickersForFetchRequest:v4 error:&v11];
  v7 = v11;
  if (v7)
  {
    logger = [(AVTUIEnvironment *)self->_environment logger];
    localizedDescription = [v7 localizedDescription];
    [logger logErrorFetchingRecentStickers:localizedDescription];
  }

  return v6;
}

- (void)dismissOverlayViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ((AVTUIHasShownStickerRecentsSplashView() & 1) == 0)
  {
    AVTUISetHasShownStickerRecentsSplashView();
  }

  v5 = self->_collectionView;
  v6 = self->_overlayView;
  v7 = self->_edgeMaskLayer;
  overlayView = self->_overlayView;
  self->_overlayView = 0;

  edgeMaskLayer = self->_edgeMaskLayer;
  self->_edgeMaskLayer = 0;

  if (animatedCopy)
  {
    [(CALayer *)v7 shadowRadius];
    v11 = v10;
    [(CALayer *)v7 bounds];
    v21 = CGRectInset(v20, -v11, -v11);
    v12 = CGPathCreateWithRect(v21, 0);
    v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowPath"];
    [v13 setFromValue:{-[CALayer shadowPath](v7, "shadowPath")}];
    [v13 setToValue:v12];
    CFRelease(v12);
    [v13 setDuration:1.0];
    [v13 setRemovedOnCompletion:0];
    [v13 setFillMode:*MEMORY[0x1E69797E8]];
    [(CALayer *)v7 addAnimation:v13 forKey:@"fadeAnimation"];
    [(AVTStickerRecentsOverlayView *)v6 dismissAnimatedWithDuration:1.0];
    v14 = MEMORY[0x1E69DD250];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__AVTStickerRecentsViewController_dismissOverlayViewAnimated___block_invoke;
    v18[3] = &unk_1E7F3A9B8;
    v19 = v5;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__AVTStickerRecentsViewController_dismissOverlayViewAnimated___block_invoke_2;
    v15[3] = &unk_1E7F3AA58;
    v16 = v6;
    v17 = v7;
    [v14 animateWithDuration:v18 animations:v15 completion:1.0];
  }

  else
  {
    [(UICollectionView *)v5 setAlpha:1.0];
    [(AVTStickerRecentsOverlayView *)v6 removeFromSuperview];
    [(CALayer *)v7 removeFromSuperlayer];
  }
}

uint64_t __62__AVTStickerRecentsViewController_dismissOverlayViewAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperlayer];
}

- (void)updateItemSizeForContainerSize:(CGSize)size
{
  if (size.width != 0.0)
  {
    height = size.height;
    if (size.height != 0.0)
    {
      width = size.width;
      numberOfItemsPerRow = [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout numberOfItemsPerRow];
      numberOfItemsPerColumn = [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout numberOfItemsPerColumn];
      interitemPadding = [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout interitemPadding];
      v9 = floor((width - interitemPadding * (numberOfItemsPerRow - 1)) / numberOfItemsPerRow);
      v10 = floor((height - interitemPadding * (numberOfItemsPerColumn - 1)) / numberOfItemsPerColumn);
      if (v10 >= v9)
      {
        v10 = v9;
      }

      collectionViewLayout = self->_collectionViewLayout;

      [(UICollectionViewFlowLayout *)collectionViewLayout setItemSize:v10, v10];
    }
  }
}

- (UIEdgeInsets)edgeInsetsForContainerSize:(CGSize)size
{
  if (size.width == 0.0 || (height = size.height, size.height == 0.0))
  {
    v14 = *MEMORY[0x1E69DDCE0];
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v15 = *(MEMORY[0x1E69DDCE0] + 16);
    v16 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    width = size.width;
    numberOfItemsPerRow = [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout numberOfItemsPerRow];
    numberOfItemsPerColumn = [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout numberOfItemsPerColumn];
    interitemPadding = [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout interitemPadding];
    [(UICollectionViewFlowLayout *)self->_collectionViewLayout itemSize];
    v10 = (numberOfItemsPerRow - 1) * interitemPadding + v9 * numberOfItemsPerRow;
    [(UICollectionViewFlowLayout *)self->_collectionViewLayout itemSize];
    v12 = (numberOfItemsPerColumn - 1) * interitemPadding + v11 * numberOfItemsPerColumn;
    v13 = fmax(floor((width - v10) * 0.5), 0.0);
    v14 = fmax(floor((height - v12) * 0.5), 0.0);
    v15 = v14;
    v16 = v13;
  }

  result.right = v16;
  result.bottom = v15;
  result.left = v13;
  result.top = v14;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(NSArray *)self->_displayItems count:view];
  if (v5 != [(AVTStickerRecentsLayout *)self->_stickerRecentsLayout numberOfItems])
  {
    return 0;
  }

  stickerRecentsLayout = self->_stickerRecentsLayout;

  return [(AVTStickerRecentsLayout *)stickerRecentsLayout numberOfItems];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  displayItems = self->_displayItems;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSArray objectAtIndexedSubscript:](displayItems, "objectAtIndexedSubscript:", [pathCopy row]);
  cellIdentifier = [v9 cellIdentifier];
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:pathCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v11 setDisplaySessionUUID:uUID];
  image = [v9 image];

  if (image)
  {
    image2 = [v9 image];
    [v11 updateWithImage:image2];

    if ([(AVTStickerRecentsViewController *)self showPrereleaseSticker])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 setShowPrereleaseSticker:{objc_msgSend(v9, "isPrereleaseSticker")}];
      }
    }
  }

  else
  {
    provider = [v9 provider];

    if (provider)
    {
      provider2 = [v9 provider];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __73__AVTStickerRecentsViewController_collectionView_cellForItemAtIndexPath___block_invoke;
      v22 = &unk_1E7F3B2C0;
      v23 = v11;
      v24 = uUID;
      v25 = v9;
      selfCopy = self;
      v17 = (provider2)[2](provider2, &v19, 0);

      if (v17)
      {
        [(AVTSerialTaskScheduler *)self->_taskScheduler scheduleTask:v17, v19, v20, v21, v22, v23, v24];
      }
    }
  }

  return v11;
}

void __73__AVTStickerRecentsViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) displaySessionUUID];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = *(a1 + 32);
    v6 = [v9 image];
    [v5 updateWithImage:v6];

    v7 = [v9 image];
    [*(a1 + 48) setImage:v7];

    v8 = [v9 URL];
    [*(a1 + 48) setUrl:v8];

    if ([*(a1 + 56) showPrereleaseSticker])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 48) setPrereleaseSticker:{objc_msgSend(v9, "isPrereleaseSticker")}];
        [*(a1 + 32) setShowPrereleaseSticker:{objc_msgSend(v9, "isPrereleaseSticker")}];
      }
    }
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_displayItems, "objectAtIndexedSubscript:", [pathCopy row]);
  v9 = self->_environment;
  v10 = v9;
  if (v8 == self->_buttonItem)
  {
    usageTrackingSession = [(AVTUIEnvironment *)v9 usageTrackingSession];
    [usageTrackingSession didOpenStickersAppFromRecents];

    delegate = [(AVTStickerRecentsViewController *)self delegate];
    [delegate stickerRecentsControllerDidTapAppButton:self];
    goto LABEL_5;
  }

  v11 = [objc_opt_class() stickerForRecentItem:v8];
  if (v11)
  {
    delegate = v11;
    delegate2 = [(AVTStickerRecentsViewController *)self delegate];
    [delegate2 stickerRecentsController:self didTapSticker:delegate];

    v14 = v8;
    usageTrackingSession2 = [(AVTUIEnvironment *)v10 usageTrackingSession];
    stickerName = [(AVTStickerRecentsItem *)v14 stickerName];
    avatarIdentifier = [(AVTStickerRecentsItem *)v14 avatarIdentifier];
    [usageTrackingSession2 didTapStickerFromRecents:stickerName withAvatarIdentifier:avatarIdentifier];

    avatarStore = self->_avatarStore;
    avatarIdentifier2 = [(AVTStickerRecentsItem *)v14 avatarIdentifier];
    stickerName2 = [(AVTStickerRecentsItem *)v14 stickerName];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__AVTStickerRecentsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v22[3] = &unk_1E7F3B2E8;
    v23 = v10;
    [(AVTAvatarStoreInternal *)avatarStore didUseStickerWithAvatarIdentifier:avatarIdentifier2 stickerIdentifier:stickerName2 completionHandler:v22];

LABEL_5:
    [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  }
}

void __75__AVTStickerRecentsViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v7 = [v4 logger];
    v6 = [v5 localizedDescription];

    [v7 logErrorSavingRecentSticker:v6];
  }
}

- (void)recentStickersDidChange:(id)change
{
  objc_initWeak(&location, self);
  recentsWorkQueue = self->_recentsWorkQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVTStickerRecentsViewController_recentStickersDidChange___block_invoke;
  v5[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v6, &location);
  dispatch_async(recentsWorkQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __59__AVTStickerRecentsViewController_recentStickersDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__AVTStickerRecentsViewController_recentStickersDidChange___block_invoke_2;
  v3[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained buildRecentsItemsWithCompletionBlock:v3];
  objc_destroyWeak(&v4);
}

void __59__AVTStickerRecentsViewController_recentStickersDidChange___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVTStickerRecentsViewController_recentStickersDidChange___block_invoke_3;
  block[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __59__AVTStickerRecentsViewController_recentStickersDidChange___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collectionView];
  [v1 reloadData];
}

- (void)overlayDidTapContinueButton:(id)button
{
  delegate = [(AVTStickerRecentsViewController *)self delegate];
  [delegate stickerRecentsControllerDidRequestMemojiEditor:self];

  v5 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVTStickerRecentsViewController_overlayDidTapContinueButton___block_invoke;
  block[3] = &unk_1E7F3A9B8;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

- (AVTStickerRecentsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end