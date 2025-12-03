@interface MSStickerBrowserView
- (CGPoint)contentOffset;
- (CGPoint)restoredContentOffset;
- (CGSize)browserSizeToRestoreFrom;
- (MSStickerBrowserView)initWithCoder:(id)coder;
- (MSStickerBrowserView)initWithFrame:(CGRect)frame;
- (MSStickerBrowserView)initWithFrame:(CGRect)frame stickerSize:(MSStickerSize)stickerSize;
- (MSStickerBrowserViewDisplayDelegate)displayDelegate;
- (NSDictionary)stateRestorationInfo;
- (UIEdgeInsets)contentInset;
- (id)_stickerAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)dataSource;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_reloadStickersAtIndexes:(id)indexes;
- (void)_startAnimating;
- (void)_stopAnimating;
- (void)_updateCollectionViewSpecIfNeeded;
- (void)animateNextCell;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureStickerView;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidateFlowLayout;
- (void)layoutSubviews;
- (void)prepareForSnapshotting;
- (void)reloadData;
- (void)restoreFromState:(id)state;
- (void)setContentInset:(UIEdgeInsets)contentInset;
- (void)setContentOffset:(CGPoint)contentOffset;
- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated;
- (void)setDataSource:(id)dataSource;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation MSStickerBrowserView

- (MSStickerBrowserView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MSStickerBrowserView;
  v3 = [(MSStickerBrowserView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_stickerSize = 1;
    [(MSStickerBrowserView *)v3 configureStickerView];
  }

  return v4;
}

- (MSStickerBrowserView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MSStickerBrowserView;
  v3 = [(MSStickerBrowserView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v3->_stickerSize = 1;
    [(MSStickerBrowserView *)v3 configureStickerView];
  }

  return v4;
}

- (MSStickerBrowserView)initWithFrame:(CGRect)frame stickerSize:(MSStickerSize)stickerSize
{
  v8.receiver = self;
  v8.super_class = MSStickerBrowserView;
  v5 = [(MSStickerBrowserView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_stickerSize = stickerSize;
    [(MSStickerBrowserView *)v5 configureStickerView];
  }

  return v6;
}

- (void)dealloc
{
  animationTimer = [(MSStickerBrowserView *)self animationTimer];
  [animationTimer invalidate];

  v4.receiver = self;
  v4.super_class = MSStickerBrowserView;
  [(MSStickerBrowserView *)&v4 dealloc];
}

- (void)setDataSource:(id)dataSource
{
  obj = dataSource;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(MSStickerBrowserView *)self reloadData];
    v5 = obj;
  }
}

- (CGPoint)contentOffset
{
  collectionView = [(MSStickerBrowserView *)self collectionView];
  [collectionView contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setContentOffset:(CGPoint)contentOffset
{
  y = contentOffset.y;
  x = contentOffset.x;
  collectionView = [(MSStickerBrowserView *)self collectionView];
  [collectionView setContentOffset:{x, y}];
}

- (UIEdgeInsets)contentInset
{
  collectionView = [(MSStickerBrowserView *)self collectionView];
  [collectionView contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)contentInset
{
  right = contentInset.right;
  bottom = contentInset.bottom;
  left = contentInset.left;
  top = contentInset.top;
  collectionView = [(MSStickerBrowserView *)self collectionView];
  [collectionView setContentInset:{top, left, bottom, right}];
}

- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated
{
  v4 = animated;
  y = contentOffset.y;
  x = contentOffset.x;
  collectionView = [(MSStickerBrowserView *)self collectionView];
  [collectionView setContentOffset:v4 animated:{x, y}];
}

- (void)configureStickerView
{
  [(MSStickerBrowserView *)self setBackgroundColor:0];
  v10 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v10 setScrollDirection:0];
  [(MSStickerBrowserView *)self setFlowLayout:v10];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  [(MSStickerBrowserView *)self bounds];
  v4 = [v3 initWithFrame:v10 collectionViewLayout:?];
  [v4 setShowsVerticalScrollIndicator:1];
  if (+[_MSPresentationState isRunningInCameraContext])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [v4 setIndicatorStyle:v5];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setDataSource:self];
  [v4 setDelegate:self];
  [v4 setPrefetchingEnabled:1];
  [v4 setPrefetchDataSource:self];
  [v4 setAlwaysBounceVertical:1];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"_kMSStickerCollectionViewCellReuseIdentifier"];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  [(MSStickerBrowserView *)self setCollectionView:v4];
  [(MSStickerBrowserView *)self addSubview:v4];
  [(MSStickerBrowserView *)self _updateCollectionViewSpecIfNeeded];
  array = [MEMORY[0x1E695DF70] array];
  [(MSStickerBrowserView *)self setCellsToAnimate:array];

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(MSStickerBrowserView *)self setStickerCache:v8];

  v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v9 setQualityOfService:25];
  [v9 setSuspended:1];
  [v9 setUnderlyingQueue:MEMORY[0x1E69E96A0]];
  [(MSStickerBrowserView *)self setStickerCacheQueue:v9];
}

- (void)animateNextCell
{
  cellsToAnimate = [(MSStickerBrowserView *)self cellsToAnimate];
  v4 = [cellsToAnimate count];

  if (v4)
  {
    currentlyAnimatingIndex = [(MSStickerBrowserView *)self currentlyAnimatingIndex];
    v6 = currentlyAnimatingIndex + 1;
    cellsToAnimate2 = [(MSStickerBrowserView *)self cellsToAnimate];
    v8 = [cellsToAnimate2 count];

    if (currentlyAnimatingIndex + 1 < v8)
    {
      cellsToAnimate3 = [(MSStickerBrowserView *)self cellsToAnimate];
      v10 = [cellsToAnimate3 objectAtIndex:v6];

      stickerView = [v10 stickerView];
      isPeeled = [stickerView isPeeled];

      if (isPeeled)
      {
        v6 = currentlyAnimatingIndex + 2;
      }
    }

    cellsToAnimate4 = [(MSStickerBrowserView *)self cellsToAnimate];
    v14 = [cellsToAnimate4 count];

    if (v6 >= v14)
    {
      v6 = 0;
    }

    cellsToAnimate5 = [(MSStickerBrowserView *)self cellsToAnimate];
    v16 = [cellsToAnimate5 count];

    if (v16)
    {
      v17 = 0;
      v18 = *MEMORY[0x1E695DA28];
      do
      {
        cellsToAnimate6 = [(MSStickerBrowserView *)self cellsToAnimate];
        v20 = [cellsToAnimate6 objectAtIndex:v17];

        if (v6 == v17)
        {
          stickerView2 = [v20 stickerView];
          [stickerView2 animationDuration];
          v23 = v22;

          v24 = v23 + v23;
          if (v23 >= 0.5)
          {
            v24 = v23;
          }

          v25 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel_animateNextCell selector:0 userInfo:0 repeats:v24];
          currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
          [currentRunLoop addTimer:v25 forMode:v18];

          [(MSStickerBrowserView *)self setAnimationTimer:v25];
        }

        [v20 setAnimating:v6 == v17];

        ++v17;
        cellsToAnimate7 = [(MSStickerBrowserView *)self cellsToAnimate];
        v28 = [cellsToAnimate7 count];
      }

      while (v17 < v28);
    }

    [(MSStickerBrowserView *)self setCurrentlyAnimatingIndex:v6];
  }

  else
  {
    animationTimer = [(MSStickerBrowserView *)self animationTimer];
    [animationTimer invalidate];

    [(MSStickerBrowserView *)self setAnimationTimer:0];
  }
}

- (void)reloadData
{
  [(MSStickerBrowserView *)self setLayoutSpec:0];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_dataSource);
    self->_stickerSize = [v5 stickerSize];
  }

  [(MSStickerBrowserView *)self _updateCollectionViewSpecIfNeeded];
  stickerCache = [(MSStickerBrowserView *)self stickerCache];
  [stickerCache removeAllObjects];
}

- (void)_reloadStickersAtIndexes:(id)indexes
{
  v4 = MEMORY[0x1E695DF70];
  indexesCopy = indexes;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MSStickerBrowserView__reloadStickersAtIndexes___block_invoke;
  v10[3] = &unk_1E83A2F20;
  v11 = v6;
  v7 = v6;
  [indexesCopy enumerateIndexesUsingBlock:v10];

  stickerCache = [(MSStickerBrowserView *)self stickerCache];
  [stickerCache removeObjectsForKeys:v7];

  collectionView = [(MSStickerBrowserView *)self collectionView];
  [collectionView reloadItemsAtIndexPaths:v7];
}

void __49__MSStickerBrowserView__reloadStickersAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:0];
  [v2 addObject:v3];
}

- (id)_stickerAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v7 stickerBrowserView:self stickerAtIndex:{objc_msgSend(pathCopy, "item")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = MSStickerBrowserView;
  [(MSStickerBrowserView *)&v11 layoutSubviews];
  collectionView = [(MSStickerBrowserView *)self collectionView];
  [(MSStickerBrowserView *)self bounds];
  [collectionView setFrame:?];

  [(MSStickerBrowserView *)self _updateCollectionViewSpecIfNeeded];
  if ([(MSStickerBrowserView *)self isRestoringContentOffset])
  {
    [(MSStickerBrowserView *)self browserSizeToRestoreFrom];
    v5 = v4;
    v7 = v6;
    [(MSStickerBrowserView *)self bounds];
    if (v5 == v9 && v7 == v8)
    {
      collectionView2 = [(MSStickerBrowserView *)self collectionView];
      [(MSStickerBrowserView *)self restoredContentOffset];
      [collectionView2 setContentOffset:?];
    }

    [(MSStickerBrowserView *)self setIsRestoringContentOffset:0];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = MSStickerBrowserView;
  [(MSStickerBrowserView *)&v5 didMoveToWindow];
  window = [(MSStickerBrowserView *)self window];

  if (window)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__MSStickerBrowserView_didMoveToWindow__block_invoke;
    block[3] = &unk_1E83A2C20;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_dataSource);
  v8 = [v7 numberOfStickersInStickerBrowserView:self];

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithReuseIdentifier:@"_kMSStickerCollectionViewCellReuseIdentifier" forIndexPath:path];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  stickerCache = [(MSStickerBrowserView *)self stickerCache];
  v9 = [stickerCache objectForKey:pathCopy];

  if (!v9)
  {
    v9 = [(MSStickerBrowserView *)self _stickerAtIndexPath:pathCopy];
  }

  [cellCopy setSticker:v9];
  WeakRetained = objc_loadWeakRetained(&self->_displayDelegate);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_displayDelegate);
    v12 = [v11 stickerBrowserView:self shouldDrawBorderAroundSticker:v9];

    [cellCopy showCellBorder:v12];
  }

  if ([(MSStickerBrowserView *)self isAnimating])
  {
    stickerView = [cellCopy stickerView];
    [stickerView setAnimating:1];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  stickerView = [cell stickerView];
  [stickerView setAnimating:0];
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v30 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  stickerCacheQueue = [(MSStickerBrowserView *)self stickerCacheQueue];
  [stickerCacheQueue setSuspended:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = pathsCopy;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [(MSStickerBrowserView *)self _stickerAtIndexPath:v10];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __65__MSStickerBrowserView_collectionView_prefetchItemsAtIndexPaths___block_invoke;
        aBlock[3] = &unk_1E83A2C20;
        v12 = v11;
        v24 = v12;
        v13 = _Block_copy(aBlock);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __65__MSStickerBrowserView_collectionView_prefetchItemsAtIndexPaths___block_invoke_2;
        v21[3] = &unk_1E83A2C20;
        v22 = v12;
        v14 = v12;
        v15 = _Block_copy(v21);
        stickerCache = [(MSStickerBrowserView *)self stickerCache];
        [stickerCache setObject:v14 forKey:v10];

        stickerCacheQueue2 = [(MSStickerBrowserView *)self stickerCacheQueue];
        [stickerCacheQueue2 addOperationWithBlock:v13];

        stickerCacheQueue3 = [(MSStickerBrowserView *)self stickerCacheQueue];
        [stickerCacheQueue3 addOperationWithBlock:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)_updateCollectionViewSpecIfNeeded
{
  window = [(MSStickerBrowserView *)self window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  layoutSpec = [(MSStickerBrowserView *)self layoutSpec];
  if (!layoutSpec || (v7 = layoutSpec, -[MSStickerBrowserView layoutSpec](self, "layoutSpec"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 interfaceOrientation], v8, v7, v9 != interfaceOrientation))
  {
    [(MSStickerBrowserView *)self setLayoutSpec:0];
    v10 = [MSStickerBrowserViewLayoutSpec specWithSizeClass:[(MSStickerBrowserView *)self stickerSize] interfaceOrientation:interfaceOrientation];
    [(MSStickerBrowserView *)self setLayoutSpec:v10];

    flowLayout = [(MSStickerBrowserView *)self flowLayout];
    layoutSpec2 = [(MSStickerBrowserView *)self layoutSpec];
    [layoutSpec2 minimumInteritemSpacing];
    [flowLayout setMinimumInteritemSpacing:?];
    [layoutSpec2 itemSize];
    [flowLayout setItemSize:?];
    [layoutSpec2 minimumLineSpacing];
    [flowLayout setMinimumLineSpacing:?];
    [layoutSpec2 sectionInset];
    [flowLayout setSectionInset:?];
  }

  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (void)prepareForSnapshotting
{
  v16 = *MEMORY[0x1E69E9840];
  collectionView = [(MSStickerBrowserView *)self collectionView];
  [collectionView setShowsVerticalScrollIndicator:0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionView2 = [(MSStickerBrowserView *)self collectionView];
  visibleCells = [collectionView2 visibleCells];

  v6 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(visibleCells);
        }

        stickerView = [*(*(&v11 + 1) + 8 * v9) stickerView];
        [stickerView prepareForSnapshotting];

        ++v9;
      }

      while (v7 != v9);
      v7 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = MSStickerBrowserView;
  [(MSStickerBrowserView *)&v6 setUserInteractionEnabled:?];
  collectionView = [(MSStickerBrowserView *)self collectionView];
  [collectionView setUserInteractionEnabled:enabledCopy];
  [collectionView setScrollEnabled:enabledCopy];
  if (!enabledCopy)
  {
    [collectionView contentOffset];
    [collectionView setContentOffset:0 animated:?];
  }
}

- (NSDictionary)stateRestorationInfo
{
  v19[4] = *MEMORY[0x1E69E9840];
  collectionView = [(MSStickerBrowserView *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  v7 = v6;

  v18[0] = @"x-offset";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v19[0] = v8;
  v18[1] = @"y-offset";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v19[1] = v9;
  v18[2] = @"x-size";
  v10 = MEMORY[0x1E696AD98];
  [(MSStickerBrowserView *)self bounds];
  v12 = [v10 numberWithDouble:v11];
  v19[2] = v12;
  v18[3] = @"y-size";
  v13 = MEMORY[0x1E696AD98];
  [(MSStickerBrowserView *)self bounds];
  v15 = [v13 numberWithDouble:v14];
  v19[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];

  return v16;
}

- (void)restoreFromState:(id)state
{
  stateCopy = state;
  v5 = [stateCopy objectForKeyedSubscript:@"x-offset"];
  [v5 floatValue];
  v7 = v6;
  v8 = [stateCopy objectForKeyedSubscript:@"y-offset"];
  [v8 floatValue];
  [(MSStickerBrowserView *)self setRestoredContentOffset:v7, v9];

  v10 = [stateCopy objectForKeyedSubscript:@"x-size"];
  [v10 floatValue];
  v12 = v11;
  v13 = [stateCopy objectForKeyedSubscript:@"y-size"];

  [v13 floatValue];
  [(MSStickerBrowserView *)self setBrowserSizeToRestoreFrom:v12, v14];

  [(MSStickerBrowserView *)self setIsRestoringContentOffset:1];
}

- (void)invalidateFlowLayout
{
  flowLayout = [(MSStickerBrowserView *)self flowLayout];
  [flowLayout invalidateLayout];
}

- (void)_startAnimating
{
  v14 = *MEMORY[0x1E69E9840];
  [(MSStickerBrowserView *)self setAnimating:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  collectionView = [(MSStickerBrowserView *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAnimating:1];
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_stopAnimating
{
  v14 = *MEMORY[0x1E69E9840];
  [(MSStickerBrowserView *)self setAnimating:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  collectionView = [(MSStickerBrowserView *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAnimating:0];
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGPoint)restoredContentOffset
{
  x = self->_restoredContentOffset.x;
  y = self->_restoredContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)browserSizeToRestoreFrom
{
  width = self->_browserSizeToRestoreFrom.width;
  height = self->_browserSizeToRestoreFrom.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MSStickerBrowserViewDisplayDelegate)displayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_displayDelegate);

  return WeakRetained;
}

@end