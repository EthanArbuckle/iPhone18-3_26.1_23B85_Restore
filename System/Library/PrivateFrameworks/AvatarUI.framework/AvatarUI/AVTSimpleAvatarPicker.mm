@interface AVTSimpleAvatarPicker
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTSimpleAvatarPicker)initWithDataSource:(id)a3 recordImageProvider:(id)a4 avtViewSessionProvider:(id)a5 taskScheduler:(id)a6 allowEditing:(BOOL)a7 interItemSpacing:(double)a8 shouldReverseNaturalLayout:(BOOL)a9;
- (AVTSimpleAvatarPicker)initWithStore:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5 interItemSpacing:(double)a6 shouldReverseNaturalLayout:(BOOL)a7;
- (AVTSimpleAvatarPickerHeaderView)headerView;
- (AVTStickerViewControllerImageDelegate)imageDelegate;
- (BOOL)canCreateAvatar;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)isItemAtIndexPathOffscreen:(id)a3;
- (BOOL)shouldShowHeaderButton;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)itemSize;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)contentInset;
- (UIView)view;
- (id)actionsModelForRecord:(id)a3;
- (id)avatarActionsViewController:(id)a3 recordUpdateForDeletingRecord:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)currentCellForRecordItem:(id)a3 atIndexPath:(id)a4 displaySessionUUID:(id)a5 previousCell:(id)a6;
- (id)currentRenderingTaskForRecordItem:(id)a3;
- (id)selectedAvatar;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)indexForSelectedAvatar;
- (void)avatarActionsViewControllerDidFinish:(id)a3;
- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4;
- (void)avatarEditorViewControllerDidCancel:(id)a3;
- (void)cancelCurrentRenderingTaskForRecordItem:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)deselectPreviousSelectedItemExcludingIndexPath:(id)a3;
- (void)loadView;
- (void)notifyingContainerViewDidChangeSize:(CGSize)a3;
- (void)notifyingContainerViewWillChangeSize:(CGSize)a3;
- (void)presentActionsForAvatarRecord:(id)a3;
- (void)presentActionsForSelectedAvatar;
- (void)presentMemojiEditorForCreation;
- (void)presentedAvatarRecord:(id)a3;
- (void)registerRenderingTask:(id)a3 forRecordItem:(id)a4;
- (void)reloadData;
- (void)reloadDataSource;
- (void)renderThumbnailsIfNeeded;
- (void)scheduleRenderingTask:(id)a3 forRecordItem:(id)a4;
- (void)scrollToInitialPositionIfNeeded;
- (void)selectAvatarRecordWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)setAllowEditing:(BOOL)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setMinimumInteritemSpacing:(double)a3;
- (void)unregisterCurrentRenderingTaskForRecordItem:(id)a3;
- (void)updateCell:(id)a3 withImage:(id)a4 animated:(BOOL)a5;
- (void)updateHeaderButtonForSelectedAvatar:(id)a3 invalidateLayout:(BOOL)a4 animated:(BOOL)a5;
- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTSimpleAvatarPicker

- (AVTSimpleAvatarPicker)initWithStore:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5 interItemSpacing:(double)a6 shouldReverseNaturalLayout:(BOOL)a7
{
  v32 = a7;
  v8 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [AVTAvatarRecordDataSource alloc];
  v14 = [MEMORY[0x1E698E310] requestForAllAvatars];
  v15 = [(AVTAvatarRecordDataSource *)v13 initWithRecordStore:v12 fetchRequest:v14 environment:v11];

  v16 = [[AVTAvatarPickerDataSource alloc] initWithRecordDataSource:v15 environment:v11 allowAddItem:v8];
  v17 = [AVTStickerTaskScheduler schedulerWithRecordDataSource:v15];
  v18 = [_AVTAvatarRecordImageProvider alloc];
  v19 = [(AVTAvatarPickerDataSource *)v16 environment];
  v20 = [(_AVTAvatarRecordImageProvider *)v18 initWithEnvironment:v19 taskScheduler:0];

  v21 = [AVTViewSessionProvider alloc];
  v22 = [(AVTAvatarPickerDataSource *)v16 environment];
  [AVTViewSessionProvider backingSizeForEnvironment:v22];
  v24 = v23;
  v26 = v25;
  v27 = +[AVTViewSessionProvider creatorForAVTView];
  v28 = [(AVTAvatarPickerDataSource *)v16 environment];
  v29 = [(AVTViewSessionProvider *)v21 initWithAVTViewBackingSize:v27 viewCreator:v28 environment:v24, v26];

  v30 = [(AVTSimpleAvatarPicker *)self initWithDataSource:v16 recordImageProvider:v20 avtViewSessionProvider:v29 taskScheduler:v17 allowEditing:v8 interItemSpacing:v32 shouldReverseNaturalLayout:a6];
  return v30;
}

- (AVTSimpleAvatarPicker)initWithDataSource:(id)a3 recordImageProvider:(id)a4 avtViewSessionProvider:(id)a5 taskScheduler:(id)a6 allowEditing:(BOOL)a7 interItemSpacing:(double)a8 shouldReverseNaturalLayout:(BOOL)a9
{
  v17 = a3;
  v34 = a4;
  v18 = a5;
  v19 = a6;
  v35.receiver = self;
  v35.super_class = AVTSimpleAvatarPicker;
  v20 = [(AVTSimpleAvatarPicker *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_dataSource, a3);
    v22 = +[AVTRenderingScope simplePickerThumbnailScope];
    renderingScope = v21->_renderingScope;
    v21->_renderingScope = v22;

    objc_storeStrong(&v21->_imageProvider, a4);
    v21->_minimumInteritemSpacing = a8;
    v21->_allowEditing = a7;
    v21->_doesDisplayEditIconWhenAvailable = 1;
    objc_storeStrong(&v21->_taskScheduler, a6);
    objc_storeStrong(&v21->_viewSessionProvider, a5);
    v21->_shouldReverseNaturalLayout = a9;
    v24 = [AVTImageStore alloc];
    v25 = [v17 environment];
    v26 = [v25 coreEnvironment];
    v27 = [v17 environment];
    v28 = [v27 imageStoreLocation];
    v29 = [(AVTImageStore *)v24 initWithEnvironment:v26 validateImages:0 location:v28];
    imageStore = v21->_imageStore;
    v21->_imageStore = v29;

    v31 = [MEMORY[0x1E695DF90] dictionary];
    itemsToTasksMap = v21->_itemsToTasksMap;
    v21->_itemsToTasksMap = v31;
  }

  return v21;
}

- (UIView)view
{
  view = self->_view;
  if (!view)
  {
    [(AVTSimpleAvatarPicker *)self loadView];
    view = self->_view;
  }

  return view;
}

- (void)setMinimumInteritemSpacing:(double)a3
{
  if (self->_minimumInteritemSpacing != a3)
  {
    self->_minimumInteritemSpacing = a3;
    v4 = [(AVTSimpleAvatarPicker *)self collectionViewLayout];
    [v4 setMinimumLineSpacing:a3];
    [v4 setMinimumInteritemSpacing:a3];
    [v4 invalidateLayout];
  }
}

- (void)loadView
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v21 = objc_alloc_init(AVTEdgeDisappearingCollectionViewLayout);
  [(AVTSimpleAvatarPicker *)self minimumInteritemSpacing];
  [(UICollectionViewFlowLayout *)v21 setMinimumInteritemSpacing:?];
  [(AVTSimpleAvatarPicker *)self minimumInteritemSpacing];
  [(UICollectionViewFlowLayout *)v21 setMinimumLineSpacing:?];
  [(UICollectionViewFlowLayout *)v21 setScrollDirection:1];
  [(AVTEdgeDisappearingCollectionViewLayout *)v21 setPinHeaderToVisible:1];
  [(AVTEdgeDisappearingCollectionViewLayout *)v21 setEnableEdgeDisappearing:[(AVTSimpleAvatarPicker *)self shouldShowHeaderButton]];
  [(AVTSimpleAvatarPicker *)self setCollectionViewLayout:v21];
  v7 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v21 collectionViewLayout:{v3, v4, v5, v6}];
  [v7 setDataSource:self];
  [v7 setDelegate:self];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v8];

  v9 = [(AVTSimpleAvatarPicker *)self dataSource];
  v10 = [v9 environment];
  [v7 setShowsHorizontalScrollIndicator:{objc_msgSend(v10, "deviceIsMac")}];

  [v7 setDelaysContentTouches:0];
  [(AVTSimpleAvatarPicker *)self contentInset];
  [v7 setContentInset:?];
  [v7 setAutoresizingMask:18];
  [v7 setAllowsMultipleSelection:0];
  v11 = objc_opt_class();
  v12 = +[AVTSimpleAvatarPickerCollectionViewCell cellIdentifier];
  [v7 registerClass:v11 forCellWithReuseIdentifier:v12];

  v13 = objc_opt_class();
  v14 = *MEMORY[0x1E69DDC08];
  v15 = +[AVTSimpleAvatarPickerHeaderView reuseIdentifier];
  [v7 registerClass:v13 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];

  if ([(AVTSimpleAvatarPicker *)self shouldReverseNaturalLayout])
  {
    v16 = [(AVTSimpleAvatarPicker *)self dataSource];
    v17 = [v16 environment];
    if ([v17 userInterfaceLayoutDirection])
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    [v7 setSemanticContentAttribute:v18];
  }

  v19 = [v7 layer];
  [v19 setMasksToBounds:0];

  [(AVTSimpleAvatarPicker *)self setCollectionView:v7];
  v20 = [[AVTNotifyingContainerView alloc] initWithFrame:v3, v4, v5, v6];
  [(AVTNotifyingContainerView *)v20 setDelegate:self];
  [(AVTNotifyingContainerView *)v20 addSubview:v7];
  [(AVTSimpleAvatarPicker *)self setView:v20];
  [(AVTSimpleAvatarPicker *)self renderThumbnailsIfNeeded];
  [(AVTSimpleAvatarPicker *)self scrollToInitialPositionIfNeeded];
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    right = a3.right;
    left = a3.left;
    bottom = a3.bottom;
    top = a3.top;
    v8 = [(AVTSimpleAvatarPicker *)self collectionView];
    [v8 setContentInset:{top, left, bottom, right}];
  }
}

- (void)setAllowEditing:(BOOL)a3
{
  if (self->_allowEditing != a3)
  {
    self->_allowEditing = a3;
    [(AVTSimpleAvatarPicker *)self reloadData];
  }
}

- (void)renderThumbnailsIfNeeded
{
  v3 = [(AVTSimpleAvatarPicker *)self dataSource];
  v4 = [v3 numberOfItems];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [(AVTSimpleAvatarPicker *)self dataSource];
      v7 = [v6 itemAtIndex:i];

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __49__AVTSimpleAvatarPicker_renderThumbnailsIfNeeded__block_invoke;
      v8[3] = &unk_1E7F3D430;
      v8[4] = self;
      [v7 downcastWithRecordHandler:v8 viewHandler:0];
    }
  }
}

void __49__AVTSimpleAvatarPicker_renderThumbnailsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cachedImage];

  if (!v4)
  {
    v5 = [*(a1 + 32) renderingScope];
    v6 = [AVTAvatarRecordCacheableResource alloc];
    v7 = [v3 avatar];
    v8 = [*(a1 + 32) dataSource];
    v9 = [v8 environment];
    v10 = [(AVTAvatarRecordCacheableResource *)v6 initWithAvatarRecord:v7 includeAvatarData:0 environment:v9];

    v11 = [*(a1 + 32) imageStore];
    v12 = [v11 imageForItem:v10 scope:v5];

    if (!v12)
    {
      v13 = [*(a1 + 32) imageProvider];
      v14 = [v3 avatar];
      v15 = [v13 providerForRecord:v14 scope:v5];

      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __49__AVTSimpleAvatarPicker_renderThumbnailsIfNeeded__block_invoke_2;
      v24 = &unk_1E7F3BF90;
      v25 = *(a1 + 32);
      v16 = v3;
      v26 = v16;
      v17 = (v15)[2](v15, &v21, 0);
      [*(a1 + 32) scheduleRenderingTask:v17 forRecordItem:{v16, v21, v22, v23, v24, v25}];
      v18 = [*(a1 + 32) taskScheduler];
      v19 = [v16 avatar];
      v20 = [v19 identifier];
      [v18 lowerStickerPickerTaskPriority:v17 avatarRecordIdentifier:v20];
    }
  }
}

void __49__AVTSimpleAvatarPicker_renderThumbnailsIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) unregisterCurrentRenderingTaskForRecordItem:*(a1 + 40)];
  v3 = [*(a1 + 40) cachedImage];

  if (!v3)
  {
    [*(a1 + 40) setCachedImage:v4];
  }
}

- (void)scrollToInitialPositionIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVTSimpleAvatarPicker_scrollToInitialPositionIfNeeded__block_invoke;
  block[3] = &unk_1E7F3A9B8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__AVTSimpleAvatarPicker_scrollToInitialPositionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 indexPathsForSelectedItems];
  v4 = [v3 count];

  if (!v4)
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    v5 = [*(a1 + 32) collectionView];
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:16 animated:0];
  }
}

- (void)reloadData
{
  if (self->_view)
  {
    obj = [(AVTSimpleAvatarPicker *)self collectionView];
    objc_sync_enter(obj);
    v3 = [(AVTSimpleAvatarPicker *)self collectionView];
    v4 = [v3 indexPathsForSelectedItems];

    v5 = [(AVTSimpleAvatarPicker *)self shouldShowHeaderButton];
    v6 = [(AVTSimpleAvatarPicker *)self collectionViewLayout];
    [v6 setEnableEdgeDisappearing:v5];

    v7 = [(AVTSimpleAvatarPicker *)self collectionView];
    [v7 reloadData];

    v8 = [(AVTSimpleAvatarPicker *)self collectionView];
    [v8 layoutIfNeeded];

    if ([v4 count])
    {
      v9 = [(AVTSimpleAvatarPicker *)self collectionView];
      v10 = [v4 firstObject];
      [v9 selectItemAtIndexPath:v10 animated:0 scrollPosition:16];
    }

    objc_sync_exit(obj);
  }
}

- (void)reloadDataSource
{
  v3 = [(AVTSimpleAvatarPicker *)self dataSource];
  [v3 reloadModel];

  [(AVTSimpleAvatarPicker *)self reloadData];
}

- (int64_t)indexForSelectedAvatar
{
  v2 = [(AVTSimpleAvatarPicker *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];

  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 item];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)selectedAvatar
{
  v3 = [(AVTSimpleAvatarPicker *)self dataSource];
  v4 = [v3 itemAtIndex:{-[AVTSimpleAvatarPicker indexForSelectedAvatar](self, "indexForSelectedAvatar")}];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__21;
  v12 = __Block_byref_object_dispose__21;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__AVTSimpleAvatarPicker_selectedAvatar__block_invoke;
  v7[3] = &unk_1E7F3B5C8;
  v7[4] = &v8;
  [v4 downcastWithRecordHandler:v7 viewHandler:0];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __39__AVTSimpleAvatarPicker_selectedAvatar__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 avatar];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (BOOL)canCreateAvatar
{
  v2 = [(AVTSimpleAvatarPicker *)self dataSource];
  v3 = [v2 recordDataSource];
  v4 = [v3 recordStore];
  v5 = [v4 canCreateAvatar];

  return v5;
}

- (BOOL)shouldShowHeaderButton
{
  if ([(AVTSimpleAvatarPicker *)self allowEditing])
  {
    v3 = [(AVTSimpleAvatarPicker *)self selectedAvatar];
    if (v3)
    {
      if ([(AVTSimpleAvatarPicker *)self doesDisplayEditIconWhenAvailable])
      {
        if ([v3 isEditable])
        {
          goto LABEL_5;
        }

        if ([v3 isEditable])
        {
          v4 = 0;
          goto LABEL_10;
        }
      }

      v4 = [(AVTSimpleAvatarPicker *)self canCreateAvatar];
      goto LABEL_10;
    }

LABEL_5:
    v4 = 1;
LABEL_10:

    return v4;
  }

  return 0;
}

- (void)presentActionsForSelectedAvatar
{
  v7 = [(AVTSimpleAvatarPicker *)self selectedAvatar];
  if ([v7 isEditable] && -[AVTSimpleAvatarPicker doesDisplayEditIconWhenAvailable](self, "doesDisplayEditIconWhenAvailable"))
  {
    [(AVTSimpleAvatarPicker *)self presentActionsForAvatarRecord:v7];
  }

  else
  {
    v3 = [(AVTSimpleAvatarPicker *)self avatarPickerDelegate];
    v4 = objc_opt_respondsToSelector();

    if ((v4 & 1) == 0 || (-[AVTSimpleAvatarPicker avatarPickerDelegate](self, "avatarPickerDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 avatarPicker:self shouldPresentMemojiEditorForAvatarRecord:v7], v5, v6))
    {
      [(AVTSimpleAvatarPicker *)self presentMemojiEditorForCreation];
    }
  }
}

- (id)actionsModelForRecord:(id)a3
{
  v4 = a3;
  if ([v4 isEditable])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v4}];
    }

    v5 = v4;
    v6 = [AVTAvatarActionsProvider alloc];
    v7 = [(AVTSimpleAvatarPicker *)self dataSource];
    v8 = [v7 recordDataSource];
    v9 = [(AVTAvatarActionsProvider *)v6 initWithAvatarRecord:v5 dataSource:v8 allowCreate:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)presentActionsForAvatarRecord:(id)a3
{
  v15 = a3;
  if (([v15 isEditable] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Record %@ is not editable!", v15}];
  }

  v4 = [(AVTSimpleAvatarPicker *)self actionsModelForRecord:v15];
  v5 = [(AVTSimpleAvatarPicker *)self dataSource];
  v6 = [v5 environment];

  v7 = [AVTAvatarInlineActionsController alloc];
  v8 = [(AVTSimpleAvatarPicker *)self dataSource];
  v9 = [v8 recordDataSource];
  v10 = [(AVTSimpleAvatarPicker *)self viewSessionProvider];
  v11 = [(AVTAvatarInlineActionsController *)v7 initWithDataSource:v9 avtViewProvider:v10 environment:v6];

  [(AVTAvatarInlineActionsController *)v11 setShouldHideUserInfoView:[(AVTSimpleAvatarPicker *)self shouldHideUserInfoView]];
  [(AVTAvatarInlineActionsController *)v11 updateWithActionsModel:v4];
  v12 = [AVTAvatarActionsViewController alloc];
  v13 = [(AVTSimpleAvatarPicker *)self viewSessionProvider];
  v14 = [(AVTAvatarActionsViewController *)v12 initWithAVTViewSessionProvider:v13 actionsController:v11 environment:v6];

  [(AVTAvatarActionsViewController *)v14 setDelegate:self];
  [(AVTAvatarActionsViewController *)v14 setShouldHideUserInfoView:[(AVTSimpleAvatarPicker *)self shouldHideUserInfoView]];
  [(AVTSimpleAvatarPicker *)self wrapAndPresentViewController:v14 animated:1];
}

- (void)presentMemojiEditorForCreation
{
  v3 = [(AVTSimpleAvatarPicker *)self presenterDelegate];

  if (v3)
  {
    v4 = [(AVTSimpleAvatarPicker *)self dataSource];
    v5 = [v4 store];
    v6 = [(AVTSimpleAvatarPicker *)self viewSessionProvider];
    v7 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:v5 avtViewSessionProvider:v6];

    [v7 setDelegate:self];
    [v7 setShouldHideUserInfoView:{-[AVTSimpleAvatarPicker shouldHideUserInfoView](self, "shouldHideUserInfoView")}];
    [(AVTSimpleAvatarPicker *)self wrapAndPresentViewController:v7 animated:1];
  }
}

- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4
{
  v6 = [AVTUIControllerPresentation presentationWithWrappingForController:a3, a4];
  v5 = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  [v5 presentAvatarUIController:v6 animated:1];
}

- (void)deselectPreviousSelectedItemExcludingIndexPath:(id)a3
{
  v12 = a3;
  v4 = [(AVTSimpleAvatarPicker *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];
  if ([v5 count])
  {
    v6 = [(AVTSimpleAvatarPicker *)self collectionView];
    v7 = [v6 indexPathsForSelectedItems];
    v8 = [v7 firstObject];
    v9 = [v8 isEqual:v12];

    if (v9)
    {
      goto LABEL_5;
    }

    v10 = [(AVTSimpleAvatarPicker *)self collectionView];
    v11 = [v10 indexPathsForSelectedItems];
    v4 = [v11 firstObject];

    v5 = [(AVTSimpleAvatarPicker *)self collectionView];
    [v5 deselectItemAtIndexPath:v4 animated:1];
  }

LABEL_5:
}

- (void)updateHeaderButtonForSelectedAvatar:(id)a3 invalidateLayout:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v12 = a3;
  v8 = [(AVTSimpleAvatarPicker *)self headerView];

  if (v12 && v8)
  {
    if ([v12 isEditable])
    {
      v9 = [(AVTSimpleAvatarPicker *)self doesDisplayEditIconWhenAvailable];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(AVTSimpleAvatarPicker *)self headerView];
    [v10 updateForEditMode:v9 animated:v5];
  }

  v11 = [(AVTSimpleAvatarPicker *)self collectionViewLayout];
  [v11 setEnableEdgeDisappearing:{-[AVTSimpleAvatarPicker shouldShowHeaderButton](self, "shouldShowHeaderButton")}];
  if (v6)
  {
    [v11 invalidateLayout];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTSimpleAvatarPicker *)self dataSource:a3];
  v5 = [v4 numberOfItems];

  return v5;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x1E69DDC08];
  v12 = +[AVTSimpleAvatarPickerHeaderView reuseIdentifier];
  v13 = [v8 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v10];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __86__AVTSimpleAvatarPicker_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
  v19 = &unk_1E7F3AFD0;
  objc_copyWeak(&v20, &location);
  [v13 setButtonPressedBlock:&v16];
  [(AVTSimpleAvatarPicker *)self setHeaderView:v13, v16, v17, v18, v19];
  v14 = [(AVTSimpleAvatarPicker *)self selectedAvatar];
  [(AVTSimpleAvatarPicker *)self updateHeaderButtonForSelectedAvatar:v14 invalidateLayout:0 animated:0];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v13;
}

void __86__AVTSimpleAvatarPicker_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentActionsForSelectedAvatar];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTSimpleAvatarPicker *)self dataSource];
  v9 = [v8 itemAtIndex:{objc_msgSend(v6, "item")}];

  v10 = +[AVTSimpleAvatarPickerCollectionViewCell cellIdentifier];
  v11 = [v7 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v6];

  v12 = [MEMORY[0x1E696AFB0] UUID];
  [v11 setDisplaySessionUUID:v12];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__AVTSimpleAvatarPicker_collectionView_cellForItemAtIndexPath___block_invoke;
  v22[3] = &unk_1E7F3D480;
  v23 = v11;
  v24 = self;
  v25 = v9;
  v26 = v6;
  v27 = v12;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__AVTSimpleAvatarPicker_collectionView_cellForItemAtIndexPath___block_invoke_3;
  v19[3] = &unk_1E7F3BD68;
  v13 = v23;
  v20 = v13;
  v21 = self;
  v14 = v12;
  v15 = v6;
  v16 = v9;
  [v16 downcastWithRecordHandler:v22 imageHandler:v19 viewHandler:0];
  v17 = v13;

  return v13;
}

void __63__AVTSimpleAvatarPicker_collectionView_cellForItemAtIndexPath___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] setShowSelectedState:1];
  v4 = [v3 cachedImage];

  if (v4)
  {
    v5 = [v3 avatar];
    v6 = [v5 isEditable];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [a1[4] setImageInsetSize:v7];
    v10 = a1 + 4;
    v9 = a1[4];
    v8 = v10[1];
    v11 = [v3 cachedImage];
    [v8 updateCell:v9 withImage:v11 animated:0];
  }

  else
  {
    v12 = [a1[5] renderingScope];
    v13 = [AVTAvatarRecordCacheableResource alloc];
    v14 = [v3 avatar];
    v15 = [a1[5] dataSource];
    v16 = [v15 environment];
    v17 = [(AVTAvatarRecordCacheableResource *)v13 initWithAvatarRecord:v14 includeAvatarData:0 environment:v16];

    v18 = [a1[5] imageStore];
    v19 = [v18 imageForItem:v17 scope:v12];

    if (v19)
    {
      v20 = [v3 avatar];
      v21 = [v20 isEditable];

      if (v21)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      [a1[4] setImageInsetSize:v22];
      [a1[5] updateCell:a1[4] withImage:v19 animated:0];
    }

    else
    {
      v23 = objc_opt_new();
      v24 = [a1[5] imageProvider];
      v25 = [v3 avatar];
      v26 = [v24 providerForRecord:v25 scope:v12];

      [a1[5] cancelCurrentRenderingTaskForRecordItem:v3];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __63__AVTSimpleAvatarPicker_collectionView_cellForItemAtIndexPath___block_invoke_2;
      v33[3] = &unk_1E7F3D458;
      v33[4] = a1[5];
      v27 = v3;
      v34 = v27;
      v35 = a1[6];
      v36 = a1[7];
      v37 = a1[8];
      v38 = a1[4];
      v39 = v23;
      v28 = v26[2];
      v29 = v23;
      v30 = v28(v26, v33, 0);
      [a1[5] scheduleRenderingTask:v30 forRecordItem:v27];
      v31 = [v27 avatar];
      LODWORD(v28) = [v31 isEditable];

      if (v28)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      [a1[4] setImageInsetSize:v32];
    }
  }
}

void __63__AVTSimpleAvatarPicker_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) unregisterCurrentRenderingTaskForRecordItem:*(a1 + 40)];
  v3 = [*(a1 + 40) cachedImage];

  if (!v3)
  {
    [*(a1 + 40) setCachedImage:v6];
  }

  v4 = [*(a1 + 32) currentCellForRecordItem:*(a1 + 48) atIndexPath:*(a1 + 56) displaySessionUUID:*(a1 + 64) previousCell:*(a1 + 72)];
  if (v4)
  {
    [*(a1 + 80) timeIntervalSinceNow];
    [*(a1 + 32) updateCell:v4 withImage:v6 animated:v5 < -0.1];
  }
}

void __63__AVTSimpleAvatarPicker_collectionView_cellForItemAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setShowSelectedState:0];
  [*(a1 + 32) setImageInsetSize:0];
  v7 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = *(v7 + 8);
  v8 = [v4 image];

  [v6 updateCell:v5 withImage:v8 animated:0];
}

- (id)currentCellForRecordItem:(id)a3 atIndexPath:(id)a4 displaySessionUUID:(id)a5 previousCell:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [v12 displaySessionUUID];

  v15 = v12;
  if (v14 != v13)
  {
    v16 = [(AVTSimpleAvatarPicker *)self dataSource];
    v17 = [v16 itemAtIndex:{objc_msgSend(v11, "item")}];

    if (v17 != v10)
    {
      v18 = 0;
      v19 = v12;
      goto LABEL_9;
    }

    v20 = [(AVTSimpleAvatarPicker *)self collectionView];
    v21 = [v20 cellForItemAtIndexPath:v11];

    v22 = [(AVTSimpleAvatarPicker *)self collectionView];
    v23 = [v22 visibleCells];
    if ([v23 containsObject:v21])
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    v15 = v24;
  }

  v19 = v15;
  v18 = v19;
LABEL_9:

  return v18;
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(AVTSimpleAvatarPicker *)self dataSource];
  v8 = [v6 item];

  v9 = [v7 itemAtIndex:v8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__AVTSimpleAvatarPicker_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke;
  v10[3] = &unk_1E7F3D430;
  v10[4] = self;
  [v9 downcastWithRecordHandler:v10 viewHandler:0];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AVTSimpleAvatarPicker *)self dataSource];
  v7 = [v5 item];

  v8 = [v6 isItemAtIndexAddItem:v7];
  if (v8)
  {
    [(AVTSimpleAvatarPicker *)self presentMemojiEditorForCreation];
  }

  return v8 ^ 1;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 indexPathsForSelectedItems];
  v7 = [v6 firstObject];

  LOBYTE(v6) = [v7 isEqual:v5];
  if ((v6 & 1) == 0)
  {
    v8 = [v9 cellForItemAtIndexPath:v7];
    [v8 setSelected:0];
  }
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AVTSimpleAvatarPicker_collectionView_didUnhighlightItemAtIndexPath___block_invoke;
  v9[3] = &unk_1E7F3AD60;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __70__AVTSimpleAvatarPicker_collectionView_didUnhighlightItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexPathsForSelectedItems];
  v4 = [v2 firstObject];

  if (([v4 isEqual:*(a1 + 40)] & 1) == 0)
  {
    v3 = [*(a1 + 32) cellForItemAtIndexPath:v4];
    [v3 setSelected:1];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTSimpleAvatarPicker *)self avatarPickerDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = [(AVTSimpleAvatarPicker *)self dataSource];
    v11 = [v10 isItemAtIndexAddItem:{objc_msgSend(v7, "item")}];

    if ((v11 & 1) == 0)
    {
      [(AVTSimpleAvatarPicker *)self deselectPreviousSelectedItemExcludingIndexPath:v7];
      if ([(AVTSimpleAvatarPicker *)self isItemAtIndexPathOffscreen:v7])
      {
        [v6 scrollToItemAtIndexPath:v7 atScrollPosition:16 animated:1];
      }

      v12 = [(AVTSimpleAvatarPicker *)self dataSource];
      v13 = [v12 itemAtIndex:{objc_msgSend(v7, "item")}];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65__AVTSimpleAvatarPicker_collectionView_didSelectItemAtIndexPath___block_invoke;
      v14[3] = &unk_1E7F3D430;
      v14[4] = self;
      [v13 downcastWithRecordHandler:v14 imageHandler:0 viewHandler:0];
    }
  }
}

void __65__AVTSimpleAvatarPicker_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 avatarPickerDelegate];
  v6 = *(a1 + 32);
  v7 = [v4 avatar];
  [v5 avatarPicker:v6 didSelectAvatarRecord:v7];

  v8 = *(a1 + 32);
  v9 = [v4 avatar];

  [v8 updateHeaderButtonForSelectedAvatar:v9 invalidateLayout:1 animated:1];
}

- (void)scheduleRenderingTask:(id)a3 forRecordItem:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v6 avatar];
    v9 = [v8 identifier];
    v11 = [AVTStickerTask stickerTaskForSchedulerTask:v7 avatarRecordIdentifier:v9 indexPath:0 stickerType:0];

    v10 = [(AVTSimpleAvatarPicker *)self taskScheduler];
    [v10 scheduleStickerTask:v11];

    [(AVTSimpleAvatarPicker *)self registerRenderingTask:v7 forRecordItem:v6];
  }
}

- (id)currentRenderingTaskForRecordItem:(id)a3
{
  v4 = a3;
  v5 = [(AVTSimpleAvatarPicker *)self itemsToTasksMap];
  v6 = [v4 avatar];

  v7 = [v6 identifier];
  v8 = [v5 objectForKeyedSubscript:v7];

  return v8;
}

- (void)registerRenderingTask:(id)a3 forRecordItem:(id)a4
{
  v6 = a4;
  v10 = [a3 copy];
  v7 = [(AVTSimpleAvatarPicker *)self itemsToTasksMap];
  v8 = [v6 avatar];

  v9 = [v8 identifier];
  [v7 setObject:v10 forKeyedSubscript:v9];
}

- (void)cancelCurrentRenderingTaskForRecordItem:(id)a3
{
  v8 = a3;
  v4 = [(AVTSimpleAvatarPicker *)self currentRenderingTaskForRecordItem:?];
  if (v4)
  {
    v5 = [(AVTSimpleAvatarPicker *)self taskScheduler];
    v6 = [v8 avatar];
    v7 = [v6 identifier];
    [v5 cancelPickerTask:v4 avatarRecordIdentifier:v7];

    [(AVTSimpleAvatarPicker *)self unregisterCurrentRenderingTaskForRecordItem:v8];
  }
}

- (void)unregisterCurrentRenderingTaskForRecordItem:(id)a3
{
  v4 = a3;
  v7 = [(AVTSimpleAvatarPicker *)self itemsToTasksMap];
  v5 = [v4 avatar];

  v6 = [v5 identifier];
  [v7 setObject:0 forKeyedSubscript:v6];
}

- (CGSize)itemSize
{
  v3 = [(AVTSimpleAvatarPicker *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v6 = [(AVTSimpleAvatarPicker *)self collectionView];
  [v6 contentInset];
  v8 = v5 - v7;
  v9 = [(AVTSimpleAvatarPicker *)self collectionView];
  [v9 contentInset];
  v11 = v8 - v10;

  v12 = 44.0;
  if (v11 > 0.0)
  {
    v12 = v11;
  }

  v13 = v12;
  result.height = v13;
  result.width = v12;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = [(AVTSimpleAvatarPicker *)self shouldShowHeaderButton:a3];
  v7 = 0.0;
  if (v6)
  {
    [(AVTSimpleAvatarPicker *)self minimumInteritemSpacing];
    v7 = v8;
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  result.right = v11;
  result.bottom = v10;
  result.left = v7;
  result.top = v9;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  if ([(AVTSimpleAvatarPicker *)self shouldShowHeaderButton:a3])
  {
    [(AVTSimpleAvatarPicker *)self itemSize];
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)selectAvatarRecordWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v17 = a4;
  v5 = a3;
  v6 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__21;
  v27 = __Block_byref_object_dispose__21;
  v28 = 0;
  do
  {
    v7 = [(AVTSimpleAvatarPicker *)self dataSource];
    v8 = [v7 numberOfItems];

    if (v6 >= v8)
    {
      break;
    }

    v9 = [(AVTSimpleAvatarPicker *)self dataSource];
    v10 = [v9 itemAtIndex:v6];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__AVTSimpleAvatarPicker_selectAvatarRecordWithIdentifier_animated___block_invoke;
    v18[3] = &unk_1E7F3D4A8;
    v19 = v5;
    v20 = &v29;
    v21 = &v23;
    v22 = v6;
    [v10 downcastWithRecordHandler:v18 imageHandler:0 viewHandler:0];
    v11 = v30[3];

    ++v6;
  }

  while (v11 == 0x7FFFFFFFFFFFFFFFLL);
  v12 = v30[3];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:v12 inSection:0];
    [(AVTSimpleAvatarPicker *)self deselectPreviousSelectedItemExcludingIndexPath:v13];
    if ([(AVTSimpleAvatarPicker *)self isItemAtIndexPathOffscreen:v13])
    {
      v14 = 16;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(AVTSimpleAvatarPicker *)self collectionView];
    [v15 layoutIfNeeded];

    v16 = [(AVTSimpleAvatarPicker *)self collectionView];
    [v16 selectItemAtIndexPath:v13 animated:v17 scrollPosition:v14];

    [(AVTSimpleAvatarPicker *)self updateHeaderButtonForSelectedAvatar:v24[5] invalidateLayout:1 animated:v17];
  }

  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
}

void __67__AVTSimpleAvatarPicker_selectAvatarRecordWithIdentifier_animated___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 avatar];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:a1[4]];

  if (v5)
  {
    *(*(a1[5] + 8) + 24) = a1[7];
    v6 = [v9 avatar];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (BOOL)isItemAtIndexPathOffscreen:(id)a3
{
  v4 = a3;
  v5 = [(AVTSimpleAvatarPicker *)self collectionView];
  v6 = [v5 layoutAttributesForItemAtIndexPath:v4];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(AVTSimpleAvatarPicker *)self collectionView];
  [v15 contentOffset];
  v17 = v8 - v16;

  v40.origin.x = v17;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  MaxX = CGRectGetMaxX(v40);
  v19 = [(AVTSimpleAvatarPicker *)self collectionView];
  [v19 frame];
  if (MaxX > CGRectGetMaxX(v41))
  {

LABEL_7:
    v38 = 1;
    goto LABEL_8;
  }

  v42.origin.x = v17;
  v42.origin.y = v10;
  v42.size.width = v12;
  v42.size.height = v14;
  MinX = CGRectGetMinX(v42);
  v21 = [(AVTSimpleAvatarPicker *)self collectionView];
  [v21 frame];
  v22 = CGRectGetMinX(v43);

  if (MinX < v22)
  {
    goto LABEL_7;
  }

  if ([(AVTSimpleAvatarPicker *)self shouldShowHeaderButton])
  {
    v23 = [(AVTSimpleAvatarPicker *)self headerView];
    [v23 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [(AVTSimpleAvatarPicker *)self minimumInteritemSpacing];
    v33 = -v32;
    v44.origin.x = v25;
    v44.origin.y = v27;
    v44.size.width = v29;
    v44.size.height = v31;
    v45 = CGRectInset(v44, v33, 0.0);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;

    [v6 frame];
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    if (CGRectIntersectsRect(v46, v47))
    {
      goto LABEL_7;
    }
  }

  v38 = 0;
LABEL_8:

  return v38;
}

- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4
{
  [(AVTSimpleAvatarPicker *)self presentedAvatarRecord:a4];
  v5 = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  [v5 dismissAvatarUIControllerAnimated:1];
}

- (void)avatarEditorViewControllerDidCancel:(id)a3
{
  v3 = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  [v3 dismissAvatarUIControllerAnimated:1];
}

- (void)avatarActionsViewControllerDidFinish:(id)a3
{
  v3 = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  [v3 dismissAvatarUIControllerAnimated:1];
}

- (id)avatarActionsViewController:(id)a3 recordUpdateForDeletingRecord:(id)a4
{
  v5 = a4;
  v6 = [(AVTSimpleAvatarPicker *)self dataSource];
  v7 = [v6 recordDataSource];
  v8 = [AVTAvatarActionsRecordUpdate recordUpdateForDeletingRecord:v5 withDataSource:v7];

  if (v8)
  {
    v9 = [v8 avatarRecord];

    if (v9)
    {
      v10 = [(AVTSimpleAvatarPicker *)self avatarPickerDelegate];
      v11 = [v8 avatarRecord];
      [v10 avatarPicker:self didSelectAvatarRecord:v11];

      v12 = [v8 avatarRecord];
      [(AVTSimpleAvatarPicker *)self presentedAvatarRecord:v12];

      v13 = [v8 avatarRecord];
      [(AVTSimpleAvatarPicker *)self updateHeaderButtonForSelectedAvatar:v13 invalidateLayout:1 animated:1];
    }
  }

  return v8;
}

- (void)presentedAvatarRecord:(id)a3
{
  v7 = a3;
  v4 = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTSimpleAvatarPicker *)self presenterDelegate];
    [v6 presentedAvatarRecord:v7];
  }
}

- (void)notifyingContainerViewWillChangeSize:(CGSize)a3
{
  v4 = [(AVTSimpleAvatarPicker *)self view:a3.width];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);

  if (v6 != v9 || v8 != v10)
  {
    v13 = [(AVTSimpleAvatarPicker *)self collectionView];
    v12 = [v13 collectionViewLayout];
    [v12 invalidateLayout];
  }
}

- (void)notifyingContainerViewDidChangeSize:(CGSize)a3
{
  v4 = [(AVTSimpleAvatarPicker *)self collectionView:a3.width];
  v5 = [v4 indexPathsForSelectedItems];
  v8 = [v5 firstObject];

  if (v8 && [(AVTSimpleAvatarPicker *)self isItemAtIndexPathOffscreen:v8])
  {
    v6 = [(AVTSimpleAvatarPicker *)self collectionView];
    [v6 layoutIfNeeded];

    v7 = [(AVTSimpleAvatarPicker *)self collectionView];
    [v7 scrollToItemAtIndexPath:v8 atScrollPosition:16 animated:1];
  }
}

- (void)updateCell:(id)a3 withImage:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(AVTSimpleAvatarPicker *)self imageDelegate];

  if (v10)
  {
    v11 = [v8 displaySessionUUID];
    v12 = [(AVTSimpleAvatarPicker *)self imageDelegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__AVTSimpleAvatarPicker_updateCell_withImage_animated___block_invoke;
    v14[3] = &unk_1E7F3D4D0;
    v15 = v8;
    v16 = v11;
    v17 = v5;
    v13 = v11;
    [v12 viewWillUpdateWithImage:v9 completion:v14];
  }

  else
  {
    [v8 updateWithImage:v9 animated:v5];
  }
}

void __55__AVTSimpleAvatarPicker_updateCell_withImage_animated___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) displaySessionUUID];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    [*(a1 + 32) updateWithImage:v5 animated:*(a1 + 48)];
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

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (AVTStickerViewControllerImageDelegate)imageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageDelegate);

  return WeakRetained;
}

- (AVTSimpleAvatarPickerHeaderView)headerView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerView);

  return WeakRetained;
}

@end