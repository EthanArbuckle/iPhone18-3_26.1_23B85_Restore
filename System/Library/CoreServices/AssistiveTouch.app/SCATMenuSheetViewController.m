@interface SCATMenuSheetViewController
- (SCATMenuSheetViewController)initWithSheet:(id)a3;
- (SCATStaticElementProvider)elementProvider;
- (id)_scannerGroupsForMenuItems:(id)a3;
- (id)_visibleCellForMenuItem:(id)a3;
- (unint64_t)currentPage;
- (unint64_t)numberOfItemsInFirstPage;
- (unint64_t)numberOfItemsPerRow;
- (unint64_t)numberOfPagesRequired;
- (void)_setupMenuSheet;
- (void)flashCellForMenuItem:(id)a3;
- (void)reload;
- (void)updateCellForMenuItem:(id)a3;
@end

@implementation SCATMenuSheetViewController

- (SCATMenuSheetViewController)initWithSheet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCATMenuSheetViewController;
  v5 = [(SCATMenuSheetViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SCATMenuSheetViewController *)v5 setSheet:v4];
    v7 = [(SCATMenuSheetViewController *)v6 sheet];
    [v7 setElementProviderDelegate:v6];

    [(SCATMenuSheetViewController *)v6 _setupMenuSheet];
  }

  return v6;
}

- (void)_setupMenuSheet
{
  v5 = objc_alloc_init(SCATMenuCollectionViewFlowLayout);
  [(SCATMenuCollectionViewFlowLayout *)v5 setSectionInset:0.0, 0.0, 0.0, 0.0];
  [(SCATMenuSheetViewController *)self setCollectionViewLayout:v5];
  v3 = [[SCATModernMenuSheetCollectionViewController alloc] initWithCollectionViewLayout:v5];
  [(SCATMenuSheetViewController *)self setCollectionViewController:v3];
  v4 = [(SCATMenuSheetViewController *)self sheet];
  [(SCATModernMenuSheetCollectionViewController *)v3 setMenuSheet:v4];
}

- (SCATStaticElementProvider)elementProvider
{
  v2 = [(SCATMenuSheetViewController *)self collectionViewController];
  v3 = [v2 collectionView];

  [v3 setClipsToBounds:0];
  v4 = [v3 collectionViewLayout];
  [v4 collectionViewContentSize];
  v6 = v5;
  v8 = v7;

  if (v6 > 0.0 && v8 > 0.0)
  {
    v9 = [v3 superview];
    [v9 setBounds:{0.0, 0.0, v6, v8}];
  }

  [v3 layoutIfNeeded];
  v10 = [v3 indexPathsForVisibleItems];
  v11 = [v10 sortedArrayUsingComparator:&stru_1001D5AA0];

  v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v3 cellForItemAtIndexPath:*(*(&v29 + 1) + 8 * i)];
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            v19 = [v18 menuItem];
            v20 = [v19 isDisabled];

            if ((v20 & 1) == 0)
            {
              [v18 setParentGroup:0];
              [v28 addObject:v18];
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  if ([v28 count])
  {
    v21 = +[AXSettings sharedInstance];
    v22 = [v21 assistiveTouchGroupElementsEnabled];

    v23 = [SCATStaticElementProvider alloc];
    if (v22)
    {
      [(SCATMenuSheetViewController *)self _scannerGroupsForMenuItems:v28];
    }

    else
    {
      [v28 axMapObjectsUsingBlock:&stru_1001D5AE0];
    }
    v25 = ;
    v24 = [(SCATStaticElementProvider *)v23 initWithElements:v25];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (unint64_t)numberOfItemsPerRow
{
  v2 = [(SCATMenuSheetViewController *)self collectionViewLayout];
  v3 = [v2 maxItemsPerRow];

  return v3;
}

- (id)_scannerGroupsForMenuItems:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 > 1)
  {
    v6 = v4;
    v7 = [v3 objectAtIndex:0];
    [v7 frame];
    v9 = v8;
    v10 = 1;
    while (1)
    {
      v11 = [v3 objectAtIndex:v10];
      [v11 frame];
      v13 = v12;

      if (v13 != v9)
      {
        break;
      }

      if (v6 == ++v10)
      {
        v5 = [v3 axMapObjectsUsingBlock:&stru_1001D5B20];
        goto LABEL_30;
      }
    }

    v39 = v7;
    v5 = +[NSMutableArray array];
    v14 = +[NSMutableArray array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = v3;
    v16 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v41 = *v43;
      do
      {
        v18 = 0;
        v40 = v17;
        do
        {
          if (*v43 != v41)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v42 + 1) + 8 * v18);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v38 = v15;
            _AXAssert();
          }

          if ([v14 count])
          {
            [v19 frame];
            if (v20 == v9)
            {
              v21 = [v19 menuItem];
              v22 = [v21 scatElement];
              [v14 addObject:v22];
            }

            else
            {
              if ([v14 count] == 1)
              {
                v26 = [v14 objectAtIndex:0];
                [v5 addObject:v26];
              }

              else
              {
                v26 = [AXElementGroup groupWithElements:v14 label:0];
                [v5 addObject:v26];
                v27 = sub_100042B24(@"MENU_GROUP_ROW");
                [v5 count];
                v38 = AXFormatInteger();
                v28 = [NSString stringWithFormat:v27];
                [v26 setAccessibilityLabel:v28];
              }

              v29 = [v19 menuItem];
              v30 = [v29 scatElement];
              v31 = [NSMutableArray arrayWithObject:v30];

              [v19 frame];
              v9 = v32;
              v14 = v31;
              v17 = v40;
            }
          }

          else
          {
            v23 = [v19 menuItem];
            v24 = [v23 scatElement];
            [v14 addObject:v24];

            [v19 frame];
            v9 = v25;
          }

          v18 = v18 + 1;
        }

        while (v17 != v18);
        v17 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v17);
    }

    if ([v14 count])
    {
      if ([v14 count] == 1)
      {
        v33 = [v14 objectAtIndex:0];
        [v5 addObject:v33];
      }

      else
      {
        v33 = [AXElementGroup groupWithElements:v14 label:0];
        [v5 addObject:v33];
        v34 = sub_100042B24(@"MENU_GROUP_ROW");
        [v5 count];
        v35 = AXFormatInteger();
        v36 = [NSString stringWithFormat:v34, v35];
        [v33 setAccessibilityLabel:v36];
      }
    }

    v7 = v39;
LABEL_30:
  }

  else
  {
    v5 = [v3 axMapObjectsUsingBlock:&stru_1001D5B00];
  }

  return v5;
}

- (unint64_t)currentPage
{
  v3 = [(SCATMenuSheetViewController *)self numberOfItemsInFirstPage];
  v4 = [(SCATMenuSheetViewController *)self collectionViewController];
  v5 = [v4 visibleItemOffset];

  if (v3)
  {
    v7 = [(SCATMenuSheetViewController *)self collectionViewController];
    v8 = [v7 visibleItemOffset];

    if (v8 < v3)
    {
      return 0;
    }

    v5 -= v3;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v9 = [(SCATMenuSheetViewController *)self collectionViewController];
  v10 = [v9 collectionView];
  v11 = [v10 collectionViewLayout];

  if (v11)
  {
    v6 += v5 / [v11 maxVisibleItems];
  }

  else
  {
    _AXAssert();
  }

  return v6;
}

- (unint64_t)numberOfPagesRequired
{
  v3 = [(SCATMenuSheetViewController *)self collectionViewController];
  v4 = [v3 collectionView];
  v5 = [v4 collectionViewLayout];

  v6 = [(SCATMenuSheetViewController *)self numberOfItemsInFirstPage];
  v7 = [(SCATMenuSheetViewController *)self sheet];
  v8 = [v7 menuItems];
  v9 = [v8 count];

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = &v9[-v10];
  v12 = [v5 maxVisibleItems];
  if (v6)
  {
    v13 = v11 / v12 + 1;
  }

  else
  {
    v13 = v11 / v12;
  }

  if (v11 % [v5 maxVisibleItems])
  {
    ++v13;
  }

  return v13;
}

- (unint64_t)numberOfItemsInFirstPage
{
  v2 = [(SCATMenuSheetViewController *)self sheet];
  v3 = [v2 numberOfItemsInFirstPage];

  return v3;
}

- (void)updateCellForMenuItem:(id)a3
{
  v3 = [(SCATMenuSheetViewController *)self _visibleCellForMenuItem:a3];
  [v3 update];
}

- (void)flashCellForMenuItem:(id)a3
{
  v3 = [(SCATMenuSheetViewController *)self _visibleCellForMenuItem:a3];
  [v3 flash];
}

- (id)_visibleCellForMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(SCATMenuSheetViewController *)self collectionViewController];
  v6 = [v5 collectionView];
  v7 = [v6 visibleCells];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007CFA4;
  v12[3] = &unk_1001D5B48;
  v13 = v4;
  v8 = v4;
  v9 = [v7 axFilterObjectsUsingBlock:v12];
  v10 = [v9 firstObject];

  return v10;
}

- (void)reload
{
  v3 = [(SCATMenuSheetViewController *)self collectionViewController];
  [v3 adjustVisibleItemOffsetForPageBoundary];

  v4 = [(SCATMenuSheetViewController *)self collectionViewController];
  [v4 reloadCollectionView];
}

@end