@interface SCATMenuCollectionViewFlowLayout
- (BOOL)isDockStyle;
- (BOOL)isPopoverStyle;
- (BOOL)willIncludeTitleLabels;
- (CGSize)collectionViewContentSize;
- (CGSize)menuItemSize;
- (CGSize)menuItemSpacing;
- (SCATMenuCollectionViewFlowLayout)init;
- (double)_heightForAllRows:(unint64_t)a3 itemsPerRow:(unint64_t)a4;
- (double)_maxHeightForRow:(unint64_t)a3 itemsPerRow:(unint64_t)a4;
- (double)_xValueForDockItemAtIndex:(unint64_t)a3 layoutAttributes:(id)a4;
- (double)menuItemHorizontalSpacingAfterItemAtIndex:(unint64_t)a3;
- (id)_rowToFrameDictionaryForAttributes:(id)a3 itemsPerRow:(unint64_t)a4;
- (id)effectiveStyleAttributes;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutDelegate;
- (id)menuSheet;
- (unint64_t)maxItemsPerRow;
- (unint64_t)maxRows;
- (unint64_t)numberOfMenuItems;
- (void)_initStyleAttributes;
- (void)column:(unint64_t *)a3 row:(unint64_t *)a4 forItemAtIndex:(unint64_t)a5;
- (void)optimalNumberOfRows:(unint64_t *)a3 itemsPerRow:(unint64_t *)a4 forTotalNumberOfItems:(unint64_t)a5;
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
  v2 = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
  v3 = [v2 delegate];

  return v3;
}

- (id)menuSheet
{
  v3 = [(SCATMenuCollectionViewFlowLayout *)self layoutDelegate];
  v4 = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
  v5 = [v3 menuSheetForCollectionView:v4];

  return v5;
}

- (unint64_t)numberOfMenuItems
{
  v2 = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
  v3 = [v2 numberOfItemsInSection:0];

  return v3;
}

- (BOOL)willIncludeTitleLabels
{
  v2 = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  v3 = [v2 shouldIncludeTextLabels];

  return v3;
}

- (BOOL)isPopoverStyle
{
  v2 = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  v3 = [v2 presentationMode] == 0;

  return v3;
}

- (BOOL)isDockStyle
{
  v2 = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  v3 = [v2 presentationMode] == 1;

  return v3;
}

- (id)effectiveStyleAttributes
{
  v3 = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  v4 = [v3 presentationMode];

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [(SCATMenuCollectionViewFlowLayout *)self dockStyleAttributes];
    }
  }

  else
  {
    v5 = [(SCATMenuCollectionViewFlowLayout *)self popoverStyleAttributes];
  }

  return v5;
}

- (CGSize)menuItemSize
{
  v2 = [(SCATMenuCollectionViewFlowLayout *)self effectiveStyleAttributes];
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
  v4 = [v3 isLandscape];
  v5 = [(SCATMenuCollectionViewFlowLayout *)self effectiveStyleAttributes];
  v6 = v5;
  if (v4)
  {
    [v5 itemSpacingLandscape];
  }

  else
  {
    [v5 itemSpacingPortrait];
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
  v2 = [(SCATMenuCollectionViewFlowLayout *)self effectiveStyleAttributes];
  v3 = [v2 maxItemsPerRow];

  return v3;
}

- (unint64_t)maxRows
{
  v2 = [(SCATMenuCollectionViewFlowLayout *)self effectiveStyleAttributes];
  v3 = [v2 maxRows];

  return v3;
}

- (double)menuItemHorizontalSpacingAfterItemAtIndex:(unint64_t)a3
{
  [(SCATMenuCollectionViewFlowLayout *)self menuItemSpacing];
  v6 = v5;
  if (![(SCATMenuCollectionViewFlowLayout *)self isDockStyle])
  {
    _AXAssert();
  }

  v7 = [(SCATMenuCollectionViewFlowLayout *)self menuSheet];
  v8 = [v7 menuItemStruts];

  if (v8)
  {
    v9 = [v8 objectAtIndex:a3];
    [v9 doubleValue];
    v6 = v10;
  }

  return v6;
}

- (void)optimalNumberOfRows:(unint64_t *)a3 itemsPerRow:(unint64_t *)a4 forTotalNumberOfItems:(unint64_t)a5
{
  if ([(SCATMenuCollectionViewFlowLayout *)self isPopoverStyle])
  {
    v9 = [(SCATMenuCollectionViewFlowLayout *)self maxVisibleItems];
    if (v9 >= a5)
    {
      v10 = a5;
    }

    else
    {
      v10 = v9;
    }

    v11 = [(SCATMenuCollectionViewFlowLayout *)self maxItemsPerRow];
    v12 = [(SCATMenuCollectionViewFlowLayout *)self maxRows];
    v13 = ceil(v10 / v11);
    if (v13 > v12)
    {
      v13 = v12;
    }

    v14 = v13;
    if (v10 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v10;
    }

    if (v14 == 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = v11;
    }

    if (v10 > 8)
    {
      if (v10 == 9)
      {
        if (AXDeviceIsPad())
        {
          v14 = 2;
          v16 = 5;
        }

        else if ((AXDeviceIsPhone() & 1) != 0 || AXDeviceIsPod())
        {
          v16 = 3;
          v14 = 3;
        }
      }

      else if (v10 == 10 && AXDeviceIsPad())
      {
        v16 = 5;
        v14 = 2;
      }
    }

    else if ((v10 - 5) < 2)
    {
      v14 = 2;
      v16 = 3;
    }

    else if ((v10 - 7) < 2)
    {
      v14 = 2;
      v16 = 4;
    }
  }

  else if ([(SCATMenuCollectionViewFlowLayout *)self isDockStyle])
  {
    v14 = [(SCATMenuCollectionViewFlowLayout *)self maxRows];
    v16 = [(SCATMenuCollectionViewFlowLayout *)self numberOfMenuItems];
  }

  else
  {
    _AXAssert();
    v16 = 0;
    v14 = 0;
  }

  if (a4)
  {
    *a4 = v16;
  }

  if (a3)
  {
    *a3 = v14;
  }
}

- (void)column:(unint64_t *)a3 row:(unint64_t *)a4 forItemAtIndex:(unint64_t)a5
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

  while (v8 <= a5);
  if (a4)
  {
    *a4 = v9;
  }

  if (a3)
  {
    *a3 = a5 % v10;
  }
}

- (id)_rowToFrameDictionaryForAttributes:(id)a3 itemsPerRow:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  if ([v5 count])
  {
    v7 = 0;
    if (a4 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      if (!a4)
      {
        _AXAssert();
      }

      v9 = [v5 objectAtIndex:v7];
      v10 = [NSNumber numberWithUnsignedInteger:v7 / v8];
      v11 = [v6 objectForKey:v10];
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
        v26 = [NSNumber numberWithUnsignedInteger:v7 / v8];
        [v6 setObject:v25 forKeyedSubscript:v26];
      }

      ++v7;
    }

    while (v7 < [v5 count]);
  }

  return v6;
}

- (double)_xValueForDockItemAtIndex:(unint64_t)a3 layoutAttributes:(id)a4
{
  v6 = a4;
  v7 = [v6 objectAtIndex:a3];
  [v7 frame];
  if (a3)
  {
    v9 = +[HNDAccessibilityManager sharedManager];
    v10 = [v9 applicationIsRTL];

    v11 = a3 - 1;
    v12 = [v6 objectAtIndex:a3 - 1];
    [v12 frame];
    if (v10)
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

- (double)_heightForAllRows:(unint64_t)a3 itemsPerRow:(unint64_t)a4
{
  if (!a3)
  {
    return 0.0;
  }

  v7 = 0;
  v8 = 0.0;
  do
  {
    [(SCATMenuCollectionViewFlowLayout *)self _maxHeightForRow:v7 itemsPerRow:a4];
    v8 = v8 + v9;
    ++v7;
  }

  while (a3 != v7);
  return v8;
}

- (double)_maxHeightForRow:(unint64_t)a3 itemsPerRow:(unint64_t)a4
{
  v7 = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
  v8 = [v7 delegate];

  v9 = [(SCATMenuCollectionViewFlowLayout *)self numberOfMenuItems];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0.0;
    do
    {
      if (v11 / a4 == a3)
      {
        v13 = [(SCATMenuCollectionViewFlowLayout *)self collectionView];
        v14 = [v8 collectionView:v13 menuItemForItemAtIndex:v11];

        if ([(SCATMenuCollectionViewFlowLayout *)self willIncludeTitleLabels])
        {
          v15 = [v14 title];
        }

        else
        {
          v15 = 0;
        }

        [SCATMenuItemCell cellSizeForTitle:v15];
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

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = SCATMenuCollectionViewFlowLayout;
  v4 = [(SCATMenuCollectionViewFlowLayout *)&v24 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(SCATMenuCollectionViewFlowLayout *)self numberOfMenuItems];
  v19 = 0;
  v20 = 0;
  [(SCATMenuCollectionViewFlowLayout *)self optimalNumberOfRows:&v20 itemsPerRow:&v19 forTotalNumberOfItems:v3];
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
    v13 = v5 * v3;
    v14 = v3 - 1;
    if (v3 != 1)
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