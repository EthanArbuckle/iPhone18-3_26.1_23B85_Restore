@interface UICollectionView
- (BOOL)_maps_shouldShowTopHairline;
- (CGRect)_maps_rectForHeaderInSection:(int64_t)section;
- (CGRect)_maps_rectForRowAtIndexPath:(id)path;
- (CGSize)_maps_contentSize;
- (int64_t)_maps_indexOfFirstNonEmptySection;
- (void)_maps_reloadDataWithoutFocus;
@end

@implementation UICollectionView

- (void)_maps_reloadDataWithoutFocus
{
  remembersLastFocusedIndexPath = [(UICollectionView *)self remembersLastFocusedIndexPath];
  [(UICollectionView *)self setRemembersLastFocusedIndexPath:0];
  [(UICollectionView *)self reloadData];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005FE210;
  v4[3] = &unk_101661AE0;
  v4[4] = self;
  v5 = remembersLastFocusedIndexPath;
  dispatch_async(&_dispatch_main_q, v4);
}

- (CGRect)_maps_rectForRowAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewLayout = [(UICollectionView *)self collectionViewLayout];
  v6 = [collectionViewLayout layoutAttributesForItemAtIndexPath:pathCopy];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_maps_rectForHeaderInSection:(int64_t)section
{
  collectionViewLayout = [(UICollectionView *)self collectionViewLayout];
  v5 = [NSIndexPath indexPathForItem:0 inSection:section];
  v6 = [collectionViewLayout layoutAttributesForSupplementaryViewOfKind:UICollectionElementKindSectionHeader atIndexPath:v5];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGSize)_maps_contentSize
{
  collectionViewLayout = [(UICollectionView *)self collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)_maps_shouldShowTopHairline
{
  dataSource = [(UICollectionView *)self dataSource];
  if (!dataSource)
  {
    return 0;
  }

  v4 = dataSource;
  [(UICollectionView *)self contentOffset];
  v6 = v5;
  v8 = v7;
  y = CGPointZero.y;

  if (v6 == CGPointZero.x && v8 == y)
  {
    return 0;
  }

  _maps_indexOfFirstNonEmptySection = [(UICollectionView *)self _maps_indexOfFirstNonEmptySection];
  dataSource2 = [(UICollectionView *)self dataSource];
  snapshot = [dataSource2 snapshot];
  numberOfSections = [snapshot numberOfSections];
  v15 = 0;
  if (_maps_indexOfFirstNonEmptySection != 0x7FFFFFFFFFFFFFFFLL && _maps_indexOfFirstNonEmptySection < numberOfSections)
  {
    v16 = [NSIndexPath indexPathForRow:0 inSection:_maps_indexOfFirstNonEmptySection];
    v17 = [(UICollectionView *)self supplementaryViewForElementKind:UICollectionElementKindSectionHeader atIndexPath:v16];

    [v17 frame];
    if (v21 == 0.0)
    {
      v15 = 1;
    }

    else
    {
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      [(UICollectionView *)self contentOffset];
      UIRoundToViewScale();
      v27 = v26;
      v30.origin.x = v22;
      v30.origin.y = v23;
      v30.size.width = v24;
      v30.size.height = v25;
      CGRectGetMaxY(v30);
      UIRoundToViewScale();
      v15 = v27 >= v28;
    }
  }

  return v15;
}

- (int64_t)_maps_indexOfFirstNonEmptySection
{
  dataSource = [(UICollectionView *)self dataSource];

  if (!dataSource)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  dataSource2 = [(UICollectionView *)self dataSource];
  objc_opt_class();
  objc_opt_isKindOfClass();

  dataSource3 = [(UICollectionView *)self dataSource];
  snapshot = [dataSource3 snapshot];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v8 = [sectionIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(sectionIdentifiers);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([snapshot numberOfItemsInSection:v12] > 0)
        {
          v13 = [snapshot indexOfSectionIdentifier:v12];
          goto LABEL_12;
        }
      }

      v9 = [sectionIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:

  return v13;
}

@end