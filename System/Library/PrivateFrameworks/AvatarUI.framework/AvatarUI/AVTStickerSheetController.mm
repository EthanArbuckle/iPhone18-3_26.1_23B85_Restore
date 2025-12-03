@interface AVTStickerSheetController
- (AVTAvatarRecord)avatarRecord;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (AVTStickerSheetController)initWithStickerSheetModel:(id)model taskScheduler:(id)scheduler allowsPeel:(BOOL)peel;
- (AVTStickerSheetControllerDelegate)delegate;
- (BOOL)areAllStickersRendered;
- (CGPoint)maxedContentOffset:(CGPoint)offset;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)minimumContentSizeForSize:(CGSize)size;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)sectionInsets;
- (UIView)view;
- (double)numberOfItemsPerRow;
- (double)topPadding;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)dragPreviewContainerForLiftingStickerInStickerCell:(id)cell;
- (id)firstStickerView;
- (id)placeholderProvider;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)clearStickerRendererIfNeeded;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)discardStickerItems;
- (void)loadView;
- (void)notifyingContainerViewWillChangeSize:(CGSize)size;
- (void)reloadCollectionViewItemForStickerItem:(id)item;
- (void)scheduleSheetPlaceholderTask:(id)task;
- (void)scheduleSheetStickerTask:(id)task withIndexPath:(id)path;
- (void)scrollToContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setSectionInsets:(UIEdgeInsets)insets;
- (void)sheetDidDisappear;
- (void)sheetWillAppear;
- (void)startAllSchedulerTasksExcludingVisibleIndexPaths:(id)paths;
- (void)stickerCellDidPeelSticker:(id)sticker;
- (void)stickerCellDidTapSticker:(id)sticker;
- (void)updateItem:(id)item withStickerResource:(id)resource reloadCell:(BOOL)cell;
@end

@implementation AVTStickerSheetController

- (AVTStickerSheetController)initWithStickerSheetModel:(id)model taskScheduler:(id)scheduler allowsPeel:(BOOL)peel
{
  modelCopy = model;
  schedulerCopy = scheduler;
  v16.receiver = self;
  v16.super_class = AVTStickerSheetController;
  v11 = [(AVTStickerSheetController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_allowsPeel = peel;
    objc_storeStrong(&v11->_model, model);
    objc_storeStrong(&v12->_taskScheduler, scheduler);
    v13 = AVTUIShowPrereleaseStickerPack_once();
    if (v13)
    {
      LOBYTE(v13) = AVTUIShowPrereleaseStickerLabel_once();
    }

    v12->_showPrereleaseSticker = v13;
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v12->_sectionInsets.top = *MEMORY[0x1E69DDCE0];
    *&v12->_sectionInsets.bottom = v14;
  }

  return v12;
}

- (void)dealloc
{
  model = [(AVTStickerSheetController *)self model];
  stickerRenderer = [model stickerRenderer];
  [stickerRenderer stopUsingResources];

  collectionView = [(AVTStickerSheetController *)self collectionView];
  [collectionView removeFromSuperview];

  v6.receiver = self;
  v6.super_class = AVTStickerSheetController;
  [(AVTStickerSheetController *)&v6 dealloc];
}

- (UIView)view
{
  view = self->_view;
  if (!view)
  {
    [(AVTStickerSheetController *)self loadView];
    view = self->_view;
  }

  return view;
}

- (double)topPadding
{
  model = [(AVTStickerSheetController *)self model];
  environment = [model environment];
  if ([environment deviceIsPad])
  {

    return 8.0;
  }

  else
  {
    model2 = [(AVTStickerSheetController *)self model];
    environment2 = [model2 environment];
    deviceIsMac = [environment2 deviceIsMac];

    result = 8.0;
    if ((deviceIsMac & 1) == 0)
    {
      model3 = [(AVTStickerSheetController *)self model];
      environment3 = [model3 environment];
      deviceIsVision = [environment3 deviceIsVision];

      result = 12.0;
      if (deviceIsVision)
      {
        return 16.0;
      }
    }
  }

  return result;
}

- (CGSize)minimumContentSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(AVTStickerSheetController *)self sectionInsets];
  v7 = v6;
  [(AVTStickerSheetController *)self sectionInsets];
  v9 = height + v7 + v8;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (CGPoint)maxedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  collectionView = [(AVTStickerSheetController *)self collectionView];
  [collectionView contentSize];
  v8 = v7;
  collectionView2 = [(AVTStickerSheetController *)self collectionView];
  [collectionView2 bounds];
  v11 = v8 - v10;
  collectionView3 = [(AVTStickerSheetController *)self collectionView];
  [collectionView3 adjustedContentInset];
  v14 = v11 + v13;

  if (y <= v14)
  {
    v15 = y;
  }

  else
  {
    v15 = v14;
  }

  v16 = x;
  result.y = v15;
  result.x = v16;
  return result;
}

- (void)loadView
{
  v17 = objc_alloc_init(AVTMinimumContentSizeCollectionViewLayout);
  model = [(AVTStickerSheetController *)self model];
  environment = [model environment];
  deviceIsMac = [environment deviceIsMac];

  v6 = 10.0;
  if ((deviceIsMac & 1) == 0)
  {
    model2 = [(AVTStickerSheetController *)self model];
    environment2 = [model2 environment];
    deviceIsVision = [environment2 deviceIsVision];

    v6 = 16.0;
    if (deviceIsVision)
    {
      v6 = 10.0;
    }
  }

  [(UICollectionViewFlowLayout *)v17 setMinimumInteritemSpacing:v6];
  [(UICollectionViewFlowLayout *)v17 minimumInteritemSpacing];
  [(UICollectionViewFlowLayout *)v17 setMinimumLineSpacing:?];
  [(UICollectionViewFlowLayout *)v17 setSectionInset:self->_sectionInsets.top, self->_sectionInsets.left, self->_sectionInsets.bottom, self->_sectionInsets.right];
  v10 = [AVTStickerSheetCollectionView alloc];
  v11 = [(AVTStickerSheetCollectionView *)v10 initWithFrame:v17 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(AVTStickerSheetCollectionView *)v11 setBackgroundColor:clearColor];

  [(AVTStickerSheetCollectionView *)v11 setDataSource:self];
  [(AVTStickerSheetCollectionView *)v11 setDelegate:self];
  [(AVTStickerSheetCollectionView *)v11 setShowsVerticalScrollIndicator:0];
  [(AVTStickerSheetCollectionView *)v11 setContentInsetAdjustmentBehavior:2];
  v13 = objc_opt_class();
  v14 = +[AVTStickerCollectionViewCell cellIdentifier];
  [(AVTStickerSheetCollectionView *)v11 registerClass:v13 forCellWithReuseIdentifier:v14];

  [(AVTStickerSheetCollectionView *)v11 setAutoresizingMask:18];
  [(AVTStickerSheetController *)self setCollectionView:v11];
  v15 = [AVTNotifyingContainerView alloc];
  [(AVTStickerSheetCollectionView *)v11 frame];
  v16 = [(AVTNotifyingContainerView *)v15 initWithFrame:?];
  [(AVTNotifyingContainerView *)v16 setDelegate:self];
  [(AVTNotifyingContainerView *)v16 addSubview:v11];
  [(AVTStickerSheetController *)self setView:v16];
}

- (void)setSectionInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_sectionInsets.top), vceqq_f64(v4, *&self->_sectionInsets.bottom)))) & 1) == 0)
  {
    self->_sectionInsets = insets;
    collectionView = [(AVTStickerSheetController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (AVTAvatarRecord)avatarRecord
{
  model = [(AVTStickerSheetController *)self model];
  avatarRecord = [model avatarRecord];

  return avatarRecord;
}

- (void)sheetDidDisappear
{
  v22 = *MEMORY[0x1E69E9840];
  [(AVTStickerSheetController *)self setIsPageVisible:0];
  model = [(AVTStickerSheetController *)self model];
  avatarRecord = [model avatarRecord];
  identifier = [avatarRecord identifier];

  taskScheduler = [(AVTStickerSheetController *)self taskScheduler];
  [taskScheduler cancelStickerSheetTasksForAvatarRecordIdentifier:identifier];

  [(AVTStickerSheetController *)self discardStickerItems];
  collectionView = [(AVTStickerSheetController *)self collectionView];

  if (collectionView)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    collectionView2 = [(AVTStickerSheetController *)self collectionView];
    visibleCells = [collectionView2 visibleCells];

    v10 = [visibleCells countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v17 + 1) + 8 * v13++) purgeImageContents];
        }

        while (v11 != v13);
        v11 = [visibleCells countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    collectionView3 = [(AVTStickerSheetController *)self collectionView];
    [collectionView3 _purgeReuseQueues];
  }

  model2 = [(AVTStickerSheetController *)self model];
  stickerRenderer = [model2 stickerRenderer];
  [stickerRenderer stopUsingResources];
}

- (void)sheetWillAppear
{
  if (![(AVTStickerSheetController *)self isPageVisible])
  {
    if (!self->_view)
    {
      [(AVTStickerSheetController *)self loadView];
    }

    [(AVTStickerSheetController *)self setIsPageVisible:1];
    collectionView = [(AVTStickerSheetController *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

    if ([indexPathsForVisibleItems count])
    {
      taskScheduler = [(AVTStickerSheetController *)self taskScheduler];
      [taskScheduler setVisibleIndexPaths:indexPathsForVisibleItems];

      v6 = MEMORY[0x1E69DD250];
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __44__AVTStickerSheetController_sheetWillAppear__block_invoke;
      v11 = &unk_1E7F3AD60;
      selfCopy = self;
      v7 = indexPathsForVisibleItems;
      v13 = v7;
      [v6 performWithoutAnimation:&v8];
      [(AVTStickerSheetController *)self startAllSchedulerTasksExcludingVisibleIndexPaths:v7, v8, v9, v10, v11, selfCopy];
    }
  }
}

void __44__AVTStickerSheetController_sheetWillAppear__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadItemsAtIndexPaths:*(a1 + 40)];
}

- (void)startAllSchedulerTasksExcludingVisibleIndexPaths:(id)paths
{
  pathsCopy = paths;
  if (![(AVTStickerSheetController *)self areAllStickersRendered])
  {
    model = [(AVTStickerSheetController *)self model];
    stickerItems = [model stickerItems];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__AVTStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke;
    v7[3] = &unk_1E7F3AE70;
    v8 = pathsCopy;
    selfCopy = self;
    [stickerItems enumerateObjectsUsingBlock:v7];
  }
}

void __78__AVTStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  if (([*(a1 + 32) containsObject:v6] & 1) == 0 && (objc_msgSend(v5, "hasBeenRendered") & 1) == 0)
  {
    objc_initWeak(&location, *(a1 + 40));
    objc_initWeak(&from, v5);
    v7 = [v5 resourceProvider];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __78__AVTStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke_2;
    v12 = &unk_1E7F3AE48;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    v8 = (v7)[2](v7, &v9, 0);

    [*(a1 + 40) scheduleSheetStickerTask:v8 withIndexPath:{v6, v9, v10, v11, v12}];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __78__AVTStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateItem:v4 withStickerResource:v3 reloadCell:1];
}

- (void)scheduleSheetPlaceholderTask:(id)task
{
  if (task)
  {
    taskCopy = task;
    model = [(AVTStickerSheetController *)self model];
    avatarRecord = [model avatarRecord];
    identifier = [avatarRecord identifier];
    v9 = [AVTStickerTask stickerTaskForSchedulerTask:taskCopy avatarRecordIdentifier:identifier indexPath:0 stickerType:1];

    taskScheduler = [(AVTStickerSheetController *)self taskScheduler];
    [taskScheduler scheduleStickerTask:v9];
  }
}

- (void)scheduleSheetStickerTask:(id)task withIndexPath:(id)path
{
  if (task)
  {
    pathCopy = path;
    taskCopy = task;
    model = [(AVTStickerSheetController *)self model];
    avatarRecord = [model avatarRecord];
    identifier = [avatarRecord identifier];
    v12 = [AVTStickerTask stickerTaskForSchedulerTask:taskCopy avatarRecordIdentifier:identifier indexPath:pathCopy stickerType:2];

    taskScheduler = [(AVTStickerSheetController *)self taskScheduler];
    [taskScheduler scheduleStickerTask:v12];
  }
}

- (id)firstStickerView
{
  collectionView = [(AVTStickerSheetController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(AVTStickerSheetController *)self collectionView];
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v6 = [collectionView2 cellForItemAtIndexPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)discardStickerItems
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  model = [(AVTStickerSheetController *)self model];
  stickerItems = [model stickerItems];

  v4 = [stickerItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(stickerItems);
        }

        [*(*(&v8 + 1) + 8 * v7++) discardContent];
      }

      while (v5 != v7);
      v5 = [stickerItems countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)areAllStickersRendered
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_areAllStickersRendered)
  {
    return 1;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  model = [(AVTStickerSheetController *)self model];
  stickerItems = [model stickerItems];

  v6 = [stickerItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(stickerItems);
        }

        if (![*(*(&v11 + 1) + 8 * i) hasBeenRendered])
        {
          v2 = 0;
          goto LABEL_13;
        }
      }

      v7 = [stickerItems countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v2 = 1;
LABEL_13:

  self->_areAllStickersRendered = v2;
  return v2;
}

- (void)clearStickerRendererIfNeeded
{
  if ([(AVTStickerSheetController *)self areAllStickersRendered])
  {
    delegate = [(AVTStickerSheetController *)self delegate];
    avatarRecord = [(AVTStickerSheetController *)self avatarRecord];
    [delegate stickerSheetController:self didFinishRenderingStickersForRecord:avatarRecord];
  }
}

- (double)numberOfItemsPerRow
{
  view = [(AVTStickerSheetController *)self view];
  [view bounds];
  v4 = v3;

  result = 3.0;
  if (v4 > 600.0)
  {
    return 6.0;
  }

  return result;
}

- (void)updateItem:(id)item withStickerResource:(id)resource reloadCell:(BOOL)cell
{
  cellCopy = cell;
  itemCopy = item;
  resourceCopy = resource;
  image = [resourceCopy image];
  hasBeenRendered = [itemCopy hasBeenRendered];
  if (image)
  {
    v12 = 1;
  }

  else
  {
    v12 = hasBeenRendered;
  }

  [itemCopy setHasBeenRendered:v12];

  [(AVTStickerSheetController *)self clearStickerRendererIfNeeded];
  [resourceCopy clippingRect];
  [itemCopy setClippingRect:?];
  if ([(AVTStickerSheetController *)self isPageVisible])
  {
    collectionView = [(AVTStickerSheetController *)self collectionView];

    if (collectionView)
    {
      cachedMSSticker = [itemCopy cachedMSSticker];
      if (cachedMSSticker)
      {
      }

      else
      {
        v15 = [resourceCopy URL];

        if (v15)
        {
          delegate = [(AVTStickerSheetController *)self delegate];
          v17 = objc_opt_respondsToSelector();

          if ((v17 & 1) == 0 || (-[AVTStickerSheetController delegate](self, "delegate"), v18 = objc_claimAutoreleasedReturnValue(), [resourceCopy URL], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(itemCopy, "localizedName"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(itemCopy, "identifier"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "stickerSheetController:requestsStickerForFileURL:localizedDescription:forItemWithIdentifier:", self, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), v21, v20, v19, v18, !v22))
          {
            v23 = objc_alloc(MEMORY[0x1E6973F40]);
            v24 = [resourceCopy URL];
            localizedName = [itemCopy localizedName];
            v26 = 0;
            v22 = [v23 initWithContentsOfFileURL:v24 localizedDescription:localizedName error:&v26];
          }

          [itemCopy setCachedMSSticker:v22];
          if (cellCopy)
          {
            [(AVTStickerSheetController *)self reloadCollectionViewItemForStickerItem:itemCopy];
          }
        }
      }
    }
  }
}

- (void)reloadCollectionViewItemForStickerItem:(id)item
{
  itemCopy = item;
  collectionView = [(AVTStickerSheetController *)self collectionView];

  if (collectionView)
  {
    model = [(AVTStickerSheetController *)self model];
    stickerItems = [model stickerItems];
    v8 = [stickerItems indexOfObject:itemCopy];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:0];
      collectionView2 = [(AVTStickerSheetController *)self collectionView];
      indexPathsForVisibleItems = [collectionView2 indexPathsForVisibleItems];
      v12 = [indexPathsForVisibleItems containsObject:v9];

      if (v12)
      {
        v13 = MEMORY[0x1E69DD250];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __68__AVTStickerSheetController_reloadCollectionViewItemForStickerItem___block_invoke;
        v14[3] = &unk_1E7F3AD60;
        v14[4] = self;
        v15 = v9;
        [v13 performWithoutAnimation:v14];
      }
    }
  }
}

void __68__AVTStickerSheetController_reloadCollectionViewItemForStickerItem___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) collectionView];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 reloadItemsAtIndexPaths:v3];
}

- (id)placeholderProvider
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AVTStickerSheetController_placeholderProvider__block_invoke;
  v8[3] = &unk_1E7F3AEC0;
  objc_copyWeak(&v9, &location);
  v2 = [v8 copy];
  v6 = MEMORY[0x1BFB0DE80](v2, v3, v4, v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

id __48__AVTStickerSheetController_placeholderProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained placeholderImage];

  if (v5)
  {
    v6 = [WeakRetained placeholderImage];
    v3[2](v3, v6);

    v7 = 0;
  }

  else
  {
    objc_initWeak(&location, WeakRetained);
    v8 = [WeakRetained model];
    v9 = [v8 placeholderProviderFactory];
    v10 = [v9 placeholderProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__AVTStickerSheetController_placeholderProvider__block_invoke_2;
    v13[3] = &unk_1E7F3AE98;
    objc_copyWeak(&v15, &location);
    v14 = v3;
    v11 = (v10)[2](v10, v13, 0);

    v7 = MEMORY[0x1BFB0DE80](v11);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __48__AVTStickerSheetController_placeholderProvider__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained placeholderImage];

  if (!v4)
  {
    v5 = [v8 imageWithRenderingMode:2];
    [WeakRetained setPlaceholderImage:v5];
  }

  v6 = *(a1 + 32);
  v7 = [WeakRetained placeholderImage];
  (*(v6 + 16))(v6, v7);
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTStickerSheetController *)self model:view];
  stickerItems = [v4 stickerItems];
  v6 = [stickerItems count];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = +[AVTStickerCollectionViewCell cellIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v9 setDisplaySessionUUID:uUID];
  [v9 setAllowsPeel:{-[AVTStickerSheetController allowsPeel](self, "allowsPeel")}];
  [v9 setDelegate:self];
  disclosureValidationDelegate = [(AVTStickerSheetController *)self disclosureValidationDelegate];
  [v9 setDisclosureValidationDelegate:disclosureValidationDelegate];

  [v9 setShowPrereleaseSticker:{-[AVTStickerSheetController showPrereleaseSticker](self, "showPrereleaseSticker")}];
  model = [(AVTStickerSheetController *)self model];
  stickerItems = [model stickerItems];
  v14 = [stickerItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  [v14 clippingRect];
  [v9 setClippingRect:?];
  cachedMSSticker = [v14 cachedMSSticker];

  if (cachedMSSticker)
  {
    cachedMSSticker2 = [v14 cachedMSSticker];
    [v9 updateWithImage:0 sticker:cachedMSSticker2 animated:0];
  }

  else
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v14);
    placeholderImage = [(AVTStickerSheetController *)self placeholderImage];

    if (placeholderImage)
    {
      placeholderImage2 = [(AVTStickerSheetController *)self placeholderImage];
      cachedMSSticker3 = [v14 cachedMSSticker];
      [v9 updateWithImage:placeholderImage2 sticker:cachedMSSticker3 animated:0];
    }

    else
    {
      placeholderProvider = [(AVTStickerSheetController *)self placeholderProvider];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __67__AVTStickerSheetController_collectionView_cellForItemAtIndexPath___block_invoke;
      v36[3] = &unk_1E7F3AEE8;
      objc_copyWeak(&v39, &from);
      v37 = v9;
      v38 = uUID;
      v21 = (placeholderProvider)[2](placeholderProvider, v36, 0);

      [(AVTStickerSheetController *)self scheduleSheetPlaceholderTask:v21];
      objc_destroyWeak(&v39);
    }

    v22 = objc_opt_new();
    resourceProvider = [v14 resourceProvider];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __67__AVTStickerSheetController_collectionView_cellForItemAtIndexPath___block_invoke_2;
    v30 = &unk_1E7F3AF10;
    objc_copyWeak(&v34, &location);
    objc_copyWeak(&v35, &from);
    v31 = v9;
    v32 = uUID;
    v24 = v22;
    v33 = v24;
    v25 = (resourceProvider)[2](resourceProvider, &v27, 1);

    [(AVTStickerSheetController *)self scheduleSheetStickerTask:v25 withIndexPath:pathCopy, v27, v28, v29, v30];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v34);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __67__AVTStickerSheetController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) displaySessionUUID];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = [WeakRetained cachedMSSticker];

    if (!v6)
    {
      v7 = *(a1 + 32);
      v8 = [WeakRetained cachedMSSticker];
      [v7 updateWithImage:v9 sticker:v8 animated:0];
    }
  }
}

void __67__AVTStickerSheetController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 URL];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = objc_loadWeakRetained((a1 + 64));
    v6 = [*(a1 + 32) displaySessionUUID];
    v7 = *(a1 + 40);

    [WeakRetained updateItem:v5 withStickerResource:v13 reloadCell:v6 != v7];
    if (v6 == v7 && [WeakRetained isPageVisible])
    {
      [*(a1 + 48) timeIntervalSinceNow];
      v9 = v8 < -0.1;
      [v5 clippingRect];
      [*(a1 + 32) setClippingRect:?];
      v10 = *(a1 + 32);
      v11 = [v13 image];
      v12 = [v5 cachedMSSticker];
      [v10 updateWithImage:v11 sticker:v12 animated:v9];
    }
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = [(AVTStickerSheetController *)self collectionView:view];
  indexPathsForVisibleItems = [v6 indexPathsForVisibleItems];

  taskScheduler = [(AVTStickerSheetController *)self taskScheduler];
  [taskScheduler setVisibleIndexPaths:indexPathsForVisibleItems];
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layoutCopy = layout;
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", layoutCopy}];
  }

  [layoutCopy minimumInteritemSpacing];
  v10 = v9;
  [(AVTStickerSheetController *)self sectionInsets];
  v12 = v11;
  [(AVTStickerSheetController *)self topPadding];
  v14 = v12 + v13;
  [viewCopy safeAreaInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v10 + v16;
  v23 = v18 + 12.0;
  v24 = v10 + v20;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", layoutCopy}];
  }

  v11 = layoutCopy;
  [(AVTStickerSheetController *)self numberOfItemsPerRow];
  v13 = v12;
  section = [pathCopy section];

  [(AVTStickerSheetController *)self collectionView:viewCopy layout:v11 insetForSectionAtIndex:section];
  v16 = v15;
  v18 = v17;
  [viewCopy bounds];
  v20 = v19;

  v21 = v20 - v16 - v18;
  [v11 minimumInteritemSpacing];
  v23 = v22;

  v24 = floor((v21 - v23 * (v13 + -1.0)) / v13);
  if (v24 <= 0.0)
  {
    v25 = 300.0;
  }

  else
  {
    v25 = v24;
  }

  v26 = v25;
  v27 = v25;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  delegate = [(AVTStickerSheetController *)self delegate];

  if (delegate)
  {
    delegate2 = [(AVTStickerSheetController *)self delegate];
    [scrollCopy contentOffset];
    [delegate2 stickerSheetController:self didScrollToContentOffset:?];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  delegate = [(AVTStickerSheetController *)self delegate];

  if (delegate)
  {
    delegate2 = [(AVTStickerSheetController *)self delegate];
    [delegate2 stickerSheetController:self scrollView:draggingCopy willEndDraggingWithTargetContentOffset:offset];
  }
}

- (void)scrollToContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  collectionView = [(AVTStickerSheetController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(AVTStickerSheetController *)self collectionView];
    [collectionView2 layoutIfNeeded];

    collectionView3 = [(AVTStickerSheetController *)self collectionView];
    [(AVTStickerSheetController *)self maxedContentOffset:x, y];
    [collectionView3 setContentOffset:animatedCopy animated:?];
  }
}

- (void)stickerCellDidTapSticker:(id)sticker
{
  stickerCopy = sticker;
  collectionView = [(AVTStickerSheetController *)self collectionView];
  v10 = [collectionView indexPathForCell:stickerCopy];

  model = [(AVTStickerSheetController *)self model];
  stickerItems = [model stickerItems];
  v8 = [stickerItems objectAtIndex:{objc_msgSend(v10, "row")}];

  delegate = [(AVTStickerSheetController *)self delegate];
  [delegate stickerSheetController:self didInteractWithStickerItem:v8 atIndex:objc_msgSend(v10 byPeeling:{"item"), 0}];
}

- (void)stickerCellDidPeelSticker:(id)sticker
{
  stickerCopy = sticker;
  collectionView = [(AVTStickerSheetController *)self collectionView];
  v10 = [collectionView indexPathForCell:stickerCopy];

  model = [(AVTStickerSheetController *)self model];
  stickerItems = [model stickerItems];
  v8 = [stickerItems objectAtIndex:{objc_msgSend(v10, "row")}];

  delegate = [(AVTStickerSheetController *)self delegate];
  [delegate stickerSheetController:self didInteractWithStickerItem:v8 atIndex:objc_msgSend(v10 byPeeling:{"item"), 1}];
}

- (id)dragPreviewContainerForLiftingStickerInStickerCell:(id)cell
{
  view = [(AVTStickerSheetController *)self view];
  window = [view window];

  return window;
}

- (void)notifyingContainerViewWillChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  collectionView = [(AVTStickerSheetController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(AVTStickerSheetController *)self collectionView];
    collectionViewLayout = [collectionView2 collectionViewLayout];

    [(AVTStickerSheetController *)self minimumContentSizeForSize:width, height];
    [collectionViewLayout setMinimumContentSize:?];
    [collectionViewLayout invalidateLayout];
  }
}

- (AVTPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presenterDelegate);

  return WeakRetained;
}

- (AVTStickerSheetControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

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

- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->disclosureValidationDelegate);

  return WeakRetained;
}

@end