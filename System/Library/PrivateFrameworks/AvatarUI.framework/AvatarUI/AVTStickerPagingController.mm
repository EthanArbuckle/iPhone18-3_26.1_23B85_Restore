@interface AVTStickerPagingController
+ (id)stickerCacheWithEnvironment:(id)environment;
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (AVTStickerPagingController)initWithRecordDataSource:(id)source recordImageProvider:(id)provider stickerConfigurationProvider:(id)configurationProvider taskScheduler:(id)scheduler environment:(id)environment allowsPeel:(BOOL)peel;
- (AVTStickerPagingControllerDelegate)delegate;
- (AVTStickerSelectionDelegate)stickerSelectionDelegate;
- (AVTStickerSheetControllerProvider)stickerSheetControllerProvider;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)endDraggingTargetContentOffset;
- (CGPoint)pageContentOffset;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)pageContentInsets;
- (UIView)view;
- (id)avatarActionsViewController:(id)controller recordUpdateForDeletingRecord:(id)record;
- (id)centeredPageWithOffset:(CGPoint)offset;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)firstPageItemView;
- (id)reloadSheetControllerForRecord:(id)record;
- (id)sheetControllerAtIndex:(int64_t)index;
- (id)sheetControllerForRecord:(id)record;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)pageIndexForAvatarRecordIdentifier:(id)identifier;
- (void)avatarActionsViewControllerDidFinish:(id)finish;
- (void)cancelPrefetchingDataForRecord:(id)record;
- (void)clearStickerSelection;
- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)deletePageForRecord:(id)record atIndex:(int64_t)index;
- (void)didEndDisplaying;
- (void)insertPageForRecord:(id)record atIndex:(int64_t)index;
- (void)loadView;
- (void)notifyingContainerViewDidChangeSize:(CGSize)size;
- (void)notifyingContainerViewWillChangeSize:(CGSize)size;
- (void)prefetchDataForRecord:(id)record;
- (void)reloadData;
- (void)reloadPageForRecord:(id)record atIndex:(int64_t)index;
- (void)scrollToAvatarWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)scrollToPageAtIndex:(int64_t)index animated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setPageContentInsets:(UIEdgeInsets)insets;
- (void)setPageContentOffset:(CGPoint)offset;
- (void)stickerSheetController:(id)controller didFinishRenderingStickersForRecord:(id)record;
- (void)stickerSheetController:(id)controller didInteractWithStickerItem:(id)item atIndex:(int64_t)index byPeeling:(BOOL)peeling;
- (void)stickerSheetController:(id)controller didScrollToContentOffset:(CGPoint)offset;
- (void)stickerSheetController:(id)controller scrollView:(id)view willEndDraggingWithTargetContentOffset:(CGPoint *)offset;
- (void)updateForEndingScrollWithTargetContentOffset:(CGPoint)offset;
- (void)willEndDisplaying;
- (void)willStartDisplaying;
- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated;
@end

@implementation AVTStickerPagingController

+ (id)stickerCacheWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if (AVTUIStickersCaching())
  {
    if (AVTUIFlushStickersCache())
    {
      stickerImageStoreLocation = [environmentCopy stickerImageStoreLocation];
      logger = [environmentCopy logger];
      [AVTImageStore clearContentAtLocation:stickerImageStoreLocation logger:logger];

      AVTUISetFlushStickersCache();
    }

    v6 = [AVTInMemoryResourceCache alloc];
    lockProvider = [environmentCopy lockProvider];
    logger2 = [environmentCopy logger];
    v9 = [(AVTInMemoryResourceCache *)v6 initWithLockProvider:lockProvider totalCostLimit:980000 logger:logger2];
  }

  else
  {
    stickerImageStoreLocation2 = [environmentCopy stickerImageStoreLocation];
    logger3 = [environmentCopy logger];
    [AVTImageStore clearContentAtLocation:stickerImageStoreLocation2 logger:logger3];

    AVTUISetFlushStickersCache();
    v9 = objc_alloc_init(AVTPassThroughResourceCache);
  }

  return v9;
}

- (AVTStickerPagingController)initWithRecordDataSource:(id)source recordImageProvider:(id)provider stickerConfigurationProvider:(id)configurationProvider taskScheduler:(id)scheduler environment:(id)environment allowsPeel:(BOOL)peel
{
  sourceCopy = source;
  providerCopy = provider;
  configurationProviderCopy = configurationProvider;
  schedulerCopy = scheduler;
  environmentCopy = environment;
  v35.receiver = self;
  v35.super_class = AVTStickerPagingController;
  v18 = [(AVTStickerPagingController *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataSource, source);
    objc_storeStrong(&v19->_environment, environment);
    v19->_allowsPeel = peel;
    v20 = [AVTUIStickerGeneratorPool alloc];
    logger = [environmentCopy logger];
    v22 = [(AVTUIStickerGeneratorPool *)v20 initWithMaxStickerGeneratorCount:2 logger:logger];
    stickerGeneratorPool = v19->_stickerGeneratorPool;
    v19->_stickerGeneratorPool = v22;

    objc_storeStrong(&v19->_taskScheduler, scheduler);
    backgroundRenderingQueue = [environmentCopy backgroundRenderingQueue];
    renderingQueue = v19->_renderingQueue;
    v19->_renderingQueue = backgroundRenderingQueue;

    backgroundEncodingQueue = [environmentCopy backgroundEncodingQueue];
    encodingQueue = v19->_encodingQueue;
    v19->_encodingQueue = backgroundEncodingQueue;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pageForRecords = v19->_pageForRecords;
    v19->_pageForRecords = dictionary;

    v30 = [objc_opt_class() stickerCacheWithEnvironment:environmentCopy];
    cache = v19->_cache;
    v19->_cache = v30;

    objc_storeStrong(&v19->_imageProvider, provider);
    objc_storeStrong(&v19->_stickerConfigurationProvider, configurationProvider);
  }

  return v19;
}

- (UIView)view
{
  view = self->_view;
  if (!view)
  {
    [(AVTStickerPagingController *)self loadView];
    view = self->_view;
  }

  return view;
}

- (void)loadView
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v12 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v12 setScrollDirection:1];
  [v12 setMinimumInteritemSpacing:0.0];
  [v12 setMinimumLineSpacing:0.0];
  v7 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v12 collectionViewLayout:{v3, v4, v5, v6}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:clearColor];

  [v7 setDataSource:self];
  [v7 setPrefetchDataSource:self];
  [v7 setPrefetchingEnabled:1];
  [v7 setDelegate:self];
  [v7 setShowsHorizontalScrollIndicator:0];
  [v7 setPagingEnabled:1];
  [v7 setContentInsetAdjustmentBehavior:2];
  v9 = objc_opt_class();
  v10 = +[AVTStickerPagingCollectionViewCell cellIdentifier];
  [v7 registerClass:v9 forCellWithReuseIdentifier:v10];

  [v7 setAutoresizingMask:18];
  [(AVTStickerPagingController *)self setCollectionView:v7];
  v11 = [[AVTNotifyingContainerView alloc] initWithFrame:v3, v4, v5, v6];
  [(AVTNotifyingContainerView *)v11 setDelegate:self];
  [(AVTNotifyingContainerView *)v11 addSubview:v7];
  [(AVTStickerPagingController *)self setView:v11];
  [(AVTStickerPagingController *)self reloadData];
}

- (void)setPageContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_pageContentInsets.top), vceqq_f64(v4, *&self->_pageContentInsets.bottom)))) & 1) == 0)
  {
    self->_pageContentInsets = insets;
    bottom = insets.bottom;
    right = insets.right;
    top = insets.top;
    left = insets.left;
    collectionView = [(AVTStickerPagingController *)self collectionView];
    [collectionView contentOffset];
    v13 = [(AVTStickerPagingController *)self centeredPageWithOffset:?];

    collectionView2 = [(AVTStickerPagingController *)self collectionView];
    collectionViewLayout = [collectionView2 collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    [v13 setSectionInsets:{top, left, bottom, right}];
  }
}

- (void)prefetchDataForRecord:(id)record
{
  v3 = [(AVTStickerPagingController *)self sheetControllerForRecord:record];
  [v3 startAllSchedulerTasks];
}

- (void)cancelPrefetchingDataForRecord:(id)record
{
  recordCopy = record;
  taskScheduler = [(AVTStickerPagingController *)self taskScheduler];
  identifier = [recordCopy identifier];

  [taskScheduler cancelStickerSheetTasksForAvatarRecordIdentifier:identifier];
}

- (void)reloadData
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(AVTStickerPagingController *)self setPageForRecords:dictionary];

  collectionView = [(AVTStickerPagingController *)self collectionView];
  [collectionView reloadData];
}

- (id)sheetControllerForRecord:(id)record
{
  recordCopy = record;
  pageForRecords = [(AVTStickerPagingController *)self pageForRecords];
  identifier = [recordCopy identifier];
  v7 = [pageForRecords objectForKey:identifier];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    stickerConfigurationProvider = [(AVTStickerPagingController *)self stickerConfigurationProvider];
    v10 = [stickerConfigurationProvider stickerConfigurationsForAvatarRecord:recordCopy];

    cache = [(AVTStickerPagingController *)self cache];
    renderingQueue = [(AVTStickerPagingController *)self renderingQueue];
    encodingQueue = [(AVTStickerPagingController *)self encodingQueue];
    stickerGeneratorPool = [(AVTStickerPagingController *)self stickerGeneratorPool];
    imageProvider = [(AVTStickerPagingController *)self imageProvider];
    environment = [(AVTStickerPagingController *)self environment];
    v17 = [AVTStickerSheetModel sheetModelForAvatarRecord:recordCopy withConfigurations:v10 cache:cache taskScheduler:0 renderingQueue:renderingQueue encodingQueue:encodingQueue stickerGeneratorPool:stickerGeneratorPool imageProvider:imageProvider environment:environment];

    stickerSheetControllerProvider = [(AVTStickerPagingController *)self stickerSheetControllerProvider];

    if (stickerSheetControllerProvider)
    {
      stickerSheetControllerProvider2 = [(AVTStickerPagingController *)self stickerSheetControllerProvider];
      taskScheduler = [(AVTStickerPagingController *)self taskScheduler];
      v21 = [stickerSheetControllerProvider2 stickerSheetControllerForSelectedAvatar:recordCopy stickerSheetModel:v17 taskScheduler:taskScheduler];
    }

    else
    {
      v22 = [AVTStickerSheetController alloc];
      stickerSheetControllerProvider2 = [(AVTStickerPagingController *)self taskScheduler];
      v21 = [(AVTStickerSheetController *)v22 initWithStickerSheetModel:v17 taskScheduler:stickerSheetControllerProvider2 allowsPeel:[(AVTStickerPagingController *)self allowsPeel]];
    }

    [(AVTStickerSheetController *)v21 setDelegate:self];
    disclosureValidationDelegate = [(AVTStickerPagingController *)self disclosureValidationDelegate];
    [(AVTStickerSheetController *)v21 setDisclosureValidationDelegate:disclosureValidationDelegate];

    pageForRecords2 = [(AVTStickerPagingController *)self pageForRecords];
    identifier2 = [recordCopy identifier];
    [pageForRecords2 setObject:v21 forKey:identifier2];

    v8 = v21;
  }

  return v8;
}

- (id)reloadSheetControllerForRecord:(id)record
{
  recordCopy = record;
  pageForRecords = [(AVTStickerPagingController *)self pageForRecords];
  identifier = [recordCopy identifier];
  v7 = [pageForRecords objectForKey:identifier];

  if (v7)
  {
    pageForRecords2 = [(AVTStickerPagingController *)self pageForRecords];
    identifier2 = [recordCopy identifier];
    [pageForRecords2 removeObjectForKey:identifier2];

    [v7 sheetDidDisappear];
  }

  stickerGeneratorPool = [(AVTStickerPagingController *)self stickerGeneratorPool];
  [stickerGeneratorPool flushGeneratorForRecord:recordCopy];

  v11 = [(AVTStickerPagingController *)self sheetControllerForRecord:recordCopy];

  return v11;
}

- (id)sheetControllerAtIndex:(int64_t)index
{
  dataSource = [(AVTStickerPagingController *)self dataSource];
  v6 = [dataSource recordAtIndex:index];

  v7 = [(AVTStickerPagingController *)self sheetControllerForRecord:v6];

  return v7;
}

- (void)insertPageForRecord:(id)record atIndex:(int64_t)index
{
  index = [(AVTStickerPagingController *)self reloadSheetControllerForRecord:record, index];
  [index setDelegate:self];
  collectionView = [(AVTStickerPagingController *)self collectionView];
  [collectionView reloadData];
}

- (void)deletePageForRecord:(id)record atIndex:(int64_t)index
{
  recordCopy = record;
  pageForRecords = [(AVTStickerPagingController *)self pageForRecords];
  identifier = [recordCopy identifier];
  v9 = [pageForRecords objectForKey:identifier];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
    collectionView = [(AVTStickerPagingController *)self collectionView];
    v12 = [collectionView cellForItemAtIndexPath:v10];
    [(AVTStickerPagingController *)self setLastDeletedCell:v12];

    stickerGeneratorPool = [(AVTStickerPagingController *)self stickerGeneratorPool];
    [stickerGeneratorPool flushGeneratorForRecord:recordCopy];

    pageForRecords2 = [(AVTStickerPagingController *)self pageForRecords];
    identifier2 = [recordCopy identifier];
    [pageForRecords2 removeObjectForKey:identifier2];

    collectionView2 = [(AVTStickerPagingController *)self collectionView];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__AVTStickerPagingController_deletePageForRecord_atIndex___block_invoke;
    v20[3] = &unk_1E7F3AD60;
    v20[4] = self;
    v21 = v10;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__AVTStickerPagingController_deletePageForRecord_atIndex___block_invoke_2;
    v18[3] = &unk_1E7F3AA80;
    v19 = v9;
    v17 = v10;
    [collectionView2 performBatchUpdates:v20 completion:v18];
  }
}

void __58__AVTStickerPagingController_deletePageForRecord_atIndex___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) collectionView];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 deleteItemsAtIndexPaths:v3];
}

- (void)reloadPageForRecord:(id)record atIndex:(int64_t)index
{
  index = [(AVTStickerPagingController *)self reloadSheetControllerForRecord:record, index];
  collectionView = [(AVTStickerPagingController *)self collectionView];
  [collectionView reloadData];
}

- (void)setPageContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if (offset.x != self->_pageContentOffset.x || offset.y != self->_pageContentOffset.y)
  {
    self->_pageContentOffset = offset;
  }

  collectionView = [(AVTStickerPagingController *)self collectionView];
  [collectionView contentOffset];
  v8 = [(AVTStickerPagingController *)self centeredPageWithOffset:?];

  [v8 scrollToContentOffset:0 animated:{x, y}];
}

- (id)centeredPageWithOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  collectionView = [(AVTStickerPagingController *)self collectionView];
  v7 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:collectionView collectionView:x, y];

  v8 = -[AVTStickerPagingController sheetControllerAtIndex:](self, "sheetControllerAtIndex:", [v7 item]);

  return v8;
}

- (void)scrollToAvatarWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(AVTStickerPagingController *)self pageIndexForAvatarRecordIdentifier:identifier];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(AVTStickerPagingController *)self scrollToPageAtIndex:v6 animated:animatedCopy];
  }
}

- (void)scrollToPageAtIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  dataSource = [(AVTStickerPagingController *)self dataSource];
  numberOfRecords = [dataSource numberOfRecords];

  if (numberOfRecords > index)
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
    dataSource2 = [(AVTStickerPagingController *)self dataSource];
    v10 = [dataSource2 recordAtIndex:index];
    identifier = [v10 identifier];
    [(AVTStickerPagingController *)self setFocusedPageRecordIdentifier:identifier];

    if (v13)
    {
      collectionView = [(AVTStickerPagingController *)self collectionView];
      [collectionView scrollToItemAtIndexPath:v13 atScrollPosition:16 animated:animatedCopy];
    }
  }
}

- (void)updateForEndingScrollWithTargetContentOffset:(CGPoint)offset
{
  v8 = [(AVTStickerPagingController *)self centeredPageWithOffset:offset.x, offset.y];
  avatarRecord = [v8 avatarRecord];
  identifier = [avatarRecord identifier];
  [(AVTStickerPagingController *)self setFocusedPageRecordIdentifier:identifier];

  avatarPickerDelegate = [(AVTStickerPagingController *)self avatarPickerDelegate];
  avatarRecord2 = [v8 avatarRecord];
  [avatarPickerDelegate avatarPicker:self didSelectAvatarRecord:avatarRecord2];
}

- (int64_t)pageIndexForAvatarRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(AVTStickerPagingController *)self dataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AVTStickerPagingController_pageIndexForAvatarRecordIdentifier___block_invoke;
  v9[3] = &unk_1E7F3B3B0;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [dataSource indexOfRecordPassingTest:v9];

  return v7;
}

uint64_t __65__AVTStickerPagingController_pageIndexForAvatarRecordIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated
{
  animated = [AVTUIControllerPresentation presentationWithWrappingForController:controller, animated];
  presenterDelegate = [(AVTStickerPagingController *)self presenterDelegate];
  [presenterDelegate presentAvatarUIController:animated animated:1];
}

- (void)willStartDisplaying
{
  collectionView = [(AVTStickerPagingController *)self collectionView];
  [collectionView reloadData];
}

- (void)willEndDisplaying
{
  taskScheduler = [(AVTStickerPagingController *)self taskScheduler];
  [taskScheduler cancelAllTasks];

  stickerGeneratorPool = [(AVTStickerPagingController *)self stickerGeneratorPool];
  [stickerGeneratorPool flush];
}

- (void)didEndDisplaying
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pageForRecords = [(AVTStickerPagingController *)self pageForRecords];
  v4 = [pageForRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(pageForRecords);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        pageForRecords2 = [(AVTStickerPagingController *)self pageForRecords];
        v10 = [pageForRecords2 objectForKey:v8];

        [v10 sheetDidDisappear];
        ++v7;
      }

      while (v5 != v7);
      v5 = [pageForRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)firstPageItemView
{
  collectionView = [(AVTStickerPagingController *)self collectionView];
  [collectionView contentOffset];
  v4 = [(AVTStickerPagingController *)self centeredPageWithOffset:?];

  firstStickerView = [v4 firstStickerView];

  return firstStickerView;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTStickerPagingController *)self dataSource:view];
  numberOfRecords = [v4 numberOfRecords];

  return numberOfRecords;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[AVTStickerPagingCollectionViewCell cellIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  item = [pathCopy item];
  v11 = [(AVTStickerPagingController *)self sheetControllerAtIndex:item];
  [(AVTStickerPagingController *)self pageContentInsets];
  [v11 setSectionInsets:?];
  view = [v11 view];
  [v9 setPageContentView:view];

  return v9;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v7 = -[AVTStickerPagingController sheetControllerAtIndex:](self, "sheetControllerAtIndex:", [path item]);
  [v7 sheetWillAppear];
  if (objc_opt_respondsToSelector())
  {
    selectedStickerIdentifier = [(AVTStickerPagingController *)self selectedStickerIdentifier];
    [v7 selectStickerWithIdentifier:selectedStickerIdentifier];
  }

  [(AVTStickerPagingController *)self pageContentOffset];
  [v7 scrollToContentOffset:0 animated:?];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  lastDeletedCell = [(AVTStickerPagingController *)self lastDeletedCell];

  if (lastDeletedCell == cellCopy)
  {
    [(AVTStickerPagingController *)self setLastDeletedCell:0];
  }

  else
  {
    collectionView = [(AVTStickerPagingController *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    v11 = [indexPathsForVisibleItems containsObject:pathCopy];

    if ((v11 & 1) == 0)
    {
      v12 = -[AVTStickerPagingController sheetControllerAtIndex:](self, "sheetControllerAtIndex:", [pathCopy item]);
      [v12 sheetDidDisappear];
    }
  }
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v18 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        dataSource = [(AVTStickerPagingController *)self dataSource];
        v12 = [dataSource recordAtIndex:{objc_msgSend(v10, "item")}];

        [(AVTStickerPagingController *)self prefetchDataForRecord:v12];
        ++v9;
      }

      while (v7 != v9);
      v7 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths
{
  v18 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        dataSource = [(AVTStickerPagingController *)self dataSource];
        v12 = [dataSource recordAtIndex:{objc_msgSend(v10, "item")}];

        [(AVTStickerPagingController *)self cancelPrefetchingDataForRecord:v12];
        ++v9;
      }

      while (v7 != v9);
      v7 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  [(AVTStickerPagingController *)self setEndDraggingTargetContentOffset:dragging, offset->x, offset->y];
  x = offset->x;
  y = offset->y;

  [(AVTStickerPagingController *)self updateForEndingScrollWithTargetContentOffset:x, y];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  if (([deceleratingCopy avtui_isMoving] & 1) != 0 || (-[AVTStickerPagingController endDraggingTargetContentOffset](self, "endDraggingTargetContentOffset"), v5 = v4, objc_msgSend(deceleratingCopy, "contentOffset"), v5 == v6))
  {
    [deceleratingCopy contentOffset];
    [(AVTStickerPagingController *)self setEndDraggingTargetContentOffset:?];
  }

  else
  {
    [deceleratingCopy contentOffset];
    [(AVTStickerPagingController *)self updateForEndingScrollWithTargetContentOffset:?];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  if (([animationCopy avtui_isMoving] & 1) != 0 || (-[AVTStickerPagingController endDraggingTargetContentOffset](self, "endDraggingTargetContentOffset"), v5 = v4, objc_msgSend(animationCopy, "contentOffset"), v5 == v6))
  {
    [animationCopy contentOffset];
    [(AVTStickerPagingController *)self setEndDraggingTargetContentOffset:?];
  }

  else
  {
    [animationCopy contentOffset];
    [(AVTStickerPagingController *)self updateForEndingScrollWithTargetContentOffset:?];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  [viewCopy bounds];
  v7 = 0x4072C00000000000;
  if (v8 <= 0.0)
  {
    v9 = 0x4072C00000000000;
  }

  else
  {
    v9 = 0x4072C00000000000;
    if (v6 > 0.0)
    {
      [viewCopy bounds];
      v7 = v10;
      v9 = v11;
    }
  }

  v12 = *&v7;
  v13 = *&v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)stickerSheetController:(id)controller didScrollToContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  self->_pageContentOffset = offset;
  delegate = [(AVTStickerPagingController *)self delegate];

  if (delegate)
  {
    delegate2 = [(AVTStickerPagingController *)self delegate];
    [delegate2 stickerPagingController:self pageDidScrollToOffset:{x, y}];
  }
}

- (void)stickerSheetController:(id)controller scrollView:(id)view willEndDraggingWithTargetContentOffset:(CGPoint *)offset
{
  viewCopy = view;
  [(AVTStickerPagingController *)self pageContentInsets];
  v9 = v8;
  [viewCopy contentOffset];
  v11 = v10;

  if (v11 < v9)
  {
    y = offset->y;
    if (y < v9)
    {
      v13 = y < v9 * 0.25;
      v14 = 0.0;
      if (!v13)
      {
        v14 = v9;
      }

      offset->y = v14;
    }
  }
}

- (void)stickerSheetController:(id)controller didFinishRenderingStickersForRecord:(id)record
{
  recordCopy = record;
  stickerGeneratorPool = [(AVTStickerPagingController *)self stickerGeneratorPool];
  [stickerGeneratorPool flushGeneratorForRecord:recordCopy];
}

- (void)stickerSheetController:(id)controller didInteractWithStickerItem:(id)item atIndex:(int64_t)index byPeeling:(BOOL)peeling
{
  controllerCopy = controller;
  itemCopy = item;
  avatarRecord = [controllerCopy avatarRecord];
  stickerConfigurationProvider = [(AVTStickerPagingController *)self stickerConfigurationProvider];
  v13 = [stickerConfigurationProvider stickerConfigurationsForAvatarRecord:avatarRecord];

  if ([v13 count] > index)
  {
    v14 = [v13 objectAtIndexedSubscript:index];
    v15 = self->_environment;
    name = [v14 name];
    avatarRecord2 = [controllerCopy avatarRecord];
    usageTrackingSession = [(AVTUIEnvironment *)v15 usageTrackingSession];
    [usageTrackingSession didSelectStickerFromStickersApp:name withAvatar:avatarRecord2];

    identifier = [itemCopy identifier];
    [(AVTStickerPagingController *)self setSelectedStickerIdentifier:identifier];

    stickerSelectionDelegate = [(AVTStickerPagingController *)self stickerSelectionDelegate];
    [stickerSelectionDelegate didSelectStickerWithConfiguration:v14 avatar:avatarRecord2];

    internalRecordStore = [(AVTAvatarRecordDataSource *)self->_dataSource internalRecordStore];
    identifier2 = [avatarRecord2 identifier];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __98__AVTStickerPagingController_stickerSheetController_didInteractWithStickerItem_atIndex_byPeeling___block_invoke;
    v24[3] = &unk_1E7F3B2E8;
    v25 = v15;
    v23 = v15;
    [internalRecordStore didUseStickerWithAvatarIdentifier:identifier2 stickerIdentifier:name completionHandler:v24];
  }
}

void __98__AVTStickerPagingController_stickerSheetController_didInteractWithStickerItem_atIndex_byPeeling___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)avatarActionsViewControllerDidFinish:(id)finish
{
  presenterDelegate = [(AVTStickerPagingController *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:1];
}

- (id)avatarActionsViewController:(id)controller recordUpdateForDeletingRecord:(id)record
{
  recordCopy = record;
  dataSource = [(AVTStickerPagingController *)self dataSource];
  v7 = [AVTAvatarActionsRecordUpdate recordUpdateForDeletingRecord:recordCopy withDataSource:dataSource];

  if (v7)
  {
    avatarRecord = [v7 avatarRecord];

    if (avatarRecord)
    {
      avatarRecord2 = [v7 avatarRecord];
      identifier = [avatarRecord2 identifier];
      [(AVTStickerPagingController *)self scrollToAvatarWithIdentifier:identifier animated:0];

      avatarPickerDelegate = [(AVTStickerPagingController *)self avatarPickerDelegate];
      avatarRecord3 = [v7 avatarRecord];
      [avatarPickerDelegate avatarPicker:self didSelectAvatarRecord:avatarRecord3];
    }
  }

  return v7;
}

- (void)notifyingContainerViewWillChangeSize:(CGSize)size
{
  [(AVTStickerPagingController *)self setIsResizing:1, size.width, size.height];
  view = [(AVTStickerPagingController *)self view];
  collectionView = [(AVTStickerPagingController *)self collectionView];
  [collectionView center];
  v7 = v6;
  v9 = v8;
  collectionView2 = [(AVTStickerPagingController *)self collectionView];
  [view convertPoint:collectionView2 toView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  focusedPageRecordIdentifier = [(AVTStickerPagingController *)self focusedPageRecordIdentifier];

  if (!focusedPageRecordIdentifier)
  {
    dataSource = [(AVTStickerPagingController *)self dataSource];
    collectionView3 = [(AVTStickerPagingController *)self collectionView];
    v18 = [collectionView3 indexPathForItemAtPoint:{v12, v14}];
    v19 = [dataSource recordAtIndex:{objc_msgSend(v18, "row")}];

    identifier = [v19 identifier];
    [(AVTStickerPagingController *)self setFocusedPageRecordIdentifier:identifier];
  }

  collectionView4 = [(AVTStickerPagingController *)self collectionView];
  collectionViewLayout = [collectionView4 collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)notifyingContainerViewDidChangeSize:(CGSize)size
{
  if (size.width > 0.0 && size.height > 0.0)
  {
    collectionView = [(AVTStickerPagingController *)self collectionView];
    [collectionView layoutIfNeeded];

    focusedPageRecordIdentifier = [(AVTStickerPagingController *)self focusedPageRecordIdentifier];
    [(AVTStickerPagingController *)self scrollToAvatarWithIdentifier:focusedPageRecordIdentifier animated:0];

    [(AVTStickerPagingController *)self setIsResizing:0];
    collectionView2 = [(AVTStickerPagingController *)self collectionView];
    [collectionView2 contentOffset];
    v8 = [(AVTStickerPagingController *)self centeredPageWithOffset:?];

    [(AVTStickerPagingController *)self pageContentOffset];
    [v8 scrollToContentOffset:1 animated:?];
  }
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  if ([(AVTStickerPagingController *)self isResizing])
  {
    focusedPageRecordIdentifier = [(AVTStickerPagingController *)self focusedPageRecordIdentifier];
    v9 = [(AVTStickerPagingController *)self pageIndexForAvatarRecordIdentifier:focusedPageRecordIdentifier];

    collectionViewLayout = [viewCopy collectionViewLayout];
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
    [(AVTStickerPagingController *)self collectionView:viewCopy layout:collectionViewLayout sizeForItemAtIndexPath:v11];
    v13 = v12;

    x = v13 * v9;
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)clearStickerSelection
{
  [(AVTStickerPagingController *)self setSelectedStickerIdentifier:0];
  collectionView = [(AVTStickerPagingController *)self collectionView];
  [collectionView contentOffset];
  v4 = [(AVTStickerPagingController *)self centeredPageWithOffset:?];

  if (objc_opt_respondsToSelector())
  {
    [v4 clearStickerSelection];
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

- (UIEdgeInsets)pageContentInsets
{
  top = self->_pageContentInsets.top;
  left = self->_pageContentInsets.left;
  bottom = self->_pageContentInsets.bottom;
  right = self->_pageContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)pageContentOffset
{
  x = self->_pageContentOffset.x;
  y = self->_pageContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (AVTStickerPagingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_disclosureValidationDelegate);

  return WeakRetained;
}

- (AVTStickerSelectionDelegate)stickerSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stickerSelectionDelegate);

  return WeakRetained;
}

- (AVTStickerSheetControllerProvider)stickerSheetControllerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_stickerSheetControllerProvider);

  return WeakRetained;
}

- (CGPoint)endDraggingTargetContentOffset
{
  x = self->_endDraggingTargetContentOffset.x;
  y = self->_endDraggingTargetContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end