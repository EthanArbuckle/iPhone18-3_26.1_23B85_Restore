@interface AVTGroupDial
+ (double)estimatedContentWidthForTitleSizes:(id)a3;
- (AVTGroupDial)initWithGroupItems:(id)a3 environment:(id)a4;
- (AVTGroupPickerDelegate)delegate;
- (CGSize)cellSizeForItemAtIndex:(int64_t)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)cacheTitleSizes;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)layoutSubviews;
- (void)reloadData;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)selectItemAtIndex:(int64_t)a3 updateScrollPosition:(BOOL)a4 animated:(BOOL)a5;
- (void)setBounds:(CGRect)a3;
- (void)setContentPadding:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSelectedGroupIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setupDial;
- (void)setupMasking;
- (void)startDiscoverability;
- (void)stopDiscoverability;
- (void)updateForEndingScroll;
- (void)updateSelectedState:(BOOL)a3 forItemAtIndexPath:(id)a4 animated:(BOOL)a5;
@end

@implementation AVTGroupDial

+ (double)estimatedContentWidthForTitleSizes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3 || (v11 = 0.0, ![0 count]))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v13 + 1) + 8 * i) CGSizeValue];
          v8 = v8 + v10 + 20.0;
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = v8 + ([v4 count] - 1) * 30.0;
  }

  return v11;
}

- (AVTGroupDial)initWithGroupItems:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AVTGroupDial;
  v9 = [(AVTGroupDial *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, a4);
    objc_storeStrong(&v10->_groupItems, a3);
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [(AVTGroupDial *)v10 setBackgroundColor:v11];

    [(AVTGroupDial *)v10 cacheTitleSizes];
    [(AVTGroupDial *)v10 setupDial];
    if (AVTUIGroupDialUsesMasking_once())
    {
      [(AVTGroupDial *)v10 setupMasking];
    }
  }

  return v10;
}

- (void)setupMasking
{
  v3 = [AVTGroupDialMaskingView alloc];
  [(AVTGroupDial *)self bounds];
  v4 = [(AVTGroupDialMaskingView *)v3 initWithFrame:?];
  maskingView = self->_maskingView;
  self->_maskingView = v4;

  v6 = self->_maskingView;

  [(AVTGroupDial *)self setMaskView:v6];
}

- (void)cacheTitleSizes
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(AVTGroupDial *)self groupItems];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(AVTGroupDial *)self groupItems];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v9 = *MEMORY[0x1E69DB648];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v22 + 1) + 8 * i) localizedName];
        v26 = v9;
        v12 = [objc_opt_class() labelFont];
        v27 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [v11 sizeWithAttributes:v13];
        v15 = v14;
        v17 = v16;

        v18 = [MEMORY[0x1E696B098] valueWithCGSize:{v15, v17}];
        [v5 addObject:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v19 = [v5 copy];
  cachedGroupTitleSizes = self->_cachedGroupTitleSizes;
  self->_cachedGroupTitleSizes = v19;
}

- (void)setupDial
{
  v19 = objc_alloc_init(AVTFlippingCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v19 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v19 setSectionInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(UICollectionViewFlowLayout *)v19 setMinimumInteritemSpacing:30.0];
  [(AVTGroupDial *)self setCollectionViewLayout:v19];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  [(AVTGroupDial *)self bounds];
  v4 = [v3 initWithFrame:v19 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v4;

  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v6];

  [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:2];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  v7 = self->_collectionView;
  v8 = objc_opt_class();
  v9 = +[AVTGroupDialCell cellIdentifier];
  [(UICollectionView *)v7 registerClass:v8 forCellWithReuseIdentifier:v9];

  [(AVTGroupDial *)self addSubview:self->_collectionView];
  [(UICollectionView *)self->_collectionView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  v10 = [AVTCenteringCollectionViewDelegate alloc];
  v11 = self->_collectionView;
  v12 = [(AVTGroupDial *)self environment];
  v13 = [(AVTCenteringCollectionViewDelegate *)v10 initWithCollectionView:v11 delegate:self environment:v12];
  centeringCollectionViewDelegate = self->_centeringCollectionViewDelegate;
  self->_centeringCollectionViewDelegate = v13;

  v15 = objc_opt_class();
  cachedGroupTitleSizes = self->_cachedGroupTitleSizes;
  [(AVTGroupDial *)self bounds];
  v17 = [v15 shouldScrollGivenTitleSizes:cachedGroupTitleSizes fittingWidth:CGRectGetWidth(v21)];
  v18 = self;
  if (v17)
  {
    v18 = self->_centeringCollectionViewDelegate;
  }

  [(UICollectionView *)self->_collectionView setDelegate:v18];
  [(UICollectionView *)self->_collectionView setScrollEnabled:v17];
}

- (void)setContentPadding:(double)a3
{
  v5 = [(AVTGroupDial *)self collectionViewLayout];
  [v5 setSectionInset:{a3, 0.0, a3, 0.0}];

  v6 = [(AVTGroupDial *)self collectionViewLayout];
  [v6 invalidateLayout];
}

- (void)layoutSubviews
{
  [(AVTGroupDial *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AVTGroupDial *)self collectionView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(AVTGroupDial *)self cellSizeForItemAtIndex:0];
  v12 = [(AVTGroupDial *)self groupItems];
  -[AVTGroupDial cellSizeForItemAtIndex:](self, "cellSizeForItemAtIndex:", [v12 count] - 1);

  v13 = objc_opt_class();
  v14 = [(AVTGroupDial *)self cachedGroupTitleSizes];
  [(AVTGroupDial *)self bounds];
  v15 = [v13 shouldScrollGivenTitleSizes:v14 fittingWidth:CGRectGetWidth(v52)];

  if (v15)
  {
    v16 = [(AVTGroupDial *)self collectionView];
    [v16 bounds];
    [AVTCenteringCollectionViewHelper insetsForBounds:"insetsForBounds:withFirstCellSize:lastCellSize:" withFirstCellSize:? lastCellSize:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [(AVTGroupDial *)self bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(AVTGroupDial *)self maskingView];
    [v33 setFrame:{v26, v28, v30, v32}];

    v34 = [(AVTGroupDial *)self centeringCollectionViewDelegate];
    v35 = [(AVTGroupDial *)self collectionView];
    [v35 setDelegate:v34];
  }

  else
  {
    [(AVTGroupDial *)self bounds];
    v37 = v36;
    v38 = objc_opt_class();
    v39 = [(AVTGroupDial *)self cachedGroupTitleSizes];
    [v38 estimatedContentWidthForTitleSizes:v39];
    v20 = (v37 - v40) * 0.5;

    v18 = 0.0;
    [(AVTGroupDial *)self setMaskView:0];
    v34 = [(AVTGroupDial *)self collectionView];
    [v34 setDelegate:self];
    v22 = 0.0;
    v24 = v20;
  }

  v41 = [(AVTGroupDial *)self collectionView];
  [v41 contentInset];
  if (v45 == v20 && v42 == v18 && v44 == v24)
  {
    v48 = v43;

    if (v48 == v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v49 = [(AVTGroupDial *)self collectionView];
  [v49 setContentInset:{v18, v20, v22, v24}];

LABEL_14:
  v50 = [(AVTGroupDial *)self currentSelectedItemIndex];

  [(AVTGroupDial *)self selectItemAtIndex:v50 updateScrollPosition:v15 animated:0];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AVTGroupDial *)self frame];
  v22.origin.x = v8;
  v22.origin.y = v9;
  v22.size.width = v10;
  v22.size.height = v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectEqualToRect(v20, v22))
  {
    v18.receiver = self;
    v18.super_class = AVTGroupDial;
    [(AVTGroupDial *)&v18 setFrame:x, y, width, height];
    v12 = objc_opt_class();
    v13 = [(AVTGroupDial *)self cachedGroupTitleSizes];
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = [v12 shouldScrollGivenTitleSizes:v13 fittingWidth:CGRectGetWidth(v21)];

    v15 = self;
    if (v14)
    {
      v15 = [(AVTGroupDial *)self centeringCollectionViewDelegate];
    }

    v16 = [(AVTGroupDial *)self collectionView];
    [v16 setDelegate:v15];

    if (v14)
    {
    }

    v17 = [(AVTGroupDial *)self collectionView];
    [v17 setScrollEnabled:v14];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = AVTGroupDial;
    [(AVTGroupDial *)&v19 setFrame:x, y, width, height];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AVTGroupDial *)self bounds];
  v22.origin.x = v8;
  v22.origin.y = v9;
  v22.size.width = v10;
  v22.size.height = v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectEqualToRect(v20, v22))
  {
    v18.receiver = self;
    v18.super_class = AVTGroupDial;
    [(AVTGroupDial *)&v18 setBounds:x, y, width, height];
    v12 = objc_opt_class();
    v13 = [(AVTGroupDial *)self cachedGroupTitleSizes];
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = [v12 shouldScrollGivenTitleSizes:v13 fittingWidth:CGRectGetWidth(v21)];

    v15 = self;
    if (v14)
    {
      v15 = [(AVTGroupDial *)self centeringCollectionViewDelegate];
    }

    v16 = [(AVTGroupDial *)self collectionView];
    [v16 setDelegate:v15];

    if (v14)
    {
    }

    v17 = [(AVTGroupDial *)self collectionView];
    [v17 setScrollEnabled:v14];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = AVTGroupDial;
    [(AVTGroupDial *)&v19 setBounds:x, y, width, height];
  }
}

- (void)setSelectedGroupIndex:(int64_t)a3 animated:(BOOL)a4
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = a4;
    v7 = [(AVTGroupDial *)self groupItems];
    v8 = [v7 count];

    if (v8 > a3)
    {
      v9 = [(AVTGroupDial *)self window];

      if (v9)
      {
        v10 = objc_opt_class();
        v11 = [(AVTGroupDial *)self cachedGroupTitleSizes];
        [(AVTGroupDial *)self bounds];
        -[AVTGroupDial selectItemAtIndex:updateScrollPosition:animated:](self, "selectItemAtIndex:updateScrollPosition:animated:", a3, [v10 shouldScrollGivenTitleSizes:v11 fittingWidth:CGRectGetWidth(v13)], v4);
      }

      else
      {

        [(AVTGroupDial *)self setCurrentSelectedItemIndex:a3];
      }
    }
  }
}

- (void)startDiscoverability
{
  v3 = [(AVTGroupDial *)self groupItems];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = [(AVTGroupDial *)self selectedGroupIndex]+ 1;
    v6 = [(AVTGroupDial *)self groupItems];
    v7 = [v6 count];

    if (v5 >= v7)
    {
      v5 = [(AVTGroupDial *)self selectedGroupIndex]- 1;
    }

    v8 = [(AVTGroupDial *)self shimmeringItemIndexPath];
    v9 = [v8 item];

    if (v9 != v5)
    {
      [(AVTGroupDial *)self stopDiscoverability];
      v10 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0];
      [(AVTGroupDial *)self setShimmeringItemIndexPath:v10];

      v11 = [(AVTGroupDial *)self collectionView];
      v12 = [(AVTGroupDial *)self shimmeringItemIndexPath];
      v13 = [v11 cellForItemAtIndexPath:v12];

      [v13 startShimmering];
    }
  }
}

- (void)stopDiscoverability
{
  v3 = [(AVTGroupDial *)self shimmeringItemIndexPath];

  if (v3)
  {
    v4 = [(AVTGroupDial *)self collectionView];
    v5 = [(AVTGroupDial *)self shimmeringItemIndexPath];
    v6 = [v4 cellForItemAtIndexPath:v5];

    [v6 stopShimmeringAnimated:1];
    [(AVTGroupDial *)self setShimmeringItemIndexPath:0];
  }
}

- (void)reloadData
{
  [(AVTGroupDial *)self cacheTitleSizes];
  v3 = [(AVTGroupDial *)self collectionView];
  [v3 reloadData];
}

- (CGSize)cellSizeForItemAtIndex:(int64_t)a3
{
  v5 = [(AVTGroupDial *)self cachedGroupTitleSizes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(AVTGroupDial *)self cachedGroupTitleSizes];
    v8 = [v7 objectAtIndexedSubscript:a3];

    [v8 CGSizeValue];
    v10 = v9;
    v12 = v11 + 20.0;
  }

  else
  {
    v12 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v13 = v12;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)selectItemAtIndex:(int64_t)a3 updateScrollPosition:(BOOL)a4 animated:(BOOL)a5
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = a5;
    v6 = a4;
    v9 = [(AVTGroupDial *)self groupItems];
    v10 = [v9 count];

    if (v10 > a3)
    {
      v11 = [(AVTGroupDial *)self currentSelectedItemIndex];
      [(AVTGroupDial *)self setCurrentSelectedItemIndex:a3];
      v26 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
      v12 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
      [(AVTGroupDial *)self updateSelectedState:0 forItemAtIndexPath:v12 animated:v5];
      v13 = [(AVTGroupDial *)self collectionView];
      [v13 selectItemAtIndexPath:v26 animated:v5 scrollPosition:0];

      if (v6)
      {
        [(AVTGroupDial *)self layoutIfNeeded];
        v14 = [(AVTGroupDial *)self collectionView];
        v15 = [v14 layoutAttributesForItemAtIndexPath:v26];

        [v15 frame];
        UIRectGetCenter();
        v17 = v16;
        v19 = v18;
        v20 = [(AVTGroupDial *)self collectionView];
        [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v20 collectionView:v17, v19];
        v22 = v21;
        v24 = v23;

        v25 = [(AVTGroupDial *)self collectionView];
        [v25 setContentOffset:v5 animated:{v22, v24}];
      }

      if (!v5 || v11 == [(AVTGroupDial *)self currentSelectedItemIndex])
      {
        [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:v26 animated:v5];
      }
    }
  }
}

- (void)updateSelectedState:(BOOL)a3 forItemAtIndexPath:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = [(AVTGroupDial *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v8];

  [v10 setActiveItem:v6 animated:v5];
}

- (void)updateForEndingScroll
{
  [(AVTGroupDial *)self setIsMoving:0];
  if ([(AVTGroupDial *)self hasFinalizedSelection])
  {
    v3 = [(AVTGroupDial *)self collectionView];
    [v3 contentOffset];
    v5 = v4;
    v7 = v6;
    v8 = [(AVTGroupDial *)self collectionView];
    v10 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:v8 collectionView:v5, v7];

    -[AVTGroupDial setCurrentSelectedItemIndex:](self, "setCurrentSelectedItemIndex:", [v10 row]);
    [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:v10 animated:1];
    v9 = [(AVTGroupDial *)self delegate];
    [v9 groupPicker:self didSelectGroupAtIndex:-[AVTGroupDial currentSelectedItemIndex](self tapped:{"currentSelectedItemIndex"), 0}];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTGroupDial *)self groupItems:a3];
  v5 = [v4 count];

  return v5;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [a5 row];

  [(AVTGroupDial *)self cellSizeForItemAtIndex:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AVTGroupDialCell cellIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [(AVTGroupDial *)self groupItems];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];
  v13 = [v12 localizedName];
  [v9 setString:v13];

  return v9;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13 = v7;
  v9 = [v8 row];
  v10 = [(AVTGroupDial *)self currentSelectedItemIndex];
  [v13 setActiveItem:v9 == v10 animated:1];
  if (v9 != v10)
  {
    v11 = [(AVTGroupDial *)self shimmeringItemIndexPath];
    v12 = [v8 isEqual:v11];

    if (v12)
    {
      [v13 startShimmering];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(AVTGroupDial *)self setIsMoving:1];
  [(AVTGroupDial *)self setHasFinalizedSelection:0];

  [(AVTGroupDial *)self stopDiscoverability];
}

- (void)scrollViewDidScroll:(id)a3
{
  v16 = a3;
  v4 = objc_opt_class();
  v5 = [(AVTGroupDial *)self cachedGroupTitleSizes];
  [(AVTGroupDial *)self bounds];
  LODWORD(v4) = [v4 shouldScrollGivenTitleSizes:v5 fittingWidth:CGRectGetWidth(v18)];

  if (v4)
  {
    if ([v16 avtui_isMoving])
    {
      if (![(AVTGroupDial *)self hasFinalizedSelection])
      {
        v6 = [(AVTGroupDial *)self currentSelectedItemIndex];
        v7 = [(AVTGroupDial *)self centeringCollectionViewDelegate];
        v8 = [v7 centerItemAttributes];
        v9 = [v8 indexPath];
        v10 = [v9 item];

        if (v6 != v10)
        {
          v11 = [MEMORY[0x1E696AC88] indexPathForItem:-[AVTGroupDial currentSelectedItemIndex](self inSection:{"currentSelectedItemIndex"), 0}];
          v12 = [(AVTGroupDial *)self centeringCollectionViewDelegate];
          v13 = [v12 centerItemAttributes];
          v14 = [v13 indexPath];

          [(AVTGroupDial *)self updateSelectedState:0 forItemAtIndexPath:v11 animated:1];
          v15 = [(AVTGroupDial *)self delegate];
          [v15 groupPicker:self didDeselectGroupAtIndex:{-[AVTGroupDial currentSelectedItemIndex](self, "currentSelectedItemIndex")}];

          if (([v16 isDecelerating] & 1) == 0)
          {
            -[AVTGroupDial setCurrentSelectedItemIndex:](self, "setCurrentSelectedItemIndex:", [v14 item]);
            [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:v14 animated:1];
          }
        }
      }
    }
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v12 = a4;
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:-[AVTGroupDial currentSelectedItemIndex](self inSection:{"currentSelectedItemIndex"), 0}];
  -[AVTGroupDial setCurrentSelectedItemIndex:](self, "setCurrentSelectedItemIndex:", [v12 item]);
  v6 = [v5 isEqual:v12];
  [(AVTGroupDial *)self stopDiscoverability];
  if (v6)
  {
    v7 = [(AVTGroupDial *)self delegate];
    v8 = [v12 item];
  }

  else
  {
    [(AVTGroupDial *)self updateSelectedState:0 forItemAtIndexPath:v5 animated:1];
    v9 = [(AVTGroupDial *)self delegate];
    [v9 groupPicker:self didDeselectGroupAtIndex:{objc_msgSend(v5, "item")}];

    [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:v12 animated:1];
    [(AVTGroupDial *)self setHasFinalizedSelection:1];
    v10 = objc_opt_class();
    v11 = [(AVTGroupDial *)self cachedGroupTitleSizes];
    [(AVTGroupDial *)self bounds];
    LOBYTE(v10) = [v10 shouldScrollGivenTitleSizes:v11 fittingWidth:CGRectGetWidth(v14)];

    if (v10)
    {
      [(AVTGroupDial *)self setIsMoving:1];
      goto LABEL_7;
    }

    v7 = [(AVTGroupDial *)self delegate];
    v8 = [(AVTGroupDial *)self currentSelectedItemIndex];
  }

  [v7 groupPicker:self didSelectGroupAtIndex:v8 tapped:1];

LABEL_7:
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v10 = [MEMORY[0x1E696AC88] indexPathForItem:-[AVTGroupDial currentSelectedItemIndex](self inSection:{"currentSelectedItemIndex", a3, a4.x, a4.y), 0}];
  [(AVTGroupDial *)self updateSelectedState:0 forItemAtIndexPath:v10 animated:1];
  v7 = [(AVTGroupDial *)self delegate];
  [v7 groupPicker:self didDeselectGroupAtIndex:{-[AVTGroupDial currentSelectedItemIndex](self, "currentSelectedItemIndex")}];

  v8 = [(AVTGroupDial *)self collectionView];
  v9 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:v8 collectionView:a5->x, a5->y];

  -[AVTGroupDial setCurrentSelectedItemIndex:](self, "setCurrentSelectedItemIndex:", [v9 item]);
  [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:v9 animated:1];
  [(AVTGroupDial *)self setHasFinalizedSelection:1];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(AVTGroupDial *)self updateForEndingScroll];
  }
}

- (AVTGroupPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end