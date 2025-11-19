@interface AVTSelectableStickerSheetController
- (AVTAvatarRecord)avatarRecord;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTSelectableStickerSheetController)initWithStickerSheetModel:(id)a3 taskScheduler:(id)a4 allowsPoseCapture:(BOOL)a5;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (AVTStickerSheetControllerDelegate)delegate;
- (AVTStickerSheetDelegate)stickerSheetDelegate;
- (AVTStickerViewControllerImageDelegate)imageDelegate;
- (AVTUIStickerItem)cameraStickerItem;
- (BOOL)areAllStickersRendered;
- (BOOL)isCameraItem:(id)a3;
- (CGPoint)maxedContentOffset:(CGPoint)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)minimumContentSizeForSize:(CGSize)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)sectionInsets;
- (UIView)view;
- (double)numberOfItemsPerRow;
- (double)topPadding;
- (id)cellForCameraItemAtIndexPath:(id)a3;
- (id)cellForStickerItem:(id)a3 atIndexPath:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)firstStickerView;
- (id)placeholderProvider;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)stickerIndexInModelforIndexPath:(id)a3;
- (void)clearStickerRendererIfNeeded;
- (void)clearStickerSelection;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)didInteractWithStickerAtIndexPath:(id)a3 byPeeling:(BOOL)a4;
- (void)discardStickerItems;
- (void)loadView;
- (void)notifyingContainerViewWillChangeSize:(CGSize)a3;
- (void)reloadCollectionViewItemForStickerItem:(id)a3;
- (void)scheduleSheetPlaceholderTask:(id)a3;
- (void)scheduleSheetStickerTask:(id)a3 withIndexPath:(id)a4;
- (void)scrollToContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)selectStickerWithIdentifier:(id)a3;
- (void)setSectionInsets:(UIEdgeInsets)a3;
- (void)sheetDidDisappear;
- (void)sheetWillAppear;
- (void)startAllSchedulerTasksExcludingVisibleIndexPaths:(id)a3;
- (void)stickerCellDidPeelSticker:(id)a3;
- (void)stickerCellDidTapSticker:(id)a3;
- (void)updateCell:(id)a3 withImage:(id)a4 sticker:(id)a5 animated:(BOOL)a6;
- (void)updateItem:(id)a3 withStickerResource:(id)a4 reloadCell:(BOOL)a5;
@end

@implementation AVTSelectableStickerSheetController

- (AVTSelectableStickerSheetController)initWithStickerSheetModel:(id)a3 taskScheduler:(id)a4 allowsPoseCapture:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v22.receiver = self;
  v22.super_class = AVTSelectableStickerSheetController;
  v11 = [(AVTSelectableStickerSheetController *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_allowsPoseCapture = v5;
    objc_storeStrong(&v11->_model, a3);
    objc_storeStrong(&v12->_taskScheduler, a4);
    v13 = AVTUIShowPrereleaseStickerPack_once();
    if (v13)
    {
      LOBYTE(v13) = AVTUIShowPrereleaseStickerLabel_once();
    }

    v12->_showPrereleaseSticker = v13;
    v14 = MEMORY[0x1E695DF70];
    v15 = [(AVTStickerSheetModel *)v12->_model stickerItems];
    v16 = [v14 arrayWithArray:v15];

    if (v5 && AVTUIIsFacetrackingSupported())
    {
      v17 = [AVTUIStickerItem alloc];
      v18 = AVTAvatarUIBundle();
      v19 = [v18 localizedStringForKey:@"CUSTOM_POSE" value:&stru_1F39618F0 table:@"Localized"];
      v20 = [(AVTUIStickerItem *)v17 initWithIdentifier:@"cameraStickerItem" localizedName:v19 resourceProvider:0];

      [v16 insertObject:v20 atIndex:0];
      objc_storeWeak(&v12->_cameraStickerItem, v20);
    }

    [(AVTSelectableStickerSheetController *)v12 setStickerItems:v16];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [(AVTSelectableStickerSheetController *)self model];
  v4 = [v3 stickerRenderer];
  [v4 stopUsingResources];

  v5.receiver = self;
  v5.super_class = AVTSelectableStickerSheetController;
  [(AVTSelectableStickerSheetController *)&v5 dealloc];
}

- (UIView)view
{
  view = self->_view;
  if (!view)
  {
    [(AVTSelectableStickerSheetController *)self loadView];
    view = self->_view;
  }

  return view;
}

- (double)topPadding
{
  v3 = [(AVTSelectableStickerSheetController *)self model];
  v4 = [v3 environment];
  if ([v4 deviceIsPad])
  {

    return 8.0;
  }

  else
  {
    v6 = [(AVTSelectableStickerSheetController *)self model];
    v7 = [v6 environment];
    v8 = [v7 deviceIsMac];

    result = 8.0;
    if ((v8 & 1) == 0)
    {
      v9 = [(AVTSelectableStickerSheetController *)self model];
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
  [(AVTSelectableStickerSheetController *)self sectionInsets];
  v7 = v6;
  [(AVTSelectableStickerSheetController *)self sectionInsets];
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
  v6 = [(AVTSelectableStickerSheetController *)self collectionView];
  [v6 contentSize];
  v8 = v7;
  v9 = [(AVTSelectableStickerSheetController *)self collectionView];
  [v9 bounds];
  v11 = v8 - v10;
  v12 = [(AVTSelectableStickerSheetController *)self collectionView];
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
  v14 = objc_alloc_init(AVTMinimumContentSizeCollectionViewLayout);
  v3 = [(AVTSelectableStickerSheetController *)self model];
  v4 = [v3 environment];
  v5 = [v4 deviceIsMac];
  v6 = 16.0;
  if (v5)
  {
    v6 = 10.0;
  }

  [(UICollectionViewFlowLayout *)v14 setMinimumInteritemSpacing:v6];

  [(UICollectionViewFlowLayout *)v14 minimumInteritemSpacing];
  [(UICollectionViewFlowLayout *)v14 setMinimumLineSpacing:?];
  v7 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v8 = [v7 initWithFrame:v14 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v8 setBackgroundColor:v9];

  [v8 setDataSource:self];
  [v8 setDelegate:self];
  [v8 setShowsVerticalScrollIndicator:0];
  [v8 setContentInsetAdjustmentBehavior:2];
  v10 = objc_opt_class();
  v11 = +[AVTStickerCollectionViewCell cellIdentifier];
  [v8 registerClass:v10 forCellWithReuseIdentifier:v11];

  [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"cameraIconCell"];
  [v8 setAutoresizingMask:18];
  [(AVTSelectableStickerSheetController *)self setCollectionView:v8];
  v12 = [AVTNotifyingContainerView alloc];
  [v8 frame];
  v13 = [(AVTNotifyingContainerView *)v12 initWithFrame:?];
  [(AVTNotifyingContainerView *)v13 setDelegate:self];
  [(AVTNotifyingContainerView *)v13 addSubview:v8];
  [(AVTSelectableStickerSheetController *)self setView:v13];
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
    v6 = [(AVTSelectableStickerSheetController *)self collectionView];
    v5 = [v6 collectionViewLayout];
    [v5 invalidateLayout];
  }
}

- (AVTAvatarRecord)avatarRecord
{
  v2 = [(AVTSelectableStickerSheetController *)self model];
  v3 = [v2 avatarRecord];

  return v3;
}

- (void)sheetDidDisappear
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVTSelectableStickerSheetController *)self setIsPageVisible:0];
  v3 = [(AVTSelectableStickerSheetController *)self model];
  v4 = [v3 avatarRecord];
  v5 = [v4 identifier];

  v6 = [(AVTSelectableStickerSheetController *)self taskScheduler];
  [v6 cancelStickerSheetTasksForAvatarRecordIdentifier:v5];

  [(AVTSelectableStickerSheetController *)self discardStickerItems];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(AVTSelectableStickerSheetController *)self collectionView];
  v8 = [v7 visibleCells];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * v12++) purgeImageContents];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = [(AVTSelectableStickerSheetController *)self collectionView];
  [v13 _purgeReuseQueues];

  v14 = [(AVTSelectableStickerSheetController *)self model];
  v15 = [v14 stickerRenderer];
  [v15 stopUsingResources];

  [(AVTSelectableStickerSheetController *)self clearStickerSelection];
}

- (void)sheetWillAppear
{
  if (![(AVTSelectableStickerSheetController *)self isPageVisible])
  {
    [(AVTSelectableStickerSheetController *)self setIsPageVisible:1];
    v3 = [(AVTSelectableStickerSheetController *)self collectionView];
    v4 = [v3 indexPathsForVisibleItems];

    if ([v4 count])
    {
      v5 = [(AVTSelectableStickerSheetController *)self taskScheduler];
      [v5 setVisibleIndexPaths:v4];

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __54__AVTSelectableStickerSheetController_sheetWillAppear__block_invoke;
      v6[3] = &unk_1E7F3A9B8;
      v6[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
      [(AVTSelectableStickerSheetController *)self startAllSchedulerTasksExcludingVisibleIndexPaths:v4];
    }
  }
}

void __54__AVTSelectableStickerSheetController_sheetWillAppear__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 reloadData];
}

- (void)startAllSchedulerTasksExcludingVisibleIndexPaths:(id)a3
{
  v4 = a3;
  if (![(AVTSelectableStickerSheetController *)self areAllStickersRendered])
  {
    v5 = [(AVTSelectableStickerSheetController *)self stickerItems];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __88__AVTSelectableStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke;
    v6[3] = &unk_1E7F3AE70;
    v6[4] = self;
    v7 = v4;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __88__AVTSelectableStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([*(a1 + 32) isCameraItem:v5] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    if (([*(a1 + 40) containsObject:v6] & 1) == 0 && (objc_msgSend(v5, "hasBeenRendered") & 1) == 0)
    {
      objc_initWeak(&location, *(a1 + 32));
      objc_initWeak(&from, v5);
      v7 = [v5 resourceProvider];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __88__AVTSelectableStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke_2;
      v12 = &unk_1E7F3AE48;
      objc_copyWeak(&v13, &location);
      objc_copyWeak(&v14, &from);
      v8 = (v7)[2](v7, &v9, 0);

      [*(a1 + 32) scheduleSheetStickerTask:v8 withIndexPath:{v6, v9, v10, v11, v12}];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __88__AVTSelectableStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained imageDelegate];
  v7 = v6 == 0;

  [WeakRetained updateItem:v5 withStickerResource:v3 reloadCell:v7];
  v8 = [WeakRetained imageDelegate];

  if (v8)
  {
    v9 = [WeakRetained imageDelegate];
    v10 = [v3 image];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__AVTSelectableStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke_3;
    v11[3] = &unk_1E7F3BF90;
    v12 = v5;
    v13 = WeakRetained;
    [v9 viewWillUpdateWithImage:v10 completion:v11];
  }
}

uint64_t __88__AVTSelectableStickerSheetController_startAllSchedulerTasksExcludingVisibleIndexPaths___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCachedImage:a2];
  result = [*(a1 + 40) isPageVisible];
  if (result)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v4 reloadCollectionViewItemForStickerItem:v5];
  }

  return result;
}

- (void)scheduleSheetPlaceholderTask:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(AVTSelectableStickerSheetController *)self model];
    v6 = [v5 avatarRecord];
    v7 = [v6 identifier];
    v9 = [AVTStickerTask stickerTaskForSchedulerTask:v4 avatarRecordIdentifier:v7 indexPath:0 stickerType:1];

    v8 = [(AVTSelectableStickerSheetController *)self taskScheduler];
    [v8 scheduleStickerTask:v9];
  }
}

- (void)scheduleSheetStickerTask:(id)a3 withIndexPath:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(AVTSelectableStickerSheetController *)self model];
    v9 = [v8 avatarRecord];
    v10 = [v9 identifier];
    v12 = [AVTStickerTask stickerTaskForSchedulerTask:v7 avatarRecordIdentifier:v10 indexPath:v6 stickerType:2];

    v11 = [(AVTSelectableStickerSheetController *)self taskScheduler];
    [v11 scheduleStickerTask:v12];
  }
}

- (id)firstStickerView
{
  v3 = [(AVTSelectableStickerSheetController *)self collectionView];

  if (v3)
  {
    v4 = [(AVTSelectableStickerSheetController *)self collectionView];
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
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(AVTSelectableStickerSheetController *)self stickerItems];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (![(AVTSelectableStickerSheetController *)self isCameraItem:v8])
        {
          [v8 discardContent];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v4 = [(AVTSelectableStickerSheetController *)self stickerItems];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (!-[AVTSelectableStickerSheetController isCameraItem:](self, "isCameraItem:", v9) && ![v9 hasBeenRendered])
        {
          v2 = 0;
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v2 = 1;
LABEL_14:

  self->_areAllStickersRendered = v2;
  return v2;
}

- (void)clearStickerRendererIfNeeded
{
  if ([(AVTSelectableStickerSheetController *)self areAllStickersRendered])
  {
    v4 = [(AVTSelectableStickerSheetController *)self delegate];
    v3 = [(AVTSelectableStickerSheetController *)self avatarRecord];
    [v4 stickerSheetController:self didFinishRenderingStickersForRecord:v3];
  }
}

- (double)numberOfItemsPerRow
{
  v2 = [(AVTSelectableStickerSheetController *)self view];
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

  [(AVTSelectableStickerSheetController *)self clearStickerRendererIfNeeded];
  [v9 clippingRect];
  [v8 setClippingRect:?];
  if ([(AVTSelectableStickerSheetController *)self isPageVisible])
  {
    v13 = [v8 cachedMSSticker];
    if (v13)
    {
    }

    else
    {
      v14 = [v9 URL];

      if (v14)
      {
        v15 = [(AVTSelectableStickerSheetController *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if ((v16 & 1) == 0 || (-[AVTSelectableStickerSheetController delegate](self, "delegate"), v17 = objc_claimAutoreleasedReturnValue(), [v9 URL], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "localizedName"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "stickerSheetController:requestsStickerForFileURL:localizedDescription:forItemWithIdentifier:", self, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, v18, v17, !v21))
        {
          v22 = objc_alloc(MEMORY[0x1E6973F40]);
          v23 = [v9 URL];
          v24 = [v8 localizedName];
          v25 = 0;
          v21 = [v22 initWithContentsOfFileURL:v23 localizedDescription:v24 error:&v25];
        }

        [v8 setCachedMSSticker:v21];
        if (v5)
        {
          [(AVTSelectableStickerSheetController *)self reloadCollectionViewItemForStickerItem:v8];
        }
      }
    }
  }
}

- (void)reloadCollectionViewItemForStickerItem:(id)a3
{
  v4 = a3;
  v5 = [(AVTSelectableStickerSheetController *)self stickerItems];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    v8 = [(AVTSelectableStickerSheetController *)self collectionView];
    v9 = [v8 indexPathsForVisibleItems];
    v10 = [v9 containsObject:v7];

    if (v10)
    {
      v11 = MEMORY[0x1E69DD250];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __78__AVTSelectableStickerSheetController_reloadCollectionViewItemForStickerItem___block_invoke;
      v12[3] = &unk_1E7F3AD60;
      v12[4] = self;
      v13 = v7;
      [v11 performWithoutAnimation:v12];
    }
  }
}

void __78__AVTSelectableStickerSheetController_reloadCollectionViewItemForStickerItem___block_invoke(uint64_t a1)
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
  v8[2] = __58__AVTSelectableStickerSheetController_placeholderProvider__block_invoke;
  v8[3] = &unk_1E7F3AEC0;
  objc_copyWeak(&v9, &location);
  v2 = [v8 copy];
  v6 = MEMORY[0x1BFB0DE80](v2, v3, v4, v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

id __58__AVTSelectableStickerSheetController_placeholderProvider__block_invoke(uint64_t a1, void *a2)
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
    v13[2] = __58__AVTSelectableStickerSheetController_placeholderProvider__block_invoke_2;
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

void __58__AVTSelectableStickerSheetController_placeholderProvider__block_invoke_2(uint64_t a1, void *a2)
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
  v4 = [(AVTSelectableStickerSheetController *)self stickerItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AVTSelectableStickerSheetController *)self stickerItems];
  v7 = [v6 objectAtIndex:{objc_msgSend(v5, "item")}];

  if ([(AVTSelectableStickerSheetController *)self isCameraItem:v7])
  {
    [(AVTSelectableStickerSheetController *)self cellForCameraItemAtIndexPath:v5];
  }

  else
  {
    [(AVTSelectableStickerSheetController *)self cellForStickerItem:v7 atIndexPath:v5];
  }
  v8 = ;

  [v8 setShowSelectionLayer:{-[AVTSelectableStickerSheetController showCellSelectionLayer](self, "showCellSelectionLayer")}];

  return v8;
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = [(AVTSelectableStickerSheetController *)self collectionView:a3];
  v8 = [v6 indexPathsForVisibleItems];

  v7 = [(AVTSelectableStickerSheetController *)self taskScheduler];
  [v7 setVisibleIndexPaths:v8];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTSelectableStickerSheetController *)self stickerItems];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "item")}];

  if ([(AVTSelectableStickerSheetController *)self isCameraItem:v9])
  {
    if ([(AVTSelectableStickerSheetController *)self showCellSelectionLayer])
    {
      v10 = dispatch_time(0, 300000000);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __79__AVTSelectableStickerSheetController_collectionView_didSelectItemAtIndexPath___block_invoke;
      v17 = &unk_1E7F3AD60;
      v18 = v6;
      v19 = self;
      dispatch_after(v10, MEMORY[0x1E69E96A0], &v14);
    }

    v11 = [(AVTSelectableStickerSheetController *)self stickerSheetDelegate:v14];
    v12 = [(AVTSelectableStickerSheetController *)self avatarRecord];
    [v11 stickerSheetController:self didSelectCameraViewForRecord:v12];
  }

  else
  {
    v13 = [(AVTSelectableStickerSheetController *)self imageDelegate];

    if (v13)
    {
      [(AVTSelectableStickerSheetController *)self didInteractWithStickerAtIndexPath:v7 byPeeling:0];
    }
  }
}

void __79__AVTSelectableStickerSheetController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) selectedIndexPath];
  [v1 selectItemAtIndexPath:v2 animated:1 scrollPosition:0];
}

- (id)cellForCameraItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(AVTSelectableStickerSheetController *)self collectionView];
  v6 = [v5 dequeueReusableCellWithReuseIdentifier:@"cameraIconCell" forIndexPath:v4];

  v7 = [v6 tintColor];
  v8 = [MEMORY[0x1E69DC888] systemBlueColor];

  if (v7 != v8)
  {
    v9 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v6 setTintColor:v9];
  }

  return v6;
}

- (id)cellForStickerItem:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTSelectableStickerSheetController *)self collectionView];
  v9 = +[AVTStickerCollectionViewCell cellIdentifier];
  v10 = [v8 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v7];

  v11 = [MEMORY[0x1E696AFB0] UUID];
  [v10 setDisplaySessionUUID:v11];
  [v10 setDelegate:self];
  v12 = [(AVTSelectableStickerSheetController *)self disclosureValidationDelegate];
  [v10 setDisclosureValidationDelegate:v12];

  [v10 setShowPrereleaseSticker:{-[AVTSelectableStickerSheetController showPrereleaseSticker](self, "showPrereleaseSticker")}];
  [v6 clippingRect];
  [v10 setClippingRect:?];
  v13 = [v6 cachedMSSticker];

  if (v13)
  {
    v14 = [v6 cachedImage];
    v15 = [v6 cachedMSSticker];
    [(AVTSelectableStickerSheetController *)self updateCell:v10 withImage:v14 sticker:v15 animated:0];
  }

  else
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    v16 = [(AVTSelectableStickerSheetController *)self placeholderImage];

    if (v16)
    {
      v17 = [(AVTSelectableStickerSheetController *)self placeholderImage];
      v18 = [v6 cachedMSSticker];
      [(AVTSelectableStickerSheetController *)self updateCell:v10 withImage:v17 sticker:v18 animated:0];
    }

    else
    {
      v19 = [(AVTSelectableStickerSheetController *)self placeholderProvider];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __70__AVTSelectableStickerSheetController_cellForStickerItem_atIndexPath___block_invoke;
      v34[3] = &unk_1E7F3C1B8;
      objc_copyWeak(&v38, &from);
      v35 = v10;
      v36 = v11;
      v37 = self;
      v20 = (v19)[2](v19, v34, 0);

      [(AVTSelectableStickerSheetController *)self scheduleSheetPlaceholderTask:v20];
      objc_destroyWeak(&v38);
    }

    v21 = objc_opt_new();
    v22 = [v6 resourceProvider];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __70__AVTSelectableStickerSheetController_cellForStickerItem_atIndexPath___block_invoke_2;
    v26[3] = &unk_1E7F3C230;
    objc_copyWeak(&v32, &location);
    objc_copyWeak(&v33, &from);
    v27 = v10;
    v28 = v11;
    v23 = v21;
    v29 = v23;
    v30 = self;
    v31 = v6;
    v24 = (v22)[2](v22, v26, 1);

    [(AVTSelectableStickerSheetController *)self scheduleSheetStickerTask:v24 withIndexPath:v7];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __70__AVTSelectableStickerSheetController_cellForStickerItem_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) displaySessionUUID];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = [WeakRetained cachedMSSticker];

    if (!v6)
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = [WeakRetained cachedMSSticker];
      [v7 updateCell:v8 withImage:v10 sticker:v9 animated:0];
    }
  }
}

void __70__AVTSelectableStickerSheetController_cellForStickerItem_atIndexPath___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URL];

  if (v4)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__AVTSelectableStickerSheetController_cellForStickerItem_atIndexPath___block_invoke_3;
    v13[3] = &unk_1E7F3C1E0;
    objc_copyWeak(&v18, a1 + 9);
    objc_copyWeak(&v19, a1 + 10);
    v14 = a1[4];
    v15 = a1[5];
    v5 = v3;
    v16 = v5;
    v17 = a1[6];
    v6 = MEMORY[0x1BFB0DE80](v13);
    v7 = [a1[7] imageDelegate];

    if (v7)
    {
      v8 = [a1[7] imageDelegate];
      v9 = [v5 image];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __70__AVTSelectableStickerSheetController_cellForStickerItem_atIndexPath___block_invoke_4;
      v10[3] = &unk_1E7F3C208;
      v11 = a1[8];
      v12 = v6;
      [v8 viewWillUpdateWithImage:v9 completion:v10];
    }

    else
    {
      v6[2](v6);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
  }
}

void __70__AVTSelectableStickerSheetController_cellForStickerItem_atIndexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = objc_loadWeakRetained((a1 + 72));
  v3 = [*(a1 + 32) displaySessionUUID];
  v4 = *(a1 + 40);

  [WeakRetained updateItem:v2 withStickerResource:*(a1 + 48) reloadCell:v3 != v4];
  if (v3 == v4 && [WeakRetained isPageVisible])
  {
    [*(a1 + 56) timeIntervalSinceNow];
    v6 = v5 < -0.1;
    [v2 clippingRect];
    [*(a1 + 32) setClippingRect:?];
    v7 = *(a1 + 32);
    v8 = [v2 cachedImage];
    v9 = [v2 cachedMSSticker];
    [WeakRetained updateCell:v7 withImage:v8 sticker:v9 animated:v6];
  }
}

uint64_t __70__AVTSelectableStickerSheetController_cellForStickerItem_atIndexPath___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCachedImage:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
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
  [(AVTSelectableStickerSheetController *)self sectionInsets];
  v12 = v11;
  [(AVTSelectableStickerSheetController *)self topPadding];
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
  [(AVTSelectableStickerSheetController *)self numberOfItemsPerRow];
  v13 = v12;
  v14 = [v9 section];

  [(AVTSelectableStickerSheetController *)self collectionView:v10 layout:v11 insetForSectionAtIndex:v14];
  v16 = v15;
  v18 = v17;
  [v10 bounds];
  v20 = v19;

  v21 = v20 - v16 - v18;
  [v11 minimumInteritemSpacing];
  v23 = v22;

  v24 = floor((v21 - v23 * (v13 + -1.0)) / v13);
  v25 = v24;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v6 = a3;
  v4 = [(AVTSelectableStickerSheetController *)self delegate];

  if (v4)
  {
    v5 = [(AVTSelectableStickerSheetController *)self delegate];
    [v6 contentOffset];
    [v5 stickerSheetController:self didScrollToContentOffset:?];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v9 = a3;
  v7 = [(AVTSelectableStickerSheetController *)self delegate];

  if (v7)
  {
    v8 = [(AVTSelectableStickerSheetController *)self delegate];
    [v8 stickerSheetController:self scrollView:v9 willEndDraggingWithTargetContentOffset:a5];
  }
}

- (void)scrollToContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(AVTSelectableStickerSheetController *)self collectionView];

  if (v8)
  {
    v9 = [(AVTSelectableStickerSheetController *)self collectionView];
    [v9 layoutIfNeeded];

    v10 = [(AVTSelectableStickerSheetController *)self collectionView];
    [(AVTSelectableStickerSheetController *)self maxedContentOffset:x, y];
    [v10 setContentOffset:v4 animated:?];
  }
}

- (void)stickerCellDidTapSticker:(id)a3
{
  v4 = a3;
  v5 = [(AVTSelectableStickerSheetController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  [(AVTSelectableStickerSheetController *)self didInteractWithStickerAtIndexPath:v6 byPeeling:0];
}

- (void)stickerCellDidPeelSticker:(id)a3
{
  v4 = a3;
  v5 = [(AVTSelectableStickerSheetController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  [(AVTSelectableStickerSheetController *)self didInteractWithStickerAtIndexPath:v6 byPeeling:1];
}

- (void)notifyingContainerViewWillChangeSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(AVTSelectableStickerSheetController *)self collectionView];
  v7 = [v6 collectionViewLayout];

  [(AVTSelectableStickerSheetController *)self minimumContentSizeForSize:width, height];
  [v7 setMinimumContentSize:?];
  [v7 invalidateLayout];
}

- (void)updateCell:(id)a3 withImage:(id)a4 sticker:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v14 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(AVTSelectableStickerSheetController *)self imageDelegate];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v14;
  }

  [v11 updateWithImage:v10 sticker:v13 animated:v6];
}

- (void)didInteractWithStickerAtIndexPath:(id)a3 byPeeling:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(AVTSelectableStickerSheetController *)self stickerIndexInModelforIndexPath:?];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    [(AVTSelectableStickerSheetController *)self setSelectedIndexPath:v11];
    v8 = [(AVTSelectableStickerSheetController *)self stickerItems];
    v9 = [v8 objectAtIndex:{objc_msgSend(v11, "item")}];

    v10 = [(AVTSelectableStickerSheetController *)self delegate];
    [v10 stickerSheetController:self didInteractWithStickerItem:v9 atIndex:v7 byPeeling:v4];
  }
}

- (unint64_t)stickerIndexInModelforIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(AVTSelectableStickerSheetController *)self stickerItems];
  v6 = [v4 item];

  v7 = [v5 objectAtIndex:v6];

  v8 = [(AVTSelectableStickerSheetController *)self model];
  v9 = [v8 stickerItems];
  v10 = [v9 indexOfObject:v7];

  return v10;
}

- (void)selectStickerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AVTSelectableStickerSheetController *)self showCellSelectionLayer];
  if (v4 && v5)
  {
    v6 = [(AVTSelectableStickerSheetController *)self stickerItems];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__AVTSelectableStickerSheetController_selectStickerWithIdentifier___block_invoke;
    v11[3] = &unk_1E7F3C258;
    v12 = v4;
    v7 = [v6 indexOfObjectPassingTest:v11];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:0];
      [(AVTSelectableStickerSheetController *)self setSelectedIndexPath:v8];

      v9 = [(AVTSelectableStickerSheetController *)self collectionView];
      v10 = [(AVTSelectableStickerSheetController *)self selectedIndexPath];
      [v9 selectItemAtIndexPath:v10 animated:1 scrollPosition:0];
    }
  }
}

uint64_t __67__AVTSelectableStickerSheetController_selectStickerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)clearStickerSelection
{
  v3 = [(AVTSelectableStickerSheetController *)self selectedIndexPath];

  if (v3)
  {
    v4 = [(AVTSelectableStickerSheetController *)self collectionView];
    v5 = [(AVTSelectableStickerSheetController *)self selectedIndexPath];
    [v4 deselectItemAtIndexPath:v5 animated:1];

    [(AVTSelectableStickerSheetController *)self setSelectedIndexPath:0];
  }
}

- (BOOL)isCameraItem:(id)a3
{
  v4 = a3;
  v5 = [(AVTSelectableStickerSheetController *)self cameraStickerItem];

  return v5 == v4;
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
  WeakRetained = objc_loadWeakRetained(&self->_disclosureValidationDelegate);

  return WeakRetained;
}

- (AVTStickerViewControllerImageDelegate)imageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageDelegate);

  return WeakRetained;
}

- (AVTStickerSheetDelegate)stickerSheetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stickerSheetDelegate);

  return WeakRetained;
}

- (AVTUIStickerItem)cameraStickerItem
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraStickerItem);

  return WeakRetained;
}

@end