@interface AVTMultiAvatarController
+ (id)listItemsForAvatarRecords:(id)a3;
+ (id)newCollectionViewLayoutForEngagedCellSize:(CGSize)a3 boundsSize:(CGSize)a4 environment:(id)a5;
+ (id)snapshotProviderFocusedOnRecordWithIdentifier:(id)a3 size:(CGSize)a4 avtViewAspectRatio:(CGSize)a5 dataSource:(id)a6 environment:(id)a7;
- (AVTAvatarDisplayingControllerDelegate)delegate;
- (AVTCarouselPlusButtonView)addItemView;
- (AVTMultiAvatarController)initWithDataSource:(id)a3 environment:(id)a4 initialAVTViewLayout:(id)a5;
- (AVTPresenterDelegate)presenterDelegate;
- (BOOL)shouldCurrentlyDisplayedRecordTransitionToLive;
- (CGPoint)lastContentOffset;
- (UIView)view;
- (id)cellForRecordItem:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)getFirstItem;
- (id)indexPathForItemClosestToCenter;
- (id)listItemsForDisplay;
- (id)loadRecords;
- (id)recordForItem:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)listItemIndexForRecord:(id)a3;
- (void)buildCollectionViewAndConfigureLayoutIfNeeded;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)createAddItemViewIfNeeded;
- (void)createAvatar;
- (void)dealloc;
- (void)displayAvatarForRecord:(id)a3 animated:(BOOL)a4;
- (void)layoutDidChangeWhileMoving:(BOOL)a3 offset:(CGPoint)a4;
- (void)loadRecordsIfNeeded;
- (void)loadView;
- (void)notifyDelegateForScrollingTowardItem:(id)a3 ratio:(double)a4;
- (void)notifyDelegateForScrollingTowardItemFromOffset:(CGPoint)a3;
- (void)notifyingContainerViewDidChangeSize:(CGSize)a3;
- (void)preloadAll;
- (void)prepareToTransitionToVisible:(BOOL)a3 completionHandler:(id *)a4;
- (void)prepareViewWithLayout:(id)a3;
- (void)reloadData;
- (void)reloadRecordListItems;
- (void)scrollToDisplayedRecord;
- (void)scrollToViewAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)scrollToViewForAvatarRecord:(id)a3 animated:(BOOL)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAllowsCreate:(BOOL)a3 animated:(BOOL)a4;
- (void)setDecelerationRate:(double)a3;
- (void)setDisplayedRecordFromIndex:(unint64_t)a3;
- (void)snapshotInBlock:(id)a3;
- (void)stopUsingAVTViewSessionSynchronously:(BOOL)a3 completionHandler:(id)a4;
- (void)transitionCell:(id)a3 indexPath:(id)a4 toStartFocusingAnimated:(BOOL)a5 session:(id)a6 completionHandler:(id)a7;
- (void)transitionCell:(id)a3 toStopFocusingAnimated:(BOOL)a4 completionHandler:(id)a5;
- (void)transitionCenterCellIfPresentToStartFocusing;
- (void)transitionCenterCellIfPresentToStopFocusingAnimated:(BOOL)a3;
- (void)transitionCenterCellToStartFocusing:(id)a3 indexPath:(id)a4;
- (void)transitionCurrentDisplayedRecordAnimated:(BOOL)a3;
- (void)updateCachedCanCreateValueIfNeeded;
- (void)updateDisplayedRecordIfNeeded;
- (void)useAVTViewFromSession:(id)a3 withLayout:(id)a4;
@end

@implementation AVTMultiAvatarController

+ (id)newCollectionViewLayoutForEngagedCellSize:(CGSize)a3 boundsSize:(CGSize)a4 environment:(id)a5
{
  height = a4.height;
  width = a4.width;
  v7 = a3.height;
  v8 = a3.width;
  v9 = a5;
  v10 = [v9 deviceIsPad];
  v11 = width > 400.0;
  v12 = v10 & v11;
  v13 = 0.3;
  if ((v10 & v11) != 0)
  {
    v14 = 0.2;
  }

  else
  {
    v14 = 0.3;
  }

  if ((v10 & v11) == 0)
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
  v21 = [[AVTZIndexEngagementListCollectionViewLayout alloc] initWithEngagementLayout:v20 minAlphaFactor:v9 environment:v14];

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

+ (id)listItemsForAvatarRecords:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (AVTMultiAvatarController)initWithDataSource:(id)a3 environment:(id)a4 initialAVTViewLayout:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = AVTMultiAvatarController;
  v12 = [(AVTMultiAvatarController *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, a3);
    [(AVTAvatarRecordDataSource *)v13->_dataSource addObserver:v13];
    v14 = [(AVTUIEnvironment *)v10 logger];
    logger = v13->_logger;
    v13->_logger = v14;

    v13->_environment = v10;
    v16 = +[AVTRenderingScope listControllerThumbnailScope];
    renderingScope = v13->_renderingScope;
    v13->_renderingScope = v16;

    v18 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:v10];
    thumbnailRenderer = v13->_thumbnailRenderer;
    v13->_thumbnailRenderer = v18;

    v20 = +[AVTTransitionCoordinator synchronousTransitionCoordinator];
    transitionCoordinator = v13->_transitionCoordinator;
    v13->_transitionCoordinator = v20;

    v13->_decelerationRate = *MEMORY[0x1E69DE3A0];
    objc_storeStrong(&v13->_avtViewLayout, a5);
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AVTMultiAvatarController *)self getFirstItem];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(AVTMultiAvatarController *)self recordListItems];
  [v3 addObjectsFromArray:v5];

  return v3;
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

- (void)setDecelerationRate:(double)a3
{
  if (self->_decelerationRate != a3)
  {
    self->_decelerationRate = a3;
    v4 = [(AVTMultiAvatarController *)self collectionView];
    [v4 setDecelerationRate:a3];
  }
}

- (void)updateCachedCanCreateValueIfNeeded
{
  if (!self->_cachedCanCreateValue)
  {
    v9[7] = v2;
    v9[8] = v3;
    v5 = [(AVTMultiAvatarController *)self dataSource];
    v6 = [v5 internalRecordStore];
    v9[0] = 0;
    v7 = [v6 canCreateAvatarWithError:v9];
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

  v3 = [(AVTMultiAvatarController *)self cachedCanCreateValue];
  if (([v3 BOOLValue] & 1) == 0)
  {

    goto LABEL_8;
  }

  v4 = [(AVTMultiAvatarController *)self allowsCreate];

  if (!v4)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = [(AVTMultiAvatarController *)self addListItem];

  if (!v5)
  {
    v6 = [AVTAvatarListViewItem alloc];
    v7 = [(AVTMultiAvatarController *)self addItemView];
    v8 = [(AVTAvatarListViewItem *)v6 initWithView:v7];
    [(AVTMultiAvatarController *)self setAddListItem:v8];
  }

  v9 = [(AVTMultiAvatarController *)self addListItem];
LABEL_9:

  return v9;
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
    v4 = [(AVTMultiAvatarController *)self environment];
    v5 = [(AVTCarouselPlusButtonView *)v3 initWithFrame:v4 environment:0.0, 0.0, 100.0, 100.0];
    addItemView = self->_addItemView;
    self->_addItemView = v5;

    v7 = [(AVTMultiAvatarController *)self collectionViewLayout];

    if (v7)
    {
      v9 = [(AVTMultiAvatarController *)self collectionViewLayout];
      v8 = [v9 engagementLayout];
      [v8 engagedCellSize];
      [(AVTCarouselPlusButtonView *)self->_addItemView setMaxItemSize:?];
    }
  }
}

- (void)setAllowsCreate:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_allowsCreate != a3)
  {
    v71 = v9;
    v72 = v8;
    v73 = v7;
    v74 = v6;
    v75 = v4;
    v76 = v5;
    v11 = a3;
    self->_allowsCreate = a3;
    [(AVTMultiAvatarController *)self updateCachedCanCreateValueIfNeeded];
    if (AVTUIIsAvatarUIEnabled())
    {
      v13 = [(AVTMultiAvatarController *)self cachedCanCreateValue];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        v15 = [(AVTMultiAvatarController *)self collectionViewLayout];
        v16 = v15;
        if (v11)
        {
          v17 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
          [v16 setPlusButtonIndexPath:v17];
        }

        else
        {
          [v15 setPlusButtonIndexPath:0];
        }

        v18 = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
        v19 = [v18 item];

        v20 = [(AVTMultiAvatarController *)self displayedRecord];
        v21 = [(AVTMultiAvatarController *)self listItemIndexForRecord:v20];

        v22 = [(AVTMultiAvatarController *)self collectionViewLayout];
        v23 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:0];
        [v22 setBackIndexPath:v23];

        v24 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:2 * (v19 != 0) curve:0 animations:dbl_1BB416380[v19 == 0]];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __53__AVTMultiAvatarController_setAllowsCreate_animated___block_invoke;
        v68[3] = &unk_1E7F3B550;
        v68[4] = self;
        v69 = v19 == 0;
        v70 = a4;
        [v24 addCompletion:v68];
        if (v11)
        {
          v25 = [(AVTMultiAvatarController *)self collectionViewLayout];
          v26 = [(AVTMultiAvatarController *)self collectionView];
          [v26 bounds];
          v28 = v27;
          v30 = v29;
          v31 = [(AVTMultiAvatarController *)self collectionView];
          [v31 bounds];
          [v25 centerForCenteringElementAtIndex:v19 + 1 visibleBoundsSize:v28 proposedOrigin:{v30, v32, v33}];
          v35 = v34;
          v37 = v36;

          v38 = [(AVTMultiAvatarController *)self collectionView];
          [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v38 collectionView:v35, v37];
          v40 = v39;
          v42 = v41;

          v43 = [(AVTMultiAvatarController *)self collectionViewLayout];
          [v43 setTargetContentOffsetForAnimations:{v40, v42}];

          v44 = [(AVTMultiAvatarController *)self collectionView];
          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 3221225472;
          v67[2] = __53__AVTMultiAvatarController_setAllowsCreate_animated___block_invoke_2;
          v67[3] = &unk_1E7F3A9B8;
          v67[4] = self;
          [v44 performBatchUpdates:v67 withAnimator:v24];

          [v24 startAnimation];
        }

        else
        {
          if (v19)
          {
            v45 = [(AVTMultiAvatarController *)self collectionViewLayout];
            v46 = [(AVTMultiAvatarController *)self collectionView];
            [v46 bounds];
            v48 = v47;
            v50 = v49;
            v51 = [(AVTMultiAvatarController *)self collectionView];
            [v51 bounds];
            [v45 centerForCenteringElementAtIndex:v19 - 1 visibleBoundsSize:v48 proposedOrigin:{v50, v52, v53}];
            v55 = v54;
            v57 = v56;

            v58 = [(AVTMultiAvatarController *)self collectionView];
            [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v58 collectionView:v55, v57];
            v60 = v59;
            v62 = v61;

            v63 = [(AVTMultiAvatarController *)self collectionViewLayout];
            [v63 setTargetContentOffsetForAnimations:{v60, v62}];
          }

          v64 = [(AVTMultiAvatarController *)self collectionView];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __53__AVTMultiAvatarController_setAllowsCreate_animated___block_invoke_3;
          v66[3] = &unk_1E7F3A9B8;
          v66[4] = self;
          [v64 performBatchUpdates:v66 withAnimator:v24];

          [v24 startAnimation];
          if (!v19)
          {
            v65 = [(AVTMultiAvatarController *)self collectionView];
            [v65 contentOffset];
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
  v3 = [(AVTMultiAvatarController *)self avtViewLayout];

  if (v3)
  {
    v4 = [(AVTMultiAvatarController *)self avtViewLayout];
    v5 = [(AVTMultiAvatarController *)self view];
    [v5 bounds];
    [v4 avatarViewSizeForAvailableContentSize:{v6, v7}];
    v9 = v8;
    v11 = v10;

    v12 = [(AVTMultiAvatarController *)self collectionViewLayout];
    if (!v12 || (v13 = v12, -[AVTMultiAvatarController collectionViewLayout](self, "collectionViewLayout"), v14 = objc_claimAutoreleasedReturnValue(), [v14 engagementLayout], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "engagedCellSize"), v17 = v16, v19 = v18, v15, v14, v13, v17 != v9) || v19 != v11)
    {
      v20 = objc_opt_class();
      v21 = [(AVTMultiAvatarController *)self view];
      [v21 bounds];
      v23 = v22;
      v25 = v24;
      v26 = [(AVTMultiAvatarController *)self environment];
      v52 = [v20 newCollectionViewLayoutForEngagedCellSize:v26 boundsSize:v9 environment:{v11, v23, v25}];

      if ([(AVTMultiAvatarController *)self allowsCreate])
      {
        v27 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
        [v52 setPlusButtonIndexPath:v27];
      }

      else
      {
        [v52 setPlusButtonIndexPath:0];
      }

      v28 = [(AVTMultiAvatarController *)self displayedRecord];
      v29 = [(AVTMultiAvatarController *)self listItemIndexForRecord:v28];

      v30 = [MEMORY[0x1E696AC88] indexPathForItem:v29 inSection:0];
      [v52 setBackIndexPath:v30];

      [(AVTMultiAvatarController *)self setCollectionViewLayout:v52];
      v31 = [(AVTMultiAvatarController *)self collectionViewLayout];
      v32 = [v31 engagementLayout];
      [v32 engagedCellSize];
      v34 = v33;
      v36 = v35;
      v37 = [(AVTMultiAvatarController *)self addItemView];
      [v37 setMaxItemSize:{v34, v36}];

      v38 = [(AVTMultiAvatarController *)self collectionView];

      if (v38)
      {
        v39 = [(AVTMultiAvatarController *)self collectionView];
        [v39 setCollectionViewLayout:v52];
      }

      else
      {
        v40 = objc_alloc(MEMORY[0x1E69DC7F0]);
        v41 = [(AVTMultiAvatarController *)self view];
        [v41 bounds];
        v39 = [v40 initWithFrame:v52 collectionViewLayout:?];

        v42 = [AVTCenteringCollectionViewDelegate alloc];
        v43 = [(AVTMultiAvatarController *)self environment];
        v44 = [(AVTCenteringCollectionViewDelegate *)v42 initWithCollectionView:v39 delegate:self environment:v43];
        [(AVTMultiAvatarController *)self setCenteringDelegate:v44];

        v45 = [(AVTMultiAvatarController *)self centeringDelegate];
        [v39 setDelegate:v45];

        [v39 setDataSource:self];
        [(AVTMultiAvatarController *)self decelerationRate];
        [v39 setDecelerationRate:?];
        v46 = objc_opt_class();
        v47 = +[AVTAvatarListCell reuseIdentifier];
        [v39 registerClass:v46 forCellWithReuseIdentifier:v47];

        v48 = objc_opt_class();
        v49 = +[AVTCollectionViewCell reuseIdentifier];
        [v39 registerClass:v48 forCellWithReuseIdentifier:v49];

        v50 = [MEMORY[0x1E69DC888] clearColor];
        [v39 setBackgroundColor:v50];

        [v39 setShowsHorizontalScrollIndicator:0];
        [v39 setContentInsetAdjustmentBehavior:2];
        [v39 setAutoresizingMask:18];
        v51 = [(AVTMultiAvatarController *)self view];
        [v51 addSubview:v39];

        [(AVTMultiAvatarController *)self setCollectionView:v39];
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
    v5 = [(AVTMultiAvatarController *)self dataSource];
    v4 = [v5 recordStore];
    [v3 preloadAllAvatarsWithStore:v4 completionHandler:0];
  }
}

- (id)loadRecords
{
  v3 = [(AVTMultiAvatarController *)self dataSource];
  v4 = [v3 numberOfRecords];

  v5 = [MEMORY[0x1E695DF70] array];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(AVTMultiAvatarController *)self dataSource];
      v8 = [v7 recordAtIndex:i];

      [v5 addObject:v8];
    }
  }

  v9 = [v5 copy];

  return v9;
}

- (void)createAvatar
{
  if ([(AVTMultiAvatarController *)self allowsCreate])
  {
    v8 = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
    v3 = MEMORY[0x1E696AC88];
    v4 = [(AVTMultiAvatarController *)self listItemsForDisplay];
    v5 = [(AVTMultiAvatarController *)self addListItem];
    v6 = [v3 indexPathForItem:objc_msgSend(v4 inSection:{"indexOfObject:", v5), 0}];

    if ([v8 isEqual:v6])
    {
      v7 = [(AVTMultiAvatarController *)self delegate];
      [v7 displayingControllerWantsToPresentEditorForCreation:self];
    }
  }
}

- (void)scrollToDisplayedRecord
{
  v3 = [(AVTMultiAvatarController *)self displayedRecord];
  [(AVTMultiAvatarController *)self scrollToViewForAvatarRecord:v3 animated:0];
}

- (void)scrollToViewForAvatarRecord:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = v6;
  if (!v6)
  {
    v8 = [(AVTMultiAvatarController *)self getFirstItem];

    v6 = 0;
    if (v8)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = [(AVTMultiAvatarController *)self listItemIndexForRecord:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    [(AVTMultiAvatarController *)self scrollToViewAtIndex:v7 animated:v4];
  }
}

- (void)scrollToViewAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v29 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  v7 = [(AVTMultiAvatarController *)self collectionViewLayout];
  v8 = [v29 item];
  v9 = [(AVTMultiAvatarController *)self collectionView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v14 = [(AVTMultiAvatarController *)self collectionView];
  [v14 bounds];
  [v7 centerForCenteringElementAtIndex:v8 visibleBoundsSize:v11 proposedOrigin:{v13, v15, v16}];
  v18 = v17;
  v20 = v19;

  v21 = [(AVTMultiAvatarController *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v21 collectionView:v18, v20];
  v23 = v22;
  v25 = v24;

  v26 = [(AVTMultiAvatarController *)self collectionView];
  [v26 setContentOffset:v4 animated:{v23, v25}];

  if (!v4)
  {
    v27 = [(AVTMultiAvatarController *)self listItemsForDisplay];
    v28 = [v27 objectAtIndexedSubscript:a3];
    [(AVTMultiAvatarController *)self notifyDelegateForScrollingTowardItem:v28 ratio:1.0];
  }
}

- (unint64_t)listItemIndexForRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AVTMultiAvatarController_listItemIndexForRecord___block_invoke;
  v9[3] = &unk_1E7F3B5A0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

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

- (id)recordForItem:(id)a3
{
  v3 = a3;
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
  [v3 downcastWithRecordHandler:v6 viewHandler:0];
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
  v3 = [(AVTMultiAvatarController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;
  v8 = [(AVTMultiAvatarController *)self collectionView];
  v9 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:v8 collectionView:v5, v7];

  return v9;
}

- (id)cellForRecordItem:(id)a3
{
  v4 = a3;
  v5 = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"List item not found %@", v4}];
  }

  v7 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:0];
  v8 = [(AVTMultiAvatarController *)self collectionView];
  v9 = [v8 cellForItemAtIndexPath:v7];

  return v9;
}

- (BOOL)shouldCurrentlyDisplayedRecordTransitionToLive
{
  v3 = [(AVTMultiAvatarController *)self displayedRecord];
  v4 = [(AVTMultiAvatarController *)self listItemIndexForRecord:v3];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [(AVTMultiAvatarController *)self collectionViewLayout];
  v7 = [(AVTMultiAvatarController *)self collectionView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v12 = [(AVTMultiAvatarController *)self collectionView];
  [v12 bounds];
  [v6 centerForCenteringElementAtIndex:v4 visibleBoundsSize:v9 proposedOrigin:{v11, v13, v14}];
  v16 = v15;
  v18 = v17;

  v19 = [(AVTMultiAvatarController *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v19 collectionView:v16, v18];
  v21 = v20;

  v22 = [(AVTMultiAvatarController *)self collectionView];
  [v22 contentOffset];
  v5 = vabdd_f64(v21, v23) < 1.0;

  return v5;
}

- (void)updateDisplayedRecordIfNeeded
{
  v3 = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
  if (v3)
  {
    v4 = v3;
    -[AVTMultiAvatarController setDisplayedRecordFromIndex:](self, "setDisplayedRecordFromIndex:", [v3 item]);
    v3 = v4;
  }
}

- (void)setDisplayedRecordFromIndex:(unint64_t)a3
{
  v5 = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Can't find displayed record for index %ld", a3}];
  }

  v7 = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v8 = [v7 objectAtIndex:a3];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AVTMultiAvatarController_setDisplayedRecordFromIndex___block_invoke;
  v12[3] = &unk_1E7F3B5F0;
  v12[4] = self;
  v14 = a3;
  v9 = v8;
  v13 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AVTMultiAvatarController_setDisplayedRecordFromIndex___block_invoke_2;
  v11[3] = &unk_1E7F3B618;
  v11[4] = self;
  v11[5] = &v15;
  [v9 downcastWithRecordHandler:v12 viewHandler:v11];
  v10 = [(AVTMultiAvatarController *)self addItemView];
  [v10 setAllowHighlight:*(v16 + 24)];

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

- (void)transitionCurrentDisplayedRecordAnimated:(BOOL)a3
{
  v5 = [(AVTMultiAvatarController *)self displayedRecord];
  v6 = [(AVTMultiAvatarController *)self listItemIndexForRecord:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    v8 = [(AVTMultiAvatarController *)self collectionView];
    v9 = [v8 cellForItemAtIndexPath:v7];

    if ([(AVTMultiAvatarController *)self shouldCurrentlyDisplayedRecordTransitionToLive])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__AVTMultiAvatarController_transitionCurrentDisplayedRecordAnimated___block_invoke;
      v10[3] = &unk_1E7F3AB88;
      v10[4] = self;
      v11 = v7;
      v12 = a3;
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

- (void)notifyDelegateForScrollingTowardItemFromOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
  v18 = 0.0;
  v7 = [(AVTMultiAvatarController *)self collectionView];
  [v7 contentOffset];
  v9 = v8;
  v11 = v10;
  v12 = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v13 = [v12 count];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__AVTMultiAvatarController_notifyDelegateForScrollingTowardItemFromOffset___block_invoke;
  v17[3] = &unk_1E7F3B640;
  v17[4] = self;
  v14 = [AVTCenteringCollectionViewHelper indexPathForItemBeingScrolledTowardFromOffset:v6 currentOffset:v13 nearestItemToCenter:v17 itemCount:&v18 itemOffsetProvider:x ratio:y, v9, v11];

  if (v14)
  {
    v15 = [(AVTMultiAvatarController *)self listItemsForDisplay];
    v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v14, "item")}];

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

- (void)notifyDelegateForScrollingTowardItem:(id)a3 ratio:(double)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AVTMultiAvatarController_notifyDelegateForScrollingTowardItem_ratio___block_invoke;
  v5[3] = &unk_1E7F3B668;
  v5[4] = self;
  *&v5[5] = a4;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__AVTMultiAvatarController_notifyDelegateForScrollingTowardItem_ratio___block_invoke_2;
  v4[3] = &unk_1E7F3B690;
  v4[4] = self;
  *&v4[5] = a4;
  [a3 downcastWithRecordHandler:v5 viewHandler:v4];
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

- (void)layoutDidChangeWhileMoving:(BOOL)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  [(AVTMultiAvatarController *)self lastContentOffset];
  v9 = v8;
  v11 = v10;
  [(AVTMultiAvatarController *)self setLastContentOffset:x, y];
  if (v6)
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

- (void)notifyingContainerViewDidChangeSize:(CGSize)a3
{
  if ([(AVTMultiAvatarController *)self isViewLoaded:a3.width])
  {
    [(AVTMultiAvatarController *)self buildCollectionViewAndConfigureLayoutIfNeeded];

    [(AVTMultiAvatarController *)self reloadData];
  }
}

- (void)displayAvatarForRecord:(id)a3 animated:(BOOL)a4
{
  v5 = a4;
  v13 = a3;
  [(AVTMultiAvatarController *)self loadRecordsIfNeeded];
  v7 = [(AVTMultiAvatarController *)self listItemIndexForRecord:v13];
  v8 = v13;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v13 || ([(AVTMultiAvatarController *)self displayedRecord], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = [(AVTMultiAvatarController *)self displayedRecord];
      v10 = [v13 isEqual:v9];

      if (v13)
      {
        if (v5)
        {
          goto LABEL_11;
        }

LABEL_9:
        if ((v10 & 1) == 0)
        {
          [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStopFocusingAnimated:0];
          [(AVTMultiAvatarController *)self setDisplayedRecordFromIndex:v7];
          v11 = [(AVTMultiAvatarController *)self displayedRecord];
          [(AVTMultiAvatarController *)self scrollToViewForAvatarRecord:v11 animated:0];

          [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStartFocusing];
LABEL_12:
          v8 = v13;
          goto LABEL_13;
        }

LABEL_11:
        [(AVTMultiAvatarController *)self setDisplayedRecordFromIndex:v7];
        v12 = [(AVTMultiAvatarController *)self displayedRecord];
        [(AVTMultiAvatarController *)self scrollToViewForAvatarRecord:v12 animated:v5];

        goto LABEL_12;
      }
    }

    else
    {
      v10 = 1;
    }

    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_13:
}

- (void)loadRecordsIfNeeded
{
  v3 = [(AVTMultiAvatarController *)self recordListItems];

  if (!v3)
  {

    [(AVTMultiAvatarController *)self reloadRecordListItems];
  }
}

- (void)reloadRecordListItems
{
  v9 = [(AVTMultiAvatarController *)self loadRecords];
  v3 = [objc_opt_class() listItemsForAvatarRecords:v9];
  [(AVTMultiAvatarController *)self setRecordListItems:v3];

  v4 = [(AVTMultiAvatarController *)self displayedRecord];
  if (!v4 || (v5 = v4, -[AVTMultiAvatarController displayedRecord](self, "displayedRecord"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v9 containsObject:v6], v6, v5, (v7 & 1) == 0))
  {
    v8 = [v9 firstObject];
    [(AVTMultiAvatarController *)self setDisplayedRecordFromIndex:[(AVTMultiAvatarController *)self listItemIndexForRecord:v8]];
  }
}

- (void)reloadData
{
  [(AVTMultiAvatarController *)self reloadRecordListItems];
  v3 = [(AVTMultiAvatarController *)self liveCell];

  if (v3)
  {
    [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStopFocusingAnimated:0];
    v4 = [(AVTMultiAvatarController *)self collectionView];
    [v4 reloadData];

    [(AVTMultiAvatarController *)self scrollToDisplayedRecord];

    [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStartFocusing];
  }

  else
  {
    v5 = [(AVTMultiAvatarController *)self collectionView];
    [v5 reloadData];

    [(AVTMultiAvatarController *)self scrollToDisplayedRecord];
  }
}

- (void)prepareViewWithLayout:(id)a3
{
  [(AVTMultiAvatarController *)self setAvtViewLayout:a3];

  [(AVTMultiAvatarController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
}

- (void)useAVTViewFromSession:(id)a3 withLayout:(id)a4
{
  v6 = a3;
  [(AVTMultiAvatarController *)self setAvtViewLayout:a4];
  [(AVTMultiAvatarController *)self setAvtViewSession:v6];

  [(AVTMultiAvatarController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
  if ([(AVTMultiAvatarController *)self shouldCurrentlyDisplayedRecordTransitionToLive])
  {

    [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStartFocusing];
  }
}

- (void)stopUsingAVTViewSessionSynchronously:(BOOL)a3 completionHandler:(id)a4
{
  v7 = a4;
  v5 = [(AVTMultiAvatarController *)self transitionCoordinator];
  [v5 cancelAllTransitions];

  [(AVTMultiAvatarController *)self transitionCenterCellIfPresentToStopFocusingAnimated:0];
  [(AVTMultiAvatarController *)self setAvtViewSession:0];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 1);
    v6 = v7;
  }
}

- (void)prepareToTransitionToVisible:(BOOL)a3 completionHandler:(id *)a4
{
  v5 = a3;
  v7 = [(AVTMultiAvatarController *)self collectionView];
  [v7 layoutIfNeeded];

  v8 = [(AVTMultiAvatarController *)self indexPathForItemClosestToCenter];
  if (v8)
  {
    [(AVTMultiAvatarController *)self setHideImageForDisplayedRecord:1];
    v9 = [(AVTMultiAvatarController *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__AVTMultiAvatarController_prepareToTransitionToVisible_completionHandler___block_invoke;
    v13[3] = &unk_1E7F3B6B8;
    v14 = v5;
    v13[4] = self;
    v13[5] = a4;
    [v10 downcastWithCellHandler:0 listCellHandler:v13];

    if (!v5)
    {
      v11 = [(AVTMultiAvatarController *)self displayedRecord];
      [(AVTMultiAvatarController *)self scrollToViewForAvatarRecord:v11 animated:1];
    }

    v12 = [(AVTMultiAvatarController *)self collectionView];
    [v12 setScrollEnabled:v5];
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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTMultiAvatarController *)self listItemsForDisplay:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

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
  v19 = v6;
  v20 = v7;
  v21 = self;
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 item];
  v10 = [(AVTMultiAvatarController *)self displayedRecord];
  v11 = [(AVTMultiAvatarController *)self listItemIndexForRecord:v10];

  if (v9 == v11)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__AVTMultiAvatarController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
    v12[3] = &unk_1E7F3ABB0;
    v12[4] = self;
    v13 = v8;
    [v7 downcastWithCellHandler:0 listCellHandler:v12];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__AVTMultiAvatarController_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke;
  v5[3] = &unk_1E7F3ABD8;
  v5[4] = self;
  [a4 downcastWithCellHandler:0 listCellHandler:{v5, a5}];
}

void __83__AVTMultiAvatarController_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 transitionCoordinator];
  [v4 cancelTransitionsMatchingModel:v3];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v8 = [v7 objectAtIndex:{objc_msgSend(v6, "item")}];

  v9 = [(AVTMultiAvatarController *)self addListItem];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    [(AVTMultiAvatarController *)self createAvatar];
  }

  [v11 deselectItemAtIndexPath:v6 animated:1];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [v4 avtui_isMoving];
  [v4 contentOffset];
  v7 = v6;
  v9 = v8;

  [(AVTMultiAvatarController *)self layoutDidChangeWhileMoving:v5 offset:v7, v9];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(AVTMultiAvatarController *)self transitionCurrentDisplayedRecordAnimated:1];
  }
}

- (void)transitionCenterCellIfPresentToStartFocusing
{
  v3 = [(AVTMultiAvatarController *)self displayedRecord];
  v4 = [(AVTMultiAvatarController *)self listItemIndexForRecord:v3];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't find a displayed record"];
  }

  v5 = [(AVTMultiAvatarController *)self listItemsForDisplay];
  v6 = [v5 objectAtIndexedSubscript:v4];
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

- (void)transitionCenterCellIfPresentToStopFocusingAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTMultiAvatarController *)self liveCell];

  if (v5)
  {
    v6 = [(AVTMultiAvatarController *)self delegate];
    [v6 willEndFocus:self];

    v7 = MEMORY[0x1BFB0DE80]();
    v8 = [(AVTMultiAvatarController *)self liveCell];
    [(AVTMultiAvatarController *)self transitionCell:v8 toStopFocusingAnimated:v3 completionHandler:v7];

    if (!v3)
    {
      v9 = [(AVTMultiAvatarController *)self delegate];
      [v9 didEndFocus:self];
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

- (void)transitionCenterCellToStartFocusing:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(AVTMultiAvatarController *)self liveCell];

    if (!v8)
    {
      v9 = [(AVTMultiAvatarController *)self collectionView];
      v10 = [v9 avtui_isMoving];

      if ((v10 & 1) == 0)
      {
        v11 = [(AVTMultiAvatarController *)self avtViewSession];
        if ([v11 isActive])
        {
          v12 = [v11 avtViewUpdater];
          v13 = [v12 avatarRecord];
          v14 = [(AVTMultiAvatarController *)self displayedRecord];
          v15 = [v13 isEqual:v14];

          v16 = [(AVTMultiAvatarController *)self delegate];
          [v16 willBeginFocus:self];

          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __74__AVTMultiAvatarController_transitionCenterCellToStartFocusing_indexPath___block_invoke;
          v17[3] = &unk_1E7F3AA80;
          v17[4] = self;
          [(AVTMultiAvatarController *)self transitionCell:v6 indexPath:v7 toStartFocusingAnimated:v15 ^ 1u session:v11 completionHandler:v17];
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

- (void)transitionCell:(id)a3 indexPath:(id)a4 toStartFocusingAnimated:(BOOL)a5 session:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  [(AVTMultiAvatarController *)self setLiveCell:v12];
  v16 = [(AVTMultiAvatarController *)self transitionCoordinator];
  [v16 cancelTransitionsMatchingModel:v12];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3042000000;
  v32 = __Block_byref_object_copy__40;
  v33 = __Block_byref_object_dispose__41;
  v34 = 0;
  v17 = [AVTAvatarToLiveTransition alloc];
  v25 = MEMORY[0x1E69E9820];
  v18 = v12;
  v26 = v18;
  v28 = &v29;
  v19 = v14;
  v27 = v19;
  v20 = [(AVTMultiAvatarController *)self logger:v25];
  v21 = [(AVTAvatarToLiveTransition *)v17 initWithModel:v18 animated:v9 setupHandler:&v25 completionHandler:v15 logger:v20];

  objc_storeWeak(v30 + 5, v21);
  v22 = [(AVTMultiAvatarController *)self logger];
  v23 = [(AVTTransition *)v21 description];
  [v22 logCarouselAddsTransitionToCoordinator:v23];

  v24 = [(AVTMultiAvatarController *)self transitionCoordinator];
  [v24 addTransition:v21];

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

- (void)transitionCell:(id)a3 toStopFocusingAnimated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(AVTMultiAvatarController *)self setLiveCell:0];
  v10 = [(AVTMultiAvatarController *)self logger];
  v11 = [(AVTMultiAvatarController *)self displayedRecord];
  v12 = [v11 description];
  v13 = [v8 description];
  [v10 logCarouselStopsFocusingOnCenterItem:v12 withCell:v13];

  v14 = [(AVTMultiAvatarController *)self transitionCoordinator];
  [v14 cancelTransitionsMatchingModel:v8];

  v15 = [v8 avtView];

  if (v15)
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
    v23 = v8;
    v24 = v9;
    v17 = [(AVTMultiAvatarController *)self logger:v22];
    v18 = [(AVTAvatarToStaticTransition *)v16 initWithModel:v23 animated:v6 completionHandler:&v22 logger:v17];

    objc_storeWeak(v27 + 5, v18);
    v19 = [(AVTMultiAvatarController *)self logger];
    v20 = [(AVTTransition *)v18 description];
    [v19 logCarouselAddsTransitionToCoordinator:v20];

    v21 = [(AVTMultiAvatarController *)self transitionCoordinator];
    [v21 addTransition:v18];

    _Block_object_dispose(&v26, 8);
    objc_destroyWeak(&v31);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 1);
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

+ (id)snapshotProviderFocusedOnRecordWithIdentifier:(id)a3 size:(CGSize)a4 avtViewAspectRatio:(CGSize)a5 dataSource:(id)a6 environment:(id)a7
{
  height = a5.height;
  width = a5.width;
  v11 = a4.height;
  v12 = a4.width;
  v49 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v39 = [AVTViewCarouselLayout adaptativeLayoutWithAVTViewAspectRatio:width, height];
  v16 = [[AVTMultiAvatarController alloc] initWithDataSource:v14 environment:v15 initialAVTViewLayout:v39];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __135__AVTMultiAvatarController_Snapshotting__snapshotProviderFocusedOnRecordWithIdentifier_size_avtViewAspectRatio_dataSource_environment___block_invoke;
  v46[3] = &unk_1E7F3B3B0;
  v17 = v13;
  v47 = v17;
  v18 = [v14 indexOfRecordPassingTest:v46];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Can't find record with identifier %@ for snapshotting", v17}];
  }

  v38 = v17;
  v37 = [v14 recordAtIndex:v18];
  v19 = [MEMORY[0x1E695DF70] arrayWithObject:?];
  if (v18)
  {
    v20 = [v14 recordAtIndex:v18 - 1];
    [v19 addObject:v20];
  }

  if (v18 < [v14 numberOfRecords] - 1)
  {
    v21 = [v14 recordAtIndex:v18 + 1];
    [v19 addObject:v21];
  }

  v41 = v14;
  v40 = v15;
  v22 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:v15];
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
        v29 = [(AVTMultiAvatarController *)v16 renderingScope];
        v30 = [(_AVTAvatarRecordImageProvider *)v22 providerForRecord:v28 scope:v29];

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
  v34 = [(AVTMultiAvatarController *)v16 view];
  [v34 setFrame:{v32, v33, v12, v11}];

  v35 = [v40 logger];
  [v35 logCarouselSnapshotForIndex:v18 size:{v12, v11}];

  return v16;
}

uint64_t __135__AVTMultiAvatarController_Snapshotting__snapshotProviderFocusedOnRecordWithIdentifier_size_avtViewAspectRatio_dataSource_environment___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)snapshotInBlock:(id)a3
{
  v5 = a3;
  v6 = [(AVTMultiAvatarController *)self view];
  (*(a3 + 2))(v5, v6);
}

@end