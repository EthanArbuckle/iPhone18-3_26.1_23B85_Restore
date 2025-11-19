@interface AVTStickerSheetController
- (AVTAvatarRecord)avatarRecord;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (AVTStickerSheetController)initWithStickerSheetModel:(id)a3 taskScheduler:(id)a4 allowsPeel:(BOOL)a5;
- (AVTStickerSheetControllerDelegate)delegate;
- (BOOL)areAllStickersRendered;
- (CGPoint)maxedContentOffset:(CGPoint)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)minimumContentSizeForSize:(CGSize)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)sectionInsets;
- (UIView)view;
- (double)numberOfItemsPerRow;
- (double)topPadding;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)dragPreviewContainerForLiftingStickerInStickerCell:(id)a3;
- (id)firstStickerView;
- (id)placeholderProvider;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)clearStickerRendererIfNeeded;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)discardStickerItems;
- (void)loadView;
- (void)notifyingContainerViewWillChangeSize:(CGSize)a3;
- (void)reloadCollectionViewItemForStickerItem:(id)a3;
- (void)scheduleSheetPlaceholderTask:(id)a3;
- (void)scheduleSheetStickerTask:(id)a3 withIndexPath:(id)a4;
- (void)scrollToContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setSectionInsets:(UIEdgeInsets)a3;
- (void)sheetDidDisappear;
- (void)sheetWillAppear;
- (void)startAllSchedulerTasksExcludingVisibleIndexPaths:(id)a3;
- (void)stickerCellDidPeelSticker:(id)a3;
- (void)stickerCellDidTapSticker:(id)a3;
- (void)updateItem:(id)a3 withStickerResource:(id)a4 reloadCell:(BOOL)a5;
@end

@implementation AVTStickerSheetController

- (AVTStickerSheetController)initWithStickerSheetModel:(id)a3 taskScheduler:(id)a4 allowsPeel:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = AVTStickerSheetController;
  v11 = [(AVTStickerSheetController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_allowsPeel = a5;
    objc_storeStrong(&v11->_model, a3);
    objc_storeStrong(&v12->_taskScheduler, a4);
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
  v3 = [(AVTStickerSheetController *)self model];
  v4 = [v3 stickerRenderer];
  [v4 stopUsingResources];

  v5 = [(AVTStickerSheetController *)self collectionView];
  [v5 removeFromSuperview];

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
  v3 = [(AVTStickerSheetController *)self model];
  v4 = [v3 environment];
  if ([v4 deviceIsPad])
  {

    return 8.0;
  }

  else
  {
    v6 = [(AVTStickerSheetController *)self model];
    v7 = [v6 environment];
    v8 = [v7 deviceIsMac];

    result = 8.0;
    if ((v8 & 1) == 0)
    {
      v9 = [(AVTStickerSheetController *)self model];
      v10 = [v9 environment];
      v11 = [v10 deviceIsVision];

      result = 12.0;
      if (v11)
      {
        return 16.0;
      }
    }
  }

  return result;
}

- (CGSize)minimumContentSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(AVTStickerSheetController *)self sectionInsets];
  v7 = v6;
  [(AVTStickerSheetController *)self sectionInsets];
  v9 = height + v7 + v8;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (CGPoint)maxedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AVTStickerSheetController *)self collectionView];
  [v6 contentSize];
  v8 = v7;
  v9 = [(AVTStickerSheetController *)self collectionView];
  [v9 bounds];
  v11 = v8 - v10;
  v12 = [(AVTStickerSheetController *)self collectionView];
  [v12 adjustedContentInset];
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
  v3 = [(AVTStickerSheetController *)self model];
  v4 = [v3 environment];
  v5 = [v4 deviceIsMac];

  v6 = 10.0;
  if ((v5 & 1) == 0)
  {
    v7 = [(AVTStickerSheetController *)self model];
    v8 = [v7 environment];
    v9 = [v8 deviceIsVision];

    v6 = 16.0;
    if (v9)
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
  v12 = [MEMORY[0x1E69DC888] clearColor];
  [(AVTStickerSheetCollectionView *)v11 setBackgroundColor:v12];

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

- (void)setSectionInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_sectionInsets.top), vceqq_f64(v4, *&self->_sectionInsets.bottom)))) & 1) == 0)
  {
    self->_sectionInsets = a3;
    v6 = [(AVTStickerSheetController *)self collectionView];
    v5 = [v6 collectionViewLayout];
    [v5 invalidateLayout];
  }
}

- (AVTAvatarRecord)avatarRecord
{
  v2 = [(AVTStickerSheetController *)self model];
  v3 = [v2 avatarRecord];

  return v3;
}

- (void)sheetDidDisappear
{
  v22 = *MEMORY[0x1E69E9840];
  [(AVTStickerSheetController *)self setIsPageVisible:0];
  v3 = [(AVTStickerSheetController *)self model];
  v4 = [v3 avatarRecord];
  v5 = [v4 identifier];

  v6 = [(AVTStickerSheetController *)self taskScheduler];
  [v6 cancelStickerSheetTasksForAvatarRecordIdentifier:v5];

  [(AVTStickerSheetController *)self discardStickerItems];
  v7 = [(AVTStickerSheetController *)self collectionView];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(AVTStickerSheetController *)self collectionView];
    v9 = [v8 visibleCells];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v17 + 1) + 8 * v13++) purgeImageContents];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v14 = [(AVTStickerSheetController *)self collectionView];
    [v14 _purgeReuseQueues];
  }

  v15 = [(AVTStickerSheetController *)self model];
  v16 = [v15 stickerRenderer];
  [v16 stopUsingResources];
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
    v3 = [(AVTStickerSheetController *)self collectionView];
    v4 = [v3 indexPathsForVisibleItems];

    if ([v4 count])
    {
      v5 = [(AVTStickerSheetController *)self taskScheduler];
      [v5 setVisibleIndexPaths:v4];

      v6 = MEMORY[0x1E69DD250];
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __44__AVTStickerSheetController_sheetWillAppear__block_invoke;
      v11 = &unk_1E7F3AD60;
      v12 = self;
      v7 = v4;
      v13 = v7;
      [v6 performWithoutAnimation:&v8];
      [(AVTStickerSheetController *)self startAllSchedulerTasksExcludingVisibleIndexPaths:v7, v8, v9, v10, v11, v12];
    }
  }
}

void __44__AVTStickerSheetController_sheetWillAppear__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadItemsAtIndexPaths:*(a1 + 40)];
}

- (void)startAllSchedulerTasksExcludingVisibleIndexPaths:(id)a3
{
  v4 = a3;
  if (![(AVTStickerSheetController *)self areAllStickersRendered])
  {
    v5 = [(AVTStickerSheetController *)self model];
    v6 = [v5 stickerItems];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__AVTStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke;
    v7[3] = &unk_1E7F3AE70;
    v8 = v4;
    v9 = self;
    [v6 enumerateObjectsUsingBlock:v7];
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

- (void)scheduleSheetPlaceholderTask:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(AVTStickerSheetController *)self model];
    v6 = [v5 avatarRecord];
    v7 = [v6 identifier];
    v9 = [AVTStickerTask stickerTaskForSchedulerTask:v4 avatarRecordIdentifier:v7 indexPath:0 stickerType:1];

    v8 = [(AVTStickerSheetController *)self taskScheduler];
    [v8 scheduleStickerTask:v9];
  }
}

- (void)scheduleSheetStickerTask:(id)a3 withIndexPath:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(AVTStickerSheetController *)self model];
    v9 = [v8 avatarRecord];
    v10 = [v9 identifier];
    v12 = [AVTStickerTask stickerTaskForSchedulerTask:v7 avatarRecordIdentifier:v10 indexPath:v6 stickerType:2];

    v11 = [(AVTStickerSheetController *)self taskScheduler];
    [v11 scheduleStickerTask:v12];
  }
}

- (id)firstStickerView
{
  v3 = [(AVTStickerSheetController *)self collectionView];

  if (v3)
  {
    v4 = [(AVTStickerSheetController *)self collectionView];
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v6 = [v4 cellForItemAtIndexPath:v5];
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
  v2 = [(AVTStickerSheetController *)self model];
  v3 = [v2 stickerItems];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) discardContent];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v4 = [(AVTStickerSheetController *)self model];
  v5 = [v4 stickerItems];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v11 + 1) + 8 * i) hasBeenRendered])
        {
          v2 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v4 = [(AVTStickerSheetController *)self delegate];
    v3 = [(AVTStickerSheetController *)self avatarRecord];
    [v4 stickerSheetController:self didFinishRenderingStickersForRecord:v3];
  }
}

- (double)numberOfItemsPerRow
{
  v2 = [(AVTStickerSheetController *)self view];
  [v2 bounds];
  v4 = v3;

  result = 3.0;
  if (v4 > 600.0)
  {
    return 6.0;
  }

  return result;
}

- (void)updateItem:(id)a3 withStickerResource:(id)a4 reloadCell:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 image];
  v11 = [v8 hasBeenRendered];
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  [v8 setHasBeenRendered:v12];

  [(AVTStickerSheetController *)self clearStickerRendererIfNeeded];
  [v9 clippingRect];
  [v8 setClippingRect:?];
  if ([(AVTStickerSheetController *)self isPageVisible])
  {
    v13 = [(AVTStickerSheetController *)self collectionView];

    if (v13)
    {
      v14 = [v8 cachedMSSticker];
      if (v14)
      {
      }

      else
      {
        v15 = [v9 URL];

        if (v15)
        {
          v16 = [(AVTStickerSheetController *)self delegate];
          v17 = objc_opt_respondsToSelector();

          if ((v17 & 1) == 0 || (-[AVTStickerSheetController delegate](self, "delegate"), v18 = objc_claimAutoreleasedReturnValue(), [v9 URL], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "localizedName"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "stickerSheetController:requestsStickerForFileURL:localizedDescription:forItemWithIdentifier:", self, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), v21, v20, v19, v18, !v22))
          {
            v23 = objc_alloc(MEMORY[0x1E6973F40]);
            v24 = [v9 URL];
            v25 = [v8 localizedName];
            v26 = 0;
            v22 = [v23 initWithContentsOfFileURL:v24 localizedDescription:v25 error:&v26];
          }

          [v8 setCachedMSSticker:v22];
          if (v5)
          {
            [(AVTStickerSheetController *)self reloadCollectionViewItemForStickerItem:v8];
          }
        }
      }
    }
  }
}

- (void)reloadCollectionViewItemForStickerItem:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerSheetController *)self collectionView];

  if (v5)
  {
    v6 = [(AVTStickerSheetController *)self model];
    v7 = [v6 stickerItems];
    v8 = [v7 indexOfObject:v4];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:0];
      v10 = [(AVTStickerSheetController *)self collectionView];
      v11 = [v10 indexPathsForVisibleItems];
      v12 = [v11 containsObject:v9];

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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTStickerSheetController *)self model:a3];
  v5 = [v4 stickerItems];
  v6 = [v5 count];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AVTStickerCollectionViewCell cellIdentifier];
  v9 = [v6 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v7];

  v10 = [MEMORY[0x1E696AFB0] UUID];
  [v9 setDisplaySessionUUID:v10];
  [v9 setAllowsPeel:{-[AVTStickerSheetController allowsPeel](self, "allowsPeel")}];
  [v9 setDelegate:self];
  v11 = [(AVTStickerSheetController *)self disclosureValidationDelegate];
  [v9 setDisclosureValidationDelegate:v11];

  [v9 setShowPrereleaseSticker:{-[AVTStickerSheetController showPrereleaseSticker](self, "showPrereleaseSticker")}];
  v12 = [(AVTStickerSheetController *)self model];
  v13 = [v12 stickerItems];
  v14 = [v13 objectAtIndex:{objc_msgSend(v7, "row")}];

  [v14 clippingRect];
  [v9 setClippingRect:?];
  v15 = [v14 cachedMSSticker];

  if (v15)
  {
    v16 = [v14 cachedMSSticker];
    [v9 updateWithImage:0 sticker:v16 animated:0];
  }

  else
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v14);
    v17 = [(AVTStickerSheetController *)self placeholderImage];

    if (v17)
    {
      v18 = [(AVTStickerSheetController *)self placeholderImage];
      v19 = [v14 cachedMSSticker];
      [v9 updateWithImage:v18 sticker:v19 animated:0];
    }

    else
    {
      v20 = [(AVTStickerSheetController *)self placeholderProvider];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __67__AVTStickerSheetController_collectionView_cellForItemAtIndexPath___block_invoke;
      v36[3] = &unk_1E7F3AEE8;
      objc_copyWeak(&v39, &from);
      v37 = v9;
      v38 = v10;
      v21 = (v20)[2](v20, v36, 0);

      [(AVTStickerSheetController *)self scheduleSheetPlaceholderTask:v21];
      objc_destroyWeak(&v39);
    }

    v22 = objc_opt_new();
    v23 = [v14 resourceProvider];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __67__AVTStickerSheetController_collectionView_cellForItemAtIndexPath___block_invoke_2;
    v30 = &unk_1E7F3AF10;
    objc_copyWeak(&v34, &location);
    objc_copyWeak(&v35, &from);
    v31 = v9;
    v32 = v10;
    v24 = v22;
    v33 = v24;
    v25 = (v23)[2](v23, &v27, 1);

    [(AVTStickerSheetController *)self scheduleSheetStickerTask:v25 withIndexPath:v7, v27, v28, v29, v30];
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

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = [(AVTStickerSheetController *)self collectionView:a3];
  v8 = [v6 indexPathsForVisibleItems];

  v7 = [(AVTStickerSheetController *)self taskScheduler];
  [v7 setVisibleIndexPaths:v8];
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v7}];
  }

  [v7 minimumInteritemSpacing];
  v10 = v9;
  [(AVTStickerSheetController *)self sectionInsets];
  v12 = v11;
  [(AVTStickerSheetController *)self topPadding];
  v14 = v12 + v13;
  [v8 safeAreaInsets];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v8}];
  }

  v11 = v8;
  [(AVTStickerSheetController *)self numberOfItemsPerRow];
  v13 = v12;
  v14 = [v9 section];

  [(AVTStickerSheetController *)self collectionView:v10 layout:v11 insetForSectionAtIndex:v14];
  v16 = v15;
  v18 = v17;
  [v10 bounds];
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

- (void)scrollViewDidScroll:(id)a3
{
  v6 = a3;
  v4 = [(AVTStickerSheetController *)self delegate];

  if (v4)
  {
    v5 = [(AVTStickerSheetController *)self delegate];
    [v6 contentOffset];
    [v5 stickerSheetController:self didScrollToContentOffset:?];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v9 = a3;
  v7 = [(AVTStickerSheetController *)self delegate];

  if (v7)
  {
    v8 = [(AVTStickerSheetController *)self delegate];
    [v8 stickerSheetController:self scrollView:v9 willEndDraggingWithTargetContentOffset:a5];
  }
}

- (void)scrollToContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(AVTStickerSheetController *)self collectionView];

  if (v8)
  {
    v9 = [(AVTStickerSheetController *)self collectionView];
    [v9 layoutIfNeeded];

    v10 = [(AVTStickerSheetController *)self collectionView];
    [(AVTStickerSheetController *)self maxedContentOffset:x, y];
    [v10 setContentOffset:v4 animated:?];
  }
}

- (void)stickerCellDidTapSticker:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerSheetController *)self collectionView];
  v10 = [v5 indexPathForCell:v4];

  v6 = [(AVTStickerSheetController *)self model];
  v7 = [v6 stickerItems];
  v8 = [v7 objectAtIndex:{objc_msgSend(v10, "row")}];

  v9 = [(AVTStickerSheetController *)self delegate];
  [v9 stickerSheetController:self didInteractWithStickerItem:v8 atIndex:objc_msgSend(v10 byPeeling:{"item"), 0}];
}

- (void)stickerCellDidPeelSticker:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerSheetController *)self collectionView];
  v10 = [v5 indexPathForCell:v4];

  v6 = [(AVTStickerSheetController *)self model];
  v7 = [v6 stickerItems];
  v8 = [v7 objectAtIndex:{objc_msgSend(v10, "row")}];

  v9 = [(AVTStickerSheetController *)self delegate];
  [v9 stickerSheetController:self didInteractWithStickerItem:v8 atIndex:objc_msgSend(v10 byPeeling:{"item"), 1}];
}

- (id)dragPreviewContainerForLiftingStickerInStickerCell:(id)a3
{
  v3 = [(AVTStickerSheetController *)self view];
  v4 = [v3 window];

  return v4;
}

- (void)notifyingContainerViewWillChangeSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(AVTStickerSheetController *)self collectionView];

  if (v6)
  {
    v7 = [(AVTStickerSheetController *)self collectionView];
    v8 = [v7 collectionViewLayout];

    [(AVTStickerSheetController *)self minimumContentSizeForSize:width, height];
    [v8 setMinimumContentSize:?];
    [v8 invalidateLayout];
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