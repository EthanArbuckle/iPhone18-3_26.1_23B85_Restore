@interface AVTStickerPagingController
+ (id)stickerCacheWithEnvironment:(id)a3;
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (AVTStickerPagingController)initWithRecordDataSource:(id)a3 recordImageProvider:(id)a4 stickerConfigurationProvider:(id)a5 taskScheduler:(id)a6 environment:(id)a7 allowsPeel:(BOOL)a8;
- (AVTStickerPagingControllerDelegate)delegate;
- (AVTStickerSelectionDelegate)stickerSelectionDelegate;
- (AVTStickerSheetControllerProvider)stickerSheetControllerProvider;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (CGPoint)endDraggingTargetContentOffset;
- (CGPoint)pageContentOffset;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)pageContentInsets;
- (UIView)view;
- (id)avatarActionsViewController:(id)a3 recordUpdateForDeletingRecord:(id)a4;
- (id)centeredPageWithOffset:(CGPoint)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)firstPageItemView;
- (id)reloadSheetControllerForRecord:(id)a3;
- (id)sheetControllerAtIndex:(int64_t)a3;
- (id)sheetControllerForRecord:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)pageIndexForAvatarRecordIdentifier:(id)a3;
- (void)avatarActionsViewControllerDidFinish:(id)a3;
- (void)cancelPrefetchingDataForRecord:(id)a3;
- (void)clearStickerSelection;
- (void)collectionView:(id)a3 cancelPrefetchingForItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)deletePageForRecord:(id)a3 atIndex:(int64_t)a4;
- (void)didEndDisplaying;
- (void)insertPageForRecord:(id)a3 atIndex:(int64_t)a4;
- (void)loadView;
- (void)notifyingContainerViewDidChangeSize:(CGSize)a3;
- (void)notifyingContainerViewWillChangeSize:(CGSize)a3;
- (void)prefetchDataForRecord:(id)a3;
- (void)reloadData;
- (void)reloadPageForRecord:(id)a3 atIndex:(int64_t)a4;
- (void)scrollToAvatarWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)scrollToPageAtIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setPageContentInsets:(UIEdgeInsets)a3;
- (void)setPageContentOffset:(CGPoint)a3;
- (void)stickerSheetController:(id)a3 didFinishRenderingStickersForRecord:(id)a4;
- (void)stickerSheetController:(id)a3 didInteractWithStickerItem:(id)a4 atIndex:(int64_t)a5 byPeeling:(BOOL)a6;
- (void)stickerSheetController:(id)a3 didScrollToContentOffset:(CGPoint)a4;
- (void)stickerSheetController:(id)a3 scrollView:(id)a4 willEndDraggingWithTargetContentOffset:(CGPoint *)a5;
- (void)updateForEndingScrollWithTargetContentOffset:(CGPoint)a3;
- (void)willEndDisplaying;
- (void)willStartDisplaying;
- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTStickerPagingController

+ (id)stickerCacheWithEnvironment:(id)a3
{
  v3 = a3;
  if (AVTUIStickersCaching())
  {
    if (AVTUIFlushStickersCache())
    {
      v4 = [v3 stickerImageStoreLocation];
      v5 = [v3 logger];
      [AVTImageStore clearContentAtLocation:v4 logger:v5];

      AVTUISetFlushStickersCache();
    }

    v6 = [AVTInMemoryResourceCache alloc];
    v7 = [v3 lockProvider];
    v8 = [v3 logger];
    v9 = [(AVTInMemoryResourceCache *)v6 initWithLockProvider:v7 totalCostLimit:980000 logger:v8];
  }

  else
  {
    v10 = [v3 stickerImageStoreLocation];
    v11 = [v3 logger];
    [AVTImageStore clearContentAtLocation:v10 logger:v11];

    AVTUISetFlushStickersCache();
    v9 = objc_alloc_init(AVTPassThroughResourceCache);
  }

  return v9;
}

- (AVTStickerPagingController)initWithRecordDataSource:(id)a3 recordImageProvider:(id)a4 stickerConfigurationProvider:(id)a5 taskScheduler:(id)a6 environment:(id)a7 allowsPeel:(BOOL)a8
{
  v34 = a3;
  v33 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v35.receiver = self;
  v35.super_class = AVTStickerPagingController;
  v18 = [(AVTStickerPagingController *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataSource, a3);
    objc_storeStrong(&v19->_environment, a7);
    v19->_allowsPeel = a8;
    v20 = [AVTUIStickerGeneratorPool alloc];
    v21 = [v17 logger];
    v22 = [(AVTUIStickerGeneratorPool *)v20 initWithMaxStickerGeneratorCount:2 logger:v21];
    stickerGeneratorPool = v19->_stickerGeneratorPool;
    v19->_stickerGeneratorPool = v22;

    objc_storeStrong(&v19->_taskScheduler, a6);
    v24 = [v17 backgroundRenderingQueue];
    renderingQueue = v19->_renderingQueue;
    v19->_renderingQueue = v24;

    v26 = [v17 backgroundEncodingQueue];
    encodingQueue = v19->_encodingQueue;
    v19->_encodingQueue = v26;

    v28 = [MEMORY[0x1E695DF90] dictionary];
    pageForRecords = v19->_pageForRecords;
    v19->_pageForRecords = v28;

    v30 = [objc_opt_class() stickerCacheWithEnvironment:v17];
    cache = v19->_cache;
    v19->_cache = v30;

    objc_storeStrong(&v19->_imageProvider, a4);
    objc_storeStrong(&v19->_stickerConfigurationProvider, a5);
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
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v8];

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

- (void)setPageContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_pageContentInsets.top), vceqq_f64(v4, *&self->_pageContentInsets.bottom)))) & 1) == 0)
  {
    self->_pageContentInsets = a3;
    bottom = a3.bottom;
    right = a3.right;
    top = a3.top;
    left = a3.left;
    v6 = [(AVTStickerPagingController *)self collectionView];
    [v6 contentOffset];
    v13 = [(AVTStickerPagingController *)self centeredPageWithOffset:?];

    v7 = [(AVTStickerPagingController *)self collectionView];
    v8 = [v7 collectionViewLayout];
    [v8 invalidateLayout];

    [v13 setSectionInsets:{top, left, bottom, right}];
  }
}

- (void)prefetchDataForRecord:(id)a3
{
  v3 = [(AVTStickerPagingController *)self sheetControllerForRecord:a3];
  [v3 startAllSchedulerTasks];
}

- (void)cancelPrefetchingDataForRecord:(id)a3
{
  v4 = a3;
  v6 = [(AVTStickerPagingController *)self taskScheduler];
  v5 = [v4 identifier];

  [v6 cancelStickerSheetTasksForAvatarRecordIdentifier:v5];
}

- (void)reloadData
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [(AVTStickerPagingController *)self setPageForRecords:v3];

  v4 = [(AVTStickerPagingController *)self collectionView];
  [v4 reloadData];
}

- (id)sheetControllerForRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerPagingController *)self pageForRecords];
  v6 = [v4 identifier];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(AVTStickerPagingController *)self stickerConfigurationProvider];
    v10 = [v9 stickerConfigurationsForAvatarRecord:v4];

    v11 = [(AVTStickerPagingController *)self cache];
    v12 = [(AVTStickerPagingController *)self renderingQueue];
    v13 = [(AVTStickerPagingController *)self encodingQueue];
    v14 = [(AVTStickerPagingController *)self stickerGeneratorPool];
    v15 = [(AVTStickerPagingController *)self imageProvider];
    v16 = [(AVTStickerPagingController *)self environment];
    v17 = [AVTStickerSheetModel sheetModelForAvatarRecord:v4 withConfigurations:v10 cache:v11 taskScheduler:0 renderingQueue:v12 encodingQueue:v13 stickerGeneratorPool:v14 imageProvider:v15 environment:v16];

    v18 = [(AVTStickerPagingController *)self stickerSheetControllerProvider];

    if (v18)
    {
      v19 = [(AVTStickerPagingController *)self stickerSheetControllerProvider];
      v20 = [(AVTStickerPagingController *)self taskScheduler];
      v21 = [v19 stickerSheetControllerForSelectedAvatar:v4 stickerSheetModel:v17 taskScheduler:v20];
    }

    else
    {
      v22 = [AVTStickerSheetController alloc];
      v19 = [(AVTStickerPagingController *)self taskScheduler];
      v21 = [(AVTStickerSheetController *)v22 initWithStickerSheetModel:v17 taskScheduler:v19 allowsPeel:[(AVTStickerPagingController *)self allowsPeel]];
    }

    [(AVTStickerSheetController *)v21 setDelegate:self];
    v23 = [(AVTStickerPagingController *)self disclosureValidationDelegate];
    [(AVTStickerSheetController *)v21 setDisclosureValidationDelegate:v23];

    v24 = [(AVTStickerPagingController *)self pageForRecords];
    v25 = [v4 identifier];
    [v24 setObject:v21 forKey:v25];

    v8 = v21;
  }

  return v8;
}

- (id)reloadSheetControllerForRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerPagingController *)self pageForRecords];
  v6 = [v4 identifier];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [(AVTStickerPagingController *)self pageForRecords];
    v9 = [v4 identifier];
    [v8 removeObjectForKey:v9];

    [v7 sheetDidDisappear];
  }

  v10 = [(AVTStickerPagingController *)self stickerGeneratorPool];
  [v10 flushGeneratorForRecord:v4];

  v11 = [(AVTStickerPagingController *)self sheetControllerForRecord:v4];

  return v11;
}

- (id)sheetControllerAtIndex:(int64_t)a3
{
  v5 = [(AVTStickerPagingController *)self dataSource];
  v6 = [v5 recordAtIndex:a3];

  v7 = [(AVTStickerPagingController *)self sheetControllerForRecord:v6];

  return v7;
}

- (void)insertPageForRecord:(id)a3 atIndex:(int64_t)a4
{
  v6 = [(AVTStickerPagingController *)self reloadSheetControllerForRecord:a3, a4];
  [v6 setDelegate:self];
  v5 = [(AVTStickerPagingController *)self collectionView];
  [v5 reloadData];
}

- (void)deletePageForRecord:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(AVTStickerPagingController *)self pageForRecords];
  v8 = [v6 identifier];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForItem:a4 inSection:0];
    v11 = [(AVTStickerPagingController *)self collectionView];
    v12 = [v11 cellForItemAtIndexPath:v10];
    [(AVTStickerPagingController *)self setLastDeletedCell:v12];

    v13 = [(AVTStickerPagingController *)self stickerGeneratorPool];
    [v13 flushGeneratorForRecord:v6];

    v14 = [(AVTStickerPagingController *)self pageForRecords];
    v15 = [v6 identifier];
    [v14 removeObjectForKey:v15];

    v16 = [(AVTStickerPagingController *)self collectionView];
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
    [v16 performBatchUpdates:v20 completion:v18];
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

- (void)reloadPageForRecord:(id)a3 atIndex:(int64_t)a4
{
  v5 = [(AVTStickerPagingController *)self reloadSheetControllerForRecord:a3, a4];
  v6 = [(AVTStickerPagingController *)self collectionView];
  [v6 reloadData];
}

- (void)setPageContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != self->_pageContentOffset.x || a3.y != self->_pageContentOffset.y)
  {
    self->_pageContentOffset = a3;
  }

  v7 = [(AVTStickerPagingController *)self collectionView];
  [v7 contentOffset];
  v8 = [(AVTStickerPagingController *)self centeredPageWithOffset:?];

  [v8 scrollToContentOffset:0 animated:{x, y}];
}

- (id)centeredPageWithOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AVTStickerPagingController *)self collectionView];
  v7 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:v6 collectionView:x, y];

  v8 = -[AVTStickerPagingController sheetControllerAtIndex:](self, "sheetControllerAtIndex:", [v7 item]);

  return v8;
}

- (void)scrollToAvatarWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(AVTStickerPagingController *)self pageIndexForAvatarRecordIdentifier:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(AVTStickerPagingController *)self scrollToPageAtIndex:v6 animated:v4];
  }
}

- (void)scrollToPageAtIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(AVTStickerPagingController *)self dataSource];
  v8 = [v7 numberOfRecords];

  if (v8 > a3)
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    v9 = [(AVTStickerPagingController *)self dataSource];
    v10 = [v9 recordAtIndex:a3];
    v11 = [v10 identifier];
    [(AVTStickerPagingController *)self setFocusedPageRecordIdentifier:v11];

    if (v13)
    {
      v12 = [(AVTStickerPagingController *)self collectionView];
      [v12 scrollToItemAtIndexPath:v13 atScrollPosition:16 animated:v4];
    }
  }
}

- (void)updateForEndingScrollWithTargetContentOffset:(CGPoint)a3
{
  v8 = [(AVTStickerPagingController *)self centeredPageWithOffset:a3.x, a3.y];
  v4 = [v8 avatarRecord];
  v5 = [v4 identifier];
  [(AVTStickerPagingController *)self setFocusedPageRecordIdentifier:v5];

  v6 = [(AVTStickerPagingController *)self avatarPickerDelegate];
  v7 = [v8 avatarRecord];
  [v6 avatarPicker:self didSelectAvatarRecord:v7];
}

- (int64_t)pageIndexForAvatarRecordIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerPagingController *)self dataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AVTStickerPagingController_pageIndexForAvatarRecordIdentifier___block_invoke;
  v9[3] = &unk_1E7F3B3B0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfRecordPassingTest:v9];

  return v7;
}

uint64_t __65__AVTStickerPagingController_pageIndexForAvatarRecordIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4
{
  v6 = [AVTUIControllerPresentation presentationWithWrappingForController:a3, a4];
  v5 = [(AVTStickerPagingController *)self presenterDelegate];
  [v5 presentAvatarUIController:v6 animated:1];
}

- (void)willStartDisplaying
{
  v2 = [(AVTStickerPagingController *)self collectionView];
  [v2 reloadData];
}

- (void)willEndDisplaying
{
  v3 = [(AVTStickerPagingController *)self taskScheduler];
  [v3 cancelAllTasks];

  v4 = [(AVTStickerPagingController *)self stickerGeneratorPool];
  [v4 flush];
}

- (void)didEndDisplaying
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(AVTStickerPagingController *)self pageForRecords];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(AVTStickerPagingController *)self pageForRecords];
        v10 = [v9 objectForKey:v8];

        [v10 sheetDidDisappear];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)firstPageItemView
{
  v3 = [(AVTStickerPagingController *)self collectionView];
  [v3 contentOffset];
  v4 = [(AVTStickerPagingController *)self centeredPageWithOffset:?];

  v5 = [v4 firstStickerView];

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTStickerPagingController *)self dataSource:a3];
  v5 = [v4 numberOfRecords];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AVTStickerPagingCollectionViewCell cellIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [v6 item];
  v11 = [(AVTStickerPagingController *)self sheetControllerAtIndex:v10];
  [(AVTStickerPagingController *)self pageContentInsets];
  [v11 setSectionInsets:?];
  v12 = [v11 view];
  [v9 setPageContentView:v12];

  return v9;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = -[AVTStickerPagingController sheetControllerAtIndex:](self, "sheetControllerAtIndex:", [a5 item]);
  [v7 sheetWillAppear];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(AVTStickerPagingController *)self selectedStickerIdentifier];
    [v7 selectStickerWithIdentifier:v6];
  }

  [(AVTStickerPagingController *)self pageContentOffset];
  [v7 scrollToContentOffset:0 animated:?];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v13 = a5;
  v7 = a4;
  v8 = [(AVTStickerPagingController *)self lastDeletedCell];

  if (v8 == v7)
  {
    [(AVTStickerPagingController *)self setLastDeletedCell:0];
  }

  else
  {
    v9 = [(AVTStickerPagingController *)self collectionView];
    v10 = [v9 indexPathsForVisibleItems];
    v11 = [v10 containsObject:v13];

    if ((v11 & 1) == 0)
    {
      v12 = -[AVTStickerPagingController sheetControllerAtIndex:](self, "sheetControllerAtIndex:", [v13 item]);
      [v12 sheetDidDisappear];
    }
  }
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(AVTStickerPagingController *)self dataSource];
        v12 = [v11 recordAtIndex:{objc_msgSend(v10, "item")}];

        [(AVTStickerPagingController *)self prefetchDataForRecord:v12];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)a3 cancelPrefetchingForItemsAtIndexPaths:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(AVTStickerPagingController *)self dataSource];
        v12 = [v11 recordAtIndex:{objc_msgSend(v10, "item")}];

        [(AVTStickerPagingController *)self cancelPrefetchingDataForRecord:v12];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  [(AVTStickerPagingController *)self setEndDraggingTargetContentOffset:a3, a5->x, a5->y];
  x = a5->x;
  y = a5->y;

  [(AVTStickerPagingController *)self updateForEndingScrollWithTargetContentOffset:x, y];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v7 = a3;
  if (([v7 avtui_isMoving] & 1) != 0 || (-[AVTStickerPagingController endDraggingTargetContentOffset](self, "endDraggingTargetContentOffset"), v5 = v4, objc_msgSend(v7, "contentOffset"), v5 == v6))
  {
    [v7 contentOffset];
    [(AVTStickerPagingController *)self setEndDraggingTargetContentOffset:?];
  }

  else
  {
    [v7 contentOffset];
    [(AVTStickerPagingController *)self updateForEndingScrollWithTargetContentOffset:?];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v7 = a3;
  if (([v7 avtui_isMoving] & 1) != 0 || (-[AVTStickerPagingController endDraggingTargetContentOffset](self, "endDraggingTargetContentOffset"), v5 = v4, objc_msgSend(v7, "contentOffset"), v5 == v6))
  {
    [v7 contentOffset];
    [(AVTStickerPagingController *)self setEndDraggingTargetContentOffset:?];
  }

  else
  {
    [v7 contentOffset];
    [(AVTStickerPagingController *)self updateForEndingScrollWithTargetContentOffset:?];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = a3;
  [v5 bounds];
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
      [v5 bounds];
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

- (void)stickerSheetController:(id)a3 didScrollToContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  self->_pageContentOffset = a4;
  v7 = [(AVTStickerPagingController *)self delegate];

  if (v7)
  {
    v8 = [(AVTStickerPagingController *)self delegate];
    [v8 stickerPagingController:self pageDidScrollToOffset:{x, y}];
  }
}

- (void)stickerSheetController:(id)a3 scrollView:(id)a4 willEndDraggingWithTargetContentOffset:(CGPoint *)a5
{
  v7 = a4;
  [(AVTStickerPagingController *)self pageContentInsets];
  v9 = v8;
  [v7 contentOffset];
  v11 = v10;

  if (v11 < v9)
  {
    y = a5->y;
    if (y < v9)
    {
      v13 = y < v9 * 0.25;
      v14 = 0.0;
      if (!v13)
      {
        v14 = v9;
      }

      a5->y = v14;
    }
  }
}

- (void)stickerSheetController:(id)a3 didFinishRenderingStickersForRecord:(id)a4
{
  v5 = a4;
  v6 = [(AVTStickerPagingController *)self stickerGeneratorPool];
  [v6 flushGeneratorForRecord:v5];
}

- (void)stickerSheetController:(id)a3 didInteractWithStickerItem:(id)a4 atIndex:(int64_t)a5 byPeeling:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 avatarRecord];
  v12 = [(AVTStickerPagingController *)self stickerConfigurationProvider];
  v13 = [v12 stickerConfigurationsForAvatarRecord:v11];

  if ([v13 count] > a5)
  {
    v14 = [v13 objectAtIndexedSubscript:a5];
    v15 = self->_environment;
    v16 = [v14 name];
    v17 = [v9 avatarRecord];
    v18 = [(AVTUIEnvironment *)v15 usageTrackingSession];
    [v18 didSelectStickerFromStickersApp:v16 withAvatar:v17];

    v19 = [v10 identifier];
    [(AVTStickerPagingController *)self setSelectedStickerIdentifier:v19];

    v20 = [(AVTStickerPagingController *)self stickerSelectionDelegate];
    [v20 didSelectStickerWithConfiguration:v14 avatar:v17];

    v21 = [(AVTAvatarRecordDataSource *)self->_dataSource internalRecordStore];
    v22 = [v17 identifier];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __98__AVTStickerPagingController_stickerSheetController_didInteractWithStickerItem_atIndex_byPeeling___block_invoke;
    v24[3] = &unk_1E7F3B2E8;
    v25 = v15;
    v23 = v15;
    [v21 didUseStickerWithAvatarIdentifier:v22 stickerIdentifier:v16 completionHandler:v24];
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

- (void)avatarActionsViewControllerDidFinish:(id)a3
{
  v3 = [(AVTStickerPagingController *)self presenterDelegate];
  [v3 dismissAvatarUIControllerAnimated:1];
}

- (id)avatarActionsViewController:(id)a3 recordUpdateForDeletingRecord:(id)a4
{
  v5 = a4;
  v6 = [(AVTStickerPagingController *)self dataSource];
  v7 = [AVTAvatarActionsRecordUpdate recordUpdateForDeletingRecord:v5 withDataSource:v6];

  if (v7)
  {
    v8 = [v7 avatarRecord];

    if (v8)
    {
      v9 = [v7 avatarRecord];
      v10 = [v9 identifier];
      [(AVTStickerPagingController *)self scrollToAvatarWithIdentifier:v10 animated:0];

      v11 = [(AVTStickerPagingController *)self avatarPickerDelegate];
      v12 = [v7 avatarRecord];
      [v11 avatarPicker:self didSelectAvatarRecord:v12];
    }
  }

  return v7;
}

- (void)notifyingContainerViewWillChangeSize:(CGSize)a3
{
  [(AVTStickerPagingController *)self setIsResizing:1, a3.width, a3.height];
  v4 = [(AVTStickerPagingController *)self view];
  v5 = [(AVTStickerPagingController *)self collectionView];
  [v5 center];
  v7 = v6;
  v9 = v8;
  v10 = [(AVTStickerPagingController *)self collectionView];
  [v4 convertPoint:v10 toView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  v15 = [(AVTStickerPagingController *)self focusedPageRecordIdentifier];

  if (!v15)
  {
    v16 = [(AVTStickerPagingController *)self dataSource];
    v17 = [(AVTStickerPagingController *)self collectionView];
    v18 = [v17 indexPathForItemAtPoint:{v12, v14}];
    v19 = [v16 recordAtIndex:{objc_msgSend(v18, "row")}];

    v20 = [v19 identifier];
    [(AVTStickerPagingController *)self setFocusedPageRecordIdentifier:v20];
  }

  v22 = [(AVTStickerPagingController *)self collectionView];
  v21 = [v22 collectionViewLayout];
  [v21 invalidateLayout];
}

- (void)notifyingContainerViewDidChangeSize:(CGSize)a3
{
  if (a3.width > 0.0 && a3.height > 0.0)
  {
    v5 = [(AVTStickerPagingController *)self collectionView];
    [v5 layoutIfNeeded];

    v6 = [(AVTStickerPagingController *)self focusedPageRecordIdentifier];
    [(AVTStickerPagingController *)self scrollToAvatarWithIdentifier:v6 animated:0];

    [(AVTStickerPagingController *)self setIsResizing:0];
    v7 = [(AVTStickerPagingController *)self collectionView];
    [v7 contentOffset];
    v8 = [(AVTStickerPagingController *)self centeredPageWithOffset:?];

    [(AVTStickerPagingController *)self pageContentOffset];
    [v8 scrollToContentOffset:1 animated:?];
  }
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if ([(AVTStickerPagingController *)self isResizing])
  {
    v8 = [(AVTStickerPagingController *)self focusedPageRecordIdentifier];
    v9 = [(AVTStickerPagingController *)self pageIndexForAvatarRecordIdentifier:v8];

    v10 = [v7 collectionViewLayout];
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
    [(AVTStickerPagingController *)self collectionView:v7 layout:v10 sizeForItemAtIndexPath:v11];
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
  v3 = [(AVTStickerPagingController *)self collectionView];
  [v3 contentOffset];
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