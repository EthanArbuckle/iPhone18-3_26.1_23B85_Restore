@interface AVTFunCamAvatarPickerController
+ (id)createClippingViewForSize:(CGSize)size;
+ (id)funCamAvatarPickerControllerForStore:(id)store style:(id)style;
+ (id)funCamAvatarPickerControllerForStore:(id)store style:(id)style allowsCreation:(BOOL)creation;
+ (id)itemsFromRecords:(id)records;
+ (id)newGridLayout;
+ (id)sessionProviderWithEnvironment:(id)environment delegate:(id)delegate;
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (AVTFunCamAvatarPickerController)initWithStore:(id)store environment:(id)environment style:(id)style allowsCreation:(BOOL)creation;
- (AVTPresenterDelegate)presenterDelegate;
- (BOOL)canCreateAvatar;
- (CGRect)lastUpdateViewBounds;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)gridItemSize;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)buildCollectionViewLayout;
- (id)buildTitlesCollectionViewLayout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)indexPathForNoneItem;
- (id)selectedIndexPath;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)indexForRecord:(id)record;
- (int64_t)indexForRecordIdentifier:(id)identifier;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)buildCollectionView;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)preloadAll;
- (void)reloadData;
- (void)reloadModel;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectAvatarRecordWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)selectItemAtCenterNotifyDelegate:(BOOL)delegate;
- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated notifyDelegate:(BOOL)delegate;
- (void)selectItemForAvatarRecord:(id)record animated:(BOOL)animated notifyDelegate:(BOOL)delegate;
- (void)sendSelectionEventToDelegateForItemAtIndexPath:(id)path;
- (void)sessionProviderDidEndCameraSession:(id)session;
- (void)sessionProviderWillStartCameraSession:(id)session;
- (void)setMode:(unint64_t)mode;
- (void)setStyle:(id)style;
- (void)startObservingChangesIfNeeded;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTitlesClippingViewMask;
- (void)updateViewForCurrentMode;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation AVTFunCamAvatarPickerController

+ (id)itemsFromRecords:(id)records
{
  v19 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = recordsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [AVTAvatarListRecordItem alloc];
        v12 = [(AVTAvatarListRecordItem *)v11 initWithAvatar:v10, v14];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)newGridLayout
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v2 setScrollDirection:0];
  [v2 setMinimumInteritemSpacing:0.0];
  [v2 setMinimumLineSpacing:0.0];
  return v2;
}

+ (id)sessionProviderWithEnvironment:(id)environment delegate:(id)delegate
{
  delegateCopy = delegate;
  environmentCopy = environment;
  [AVTViewSessionProvider backingSizeForEnvironment:environmentCopy];
  v8 = v7;
  v10 = v9;
  v11 = +[AVTViewSessionProvider creatorForAVTView];
  v12 = [[AVTViewSessionProvider alloc] initWithAVTViewBackingSize:v11 viewCreator:environmentCopy environment:v8, v10];

  [(AVTViewSessionProvider *)v12 setDelegate:delegateCopy];

  return v12;
}

+ (id)createClippingViewForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*MEMORY[0x1E695F058], v6, size.width, size.height}];
  [v7 setUserInteractionEnabled:0];
  height = [[AVTGradientView alloc] initWithFrame:v5, v6, width, height];
  [(AVTGradientView *)height setAutoresizingMask:18];
  [v7 addSubview:height];

  return v7;
}

+ (id)funCamAvatarPickerControllerForStore:(id)store style:(id)style
{
  styleCopy = style;
  storeCopy = store;
  v7 = +[AVTUIEnvironment createFunCamEnvironment];
  v8 = [[AVTFunCamAvatarPickerController alloc] initWithStore:storeCopy environment:v7 style:styleCopy];

  return v8;
}

+ (id)funCamAvatarPickerControllerForStore:(id)store style:(id)style allowsCreation:(BOOL)creation
{
  creationCopy = creation;
  styleCopy = style;
  storeCopy = store;
  v9 = +[AVTUIEnvironment createFunCamEnvironment];
  v10 = [[AVTFunCamAvatarPickerController alloc] initWithStore:storeCopy environment:v9 style:styleCopy allowsCreation:creationCopy];

  return v10;
}

- (AVTFunCamAvatarPickerController)initWithStore:(id)store environment:(id)environment style:(id)style allowsCreation:(BOOL)creation
{
  storeCopy = store;
  environmentCopy = environment;
  styleCopy = style;
  v24.receiver = self;
  v24.super_class = AVTFunCamAvatarPickerController;
  v14 = [(AVTFunCamAvatarPickerController *)&v24 initWithNibName:0 bundle:0];
  if (v14)
  {
    if (([storeCopy conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", storeCopy}];
    }

    objc_storeStrong(&v14->_store, store);
    logger = [environmentCopy logger];
    logger = v14->_logger;
    v14->_logger = logger;

    v17 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:environmentCopy];
    imageProvider = v14->_imageProvider;
    v14->_imageProvider = v17;

    v19 = +[AVTRenderingScope funCamCarouselThumbnailScope];
    editableRecordsListRenderingScope = v14->_editableRecordsListRenderingScope;
    v14->_editableRecordsListRenderingScope = v19;

    v21 = +[AVTRenderingScope gridThumbnailScope];
    gridRenderingScope = v14->_gridRenderingScope;
    v14->_gridRenderingScope = v21;

    objc_storeStrong(&v14->_environment, environment);
    objc_storeStrong(&v14->_style, style);
    v14->_allowsCreation = creation;
    [(AVTFunCamAvatarPickerController *)v14 preloadAll];
    [(AVTFunCamAvatarPickerController *)v14 reloadModel];
  }

  return v14;
}

- (id)selectedIndexPath
{
  selectedAvatarRecord = [(AVTFunCamAvatarPickerController *)self selectedAvatarRecord];

  if (!selectedAvatarRecord || (-[AVTFunCamAvatarPickerController selectedAvatarRecord](self, "selectedAvatarRecord"), v4 = objc_claimAutoreleasedReturnValue(), v5 = -[AVTFunCamAvatarPickerController indexForRecord:](self, "indexForRecord:", v4), v4, v5 == 0x7FFFFFFFFFFFFFFFLL) || ([MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0], (indexPathForNoneItem = objc_claimAutoreleasedReturnValue()) == 0))
  {
    indexPathForNoneItem = [(AVTFunCamAvatarPickerController *)self indexPathForNoneItem];
  }

  return indexPathForNoneItem;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [v3 initWithFrame:?];

  [(AVTFunCamAvatarPickerController *)self setView:v5];
  [(AVTFunCamAvatarPickerController *)self buildCollectionView];
  [(AVTFunCamAvatarPickerController *)self updateViewForCurrentMode];
}

- (void)preloadAll
{
  if (AVTUIAvatarPreLoadOnLaunch())
  {
    v3 = MEMORY[0x1E698E328];
    store = [(AVTFunCamAvatarPickerController *)self store];
    [v3 preloadAllAvatarsWithStore:store completionHandler:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = AVTFunCamAvatarPickerController;
  [(AVTFunCamAvatarPickerController *)&v7 traitCollectionDidChange:change];
  if ([(AVTFunCamAvatarPickerController *)self isViewLoaded])
  {
    collectionView = [(AVTFunCamAvatarPickerController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    if (visibleCells)
    {
      collectionView2 = [(AVTFunCamAvatarPickerController *)self collectionView];
      [collectionView2 reloadData];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVTFunCamAvatarPickerController;
  [(AVTFunCamAvatarPickerController *)&v5 viewDidLayoutSubviews];
  collectionView = [(AVTFunCamAvatarPickerController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = AVTFunCamAvatarPickerController;
  [(AVTFunCamAvatarPickerController *)&v17 viewWillLayoutSubviews];
  [(AVTFunCamAvatarPickerController *)self lastUpdateViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(AVTFunCamAvatarPickerController *)self view];
  [view bounds];
  v19.origin.x = v12;
  v19.origin.y = v13;
  v19.size.width = v14;
  v19.size.height = v15;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v16 = CGRectEqualToRect(v18, v19);

  if (!v16)
  {
    [(AVTFunCamAvatarPickerController *)self updateViewForCurrentMode];
  }
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    if ([(AVTFunCamAvatarPickerController *)self isViewLoaded])
    {

      [(AVTFunCamAvatarPickerController *)self updateViewForCurrentMode];
    }
  }
}

- (void)setStyle:(id)style
{
  objc_storeStrong(&self->_style, style);
  collectionView = [(AVTFunCamAvatarPickerController *)self collectionView];
  if (collectionView)
  {
    v5 = collectionView;
    isViewLoaded = [(AVTFunCamAvatarPickerController *)self isViewLoaded];

    if (isViewLoaded)
    {
      buildCollectionViewLayout = [(AVTFunCamAvatarPickerController *)self buildCollectionViewLayout];
      [(AVTFunCamAvatarPickerController *)self setListLayout:buildCollectionViewLayout];

      listLayout = [(AVTFunCamAvatarPickerController *)self listLayout];
      collectionView2 = [(AVTFunCamAvatarPickerController *)self collectionView];
      [collectionView2 setCollectionViewLayout:listLayout];

      buildTitlesCollectionViewLayout = [(AVTFunCamAvatarPickerController *)self buildTitlesCollectionViewLayout];
      titlesCollectionView = [(AVTFunCamAvatarPickerController *)self titlesCollectionView];
      [titlesCollectionView setCollectionViewLayout:buildTitlesCollectionViewLayout];

      [(AVTFunCamAvatarPickerController *)self updateViewForCurrentMode];
    }
  }
}

- (id)buildCollectionViewLayout
{
  v3 = [AVTEngagementLayout alloc];
  style = [(AVTFunCamAvatarPickerController *)self style];
  [style cellSize];
  v6 = v5;
  v8 = v7;
  style2 = [(AVTFunCamAvatarPickerController *)self style];
  [style2 engagedCellSize];
  v11 = v10;
  v13 = v12;
  style3 = [(AVTFunCamAvatarPickerController *)self style];
  [style3 interitemSpacing];
  v16 = [(AVTEngagementLayout *)v3 initWithDefaultCellSize:v6 engagedCellSize:v8 baseInteritemSpacing:v11, v13, v15];

  v17 = [(AVTEngagementListCollectionViewLayout *)[AVTFunCamAvatarPickerCollectionViewLayout alloc] initWithEngagementLayout:v16];

  return v17;
}

- (id)buildTitlesCollectionViewLayout
{
  v3 = [AVTEngagementLayout alloc];
  style = [(AVTFunCamAvatarPickerController *)self style];
  [style cellSize];
  v6 = v5;
  style2 = [(AVTFunCamAvatarPickerController *)self style];
  [style2 engagedCellSize];
  v9 = v8;
  style3 = [(AVTFunCamAvatarPickerController *)self style];
  [style3 engagedCellSize];
  v12 = v11;
  v14 = v13;
  style4 = [(AVTFunCamAvatarPickerController *)self style];
  [style4 interitemSpacing];
  v17 = [(AVTEngagementLayout *)v3 initWithDefaultCellSize:v6 engagedCellSize:v9 baseInteritemSpacing:v12, v14, v16];

  v18 = [(AVTEngagementListCollectionViewLayout *)[AVTFunCamAvatarPickerCollectionViewLayout alloc] initWithEngagementLayout:v17];

  return v18;
}

- (void)buildCollectionView
{
  buildCollectionViewLayout = [(AVTFunCamAvatarPickerController *)self buildCollectionViewLayout];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view = [(AVTFunCamAvatarPickerController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:buildCollectionViewLayout collectionViewLayout:?];

  v6 = [AVTCenteringCollectionViewDelegate alloc];
  environment = [(AVTFunCamAvatarPickerController *)self environment];
  v8 = [(AVTCenteringCollectionViewDelegate *)v6 initWithCollectionView:v5 delegate:self environment:environment];
  [(AVTFunCamAvatarPickerController *)self setCenteringDelegate:v8];

  [v5 setDataSource:self];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:clearColor];

  [v5 setShowsHorizontalScrollIndicator:0];
  [v5 setShowsVerticalScrollIndicator:0];
  [v5 setAutoresizingMask:18];
  [v5 _setTransfersScrollToContainer:0];
  v10 = objc_opt_class();
  v11 = +[AVTFunCamAvatarPickerCollectionViewCell cellIdentifier];
  [v5 registerClass:v10 forCellWithReuseIdentifier:v11];

  [(AVTFunCamAvatarPickerController *)self setCollectionView:v5];
  [(AVTFunCamAvatarPickerController *)self setListLayout:buildCollectionViewLayout];
  newGridLayout = [objc_opt_class() newGridLayout];
  [(AVTFunCamAvatarPickerController *)self setGridLayout:newGridLayout];

  view2 = [(AVTFunCamAvatarPickerController *)self view];
  [view2 addSubview:v5];

  view3 = [(AVTFunCamAvatarPickerController *)self view];
  [view3 bounds];
  v15 = CGRectGetMaxY(v40) + -14.0;
  view4 = [(AVTFunCamAvatarPickerController *)self view];
  [view4 bounds];
  Width = CGRectGetWidth(v41);

  v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, v15, Width, 14.0}];
  [(AVTFunCamAvatarPickerController *)self setTitlesContainer:v18];

  titlesContainer = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [titlesContainer setUserInteractionEnabled:0];

  v20 = objc_alloc(MEMORY[0x1E69DC7F0]);
  titlesContainer2 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [titlesContainer2 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  buildTitlesCollectionViewLayout = [(AVTFunCamAvatarPickerController *)self buildTitlesCollectionViewLayout];
  v31 = [v20 initWithFrame:buildTitlesCollectionViewLayout collectionViewLayout:{v23, v25, v27, v29}];

  [v31 setUserInteractionEnabled:0];
  [v31 setDataSource:self];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [v31 setBackgroundColor:clearColor2];

  [v31 setShowsHorizontalScrollIndicator:0];
  [v31 setAutoresizingMask:18];
  v33 = objc_opt_class();
  v34 = +[AVTFunCamAvatarPickerTitleCell cellIdentifier];
  [v31 registerClass:v33 forCellWithReuseIdentifier:v34];

  [(AVTFunCamAvatarPickerController *)self setTitlesCollectionView:v31];
  titlesContainer3 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [titlesContainer3 addSubview:v31];

  view5 = [(AVTFunCamAvatarPickerController *)self view];
  titlesContainer4 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [view5 addSubview:titlesContainer4];

  [(AVTFunCamAvatarPickerController *)self updateTitlesClippingViewMask];
}

- (void)updateTitlesClippingViewMask
{
  v3 = objc_opt_class();
  titlesContainer = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [titlesContainer bounds];
  v7 = [v3 createClippingViewForSize:{v5, v6}];
  [(AVTFunCamAvatarPickerController *)self setTitlesClippingView:v7];

  titlesClippingView = [(AVTFunCamAvatarPickerController *)self titlesClippingView];
  [titlesClippingView setAutoresizingMask:10];

  titlesClippingView2 = [(AVTFunCamAvatarPickerController *)self titlesClippingView];
  titlesContainer2 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [titlesContainer2 setMaskView:titlesClippingView2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AVTFunCamAvatarPickerController;
  [(AVTFunCamAvatarPickerController *)&v5 viewWillAppear:appear];
  selectedIndexPath = [(AVTFunCamAvatarPickerController *)self selectedIndexPath];
  [(AVTFunCamAvatarPickerController *)self selectItemAtIndexPath:selectedIndexPath animated:0 notifyDelegate:0];
}

- (void)startObservingChangesIfNeeded
{
  changeNotificationToken = [(AVTFunCamAvatarPickerController *)self changeNotificationToken];

  if (!changeNotificationToken)
  {
    objc_initWeak(&location, self);
    environment = [(AVTFunCamAvatarPickerController *)self environment];
    notificationCenter = [environment notificationCenter];
    v6 = *MEMORY[0x1E698E308];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __64__AVTFunCamAvatarPickerController_startObservingChangesIfNeeded__block_invoke;
    v11 = &unk_1E7F3B248;
    objc_copyWeak(&v12, &location);
    v7 = [notificationCenter addObserverForName:v6 object:0 queue:0 usingBlock:&v8];
    [(AVTFunCamAvatarPickerController *)self setChangeNotificationToken:v7, v8, v9, v10, v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __64__AVTFunCamAvatarPickerController_startObservingChangesIfNeeded__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AVTFunCamAvatarPickerController_startObservingChangesIfNeeded__block_invoke_2;
  block[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __64__AVTFunCamAvatarPickerController_startObservingChangesIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadModel];
}

- (void)reloadData
{
  if ([(AVTFunCamAvatarPickerController *)self isViewLoaded])
  {
    collectionView = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView reloadData];

    selectedIndexPath = [(AVTFunCamAvatarPickerController *)self selectedIndexPath];
    [(AVTFunCamAvatarPickerController *)self selectItemAtIndexPath:selectedIndexPath animated:0 notifyDelegate:0];
  }
}

- (BOOL)canCreateAvatar
{
  store = [(AVTFunCamAvatarPickerController *)self store];
  v3 = [store canCreateAvatarWithError:0];

  return v3;
}

- (void)reloadModel
{
  [(AVTFunCamAvatarPickerController *)self startObservingChangesIfNeeded];
  array = [MEMORY[0x1E695DF70] array];
  allowsCreation = [(AVTFunCamAvatarPickerController *)self allowsCreation];
  v5 = @"none";
  if (allowsCreation)
  {
    v5 = @"add";
  }

  v6 = v5;
  allowsCreation2 = [(AVTFunCamAvatarPickerController *)self allowsCreation];
  v8 = AVTAvatarUIBundle();
  v9 = v8;
  if (allowsCreation2)
  {
    v10 = @"ADD";
  }

  else
  {
    v10 = @"NONE";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1F39618F0 table:@"Localized"];

  v12 = MEMORY[0x1E69DCAB8];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v12 imageNamed:v6 inBundle:v13 compatibleWithTraitCollection:0];

  _imageThatSuppressesAccessibilityHairlineThickening = [v14 _imageThatSuppressesAccessibilityHairlineThickening];

  v37 = v11;
  v16 = [[AVTAvatarListImageItem alloc] initWithImage:_imageThatSuppressesAccessibilityHairlineThickening title:v11];
  [(AVTFunCamAvatarPickerController *)self setNoneItem:v16];

  noneItem = [(AVTFunCamAvatarPickerController *)self noneItem];
  [array addObject:noneItem];

  requestForCustomAvatars = [MEMORY[0x1E698E310] requestForCustomAvatars];
  store = [(AVTFunCamAvatarPickerController *)self store];
  v39 = 0;
  v20 = [store avatarsForFetchRequest:requestForCustomAvatars error:&v39];
  v21 = v39;

  if (!v20)
  {
    logger = [(AVTFunCamAvatarPickerController *)self logger];
    v23 = [v21 description];
    [logger logErrorFetchingRecords:v23];
  }

  reverseObjectEnumerator = [v20 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  [(AVTFunCamAvatarPickerController *)self setEditableRecords:allObjects];
  v26 = [objc_opt_class() itemsFromRecords:allObjects];
  [array addObjectsFromArray:v26];

  requestForPredefinedAvatars = [MEMORY[0x1E698E310] requestForPredefinedAvatars];

  store2 = [(AVTFunCamAvatarPickerController *)self store];
  v38 = 0;
  v29 = [store2 avatarsForFetchRequest:requestForPredefinedAvatars error:&v38];
  v30 = v38;

  if (!v29)
  {
    logger2 = [(AVTFunCamAvatarPickerController *)self logger];
    v32 = [v30 description];
    [logger2 logErrorFetchingRecords:v32];
  }

  v33 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_11];
  v34 = [v29 filteredArrayUsingPredicate:v33];

  [(AVTFunCamAvatarPickerController *)self setPuppetRecords:v34];
  v35 = [objc_opt_class() itemsFromRecords:v34];
  [array addObjectsFromArray:v35];

  v36 = [array copy];
  [(AVTFunCamAvatarPickerController *)self setItems:v36];

  [(AVTFunCamAvatarPickerController *)self reloadData];
}

uint64_t __46__AVTFunCamAvatarPickerController_reloadModel__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"ghost"];

  return v3 ^ 1u;
}

- (void)updateViewForCurrentMode
{
  view = [(AVTFunCamAvatarPickerController *)self view];
  [view bounds];
  [(AVTFunCamAvatarPickerController *)self setLastUpdateViewBounds:?];

  mode = [(AVTFunCamAvatarPickerController *)self mode];
  view2 = [(AVTFunCamAvatarPickerController *)self view];
  [view2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  titlesContainer = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [titlesContainer setHidden:mode == 1];

  v13 = v11 + -1.0;
  if (mode == 1)
  {
    collectionView = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView setFrame:{v7, 1.0, v9, v13}];

    gridLayout = [(AVTFunCamAvatarPickerController *)self gridLayout];
    collectionView2 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView2 setCollectionViewLayout:gridLayout];

    collectionView3 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView3 setDelegate:self];
  }

  else
  {
    view3 = [(AVTFunCamAvatarPickerController *)self view];
    [view3 safeAreaInsets];
    v20 = v7 + v19;
    v22 = v21 + 1.0;
    v24 = v9 - (v19 + v23);
    v26 = v13 - (v21 + v25);

    collectionView4 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView4 setFrame:{v20, v22, v24, v26}];

    listLayout = [(AVTFunCamAvatarPickerController *)self listLayout];
    collectionView5 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView5 setCollectionViewLayout:listLayout];

    centeringDelegate = [(AVTFunCamAvatarPickerController *)self centeringDelegate];
    collectionView6 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView6 setDelegate:centeringDelegate];

    style = [(AVTFunCamAvatarPickerController *)self style];
    [style engagedCellSize];
    v34 = v26 + (v26 - v33) * -0.5 + -14.0;

    titlesContainer2 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
    [titlesContainer2 setFrame:{0.0, v34, v24, 14.0}];

    titlesContainer3 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
    [titlesContainer3 setAutoresizingMask:10];

    [(AVTFunCamAvatarPickerController *)self updateTitlesClippingViewMask];
  }

  [(AVTFunCamAvatarPickerController *)self reloadData];
}

- (void)selectItemForAvatarRecord:(id)record animated:(BOOL)animated notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  animatedCopy = animated;
  [(AVTFunCamAvatarPickerController *)self setSelectedAvatarRecord:record];
  if ([(AVTFunCamAvatarPickerController *)self isViewLoaded])
  {
    selectedIndexPath = [(AVTFunCamAvatarPickerController *)self selectedIndexPath];
    [(AVTFunCamAvatarPickerController *)self selectItemAtIndexPath:selectedIndexPath animated:animatedCopy notifyDelegate:delegateCopy];
  }
}

- (void)selectItemAtCenterNotifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  if (![(AVTFunCamAvatarPickerController *)self isDisplayingGridLayout])
  {
    collectionView = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView contentOffset];
    v7 = v6;
    v9 = v8;
    collectionView2 = [(AVTFunCamAvatarPickerController *)self collectionView];
    v11 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:collectionView2 collectionView:v7, v9];

    if (v11)
    {
      item = [v11 item];
      items = [(AVTFunCamAvatarPickerController *)self items];
      v14 = [items count];

      if (item < v14)
      {
        items2 = [(AVTFunCamAvatarPickerController *)self items];
        v16 = [items2 objectAtIndexedSubscript:{objc_msgSend(v11, "item")}];

        v18 = 0;
        v19 = &v18;
        v20 = 0x3032000000;
        v21 = __Block_byref_object_copy__10;
        v22 = __Block_byref_object_dispose__10;
        v23 = 0;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __68__AVTFunCamAvatarPickerController_selectItemAtCenterNotifyDelegate___block_invoke;
        v17[3] = &unk_1E7F3B5C8;
        v17[4] = &v18;
        [v16 downcastWithRecordHandler:v17 imageHandler:0 viewHandler:0];
        [(AVTFunCamAvatarPickerController *)self selectItemForAvatarRecord:v19[5] animated:1 notifyDelegate:delegateCopy];
        _Block_object_dispose(&v18, 8);
      }
    }
  }
}

uint64_t __68__AVTFunCamAvatarPickerController_selectItemAtCenterNotifyDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 avatar];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  animatedCopy = animated;
  pathCopy = path;
  if ([(AVTFunCamAvatarPickerController *)self isDisplayingGridLayout])
  {
    v8 = 2;
  }

  else
  {
    collectionView = [(AVTFunCamAvatarPickerController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    item = [pathCopy item];
    collectionView2 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView2 bounds];
    v14 = v13;
    v16 = v15;
    collectionView3 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView3 bounds];
    [collectionViewLayout centerForCenteringElementAtIndex:item visibleBoundsSize:v14 proposedOrigin:{v16, v18, v19}];
    v21 = v20;
    v23 = v22;

    collectionView4 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView4 collectionView:v21, v23];
    v26 = v25;
    v28 = v27;

    collectionView5 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [collectionView5 setContentOffset:animatedCopy animated:{v26, v28}];

    v8 = 0;
  }

  collectionView6 = [(AVTFunCamAvatarPickerController *)self collectionView];
  [collectionView6 selectItemAtIndexPath:pathCopy animated:animatedCopy scrollPosition:v8];

  if (delegateCopy)
  {
    [(AVTFunCamAvatarPickerController *)self sendSelectionEventToDelegateForItemAtIndexPath:pathCopy];
  }
}

- (void)sendSelectionEventToDelegateForItemAtIndexPath:(id)path
{
  pathCopy = path;
  avatarPickerDelegate = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    items = [(AVTFunCamAvatarPickerController *)self items];
    v8 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__10;
    v15 = __Block_byref_object_dispose__10;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__AVTFunCamAvatarPickerController_sendSelectionEventToDelegateForItemAtIndexPath___block_invoke;
    v10[3] = &unk_1E7F3B5C8;
    v10[4] = &v11;
    [v8 downcastWithRecordHandler:v10 imageHandler:0 viewHandler:0];
    avatarPickerDelegate2 = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
    [avatarPickerDelegate2 avatarPicker:self didSelectAvatarRecord:v12[5]];

    _Block_object_dispose(&v11, 8);
  }
}

uint64_t __82__AVTFunCamAvatarPickerController_sendSelectionEventToDelegateForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 avatar];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  titlesCollectionView = [(AVTFunCamAvatarPickerController *)self titlesCollectionView];

  if (titlesCollectionView == viewCopy)
  {
    isDisplayingGridLayout = [(AVTFunCamAvatarPickerController *)self isDisplayingGridLayout];

    if (isDisplayingGridLayout)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTFunCamAvatarPickerController *)self items:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  items = [(AVTFunCamAvatarPickerController *)self items];
  v9 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  titlesCollectionView = [(AVTFunCamAvatarPickerController *)self titlesCollectionView];

  if (titlesCollectionView == viewCopy)
  {
    v14 = +[AVTFunCamAvatarPickerTitleCell cellIdentifier];
    v15 = [viewCopy dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:pathCopy];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke;
    v28[3] = &unk_1E7F3BCF0;
    v16 = v15;
    v29 = v16;
    [v9 downcastWithRecordHandler:0 imageHandler:v28 viewHandler:0];
    v17 = v29;
  }

  else
  {
    v11 = +[AVTFunCamAvatarPickerCollectionViewCell cellIdentifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

    v13 = ![(AVTFunCamAvatarPickerController *)self allowsCreation]&& [(AVTFunCamAvatarPickerController *)self isDisplayingGridLayout];
    [v12 setSelectionVisible:v13];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [v12 setDisplaySessionUUID:uUID];
    [v12 setShowsTitle:{-[AVTFunCamAvatarPickerController isDisplayingGridLayout](self, "isDisplayingGridLayout") ^ 1}];
    style = [(AVTFunCamAvatarPickerController *)self style];
    [style engagedCellSize];
    [v12 setEngagedSize:?];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke_2;
    v25[3] = &unk_1E7F3BD40;
    v25[4] = self;
    v26 = v12;
    v27 = uUID;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke_4;
    v23[3] = &unk_1E7F3BD68;
    v23[4] = self;
    v20 = v26;
    v24 = v20;
    v17 = uUID;
    [v9 downcastWithRecordHandler:v25 imageHandler:v23 viewHandler:0];
    v21 = v24;
    v16 = v20;
  }

  return v16;
}

void __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 title];
  [v2 updateWithTitle:v3];
}

void __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v4 = [v3 avatar];
  if ([v4 isEditable] && (objc_msgSend(a1[4], "isDisplayingGridLayout") & 1) == 0)
  {
    v5 = [a1[4] editableRecordsListRenderingScope];
  }

  else
  {
    v5 = [a1[4] gridRenderingScope];
  }

  v6 = v5;

  v7 = [v3 avatar];
  if ([v7 isEditable])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v6 adaptedFramingModeForObjectType:v8];

  v10 = a1[5];
  [AVTRenderingScope extraMagnifyingFactorForFramingMode:v9];
  [v10 setImageZoomFactor:?];
  if ([a1[4] isDisplayingGridLayout])
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [a1[5] setImageContentMode:v11];
  v12 = 0.0;
  if ([a1[4] isDisplayingGridLayout])
  {
    v13 = [a1[4] style];
    [v13 interitemSpacing];
    v12 = v14 * 0.5;
  }

  v15 = [AVTFunCamAvatarPickerStyle insetProviderForConstant:v12];
  [a1[5] setImageInsetProvider:v15];

  [a1[5] setRoundImageCorners:{objc_msgSend(a1[4], "isDisplayingGridLayout")}];
  v16 = [v3 avatar];
  v17 = [v16 isEditable];

  if (v17)
  {
    v18 = a1[5];
    v19 = +[AVTUIColorRepository placeholderBackgroundColor];
    [v18 updateWithTintColor:v19];

    v20 = a1[5];
    v21 = AVTAvatarEditorPlaceholderSilhouette();
    [v20 updateWithImage:v21 animated:0];
  }

  v22 = [a1[4] imageProvider];
  v23 = [v3 avatar];
  v24 = [v22 providerForRecord:v23 scope:v6];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke_3;
  v26[3] = &unk_1E7F3BD18;
  v27 = a1[5];
  v28 = a1[6];
  v29 = &v30;
  v25 = (v24)[2](v24, v26, 0);

  *(v31 + 24) = 1;
  _Block_object_dispose(&v30, 8);
}

void __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) displaySessionUUID];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    [*(a1 + 32) updateWithImage:v5 animated:*(*(*(a1 + 48) + 8) + 24)];
  }
}

void __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 traitCollection];
  if ([v5 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v12 = ;

  [*(a1 + 40) updateWithTintColor:v12];
  v6 = [*(a1 + 32) isDisplayingGridLayout];
  v7 = [*(a1 + 32) style];
  v8 = v7;
  if (v6)
  {
    [v7 imageItemInsetsForGrid];
  }

  else
  {
    [v7 imageItemInsetsForList];
  }
  v9 = ;
  [*(a1 + 40) setImageInsetProvider:v9];

  [*(a1 + 40) setImageContentMode:1];
  v10 = *(a1 + 40);
  v11 = [v4 image];

  [v10 updateWithImage:v11 animated:0];
  [*(a1 + 40) setRoundImageCorners:0];
}

- (id)indexPathForNoneItem
{
  items = [(AVTFunCamAvatarPickerController *)self items];
  noneItem = [(AVTFunCamAvatarPickerController *)self noneItem];
  v5 = [items indexOfObject:noneItem];

  v6 = MEMORY[0x1E696AC88];

  return [v6 indexPathForItem:v5 inSection:0];
}

- (int64_t)indexForRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    items = [(AVTFunCamAvatarPickerController *)self items];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__AVTFunCamAvatarPickerController_indexForRecordIdentifier___block_invoke;
    v8[3] = &unk_1E7F3B5A0;
    v9 = identifierCopy;
    v6 = [items indexOfObjectPassingTest:v8];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

uint64_t __60__AVTFunCamAvatarPickerController_indexForRecordIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AVTFunCamAvatarPickerController_indexForRecordIdentifier___block_invoke_2;
  v6[3] = &unk_1E7F3B578;
  v8 = &v9;
  v7 = *(a1 + 32);
  [v3 downcastWithRecordHandler:v6 viewHandler:0];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

void __60__AVTFunCamAvatarPickerController_indexForRecordIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 avatar];
  v3 = [v4 identifier];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isEqualToString:*(a1 + 32)];
}

- (int64_t)indexForRecord:(id)record
{
  identifier = [record identifier];
  v5 = [(AVTFunCamAvatarPickerController *)self indexForRecordIdentifier:identifier];

  return v5;
}

- (CGSize)gridItemSize
{
  style = [(AVTFunCamAvatarPickerController *)self style];
  collectionView = [(AVTFunCamAvatarPickerController *)self collectionView];
  [collectionView bounds];
  v6 = v5;
  environment = [(AVTFunCamAvatarPickerController *)self environment];
  [style edgeLengthFittingWidth:environment environment:v6];
  v9 = v8;

  v10 = v9;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  gridLayout = [(AVTFunCamAvatarPickerController *)self gridLayout];

  if (gridLayout != layoutCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Custom layout for list mode shouldn't call this method"];
  }

  [(AVTFunCamAvatarPickerController *)self gridItemSize];
  result.height = v9;
  result.width = v8;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layoutCopy = layout;
  gridLayout = [(AVTFunCamAvatarPickerController *)self gridLayout];

  if (gridLayout != layoutCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Custom layout for list mode shouldn't call this method"];
  }

  style = [(AVTFunCamAvatarPickerController *)self style];
  [style gridEdgeInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  items = [(AVTFunCamAvatarPickerController *)self items];
  v9 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AVTFunCamAvatarPickerController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v10[3] = &unk_1E7F3B5C8;
  v10[4] = &v11;
  [v9 downcastWithRecordHandler:v10 imageHandler:0 viewHandler:0];
  [(AVTFunCamAvatarPickerController *)self selectItemForAvatarRecord:v12[5] animated:1 notifyDelegate:1];
  _Block_object_dispose(&v11, 8);
}

uint64_t __75__AVTFunCamAvatarPickerController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 avatar];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  collectionView = [(AVTFunCamAvatarPickerController *)self collectionView];

  v5 = scrollCopy;
  if (collectionView == scrollCopy)
  {
    [scrollCopy contentOffset];
    v7 = v6;
    v9 = v8;
    titlesCollectionView = [(AVTFunCamAvatarPickerController *)self titlesCollectionView];
    [titlesCollectionView setContentOffset:{v7, v9}];

    v5 = scrollCopy;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(AVTFunCamAvatarPickerController *)self selectItemAtCenterNotifyDelegate:1];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  if (([deceleratingCopy isDragging] & 1) == 0 && (objc_msgSend(deceleratingCopy, "isTracking") & 1) == 0)
  {
    [(AVTFunCamAvatarPickerController *)self selectItemAtCenterNotifyDelegate:1];
  }
}

- (void)sessionProviderDidEndCameraSession:(id)session
{
  avatarPickerDelegate = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    avatarPickerDelegate2 = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
    [avatarPickerDelegate2 avatarPickerDidEndCameraSession:self];
  }
}

- (void)sessionProviderWillStartCameraSession:(id)session
{
  avatarPickerDelegate = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    avatarPickerDelegate2 = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
    [avatarPickerDelegate2 avatarPickerWillStartCameraSession:self];
  }
}

- (void)selectAvatarRecordWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  items = [(AVTFunCamAvatarPickerController *)self items];
  v7 = [items countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v7)
  {
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(items);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __77__AVTFunCamAvatarPickerController_selectAvatarRecordWithIdentifier_animated___block_invoke;
      v12[3] = &unk_1E7F3BD90;
      v13 = identifierCopy;
      v14 = &v19;
      [v10 downcastWithRecordHandler:v12 imageHandler:0 viewHandler:0];
      LOBYTE(v10) = v20[5] == 0;

      if ((v10 & 1) == 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [items countByEnumeratingWithState:&v15 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(AVTFunCamAvatarPickerController *)self selectItemForAvatarRecord:v20[5] animated:animatedCopy notifyDelegate:0];
  _Block_object_dispose(&v19, 8);
}

void __77__AVTFunCamAvatarPickerController_selectAvatarRecordWithIdentifier_animated___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 avatar];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = [v9 avatar];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (AVTPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presenterDelegate);

  return WeakRetained;
}

- (AVTAvatarPickerDelegate)avatarPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->avatarPickerDelegate);

  return WeakRetained;
}

- (CGRect)lastUpdateViewBounds
{
  x = self->_lastUpdateViewBounds.origin.x;
  y = self->_lastUpdateViewBounds.origin.y;
  width = self->_lastUpdateViewBounds.size.width;
  height = self->_lastUpdateViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end