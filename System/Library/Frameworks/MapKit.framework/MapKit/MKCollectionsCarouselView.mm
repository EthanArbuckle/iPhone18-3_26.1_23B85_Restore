@interface MKCollectionsCarouselView
+ (double)horizontalLayoutHeightInContext:(int64_t)context includeExploreGuidesHeight:(BOOL)height isSingleCollection:(BOOL)collection;
+ (double)verticalLayoutHeightWithNumberOfItems:(unint64_t)items maxWidth:(double)width usingTraitEnvironment:(id)environment inContext:(int64_t)context;
- (BOOL)isShowingExploreGuides;
- (CGPoint)contentOffset;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)contentSize;
- (MKCollectionCarouselAnalyticsDelegate)analyticsDelegate;
- (MKCollectionCarouselRoutingDelegate)routingDelegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIScrollViewDelegate)scrollViewDelegate;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (id)initCollectionsCarouselViewWithContext:(int64_t)context withPlaceCollections:(id)collections usingSyncCoordinator:(id)coordinator withRoutingDelegate:(id)delegate withScrollViewDelegate:(id)viewDelegate withAnalyticsDelegate:(id)analyticsDelegate exploreGuides:(id)guides;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureCarouselCollectionView;
- (void)configureCarouselMetadata:(int64_t)metadata;
- (void)dismissedCollections;
- (void)displayCollectionsUsingBatchIds:(id)ids usingGuideFetcher:(id)fetcher;
- (void)fetchCollections;
- (void)refreshCollections;
- (void)resetCollectionsLayout;
- (void)resetScrollOffset;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)updateCollections:(id)collections;
@end

@implementation MKCollectionsCarouselView

- (MKCollectionCarouselAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (MKCollectionCarouselRoutingDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

- (CGSize)contentSize
{
  [(UICollectionView *)self->_collectionView contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)contentOffset
{
  [(UICollectionView *)self->_collectionView contentOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  v5 = [(MKCollectionsCarouselView *)self sizeController:view];
  [v5 minimumInterItemSpacing];
  v7 = v6;

  return v7;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v7 = [(MKCollectionsCarouselView *)self logicController:view];
  v8 = [v7 sectionKindAtIndex:index];

  if (v8 == 1)
  {
    v9 = *MEMORY[0x1E69DDCE0];
    v10 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    sizeController = [(MKCollectionsCarouselView *)self sizeController];
    [sizeController sectionInsets];
    v9 = v14;
    v10 = v15;
    v11 = v16;
    v12 = v17;
  }

  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  logicController = [(MKCollectionsCarouselView *)self logicController];
  section = [pathCopy section];

  v11 = [logicController sectionKindAtIndex:section];
  if (v11 == 1)
  {
    [viewCopy frame];
    v13 = v12;
    *&v14 = 100.0;
  }

  else
  {
    sizeController = [(MKCollectionsCarouselView *)self sizeController];
    [viewCopy frame];
    [sizeController sizeForCollectionWithMaxCollectionsWidth:v16];
    v13 = v17;
    v14 = v18;
  }

  v19 = v13;
  v20 = *&v14;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  scrollViewDelegate = [(MKCollectionsCarouselView *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    scrollViewDelegate2 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewDidEndDecelerating:deceleratingCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  scrollViewDelegate = [(MKCollectionsCarouselView *)self scrollViewDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    scrollViewDelegate2 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }

  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MKCollectionsCarouselView_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke;
  block[3] = &unk_1E76C7148;
  block[4] = self;
  v15[1] = *&x;
  v15[2] = *&y;
  objc_copyWeak(v15, &location);
  dispatch_async(utilityQueue, block);
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __88__MKCollectionsCarouselView_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 408);
  if ((v2 - 1) >= 2)
  {
    if (v2)
    {
      return;
    }

    v8 = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained analyticsDelegate];
    if (v8 >= 0.0)
    {
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        return;
      }

      v14 = objc_loadWeakRetained((a1 + 40));
      v7 = [v14 analyticsDelegate];
      [v7 collectionsCarouselDidScrollBackward];
    }

    else
    {
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        return;
      }

      v14 = objc_loadWeakRetained((a1 + 40));
      v7 = [v14 analyticsDelegate];
      [v7 collectionsCarouselDidScrollForward];
    }
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 analyticsDelegate];
    if (v3 <= 0.0)
    {
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        return;
      }

      v14 = objc_loadWeakRetained((a1 + 40));
      v7 = [v14 analyticsDelegate];
      [v7 collectionsCarouselDidScrollUp];
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v14 = objc_loadWeakRetained((a1 + 40));
      v7 = [v14 analyticsDelegate];
      [v7 collectionsCarouselDidScrollDown];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  scrollViewDelegate = [(MKCollectionsCarouselView *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    scrollViewDelegate2 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollViewDelegate = [(MKCollectionsCarouselView *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    scrollViewDelegate2 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewDidScroll:scrollCopy];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(MKCollectionsCarouselView *)self logicController];
  v7 = [logicController sectionKindAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v7 != 1)
  {
    logicController2 = [(MKCollectionsCarouselView *)self logicController];
    [logicController2 willDisplayCellAtIndexpath:pathCopy];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(MKCollectionsCarouselView *)self logicController];
  v7 = [logicController sectionKindAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v7 != 1)
  {
    routingDelegate = [(MKCollectionsCarouselView *)self routingDelegate];
    logicController2 = [(MKCollectionsCarouselView *)self logicController];
    v10 = [logicController2 geoCollectionAtIndex:{objc_msgSend(pathCopy, "item")}];
    [routingDelegate routeToCuratedCollection:v10];

    objc_initWeak(&location, self);
    utilityQueue = self->_utilityQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MKCollectionsCarouselView_collectionView_didSelectItemAtIndexPath___block_invoke;
    block[3] = &unk_1E76C87B8;
    objc_copyWeak(&v14, &location);
    v13 = pathCopy;
    dispatch_async(utilityQueue, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __69__MKCollectionsCarouselView_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained analyticsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v13 = objc_loadWeakRetained((a1 + 40));
    v5 = [v13 analyticsDelegate];
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 logicController];
    v8 = [v7 geoCollectionAtIndex:{objc_msgSend(*(a1 + 32), "item")}];
    v9 = [v8 collectionIdentifier];
    v10 = [*(a1 + 32) item];
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 logicController];
    [v5 collectionsCarouselDidRouteToCollectionId:v9 atIndex:v10 isSaved:{objc_msgSend(v12, "isCollectionSavedAtIndex:", objc_msgSend(*(a1 + 32), "item"))}];
  }
}

- (void)fetchCollections
{
  logicController = [(MKCollectionsCarouselView *)self logicController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MKCollectionsCarouselView_fetchCollections__block_invoke;
  v4[3] = &unk_1E76CDB38;
  v4[4] = self;
  [logicController getCollections:v4];
}

void __45__MKCollectionsCarouselView_fetchCollections__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logicController];
  [v2 displayCollections];

  v3 = *(a1 + 32);
  v4 = [v3 collectionView];
  [v3 scrollViewDidScroll:v4];

  *(*(a1 + 32) + 424) = 1;
}

- (void)configureCarouselCollectionView
{
  v74[4] = *MEMORY[0x1E69E9840];
  if (self->_collectionsConfiguration.displayStyle == 1)
  {
    collectionView = [(MKCollectionsCarouselView *)self collectionView];
    [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

    collectionView2 = [(MKCollectionsCarouselView *)self collectionView];
    [collectionView2 setDelegate:self];

    collectionView3 = [(MKCollectionsCarouselView *)self collectionView];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [collectionView3 setBackgroundColor:clearColor];

    collectionView4 = [(MKCollectionsCarouselView *)self collectionView];
    [(MKCollectionsCarouselView *)self addSubview:collectionView4];

    v52 = MEMORY[0x1E696ACD8];
    collectionView5 = [(MKCollectionsCarouselView *)self collectionView];
    leadingAnchor = [collectionView5 leadingAnchor];
    leadingAnchor2 = [(MKCollectionsCarouselView *)self leadingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[0] = v60;
    collectionView6 = [(MKCollectionsCarouselView *)self collectionView];
    trailingAnchor = [collectionView6 trailingAnchor];
    trailingAnchor2 = [(MKCollectionsCarouselView *)self trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[1] = v8;
    collectionView7 = [(MKCollectionsCarouselView *)self collectionView];
    topAnchor = [collectionView7 topAnchor];
    topAnchor2 = [(MKCollectionsCarouselView *)self topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v74[2] = v12;
    collectionView8 = [(MKCollectionsCarouselView *)self collectionView];
    bottomAnchor = [collectionView8 bottomAnchor];
    bottomAnchor2 = [(MKCollectionsCarouselView *)self bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v74[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
    [v52 activateConstraints:v17];
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x1E69DCF90]);
    v19 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(MKCollectionsCarouselView *)self setContentView:v19];

    contentView = [(MKCollectionsCarouselView *)self contentView];
    [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView2 = [(MKCollectionsCarouselView *)self contentView];
    [contentView2 setAxis:1];

    contentView3 = [(MKCollectionsCarouselView *)self contentView];
    [contentView3 setDistribution:0];

    contentView4 = [(MKCollectionsCarouselView *)self contentView];
    [contentView4 setAlignment:0];

    contentView5 = [(MKCollectionsCarouselView *)self contentView];
    [(MKCollectionsCarouselView *)self addSubview:contentView5];

    v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
    collectionView9 = [(MKCollectionsCarouselView *)self collectionView];
    [collectionView9 setTranslatesAutoresizingMaskIntoConstraints:0];

    collectionView10 = [(MKCollectionsCarouselView *)self collectionView];
    [collectionView10 setDelegate:self];

    collectionView11 = [(MKCollectionsCarouselView *)self collectionView];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [collectionView11 setBackgroundColor:clearColor2];

    contentView6 = [(MKCollectionsCarouselView *)self contentView];
    collectionView12 = [(MKCollectionsCarouselView *)self collectionView];
    [contentView6 addArrangedSubview:collectionView12];

    collectionView13 = [(MKCollectionsCarouselView *)self collectionView];
    heightAnchor = [collectionView13 heightAnchor];
    [MKCollectionsCarouselView horizontalLayoutHeightInContext:[(MKCollectionsCarouselView *)self carouselContext] includeExploreGuidesHeight:0 isSingleCollection:0];
    v33 = [heightAnchor constraintEqualToConstant:?];
    v73 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    [v67 addObjectsFromArray:v34];

    if ([(MKCollectionsCarouselView *)self isShowingExploreGuides])
    {
      objc_initWeak(&location, self);
      v35 = [MKExploreGuidesView alloc];
      exploreGuides = [(MKCollectionsCarouselView *)self exploreGuides];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __60__MKCollectionsCarouselView_configureCarouselCollectionView__block_invoke;
      v68[3] = &unk_1E76C7120;
      objc_copyWeak(&v69, &location);
      v68[4] = self;
      v37 = [(MKExploreGuidesView *)v35 initWithExploreGuides:exploreGuides tapHandler:v68];

      [(MKExploreGuidesView *)v37 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView7 = [(MKCollectionsCarouselView *)self contentView];
      [contentView7 addArrangedSubview:v37];

      heightAnchor2 = [(MKExploreGuidesView *)v37 heightAnchor];
      +[MKExploreGuidesView defaultHeight];
      v40 = [heightAnchor2 constraintEqualToConstant:?];
      v72 = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
      [v67 addObjectsFromArray:v41];

      objc_destroyWeak(&v69);
      objc_destroyWeak(&location);
    }

    contentView8 = [(MKCollectionsCarouselView *)self contentView];
    leadingAnchor3 = [contentView8 leadingAnchor];
    leadingAnchor4 = [(MKCollectionsCarouselView *)self leadingAnchor];
    v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v71[0] = v59;
    contentView9 = [(MKCollectionsCarouselView *)self contentView];
    trailingAnchor3 = [contentView9 trailingAnchor];
    trailingAnchor4 = [(MKCollectionsCarouselView *)self trailingAnchor];
    v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v71[1] = v42;
    contentView10 = [(MKCollectionsCarouselView *)self contentView];
    topAnchor3 = [contentView10 topAnchor];
    topAnchor4 = [(MKCollectionsCarouselView *)self topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v71[2] = v46;
    contentView11 = [(MKCollectionsCarouselView *)self contentView];
    bottomAnchor3 = [contentView11 bottomAnchor];
    bottomAnchor4 = [(MKCollectionsCarouselView *)self bottomAnchor];
    v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v71[3] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:4];
    [v67 addObjectsFromArray:v51];

    [MEMORY[0x1E696ACD8] activateConstraints:v67];
  }
}

void __60__MKCollectionsCarouselView_configureCarouselCollectionView__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained routingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 routingDelegate];
    [v7 routeToGuidesHomeFromExploreGuides:v10];

    v8 = [*(a1 + 32) analyticsDelegate];
    LOBYTE(v7) = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = [*(a1 + 32) analyticsDelegate];
      [v9 exploreGuidesButtonTapped];
    }
  }
}

- (void)configureCarouselMetadata:(int64_t)metadata
{
  if (metadata <= 7)
  {
    if (((1 << metadata) & 0xD2) != 0)
    {
      self->_collectionsConfiguration = xmmword_1A30F6EC0;
      flowLayout = [(MKCollectionsCarouselView *)self flowLayout];
      [flowLayout setScrollDirection:1];
    }

    else
    {
      if (metadata)
      {
        return;
      }

      self->_collectionsConfiguration = vdupq_n_s64(1uLL);
      flowLayout2 = [(MKCollectionsCarouselView *)self flowLayout];
      [flowLayout2 setScrollDirection:0];

      collectionView = [(MKCollectionsCarouselView *)self collectionView];
      [collectionView setAlwaysBounceVertical:1];

      flowLayout = [(MKCollectionsCarouselView *)self collectionView];
      [flowLayout setBounces:1];
    }
  }
}

- (void)resetCollectionsLayout
{
  collectionView = [(MKCollectionsCarouselView *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  v7 = objc_alloc_init(MEMORY[0x1E69DC840]);
  flowLayout = [(MKCollectionsCarouselView *)self flowLayout];
  [v7 setScrollDirection:{objc_msgSend(flowLayout, "scrollDirection")}];

  collectionView2 = [(MKCollectionsCarouselView *)self collectionView];
  [collectionView2 setCollectionViewLayout:v7];

  [(MKCollectionsCarouselView *)self setFlowLayout:v7];
}

- (void)refreshCollections
{
  logicController = [(MKCollectionsCarouselView *)self logicController];
  [logicController refreshCollections];
}

- (void)updateCollections:(id)collections
{
  collectionsCopy = collections;
  logicController = [(MKCollectionsCarouselView *)self logicController];
  [logicController updateCollections:collectionsCopy usingBatchedIdentifiers:0 usingCollectionFetcher:0 usingBatchSize:0];
}

- (void)resetScrollOffset
{
  if ([(UIView *)self _mapkit_isRTL])
  {
    collectionView = [(MKCollectionsCarouselView *)self collectionView];
    [collectionView contentSize];
    v5 = v4;
    collectionView2 = [(MKCollectionsCarouselView *)self collectionView];
    [collectionView2 bounds];
    v8 = v5 - v7;
    collectionView3 = [(MKCollectionsCarouselView *)self collectionView];
    [collectionView3 contentInset];
    v11 = v8 - v10;

    collectionView4 = [(MKCollectionsCarouselView *)self collectionView];
    [collectionView4 setContentOffset:0 animated:{v11, 0.0}];
  }

  else
  {
    v12 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    collectionView4 = [(MKCollectionsCarouselView *)self collectionView];
    [collectionView4 setContentOffset:{v12, v13}];
  }
}

- (BOOL)isShowingExploreGuides
{
  exploreGuides = [(MKCollectionsCarouselView *)self exploreGuides];
  v3 = exploreGuides != 0;

  return v3;
}

- (void)displayCollectionsUsingBatchIds:(id)ids usingGuideFetcher:(id)fetcher
{
  idsCopy = ids;
  fetcherCopy = fetcher;
  logicController = [(MKCollectionsCarouselView *)self logicController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__MKCollectionsCarouselView_displayCollectionsUsingBatchIds_usingGuideFetcher___block_invoke;
  v11[3] = &unk_1E76CCC28;
  v11[4] = self;
  v12 = idsCopy;
  v13 = fetcherCopy;
  v9 = fetcherCopy;
  v10 = idsCopy;
  [logicController getCollections:v11];
}

void __79__MKCollectionsCarouselView_displayCollectionsUsingBatchIds_usingGuideFetcher___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logicController];
  [v2 updateUsingBatchedIdentifiers:*(a1 + 40) usingCollectionFetcher:*(a1 + 48) usingBatchSize:10];

  v3 = [*(a1 + 32) logicController];
  [v3 displayCollections];

  v4 = *(a1 + 32);
  v5 = [v4 collectionView];
  [v4 scrollViewDidScroll:v5];

  *(*(a1 + 32) + 424) = 1;
}

- (void)dismissedCollections
{
  logicController = [(MKCollectionsCarouselView *)self logicController];
  [logicController dismissedCollections];
}

- (id)initCollectionsCarouselViewWithContext:(int64_t)context withPlaceCollections:(id)collections usingSyncCoordinator:(id)coordinator withRoutingDelegate:(id)delegate withScrollViewDelegate:(id)viewDelegate withAnalyticsDelegate:(id)analyticsDelegate exploreGuides:(id)guides
{
  collectionsCopy = collections;
  coordinatorCopy = coordinator;
  delegateCopy = delegate;
  viewDelegateCopy = viewDelegate;
  analyticsDelegateCopy = analyticsDelegate;
  guidesCopy = guides;
  v43.receiver = self;
  v43.super_class = MKCollectionsCarouselView;
  v21 = *MEMORY[0x1E695F058];
  v22 = *(MEMORY[0x1E695F058] + 8);
  v23 = *(MEMORY[0x1E695F058] + 16);
  v24 = *(MEMORY[0x1E695F058] + 24);
  v25 = [(MKCollectionsCarouselView *)&v43 initWithFrame:*MEMORY[0x1E695F058], v22, v23, v24];
  v26 = v25;
  if (v25)
  {
    v25->_carouselContext = context;
    objc_storeWeak(&v25->_routingDelegate, delegateCopy);
    objc_storeWeak(&v26->_scrollViewDelegate, viewDelegateCopy);
    objc_storeWeak(&v26->_analyticsDelegate, analyticsDelegateCopy);
    v27 = geo_dispatch_queue_create_with_qos();
    utilityQueue = v26->_utilityQueue;
    v26->_utilityQueue = v27;

    v29 = objc_alloc_init(MEMORY[0x1E69DC840]);
    flowLayout = v26->_flowLayout;
    v26->_flowLayout = v29;

    v26->_hasDisplayedCollections = 0;
    objc_storeStrong(&v26->_exploreGuides, guides);
    v31 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v26->_flowLayout collectionViewLayout:{v21, v22, v23, v24}];
    v42 = analyticsDelegateCopy;
    v32 = viewDelegateCopy;
    v33 = delegateCopy;
    v34 = guidesCopy;
    collectionView = v26->_collectionView;
    v26->_collectionView = v31;
    v36 = v31;

    v37 = [[MKPlaceCollectionsLogicController alloc] initWithCollectionView:v36 withPlaceCollections:collectionsCopy usingCollectionIds:0 usingCollectionFetcher:0 usingGuideConsumer:0 usingSyncCoordinator:coordinatorCopy inContext:context usingBatchSize:0];
    logicController = v26->_logicController;
    v26->_logicController = v37;

    [(UICollectionView *)v26->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v26->_collectionView setShowsHorizontalScrollIndicator:0];
    [(MKCollectionsCarouselView *)v26 configureCarouselMetadata:context];
    guidesCopy = v34;
    delegateCopy = v33;
    viewDelegateCopy = v32;
    analyticsDelegateCopy = v42;
    v39 = -[MKPlaceCollectionsSizeController initWithCollectionsConfiguration:isSingleCollection:usingTraitCollections:inContext:]([MKPlaceCollectionsSizeController alloc], "initWithCollectionsConfiguration:isSingleCollection:usingTraitCollections:inContext:", v26->_collectionsConfiguration.displayStyle, v26->_collectionsConfiguration.collectionsPerRow, [collectionsCopy count] == 1, v26, context);
    sizeController = v26->_sizeController;
    v26->_sizeController = v39;

    [(MKCollectionsCarouselView *)v26 configureCarouselCollectionView];
  }

  return v26;
}

+ (double)verticalLayoutHeightWithNumberOfItems:(unint64_t)items maxWidth:(double)width usingTraitEnvironment:(id)environment inContext:(int64_t)context
{
  environmentCopy = environment;
  v10 = [[MKPlaceCollectionsSizeController alloc] initWithDefaultCollectionsConfigurationUsingTraitCollections:environmentCopy inContext:context];

  [(MKPlaceCollectionsSizeController *)v10 sizeForCollectionWithMaxCollectionsWidth:width];
  v12 = v11;
  [(MKPlaceCollectionsSizeController *)v10 minimumInterItemSpacing];
  v14 = v13;
  [(MKPlaceCollectionsSizeController *)v10 sectionInsets];
  v16 = v15 + (v12 + v14) * items;

  return v16;
}

+ (double)horizontalLayoutHeightInContext:(int64_t)context includeExploreGuidesHeight:(BOOL)height isSingleCollection:(BOOL)collection
{
  heightCopy = height;
  context = [[MKPlaceCollectionsSizeController alloc] initWithCollectionsConfiguration:0 isSingleCollection:1 usingTraitCollections:collection inContext:0, context];
  [(MKPlaceCollectionsSizeController *)context sizeForCollectionWithMaxCollectionsWidth:100.0];
  v8 = v7;
  [(MKPlaceCollectionsSizeController *)context sectionInsets];
  v10 = v9;
  [(MKPlaceCollectionsSizeController *)context sectionInsets];
  v12 = v10 + v11;
  if (heightCopy)
  {
    v12 = v12 + 5.0;
    +[MKExploreGuidesView defaultHeight];
    v8 = v8 + v13;
  }

  return v12 + v8;
}

@end