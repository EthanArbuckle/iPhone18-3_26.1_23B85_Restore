@interface AVTSimpleAvatarPicker
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTSimpleAvatarPicker)initWithDataSource:(id)source recordImageProvider:(id)provider avtViewSessionProvider:(id)sessionProvider taskScheduler:(id)scheduler allowEditing:(BOOL)editing interItemSpacing:(double)spacing shouldReverseNaturalLayout:(BOOL)layout;
- (AVTSimpleAvatarPicker)initWithStore:(id)store environment:(id)environment allowAddItem:(BOOL)item interItemSpacing:(double)spacing shouldReverseNaturalLayout:(BOOL)layout;
- (AVTSimpleAvatarPickerHeaderView)headerView;
- (AVTStickerViewControllerImageDelegate)imageDelegate;
- (BOOL)canCreateAvatar;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)isItemAtIndexPathOffscreen:(id)offscreen;
- (BOOL)shouldShowHeaderButton;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)itemSize;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)contentInset;
- (UIView)view;
- (id)actionsModelForRecord:(id)record;
- (id)avatarActionsViewController:(id)controller recordUpdateForDeletingRecord:(id)record;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)currentCellForRecordItem:(id)item atIndexPath:(id)path displaySessionUUID:(id)d previousCell:(id)cell;
- (id)currentRenderingTaskForRecordItem:(id)item;
- (id)selectedAvatar;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)indexForSelectedAvatar;
- (void)avatarActionsViewControllerDidFinish:(id)finish;
- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record;
- (void)avatarEditorViewControllerDidCancel:(id)cancel;
- (void)cancelCurrentRenderingTaskForRecordItem:(id)item;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)deselectPreviousSelectedItemExcludingIndexPath:(id)path;
- (void)loadView;
- (void)notifyingContainerViewDidChangeSize:(CGSize)size;
- (void)notifyingContainerViewWillChangeSize:(CGSize)size;
- (void)presentActionsForAvatarRecord:(id)record;
- (void)presentActionsForSelectedAvatar;
- (void)presentMemojiEditorForCreation;
- (void)presentedAvatarRecord:(id)record;
- (void)registerRenderingTask:(id)task forRecordItem:(id)item;
- (void)reloadData;
- (void)reloadDataSource;
- (void)renderThumbnailsIfNeeded;
- (void)scheduleRenderingTask:(id)task forRecordItem:(id)item;
- (void)scrollToInitialPositionIfNeeded;
- (void)selectAvatarRecordWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)setAllowEditing:(BOOL)editing;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setMinimumInteritemSpacing:(double)spacing;
- (void)unregisterCurrentRenderingTaskForRecordItem:(id)item;
- (void)updateCell:(id)cell withImage:(id)image animated:(BOOL)animated;
- (void)updateHeaderButtonForSelectedAvatar:(id)avatar invalidateLayout:(BOOL)layout animated:(BOOL)animated;
- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated;
@end

@implementation AVTSimpleAvatarPicker

- (AVTSimpleAvatarPicker)initWithStore:(id)store environment:(id)environment allowAddItem:(BOOL)item interItemSpacing:(double)spacing shouldReverseNaturalLayout:(BOOL)layout
{
  layoutCopy = layout;
  itemCopy = item;
  environmentCopy = environment;
  storeCopy = store;
  v13 = [AVTAvatarRecordDataSource alloc];
  requestForAllAvatars = [MEMORY[0x1E698E310] requestForAllAvatars];
  v15 = [(AVTAvatarRecordDataSource *)v13 initWithRecordStore:storeCopy fetchRequest:requestForAllAvatars environment:environmentCopy];

  v16 = [[AVTAvatarPickerDataSource alloc] initWithRecordDataSource:v15 environment:environmentCopy allowAddItem:itemCopy];
  v17 = [AVTStickerTaskScheduler schedulerWithRecordDataSource:v15];
  v18 = [_AVTAvatarRecordImageProvider alloc];
  environment = [(AVTAvatarPickerDataSource *)v16 environment];
  v20 = [(_AVTAvatarRecordImageProvider *)v18 initWithEnvironment:environment taskScheduler:0];

  v21 = [AVTViewSessionProvider alloc];
  environment2 = [(AVTAvatarPickerDataSource *)v16 environment];
  [AVTViewSessionProvider backingSizeForEnvironment:environment2];
  v24 = v23;
  v26 = v25;
  v27 = +[AVTViewSessionProvider creatorForAVTView];
  environment3 = [(AVTAvatarPickerDataSource *)v16 environment];
  v29 = [(AVTViewSessionProvider *)v21 initWithAVTViewBackingSize:v27 viewCreator:environment3 environment:v24, v26];

  v30 = [(AVTSimpleAvatarPicker *)self initWithDataSource:v16 recordImageProvider:v20 avtViewSessionProvider:v29 taskScheduler:v17 allowEditing:itemCopy interItemSpacing:layoutCopy shouldReverseNaturalLayout:spacing];
  return v30;
}

- (AVTSimpleAvatarPicker)initWithDataSource:(id)source recordImageProvider:(id)provider avtViewSessionProvider:(id)sessionProvider taskScheduler:(id)scheduler allowEditing:(BOOL)editing interItemSpacing:(double)spacing shouldReverseNaturalLayout:(BOOL)layout
{
  sourceCopy = source;
  providerCopy = provider;
  sessionProviderCopy = sessionProvider;
  schedulerCopy = scheduler;
  v35.receiver = self;
  v35.super_class = AVTSimpleAvatarPicker;
  v20 = [(AVTSimpleAvatarPicker *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_dataSource, source);
    v22 = +[AVTRenderingScope simplePickerThumbnailScope];
    renderingScope = v21->_renderingScope;
    v21->_renderingScope = v22;

    objc_storeStrong(&v21->_imageProvider, provider);
    v21->_minimumInteritemSpacing = spacing;
    v21->_allowEditing = editing;
    v21->_doesDisplayEditIconWhenAvailable = 1;
    objc_storeStrong(&v21->_taskScheduler, scheduler);
    objc_storeStrong(&v21->_viewSessionProvider, sessionProvider);
    v21->_shouldReverseNaturalLayout = layout;
    v24 = [AVTImageStore alloc];
    environment = [sourceCopy environment];
    coreEnvironment = [environment coreEnvironment];
    environment2 = [sourceCopy environment];
    imageStoreLocation = [environment2 imageStoreLocation];
    v29 = [(AVTImageStore *)v24 initWithEnvironment:coreEnvironment validateImages:0 location:imageStoreLocation];
    imageStore = v21->_imageStore;
    v21->_imageStore = v29;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    itemsToTasksMap = v21->_itemsToTasksMap;
    v21->_itemsToTasksMap = dictionary;
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

- (void)setMinimumInteritemSpacing:(double)spacing
{
  if (self->_minimumInteritemSpacing != spacing)
  {
    self->_minimumInteritemSpacing = spacing;
    collectionViewLayout = [(AVTSimpleAvatarPicker *)self collectionViewLayout];
    [collectionViewLayout setMinimumLineSpacing:spacing];
    [collectionViewLayout setMinimumInteritemSpacing:spacing];
    [collectionViewLayout invalidateLayout];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:clearColor];

  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  environment = [dataSource environment];
  [v7 setShowsHorizontalScrollIndicator:{objc_msgSend(environment, "deviceIsMac")}];

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
    dataSource2 = [(AVTSimpleAvatarPicker *)self dataSource];
    environment2 = [dataSource2 environment];
    if ([environment2 userInterfaceLayoutDirection])
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    [v7 setSemanticContentAttribute:v18];
  }

  layer = [v7 layer];
  [layer setMasksToBounds:0];

  [(AVTSimpleAvatarPicker *)self setCollectionView:v7];
  v20 = [[AVTNotifyingContainerView alloc] initWithFrame:v3, v4, v5, v6];
  [(AVTNotifyingContainerView *)v20 setDelegate:self];
  [(AVTNotifyingContainerView *)v20 addSubview:v7];
  [(AVTSimpleAvatarPicker *)self setView:v20];
  [(AVTSimpleAvatarPicker *)self renderThumbnailsIfNeeded];
  [(AVTSimpleAvatarPicker *)self scrollToInitialPositionIfNeeded];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    right = inset.right;
    left = inset.left;
    bottom = inset.bottom;
    top = inset.top;
    collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
    [collectionView setContentInset:{top, left, bottom, right}];
  }
}

- (void)setAllowEditing:(BOOL)editing
{
  if (self->_allowEditing != editing)
  {
    self->_allowEditing = editing;
    [(AVTSimpleAvatarPicker *)self reloadData];
  }
}

- (void)renderThumbnailsIfNeeded
{
  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  numberOfItems = [dataSource numberOfItems];

  if (numberOfItems >= 1)
  {
    for (i = 0; i != numberOfItems; ++i)
    {
      dataSource2 = [(AVTSimpleAvatarPicker *)self dataSource];
      v7 = [dataSource2 itemAtIndex:i];

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
    collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

    shouldShowHeaderButton = [(AVTSimpleAvatarPicker *)self shouldShowHeaderButton];
    collectionViewLayout = [(AVTSimpleAvatarPicker *)self collectionViewLayout];
    [collectionViewLayout setEnableEdgeDisappearing:shouldShowHeaderButton];

    collectionView2 = [(AVTSimpleAvatarPicker *)self collectionView];
    [collectionView2 reloadData];

    collectionView3 = [(AVTSimpleAvatarPicker *)self collectionView];
    [collectionView3 layoutIfNeeded];

    if ([indexPathsForSelectedItems count])
    {
      collectionView4 = [(AVTSimpleAvatarPicker *)self collectionView];
      firstObject = [indexPathsForSelectedItems firstObject];
      [collectionView4 selectItemAtIndexPath:firstObject animated:0 scrollPosition:16];
    }

    objc_sync_exit(obj);
  }
}

- (void)reloadDataSource
{
  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  [dataSource reloadModel];

  [(AVTSimpleAvatarPicker *)self reloadData];
}

- (int64_t)indexForSelectedAvatar
{
  collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  if ([indexPathsForSelectedItems count])
  {
    firstObject = [indexPathsForSelectedItems firstObject];
    item = [firstObject item];
  }

  else
  {
    item = 0x7FFFFFFFFFFFFFFFLL;
  }

  return item;
}

- (id)selectedAvatar
{
  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  v4 = [dataSource itemAtIndex:{-[AVTSimpleAvatarPicker indexForSelectedAvatar](self, "indexForSelectedAvatar")}];

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
  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  recordDataSource = [dataSource recordDataSource];
  recordStore = [recordDataSource recordStore];
  canCreateAvatar = [recordStore canCreateAvatar];

  return canCreateAvatar;
}

- (BOOL)shouldShowHeaderButton
{
  if ([(AVTSimpleAvatarPicker *)self allowEditing])
  {
    selectedAvatar = [(AVTSimpleAvatarPicker *)self selectedAvatar];
    if (selectedAvatar)
    {
      if ([(AVTSimpleAvatarPicker *)self doesDisplayEditIconWhenAvailable])
      {
        if ([selectedAvatar isEditable])
        {
          goto LABEL_5;
        }

        if ([selectedAvatar isEditable])
        {
          canCreateAvatar = 0;
          goto LABEL_10;
        }
      }

      canCreateAvatar = [(AVTSimpleAvatarPicker *)self canCreateAvatar];
      goto LABEL_10;
    }

LABEL_5:
    canCreateAvatar = 1;
LABEL_10:

    return canCreateAvatar;
  }

  return 0;
}

- (void)presentActionsForSelectedAvatar
{
  selectedAvatar = [(AVTSimpleAvatarPicker *)self selectedAvatar];
  if ([selectedAvatar isEditable] && -[AVTSimpleAvatarPicker doesDisplayEditIconWhenAvailable](self, "doesDisplayEditIconWhenAvailable"))
  {
    [(AVTSimpleAvatarPicker *)self presentActionsForAvatarRecord:selectedAvatar];
  }

  else
  {
    avatarPickerDelegate = [(AVTSimpleAvatarPicker *)self avatarPickerDelegate];
    v4 = objc_opt_respondsToSelector();

    if ((v4 & 1) == 0 || (-[AVTSimpleAvatarPicker avatarPickerDelegate](self, "avatarPickerDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 avatarPicker:self shouldPresentMemojiEditorForAvatarRecord:selectedAvatar], v5, v6))
    {
      [(AVTSimpleAvatarPicker *)self presentMemojiEditorForCreation];
    }
  }
}

- (id)actionsModelForRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy isEditable])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", recordCopy}];
    }

    v5 = recordCopy;
    v6 = [AVTAvatarActionsProvider alloc];
    dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
    recordDataSource = [dataSource recordDataSource];
    v9 = [(AVTAvatarActionsProvider *)v6 initWithAvatarRecord:v5 dataSource:recordDataSource allowCreate:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)presentActionsForAvatarRecord:(id)record
{
  recordCopy = record;
  if (([recordCopy isEditable] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Record %@ is not editable!", recordCopy}];
  }

  v4 = [(AVTSimpleAvatarPicker *)self actionsModelForRecord:recordCopy];
  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  environment = [dataSource environment];

  v7 = [AVTAvatarInlineActionsController alloc];
  dataSource2 = [(AVTSimpleAvatarPicker *)self dataSource];
  recordDataSource = [dataSource2 recordDataSource];
  viewSessionProvider = [(AVTSimpleAvatarPicker *)self viewSessionProvider];
  v11 = [(AVTAvatarInlineActionsController *)v7 initWithDataSource:recordDataSource avtViewProvider:viewSessionProvider environment:environment];

  [(AVTAvatarInlineActionsController *)v11 setShouldHideUserInfoView:[(AVTSimpleAvatarPicker *)self shouldHideUserInfoView]];
  [(AVTAvatarInlineActionsController *)v11 updateWithActionsModel:v4];
  v12 = [AVTAvatarActionsViewController alloc];
  viewSessionProvider2 = [(AVTSimpleAvatarPicker *)self viewSessionProvider];
  v14 = [(AVTAvatarActionsViewController *)v12 initWithAVTViewSessionProvider:viewSessionProvider2 actionsController:v11 environment:environment];

  [(AVTAvatarActionsViewController *)v14 setDelegate:self];
  [(AVTAvatarActionsViewController *)v14 setShouldHideUserInfoView:[(AVTSimpleAvatarPicker *)self shouldHideUserInfoView]];
  [(AVTSimpleAvatarPicker *)self wrapAndPresentViewController:v14 animated:1];
}

- (void)presentMemojiEditorForCreation
{
  presenterDelegate = [(AVTSimpleAvatarPicker *)self presenterDelegate];

  if (presenterDelegate)
  {
    dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
    store = [dataSource store];
    viewSessionProvider = [(AVTSimpleAvatarPicker *)self viewSessionProvider];
    v7 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:store avtViewSessionProvider:viewSessionProvider];

    [v7 setDelegate:self];
    [v7 setShouldHideUserInfoView:{-[AVTSimpleAvatarPicker shouldHideUserInfoView](self, "shouldHideUserInfoView")}];
    [(AVTSimpleAvatarPicker *)self wrapAndPresentViewController:v7 animated:1];
  }
}

- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated
{
  animated = [AVTUIControllerPresentation presentationWithWrappingForController:controller, animated];
  presenterDelegate = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  [presenterDelegate presentAvatarUIController:animated animated:1];
}

- (void)deselectPreviousSelectedItemExcludingIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  if ([indexPathsForSelectedItems count])
  {
    collectionView2 = [(AVTSimpleAvatarPicker *)self collectionView];
    indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems2 firstObject];
    v9 = [firstObject isEqual:pathCopy];

    if (v9)
    {
      goto LABEL_5;
    }

    collectionView3 = [(AVTSimpleAvatarPicker *)self collectionView];
    indexPathsForSelectedItems3 = [collectionView3 indexPathsForSelectedItems];
    collectionView = [indexPathsForSelectedItems3 firstObject];

    indexPathsForSelectedItems = [(AVTSimpleAvatarPicker *)self collectionView];
    [indexPathsForSelectedItems deselectItemAtIndexPath:collectionView animated:1];
  }

LABEL_5:
}

- (void)updateHeaderButtonForSelectedAvatar:(id)avatar invalidateLayout:(BOOL)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  layoutCopy = layout;
  avatarCopy = avatar;
  headerView = [(AVTSimpleAvatarPicker *)self headerView];

  if (avatarCopy && headerView)
  {
    if ([avatarCopy isEditable])
    {
      doesDisplayEditIconWhenAvailable = [(AVTSimpleAvatarPicker *)self doesDisplayEditIconWhenAvailable];
    }

    else
    {
      doesDisplayEditIconWhenAvailable = 0;
    }

    headerView2 = [(AVTSimpleAvatarPicker *)self headerView];
    [headerView2 updateForEditMode:doesDisplayEditIconWhenAvailable animated:animatedCopy];
  }

  collectionViewLayout = [(AVTSimpleAvatarPicker *)self collectionViewLayout];
  [collectionViewLayout setEnableEdgeDisappearing:{-[AVTSimpleAvatarPicker shouldShowHeaderButton](self, "shouldShowHeaderButton")}];
  if (layoutCopy)
  {
    [collectionViewLayout invalidateLayout];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTSimpleAvatarPicker *)self dataSource:view];
  numberOfItems = [v4 numberOfItems];

  return numberOfItems;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = *MEMORY[0x1E69DDC08];
  v12 = +[AVTSimpleAvatarPickerHeaderView reuseIdentifier];
  v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:pathCopy];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __86__AVTSimpleAvatarPicker_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
  v19 = &unk_1E7F3AFD0;
  objc_copyWeak(&v20, &location);
  [v13 setButtonPressedBlock:&v16];
  [(AVTSimpleAvatarPicker *)self setHeaderView:v13, v16, v17, v18, v19];
  selectedAvatar = [(AVTSimpleAvatarPicker *)self selectedAvatar];
  [(AVTSimpleAvatarPicker *)self updateHeaderButtonForSelectedAvatar:selectedAvatar invalidateLayout:0 animated:0];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v13;
}

void __86__AVTSimpleAvatarPicker_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentActionsForSelectedAvatar];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  v9 = [dataSource itemAtIndex:{objc_msgSend(pathCopy, "item")}];

  v10 = +[AVTSimpleAvatarPickerCollectionViewCell cellIdentifier];
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v11 setDisplaySessionUUID:uUID];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__AVTSimpleAvatarPicker_collectionView_cellForItemAtIndexPath___block_invoke;
  v22[3] = &unk_1E7F3D480;
  v23 = v11;
  selfCopy = self;
  v25 = v9;
  v26 = pathCopy;
  v27 = uUID;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__AVTSimpleAvatarPicker_collectionView_cellForItemAtIndexPath___block_invoke_3;
  v19[3] = &unk_1E7F3BD68;
  v13 = v23;
  v20 = v13;
  selfCopy2 = self;
  v14 = uUID;
  v15 = pathCopy;
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

- (id)currentCellForRecordItem:(id)item atIndexPath:(id)path displaySessionUUID:(id)d previousCell:(id)cell
{
  itemCopy = item;
  pathCopy = path;
  cellCopy = cell;
  dCopy = d;
  displaySessionUUID = [cellCopy displaySessionUUID];

  v15 = cellCopy;
  if (displaySessionUUID != dCopy)
  {
    dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
    v17 = [dataSource itemAtIndex:{objc_msgSend(pathCopy, "item")}];

    if (v17 != itemCopy)
    {
      v18 = 0;
      v19 = cellCopy;
      goto LABEL_9;
    }

    collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
    v21 = [collectionView cellForItemAtIndexPath:pathCopy];

    collectionView2 = [(AVTSimpleAvatarPicker *)self collectionView];
    visibleCells = [collectionView2 visibleCells];
    if ([visibleCells containsObject:v21])
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

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  item = [pathCopy item];

  v9 = [dataSource itemAtIndex:item];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__AVTSimpleAvatarPicker_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke;
  v10[3] = &unk_1E7F3D430;
  v10[4] = self;
  [v9 downcastWithRecordHandler:v10 viewHandler:0];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  item = [pathCopy item];

  v8 = [dataSource isItemAtIndexAddItem:item];
  if (v8)
  {
    [(AVTSimpleAvatarPicker *)self presentMemojiEditorForCreation];
  }

  return v8 ^ 1;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  LOBYTE(indexPathsForSelectedItems) = [firstObject isEqual:pathCopy];
  if ((indexPathsForSelectedItems & 1) == 0)
  {
    v8 = [viewCopy cellForItemAtIndexPath:firstObject];
    [v8 setSelected:0];
  }
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AVTSimpleAvatarPicker_collectionView_didUnhighlightItemAtIndexPath___block_invoke;
  v9[3] = &unk_1E7F3AD60;
  v10 = viewCopy;
  v11 = pathCopy;
  v7 = pathCopy;
  v8 = viewCopy;
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  avatarPickerDelegate = [(AVTSimpleAvatarPicker *)self avatarPickerDelegate];
  if (avatarPickerDelegate)
  {
    v9 = avatarPickerDelegate;
    dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
    v11 = [dataSource isItemAtIndexAddItem:{objc_msgSend(pathCopy, "item")}];

    if ((v11 & 1) == 0)
    {
      [(AVTSimpleAvatarPicker *)self deselectPreviousSelectedItemExcludingIndexPath:pathCopy];
      if ([(AVTSimpleAvatarPicker *)self isItemAtIndexPathOffscreen:pathCopy])
      {
        [viewCopy scrollToItemAtIndexPath:pathCopy atScrollPosition:16 animated:1];
      }

      dataSource2 = [(AVTSimpleAvatarPicker *)self dataSource];
      v13 = [dataSource2 itemAtIndex:{objc_msgSend(pathCopy, "item")}];

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

- (void)scheduleRenderingTask:(id)task forRecordItem:(id)item
{
  if (task)
  {
    itemCopy = item;
    taskCopy = task;
    avatar = [itemCopy avatar];
    identifier = [avatar identifier];
    v11 = [AVTStickerTask stickerTaskForSchedulerTask:taskCopy avatarRecordIdentifier:identifier indexPath:0 stickerType:0];

    taskScheduler = [(AVTSimpleAvatarPicker *)self taskScheduler];
    [taskScheduler scheduleStickerTask:v11];

    [(AVTSimpleAvatarPicker *)self registerRenderingTask:taskCopy forRecordItem:itemCopy];
  }
}

- (id)currentRenderingTaskForRecordItem:(id)item
{
  itemCopy = item;
  itemsToTasksMap = [(AVTSimpleAvatarPicker *)self itemsToTasksMap];
  avatar = [itemCopy avatar];

  identifier = [avatar identifier];
  v8 = [itemsToTasksMap objectForKeyedSubscript:identifier];

  return v8;
}

- (void)registerRenderingTask:(id)task forRecordItem:(id)item
{
  itemCopy = item;
  v10 = [task copy];
  itemsToTasksMap = [(AVTSimpleAvatarPicker *)self itemsToTasksMap];
  avatar = [itemCopy avatar];

  identifier = [avatar identifier];
  [itemsToTasksMap setObject:v10 forKeyedSubscript:identifier];
}

- (void)cancelCurrentRenderingTaskForRecordItem:(id)item
{
  itemCopy = item;
  v4 = [(AVTSimpleAvatarPicker *)self currentRenderingTaskForRecordItem:?];
  if (v4)
  {
    taskScheduler = [(AVTSimpleAvatarPicker *)self taskScheduler];
    avatar = [itemCopy avatar];
    identifier = [avatar identifier];
    [taskScheduler cancelPickerTask:v4 avatarRecordIdentifier:identifier];

    [(AVTSimpleAvatarPicker *)self unregisterCurrentRenderingTaskForRecordItem:itemCopy];
  }
}

- (void)unregisterCurrentRenderingTaskForRecordItem:(id)item
{
  itemCopy = item;
  itemsToTasksMap = [(AVTSimpleAvatarPicker *)self itemsToTasksMap];
  avatar = [itemCopy avatar];

  identifier = [avatar identifier];
  [itemsToTasksMap setObject:0 forKeyedSubscript:identifier];
}

- (CGSize)itemSize
{
  collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  collectionView2 = [(AVTSimpleAvatarPicker *)self collectionView];
  [collectionView2 contentInset];
  v8 = v5 - v7;
  collectionView3 = [(AVTSimpleAvatarPicker *)self collectionView];
  [collectionView3 contentInset];
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

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = [(AVTSimpleAvatarPicker *)self shouldShowHeaderButton:view];
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  if ([(AVTSimpleAvatarPicker *)self shouldShowHeaderButton:view])
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

- (void)selectAvatarRecordWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
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
    dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
    numberOfItems = [dataSource numberOfItems];

    if (v6 >= numberOfItems)
    {
      break;
    }

    dataSource2 = [(AVTSimpleAvatarPicker *)self dataSource];
    v10 = [dataSource2 itemAtIndex:v6];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__AVTSimpleAvatarPicker_selectAvatarRecordWithIdentifier_animated___block_invoke;
    v18[3] = &unk_1E7F3D4A8;
    v19 = identifierCopy;
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

    collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
    [collectionView layoutIfNeeded];

    collectionView2 = [(AVTSimpleAvatarPicker *)self collectionView];
    [collectionView2 selectItemAtIndexPath:v13 animated:animatedCopy scrollPosition:v14];

    [(AVTSimpleAvatarPicker *)self updateHeaderButtonForSelectedAvatar:v24[5] invalidateLayout:1 animated:animatedCopy];
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

- (BOOL)isItemAtIndexPathOffscreen:(id)offscreen
{
  offscreenCopy = offscreen;
  collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
  v6 = [collectionView layoutAttributesForItemAtIndexPath:offscreenCopy];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  collectionView2 = [(AVTSimpleAvatarPicker *)self collectionView];
  [collectionView2 contentOffset];
  v17 = v8 - v16;

  v40.origin.x = v17;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  MaxX = CGRectGetMaxX(v40);
  collectionView3 = [(AVTSimpleAvatarPicker *)self collectionView];
  [collectionView3 frame];
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
  collectionView4 = [(AVTSimpleAvatarPicker *)self collectionView];
  [collectionView4 frame];
  v22 = CGRectGetMinX(v43);

  if (MinX < v22)
  {
    goto LABEL_7;
  }

  if ([(AVTSimpleAvatarPicker *)self shouldShowHeaderButton])
  {
    headerView = [(AVTSimpleAvatarPicker *)self headerView];
    [headerView frame];
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

- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record
{
  [(AVTSimpleAvatarPicker *)self presentedAvatarRecord:record];
  presenterDelegate = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:1];
}

- (void)avatarEditorViewControllerDidCancel:(id)cancel
{
  presenterDelegate = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:1];
}

- (void)avatarActionsViewControllerDidFinish:(id)finish
{
  presenterDelegate = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:1];
}

- (id)avatarActionsViewController:(id)controller recordUpdateForDeletingRecord:(id)record
{
  recordCopy = record;
  dataSource = [(AVTSimpleAvatarPicker *)self dataSource];
  recordDataSource = [dataSource recordDataSource];
  v8 = [AVTAvatarActionsRecordUpdate recordUpdateForDeletingRecord:recordCopy withDataSource:recordDataSource];

  if (v8)
  {
    avatarRecord = [v8 avatarRecord];

    if (avatarRecord)
    {
      avatarPickerDelegate = [(AVTSimpleAvatarPicker *)self avatarPickerDelegate];
      avatarRecord2 = [v8 avatarRecord];
      [avatarPickerDelegate avatarPicker:self didSelectAvatarRecord:avatarRecord2];

      avatarRecord3 = [v8 avatarRecord];
      [(AVTSimpleAvatarPicker *)self presentedAvatarRecord:avatarRecord3];

      avatarRecord4 = [v8 avatarRecord];
      [(AVTSimpleAvatarPicker *)self updateHeaderButtonForSelectedAvatar:avatarRecord4 invalidateLayout:1 animated:1];
    }
  }

  return v8;
}

- (void)presentedAvatarRecord:(id)record
{
  recordCopy = record;
  presenterDelegate = [(AVTSimpleAvatarPicker *)self presenterDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    presenterDelegate2 = [(AVTSimpleAvatarPicker *)self presenterDelegate];
    [presenterDelegate2 presentedAvatarRecord:recordCopy];
  }
}

- (void)notifyingContainerViewWillChangeSize:(CGSize)size
{
  v4 = [(AVTSimpleAvatarPicker *)self view:size.width];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);

  if (v6 != v9 || v8 != v10)
  {
    collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (void)notifyingContainerViewDidChangeSize:(CGSize)size
{
  v4 = [(AVTSimpleAvatarPicker *)self collectionView:size.width];
  indexPathsForSelectedItems = [v4 indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject && [(AVTSimpleAvatarPicker *)self isItemAtIndexPathOffscreen:firstObject])
  {
    collectionView = [(AVTSimpleAvatarPicker *)self collectionView];
    [collectionView layoutIfNeeded];

    collectionView2 = [(AVTSimpleAvatarPicker *)self collectionView];
    [collectionView2 scrollToItemAtIndexPath:firstObject atScrollPosition:16 animated:1];
  }
}

- (void)updateCell:(id)cell withImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  imageCopy = image;
  imageDelegate = [(AVTSimpleAvatarPicker *)self imageDelegate];

  if (imageDelegate)
  {
    displaySessionUUID = [cellCopy displaySessionUUID];
    imageDelegate2 = [(AVTSimpleAvatarPicker *)self imageDelegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__AVTSimpleAvatarPicker_updateCell_withImage_animated___block_invoke;
    v14[3] = &unk_1E7F3D4D0;
    v15 = cellCopy;
    v16 = displaySessionUUID;
    v17 = animatedCopy;
    v13 = displaySessionUUID;
    [imageDelegate2 viewWillUpdateWithImage:imageCopy completion:v14];
  }

  else
  {
    [cellCopy updateWithImage:imageCopy animated:animatedCopy];
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