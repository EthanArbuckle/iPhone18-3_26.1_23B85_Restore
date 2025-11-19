@interface MKCollectionsCarouselView
+ (double)horizontalLayoutHeightInContext:(int64_t)a3 includeExploreGuidesHeight:(BOOL)a4 isSingleCollection:(BOOL)a5;
+ (double)verticalLayoutHeightWithNumberOfItems:(unint64_t)a3 maxWidth:(double)a4 usingTraitEnvironment:(id)a5 inContext:(int64_t)a6;
- (BOOL)isShowingExploreGuides;
- (CGPoint)contentOffset;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)contentSize;
- (MKCollectionCarouselAnalyticsDelegate)analyticsDelegate;
- (MKCollectionCarouselRoutingDelegate)routingDelegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIScrollViewDelegate)scrollViewDelegate;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (id)initCollectionsCarouselViewWithContext:(int64_t)a3 withPlaceCollections:(id)a4 usingSyncCoordinator:(id)a5 withRoutingDelegate:(id)a6 withScrollViewDelegate:(id)a7 withAnalyticsDelegate:(id)a8 exploreGuides:(id)a9;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureCarouselCollectionView;
- (void)configureCarouselMetadata:(int64_t)a3;
- (void)dismissedCollections;
- (void)displayCollectionsUsingBatchIds:(id)a3 usingGuideFetcher:(id)a4;
- (void)fetchCollections;
- (void)refreshCollections;
- (void)resetCollectionsLayout;
- (void)resetScrollOffset;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)updateCollections:(id)a3;
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

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v5 = [(MKCollectionsCarouselView *)self sizeController:a3];
  [v5 minimumInterItemSpacing];
  v7 = v6;

  return v7;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(MKCollectionsCarouselView *)self logicController:a3];
  v8 = [v7 sectionKindAtIndex:a5];

  if (v8 == 1)
  {
    v9 = *MEMORY[0x1E69DDCE0];
    v10 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v13 = [(MKCollectionsCarouselView *)self sizeController];
    [v13 sectionInsets];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MKCollectionsCarouselView *)self logicController];
  v10 = [v8 section];

  v11 = [v9 sectionKindAtIndex:v10];
  if (v11 == 1)
  {
    [v7 frame];
    v13 = v12;
    *&v14 = 100.0;
  }

  else
  {
    v15 = [(MKCollectionsCarouselView *)self sizeController];
    [v7 frame];
    [v15 sizeForCollectionWithMaxCollectionsWidth:v16];
    v13 = v17;
    v14 = v18;
  }

  v19 = v13;
  v20 = *&v14;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v7 = a3;
  v4 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
    [v6 scrollViewDidEndDecelerating:v7];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
    [v12 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:{x, y}];
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = a3;
  v4 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
    [v6 scrollViewWillBeginDragging:v7];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MKCollectionsCarouselView *)self scrollViewDelegate];
    [v6 scrollViewDidScroll:v7];
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9 = a5;
  v6 = [(MKCollectionsCarouselView *)self logicController];
  v7 = [v6 sectionKindAtIndex:{objc_msgSend(v9, "section")}];

  if (v7 != 1)
  {
    v8 = [(MKCollectionsCarouselView *)self logicController];
    [v8 willDisplayCellAtIndexpath:v9];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MKCollectionsCarouselView *)self logicController];
  v7 = [v6 sectionKindAtIndex:{objc_msgSend(v5, "section")}];

  if (v7 != 1)
  {
    v8 = [(MKCollectionsCarouselView *)self routingDelegate];
    v9 = [(MKCollectionsCarouselView *)self logicController];
    v10 = [v9 geoCollectionAtIndex:{objc_msgSend(v5, "item")}];
    [v8 routeToCuratedCollection:v10];

    objc_initWeak(&location, self);
    utilityQueue = self->_utilityQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MKCollectionsCarouselView_collectionView_didSelectItemAtIndexPath___block_invoke;
    block[3] = &unk_1E76C87B8;
    objc_copyWeak(&v14, &location);
    v13 = v5;
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
  v3 = [(MKCollectionsCarouselView *)self logicController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MKCollectionsCarouselView_fetchCollections__block_invoke;
  v4[3] = &unk_1E76CDB38;
  v4[4] = self;
  [v3 getCollections:v4];
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
    v3 = [(MKCollectionsCarouselView *)self collectionView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v4 = [(MKCollectionsCarouselView *)self collectionView];
    [v4 setDelegate:self];

    v5 = [(MKCollectionsCarouselView *)self collectionView];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:v6];

    v7 = [(MKCollectionsCarouselView *)self collectionView];
    [(MKCollectionsCarouselView *)self addSubview:v7];

    v52 = MEMORY[0x1E696ACD8];
    v66 = [(MKCollectionsCarouselView *)self collectionView];
    v64 = [v66 leadingAnchor];
    v62 = [(MKCollectionsCarouselView *)self leadingAnchor];
    v60 = [v64 constraintEqualToAnchor:v62];
    v74[0] = v60;
    v58 = [(MKCollectionsCarouselView *)self collectionView];
    v56 = [v58 trailingAnchor];
    v54 = [(MKCollectionsCarouselView *)self trailingAnchor];
    v8 = [v56 constraintEqualToAnchor:v54];
    v74[1] = v8;
    v9 = [(MKCollectionsCarouselView *)self collectionView];
    v10 = [v9 topAnchor];
    v11 = [(MKCollectionsCarouselView *)self topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v74[2] = v12;
    v13 = [(MKCollectionsCarouselView *)self collectionView];
    v14 = [v13 bottomAnchor];
    v15 = [(MKCollectionsCarouselView *)self bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v74[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
    [v52 activateConstraints:v17];
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x1E69DCF90]);
    v19 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(MKCollectionsCarouselView *)self setContentView:v19];

    v20 = [(MKCollectionsCarouselView *)self contentView];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(MKCollectionsCarouselView *)self contentView];
    [v21 setAxis:1];

    v22 = [(MKCollectionsCarouselView *)self contentView];
    [v22 setDistribution:0];

    v23 = [(MKCollectionsCarouselView *)self contentView];
    [v23 setAlignment:0];

    v24 = [(MKCollectionsCarouselView *)self contentView];
    [(MKCollectionsCarouselView *)self addSubview:v24];

    v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = [(MKCollectionsCarouselView *)self collectionView];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    v26 = [(MKCollectionsCarouselView *)self collectionView];
    [v26 setDelegate:self];

    v27 = [(MKCollectionsCarouselView *)self collectionView];
    v28 = [MEMORY[0x1E69DC888] clearColor];
    [v27 setBackgroundColor:v28];

    v29 = [(MKCollectionsCarouselView *)self contentView];
    v30 = [(MKCollectionsCarouselView *)self collectionView];
    [v29 addArrangedSubview:v30];

    v31 = [(MKCollectionsCarouselView *)self collectionView];
    v32 = [v31 heightAnchor];
    [MKCollectionsCarouselView horizontalLayoutHeightInContext:[(MKCollectionsCarouselView *)self carouselContext] includeExploreGuidesHeight:0 isSingleCollection:0];
    v33 = [v32 constraintEqualToConstant:?];
    v73 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    [v67 addObjectsFromArray:v34];

    if ([(MKCollectionsCarouselView *)self isShowingExploreGuides])
    {
      objc_initWeak(&location, self);
      v35 = [MKExploreGuidesView alloc];
      v36 = [(MKCollectionsCarouselView *)self exploreGuides];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __60__MKCollectionsCarouselView_configureCarouselCollectionView__block_invoke;
      v68[3] = &unk_1E76C7120;
      objc_copyWeak(&v69, &location);
      v68[4] = self;
      v37 = [(MKExploreGuidesView *)v35 initWithExploreGuides:v36 tapHandler:v68];

      [(MKExploreGuidesView *)v37 setTranslatesAutoresizingMaskIntoConstraints:0];
      v38 = [(MKCollectionsCarouselView *)self contentView];
      [v38 addArrangedSubview:v37];

      v39 = [(MKExploreGuidesView *)v37 heightAnchor];
      +[MKExploreGuidesView defaultHeight];
      v40 = [v39 constraintEqualToConstant:?];
      v72 = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
      [v67 addObjectsFromArray:v41];

      objc_destroyWeak(&v69);
      objc_destroyWeak(&location);
    }

    v65 = [(MKCollectionsCarouselView *)self contentView];
    v63 = [v65 leadingAnchor];
    v61 = [(MKCollectionsCarouselView *)self leadingAnchor];
    v59 = [v63 constraintEqualToAnchor:v61];
    v71[0] = v59;
    v57 = [(MKCollectionsCarouselView *)self contentView];
    v55 = [v57 trailingAnchor];
    v53 = [(MKCollectionsCarouselView *)self trailingAnchor];
    v42 = [v55 constraintEqualToAnchor:v53];
    v71[1] = v42;
    v43 = [(MKCollectionsCarouselView *)self contentView];
    v44 = [v43 topAnchor];
    v45 = [(MKCollectionsCarouselView *)self topAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    v71[2] = v46;
    v47 = [(MKCollectionsCarouselView *)self contentView];
    v48 = [v47 bottomAnchor];
    v49 = [(MKCollectionsCarouselView *)self bottomAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
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

- (void)configureCarouselMetadata:(int64_t)a3
{
  if (a3 <= 7)
  {
    if (((1 << a3) & 0xD2) != 0)
    {
      self->_collectionsConfiguration = xmmword_1A30F6EC0;
      v6 = [(MKCollectionsCarouselView *)self flowLayout];
      [v6 setScrollDirection:1];
    }

    else
    {
      if (a3)
      {
        return;
      }

      self->_collectionsConfiguration = vdupq_n_s64(1uLL);
      v4 = [(MKCollectionsCarouselView *)self flowLayout];
      [v4 setScrollDirection:0];

      v5 = [(MKCollectionsCarouselView *)self collectionView];
      [v5 setAlwaysBounceVertical:1];

      v6 = [(MKCollectionsCarouselView *)self collectionView];
      [v6 setBounces:1];
    }
  }
}

- (void)resetCollectionsLayout
{
  v3 = [(MKCollectionsCarouselView *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [v4 invalidateLayout];

  v7 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v5 = [(MKCollectionsCarouselView *)self flowLayout];
  [v7 setScrollDirection:{objc_msgSend(v5, "scrollDirection")}];

  v6 = [(MKCollectionsCarouselView *)self collectionView];
  [v6 setCollectionViewLayout:v7];

  [(MKCollectionsCarouselView *)self setFlowLayout:v7];
}

- (void)refreshCollections
{
  v2 = [(MKCollectionsCarouselView *)self logicController];
  [v2 refreshCollections];
}

- (void)updateCollections:(id)a3
{
  v4 = a3;
  v5 = [(MKCollectionsCarouselView *)self logicController];
  [v5 updateCollections:v4 usingBatchedIdentifiers:0 usingCollectionFetcher:0 usingBatchSize:0];
}

- (void)resetScrollOffset
{
  if ([(UIView *)self _mapkit_isRTL])
  {
    v3 = [(MKCollectionsCarouselView *)self collectionView];
    [v3 contentSize];
    v5 = v4;
    v6 = [(MKCollectionsCarouselView *)self collectionView];
    [v6 bounds];
    v8 = v5 - v7;
    v9 = [(MKCollectionsCarouselView *)self collectionView];
    [v9 contentInset];
    v11 = v8 - v10;

    v14 = [(MKCollectionsCarouselView *)self collectionView];
    [v14 setContentOffset:0 animated:{v11, 0.0}];
  }

  else
  {
    v12 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    v14 = [(MKCollectionsCarouselView *)self collectionView];
    [v14 setContentOffset:{v12, v13}];
  }
}

- (BOOL)isShowingExploreGuides
{
  v2 = [(MKCollectionsCarouselView *)self exploreGuides];
  v3 = v2 != 0;

  return v3;
}

- (void)displayCollectionsUsingBatchIds:(id)a3 usingGuideFetcher:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MKCollectionsCarouselView *)self logicController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__MKCollectionsCarouselView_displayCollectionsUsingBatchIds_usingGuideFetcher___block_invoke;
  v11[3] = &unk_1E76CCC28;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getCollections:v11];
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
  v2 = [(MKCollectionsCarouselView *)self logicController];
  [v2 dismissedCollections];
}

- (id)initCollectionsCarouselViewWithContext:(int64_t)a3 withPlaceCollections:(id)a4 usingSyncCoordinator:(id)a5 withRoutingDelegate:(id)a6 withScrollViewDelegate:(id)a7 withAnalyticsDelegate:(id)a8 exploreGuides:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
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
    v25->_carouselContext = a3;
    objc_storeWeak(&v25->_routingDelegate, v17);
    objc_storeWeak(&v26->_scrollViewDelegate, v18);
    objc_storeWeak(&v26->_analyticsDelegate, v19);
    v27 = geo_dispatch_queue_create_with_qos();
    utilityQueue = v26->_utilityQueue;
    v26->_utilityQueue = v27;

    v29 = objc_alloc_init(MEMORY[0x1E69DC840]);
    flowLayout = v26->_flowLayout;
    v26->_flowLayout = v29;

    v26->_hasDisplayedCollections = 0;
    objc_storeStrong(&v26->_exploreGuides, a9);
    v31 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v26->_flowLayout collectionViewLayout:{v21, v22, v23, v24}];
    v42 = v19;
    v32 = v18;
    v33 = v17;
    v34 = v20;
    collectionView = v26->_collectionView;
    v26->_collectionView = v31;
    v36 = v31;

    v37 = [[MKPlaceCollectionsLogicController alloc] initWithCollectionView:v36 withPlaceCollections:v15 usingCollectionIds:0 usingCollectionFetcher:0 usingGuideConsumer:0 usingSyncCoordinator:v16 inContext:a3 usingBatchSize:0];
    logicController = v26->_logicController;
    v26->_logicController = v37;

    [(UICollectionView *)v26->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v26->_collectionView setShowsHorizontalScrollIndicator:0];
    [(MKCollectionsCarouselView *)v26 configureCarouselMetadata:a3];
    v20 = v34;
    v17 = v33;
    v18 = v32;
    v19 = v42;
    v39 = -[MKPlaceCollectionsSizeController initWithCollectionsConfiguration:isSingleCollection:usingTraitCollections:inContext:]([MKPlaceCollectionsSizeController alloc], "initWithCollectionsConfiguration:isSingleCollection:usingTraitCollections:inContext:", v26->_collectionsConfiguration.displayStyle, v26->_collectionsConfiguration.collectionsPerRow, [v15 count] == 1, v26, a3);
    sizeController = v26->_sizeController;
    v26->_sizeController = v39;

    [(MKCollectionsCarouselView *)v26 configureCarouselCollectionView];
  }

  return v26;
}

+ (double)verticalLayoutHeightWithNumberOfItems:(unint64_t)a3 maxWidth:(double)a4 usingTraitEnvironment:(id)a5 inContext:(int64_t)a6
{
  v9 = a5;
  v10 = [[MKPlaceCollectionsSizeController alloc] initWithDefaultCollectionsConfigurationUsingTraitCollections:v9 inContext:a6];

  [(MKPlaceCollectionsSizeController *)v10 sizeForCollectionWithMaxCollectionsWidth:a4];
  v12 = v11;
  [(MKPlaceCollectionsSizeController *)v10 minimumInterItemSpacing];
  v14 = v13;
  [(MKPlaceCollectionsSizeController *)v10 sectionInsets];
  v16 = v15 + (v12 + v14) * a3;

  return v16;
}

+ (double)horizontalLayoutHeightInContext:(int64_t)a3 includeExploreGuidesHeight:(BOOL)a4 isSingleCollection:(BOOL)a5
{
  v5 = a4;
  v6 = [[MKPlaceCollectionsSizeController alloc] initWithCollectionsConfiguration:0 isSingleCollection:1 usingTraitCollections:a5 inContext:0, a3];
  [(MKPlaceCollectionsSizeController *)v6 sizeForCollectionWithMaxCollectionsWidth:100.0];
  v8 = v7;
  [(MKPlaceCollectionsSizeController *)v6 sectionInsets];
  v10 = v9;
  [(MKPlaceCollectionsSizeController *)v6 sectionInsets];
  v12 = v10 + v11;
  if (v5)
  {
    v12 = v12 + 5.0;
    +[MKExploreGuidesView defaultHeight];
    v8 = v8 + v13;
  }

  return v12 + v8;
}

@end