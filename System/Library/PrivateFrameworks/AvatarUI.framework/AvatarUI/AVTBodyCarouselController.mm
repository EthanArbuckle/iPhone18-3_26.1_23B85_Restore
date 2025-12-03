@interface AVTBodyCarouselController
+ (id)newCollectionViewLayoutForEngagedCellSize:(CGSize)size boundsSize:(CGSize)boundsSize environment:(id)environment;
- (AVTBodyCarouselController)initWithEnvironment:(id)environment initialAVTViewLayout:(id)layout avatarRecord:(id)record editorPresentationContext:(unint64_t)context;
- (AVTPresenterDelegate)presenterDelegate;
- (BOOL)shouldCurrentlyDisplayedConfigurationTransitionToLive;
- (CGSize)centerCellSize;
- (UIView)view;
- (id)cellForConfiguration:(id)configuration;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)configurationsForEditorPresentationContext:(unint64_t)context;
- (id)configureLayoutIfNeededWithHeight:(double)height;
- (id)indexPathForItemClosestToCenter;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)buildCollectionViewAndConfigureLayoutIfNeeded;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutDidChangeWhileMoving:(BOOL)moving offset:(CGPoint)offset;
- (void)loadView;
- (void)notifyingContainerViewDidChangeSize:(CGSize)size;
- (void)prepareViewWithLayout:(id)layout;
- (void)reloadDisplayedSticker;
- (void)scrollToDisplayedConfiguration;
- (void)scrollToViewAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)scrollToViewForConfiguration:(id)configuration animated:(BOOL)animated;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setDecelerationRate:(double)rate;
- (void)setDisplayedConfigurationFromIndex:(unint64_t)index;
- (void)setStaticImageOnCell:(id)cell forIndexPath:(id)path;
- (void)stopUsingAVTViewSessionSynchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)transitionCell:(id)cell indexPath:(id)path toStartFocusingAnimated:(BOOL)animated session:(id)session completionHandler:(id)handler;
- (void)transitionCell:(id)cell toStopFocusingAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)transitionCenterCellIfPresentToStartFocusing;
- (void)transitionCenterCellIfPresentToStopFocusingAnimated:(BOOL)animated;
- (void)transitionCenterCellToStartFocusing:(id)focusing indexPath:(id)path;
- (void)transitionCurrentDisplayedConfigurationAnimated:(BOOL)animated;
- (void)updateDisplayedConfigurationIfNeeded;
- (void)updateImageForStaticCellForIndexPath:(id)path;
- (void)updateStickersforVisibleCells;
- (void)useAVTViewFromSession:(id)session;
@end

@implementation AVTBodyCarouselController

+ (id)newCollectionViewLayoutForEngagedCellSize:(CGSize)size boundsSize:(CGSize)boundsSize environment:(id)environment
{
  width = boundsSize.width;
  height = size.height;
  v7 = size.width;
  environmentCopy = environment;
  deviceIsPad = [environmentCopy deviceIsPad];
  v10 = width > 400.0;
  v11 = deviceIsPad & v10;
  v12 = 0.3;
  if ((deviceIsPad & v10) != 0)
  {
    v13 = 0.2;
  }

  else
  {
    v13 = 0.3;
  }

  if ((deviceIsPad & v10) == 0)
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
  height = [(AVTEngagementLayout *)v16 initWithDefaultCellSize:v11 engagedCellSize:v20 useEngagementSpacing:v14 interItemSpacingProvider:v15, v7, height];
  v18 = [[AVTZIndexEngagementListCollectionViewLayout alloc] initWithEngagementLayout:height minAlphaFactor:environmentCopy environment:v13];

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

- (AVTBodyCarouselController)initWithEnvironment:(id)environment initialAVTViewLayout:(id)layout avatarRecord:(id)record editorPresentationContext:(unint64_t)context
{
  environmentCopy = environment;
  layoutCopy = layout;
  recordCopy = record;
  v33.receiver = self;
  v33.super_class = AVTBodyCarouselController;
  v13 = [(AVTBodyCarouselController *)&v33 init];
  if (v13)
  {
    logger = [(AVTUIEnvironment *)environmentCopy logger];
    logger = v13->_logger;
    v13->_logger = logger;

    v13->_environment = environmentCopy;
    v16 = +[AVTTransitionCoordinator synchronousTransitionCoordinator];
    transitionCoordinator = v13->_transitionCoordinator;
    v13->_transitionCoordinator = v16;

    v13->_decelerationRate = *MEMORY[0x1E69DE3A0];
    objc_storeStrong(&v13->_avtViewLayout, layout);
    v18 = [(AVTBodyCarouselController *)v13 configurationsForEditorPresentationContext:context];
    configurations = v13->_configurations;
    v13->_configurations = v18;

    configurations = [(AVTBodyCarouselController *)v13 configurations];
    v21 = [configurations objectAtIndexedSubscript:0];
    displayedConfiguration = v13->_displayedConfiguration;
    v13->_displayedConfiguration = v21;

    v23 = +[AVTSerialTaskScheduler fifoScheduler];
    scheduler = v13->_scheduler;
    v13->_scheduler = v23;

    v25 = [[AVTUIStickerGeneratorPool alloc] initWithMaxStickerGeneratorCount:1];
    generatorPool = v13->_generatorPool;
    v13->_generatorPool = v25;

    objc_storeStrong(&v13->_displayedRecord, record);
    v27 = [AVTUIStickerRenderer alloc];
    generatorPool = [(AVTBodyCarouselController *)v13 generatorPool];
    scheduler = [(AVTBodyCarouselController *)v13 scheduler];
    v30 = [(AVTUIStickerRenderer *)v27 initWithAvatarRecord:recordCopy stickerGeneratorPool:generatorPool scheduler:scheduler imageStore:0];
    renderer = v13->_renderer;
    v13->_renderer = v30;
  }

  return v13;
}

- (id)configurationsForEditorPresentationContext:(unint64_t)context
{
  v3 = MEMORY[0x1E698E2F0];
  if (context != 1)
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

- (void)setDecelerationRate:(double)rate
{
  if (self->_decelerationRate != rate)
  {
    self->_decelerationRate = rate;
    collectionView = [(AVTBodyCarouselController *)self collectionView];
    [collectionView setDecelerationRate:rate];
  }
}

- (id)configureLayoutIfNeededWithHeight:(double)height
{
  avtViewLayout = [(AVTBodyCarouselController *)self avtViewLayout];

  if (avtViewLayout)
  {
    view = [(AVTBodyCarouselController *)self view];
    [view bounds];
    v8 = v7 * 0.85;

    avtViewLayout2 = [(AVTBodyCarouselController *)self avtViewLayout];
    [avtViewLayout2 avatarViewSizeForAvailableContentSize:{v8, height * 0.85}];
    [(AVTBodyCarouselController *)self setCenterCellSize:?];

    collectionViewLayout = [(AVTBodyCarouselController *)self collectionViewLayout];
    if (collectionViewLayout && (v11 = collectionViewLayout, -[AVTBodyCarouselController collectionViewLayout](self, "collectionViewLayout"), v12 = objc_claimAutoreleasedReturnValue(), [v12 engagementLayout], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "engagedCellSize"), v15 = v14, v17 = v16, -[AVTBodyCarouselController centerCellSize](self, "centerCellSize"), v19 = v18, v21 = v20, v13, v12, v11, v15 == v19) && v17 == v21)
    {
      avtViewLayout = 0;
    }

    else
    {
      view2 = [(AVTBodyCarouselController *)self view];
      [view2 bounds];
      v24 = v23;

      v25 = objc_opt_class();
      [(AVTBodyCarouselController *)self centerCellSize];
      v27 = v26;
      v29 = v28;
      environment = [(AVTBodyCarouselController *)self environment];
      avtViewLayout = [v25 newCollectionViewLayoutForEngagedCellSize:environment boundsSize:v27 environment:{v29, v24, height}];

      configurations = [(AVTBodyCarouselController *)self configurations];
      displayedConfiguration = [(AVTBodyCarouselController *)self displayedConfiguration];
      v33 = [configurations indexOfObject:displayedConfiguration];

      v34 = [MEMORY[0x1E696AC88] indexPathForItem:v33 inSection:0];
      [avtViewLayout setBackIndexPath:v34];

      [(AVTBodyCarouselController *)self setCollectionViewLayout:avtViewLayout];
      collectionView = [(AVTBodyCarouselController *)self collectionView];

      if (collectionView)
      {
        collectionView2 = [(AVTBodyCarouselController *)self collectionView];
        [collectionView2 setCollectionViewLayout:avtViewLayout];
      }
    }
  }

  return avtViewLayout;
}

- (void)buildCollectionViewAndConfigureLayoutIfNeeded
{
  view = [(AVTBodyCarouselController *)self view];
  [view bounds];
  v19 = [(AVTBodyCarouselController *)self configureLayoutIfNeededWithHeight:v4];

  collectionView = [(AVTBodyCarouselController *)self collectionView];

  if (!collectionView && v19)
  {
    v6 = objc_alloc(MEMORY[0x1E69DC7F0]);
    view2 = [(AVTBodyCarouselController *)self view];
    [view2 bounds];
    v8 = [v6 initWithFrame:v19 collectionViewLayout:?];

    v9 = [AVTCenteringCollectionViewDelegate alloc];
    environment = [(AVTBodyCarouselController *)self environment];
    v11 = [(AVTCenteringCollectionViewDelegate *)v9 initWithCollectionView:v8 delegate:self environment:environment];
    [(AVTBodyCarouselController *)self setCenteringDelegate:v11];

    centeringDelegate = [(AVTBodyCarouselController *)self centeringDelegate];
    [v8 setDelegate:centeringDelegate];

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

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v8 setBackgroundColor:clearColor];

    [v8 setShowsHorizontalScrollIndicator:0];
    [v8 setShowsVerticalScrollIndicator:0];
    [v8 setContentInsetAdjustmentBehavior:2];
    [v8 setAutoresizingMask:18];
    view3 = [(AVTBodyCarouselController *)self view];
    [view3 addSubview:v8];

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
  renderer = [(AVTBodyCarouselController *)self renderer];
  displayedConfiguration = [(AVTBodyCarouselController *)self displayedConfiguration];
  v6 = [renderer scheduledStickerResourceProviderForStickerConfiguration:displayedConfiguration correctClipping:0];

  v5 = v6[2](v6, &__block_literal_global_1, 0);
}

- (void)scrollToDisplayedConfiguration
{
  displayedConfiguration = [(AVTBodyCarouselController *)self displayedConfiguration];
  [(AVTBodyCarouselController *)self scrollToViewForConfiguration:displayedConfiguration animated:0];
}

- (void)scrollToViewForConfiguration:(id)configuration animated:(BOOL)animated
{
  animatedCopy = animated;
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v7 = 0;
    goto LABEL_5;
  }

  configurations = [(AVTBodyCarouselController *)self configurations];
  v7 = [configurations indexOfObject:configurationCopy];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    [(AVTBodyCarouselController *)self scrollToViewAtIndex:v7 animated:animatedCopy];
  }
}

- (void)scrollToViewAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v26 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  collectionViewLayout = [(AVTBodyCarouselController *)self collectionViewLayout];
  item = [v26 item];
  collectionView = [(AVTBodyCarouselController *)self collectionView];
  [collectionView bounds];
  v10 = v9;
  v12 = v11;
  collectionView2 = [(AVTBodyCarouselController *)self collectionView];
  [collectionView2 bounds];
  [collectionViewLayout centerForCenteringElementAtIndex:item visibleBoundsSize:v10 proposedOrigin:{v12, v14, v15}];
  v17 = v16;
  v19 = v18;

  collectionView3 = [(AVTBodyCarouselController *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView3 collectionView:v17, v19];
  v22 = v21;
  v24 = v23;

  collectionView4 = [(AVTBodyCarouselController *)self collectionView];
  [collectionView4 setContentOffset:animatedCopy animated:{v22, v24}];
}

- (id)indexPathForItemClosestToCenter
{
  collectionView = [(AVTBodyCarouselController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  v7 = v6;
  collectionView2 = [(AVTBodyCarouselController *)self collectionView];
  v9 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:collectionView2 collectionView:v5, v7];

  return v9;
}

- (id)cellForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configurations = [(AVTBodyCarouselController *)self configurations];
  v6 = [configurations indexOfObject:configurationCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"List item not found %@", configurationCopy}];
  }

  v7 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:0];
  collectionView = [(AVTBodyCarouselController *)self collectionView];
  v9 = [collectionView cellForItemAtIndexPath:v7];

  return v9;
}

- (BOOL)shouldCurrentlyDisplayedConfigurationTransitionToLive
{
  configurations = [(AVTBodyCarouselController *)self configurations];
  displayedConfiguration = [(AVTBodyCarouselController *)self displayedConfiguration];
  v5 = [configurations indexOfObject:displayedConfiguration];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  collectionViewLayout = [(AVTBodyCarouselController *)self collectionViewLayout];
  collectionView = [(AVTBodyCarouselController *)self collectionView];
  [collectionView bounds];
  v10 = v9;
  v12 = v11;
  collectionView2 = [(AVTBodyCarouselController *)self collectionView];
  [collectionView2 bounds];
  [collectionViewLayout centerForCenteringElementAtIndex:v5 visibleBoundsSize:v10 proposedOrigin:{v12, v14, v15}];
  v17 = v16;
  v19 = v18;

  collectionView3 = [(AVTBodyCarouselController *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView3 collectionView:v17, v19];
  v22 = v21;

  collectionView4 = [(AVTBodyCarouselController *)self collectionView];
  [collectionView4 contentOffset];
  v6 = vabdd_f64(v22, v24) < 1.0;

  return v6;
}

- (void)updateDisplayedConfigurationIfNeeded
{
  indexPathForItemClosestToCenter = [(AVTBodyCarouselController *)self indexPathForItemClosestToCenter];
  if (indexPathForItemClosestToCenter)
  {
    v4 = indexPathForItemClosestToCenter;
    -[AVTBodyCarouselController setDisplayedConfigurationFromIndex:](self, "setDisplayedConfigurationFromIndex:", [indexPathForItemClosestToCenter item]);
    indexPathForItemClosestToCenter = v4;
  }
}

- (void)setDisplayedConfigurationFromIndex:(unint64_t)index
{
  configurations = [(AVTBodyCarouselController *)self configurations];
  v6 = [configurations count];

  if (v6 <= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Can't find configuration for index %ld", index}];
  }

  configurations2 = [(AVTBodyCarouselController *)self configurations];
  v17 = [configurations2 objectAtIndexedSubscript:index];

  name = [v17 name];
  displayedConfiguration = [(AVTBodyCarouselController *)self displayedConfiguration];
  name2 = [displayedConfiguration name];
  v11 = [name isEqualToString:name2];

  if ((v11 & 1) == 0)
  {
    [(AVTBodyCarouselController *)self setDisplayedConfiguration:v17];
    collectionViewLayout = [(AVTBodyCarouselController *)self collectionViewLayout];
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
    [collectionViewLayout setBackIndexPath:v13];

    collectionViewLayout2 = [(AVTBodyCarouselController *)self collectionViewLayout];
    [collectionViewLayout2 invalidateLayout];

    logger = [(AVTBodyCarouselController *)self logger];
    v16 = [v17 description];
    [logger logCarouselChangesCenterItemTo:v16];
  }
}

- (void)updateStickersforVisibleCells
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionView = [(AVTBodyCarouselController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        [(AVTBodyCarouselController *)self updateImageForStaticCellForIndexPath:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setStaticImageOnCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  configurations = [(AVTBodyCarouselController *)self configurations];
  v9 = [configurations objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  [cellCopy setConfiguration:v9];
  displayedRecord = [(AVTBodyCarouselController *)self displayedRecord];
  [cellCopy setAvatar:displayedRecord];

  renderer = [(AVTBodyCarouselController *)self renderer];
  v12 = [renderer scheduledStickerResourceProviderForStickerConfiguration:v9 correctClipping:0];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__AVTBodyCarouselController_setStaticImageOnCell_forIndexPath___block_invoke;
  v16[3] = &unk_1E7F3AB60;
  v13 = cellCopy;
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

- (void)updateImageForStaticCellForIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(AVTBodyCarouselController *)self collectionView];
  v5 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(AVTBodyCarouselController *)self setStaticImageOnCell:v5 forIndexPath:pathCopy];
  }

  else
  {
    logger = [(AVTBodyCarouselController *)self logger];
    [logger logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:pathCopy];
  }
}

- (void)transitionCurrentDisplayedConfigurationAnimated:(BOOL)animated
{
  configurations = [(AVTBodyCarouselController *)self configurations];
  displayedConfiguration = [(AVTBodyCarouselController *)self displayedConfiguration];
  v7 = [configurations indexOfObject:displayedConfiguration];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:0];
    collectionView = [(AVTBodyCarouselController *)self collectionView];
    v10 = [collectionView cellForItemAtIndexPath:v8];

    if ([(AVTBodyCarouselController *)self shouldCurrentlyDisplayedConfigurationTransitionToLive])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __77__AVTBodyCarouselController_transitionCurrentDisplayedConfigurationAnimated___block_invoke;
      v11[3] = &unk_1E7F3AB88;
      v11[4] = self;
      v12 = v8;
      animatedCopy = animated;
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

- (void)layoutDidChangeWhileMoving:(BOOL)moving offset:(CGPoint)offset
{
  if (moving)
  {
    [(AVTBodyCarouselController *)self transitionCenterCellIfPresentToStopFocusingAnimated:1, offset.x, offset.y];

    [(AVTBodyCarouselController *)self updateDisplayedConfigurationIfNeeded];
  }

  else
  {

    [(AVTBodyCarouselController *)self scrollToDisplayedConfiguration:offset.x];
  }
}

- (void)notifyingContainerViewDidChangeSize:(CGSize)size
{
  if ([(AVTBodyCarouselController *)self isViewLoaded:size.width]&& ![(AVTBodyCarouselController *)self isAnimatingExpansion])
  {

    [(AVTBodyCarouselController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
  }
}

- (void)prepareViewWithLayout:(id)layout
{
  [(AVTBodyCarouselController *)self setAvtViewLayout:layout];

  [(AVTBodyCarouselController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
}

- (void)useAVTViewFromSession:(id)session
{
  [(AVTBodyCarouselController *)self setAvtViewSession:session];
  [(AVTBodyCarouselController *)self buildCollectionViewAndConfigureLayoutIfNeeded];
  if ([(AVTBodyCarouselController *)self shouldCurrentlyDisplayedConfigurationTransitionToLive])
  {

    [(AVTBodyCarouselController *)self transitionCenterCellIfPresentToStartFocusing];
  }
}

- (void)stopUsingAVTViewSessionSynchronously:(BOOL)synchronously completionHandler:(id)handler
{
  handlerCopy = handler;
  transitionCoordinator = [(AVTBodyCarouselController *)self transitionCoordinator];
  [transitionCoordinator cancelAllTransitions];

  [(AVTBodyCarouselController *)self transitionCenterCellIfPresentToStopFocusingAnimated:0];
  [(AVTBodyCarouselController *)self setAvtViewSession:0];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
    v6 = handlerCopy;
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTBodyCarouselController *)self configurations:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[AVTAvatarListCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [(AVTBodyCarouselController *)self centerCellSize];
  [v9 setAspectRatio:?];
  v10 = v9;

  return v9;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVTBodyCarouselController *)self setStaticImageOnCell:cellCopy forIndexPath:pathCopy];
  }

  item = [pathCopy item];
  configurations = [(AVTBodyCarouselController *)self configurations];
  displayedConfiguration = [(AVTBodyCarouselController *)self displayedConfiguration];
  v12 = [configurations indexOfObject:displayedConfiguration];

  if (item == v12)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__AVTBodyCarouselController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
    v13[3] = &unk_1E7F3ABB0;
    v13[4] = self;
    v14 = pathCopy;
    [cellCopy downcastWithCellHandler:0 listCellHandler:v13];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__AVTBodyCarouselController_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke;
  v5[3] = &unk_1E7F3ABD8;
  v5[4] = self;
  [cell downcastWithCellHandler:0 listCellHandler:{v5, path}];
}

void __84__AVTBodyCarouselController_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 transitionCoordinator];
  [v4 cancelTransitionsMatchingModel:v3];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  avtui_isMoving = [scrollCopy avtui_isMoving];
  [scrollCopy contentOffset];
  v7 = v6;
  v9 = v8;

  [(AVTBodyCarouselController *)self layoutDidChangeWhileMoving:avtui_isMoving offset:v7, v9];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(AVTBodyCarouselController *)self transitionCurrentDisplayedConfigurationAnimated:0];
  }
}

- (void)transitionCenterCellIfPresentToStartFocusing
{
  configurations = [(AVTBodyCarouselController *)self configurations];
  displayedConfiguration = [(AVTBodyCarouselController *)self displayedConfiguration];
  v5 = [configurations indexOfObject:displayedConfiguration];

  displayedConfiguration2 = [(AVTBodyCarouselController *)self displayedConfiguration];
  v7 = [(AVTBodyCarouselController *)self cellForConfiguration:displayedConfiguration2];

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

- (void)transitionCenterCellIfPresentToStopFocusingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  liveCell = [(AVTBodyCarouselController *)self liveCell];

  if (liveCell)
  {
    liveCell2 = [(AVTBodyCarouselController *)self liveCell];
    [(AVTBodyCarouselController *)self transitionCell:liveCell2 toStopFocusingAnimated:animatedCopy completionHandler:0];
  }
}

- (void)transitionCenterCellToStartFocusing:(id)focusing indexPath:(id)path
{
  focusingCopy = focusing;
  pathCopy = path;
  if (focusingCopy)
  {
    liveCell = [(AVTBodyCarouselController *)self liveCell];

    if (!liveCell)
    {
      collectionView = [(AVTBodyCarouselController *)self collectionView];
      avtui_isMoving = [collectionView avtui_isMoving];

      if ((avtui_isMoving & 1) == 0)
      {
        avtViewSession = [(AVTBodyCarouselController *)self avtViewSession];
        if ([avtViewSession isActive])
        {
          [(AVTBodyCarouselController *)self transitionCell:focusingCopy indexPath:pathCopy toStartFocusingAnimated:0 session:avtViewSession completionHandler:0];
        }
      }
    }
  }
}

- (void)transitionCell:(id)cell indexPath:(id)path toStartFocusingAnimated:(BOOL)animated session:(id)session completionHandler:(id)handler
{
  cellCopy = cell;
  pathCopy = path;
  sessionCopy = session;
  handlerCopy = handler;
  [(AVTBodyCarouselController *)self setLiveCell:cellCopy];
  transitionCoordinator = [(AVTBodyCarouselController *)self transitionCoordinator];
  [transitionCoordinator cancelTransitionsMatchingModel:cellCopy];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3042000000;
  v31 = __Block_byref_object_copy__2;
  v32 = __Block_byref_object_dispose__2;
  v33 = 0;
  v16 = [AVTAvatarCellToLiveTransition alloc];
  v24 = MEMORY[0x1E69E9820];
  v17 = cellCopy;
  v25 = v17;
  v27 = &v28;
  v18 = sessionCopy;
  v26 = v18;
  v19 = [(AVTBodyCarouselController *)self logger:v24];
  v20 = [(AVTAvatarCellToLiveTransition *)v16 initWithModel:v17 animated:0 setupHandler:&v24 completionHandler:handlerCopy logger:v19];

  objc_storeWeak(v29 + 5, v20);
  logger = [(AVTBodyCarouselController *)self logger];
  v22 = [(AVTTransition *)v20 description];
  [logger logCarouselAddsTransitionToCoordinator:v22];

  transitionCoordinator2 = [(AVTBodyCarouselController *)self transitionCoordinator];
  [transitionCoordinator2 addTransition:v20];

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

- (void)transitionCell:(id)cell toStopFocusingAnimated:(BOOL)animated completionHandler:(id)handler
{
  cellCopy = cell;
  handlerCopy = handler;
  [(AVTBodyCarouselController *)self setLiveCell:0];
  logger = [(AVTBodyCarouselController *)self logger];
  displayedRecord = [(AVTBodyCarouselController *)self displayedRecord];
  v11 = [displayedRecord description];
  v12 = [cellCopy description];
  [logger logCarouselStopsFocusingOnCenterItem:v11 withCell:v12];

  transitionCoordinator = [(AVTBodyCarouselController *)self transitionCoordinator];
  [transitionCoordinator cancelTransitionsMatchingModel:cellCopy];

  avtView = [cellCopy avtView];

  if (avtView)
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
    v22 = cellCopy;
    v23 = handlerCopy;
    v16 = [(AVTBodyCarouselController *)self logger:v21];
    v17 = [(AVTAvatarCellToStaticTransition *)v15 initWithModel:v22 animated:0 completionHandler:&v21 logger:v16];

    objc_storeWeak(v26 + 5, v17);
    logger2 = [(AVTBodyCarouselController *)self logger];
    v19 = [(AVTTransition *)v17 description];
    [logger2 logCarouselAddsTransitionToCoordinator:v19];

    transitionCoordinator2 = [(AVTBodyCarouselController *)self transitionCoordinator];
    [transitionCoordinator2 addTransition:v17];

    _Block_object_dispose(&v25, 8);
    objc_destroyWeak(&v30);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
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