@interface MSStickerBrowserView
- (CGPoint)contentOffset;
- (CGPoint)restoredContentOffset;
- (CGSize)browserSizeToRestoreFrom;
- (MSStickerBrowserView)initWithCoder:(id)a3;
- (MSStickerBrowserView)initWithFrame:(CGRect)frame;
- (MSStickerBrowserView)initWithFrame:(CGRect)frame stickerSize:(MSStickerSize)stickerSize;
- (MSStickerBrowserViewDisplayDelegate)displayDelegate;
- (NSDictionary)stateRestorationInfo;
- (UIEdgeInsets)contentInset;
- (id)_stickerAtIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)dataSource;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_reloadStickersAtIndexes:(id)a3;
- (void)_startAnimating;
- (void)_stopAnimating;
- (void)_updateCollectionViewSpecIfNeeded;
- (void)animateNextCell;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureStickerView;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidateFlowLayout;
- (void)layoutSubviews;
- (void)prepareForSnapshotting;
- (void)reloadData;
- (void)restoreFromState:(id)a3;
- (void)setContentInset:(UIEdgeInsets)contentInset;
- (void)setContentOffset:(CGPoint)contentOffset;
- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated;
- (void)setDataSource:(id)dataSource;
- (void)setUserInteractionEnabled:(BOOL)a3;
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

- (MSStickerBrowserView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MSStickerBrowserView;
  v3 = [(MSStickerBrowserView *)&v6 initWithCoder:a3];
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
  v3 = [(MSStickerBrowserView *)self animationTimer];
  [v3 invalidate];

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
  v2 = [(MSStickerBrowserView *)self collectionView];
  [v2 contentOffset];
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
  v5 = [(MSStickerBrowserView *)self collectionView];
  [v5 setContentOffset:{x, y}];
}

- (UIEdgeInsets)contentInset
{
  v2 = [(MSStickerBrowserView *)self collectionView];
  [v2 contentInset];
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
  v7 = [(MSStickerBrowserView *)self collectionView];
  [v7 setContentInset:{top, left, bottom, right}];
}

- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated
{
  v4 = animated;
  y = contentOffset.y;
  x = contentOffset.x;
  v7 = [(MSStickerBrowserView *)self collectionView];
  [v7 setContentOffset:v4 animated:{x, y}];
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
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v6];

  [(MSStickerBrowserView *)self setCollectionView:v4];
  [(MSStickerBrowserView *)self addSubview:v4];
  [(MSStickerBrowserView *)self _updateCollectionViewSpecIfNeeded];
  v7 = [MEMORY[0x1E695DF70] array];
  [(MSStickerBrowserView *)self setCellsToAnimate:v7];

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
  v3 = [(MSStickerBrowserView *)self cellsToAnimate];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MSStickerBrowserView *)self currentlyAnimatingIndex];
    v6 = v5 + 1;
    v7 = [(MSStickerBrowserView *)self cellsToAnimate];
    v8 = [v7 count];

    if (v5 + 1 < v8)
    {
      v9 = [(MSStickerBrowserView *)self cellsToAnimate];
      v10 = [v9 objectAtIndex:v6];

      v11 = [v10 stickerView];
      v12 = [v11 isPeeled];

      if (v12)
      {
        v6 = v5 + 2;
      }
    }

    v13 = [(MSStickerBrowserView *)self cellsToAnimate];
    v14 = [v13 count];

    if (v6 >= v14)
    {
      v6 = 0;
    }

    v15 = [(MSStickerBrowserView *)self cellsToAnimate];
    v16 = [v15 count];

    if (v16)
    {
      v17 = 0;
      v18 = *MEMORY[0x1E695DA28];
      do
      {
        v19 = [(MSStickerBrowserView *)self cellsToAnimate];
        v20 = [v19 objectAtIndex:v17];

        if (v6 == v17)
        {
          v21 = [v20 stickerView];
          [v21 animationDuration];
          v23 = v22;

          v24 = v23 + v23;
          if (v23 >= 0.5)
          {
            v24 = v23;
          }

          v25 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel_animateNextCell selector:0 userInfo:0 repeats:v24];
          v26 = [MEMORY[0x1E695DFD0] currentRunLoop];
          [v26 addTimer:v25 forMode:v18];

          [(MSStickerBrowserView *)self setAnimationTimer:v25];
        }

        [v20 setAnimating:v6 == v17];

        ++v17;
        v27 = [(MSStickerBrowserView *)self cellsToAnimate];
        v28 = [v27 count];
      }

      while (v17 < v28);
    }

    [(MSStickerBrowserView *)self setCurrentlyAnimatingIndex:v6];
  }

  else
  {
    v29 = [(MSStickerBrowserView *)self animationTimer];
    [v29 invalidate];

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
  v6 = [(MSStickerBrowserView *)self stickerCache];
  [v6 removeAllObjects];
}

- (void)_reloadStickersAtIndexes:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MSStickerBrowserView__reloadStickersAtIndexes___block_invoke;
  v10[3] = &unk_1E83A2F20;
  v11 = v6;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:v10];

  v8 = [(MSStickerBrowserView *)self stickerCache];
  [v8 removeObjectsForKeys:v7];

  v9 = [(MSStickerBrowserView *)self collectionView];
  [v9 reloadItemsAtIndexPaths:v7];
}

void __49__MSStickerBrowserView__reloadStickersAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:0];
  [v2 addObject:v3];
}

- (id)_stickerAtIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v7 stickerBrowserView:self stickerAtIndex:{objc_msgSend(v4, "item")}];
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
  v3 = [(MSStickerBrowserView *)self collectionView];
  [(MSStickerBrowserView *)self bounds];
  [v3 setFrame:?];

  [(MSStickerBrowserView *)self _updateCollectionViewSpecIfNeeded];
  if ([(MSStickerBrowserView *)self isRestoringContentOffset])
  {
    [(MSStickerBrowserView *)self browserSizeToRestoreFrom];
    v5 = v4;
    v7 = v6;
    [(MSStickerBrowserView *)self bounds];
    if (v5 == v9 && v7 == v8)
    {
      v10 = [(MSStickerBrowserView *)self collectionView];
      [(MSStickerBrowserView *)self restoredContentOffset];
      [v10 setContentOffset:?];
    }

    [(MSStickerBrowserView *)self setIsRestoringContentOffset:0];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = MSStickerBrowserView;
  [(MSStickerBrowserView *)&v5 didMoveToWindow];
  v3 = [(MSStickerBrowserView *)self window];

  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__MSStickerBrowserView_didMoveToWindow__block_invoke;
    block[3] = &unk_1E83A2C20;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithReuseIdentifier:@"_kMSStickerCollectionViewCellReuseIdentifier" forIndexPath:a4];
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(MSStickerBrowserView *)self stickerCache];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v9 = [(MSStickerBrowserView *)self _stickerAtIndexPath:v7];
  }

  [v14 setSticker:v9];
  WeakRetained = objc_loadWeakRetained(&self->_displayDelegate);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_displayDelegate);
    v12 = [v11 stickerBrowserView:self shouldDrawBorderAroundSticker:v9];

    [v14 showCellBorder:v12];
  }

  if ([(MSStickerBrowserView *)self isAnimating])
  {
    v13 = [v14 stickerView];
    [v13 setAnimating:1];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5 = [a4 stickerView];
  [v5 setAnimating:0];
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MSStickerBrowserView *)self stickerCacheQueue];
  [v6 setSuspended:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
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
        v16 = [(MSStickerBrowserView *)self stickerCache];
        [v16 setObject:v14 forKey:v10];

        v17 = [(MSStickerBrowserView *)self stickerCacheQueue];
        [v17 addOperationWithBlock:v13];

        v18 = [(MSStickerBrowserView *)self stickerCacheQueue];
        [v18 addOperationWithBlock:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)_updateCollectionViewSpecIfNeeded
{
  v3 = [(MSStickerBrowserView *)self window];
  v4 = [v3 windowScene];
  v5 = [v4 interfaceOrientation];

  v6 = [(MSStickerBrowserView *)self layoutSpec];
  if (!v6 || (v7 = v6, -[MSStickerBrowserView layoutSpec](self, "layoutSpec"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 interfaceOrientation], v8, v7, v9 != v5))
  {
    [(MSStickerBrowserView *)self setLayoutSpec:0];
    v10 = [MSStickerBrowserViewLayoutSpec specWithSizeClass:[(MSStickerBrowserView *)self stickerSize] interfaceOrientation:v5];
    [(MSStickerBrowserView *)self setLayoutSpec:v10];

    v11 = [(MSStickerBrowserView *)self flowLayout];
    v12 = [(MSStickerBrowserView *)self layoutSpec];
    [v12 minimumInteritemSpacing];
    [v11 setMinimumInteritemSpacing:?];
    [v12 itemSize];
    [v11 setItemSize:?];
    [v12 minimumLineSpacing];
    [v11 setMinimumLineSpacing:?];
    [v12 sectionInset];
    [v11 setSectionInset:?];
  }

  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (void)prepareForSnapshotting
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(MSStickerBrowserView *)self collectionView];
  [v3 setShowsVerticalScrollIndicator:0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MSStickerBrowserView *)self collectionView];
  v5 = [v4 visibleCells];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) stickerView];
        [v10 prepareForSnapshotting];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MSStickerBrowserView;
  [(MSStickerBrowserView *)&v6 setUserInteractionEnabled:?];
  v5 = [(MSStickerBrowserView *)self collectionView];
  [v5 setUserInteractionEnabled:v3];
  [v5 setScrollEnabled:v3];
  if (!v3)
  {
    [v5 contentOffset];
    [v5 setContentOffset:0 animated:?];
  }
}

- (NSDictionary)stateRestorationInfo
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = [(MSStickerBrowserView *)self collectionView];
  [v3 contentOffset];
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

- (void)restoreFromState:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"x-offset"];
  [v5 floatValue];
  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:@"y-offset"];
  [v8 floatValue];
  [(MSStickerBrowserView *)self setRestoredContentOffset:v7, v9];

  v10 = [v4 objectForKeyedSubscript:@"x-size"];
  [v10 floatValue];
  v12 = v11;
  v13 = [v4 objectForKeyedSubscript:@"y-size"];

  [v13 floatValue];
  [(MSStickerBrowserView *)self setBrowserSizeToRestoreFrom:v12, v14];

  [(MSStickerBrowserView *)self setIsRestoringContentOffset:1];
}

- (void)invalidateFlowLayout
{
  v2 = [(MSStickerBrowserView *)self flowLayout];
  [v2 invalidateLayout];
}

- (void)_startAnimating
{
  v14 = *MEMORY[0x1E69E9840];
  [(MSStickerBrowserView *)self setAnimating:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(MSStickerBrowserView *)self collectionView];
  v4 = [v3 visibleCells];

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

        [*(*(&v9 + 1) + 8 * v8++) setAnimating:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(MSStickerBrowserView *)self collectionView];
  v4 = [v3 visibleCells];

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

        [*(*(&v9 + 1) + 8 * v8++) setAnimating:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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