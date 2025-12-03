@interface SCATMenuCollectionViewFlowLayout
- (BOOL)isDockStyle;
- (BOOL)isPopoverStyle;
- (BOOL)willIncludeTitleLabels;
- (CGSize)collectionViewContentSize;
- (CGSize)menuItemSize;
- (CGSize)menuItemSpacing;
- (SCATMenuCollectionViewFlowLayout)init;
- (double)_heightForAllRows:(unint64_t)rows itemsPerRow:(unint64_t)row;
- (double)_maxHeightForRow:(unint64_t)row itemsPerRow:(unint64_t)perRow;
- (double)_xValueForDockItemAtIndex:(unint64_t)index layoutAttributes:(id)attributes;
- (double)menuItemHorizontalSpacingAfterItemAtIndex:(unint64_t)index;
- (id)_rowToFrameDictionaryForAttributes:(id)attributes itemsPerRow:(unint64_t)row;
- (id)effectiveStyleAttributes;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutDelegate;
- (id)menuSheet;
- (unint64_t)maxItemsPerRow;
- (unint64_t)maxRows;
- (unint64_t)numberOfMenuItems;
- (void)_initStyleAttributes;
- (void)column:(unint64_t *)column row:(unint64_t *)row forItemAtIndex:(unint64_t)index;
- (void)optimalNumberOfRows:(unint64_t *)rows itemsPerRow:(unint64_t *)row forTotalNumberOfItems:(unint64_t)items;
@end

@implementation SCATMenuCollectionViewFlowLayout

- (SCATMenuCollectionViewFlowLayout)init
{
  v5.receiver = self;
  v5.super_class = SCATMenuCollectionViewFlowLayout;
  v2 = [(SCATMenuCollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SCATMenuCollectionViewFlowLayout *)v2 _initStyleAttributes];
  }

  return v3;
}

- (void)_initStyleAttributes
{
  v3 = +[SCATMenuStyleAttributes popoverStyleAttributes];
  [(SCATMenuCollectionViewFlowLayout *)self setPopoverStyleAttributes:v3];

  v4 = +[SCATMenuStyleAttributes dockStyleAttributes];
  [(SCATMenuCollectionViewFlowLayout *)self setDockStyleAttributes:v4];
}

- (id)layoutDelegate
{
  collectionView = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
  delegate = [collectionView delegate];

  return delegate;
}

- (id)menuSheet
{
  layoutDelegate = [(SCATMenuCollectionViewFlowLayout *)self layoutDelegate];
  collectionView = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
  v5 = [layoutDelegate menuSheetForCollectionView:collectionView];

  return v5;
}

- (unint64_t)numberOfMenuItems
{
  collectionView = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
  v3 = [collectionView numberOfItemsInSection:0];

  return v3;
}

- (BOOL)willIncludeTitleLabels
{
  menuSheet = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  shouldIncludeTextLabels = [menuSheet shouldIncludeTextLabels];

  return shouldIncludeTextLabels;
}

- (BOOL)isPopoverStyle
{
  menuSheet = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  v3 = [menuSheet presentationMode] == 0;

  return v3;
}

- (BOOL)isDockStyle
{
  menuSheet = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  v3 = [menuSheet presentationMode] == 1;

  return v3;
}

- (id)effectiveStyleAttributes
{
  menuSheet = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  presentationMode = [menuSheet presentationMode];

  if (presentationMode)
  {
    if (presentationMode == 1)
    {
      dockStyleAttributes = [(SCATMenuCollectionViewFlowLayout *)self dockStyleAttributes];
    }
  }

  else
  {
    dockStyleAttributes = [(SCATMenuCollectionViewFlowLayout *)self popoverStyleAttributes];
  }

  return dockStyleAttributes;
}

- (CGSize)menuItemSize
{
  effectiveStyleAttributes = [(SCATMenuCollectionViewFlowLayout *)self effectiveStyleAttributes];
  [objc_opt_class() itemSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)menuItemSpacing
{
  v3 = +[SCATScannerManager sharedManager];
  isLandscape = [v3 isLandscape];
  effectiveStyleAttributes = [(SCATMenuCollectionViewFlowLayout *)self effectiveStyleAttributes];
  v6 = effectiveStyleAttributes;
  if (isLandscape)
  {
    [effectiveStyleAttributes itemSpacingLandscape];
  }

  else
  {
    [effectiveStyleAttributes itemSpacingPortrait];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (unint64_t)maxItemsPerRow
{
  effectiveStyleAttributes = [(SCATMenuCollectionViewFlowLayout *)self effectiveStyleAttributes];
  maxItemsPerRow = [effectiveStyleAttributes maxItemsPerRow];

  return maxItemsPerRow;
}

- (unint64_t)maxRows
{
  effectiveStyleAttributes = [(SCATMenuCollectionViewFlowLayout *)self effectiveStyleAttributes];
  maxRows = [effectiveStyleAttributes maxRows];

  return maxRows;
}

- (double)menuItemHorizontalSpacingAfterItemAtIndex:(unint64_t)index
{
  [(SCATMenuCollectionViewFlowLayout *)self menuItemSpacing];
  v6 = v5;
  if (![(SCATMenuCollectionViewFlowLayout *)self isDockStyle])
  {
    _AXAssert();
  }

  menuSheet = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  menuItemStruts = [menuSheet menuItemStruts];

  if (menuItemStruts)
  {
    v9 = [menuItemStruts objectAtIndex:index];
    [v9 doubleValue];
    v6 = v10;
  }

  return v6;
}

- (void)optimalNumberOfRows:(unint64_t *)rows itemsPerRow:(unint64_t *)row forTotalNumberOfItems:(unint64_t)items
{
  if ([(SCATMenuCollectionViewFlowLayout *)self isPopoverStyle])
  {
    maxVisibleItems = [(SCATMenuCollectionViewFlowLayout *)self maxVisibleItems];
    if (maxVisibleItems >= items)
    {
      itemsCopy = items;
    }

    else
    {
      itemsCopy = maxVisibleItems;
    }

    maxItemsPerRow = [(SCATMenuCollectionViewFlowLayout *)self maxItemsPerRow];
    maxRows = [(SCATMenuCollectionViewFlowLayout *)self maxRows];
    v13 = ceil(itemsCopy / maxItemsPerRow);
    if (v13 > maxRows)
    {
      v13 = maxRows;
    }

    maxRows2 = v13;
    if (itemsCopy >= maxItemsPerRow)
    {
      v15 = maxItemsPerRow;
    }

    else
    {
      v15 = itemsCopy;
    }

    if (maxRows2 == 1)
    {
      numberOfMenuItems = v15;
    }

    else
    {
      numberOfMenuItems = maxItemsPerRow;
    }

    if (itemsCopy > 8)
    {
      if (itemsCopy == 9)
      {
        if (AXDeviceIsPad())
        {
          maxRows2 = 2;
          numberOfMenuItems = 5;
        }

        else if ((AXDeviceIsPhone() & 1) != 0 || AXDeviceIsPod())
        {
          numberOfMenuItems = 3;
          maxRows2 = 3;
        }
      }

      else if (itemsCopy == 10 && AXDeviceIsPad())
      {
        numberOfMenuItems = 5;
        maxRows2 = 2;
      }
    }

    else if ((itemsCopy - 5) < 2)
    {
      maxRows2 = 2;
      numberOfMenuItems = 3;
    }

    else if ((itemsCopy - 7) < 2)
    {
      maxRows2 = 2;
      numberOfMenuItems = 4;
    }
  }

  else if ([(SCATMenuCollectionViewFlowLayout *)self isDockStyle])
  {
    maxRows2 = [(SCATMenuCollectionViewFlowLayout *)self maxRows];
    numberOfMenuItems = [(SCATMenuCollectionViewFlowLayout *)self numberOfMenuItems];
  }

  else
  {
    _AXAssert();
    numberOfMenuItems = 0;
    maxRows2 = 0;
  }

  if (row)
  {
    *row = numberOfMenuItems;
  }

  if (rows)
  {
    *rows = maxRows2;
  }
}

- (void)column:(unint64_t *)column row:(unint64_t *)row forItemAtIndex:(unint64_t)index
{
  v11 = 0;
  v12 = 0;
  [(SCATMenuCollectionViewFlowLayout *)self optimalNumberOfRows:&v12 itemsPerRow:&v11 forTotalNumberOfItems:[(SCATMenuCollectionViewFlowLayout *)self numberOfMenuItems]];
  v8 = 0;
  v9 = -1;
  v10 = v11;
  do
  {
    ++v9;
    v8 += v11;
  }

  while (v8 <= index);
  if (row)
  {
    *row = v9;
  }

  if (column)
  {
    *column = index % v10;
  }
}

- (id)_rowToFrameDictionaryForAttributes:(id)attributes itemsPerRow:(unint64_t)row
{
  attributesCopy = attributes;
  v6 = objc_alloc_init(NSMutableDictionary);
  if ([attributesCopy count])
  {
    v7 = 0;
    if (row <= 1)
    {
      rowCopy = 1;
    }

    else
    {
      rowCopy = row;
    }

    do
    {
      if (!row)
      {
        _AXAssert();
      }

      v9 = [attributesCopy objectAtIndex:v7];
      rowCopy = [NSNumber numberWithUnsignedInteger:v7 / rowCopy];
      v11 = [v6 objectForKey:rowCopy];
      [v11 CGRectValue];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [v9 frame];
      Height = CGRectGetHeight(v30);
      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      if (Height > CGRectGetHeight(v31))
      {
        [v9 frame];
        v28[0] = v21;
        v28[1] = v22;
        v28[2] = v23;
        v28[3] = v24;
        v25 = [NSValue valueWithBytes:v28 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        rowCopy2 = [NSNumber numberWithUnsignedInteger:v7 / rowCopy];
        [v6 setObject:v25 forKeyedSubscript:rowCopy2];
      }

      ++v7;
    }

    while (v7 < [attributesCopy count]);
  }

  return v6;
}

- (double)_xValueForDockItemAtIndex:(unint64_t)index layoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = [attributesCopy objectAtIndex:index];
  [v7 frame];
  if (index)
  {
    v9 = +[HNDAccessibilityManager sharedManager];
    applicationIsRTL = [v9 applicationIsRTL];

    v11 = index - 1;
    v12 = [attributesCopy objectAtIndex:index - 1];
    [v12 frame];
    if (applicationIsRTL)
    {
      MinX = CGRectGetMinX(*&v13);
      [(SCATMenuCollectionViewFlowLayout *)self menuItemHorizontalSpacingAfterItemAtIndex:v11];
      v19 = MinX - v18;
      [v7 frame];
      v20 = v19 - CGRectGetWidth(v24);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v13);
      [(SCATMenuCollectionViewFlowLayout *)self menuItemHorizontalSpacingAfterItemAtIndex:v11];
      v20 = MaxX + v22;
    }
  }

  else
  {
    v20 = v8;
  }

  return v20;
}

- (double)_heightForAllRows:(unint64_t)rows itemsPerRow:(unint64_t)row
{
  if (!rows)
  {
    return 0.0;
  }

  v7 = 0;
  v8 = 0.0;
  do
  {
    [(SCATMenuCollectionViewFlowLayout *)self _maxHeightForRow:v7 itemsPerRow:row];
    v8 = v8 + v9;
    ++v7;
  }

  while (rows != v7);
  return v8;
}

- (double)_maxHeightForRow:(unint64_t)row itemsPerRow:(unint64_t)perRow
{
  collectionView = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
  delegate = [collectionView delegate];

  numberOfMenuItems = [(SCATMenuCollectionViewFlowLayout *)self numberOfMenuItems];
  if (numberOfMenuItems)
  {
    v10 = numberOfMenuItems;
    v11 = 0;
    v12 = 0.0;
    do
    {
      if (v11 / perRow == row)
      {
        collectionView2 = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
        v14 = [delegate collectionView:collectionView2 menuItemForItemAtIndex:v11];

        if ([(SCATMenuCollectionViewFlowLayout *)self willIncludeTitleLabels])
        {
          title = [v14 title];
        }

        else
        {
          title = 0;
        }

        [SCATMenuItemCell cellSizeForTitle:title];
        if (v12 < v16)
        {
          v12 = v16;
        }
      }

      ++v11;
    }

    while (v10 != v11);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v24.receiver = self;
  v24.super_class = SCATMenuCollectionViewFlowLayout;
  v4 = [(SCATMenuCollectionViewFlowLayout *)&v24 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v22 = 0;
  v23 = 0;
  [(SCATMenuCollectionViewFlowLayout *)self optimalNumberOfRows:&v23 itemsPerRow:&v22 forTotalNumberOfItems:[(SCATMenuCollectionViewFlowLayout *)self numberOfMenuItems]];
  v5 = [(SCATMenuCollectionViewFlowLayout *)self _rowToFrameDictionaryForAttributes:v4 itemsPerRow:v22];
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = v22;
      if (!v22)
      {
        _AXAssert();
        v7 = v22;
      }

      if (v7 <= 1)
      {
        v7 = 1;
      }

      v8 = v6 / v7;
      v9 = [v4 objectAtIndex:v6];
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v14 = [NSNumber numberWithUnsignedInteger:v8];
      v15 = [v5 objectForKeyedSubscript:v14];
      [v15 CGRectValue];
      v17 = v16;
      v19 = v18;

      if ([(SCATMenuCollectionViewFlowLayout *)self isDockStyle])
      {
        [(SCATMenuCollectionViewFlowLayout *)self _xValueForDockItemAtIndex:v6 layoutAttributes:v4];
        v11 = v20;
      }

      [v9 setFrame:{v11, v17, v13, v19}];

      ++v6;
    }

    while (v6 < [v4 count]);
  }

  return v4;
}

- (CGSize)collectionViewContentSize
{
  numberOfMenuItems = [(SCATMenuCollectionViewFlowLayout *)self numberOfMenuItems];
  v19 = 0;
  v20 = 0;
  [(SCATMenuCollectionViewFlowLayout *)self optimalNumberOfRows:&v20 itemsPerRow:&v19 forTotalNumberOfItems:numberOfMenuItems];
  [(SCATMenuCollectionViewFlowLayout *)self menuItemSize];
  v5 = v4;
  [(SCATMenuCollectionViewFlowLayout *)self menuItemSpacing];
  v7 = v6;
  v9 = v8;
  [(SCATMenuCollectionViewFlowLayout *)self _heightForAllRows:v20 itemsPerRow:v19];
  v11 = v10;
  v12 = v20;
  if ([(SCATMenuCollectionViewFlowLayout *)self isDockStyle])
  {
    v13 = v5 * numberOfMenuItems;
    v14 = numberOfMenuItems - 1;
    if (numberOfMenuItems != 1)
    {
      v15 = 0;
      do
      {
        [(SCATMenuCollectionViewFlowLayout *)self menuItemHorizontalSpacingAfterItemAtIndex:v15];
        v13 = v13 + v16;
        ++v15;
      }

      while (v14 != v15);
    }
  }

  else
  {
    v13 = v7 * (v19 - 1) + v19 * v5;
  }

  v17 = v11 + (v12 - 1) * v9;
  v18 = v13;
  result.height = v17;
  result.width = v18;
  return result;
}

@end