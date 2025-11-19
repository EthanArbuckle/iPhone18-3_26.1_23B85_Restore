@interface AVTFunCamAvatarPickerController
+ (id)createClippingViewForSize:(CGSize)a3;
+ (id)funCamAvatarPickerControllerForStore:(id)a3 style:(id)a4;
+ (id)funCamAvatarPickerControllerForStore:(id)a3 style:(id)a4 allowsCreation:(BOOL)a5;
+ (id)itemsFromRecords:(id)a3;
+ (id)newGridLayout;
+ (id)sessionProviderWithEnvironment:(id)a3 delegate:(id)a4;
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (AVTFunCamAvatarPickerController)initWithStore:(id)a3 environment:(id)a4 style:(id)a5 allowsCreation:(BOOL)a6;
- (AVTPresenterDelegate)presenterDelegate;
- (BOOL)canCreateAvatar;
- (CGRect)lastUpdateViewBounds;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)gridItemSize;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)buildCollectionViewLayout;
- (id)buildTitlesCollectionViewLayout;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)indexPathForNoneItem;
- (id)selectedIndexPath;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)indexForRecord:(id)a3;
- (int64_t)indexForRecordIdentifier:(id)a3;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)buildCollectionView;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)preloadAll;
- (void)reloadData;
- (void)reloadModel;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)selectAvatarRecordWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)selectItemAtCenterNotifyDelegate:(BOOL)a3;
- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5;
- (void)selectItemForAvatarRecord:(id)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5;
- (void)sendSelectionEventToDelegateForItemAtIndexPath:(id)a3;
- (void)sessionProviderDidEndCameraSession:(id)a3;
- (void)sessionProviderWillStartCameraSession:(id)a3;
- (void)setMode:(unint64_t)a3;
- (void)setStyle:(id)a3;
- (void)startObservingChangesIfNeeded;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTitlesClippingViewMask;
- (void)updateViewForCurrentMode;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AVTFunCamAvatarPickerController

+ (id)itemsFromRecords:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)newGridLayout
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v2 setScrollDirection:0];
  [v2 setMinimumInteritemSpacing:0.0];
  [v2 setMinimumLineSpacing:0.0];
  return v2;
}

+ (id)sessionProviderWithEnvironment:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  [AVTViewSessionProvider backingSizeForEnvironment:v6];
  v8 = v7;
  v10 = v9;
  v11 = +[AVTViewSessionProvider creatorForAVTView];
  v12 = [[AVTViewSessionProvider alloc] initWithAVTViewBackingSize:v11 viewCreator:v6 environment:v8, v10];

  [(AVTViewSessionProvider *)v12 setDelegate:v5];

  return v12;
}

+ (id)createClippingViewForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*MEMORY[0x1E695F058], v6, a3.width, a3.height}];
  [v7 setUserInteractionEnabled:0];
  v8 = [[AVTGradientView alloc] initWithFrame:v5, v6, width, height];
  [(AVTGradientView *)v8 setAutoresizingMask:18];
  [v7 addSubview:v8];

  return v7;
}

+ (id)funCamAvatarPickerControllerForStore:(id)a3 style:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[AVTUIEnvironment createFunCamEnvironment];
  v8 = [[AVTFunCamAvatarPickerController alloc] initWithStore:v6 environment:v7 style:v5];

  return v8;
}

+ (id)funCamAvatarPickerControllerForStore:(id)a3 style:(id)a4 allowsCreation:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = +[AVTUIEnvironment createFunCamEnvironment];
  v10 = [[AVTFunCamAvatarPickerController alloc] initWithStore:v8 environment:v9 style:v7 allowsCreation:v5];

  return v10;
}

- (AVTFunCamAvatarPickerController)initWithStore:(id)a3 environment:(id)a4 style:(id)a5 allowsCreation:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v24.receiver = self;
  v24.super_class = AVTFunCamAvatarPickerController;
  v14 = [(AVTFunCamAvatarPickerController *)&v24 initWithNibName:0 bundle:0];
  if (v14)
  {
    if (([v11 conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v11}];
    }

    objc_storeStrong(&v14->_store, a3);
    v15 = [v12 logger];
    logger = v14->_logger;
    v14->_logger = v15;

    v17 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:v12];
    imageProvider = v14->_imageProvider;
    v14->_imageProvider = v17;

    v19 = +[AVTRenderingScope funCamCarouselThumbnailScope];
    editableRecordsListRenderingScope = v14->_editableRecordsListRenderingScope;
    v14->_editableRecordsListRenderingScope = v19;

    v21 = +[AVTRenderingScope gridThumbnailScope];
    gridRenderingScope = v14->_gridRenderingScope;
    v14->_gridRenderingScope = v21;

    objc_storeStrong(&v14->_environment, a4);
    objc_storeStrong(&v14->_style, a5);
    v14->_allowsCreation = a6;
    [(AVTFunCamAvatarPickerController *)v14 preloadAll];
    [(AVTFunCamAvatarPickerController *)v14 reloadModel];
  }

  return v14;
}

- (id)selectedIndexPath
{
  v3 = [(AVTFunCamAvatarPickerController *)self selectedAvatarRecord];

  if (!v3 || (-[AVTFunCamAvatarPickerController selectedAvatarRecord](self, "selectedAvatarRecord"), v4 = objc_claimAutoreleasedReturnValue(), v5 = -[AVTFunCamAvatarPickerController indexForRecord:](self, "indexForRecord:", v4), v4, v5 == 0x7FFFFFFFFFFFFFFFLL) || ([MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(AVTFunCamAvatarPickerController *)self indexPathForNoneItem];
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
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
    v4 = [(AVTFunCamAvatarPickerController *)self store];
    [v3 preloadAllAvatarsWithStore:v4 completionHandler:0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVTFunCamAvatarPickerController;
  [(AVTFunCamAvatarPickerController *)&v7 traitCollectionDidChange:a3];
  if ([(AVTFunCamAvatarPickerController *)self isViewLoaded])
  {
    v4 = [(AVTFunCamAvatarPickerController *)self collectionView];
    v5 = [v4 visibleCells];

    if (v5)
    {
      v6 = [(AVTFunCamAvatarPickerController *)self collectionView];
      [v6 reloadData];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVTFunCamAvatarPickerController;
  [(AVTFunCamAvatarPickerController *)&v5 viewDidLayoutSubviews];
  v3 = [(AVTFunCamAvatarPickerController *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [v4 invalidateLayout];
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
  v11 = [(AVTFunCamAvatarPickerController *)self view];
  [v11 bounds];
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

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    if ([(AVTFunCamAvatarPickerController *)self isViewLoaded])
    {

      [(AVTFunCamAvatarPickerController *)self updateViewForCurrentMode];
    }
  }
}

- (void)setStyle:(id)a3
{
  objc_storeStrong(&self->_style, a3);
  v4 = [(AVTFunCamAvatarPickerController *)self collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [(AVTFunCamAvatarPickerController *)self isViewLoaded];

    if (v6)
    {
      v7 = [(AVTFunCamAvatarPickerController *)self buildCollectionViewLayout];
      [(AVTFunCamAvatarPickerController *)self setListLayout:v7];

      v8 = [(AVTFunCamAvatarPickerController *)self listLayout];
      v9 = [(AVTFunCamAvatarPickerController *)self collectionView];
      [v9 setCollectionViewLayout:v8];

      v10 = [(AVTFunCamAvatarPickerController *)self buildTitlesCollectionViewLayout];
      v11 = [(AVTFunCamAvatarPickerController *)self titlesCollectionView];
      [v11 setCollectionViewLayout:v10];

      [(AVTFunCamAvatarPickerController *)self updateViewForCurrentMode];
    }
  }
}

- (id)buildCollectionViewLayout
{
  v3 = [AVTEngagementLayout alloc];
  v4 = [(AVTFunCamAvatarPickerController *)self style];
  [v4 cellSize];
  v6 = v5;
  v8 = v7;
  v9 = [(AVTFunCamAvatarPickerController *)self style];
  [v9 engagedCellSize];
  v11 = v10;
  v13 = v12;
  v14 = [(AVTFunCamAvatarPickerController *)self style];
  [v14 interitemSpacing];
  v16 = [(AVTEngagementLayout *)v3 initWithDefaultCellSize:v6 engagedCellSize:v8 baseInteritemSpacing:v11, v13, v15];

  v17 = [(AVTEngagementListCollectionViewLayout *)[AVTFunCamAvatarPickerCollectionViewLayout alloc] initWithEngagementLayout:v16];

  return v17;
}

- (id)buildTitlesCollectionViewLayout
{
  v3 = [AVTEngagementLayout alloc];
  v4 = [(AVTFunCamAvatarPickerController *)self style];
  [v4 cellSize];
  v6 = v5;
  v7 = [(AVTFunCamAvatarPickerController *)self style];
  [v7 engagedCellSize];
  v9 = v8;
  v10 = [(AVTFunCamAvatarPickerController *)self style];
  [v10 engagedCellSize];
  v12 = v11;
  v14 = v13;
  v15 = [(AVTFunCamAvatarPickerController *)self style];
  [v15 interitemSpacing];
  v17 = [(AVTEngagementLayout *)v3 initWithDefaultCellSize:v6 engagedCellSize:v9 baseInteritemSpacing:v12, v14, v16];

  v18 = [(AVTEngagementListCollectionViewLayout *)[AVTFunCamAvatarPickerCollectionViewLayout alloc] initWithEngagementLayout:v17];

  return v18;
}

- (void)buildCollectionView
{
  v38 = [(AVTFunCamAvatarPickerController *)self buildCollectionViewLayout];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [(AVTFunCamAvatarPickerController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:v38 collectionViewLayout:?];

  v6 = [AVTCenteringCollectionViewDelegate alloc];
  v7 = [(AVTFunCamAvatarPickerController *)self environment];
  v8 = [(AVTCenteringCollectionViewDelegate *)v6 initWithCollectionView:v5 delegate:self environment:v7];
  [(AVTFunCamAvatarPickerController *)self setCenteringDelegate:v8];

  [v5 setDataSource:self];
  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v9];

  [v5 setShowsHorizontalScrollIndicator:0];
  [v5 setShowsVerticalScrollIndicator:0];
  [v5 setAutoresizingMask:18];
  [v5 _setTransfersScrollToContainer:0];
  v10 = objc_opt_class();
  v11 = +[AVTFunCamAvatarPickerCollectionViewCell cellIdentifier];
  [v5 registerClass:v10 forCellWithReuseIdentifier:v11];

  [(AVTFunCamAvatarPickerController *)self setCollectionView:v5];
  [(AVTFunCamAvatarPickerController *)self setListLayout:v38];
  v12 = [objc_opt_class() newGridLayout];
  [(AVTFunCamAvatarPickerController *)self setGridLayout:v12];

  v13 = [(AVTFunCamAvatarPickerController *)self view];
  [v13 addSubview:v5];

  v14 = [(AVTFunCamAvatarPickerController *)self view];
  [v14 bounds];
  v15 = CGRectGetMaxY(v40) + -14.0;
  v16 = [(AVTFunCamAvatarPickerController *)self view];
  [v16 bounds];
  Width = CGRectGetWidth(v41);

  v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, v15, Width, 14.0}];
  [(AVTFunCamAvatarPickerController *)self setTitlesContainer:v18];

  v19 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [v19 setUserInteractionEnabled:0];

  v20 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v21 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(AVTFunCamAvatarPickerController *)self buildTitlesCollectionViewLayout];
  v31 = [v20 initWithFrame:v30 collectionViewLayout:{v23, v25, v27, v29}];

  [v31 setUserInteractionEnabled:0];
  [v31 setDataSource:self];
  v32 = [MEMORY[0x1E69DC888] clearColor];
  [v31 setBackgroundColor:v32];

  [v31 setShowsHorizontalScrollIndicator:0];
  [v31 setAutoresizingMask:18];
  v33 = objc_opt_class();
  v34 = +[AVTFunCamAvatarPickerTitleCell cellIdentifier];
  [v31 registerClass:v33 forCellWithReuseIdentifier:v34];

  [(AVTFunCamAvatarPickerController *)self setTitlesCollectionView:v31];
  v35 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [v35 addSubview:v31];

  v36 = [(AVTFunCamAvatarPickerController *)self view];
  v37 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [v36 addSubview:v37];

  [(AVTFunCamAvatarPickerController *)self updateTitlesClippingViewMask];
}

- (void)updateTitlesClippingViewMask
{
  v3 = objc_opt_class();
  v4 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [v4 bounds];
  v7 = [v3 createClippingViewForSize:{v5, v6}];
  [(AVTFunCamAvatarPickerController *)self setTitlesClippingView:v7];

  v8 = [(AVTFunCamAvatarPickerController *)self titlesClippingView];
  [v8 setAutoresizingMask:10];

  v10 = [(AVTFunCamAvatarPickerController *)self titlesClippingView];
  v9 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [v9 setMaskView:v10];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVTFunCamAvatarPickerController;
  [(AVTFunCamAvatarPickerController *)&v5 viewWillAppear:a3];
  v4 = [(AVTFunCamAvatarPickerController *)self selectedIndexPath];
  [(AVTFunCamAvatarPickerController *)self selectItemAtIndexPath:v4 animated:0 notifyDelegate:0];
}

- (void)startObservingChangesIfNeeded
{
  v3 = [(AVTFunCamAvatarPickerController *)self changeNotificationToken];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = [(AVTFunCamAvatarPickerController *)self environment];
    v5 = [v4 notificationCenter];
    v6 = *MEMORY[0x1E698E308];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __64__AVTFunCamAvatarPickerController_startObservingChangesIfNeeded__block_invoke;
    v11 = &unk_1E7F3B248;
    objc_copyWeak(&v12, &location);
    v7 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:&v8];
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
    v3 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v3 reloadData];

    v4 = [(AVTFunCamAvatarPickerController *)self selectedIndexPath];
    [(AVTFunCamAvatarPickerController *)self selectItemAtIndexPath:v4 animated:0 notifyDelegate:0];
  }
}

- (BOOL)canCreateAvatar
{
  v2 = [(AVTFunCamAvatarPickerController *)self store];
  v3 = [v2 canCreateAvatarWithError:0];

  return v3;
}

- (void)reloadModel
{
  [(AVTFunCamAvatarPickerController *)self startObservingChangesIfNeeded];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AVTFunCamAvatarPickerController *)self allowsCreation];
  v5 = @"none";
  if (v4)
  {
    v5 = @"add";
  }

  v6 = v5;
  v7 = [(AVTFunCamAvatarPickerController *)self allowsCreation];
  v8 = AVTAvatarUIBundle();
  v9 = v8;
  if (v7)
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

  v15 = [v14 _imageThatSuppressesAccessibilityHairlineThickening];

  v37 = v11;
  v16 = [[AVTAvatarListImageItem alloc] initWithImage:v15 title:v11];
  [(AVTFunCamAvatarPickerController *)self setNoneItem:v16];

  v17 = [(AVTFunCamAvatarPickerController *)self noneItem];
  [v3 addObject:v17];

  v18 = [MEMORY[0x1E698E310] requestForCustomAvatars];
  v19 = [(AVTFunCamAvatarPickerController *)self store];
  v39 = 0;
  v20 = [v19 avatarsForFetchRequest:v18 error:&v39];
  v21 = v39;

  if (!v20)
  {
    v22 = [(AVTFunCamAvatarPickerController *)self logger];
    v23 = [v21 description];
    [v22 logErrorFetchingRecords:v23];
  }

  v24 = [v20 reverseObjectEnumerator];
  v25 = [v24 allObjects];

  [(AVTFunCamAvatarPickerController *)self setEditableRecords:v25];
  v26 = [objc_opt_class() itemsFromRecords:v25];
  [v3 addObjectsFromArray:v26];

  v27 = [MEMORY[0x1E698E310] requestForPredefinedAvatars];

  v28 = [(AVTFunCamAvatarPickerController *)self store];
  v38 = 0;
  v29 = [v28 avatarsForFetchRequest:v27 error:&v38];
  v30 = v38;

  if (!v29)
  {
    v31 = [(AVTFunCamAvatarPickerController *)self logger];
    v32 = [v30 description];
    [v31 logErrorFetchingRecords:v32];
  }

  v33 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_11];
  v34 = [v29 filteredArrayUsingPredicate:v33];

  [(AVTFunCamAvatarPickerController *)self setPuppetRecords:v34];
  v35 = [objc_opt_class() itemsFromRecords:v34];
  [v3 addObjectsFromArray:v35];

  v36 = [v3 copy];
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
  v3 = [(AVTFunCamAvatarPickerController *)self view];
  [v3 bounds];
  [(AVTFunCamAvatarPickerController *)self setLastUpdateViewBounds:?];

  v4 = [(AVTFunCamAvatarPickerController *)self mode];
  v5 = [(AVTFunCamAvatarPickerController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
  [v12 setHidden:v4 == 1];

  v13 = v11 + -1.0;
  if (v4 == 1)
  {
    v14 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v14 setFrame:{v7, 1.0, v9, v13}];

    v15 = [(AVTFunCamAvatarPickerController *)self gridLayout];
    v16 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v16 setCollectionViewLayout:v15];

    v17 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v17 setDelegate:self];
  }

  else
  {
    v18 = [(AVTFunCamAvatarPickerController *)self view];
    [v18 safeAreaInsets];
    v20 = v7 + v19;
    v22 = v21 + 1.0;
    v24 = v9 - (v19 + v23);
    v26 = v13 - (v21 + v25);

    v27 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v27 setFrame:{v20, v22, v24, v26}];

    v28 = [(AVTFunCamAvatarPickerController *)self listLayout];
    v29 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v29 setCollectionViewLayout:v28];

    v30 = [(AVTFunCamAvatarPickerController *)self centeringDelegate];
    v31 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v31 setDelegate:v30];

    v32 = [(AVTFunCamAvatarPickerController *)self style];
    [v32 engagedCellSize];
    v34 = v26 + (v26 - v33) * -0.5 + -14.0;

    v35 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
    [v35 setFrame:{0.0, v34, v24, 14.0}];

    v36 = [(AVTFunCamAvatarPickerController *)self titlesContainer];
    [v36 setAutoresizingMask:10];

    [(AVTFunCamAvatarPickerController *)self updateTitlesClippingViewMask];
  }

  [(AVTFunCamAvatarPickerController *)self reloadData];
}

- (void)selectItemForAvatarRecord:(id)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(AVTFunCamAvatarPickerController *)self setSelectedAvatarRecord:a3];
  if ([(AVTFunCamAvatarPickerController *)self isViewLoaded])
  {
    v8 = [(AVTFunCamAvatarPickerController *)self selectedIndexPath];
    [(AVTFunCamAvatarPickerController *)self selectItemAtIndexPath:v8 animated:v6 notifyDelegate:v5];
  }
}

- (void)selectItemAtCenterNotifyDelegate:(BOOL)a3
{
  v3 = a3;
  if (![(AVTFunCamAvatarPickerController *)self isDisplayingGridLayout])
  {
    v5 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v5 contentOffset];
    v7 = v6;
    v9 = v8;
    v10 = [(AVTFunCamAvatarPickerController *)self collectionView];
    v11 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:v10 collectionView:v7, v9];

    if (v11)
    {
      v12 = [v11 item];
      v13 = [(AVTFunCamAvatarPickerController *)self items];
      v14 = [v13 count];

      if (v12 < v14)
      {
        v15 = [(AVTFunCamAvatarPickerController *)self items];
        v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v11, "item")}];

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
        [(AVTFunCamAvatarPickerController *)self selectItemForAvatarRecord:v19[5] animated:1 notifyDelegate:v3];
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

- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v31 = a3;
  if ([(AVTFunCamAvatarPickerController *)self isDisplayingGridLayout])
  {
    v8 = 2;
  }

  else
  {
    v9 = [(AVTFunCamAvatarPickerController *)self collectionView];
    v10 = [v9 collectionViewLayout];
    v11 = [v31 item];
    v12 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v17 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v17 bounds];
    [v10 centerForCenteringElementAtIndex:v11 visibleBoundsSize:v14 proposedOrigin:{v16, v18, v19}];
    v21 = v20;
    v23 = v22;

    v24 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v24 collectionView:v21, v23];
    v26 = v25;
    v28 = v27;

    v29 = [(AVTFunCamAvatarPickerController *)self collectionView];
    [v29 setContentOffset:v6 animated:{v26, v28}];

    v8 = 0;
  }

  v30 = [(AVTFunCamAvatarPickerController *)self collectionView];
  [v30 selectItemAtIndexPath:v31 animated:v6 scrollPosition:v8];

  if (v5)
  {
    [(AVTFunCamAvatarPickerController *)self sendSelectionEventToDelegateForItemAtIndexPath:v31];
  }
}

- (void)sendSelectionEventToDelegateForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVTFunCamAvatarPickerController *)self items];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];

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
    v9 = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
    [v9 avatarPicker:self didSelectAvatarRecord:v12[5]];

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

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = a3;
  v5 = [(AVTFunCamAvatarPickerController *)self titlesCollectionView];

  if (v5 == v4)
  {
    v6 = [(AVTFunCamAvatarPickerController *)self isDisplayingGridLayout];

    if (v6)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTFunCamAvatarPickerController *)self items:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTFunCamAvatarPickerController *)self items];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

  v10 = [(AVTFunCamAvatarPickerController *)self titlesCollectionView];

  if (v10 == v6)
  {
    v14 = +[AVTFunCamAvatarPickerTitleCell cellIdentifier];
    v15 = [v6 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v7];

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
    v12 = [v6 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v7];

    v13 = ![(AVTFunCamAvatarPickerController *)self allowsCreation]&& [(AVTFunCamAvatarPickerController *)self isDisplayingGridLayout];
    [v12 setSelectionVisible:v13];
    v18 = [MEMORY[0x1E696AFB0] UUID];
    [v12 setDisplaySessionUUID:v18];
    [v12 setShowsTitle:{-[AVTFunCamAvatarPickerController isDisplayingGridLayout](self, "isDisplayingGridLayout") ^ 1}];
    v19 = [(AVTFunCamAvatarPickerController *)self style];
    [v19 engagedCellSize];
    [v12 setEngagedSize:?];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke_2;
    v25[3] = &unk_1E7F3BD40;
    v25[4] = self;
    v26 = v12;
    v27 = v18;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73__AVTFunCamAvatarPickerController_collectionView_cellForItemAtIndexPath___block_invoke_4;
    v23[3] = &unk_1E7F3BD68;
    v23[4] = self;
    v20 = v26;
    v24 = v20;
    v17 = v18;
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
  v3 = [(AVTFunCamAvatarPickerController *)self items];
  v4 = [(AVTFunCamAvatarPickerController *)self noneItem];
  v5 = [v3 indexOfObject:v4];

  v6 = MEMORY[0x1E696AC88];

  return [v6 indexPathForItem:v5 inSection:0];
}

- (int64_t)indexForRecordIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AVTFunCamAvatarPickerController *)self items];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__AVTFunCamAvatarPickerController_indexForRecordIdentifier___block_invoke;
    v8[3] = &unk_1E7F3B5A0;
    v9 = v4;
    v6 = [v5 indexOfObjectPassingTest:v8];
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

- (int64_t)indexForRecord:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(AVTFunCamAvatarPickerController *)self indexForRecordIdentifier:v4];

  return v5;
}

- (CGSize)gridItemSize
{
  v3 = [(AVTFunCamAvatarPickerController *)self style];
  v4 = [(AVTFunCamAvatarPickerController *)self collectionView];
  [v4 bounds];
  v6 = v5;
  v7 = [(AVTFunCamAvatarPickerController *)self environment];
  [v3 edgeLengthFittingWidth:v7 environment:v6];
  v9 = v8;

  v10 = v9;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a4;
  v7 = [(AVTFunCamAvatarPickerController *)self gridLayout];

  if (v7 != v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Custom layout for list mode shouldn't call this method"];
  }

  [(AVTFunCamAvatarPickerController *)self gridItemSize];
  result.height = v9;
  result.width = v8;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = a4;
  v7 = [(AVTFunCamAvatarPickerController *)self gridLayout];

  if (v7 != v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Custom layout for list mode shouldn't call this method"];
  }

  v8 = [(AVTFunCamAvatarPickerController *)self style];
  [v8 gridEdgeInsets];
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTFunCamAvatarPickerController *)self items];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

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

- (void)scrollViewDidScroll:(id)a3
{
  v11 = a3;
  v4 = [(AVTFunCamAvatarPickerController *)self collectionView];

  v5 = v11;
  if (v4 == v11)
  {
    [v11 contentOffset];
    v7 = v6;
    v9 = v8;
    v10 = [(AVTFunCamAvatarPickerController *)self titlesCollectionView];
    [v10 setContentOffset:{v7, v9}];

    v5 = v11;
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(AVTFunCamAvatarPickerController *)self selectItemAtCenterNotifyDelegate:1];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  if (([v4 isDragging] & 1) == 0 && (objc_msgSend(v4, "isTracking") & 1) == 0)
  {
    [(AVTFunCamAvatarPickerController *)self selectItemAtCenterNotifyDelegate:1];
  }
}

- (void)sessionProviderDidEndCameraSession:(id)a3
{
  v4 = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
    [v6 avatarPickerDidEndCameraSession:self];
  }
}

- (void)sessionProviderWillStartCameraSession:(id)a3
{
  v4 = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTFunCamAvatarPickerController *)self avatarPickerDelegate];
    [v6 avatarPickerWillStartCameraSession:self];
  }
}

- (void)selectAvatarRecordWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v11 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
  v6 = [(AVTFunCamAvatarPickerController *)self items];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v7)
  {
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __77__AVTFunCamAvatarPickerController_selectAvatarRecordWithIdentifier_animated___block_invoke;
      v12[3] = &unk_1E7F3BD90;
      v13 = v5;
      v14 = &v19;
      [v10 downcastWithRecordHandler:v12 imageHandler:0 viewHandler:0];
      LOBYTE(v10) = v20[5] == 0;

      if ((v10 & 1) == 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(AVTFunCamAvatarPickerController *)self selectItemForAvatarRecord:v20[5] animated:v11 notifyDelegate:0];
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