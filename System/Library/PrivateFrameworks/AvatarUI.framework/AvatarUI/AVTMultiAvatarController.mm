@interface AVTMultiAvatarController
+ (id)listItemsForAvatarRecords:(id)records;
+ (id)newCollectionViewLayoutForEngagedCellSize:(CGSize)size boundsSize:(CGSize)boundsSize environment:(id)environment;
+ (id)snapshotProviderFocusedOnRecordWithIdentifier:(id)identifier size:(CGSize)size avtViewAspectRatio:(CGSize)ratio dataSource:(id)source environment:(id)environment;
- (AVTAvatarDisplayingControllerDelegate)delegate;
- (AVTCarouselPlusButtonView)addItemView;
- (AVTMultiAvatarController)initWithDataSource:(id)source environment:(id)environment initialAVTViewLayout:(id)layout;
- (AVTPresenterDelegate)presenterDelegate;
- (BOOL)shouldCurrentlyDisplayedRecordTransitionToLive;
- (CGPoint)lastContentOffset;
- (UIView)view;
- (id)cellForRecordItem:(id)item;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)getFirstItem;
- (id)indexPathForItemClosestToCenter;
- (id)listItemsForDisplay;
- (id)loadRecords;
- (id)recordForItem:(id)item;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)listItemIndexForRecord:(id)record;
- (void)buildCollectionViewAndConfigureLayoutIfNeeded;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)createAddItemViewIfNeeded;
- (void)createAvatar;
- (void)dealloc;
- (void)displayAvatarForRecord:(id)record animated:(BOOL)animated;
- (void)layoutDidChangeWhileMoving:(BOOL)moving offset:(CGPoint)offset;
- (void)loadRecordsIfNeeded;
- (void)loadView;
- (void)notifyDelegateForScrollingTowardItem:(id)item ratio:(double)ratio;
- (void)notifyDelegateForScrollingTowardItemFromOffset:(CGPoint)offset;
- (void)notifyingContainerViewDidChangeSize:(CGSize)size;
- (void)preloadAll;
- (void)prepareToTransitionToVisible:(BOOL)visible completionHandler:(id *)handler;
- (void)prepareViewWithLayout:(id)layout;
- (void)reloadData;
- (void)reloadRecordListItems;
- (void)scrollToDisplayedRecord;
- (void)scrollToViewAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)scrollToViewForAvatarRecord:(id)record animated:(BOOL)animated;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAllowsCreate:(BOOL)create animated:(BOOL)animated;
- (void)setDecelerationRate:(double)rate;
- (void)setDisplayedRecordFromIndex:(unint64_t)index;
- (void)snapshotInBlock:(id)block;
- (void)stopUsingAVTViewSessionSynchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)transitionCell:(id)cell indexPath:(id)path toStartFocusingAnimated:(BOOL)animated session:(id)session completionHandler:(id)handler;
- (void)transitionCell:(id)cell toStopFocusingAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)transitionCenterCellIfPresentToStartFocusing;
- (void)transitionCenterCellIfPresentToStopFocusingAnimated:(BOOL)animated;
- (void)transitionCenterCellToStartFocusing:(id)focusing indexPath:(id)path;
- (void)transitionCurrentDisplayedRecordAnimated:(BOOL)animated;
- (void)updateCachedCanCreateValueIfNeeded;
- (void)updateDisplayedRecordIfNeeded;
- (void)useAVTViewFromSession:(id)session withLayout:(id)layout;
@end

@implementation AVTMultiAvatarController

+ (id)newCollectionViewLayoutForEngagedCellSize:(CGSize)size boundsSize:(CGSize)boundsSize environment:(id)environment
{
  height = boundsSize.height;
  width = boundsSize.width;
  v7 = size.height;
  v8 = size.width;
  environmentCopy = environment;
  deviceIsPad = [environmentCopy deviceIsPad];
  v11 = width > 400.0;
  v12 = deviceIsPad & v11;
  v13 = 0.3;
  if ((deviceIsPad & v11) != 0)
  {
    v14 = 0.2;
  }

  else
  {
    v14 = 0.3;
  }

  if ((deviceIsPad & v11) == 0)
  {
    v13 = 0.7;
  }

  v15 = v8 * v13;
  v16 = v7 * v13;
  [AVTEngagementLayout minimumInterItemSpacingForVisibileBoundsSize:width defaultCellSize:height engagedCellSize:v8 * v13, v7 * v13, v8, v7];
  v18 = v17;
  v19 = [AVTEngagementLayout alloc];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __93__AVTMultiAvatarController_newCollectionViewLayoutForEngagedCellSize_boundsSize_environment___block_invoke;
  v23[3] = &__block_descriptor_41_e8_d16__0d8l;
  v24 = v12;
  v23[4] = v18;
  v20 = [(AVTEngagementLayout *)v19 initWithDefaultCellSize:v23 engagedCellSize:v15 interItemSpacingProvider:v16, v8, v7];
  v21 = [[AVTZIndexEngagementListCollectionViewLayout alloc] initWithEngagementLayout:v20 minAlphaFactor:environmentCopy environment:v14];

  return v21;
}

double __93__AVTMultiAvatarController_newCollectionViewLayoutForEngagedCellSize_boundsSize_environment___block_invoke(uint64_t a1, double a2)
{
  v2 = -51.0;
  if (*(a1 + 40))
  {
    v2 = -42.0;
  }

  v3 = -22.0;
  if (*(a1 + 40))
  {
    v3 = 24.0;
  }

  if (v2 < *(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  return v3 + (v2 - v3) * a2;
}

+ (id)listItemsForAvatarRecords:(id)records
{
  v20 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = recordsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [AVTAvatarListRecordItem alloc];
        v12 = [(AVTAvatarListRecordItem *)v11 initWithAvatar:v10, v15];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [array copy];

  return v13;
}

- (AVTMultiAvatarController)initWithDataSource:(id)source environment:(id)environment initialAVTViewLayout:(id)layout
{
  sourceCopy = source;
  environmentCopy = environment;
  layoutCopy = layout;
  v23.receiver = self;
  v23.super_class = AVTMultiAvatarController;
  v12 = [(AVTMultiAvatarController *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, source);
    [(AVTAvatarRecordDataSource *)v13->_dataSource addObserver:v13];
    logger = [(AVTUIEnvironment *)environmentCopy logger];
    logger = v13->_logger;
    v13->_logger = logger;

    v13->_environment = environmentCopy;
    v16 = +[AVTRenderingScope listControllerThumbnailScope];
    renderingScope = v13->_renderingScope;
    v13->_renderingScope = v16;

    v18 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:environmentCopy];
    thumbnailRenderer = v13->_thumbnailRenderer;
    v13->_thumbnailRenderer = v18;

    v20 = +[AVTTransitionCoordinator synchronousTransitionCoordinator];
    transitionCoordinator = v13->_transitionCoordinator;
    v13->_transitionCoordinator = v20;

    v13->_decelerationRate = *MEMORY[0x1E69DE3A0];
    objc_storeStrong(&v13->_avtViewLayout, layout);
    v13->_allowsCreate = 1;
  }

  return v13;
}

- (void)dealloc
{
  [(AVTAvatarRecordDataSource *)self->_dataSource removeObserver:self];
  v3.receiver = self;
  v3.super_class = AVTMultiAvatarController;
  [(AVTMultiAvatarController *)&v3 dealloc];
}

- (id)listItemsForDisplay
{
  array = [MEMORY[0x1E695DF70] array];
  getFirstItem = [(AVTMultiAvatarController *)self getFirstItem];
  if (getFirstItem)
  {
    [array addObject:getFirstItem];
  }

  recordListItems = [(AVTMultiAvatarController *)self recordListItems];
  [array addObjectsFromArray:recordListItems];

  return array;
}

- (UIView)view
{
  if (![(AVTMultiAvatarController *)self isViewLoaded])
  {
    [(AVTMultiAvatarController *)self loadView];
    [(AVTMultiAvatarController *)self preloadAll];
  }

  view = self->_view;

  return view;
}

- (void)setDecelerationRate:(double)rate
{
  if (self->_decelerationRate != rate)
  {
    self->_decelerationRate = rate;
    collectionView = [(AVTMultiAvatarController *)self collectionView];
    [collectionView setDecelerationRate:rate];
  }
}

- (void)updateCachedCanCreateValueIfNeeded
{
  if (!self->_cachedCanCreateValue)
  {
    v9[7] = v2;
    v9[8] = v3;
    dataSource = [(AVTMultiAvatarController *)self dataSource];
    internalRecordStore = [dataSource internalRecordStore];
    v9[0] = 0;
    v7 = [internalRecordStore canCreateAvatarWithError:v9];
    v8 = v9[0];

    if (!v8)
    {
      self->_cachedCanCreateValue = [MEMORY[0x1E696AD98] numberWithBool:v7];
    }
  }
}

- (id)getFirstItem
{
  [(AVTMultiAvatarController *)self updateCachedCanCreateValueIfNeeded];
  if (!AVTUIIsAvatarUIEnabled())
  {
    goto LABEL_8;
  }

  cachedCanCreateValue = [(AVTMultiAvatarController *)self cachedCanCreateValue];
  if (([cachedCanCreateValue BOOLValue] & 1) == 0)
  {

    goto LABEL_8;
  }

  allowsCreate = [(AVTMultiAvatarController *)self allowsCreate];

  if (!allowsCreate)
  {
LABEL_8:
    addListItem2 = 0;
    goto LABEL_9;
  }

  addListItem = [(AVTMultiAvatarController *)self addListItem];

  if (!addListItem)
  {
    v6 = [AVTAvatarListViewItem alloc];
    addItemView = [(AVTMultiAvatarController *)self addItemView];
    v8 = [(AVTAvatarListViewItem *)v6 initWithView:addItemView];
    [(AVTMultiAvatarController *)self setAddListItem:v8];
  }

  addListItem2 = [(AVTMultiAvatarController *)self addListItem];
LABEL_9:

  return addListItem2;
}

- (AVTCarouselPlusButtonView)addItemView
{
  [(AVTMultiAvatarController *)self createAddItemViewIfNeeded];
  addItemView = self->_addItemView;

  return addItemView;
}

- (void)createAddItemViewIfNeeded
{
  if (!self->_addItemView)
  {
    v3 = [AVTCarouselPlusButtonView alloc];
    environment = [(AVTMultiAvatarController *)self environment];
    v5 = [(AVTCarouselPlusButtonView *)v3 initWithFrame:environment environment:0.0, 0.0, 100.0, 100.0];
    addItemView = self->_addItemView;
    self->_addItemView = v5;

    collectionViewLayout = [(AVTMultiAvatarController *)self collectionViewLayout];

    if (collectionViewLayout)
    {
      collectionViewLayout2 = [(AVTMultiAvatarController *)self collectionViewLayout];
      engagementLayout = [collectionViewLayout2 engagementLayout];
      [engagementLayout engagedCellSize];
      [(AVTCarouselPlusButtonView *)self->_addItemView setMaxItemSize:?];
    }
  }
}

- (void)setAllowsCreate:(BOOL)create animated:(BOOL)animated
{
  if (self->_allowsCreate != create)
  {
    v71 = v9;
    v72 = v8;
    v73 = v7;
    v74 = v6;
    v75 = v4;
    v76 = v5;
    createCopy = create;
    self->_allowsCreate = create;
    [(AVTMultiAvatarController *)self updateCachedCanCreateValueIfNeeded];
    if (AVTUIIsAvatarUIEnabled())
    {
      cachedCanCreateValue = [(AVTMultiAvatarController *)self cachedCanCreateValue];
      bOOLValue = [cachedCanCreateValue BOOLValue];

      if (bOOLValue)
      {
        collectionViewLayout = [(AVTMultiAvatarController *)self collectionViewLayout];
        v16 = collectionViewLayout;
        if (createCopy)
        {
          v17 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
          [v16 setPlusButtonIndexPath:v17];
        }

        else
        {
          [collectionViewLayout setPlusButtonIndexPath:0];
        }

        indexPathForItemClosestToCenter = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
        item = [indexPathForItemClosestToCenter item];

        displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
        v21 = [(AVTMultiAvatarController *)self listItemIndexForRecord:displayedRecord];

        collectionViewLayout2 = [(AVTMultiAvatarController *)self collectionViewLayout];
        v23 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:0];
        [collectionViewLayout2 setBackIndexPath:v23];

        v24 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:2 * (item != 0) curve:0 animations:dbl_1BB416380[item == 0]];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __53__AVTMultiAvatarController_setAllowsCreate_animated___block_invoke;
        v68[3] = &unk_1E7F3B550;
        v68[4] = self;
        v69 = item == 0;
        animatedCopy = animated;
        [v24 addCompletion:v68];
        if (createCopy)
        {
          collectionViewLayout3 = [(AVTMultiAvatarController *)self collectionViewLayout];
          collectionView = [(AVTMultiAvatarController *)self collectionView];
          [collectionView bounds];
          v28 = v27;
          v30 = v29;
          collectionView2 = [(AVTMultiAvatarController *)self collectionView];
          [collectionView2 bounds];
          [collectionViewLayout3 centerForCenteringElementAtIndex:item + 1 visibleBoundsSize:v28 proposedOrigin:{v30, v32, v33}];
          v35 = v34;
          v37 = v36;

          collectionView3 = [(AVTMultiAvatarController *)self collectionView];
          [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView3 collectionView:v35, v37];
          v40 = v39;
          v42 = v41;

          collectionViewLayout4 = [(AVTMultiAvatarController *)self collectionViewLayout];
          [collectionViewLayout4 setTargetContentOffsetForAnimations:{v40, v42}];

          collectionView4 = [(AVTMultiAvatarController *)self collectionView];
          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 3221225472;
          v67[2] = __53__AVTMultiAvatarController_setAllowsCreate_animated___block_invoke_2;
          v67[3] = &unk_1E7F3A9B8;
          v67[4] = self;
          [collectionView4 performBatchUpdates:v67 withAnimator:v24];

          [v24 startAnimation];
        }

        else
        {
          if (item)
          {
            collectionViewLayout5 = [(AVTMultiAvatarController *)self collectionViewLayout];
            collectionView5 = [(AVTMultiAvatarController *)self collectionView];
            [collectionView5 bounds];
            v48 = v47;
            v50 = v49;
            collectionView6 = [(AVTMultiAvatarController *)self collectionView];
            [collectionView6 bounds];
            [collectionViewLayout5 centerForCenteringElementAtIndex:item - 1 visibleBoundsSize:v48 proposedOrigin:{v50, v52, v53}];
            v55 = v54;
            v57 = v56;

            collectionView7 = [(AVTMultiAvatarController *)self collectionView];
            [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView7 collectionView:v55, v57];
            v60 = v59;
            v62 = v61;

            collectionViewLayout6 = [(AVTMultiAvatarController *)self collectionViewLayout];
            [collectionViewLayout6 setTargetContentOffsetForAnimations:{v60, v62}];
          }

          collectionView8 = [(AVTMultiAvatarController *)self collectionView];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __53__AVTMultiAvatarController_setAllowsCreate_animated___block_invoke_3;
          v66[3] = &unk_1E7F3A9B8;
          v66[4] = self;
          [collectionView8 performBatchUpdates:v66 withAnimator:v24];

          [v24 startAnimation];
          if (!item)
          {
            collectionView9 = [(AVTMultiAvatarController *)self collectionView];
            [collectionView9 contentOffset];
            [(AVTMultiAvatarController *)self layoutDidChangeWhileMoving:1 offset:?];
          }
        }
      }
    }
  }
}

void __53__AVTMultiAvatarController_setAllowsCreate_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewLayout];
  [v2 clearTargetContentOffsetForAnimations];

  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 41);

    [v3 transitionCurrentDisplayedRecordAnimated:v4];
  }
}

void __53__AVTMultiAvatarController_setAllowsCreate_animated___block_invoke_2(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) collectionView];
  v2 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v4[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 insertItemsAtIndexPaths:v3];
}

void __53__AVTMultiAvatarController_setAllowsCreate_animated___block_invoke_3(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) collectionView];
  v2 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v4[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 deleteItemsAtIndexPaths:v3];
}

- (void)buildCollectionViewAndConfigureLayoutIfNeeded
{
  avtViewLayout = [(AVTMultiAvatarController *)self avtViewLayout];

  if (avtViewLayout)
  {
    avtViewLayout2 = [(AVTMultiAvatarController *)self avtViewLayout];
    view = [(AVTMultiAvatarController *)self view];
    [view bounds];
    [avtViewLayout2 avatarViewSizeForAvailableContentSize:{v6, v7}];
    v9 = v8;
    v11 = v10;

    collectionViewLayout = [(AVTMultiAvatarController *)self collectionViewLayout];
    if (!collectionViewLayout || (v13 = collectionViewLayout, -[AVTMultiAvatarController collectionViewLayout](self, "collectionViewLayout"), v14 = objc_claimAutoreleasedReturnValue(), [v14 engagementLayout], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "engagedCellSize"), v17 = v16, v19 = v18, v15, v14, v13, v17 != v9) || v19 != v11)
    {
      v20 = objc_opt_class();
      view2 = [(AVTMultiAvatarController *)self view];
      [view2 bounds];
      v23 = v22;
      v25 = v24;
      environment = [(AVTMultiAvatarController *)self environment];
      v52 = [v20 newCollectionViewLayoutForEngagedCellSize:environment boundsSize:v9 environment:{v11, v23, v25}];

      if ([(AVTMultiAvatarController *)self allowsCreate])
      {
        v27 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
        [v52 setPlusButtonIndexPath:v27];
      }

      else
      {
        [v52 setPlusButtonIndexPath:0];
      }

      displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
      v29 = [(AVTMultiAvatarController *)self listItemIndexForRecord:displayedRecord];

      v30 = [MEMORY[0x1E696AC88] indexPathForItem:v29 inSection:0];
      [v52 setBackIndexPath:v30];

      [(AVTMultiAvatarController *)self setCollectionViewLayout:v52];
      collectionViewLayout2 = [(AVTMultiAvatarController *)self collectionViewLayout];
      engagementLayout = [collectionViewLayout2 engagementLayout];
      [engagementLayout engagedCellSize];
      v34 = v33;
      v36 = v35;
      addItemView = [(AVTMultiAvatarController *)self addItemView];
      [addItemView setMaxItemSize:{v34, v36}];

      collectionView = [(AVTMultiAvatarController *)self collectionView];

      if (collectionView)
      {
        collectionView2 = [(AVTMultiAvatarController *)self collectionView];
        [collectionView2 setCollectionViewLayout:v52];
      }

      else
      {
        v40 = objc_alloc(MEMORY[0x1E69DC7F0]);
        view3 = [(AVTMultiAvatarController *)self view];
        [view3 bounds];
        collectionView2 = [v40 initWithFrame:v52 collectionViewLayout:?];

        v42 = [AVTCenteringCollectionViewDelegate alloc];
        environment2 = [(AVTMultiAvatarController *)self environment];
        v44 = [(AVTCenteringCollectionViewDelegate *)v42 initWithCollectionView:collectionView2 delegate:self environment:environment2];
        [(AVTMultiAvatarController *)self setCenteringDelegate:v44];

        centeringDelegate = [(AVTMultiAvatarController *)self centeringDelegate];
        [collectionView2 setDelegate:centeringDelegate];

        [collectionView2 setDataSource:self];
        [(AVTMultiAvatarController *)self decelerationRate];
        [collectionView2 setDecelerationRate:?];
        v46 = objc_opt_class();
        v47 = +[AVTAvatarListCell reuseIdentifier];
        [collectionView2 registerClass:v46 forCellWithReuseIdentifier:v47];

        v48 = objc_opt_class();
        v49 = +[AVTCollectionViewCell reuseIdentifier];
        [collectionView2 registerClass:v48 forCellWithReuseIdentifier:v49];

        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [collectionView2 setBackgroundColor:clearColor];

        [collectionView2 setShowsHorizontalScrollIndicator:0];
        [collectionView2 setContentInsetAdjustmentBehavior:2];
        [collectionView2 setAutoresizingMask:18];
        view4 = [(AVTMultiAvatarController *)self view];
        [view4 addSubview:collectionView2];

        [(AVTMultiAvatarController *)self setCollectionView:collectionView2];
      }
    }
  }
}

- (void)loadView
{
  v3 = [AVTNotifyingContainerView alloc];
  v4 = [(AVTNotifyingContainerView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AVTNotifyingContainerView *)v4 setDelegate:self];
  [(AVTMultiAvatarController *)self setView:v4];
}

- (void)preloadAll
{
  if (AVTUIAvatarPreLoadOnLaunch())
  {
    v3 = MEMORY[0x1E698E328];
    dataSource = [(AVTMultiAvatarController *)self dataSource];
    recordStore = [dataSource recordStore];
    [v3 preloadAllAvatarsWithStore:recordStore completionHandler:0];
  }
}

- (id)loadRecords
{
  dataSource = [(AVTMultiAvatarController *)self dataSource];
  numberOfRecords = [dataSource numberOfRecords];

  array = [MEMORY[0x1E695DF70] array];
  if (numberOfRecords)
  {
    for (i = 0; i != numberOfRecords; ++i)
    {
      dataSource2 = [(AVTMultiAvatarController *)self dataSource];
      v8 = [dataSource2 recordAtIndex:i];

      [array addObject:v8];
    }
  }

  v9 = [array copy];

  return v9;
}

- (void)createAvatar
{
  if ([(AVTMultiAvatarController *)self allowsCreate])
  {
    indexPathForItemClosestToCenter = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
    v3 = MEMORY[0x1E696AC88];
    listItemsForDisplay = [(AVTMultiAvatarController *)self listItemsForDisplay];
    addListItem = [(AVTMultiAvatarController *)self addListItem];
    v6 = [v3 indexPathForItem:objc_msgSend(listItemsForDisplay inSection:{"indexOfObject:", addListItem), 0}];

    if ([indexPathForItemClosestToCenter isEqual:v6])
    {
      delegate = [(AVTMultiAvatarController *)self delegate];
      [delegate displayingControllerWantsToPresentEditorForCreation:self];
    }
  }
}

- (void)scrollToDisplayedRecord
{
  displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
  [(AVTMultiAvatarController *)self scrollToViewForAvatarRecord:displayedRecord animated:0];
}

- (void)scrollToViewForAvatarRecord:(id)record animated:(BOOL)animated
{
  animatedCopy = animated;
  recordCopy = record;
  v9 = recordCopy;
  if (!recordCopy)
  {
    getFirstItem = [(AVTMultiAvatarController *)self getFirstItem];

    recordCopy = 0;
    if (getFirstItem)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = [(AVTMultiAvatarController *)self listItemIndexForRecord:recordCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    [(AVTMultiAvatarController *)self scrollToViewAtIndex:v7 animated:animatedCopy];
  }
}

- (void)scrollToViewAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v29 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  collectionViewLayout = [(AVTMultiAvatarController *)self collectionViewLayout];
  item = [v29 item];
  collectionView = [(AVTMultiAvatarController *)self collectionView];
  [collectionView bounds];
  v11 = v10;
  v13 = v12;
  collectionView2 = [(AVTMultiAvatarController *)self collectionView];
  [collectionView2 bounds];
  [collectionViewLayout centerForCenteringElementAtIndex:item visibleBoundsSize:v11 proposedOrigin:{v13, v15, v16}];
  v18 = v17;
  v20 = v19;

  collectionView3 = [(AVTMultiAvatarController *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView3 collectionView:v18, v20];
  v23 = v22;
  v25 = v24;

  collectionView4 = [(AVTMultiAvatarController *)self collectionView];
  [collectionView4 setContentOffset:animatedCopy animated:{v23, v25}];

  if (!animatedCopy)
  {
    listItemsForDisplay = [(AVTMultiAvatarController *)self listItemsForDisplay];
    v28 = [listItemsForDisplay objectAtIndexedSubscript:index];
    [(AVTMultiAvatarController *)self notifyDelegateForScrollingTowardItem:v28 ratio:1.0];
  }
}

- (unint64_t)listItemIndexForRecord:(id)record
{
  recordCopy = record;
  listItemsForDisplay = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AVTMultiAvatarController_listItemIndexForRecord___block_invoke;
  v9[3] = &unk_1E7F3B5A0;
  v10 = recordCopy;
  v6 = recordCopy;
  v7 = [listItemsForDisplay indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __51__AVTMultiAvatarController_listItemIndexForRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AVTMultiAvatarController_listItemIndexForRecord___block_invoke_2;
  v6[3] = &unk_1E7F3B578;
  v8 = &v9;
  v7 = *(a1 + 32);
  [v3 downcastWithRecordHandler:v6 viewHandler:0];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

void __51__AVTMultiAvatarController_listItemIndexForRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 avatar];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isEqual:*(a1 + 32)];
}

- (id)recordForItem:(id)item
{
  itemCopy = item;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVTMultiAvatarController_recordForItem___block_invoke;
  v6[3] = &unk_1E7F3B5C8;
  v6[4] = &v7;
  [itemCopy downcastWithRecordHandler:v6 viewHandler:0];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__AVTMultiAvatarController_recordForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 avatar];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (id)indexPathForItemClosestToCenter
{
  collectionView = [(AVTMultiAvatarController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  v7 = v6;
  collectionView2 = [(AVTMultiAvatarController *)self collectionView];
  v9 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:collectionView2 collectionView:v5, v7];

  return v9;
}

- (id)cellForRecordItem:(id)item
{
  itemCopy = item;
  listItemsForDisplay = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v6 = [listItemsForDisplay indexOfObject:itemCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"List item not found %@", itemCopy}];
  }

  v7 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:0];
  collectionView = [(AVTMultiAvatarController *)self collectionView];
  v9 = [collectionView cellForItemAtIndexPath:v7];

  return v9;
}

- (BOOL)shouldCurrentlyDisplayedRecordTransitionToLive
{
  displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
  v4 = [(AVTMultiAvatarController *)self listItemIndexForRecord:displayedRecord];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  collectionViewLayout = [(AVTMultiAvatarController *)self collectionViewLayout];
  collectionView = [(AVTMultiAvatarController *)self collectionView];
  [collectionView bounds];
  v9 = v8;
  v11 = v10;
  collectionView2 = [(AVTMultiAvatarController *)self collectionView];
  [collectionView2 bounds];
  [collectionViewLayout centerForCenteringElementAtIndex:v4 visibleBoundsSize:v9 proposedOrigin:{v11, v13, v14}];
  v16 = v15;
  v18 = v17;

  collectionView3 = [(AVTMultiAvatarController *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView3 collectionView:v16, v18];
  v21 = v20;

  collectionView4 = [(AVTMultiAvatarController *)self collectionView];
  [collectionView4 contentOffset];
  v5 = vabdd_f64(v21, v23) < 1.0;

  return v5;
}

- (void)updateDisplayedRecordIfNeeded
{
  indexPathForItemClosestToCenter = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
  if (indexPathForItemClosestToCenter)
  {
    v4 = indexPathForItemClosestToCenter;
    -[AVTMultiAvatarController setDisplayedRecordFromIndex:](self, "setDisplayedRecordFromIndex:", [indexPathForItemClosestToCenter item]);
    indexPathForItemClosestToCenter = v4;
  }
}

- (void)setDisplayedRecordFromIndex:(unint64_t)index
{
  listItemsForDisplay = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v6 = [listItemsForDisplay count];

  if (v6 <= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Can't find displayed record for index %ld", index}];
  }

  listItemsForDisplay2 = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v8 = [listItemsForDisplay2 objectAtIndex:index];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AVTMultiAvatarController_setDisplayedRecordFromIndex___block_invoke;
  v12[3] = &unk_1E7F3B5F0;
  v12[4] = self;
  indexCopy = index;
  v9 = v8;
  v13 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AVTMultiAvatarController_setDisplayedRecordFromIndex___block_invoke_2;
  v11[3] = &unk_1E7F3B618;
  v11[4] = self;
  v11[5] = &v15;
  [v9 downcastWithRecordHandler:v12 viewHandler:v11];
  addItemView = [(AVTMultiAvatarController *)self addItemView];
  [addItemView setAllowHighlight:*(v16 + 24)];

  _Block_object_dispose(&v15, 8);
}

void __56__AVTMultiAvatarController_setDisplayedRecordFromIndex___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 avatar];
  v4 = [*(a1 + 32) displayedRecord];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v15 avatar];
    [*(a1 + 32) setDisplayedRecord:v6];

    v7 = [*(a1 + 32) collectionViewLayout];
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:*(a1 + 48) inSection:0];
    [v7 setBackIndexPath:v8];

    v9 = [*(a1 + 32) collectionViewLayout];
    [v9 invalidateLayout];

    v10 = [*(a1 + 32) logger];
    v11 = [*(a1 + 40) description];
    [v10 logCarouselChangesCenterItemTo:v11];

    v12 = [*(a1 + 32) delegate];
    v13 = *(a1 + 32);
    v14 = [v13 displayedRecord];
    [v12 displayingController:v13 didChangeCurrentRecord:v14];
  }
}

void __56__AVTMultiAvatarController_setDisplayedRecordFromIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 addListItem];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)transitionCurrentDisplayedRecordAnimated:(BOOL)animated
{
  displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
  v6 = [(AVTMultiAvatarController *)self listItemIndexForRecord:displayedRecord];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    collectionView = [(AVTMultiAvatarController *)self collectionView];
    v9 = [collectionView cellForItemAtIndexPath:v7];

    if ([(AVTMultiAvatarController *)self shouldCurrentlyDisplayedRecordTransitionToLive])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__AVTMultiAvatarController_transitionCurrentDisplayedRecordAnimated___block_invoke;
      v10[3] = &unk_1E7F3AB88;
      v10[4] = self;
      v11 = v7;
      animatedCopy = animated;
      [v9 downcastWithCellHandler:0 listCellHandler:v10];
    }
  }
}

void __69__AVTMultiAvatarController_transitionCurrentDisplayedRecordAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) liveCell];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [*(a1 + 32) avtViewSession];
    v7 = [v6 isActive];

    if (v7)
    {
      v8 = [*(a1 + 32) delegate];
      [v8 willBeginFocus:*(a1 + 32)];

      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = [v9 avtViewSession];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __69__AVTMultiAvatarController_transitionCurrentDisplayedRecordAnimated___block_invoke_2;
      v13[3] = &unk_1E7F3AA80;
      v13[4] = *(a1 + 32);
      [v9 transitionCell:v3 indexPath:v10 toStartFocusingAnimated:v11 session:v12 completionHandler:v13];
    }
  }
}

void __69__AVTMultiAvatarController_transitionCurrentDisplayedRecordAnimated___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 didBeginFocus:*(a1 + 32)];
  }
}

- (void)notifyDelegateForScrollingTowardItemFromOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  indexPathForItemClosestToCenter = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
  v18 = 0.0;
  collectionView = [(AVTMultiAvatarController *)self collectionView];
  [collectionView contentOffset];
  v9 = v8;
  v11 = v10;
  listItemsForDisplay = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v13 = [listItemsForDisplay count];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__AVTMultiAvatarController_notifyDelegateForScrollingTowardItemFromOffset___block_invoke;
  v17[3] = &unk_1E7F3B640;
  v17[4] = self;
  v14 = [AVTCenteringCollectionViewHelper indexPathForItemBeingScrolledTowardFromOffset:indexPathForItemClosestToCenter currentOffset:v13 nearestItemToCenter:v17 itemCount:&v18 itemOffsetProvider:x ratio:y, v9, v11];

  if (v14)
  {
    listItemsForDisplay2 = [(AVTMultiAvatarController *)self listItemsForDisplay];
    v16 = [listItemsForDisplay2 objectAtIndexedSubscript:{objc_msgSend(v14, "item")}];

    [(AVTMultiAvatarController *)self notifyDelegateForScrollingTowardItem:v16 ratio:v18];
  }
}

double __75__AVTMultiAvatarController_notifyDelegateForScrollingTowardItemFromOffset___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 collectionViewLayout];
  v6 = [v4 item];

  v7 = [*(a1 + 32) collectionView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) collectionView];
  [v12 bounds];
  [v5 centerForCenteringElementAtIndex:v6 visibleBoundsSize:v9 proposedOrigin:{v11, v13, v14}];
  v16 = v15;
  v18 = v17;

  v19 = [*(a1 + 32) collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v19 collectionView:v16, v18];
  v21 = v20;

  return v21;
}

- (void)notifyDelegateForScrollingTowardItem:(id)item ratio:(double)ratio
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AVTMultiAvatarController_notifyDelegateForScrollingTowardItem_ratio___block_invoke;
  v5[3] = &unk_1E7F3B668;
  v5[4] = self;
  *&v5[5] = ratio;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__AVTMultiAvatarController_notifyDelegateForScrollingTowardItem_ratio___block_invoke_2;
  v4[3] = &unk_1E7F3B690;
  v4[4] = self;
  *&v4[5] = ratio;
  [item downcastWithRecordHandler:v5 viewHandler:v4];
}

void __71__AVTMultiAvatarController_notifyDelegateForScrollingTowardItem_ratio___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 delegate];
  v5 = *(a1 + 32);
  v6 = [v4 avatar];

  [v7 displayingController:v5 didMoveTowardRecord:v6 withFactor:*(a1 + 40)];
}

void __71__AVTMultiAvatarController_notifyDelegateForScrollingTowardItem_ratio___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 displayingController:*(a1 + 32) didMoveTowardRecord:0 withFactor:*(a1 + 40)];
}

- (void)layoutDidChangeWhileMoving:(BOOL)moving offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  movingCopy = moving;
  [(AVTMultiAvatarController *)self lastContentOffset];
  v9 = v8;
  v11 = v10;
  [(AVTMultiAvatarController *)self setLastContentOffset:x, y];
  if (movingCopy)
  {
    [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStopFocusingAnimated:1];
    [(AVTMultiAvatarController *)self notifyDelegateForScrollingTowardItemFromOffset:v9, v11];

    [(AVTMultiAvatarController *)self updateDisplayedRecordIfNeeded];
  }

  else
  {

    [(AVTMultiAvatarController *)self scrollToDisplayedRecord];
  }
}

- (void)notifyingContainerViewDidChangeSize:(CGSize)size
{
  if ([(AVTMultiAvatarController *)self isViewLoaded:size.width])
  {
    [(AVTMultiAvatarController *)self buildCollectionViewAndConfigureLayoutIfNeeded];

    [(AVTMultiAvatarController *)self reloadData];
  }
}

- (void)displayAvatarForRecord:(id)record animated:(BOOL)animated
{
  animatedCopy = animated;
  recordCopy = record;
  [(AVTMultiAvatarController *)self loadRecordsIfNeeded];
  v7 = [(AVTMultiAvatarController *)self listItemIndexForRecord:recordCopy];
  v8 = recordCopy;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (recordCopy || ([(AVTMultiAvatarController *)self displayedRecord], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
      v10 = [recordCopy isEqual:displayedRecord];

      if (recordCopy)
      {
        if (animatedCopy)
        {
          goto LABEL_11;
        }

LABEL_9:
        if ((v10 & 1) == 0)
        {
          [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStopFocusingAnimated:0];
          [(AVTMultiAvatarController *)self setDisplayedRecordFromIndex:v7];
          displayedRecord2 = [(AVTMultiAvatarController *)self displayedRecord];
          [(AVTMultiAvatarController *)self scrollToViewForAvatarRecord:displayedRecord2 animated:0];

          [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStartFocusing];
LABEL_12:
          v8 = recordCopy;
          goto LABEL_13;
        }

LABEL_11:
        [(AVTMultiAvatarController *)self setDisplayedRecordFromIndex:v7];
        displayedRecord3 = [(AVTMultiAvatarController *)self displayedRecord];
        [(AVTMultiAvatarController *)self scrollToViewForAvatarRecord:displayedRecord3 animated:animatedCopy];

        goto LABEL_12;
      }
    }

    else
    {
      v10 = 1;
    }

    if (animatedCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_13:
}

- (void)loadRecordsIfNeeded
{
  recordListItems = [(AVTMultiAvatarController *)self recordListItems];

  if (!recordListItems)
  {

    [(AVTMultiAvatarController *)self reloadRecordListItems];
  }
}

- (void)reloadRecordListItems
{
  loadRecords = [(AVTMultiAvatarController *)self loadRecords];
  v3 = [objc_opt_class() listItemsForAvatarRecords:loadRecords];
  [(AVTMultiAvatarController *)self setRecordListItems:v3];

  displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
  if (!displayedRecord || (v5 = displayedRecord, -[AVTMultiAvatarController displayedRecord](self, "displayedRecord"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [loadRecords containsObject:v6], v6, v5, (v7 & 1) == 0))
  {
    firstObject = [loadRecords firstObject];
    [(AVTMultiAvatarController *)self setDisplayedRecordFromIndex:[(AVTMultiAvatarController *)self listItemIndexForRecord:firstObject]];
  }
}

- (void)reloadData
{
  [(AVTMultiAvatarController *)self reloadRecordListItems];
  liveCell = [(AVTMultiAvatarController *)self liveCell];

  if (liveCell)
  {
    [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStopFocusingAnimated:0];
    collectionView = [(AVTMultiAvatarController *)self collectionView];
    [collectionView reloadData];

    [(AVTMultiAvatarController *)self scrollToDisplayedRecord];

    [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStartFocusing];
  }

  else
  {
    collectionView2 = [(AVTMultiAvatarController *)self collectionView];
    [collectionView2 reloadData];

    [(AVTMultiAvatarController *)self scrollToDisplayedRecord];
  }
}

- (void)prepareViewWithLayout:(id)layout
{
  [(AVTMultiAvatarController *)self setAvtViewLayout:layout];

  [(AVTMultiAvatarController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
}

- (void)useAVTViewFromSession:(id)session withLayout:(id)layout
{
  sessionCopy = session;
  [(AVTMultiAvatarController *)self setAvtViewLayout:layout];
  [(AVTMultiAvatarController *)self setAvtViewSession:sessionCopy];

  [(AVTMultiAvatarController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
  if ([(AVTMultiAvatarController *)self shouldCurrentlyDisplayedRecordTransitionToLive])
  {

    [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStartFocusing];
  }
}

- (void)stopUsingAVTViewSessionSynchronously:(BOOL)synchronously completionHandler:(id)handler
{
  handlerCopy = handler;
  transitionCoordinator = [(AVTMultiAvatarController *)self transitionCoordinator];
  [transitionCoordinator cancelAllTransitions];

  [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStopFocusingAnimated:0];
  [(AVTMultiAvatarController *)self setAvtViewSession:0];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
    v6 = handlerCopy;
  }
}

- (void)prepareToTransitionToVisible:(BOOL)visible completionHandler:(id *)handler
{
  visibleCopy = visible;
  collectionView = [(AVTMultiAvatarController *)self collectionView];
  [collectionView layoutIfNeeded];

  indexPathForItemClosestToCenter = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
  if (indexPathForItemClosestToCenter)
  {
    [(AVTMultiAvatarController *)self setHideImageForDisplayedRecord:1];
    collectionView2 = [(AVTMultiAvatarController *)self collectionView];
    v10 = [collectionView2 cellForItemAtIndexPath:indexPathForItemClosestToCenter];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__AVTMultiAvatarController_prepareToTransitionToVisible_completionHandler___block_invoke;
    v13[3] = &unk_1E7F3B6B8;
    v14 = visibleCopy;
    v13[4] = self;
    v13[5] = handler;
    [v10 downcastWithCellHandler:0 listCellHandler:v13];

    if (!visibleCopy)
    {
      displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
      [(AVTMultiAvatarController *)self scrollToViewForAvatarRecord:displayedRecord animated:1];
    }

    collectionView3 = [(AVTMultiAvatarController *)self collectionView];
    [collectionView3 setScrollEnabled:visibleCopy];
  }
}

void __75__AVTMultiAvatarController_prepareToTransitionToVisible_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setImageViewVisible:0];
  if (*(a1 + 48) == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __75__AVTMultiAvatarController_prepareToTransitionToVisible_completionHandler___block_invoke_2;
    v4[3] = &unk_1E7F3AD60;
    v4[4] = *(a1 + 32);
    v5 = v3;
    **(a1 + 40) = [v4 copy];
  }
}

uint64_t __75__AVTMultiAvatarController_prepareToTransitionToVisible_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHideImageForDisplayedRecord:0];
  v2 = *(a1 + 40);

  return [v2 setImageViewVisible:1];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTMultiAvatarController *)self listItemsForDisplay:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  listItemsForDisplay = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v9 = [listItemsForDisplay objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__AVTMultiAvatarController_collectionView_cellForItemAtIndexPath___block_invoke;
  v18[3] = &unk_1E7F3B708;
  v19 = viewCopy;
  v20 = pathCopy;
  selfCopy = self;
  v22 = &v23;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__AVTMultiAvatarController_collectionView_cellForItemAtIndexPath___block_invoke_3;
  v14[3] = &unk_1E7F3B730;
  v10 = v19;
  v15 = v10;
  v11 = v20;
  v16 = v11;
  v17 = &v23;
  [v9 downcastWithRecordHandler:v18 viewHandler:v14];
  v12 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v12;
}

void __66__AVTMultiAvatarController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[AVTAvatarListCell reuseIdentifier];
  v6 = [v4 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:*(a1 + 40)];

  v7 = [*(a1 + 48) avtViewLayout];
  v8 = [*(a1 + 48) view];
  [v8 bounds];
  [v7 avatarViewSizeForAvailableContentSize:{v9, v10}];
  v12 = v11;
  v14 = v13;

  [v6 setAspectRatio:{v12, v14}];
  [v6 setImage:0];
  if ([*(a1 + 48) hideImageForDisplayedRecord])
  {
    v15 = [v3 avatar];
    v16 = [*(a1 + 48) displayedRecord];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      [v6 setImageViewVisible:0];
    }
  }

  v18 = [v3 avatar];
  [v6 setAvatar:v18];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v19 = [*(a1 + 48) thumbnailRenderer];
  v20 = [*(a1 + 48) renderingScope];
  v21 = [v19 providerForRecord:v18 scope:v20];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __66__AVTMultiAvatarController_collectionView_cellForItemAtIndexPath___block_invoke_2;
  v29[3] = &unk_1E7F3B6E0;
  v22 = v6;
  v30 = v22;
  v23 = v18;
  v24 = *(a1 + 48);
  v31 = v23;
  v32 = v24;
  v33 = &v34;
  v25 = (v21)[2](v21, v29, 0);

  *(v35 + 24) = 1;
  v26 = *(*(a1 + 56) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v22;
  v28 = v22;

  _Block_object_dispose(&v34, 8);
}

void __66__AVTMultiAvatarController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) avatar];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = v7;
    if (!v7)
    {
      v6 = [*(a1 + 48) logger];
      [v6 logNilImageReturnedFromAVTAvatarRecordImageProvider];

      v5 = 0;
    }

    [*(a1 + 32) setImage:v5 animated:*(*(*(a1 + 56) + 8) + 24)];
  }
}

void __66__AVTMultiAvatarController_collectionView_cellForItemAtIndexPath___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = +[AVTCollectionViewCell reuseIdentifier];
  v6 = [v3 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:a1[5]];

  v9 = [v4 view];

  [v6 setSubview:v9];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  item = [pathCopy item];
  displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
  v11 = [(AVTMultiAvatarController *)self listItemIndexForRecord:displayedRecord];

  if (item == v11)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__AVTMultiAvatarController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
    v12[3] = &unk_1E7F3ABB0;
    v12[4] = self;
    v13 = pathCopy;
    [cellCopy downcastWithCellHandler:0 listCellHandler:v12];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__AVTMultiAvatarController_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke;
  v5[3] = &unk_1E7F3ABD8;
  v5[4] = self;
  [cell downcastWithCellHandler:0 listCellHandler:{v5, path}];
}

void __83__AVTMultiAvatarController_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 transitionCoordinator];
  [v4 cancelTransitionsMatchingModel:v3];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  listItemsForDisplay = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v8 = [listItemsForDisplay objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  addListItem = [(AVTMultiAvatarController *)self addListItem];
  v10 = [v8 isEqual:addListItem];

  if (v10)
  {
    [(AVTMultiAvatarController *)self createAvatar];
  }

  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  avtui_isMoving = [scrollCopy avtui_isMoving];
  [scrollCopy contentOffset];
  v7 = v6;
  v9 = v8;

  [(AVTMultiAvatarController *)self layoutDidChangeWhileMoving:avtui_isMoving offset:v7, v9];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(AVTMultiAvatarController *)self transitionCurrentDisplayedRecordAnimated:1];
  }
}

- (void)transitionCenterCellIfPresentToStartFocusing
{
  displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
  v4 = [(AVTMultiAvatarController *)self listItemIndexForRecord:displayedRecord];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't find a displayed record"];
  }

  listItemsForDisplay = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v6 = [listItemsForDisplay objectAtIndexedSubscript:v4];
  v7 = [(AVTMultiAvatarController *)self cellForRecordItem:v6];

  v8 = [MEMORY[0x1E696AC88] indexPathForItem:v4 inSection:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AVTMultiAvatarController_transitionCenterCellIfPresentToStartFocusing__block_invoke;
  v10[3] = &unk_1E7F3ABB0;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [v7 downcastWithCellHandler:0 listCellHandler:v10];
}

- (void)transitionCenterCellIfPresentToStopFocusingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  liveCell = [(AVTMultiAvatarController *)self liveCell];

  if (liveCell)
  {
    delegate = [(AVTMultiAvatarController *)self delegate];
    [delegate willEndFocus:self];

    v7 = MEMORY[0x1BFB0DE80]();
    liveCell2 = [(AVTMultiAvatarController *)self liveCell];
    [(AVTMultiAvatarController *)self transitionCell:liveCell2 toStopFocusingAnimated:animatedCopy completionHandler:v7];

    if (!animatedCopy)
    {
      delegate2 = [(AVTMultiAvatarController *)self delegate];
      [delegate2 didEndFocus:self];
    }
  }
}

void __80__AVTMultiAvatarController_transitionCenterCellIfPresentToStopFocusingAnimated___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 didEndFocus:*(a1 + 32)];
  }
}

- (void)transitionCenterCellToStartFocusing:(id)focusing indexPath:(id)path
{
  focusingCopy = focusing;
  pathCopy = path;
  if (focusingCopy)
  {
    liveCell = [(AVTMultiAvatarController *)self liveCell];

    if (!liveCell)
    {
      collectionView = [(AVTMultiAvatarController *)self collectionView];
      avtui_isMoving = [collectionView avtui_isMoving];

      if ((avtui_isMoving & 1) == 0)
      {
        avtViewSession = [(AVTMultiAvatarController *)self avtViewSession];
        if ([avtViewSession isActive])
        {
          avtViewUpdater = [avtViewSession avtViewUpdater];
          avatarRecord = [avtViewUpdater avatarRecord];
          displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
          v15 = [avatarRecord isEqual:displayedRecord];

          delegate = [(AVTMultiAvatarController *)self delegate];
          [delegate willBeginFocus:self];

          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __74__AVTMultiAvatarController_transitionCenterCellToStartFocusing_indexPath___block_invoke;
          v17[3] = &unk_1E7F3AA80;
          v17[4] = self;
          [(AVTMultiAvatarController *)self transitionCell:focusingCopy indexPath:pathCopy toStartFocusingAnimated:v15 ^ 1u session:avtViewSession completionHandler:v17];
        }
      }
    }
  }
}

void __74__AVTMultiAvatarController_transitionCenterCellToStartFocusing_indexPath___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 didBeginFocus:*(a1 + 32)];
  }
}

- (void)transitionCell:(id)cell indexPath:(id)path toStartFocusingAnimated:(BOOL)animated session:(id)session completionHandler:(id)handler
{
  animatedCopy = animated;
  cellCopy = cell;
  pathCopy = path;
  sessionCopy = session;
  handlerCopy = handler;
  [(AVTMultiAvatarController *)self setLiveCell:cellCopy];
  transitionCoordinator = [(AVTMultiAvatarController *)self transitionCoordinator];
  [transitionCoordinator cancelTransitionsMatchingModel:cellCopy];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3042000000;
  v32 = __Block_byref_object_copy__40;
  v33 = __Block_byref_object_dispose__41;
  v34 = 0;
  v17 = [AVTAvatarToLiveTransition alloc];
  v25 = MEMORY[0x1E69E9820];
  v18 = cellCopy;
  v26 = v18;
  v28 = &v29;
  v19 = sessionCopy;
  v27 = v19;
  v20 = [(AVTMultiAvatarController *)self logger:v25];
  v21 = [(AVTAvatarToLiveTransition *)v17 initWithModel:v18 animated:animatedCopy setupHandler:&v25 completionHandler:handlerCopy logger:v20];

  objc_storeWeak(v30 + 5, v21);
  logger = [(AVTMultiAvatarController *)self logger];
  v23 = [(AVTTransition *)v21 description];
  [logger logCarouselAddsTransitionToCoordinator:v23];

  transitionCoordinator2 = [(AVTMultiAvatarController *)self transitionCoordinator];
  [transitionCoordinator2 addTransition:v21];

  _Block_object_dispose(&v29, 8);
  objc_destroyWeak(&v34);
}

void __103__AVTMultiAvatarController_transitionCell_indexPath_toStartFocusingAnimated_session_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [*(a1 + 40) description];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
  v7 = [WeakRetained description];
  [v4 logCarouselCellStartUsingLiveView:v5 associatedTransition:v7];

  [*(a1 + 40) beginUsingAVTViewFromSession:*(a1 + 48)];
  v8 = [*(a1 + 48) avtViewUpdater];
  v9 = [*(a1 + 40) avatar];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __103__AVTMultiAvatarController_transitionCell_indexPath_toStartFocusingAnimated_session_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7F3AC00;
  v12 = v3;
  v10 = v3;
  [v8 setAvatarRecord:v9 completionHandler:v11];
}

- (void)transitionCell:(id)cell toStopFocusingAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  cellCopy = cell;
  handlerCopy = handler;
  [(AVTMultiAvatarController *)self setLiveCell:0];
  logger = [(AVTMultiAvatarController *)self logger];
  displayedRecord = [(AVTMultiAvatarController *)self displayedRecord];
  v12 = [displayedRecord description];
  v13 = [cellCopy description];
  [logger logCarouselStopsFocusingOnCenterItem:v12 withCell:v13];

  transitionCoordinator = [(AVTMultiAvatarController *)self transitionCoordinator];
  [transitionCoordinator cancelTransitionsMatchingModel:cellCopy];

  avtView = [cellCopy avtView];

  if (avtView)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3042000000;
    v29 = __Block_byref_object_copy__40;
    v30 = __Block_byref_object_dispose__41;
    v31 = 0;
    v16 = [AVTAvatarToStaticTransition alloc];
    v22 = MEMORY[0x1E69E9820];
    v25 = &v26;
    v23 = cellCopy;
    v24 = handlerCopy;
    v17 = [(AVTMultiAvatarController *)self logger:v22];
    v18 = [(AVTAvatarToStaticTransition *)v16 initWithModel:v23 animated:animatedCopy completionHandler:&v22 logger:v17];

    objc_storeWeak(v27 + 5, v18);
    logger2 = [(AVTMultiAvatarController *)self logger];
    v20 = [(AVTTransition *)v18 description];
    [logger2 logCarouselAddsTransitionToCoordinator:v20];

    transitionCoordinator2 = [(AVTMultiAvatarController *)self transitionCoordinator];
    [transitionCoordinator2 addTransition:v18];

    _Block_object_dispose(&v26, 8);
    objc_destroyWeak(&v31);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

uint64_t __84__AVTMultiAvatarController_transitionCell_toStopFocusingAnimated_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (v3 = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40)), v4 = [v3 state], v3, v4 == 2))
  {
    v5 = [*(a1 + 32) logger];
    v6 = [*(a1 + 40) description];
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
    v8 = [WeakRetained description];
    [v5 logCarouselCellStopUsingLiveView:v6 associatedTransition:v8];

    [*(a1 + 40) endUsingAVTView];
  }

  result = *(a1 + 48);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

- (AVTAvatarDisplayingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (AVTPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presenterDelegate);

  return WeakRetained;
}

- (CGPoint)lastContentOffset
{
  x = self->_lastContentOffset.x;
  y = self->_lastContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (id)snapshotProviderFocusedOnRecordWithIdentifier:(id)identifier size:(CGSize)size avtViewAspectRatio:(CGSize)ratio dataSource:(id)source environment:(id)environment
{
  height = ratio.height;
  width = ratio.width;
  v11 = size.height;
  v12 = size.width;
  v49 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sourceCopy = source;
  environmentCopy = environment;
  height = [AVTViewCarouselLayout adaptativeLayoutWithAVTViewAspectRatio:width, height];
  v16 = [[AVTMultiAvatarController alloc] initWithDataSource:sourceCopy environment:environmentCopy initialAVTViewLayout:height];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __135__AVTMultiAvatarController_Snapshotting__snapshotProviderFocusedOnRecordWithIdentifier_size_avtViewAspectRatio_dataSource_environment___block_invoke;
  v46[3] = &unk_1E7F3B3B0;
  v17 = identifierCopy;
  v47 = v17;
  v18 = [sourceCopy indexOfRecordPassingTest:v46];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Can't find record with identifier %@ for snapshotting", v17}];
  }

  v38 = v17;
  v37 = [sourceCopy recordAtIndex:v18];
  v19 = [MEMORY[0x1E695DF70] arrayWithObject:?];
  if (v18)
  {
    v20 = [sourceCopy recordAtIndex:v18 - 1];
    [v19 addObject:v20];
  }

  if (v18 < [sourceCopy numberOfRecords] - 1)
  {
    v21 = [sourceCopy recordAtIndex:v18 + 1];
    [v19 addObject:v21];
  }

  v41 = sourceCopy;
  v40 = environmentCopy;
  v22 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:environmentCopy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = v19;
  v24 = [v23 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v43;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v42 + 1) + 8 * i);
        renderingScope = [(AVTMultiAvatarController *)v16 renderingScope];
        v30 = [(_AVTAvatarRecordImageProvider *)v22 providerForRecord:v28 scope:renderingScope];

        v31 = (v30)[2](v30, &__block_literal_global_27, 1);
      }

      v25 = [v23 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v25);
  }

  [(AVTMultiAvatarController *)v16 displayAvatarForRecord:v37 animated:0];
  [(AVTMultiAvatarController *)v16 reloadData];
  v32 = *MEMORY[0x1E695F058];
  v33 = *(MEMORY[0x1E695F058] + 8);
  view = [(AVTMultiAvatarController *)v16 view];
  [view setFrame:{v32, v33, v12, v11}];

  logger = [v40 logger];
  [logger logCarouselSnapshotForIndex:v18 size:{v12, v11}];

  return v16;
}

uint64_t __135__AVTMultiAvatarController_Snapshotting__snapshotProviderFocusedOnRecordWithIdentifier_size_avtViewAspectRatio_dataSource_environment___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)snapshotInBlock:(id)block
{
  blockCopy = block;
  view = [(AVTMultiAvatarController *)self view];
  (*(block + 2))(blockCopy, view);
}

@end