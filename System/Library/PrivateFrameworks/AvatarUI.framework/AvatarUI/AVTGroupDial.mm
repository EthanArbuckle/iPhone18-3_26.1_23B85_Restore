@interface AVTGroupDial
+ (double)estimatedContentWidthForTitleSizes:(id)sizes;
- (AVTGroupDial)initWithGroupItems:(id)items environment:(id)environment;
- (AVTGroupPickerDelegate)delegate;
- (CGSize)cellSizeForItemAtIndex:(int64_t)index;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)cacheTitleSizes;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)reloadData;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)selectItemAtIndex:(int64_t)index updateScrollPosition:(BOOL)position animated:(BOOL)animated;
- (void)setBounds:(CGRect)bounds;
- (void)setContentPadding:(double)padding;
- (void)setFrame:(CGRect)frame;
- (void)setSelectedGroupIndex:(int64_t)index animated:(BOOL)animated;
- (void)setupDial;
- (void)setupMasking;
- (void)startDiscoverability;
- (void)stopDiscoverability;
- (void)updateForEndingScroll;
- (void)updateSelectedState:(BOOL)state forItemAtIndexPath:(id)path animated:(BOOL)animated;
@end

@implementation AVTGroupDial

+ (double)estimatedContentWidthForTitleSizes:(id)sizes
{
  v18 = *MEMORY[0x1E69E9840];
  sizesCopy = sizes;
  if (sizesCopy || (v11 = 0.0, ![0 count]))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = sizesCopy;
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

- (AVTGroupDial)initWithGroupItems:(id)items environment:(id)environment
{
  itemsCopy = items;
  environmentCopy = environment;
  v13.receiver = self;
  v13.super_class = AVTGroupDial;
  v9 = [(AVTGroupDial *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, environment);
    objc_storeStrong(&v10->_groupItems, items);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AVTGroupDial *)v10 setBackgroundColor:clearColor];

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
  groupItems = [(AVTGroupDial *)self groupItems];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(groupItems, "count")}];

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

        localizedName = [*(*(&v22 + 1) + 8 * i) localizedName];
        v26 = v9;
        labelFont = [objc_opt_class() labelFont];
        v27 = labelFont;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [localizedName sizeWithAttributes:v13];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

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
  environment = [(AVTGroupDial *)self environment];
  v13 = [(AVTCenteringCollectionViewDelegate *)v10 initWithCollectionView:v11 delegate:self environment:environment];
  centeringCollectionViewDelegate = self->_centeringCollectionViewDelegate;
  self->_centeringCollectionViewDelegate = v13;

  v15 = objc_opt_class();
  cachedGroupTitleSizes = self->_cachedGroupTitleSizes;
  [(AVTGroupDial *)self bounds];
  v17 = [v15 shouldScrollGivenTitleSizes:cachedGroupTitleSizes fittingWidth:CGRectGetWidth(v21)];
  selfCopy = self;
  if (v17)
  {
    selfCopy = self->_centeringCollectionViewDelegate;
  }

  [(UICollectionView *)self->_collectionView setDelegate:selfCopy];
  [(UICollectionView *)self->_collectionView setScrollEnabled:v17];
}

- (void)setContentPadding:(double)padding
{
  collectionViewLayout = [(AVTGroupDial *)self collectionViewLayout];
  [collectionViewLayout setSectionInset:{padding, 0.0, padding, 0.0}];

  collectionViewLayout2 = [(AVTGroupDial *)self collectionViewLayout];
  [collectionViewLayout2 invalidateLayout];
}

- (void)layoutSubviews
{
  [(AVTGroupDial *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  collectionView = [(AVTGroupDial *)self collectionView];
  [collectionView setFrame:{v4, v6, v8, v10}];

  [(AVTGroupDial *)self cellSizeForItemAtIndex:0];
  groupItems = [(AVTGroupDial *)self groupItems];
  -[AVTGroupDial cellSizeForItemAtIndex:](self, "cellSizeForItemAtIndex:", [groupItems count] - 1);

  v13 = objc_opt_class();
  cachedGroupTitleSizes = [(AVTGroupDial *)self cachedGroupTitleSizes];
  [(AVTGroupDial *)self bounds];
  v15 = [v13 shouldScrollGivenTitleSizes:cachedGroupTitleSizes fittingWidth:CGRectGetWidth(v52)];

  if (v15)
  {
    collectionView2 = [(AVTGroupDial *)self collectionView];
    [collectionView2 bounds];
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
    maskingView = [(AVTGroupDial *)self maskingView];
    [maskingView setFrame:{v26, v28, v30, v32}];

    centeringCollectionViewDelegate = [(AVTGroupDial *)self centeringCollectionViewDelegate];
    collectionView3 = [(AVTGroupDial *)self collectionView];
    [collectionView3 setDelegate:centeringCollectionViewDelegate];
  }

  else
  {
    [(AVTGroupDial *)self bounds];
    v37 = v36;
    v38 = objc_opt_class();
    cachedGroupTitleSizes2 = [(AVTGroupDial *)self cachedGroupTitleSizes];
    [v38 estimatedContentWidthForTitleSizes:cachedGroupTitleSizes2];
    v20 = (v37 - v40) * 0.5;

    v18 = 0.0;
    [(AVTGroupDial *)self setMaskView:0];
    centeringCollectionViewDelegate = [(AVTGroupDial *)self collectionView];
    [centeringCollectionViewDelegate setDelegate:self];
    v22 = 0.0;
    v24 = v20;
  }

  collectionView4 = [(AVTGroupDial *)self collectionView];
  [collectionView4 contentInset];
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

  collectionView5 = [(AVTGroupDial *)self collectionView];
  [collectionView5 setContentInset:{v18, v20, v22, v24}];

LABEL_14:
  currentSelectedItemIndex = [(AVTGroupDial *)self currentSelectedItemIndex];

  [(AVTGroupDial *)self selectItemAtIndex:currentSelectedItemIndex updateScrollPosition:v15 animated:0];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    cachedGroupTitleSizes = [(AVTGroupDial *)self cachedGroupTitleSizes];
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = [v12 shouldScrollGivenTitleSizes:cachedGroupTitleSizes fittingWidth:CGRectGetWidth(v21)];

    selfCopy = self;
    if (v14)
    {
      selfCopy = [(AVTGroupDial *)self centeringCollectionViewDelegate];
    }

    collectionView = [(AVTGroupDial *)self collectionView];
    [collectionView setDelegate:selfCopy];

    if (v14)
    {
    }

    collectionView2 = [(AVTGroupDial *)self collectionView];
    [collectionView2 setScrollEnabled:v14];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = AVTGroupDial;
    [(AVTGroupDial *)&v19 setFrame:x, y, width, height];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
    cachedGroupTitleSizes = [(AVTGroupDial *)self cachedGroupTitleSizes];
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = [v12 shouldScrollGivenTitleSizes:cachedGroupTitleSizes fittingWidth:CGRectGetWidth(v21)];

    selfCopy = self;
    if (v14)
    {
      selfCopy = [(AVTGroupDial *)self centeringCollectionViewDelegate];
    }

    collectionView = [(AVTGroupDial *)self collectionView];
    [collectionView setDelegate:selfCopy];

    if (v14)
    {
    }

    collectionView2 = [(AVTGroupDial *)self collectionView];
    [collectionView2 setScrollEnabled:v14];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = AVTGroupDial;
    [(AVTGroupDial *)&v19 setBounds:x, y, width, height];
  }
}

- (void)setSelectedGroupIndex:(int64_t)index animated:(BOOL)animated
{
  if ((index & 0x8000000000000000) == 0)
  {
    animatedCopy = animated;
    groupItems = [(AVTGroupDial *)self groupItems];
    v8 = [groupItems count];

    if (v8 > index)
    {
      window = [(AVTGroupDial *)self window];

      if (window)
      {
        v10 = objc_opt_class();
        cachedGroupTitleSizes = [(AVTGroupDial *)self cachedGroupTitleSizes];
        [(AVTGroupDial *)self bounds];
        -[AVTGroupDial selectItemAtIndex:updateScrollPosition:animated:](self, "selectItemAtIndex:updateScrollPosition:animated:", index, [v10 shouldScrollGivenTitleSizes:cachedGroupTitleSizes fittingWidth:CGRectGetWidth(v13)], animatedCopy);
      }

      else
      {

        [(AVTGroupDial *)self setCurrentSelectedItemIndex:index];
      }
    }
  }
}

- (void)startDiscoverability
{
  groupItems = [(AVTGroupDial *)self groupItems];
  v4 = [groupItems count];

  if (v4 >= 2)
  {
    v5 = [(AVTGroupDial *)self selectedGroupIndex]+ 1;
    groupItems2 = [(AVTGroupDial *)self groupItems];
    v7 = [groupItems2 count];

    if (v5 >= v7)
    {
      v5 = [(AVTGroupDial *)self selectedGroupIndex]- 1;
    }

    shimmeringItemIndexPath = [(AVTGroupDial *)self shimmeringItemIndexPath];
    item = [shimmeringItemIndexPath item];

    if (item != v5)
    {
      [(AVTGroupDial *)self stopDiscoverability];
      v10 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0];
      [(AVTGroupDial *)self setShimmeringItemIndexPath:v10];

      collectionView = [(AVTGroupDial *)self collectionView];
      shimmeringItemIndexPath2 = [(AVTGroupDial *)self shimmeringItemIndexPath];
      v13 = [collectionView cellForItemAtIndexPath:shimmeringItemIndexPath2];

      [v13 startShimmering];
    }
  }
}

- (void)stopDiscoverability
{
  shimmeringItemIndexPath = [(AVTGroupDial *)self shimmeringItemIndexPath];

  if (shimmeringItemIndexPath)
  {
    collectionView = [(AVTGroupDial *)self collectionView];
    shimmeringItemIndexPath2 = [(AVTGroupDial *)self shimmeringItemIndexPath];
    v6 = [collectionView cellForItemAtIndexPath:shimmeringItemIndexPath2];

    [v6 stopShimmeringAnimated:1];
    [(AVTGroupDial *)self setShimmeringItemIndexPath:0];
  }
}

- (void)reloadData
{
  [(AVTGroupDial *)self cacheTitleSizes];
  collectionView = [(AVTGroupDial *)self collectionView];
  [collectionView reloadData];
}

- (CGSize)cellSizeForItemAtIndex:(int64_t)index
{
  cachedGroupTitleSizes = [(AVTGroupDial *)self cachedGroupTitleSizes];
  v6 = [cachedGroupTitleSizes count];

  if (v6)
  {
    cachedGroupTitleSizes2 = [(AVTGroupDial *)self cachedGroupTitleSizes];
    v8 = [cachedGroupTitleSizes2 objectAtIndexedSubscript:index];

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

- (void)selectItemAtIndex:(int64_t)index updateScrollPosition:(BOOL)position animated:(BOOL)animated
{
  if ((index & 0x8000000000000000) == 0)
  {
    animatedCopy = animated;
    positionCopy = position;
    groupItems = [(AVTGroupDial *)self groupItems];
    v10 = [groupItems count];

    if (v10 > index)
    {
      currentSelectedItemIndex = [(AVTGroupDial *)self currentSelectedItemIndex];
      [(AVTGroupDial *)self setCurrentSelectedItemIndex:index];
      v26 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
      v12 = [MEMORY[0x1E696AC88] indexPathForItem:currentSelectedItemIndex inSection:0];
      [(AVTGroupDial *)self updateSelectedState:0 forItemAtIndexPath:v12 animated:animatedCopy];
      collectionView = [(AVTGroupDial *)self collectionView];
      [collectionView selectItemAtIndexPath:v26 animated:animatedCopy scrollPosition:0];

      if (positionCopy)
      {
        [(AVTGroupDial *)self layoutIfNeeded];
        collectionView2 = [(AVTGroupDial *)self collectionView];
        v15 = [collectionView2 layoutAttributesForItemAtIndexPath:v26];

        [v15 frame];
        UIRectGetCenter();
        v17 = v16;
        v19 = v18;
        collectionView3 = [(AVTGroupDial *)self collectionView];
        [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView3 collectionView:v17, v19];
        v22 = v21;
        v24 = v23;

        collectionView4 = [(AVTGroupDial *)self collectionView];
        [collectionView4 setContentOffset:animatedCopy animated:{v22, v24}];
      }

      if (!animatedCopy || currentSelectedItemIndex == [(AVTGroupDial *)self currentSelectedItemIndex])
      {
        [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:v26 animated:animatedCopy];
      }
    }
  }
}

- (void)updateSelectedState:(BOOL)state forItemAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  pathCopy = path;
  collectionView = [(AVTGroupDial *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:pathCopy];

  [v10 setActiveItem:stateCopy animated:animatedCopy];
}

- (void)updateForEndingScroll
{
  [(AVTGroupDial *)self setIsMoving:0];
  if ([(AVTGroupDial *)self hasFinalizedSelection])
  {
    collectionView = [(AVTGroupDial *)self collectionView];
    [collectionView contentOffset];
    v5 = v4;
    v7 = v6;
    collectionView2 = [(AVTGroupDial *)self collectionView];
    v10 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:collectionView2 collectionView:v5, v7];

    -[AVTGroupDial setCurrentSelectedItemIndex:](self, "setCurrentSelectedItemIndex:", [v10 row]);
    [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:v10 animated:1];
    delegate = [(AVTGroupDial *)self delegate];
    [delegate groupPicker:self didSelectGroupAtIndex:-[AVTGroupDial currentSelectedItemIndex](self tapped:{"currentSelectedItemIndex"), 0}];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTGroupDial *)self groupItems:view];
  v5 = [v4 count];

  return v5;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = [path row];

  [(AVTGroupDial *)self cellSizeForItemAtIndex:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[AVTGroupDialCell cellIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  groupItems = [(AVTGroupDial *)self groupItems];
  v11 = [pathCopy row];

  v12 = [groupItems objectAtIndexedSubscript:v11];
  localizedName = [v12 localizedName];
  [v9 setString:localizedName];

  return v9;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v13 = cellCopy;
  v9 = [pathCopy row];
  currentSelectedItemIndex = [(AVTGroupDial *)self currentSelectedItemIndex];
  [v13 setActiveItem:v9 == currentSelectedItemIndex animated:1];
  if (v9 != currentSelectedItemIndex)
  {
    shimmeringItemIndexPath = [(AVTGroupDial *)self shimmeringItemIndexPath];
    v12 = [pathCopy isEqual:shimmeringItemIndexPath];

    if (v12)
    {
      [v13 startShimmering];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(AVTGroupDial *)self setIsMoving:1];
  [(AVTGroupDial *)self setHasFinalizedSelection:0];

  [(AVTGroupDial *)self stopDiscoverability];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v4 = objc_opt_class();
  cachedGroupTitleSizes = [(AVTGroupDial *)self cachedGroupTitleSizes];
  [(AVTGroupDial *)self bounds];
  LODWORD(v4) = [v4 shouldScrollGivenTitleSizes:cachedGroupTitleSizes fittingWidth:CGRectGetWidth(v18)];

  if (v4)
  {
    if ([scrollCopy avtui_isMoving])
    {
      if (![(AVTGroupDial *)self hasFinalizedSelection])
      {
        currentSelectedItemIndex = [(AVTGroupDial *)self currentSelectedItemIndex];
        centeringCollectionViewDelegate = [(AVTGroupDial *)self centeringCollectionViewDelegate];
        centerItemAttributes = [centeringCollectionViewDelegate centerItemAttributes];
        indexPath = [centerItemAttributes indexPath];
        item = [indexPath item];

        if (currentSelectedItemIndex != item)
        {
          v11 = [MEMORY[0x1E696AC88] indexPathForItem:-[AVTGroupDial currentSelectedItemIndex](self inSection:{"currentSelectedItemIndex"), 0}];
          centeringCollectionViewDelegate2 = [(AVTGroupDial *)self centeringCollectionViewDelegate];
          centerItemAttributes2 = [centeringCollectionViewDelegate2 centerItemAttributes];
          indexPath2 = [centerItemAttributes2 indexPath];

          [(AVTGroupDial *)self updateSelectedState:0 forItemAtIndexPath:v11 animated:1];
          delegate = [(AVTGroupDial *)self delegate];
          [delegate groupPicker:self didDeselectGroupAtIndex:{-[AVTGroupDial currentSelectedItemIndex](self, "currentSelectedItemIndex")}];

          if (([scrollCopy isDecelerating] & 1) == 0)
          {
            -[AVTGroupDial setCurrentSelectedItemIndex:](self, "setCurrentSelectedItemIndex:", [indexPath2 item]);
            [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:indexPath2 animated:1];
          }
        }
      }
    }
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:-[AVTGroupDial currentSelectedItemIndex](self inSection:{"currentSelectedItemIndex"), 0}];
  -[AVTGroupDial setCurrentSelectedItemIndex:](self, "setCurrentSelectedItemIndex:", [pathCopy item]);
  v6 = [v5 isEqual:pathCopy];
  [(AVTGroupDial *)self stopDiscoverability];
  if (v6)
  {
    delegate = [(AVTGroupDial *)self delegate];
    item = [pathCopy item];
  }

  else
  {
    [(AVTGroupDial *)self updateSelectedState:0 forItemAtIndexPath:v5 animated:1];
    delegate2 = [(AVTGroupDial *)self delegate];
    [delegate2 groupPicker:self didDeselectGroupAtIndex:{objc_msgSend(v5, "item")}];

    [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:pathCopy animated:1];
    [(AVTGroupDial *)self setHasFinalizedSelection:1];
    v10 = objc_opt_class();
    cachedGroupTitleSizes = [(AVTGroupDial *)self cachedGroupTitleSizes];
    [(AVTGroupDial *)self bounds];
    LOBYTE(v10) = [v10 shouldScrollGivenTitleSizes:cachedGroupTitleSizes fittingWidth:CGRectGetWidth(v14)];

    if (v10)
    {
      [(AVTGroupDial *)self setIsMoving:1];
      goto LABEL_7;
    }

    delegate = [(AVTGroupDial *)self delegate];
    item = [(AVTGroupDial *)self currentSelectedItemIndex];
  }

  [delegate groupPicker:self didSelectGroupAtIndex:item tapped:1];

LABEL_7:
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v10 = [MEMORY[0x1E696AC88] indexPathForItem:-[AVTGroupDial currentSelectedItemIndex](self inSection:{"currentSelectedItemIndex", dragging, velocity.x, velocity.y), 0}];
  [(AVTGroupDial *)self updateSelectedState:0 forItemAtIndexPath:v10 animated:1];
  delegate = [(AVTGroupDial *)self delegate];
  [delegate groupPicker:self didDeselectGroupAtIndex:{-[AVTGroupDial currentSelectedItemIndex](self, "currentSelectedItemIndex")}];

  collectionView = [(AVTGroupDial *)self collectionView];
  v9 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:collectionView collectionView:offset->x, offset->y];

  -[AVTGroupDial setCurrentSelectedItemIndex:](self, "setCurrentSelectedItemIndex:", [v9 item]);
  [(AVTGroupDial *)self updateSelectedState:1 forItemAtIndexPath:v9 animated:1];
  [(AVTGroupDial *)self setHasFinalizedSelection:1];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
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