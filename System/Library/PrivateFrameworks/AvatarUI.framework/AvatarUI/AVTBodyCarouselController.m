@interface AVTBodyCarouselController
+ (id)newCollectionViewLayoutForEngagedCellSize:(CGSize)a3 boundsSize:(CGSize)a4 environment:(id)a5;
- (AVTBodyCarouselController)initWithEnvironment:(id)a3 initialAVTViewLayout:(id)a4 avatarRecord:(id)a5 editorPresentationContext:(unint64_t)a6;
- (AVTPresenterDelegate)presenterDelegate;
- (BOOL)shouldCurrentlyDisplayedConfigurationTransitionToLive;
- (CGSize)centerCellSize;
- (UIView)view;
- (id)cellForConfiguration:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)configurationsForEditorPresentationContext:(unint64_t)a3;
- (id)configureLayoutIfNeededWithHeight:(double)a3;
- (id)indexPathForItemClosestToCenter;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)buildCollectionViewAndConfigureLayoutIfNeeded;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)layoutDidChangeWhileMoving:(BOOL)a3 offset:(CGPoint)a4;
- (void)loadView;
- (void)notifyingContainerViewDidChangeSize:(CGSize)a3;
- (void)prepareViewWithLayout:(id)a3;
- (void)reloadDisplayedSticker;
- (void)scrollToDisplayedConfiguration;
- (void)scrollToViewAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)scrollToViewForConfiguration:(id)a3 animated:(BOOL)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setDecelerationRate:(double)a3;
- (void)setDisplayedConfigurationFromIndex:(unint64_t)a3;
- (void)setStaticImageOnCell:(id)a3 forIndexPath:(id)a4;
- (void)stopUsingAVTViewSessionSynchronously:(BOOL)a3 completionHandler:(id)a4;
- (void)transitionCell:(id)a3 indexPath:(id)a4 toStartFocusingAnimated:(BOOL)a5 session:(id)a6 completionHandler:(id)a7;
- (void)transitionCell:(id)a3 toStopFocusingAnimated:(BOOL)a4 completionHandler:(id)a5;
- (void)transitionCenterCellIfPresentToStartFocusing;
- (void)transitionCenterCellIfPresentToStopFocusingAnimated:(BOOL)a3;
- (void)transitionCenterCellToStartFocusing:(id)a3 indexPath:(id)a4;
- (void)transitionCurrentDisplayedConfigurationAnimated:(BOOL)a3;
- (void)updateDisplayedConfigurationIfNeeded;
- (void)updateImageForStaticCellForIndexPath:(id)a3;
- (void)updateStickersforVisibleCells;
- (void)useAVTViewFromSession:(id)a3;
@end

@implementation AVTBodyCarouselController

+ (id)newCollectionViewLayoutForEngagedCellSize:(CGSize)a3 boundsSize:(CGSize)a4 environment:(id)a5
{
  width = a4.width;
  height = a3.height;
  v7 = a3.width;
  v8 = a5;
  v9 = [v8 deviceIsPad];
  v10 = width > 400.0;
  v11 = v9 & v10;
  v12 = 0.3;
  if ((v9 & v10) != 0)
  {
    v13 = 0.2;
  }

  else
  {
    v13 = 0.3;
  }

  if ((v9 & v10) == 0)
  {
    v12 = 0.7;
  }

  v14 = v7 * v12;
  v15 = height * v12;
  v16 = [AVTEngagementLayout alloc];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__AVTBodyCarouselController_newCollectionViewLayoutForEngagedCellSize_boundsSize_environment___block_invoke;
  v20[3] = &__block_descriptor_49_e8_d16__0d8l;
  *&v20[4] = v14;
  *&v20[5] = v15;
  v21 = v11;
  v17 = [(AVTEngagementLayout *)v16 initWithDefaultCellSize:v11 engagedCellSize:v20 useEngagementSpacing:v14 interItemSpacingProvider:v15, v7, height];
  v18 = [[AVTZIndexEngagementListCollectionViewLayout alloc] initWithEngagementLayout:v17 minAlphaFactor:v8 environment:v13];

  return v18;
}

double __94__AVTBodyCarouselController_newCollectionViewLayoutForEngagedCellSize_boundsSize_environment___block_invoke(uint64_t a1, double a2)
{
  v2 = -22.0;
  if (*(a1 + 48))
  {
    v2 = 24.0;
  }

  return v2 + (*(a1 + 32) / -3.0 - v2) * a2;
}

- (AVTBodyCarouselController)initWithEnvironment:(id)a3 initialAVTViewLayout:(id)a4 avatarRecord:(id)a5 editorPresentationContext:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v33.receiver = self;
  v33.super_class = AVTBodyCarouselController;
  v13 = [(AVTBodyCarouselController *)&v33 init];
  if (v13)
  {
    v14 = [(AVTUIEnvironment *)v10 logger];
    logger = v13->_logger;
    v13->_logger = v14;

    v13->_environment = v10;
    v16 = +[AVTTransitionCoordinator synchronousTransitionCoordinator];
    transitionCoordinator = v13->_transitionCoordinator;
    v13->_transitionCoordinator = v16;

    v13->_decelerationRate = *MEMORY[0x1E69DE3A0];
    objc_storeStrong(&v13->_avtViewLayout, a4);
    v18 = [(AVTBodyCarouselController *)v13 configurationsForEditorPresentationContext:a6];
    configurations = v13->_configurations;
    v13->_configurations = v18;

    v20 = [(AVTBodyCarouselController *)v13 configurations];
    v21 = [v20 objectAtIndexedSubscript:0];
    displayedConfiguration = v13->_displayedConfiguration;
    v13->_displayedConfiguration = v21;

    v23 = +[AVTSerialTaskScheduler fifoScheduler];
    scheduler = v13->_scheduler;
    v13->_scheduler = v23;

    v25 = [[AVTUIStickerGeneratorPool alloc] initWithMaxStickerGeneratorCount:1];
    generatorPool = v13->_generatorPool;
    v13->_generatorPool = v25;

    objc_storeStrong(&v13->_displayedRecord, a5);
    v27 = [AVTUIStickerRenderer alloc];
    v28 = [(AVTBodyCarouselController *)v13 generatorPool];
    v29 = [(AVTBodyCarouselController *)v13 scheduler];
    v30 = [(AVTUIStickerRenderer *)v27 initWithAvatarRecord:v12 stickerGeneratorPool:v28 scheduler:v29 imageStore:0];
    renderer = v13->_renderer;
    v13->_renderer = v30;
  }

  return v13;
}

- (id)configurationsForEditorPresentationContext:(unint64_t)a3
{
  v3 = MEMORY[0x1E698E2F0];
  if (a3 != 1)
  {
    v3 = MEMORY[0x1E698E2E8];
  }

  v4 = *v3;
  if (AVTUIShowPrereleaseStickerPack_once())
  {
    v5 = AVTPrereleaseStickerPackForStickerPack();

    v4 = v5;
  }

  v6 = [MEMORY[0x1E698E2C0] stickerConfigurationsForMemojiInStickerPack:v4];

  return v6;
}

- (UIView)view
{
  if (![(AVTBodyCarouselController *)self isViewLoaded])
  {
    [(AVTBodyCarouselController *)self loadView];
  }

  view = self->_view;

  return view;
}

- (void)setDecelerationRate:(double)a3
{
  if (self->_decelerationRate != a3)
  {
    self->_decelerationRate = a3;
    v4 = [(AVTBodyCarouselController *)self collectionView];
    [v4 setDecelerationRate:a3];
  }
}

- (id)configureLayoutIfNeededWithHeight:(double)a3
{
  v5 = [(AVTBodyCarouselController *)self avtViewLayout];

  if (v5)
  {
    v6 = [(AVTBodyCarouselController *)self view];
    [v6 bounds];
    v8 = v7 * 0.85;

    v9 = [(AVTBodyCarouselController *)self avtViewLayout];
    [v9 avatarViewSizeForAvailableContentSize:{v8, a3 * 0.85}];
    [(AVTBodyCarouselController *)self setCenterCellSize:?];

    v10 = [(AVTBodyCarouselController *)self collectionViewLayout];
    if (v10 && (v11 = v10, -[AVTBodyCarouselController collectionViewLayout](self, "collectionViewLayout"), v12 = objc_claimAutoreleasedReturnValue(), [v12 engagementLayout], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "engagedCellSize"), v15 = v14, v17 = v16, -[AVTBodyCarouselController centerCellSize](self, "centerCellSize"), v19 = v18, v21 = v20, v13, v12, v11, v15 == v19) && v17 == v21)
    {
      v5 = 0;
    }

    else
    {
      v22 = [(AVTBodyCarouselController *)self view];
      [v22 bounds];
      v24 = v23;

      v25 = objc_opt_class();
      [(AVTBodyCarouselController *)self centerCellSize];
      v27 = v26;
      v29 = v28;
      v30 = [(AVTBodyCarouselController *)self environment];
      v5 = [v25 newCollectionViewLayoutForEngagedCellSize:v30 boundsSize:v27 environment:{v29, v24, a3}];

      v31 = [(AVTBodyCarouselController *)self configurations];
      v32 = [(AVTBodyCarouselController *)self displayedConfiguration];
      v33 = [v31 indexOfObject:v32];

      v34 = [MEMORY[0x1E696AC88] indexPathForItem:v33 inSection:0];
      [v5 setBackIndexPath:v34];

      [(AVTBodyCarouselController *)self setCollectionViewLayout:v5];
      v35 = [(AVTBodyCarouselController *)self collectionView];

      if (v35)
      {
        v36 = [(AVTBodyCarouselController *)self collectionView];
        [v36 setCollectionViewLayout:v5];
      }
    }
  }

  return v5;
}

- (void)buildCollectionViewAndConfigureLayoutIfNeeded
{
  v3 = [(AVTBodyCarouselController *)self view];
  [v3 bounds];
  v19 = [(AVTBodyCarouselController *)self configureLayoutIfNeededWithHeight:v4];

  v5 = [(AVTBodyCarouselController *)self collectionView];

  if (!v5 && v19)
  {
    v6 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v7 = [(AVTBodyCarouselController *)self view];
    [v7 bounds];
    v8 = [v6 initWithFrame:v19 collectionViewLayout:?];

    v9 = [AVTCenteringCollectionViewDelegate alloc];
    v10 = [(AVTBodyCarouselController *)self environment];
    v11 = [(AVTCenteringCollectionViewDelegate *)v9 initWithCollectionView:v8 delegate:self environment:v10];
    [(AVTBodyCarouselController *)self setCenteringDelegate:v11];

    v12 = [(AVTBodyCarouselController *)self centeringDelegate];
    [v8 setDelegate:v12];

    [v8 setDataSource:self];
    [(AVTBodyCarouselController *)self decelerationRate];
    [v8 setDecelerationRate:?];
    [v8 setAllowsSelection:0];
    v13 = objc_opt_class();
    v14 = +[AVTAvatarListCell reuseIdentifier];
    [v8 registerClass:v13 forCellWithReuseIdentifier:v14];

    v15 = objc_opt_class();
    v16 = +[AVTCollectionViewCell reuseIdentifier];
    [v8 registerClass:v15 forCellWithReuseIdentifier:v16];

    v17 = [MEMORY[0x1E69DC888] clearColor];
    [v8 setBackgroundColor:v17];

    [v8 setShowsHorizontalScrollIndicator:0];
    [v8 setShowsVerticalScrollIndicator:0];
    [v8 setContentInsetAdjustmentBehavior:2];
    [v8 setAutoresizingMask:18];
    v18 = [(AVTBodyCarouselController *)self view];
    [v18 addSubview:v8];

    [(AVTBodyCarouselController *)self setCollectionView:v8];
  }
}

- (void)loadView
{
  v3 = [AVTNotifyingContainerView alloc];
  v4 = [(AVTNotifyingContainerView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AVTNotifyingContainerView *)v4 setDelegate:self];
  [(AVTBodyCarouselController *)self setView:v4];
}

- (void)reloadDisplayedSticker
{
  v3 = [(AVTBodyCarouselController *)self renderer];
  v4 = [(AVTBodyCarouselController *)self displayedConfiguration];
  v6 = [v3 scheduledStickerResourceProviderForStickerConfiguration:v4 correctClipping:0];

  v5 = v6[2](v6, &__block_literal_global_1, 0);
}

- (void)scrollToDisplayedConfiguration
{
  v3 = [(AVTBodyCarouselController *)self displayedConfiguration];
  [(AVTBodyCarouselController *)self scrollToViewForConfiguration:v3 animated:0];
}

- (void)scrollToViewForConfiguration:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (!v8)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [(AVTBodyCarouselController *)self configurations];
  v7 = [v6 indexOfObject:v8];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    [(AVTBodyCarouselController *)self scrollToViewAtIndex:v7 animated:v4];
  }
}

- (void)scrollToViewAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v26 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  v6 = [(AVTBodyCarouselController *)self collectionViewLayout];
  v7 = [v26 item];
  v8 = [(AVTBodyCarouselController *)self collectionView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v13 = [(AVTBodyCarouselController *)self collectionView];
  [v13 bounds];
  [v6 centerForCenteringElementAtIndex:v7 visibleBoundsSize:v10 proposedOrigin:{v12, v14, v15}];
  v17 = v16;
  v19 = v18;

  v20 = [(AVTBodyCarouselController *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v20 collectionView:v17, v19];
  v22 = v21;
  v24 = v23;

  v25 = [(AVTBodyCarouselController *)self collectionView];
  [v25 setContentOffset:v4 animated:{v22, v24}];
}

- (id)indexPathForItemClosestToCenter
{
  v3 = [(AVTBodyCarouselController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;
  v8 = [(AVTBodyCarouselController *)self collectionView];
  v9 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:v8 collectionView:v5, v7];

  return v9;
}

- (id)cellForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AVTBodyCarouselController *)self configurations];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"List item not found %@", v4}];
  }

  v7 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:0];
  v8 = [(AVTBodyCarouselController *)self collectionView];
  v9 = [v8 cellForItemAtIndexPath:v7];

  return v9;
}

- (BOOL)shouldCurrentlyDisplayedConfigurationTransitionToLive
{
  v3 = [(AVTBodyCarouselController *)self configurations];
  v4 = [(AVTBodyCarouselController *)self displayedConfiguration];
  v5 = [v3 indexOfObject:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = [(AVTBodyCarouselController *)self collectionViewLayout];
  v8 = [(AVTBodyCarouselController *)self collectionView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v13 = [(AVTBodyCarouselController *)self collectionView];
  [v13 bounds];
  [v7 centerForCenteringElementAtIndex:v5 visibleBoundsSize:v10 proposedOrigin:{v12, v14, v15}];
  v17 = v16;
  v19 = v18;

  v20 = [(AVTBodyCarouselController *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v20 collectionView:v17, v19];
  v22 = v21;

  v23 = [(AVTBodyCarouselController *)self collectionView];
  [v23 contentOffset];
  v6 = vabdd_f64(v22, v24) < 1.0;

  return v6;
}

- (void)updateDisplayedConfigurationIfNeeded
{
  v3 = [(AVTBodyCarouselController *)self indexPathForItemClosestToCenter];
  if (v3)
  {
    v4 = v3;
    -[AVTBodyCarouselController setDisplayedConfigurationFromIndex:](self, "setDisplayedConfigurationFromIndex:", [v3 item]);
    v3 = v4;
  }
}

- (void)setDisplayedConfigurationFromIndex:(unint64_t)a3
{
  v5 = [(AVTBodyCarouselController *)self configurations];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Can't find configuration for index %ld", a3}];
  }

  v7 = [(AVTBodyCarouselController *)self configurations];
  v17 = [v7 objectAtIndexedSubscript:a3];

  v8 = [v17 name];
  v9 = [(AVTBodyCarouselController *)self displayedConfiguration];
  v10 = [v9 name];
  v11 = [v8 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    [(AVTBodyCarouselController *)self setDisplayedConfiguration:v17];
    v12 = [(AVTBodyCarouselController *)self collectionViewLayout];
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    [v12 setBackIndexPath:v13];

    v14 = [(AVTBodyCarouselController *)self collectionViewLayout];
    [v14 invalidateLayout];

    v15 = [(AVTBodyCarouselController *)self logger];
    v16 = [v17 description];
    [v15 logCarouselChangesCenterItemTo:v16];
  }
}

- (void)updateStickersforVisibleCells
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(AVTBodyCarouselController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AVTBodyCarouselController *)self updateImageForStaticCellForIndexPath:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setStaticImageOnCell:(id)a3 forIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTBodyCarouselController *)self configurations];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  [v6 setConfiguration:v9];
  v10 = [(AVTBodyCarouselController *)self displayedRecord];
  [v6 setAvatar:v10];

  v11 = [(AVTBodyCarouselController *)self renderer];
  v12 = [v11 scheduledStickerResourceProviderForStickerConfiguration:v9 correctClipping:0];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__AVTBodyCarouselController_setStaticImageOnCell_forIndexPath___block_invoke;
  v16[3] = &unk_1E7F3AB60;
  v13 = v6;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  v19 = &v20;
  v15 = (v12)[2](v12, v16, 0);
  *(v21 + 24) = 1;

  _Block_object_dispose(&v20, 8);
}

void __63__AVTBodyCarouselController_setStaticImageOnCell_forIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) configuration];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 image];
    [v5 setImage:v6 animated:*(*(*(a1 + 48) + 8) + 24)];
  }
}

- (void)updateImageForStaticCellForIndexPath:(id)a3
{
  v7 = a3;
  v4 = [(AVTBodyCarouselController *)self collectionView];
  v5 = [v4 cellForItemAtIndexPath:v7];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(AVTBodyCarouselController *)self setStaticImageOnCell:v5 forIndexPath:v7];
  }

  else
  {
    v6 = [(AVTBodyCarouselController *)self logger];
    [v6 logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:v7];
  }
}

- (void)transitionCurrentDisplayedConfigurationAnimated:(BOOL)a3
{
  v5 = [(AVTBodyCarouselController *)self configurations];
  v6 = [(AVTBodyCarouselController *)self displayedConfiguration];
  v7 = [v5 indexOfObject:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:0];
    v9 = [(AVTBodyCarouselController *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v8];

    if ([(AVTBodyCarouselController *)self shouldCurrentlyDisplayedConfigurationTransitionToLive])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __77__AVTBodyCarouselController_transitionCurrentDisplayedConfigurationAnimated___block_invoke;
      v11[3] = &unk_1E7F3AB88;
      v11[4] = self;
      v12 = v8;
      v13 = a3;
      [v10 downcastWithCellHandler:0 listCellHandler:v11];
    }
  }
}

void __77__AVTBodyCarouselController_transitionCurrentDisplayedConfigurationAnimated___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) liveCell];
  if (v3 != v9)
  {
    v4 = [*(a1 + 32) avtViewSession];
    v5 = [v4 isActive];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v3 = [v6 avtViewSession];
    [v6 transitionCell:v9 indexPath:v7 toStartFocusingAnimated:v8 session:v3 completionHandler:0];
  }

LABEL_5:
}

- (void)layoutDidChangeWhileMoving:(BOOL)a3 offset:(CGPoint)a4
{
  if (a3)
  {
    [(AVTBodyCarouselController *)self transitionCenterCellIfPresentToStopFocusingAnimated:1, a4.x, a4.y];

    [(AVTBodyCarouselController *)self updateDisplayedConfigurationIfNeeded];
  }

  else
  {

    [(AVTBodyCarouselController *)self scrollToDisplayedConfiguration:a4.x];
  }
}

- (void)notifyingContainerViewDidChangeSize:(CGSize)a3
{
  if ([(AVTBodyCarouselController *)self isViewLoaded:a3.width]&& ![(AVTBodyCarouselController *)self isAnimatingExpansion])
  {

    [(AVTBodyCarouselController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
  }
}

- (void)prepareViewWithLayout:(id)a3
{
  [(AVTBodyCarouselController *)self setAvtViewLayout:a3];

  [(AVTBodyCarouselController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
}

- (void)useAVTViewFromSession:(id)a3
{
  [(AVTBodyCarouselController *)self setAvtViewSession:a3];
  [(AVTBodyCarouselController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
  if ([(AVTBodyCarouselController *)self shouldCurrentlyDisplayedConfigurationTransitionToLive])
  {

    [(AVTBodyCarouselController *)self transitionCenterCellIfPresentToStartFocusing];
  }
}

- (void)stopUsingAVTViewSessionSynchronously:(BOOL)a3 completionHandler:(id)a4
{
  v7 = a4;
  v5 = [(AVTBodyCarouselController *)self transitionCoordinator];
  [v5 cancelAllTransitions];

  [(AVTBodyCarouselController *)self transitionCenterCellIfPresentToStopFocusingAnimated:0];
  [(AVTBodyCarouselController *)self setAvtViewSession:0];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 1);
    v6 = v7;
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTBodyCarouselController *)self configurations:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AVTAvatarListCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [(AVTBodyCarouselController *)self centerCellSize];
  [v9 setAspectRatio:?];
  v10 = v9;

  return v9;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVTBodyCarouselController *)self setStaticImageOnCell:v7 forIndexPath:v8];
  }

  v9 = [v8 item];
  v10 = [(AVTBodyCarouselController *)self configurations];
  v11 = [(AVTBodyCarouselController *)self displayedConfiguration];
  v12 = [v10 indexOfObject:v11];

  if (v9 == v12)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__AVTBodyCarouselController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
    v13[3] = &unk_1E7F3ABB0;
    v13[4] = self;
    v14 = v8;
    [v7 downcastWithCellHandler:0 listCellHandler:v13];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__AVTBodyCarouselController_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke;
  v5[3] = &unk_1E7F3ABD8;
  v5[4] = self;
  [a4 downcastWithCellHandler:0 listCellHandler:{v5, a5}];
}

void __84__AVTBodyCarouselController_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 transitionCoordinator];
  [v4 cancelTransitionsMatchingModel:v3];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [v4 avtui_isMoving];
  [v4 contentOffset];
  v7 = v6;
  v9 = v8;

  [(AVTBodyCarouselController *)self layoutDidChangeWhileMoving:v5 offset:v7, v9];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(AVTBodyCarouselController *)self transitionCurrentDisplayedConfigurationAnimated:0];
  }
}

- (void)transitionCenterCellIfPresentToStartFocusing
{
  v3 = [(AVTBodyCarouselController *)self configurations];
  v4 = [(AVTBodyCarouselController *)self displayedConfiguration];
  v5 = [v3 indexOfObject:v4];

  v6 = [(AVTBodyCarouselController *)self displayedConfiguration];
  v7 = [(AVTBodyCarouselController *)self cellForConfiguration:v6];

  v8 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__AVTBodyCarouselController_transitionCenterCellIfPresentToStartFocusing__block_invoke;
  v10[3] = &unk_1E7F3ABB0;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [v7 downcastWithCellHandler:0 listCellHandler:v10];
}

- (void)transitionCenterCellIfPresentToStopFocusingAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTBodyCarouselController *)self liveCell];

  if (v5)
  {
    v6 = [(AVTBodyCarouselController *)self liveCell];
    [(AVTBodyCarouselController *)self transitionCell:v6 toStopFocusingAnimated:v3 completionHandler:0];
  }
}

- (void)transitionCenterCellToStartFocusing:(id)a3 indexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = [(AVTBodyCarouselController *)self liveCell];

    if (!v7)
    {
      v8 = [(AVTBodyCarouselController *)self collectionView];
      v9 = [v8 avtui_isMoving];

      if ((v9 & 1) == 0)
      {
        v10 = [(AVTBodyCarouselController *)self avtViewSession];
        if ([v10 isActive])
        {
          [(AVTBodyCarouselController *)self transitionCell:v11 indexPath:v6 toStartFocusingAnimated:0 session:v10 completionHandler:0];
        }
      }
    }
  }
}

- (void)transitionCell:(id)a3 indexPath:(id)a4 toStartFocusingAnimated:(BOOL)a5 session:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  [(AVTBodyCarouselController *)self setLiveCell:v11];
  v15 = [(AVTBodyCarouselController *)self transitionCoordinator];
  [v15 cancelTransitionsMatchingModel:v11];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3042000000;
  v31 = __Block_byref_object_copy__2;
  v32 = __Block_byref_object_dispose__2;
  v33 = 0;
  v16 = [AVTAvatarCellToLiveTransition alloc];
  v24 = MEMORY[0x1E69E9820];
  v17 = v11;
  v25 = v17;
  v27 = &v28;
  v18 = v13;
  v26 = v18;
  v19 = [(AVTBodyCarouselController *)self logger:v24];
  v20 = [(AVTAvatarCellToLiveTransition *)v16 initWithModel:v17 animated:0 setupHandler:&v24 completionHandler:v14 logger:v19];

  objc_storeWeak(v29 + 5, v20);
  v21 = [(AVTBodyCarouselController *)self logger];
  v22 = [(AVTTransition *)v20 description];
  [v21 logCarouselAddsTransitionToCoordinator:v22];

  v23 = [(AVTBodyCarouselController *)self transitionCoordinator];
  [v23 addTransition:v20];

  _Block_object_dispose(&v28, 8);
  objc_destroyWeak(&v33);
}

void __104__AVTBodyCarouselController_transitionCell_indexPath_toStartFocusingAnimated_session_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [*(a1 + 40) description];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
  v7 = [WeakRetained description];
  [v4 logCarouselCellStartUsingLiveView:v5 associatedTransition:v7];

  [*(a1 + 40) beginUsingAVTViewFromSession:*(a1 + 48)];
  v8 = [*(a1 + 48) avtViewUpdater];
  v9 = [*(a1 + 40) configuration];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__AVTBodyCarouselController_transitionCell_indexPath_toStartFocusingAnimated_session_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7F3AC00;
  v12 = v3;
  v10 = v3;
  [v8 setStickerConfiguration:v9 completionHandler:v11];
}

- (void)transitionCell:(id)a3 toStopFocusingAnimated:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(AVTBodyCarouselController *)self setLiveCell:0];
  v9 = [(AVTBodyCarouselController *)self logger];
  v10 = [(AVTBodyCarouselController *)self displayedRecord];
  v11 = [v10 description];
  v12 = [v7 description];
  [v9 logCarouselStopsFocusingOnCenterItem:v11 withCell:v12];

  v13 = [(AVTBodyCarouselController *)self transitionCoordinator];
  [v13 cancelTransitionsMatchingModel:v7];

  v14 = [v7 avtView];

  if (v14)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3042000000;
    v28 = __Block_byref_object_copy__2;
    v29 = __Block_byref_object_dispose__2;
    v30 = 0;
    v15 = [AVTAvatarCellToStaticTransition alloc];
    v21 = MEMORY[0x1E69E9820];
    v24 = &v25;
    v22 = v7;
    v23 = v8;
    v16 = [(AVTBodyCarouselController *)self logger:v21];
    v17 = [(AVTAvatarCellToStaticTransition *)v15 initWithModel:v22 animated:0 completionHandler:&v21 logger:v16];

    objc_storeWeak(v26 + 5, v17);
    v18 = [(AVTBodyCarouselController *)self logger];
    v19 = [(AVTTransition *)v17 description];
    [v18 logCarouselAddsTransitionToCoordinator:v19];

    v20 = [(AVTBodyCarouselController *)self transitionCoordinator];
    [v20 addTransition:v17];

    _Block_object_dispose(&v25, 8);
    objc_destroyWeak(&v30);
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }
}

uint64_t __85__AVTBodyCarouselController_transitionCell_toStopFocusingAnimated_completionHandler___block_invoke(uint64_t a1, char a2)
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

- (AVTPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presenterDelegate);

  return WeakRetained;
}

- (CGSize)centerCellSize
{
  width = self->_centerCellSize.width;
  height = self->_centerCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end