@interface SCATMenuSheetViewController
- (SCATMenuSheetViewController)initWithSheet:(id)sheet;
- (SCATStaticElementProvider)elementProvider;
- (id)_scannerGroupsForMenuItems:(id)items;
- (id)_visibleCellForMenuItem:(id)item;
- (unint64_t)currentPage;
- (unint64_t)numberOfItemsInFirstPage;
- (unint64_t)numberOfItemsPerRow;
- (unint64_t)numberOfPagesRequired;
- (void)_setupMenuSheet;
- (void)flashCellForMenuItem:(id)item;
- (void)reload;
- (void)updateCellForMenuItem:(id)item;
@end

@implementation SCATMenuSheetViewController

- (SCATMenuSheetViewController)initWithSheet:(id)sheet
{
  sheetCopy = sheet;
  v9.receiver = self;
  v9.super_class = SCATMenuSheetViewController;
  v5 = [(SCATMenuSheetViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SCATMenuSheetViewController *)v5 setSheet:sheetCopy];
    sheet = [(SCATMenuSheetViewController *)v6 sheet];
    [sheet setElementProviderDelegate:v6];

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
  sheet = [(SCATMenuSheetViewController *)self sheet];
  [(SCATModernMenuSheetCollectionViewController *)v3 setMenuSheet:sheet];
}

- (SCATStaticElementProvider)elementProvider
{
  collectionViewController = [(SCATMenuSheetViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];

  [collectionView setClipsToBounds:0];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v6 = v5;
  v8 = v7;

  if (v6 > 0.0 && v8 > 0.0)
  {
    superview = [collectionView superview];
    [superview setBounds:{0.0, 0.0, v6, v8}];
  }

  [collectionView layoutIfNeeded];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v11 = [indexPathsForVisibleItems sortedArrayUsingComparator:&stru_1001D5AA0];

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

        v17 = [collectionView cellForItemAtIndexPath:*(*(&v29 + 1) + 8 * i)];
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            menuItem = [v18 menuItem];
            isDisabled = [menuItem isDisabled];

            if ((isDisabled & 1) == 0)
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
    assistiveTouchGroupElementsEnabled = [v21 assistiveTouchGroupElementsEnabled];

    v23 = [SCATStaticElementProvider alloc];
    if (assistiveTouchGroupElementsEnabled)
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
  collectionViewLayout = [(SCATMenuSheetViewController *)self collectionViewLayout];
  maxItemsPerRow = [collectionViewLayout maxItemsPerRow];

  return maxItemsPerRow;
}

- (id)_scannerGroupsForMenuItems:(id)items
{
  itemsCopy = items;
  v4 = [itemsCopy count];
  if (v4 > 1)
  {
    v6 = v4;
    v7 = [itemsCopy objectAtIndex:0];
    [v7 frame];
    v9 = v8;
    v10 = 1;
    while (1)
    {
      v11 = [itemsCopy objectAtIndex:v10];
      [v11 frame];
      v13 = v12;

      if (v13 != v9)
      {
        break;
      }

      if (v6 == ++v10)
      {
        v5 = [itemsCopy axMapObjectsUsingBlock:&stru_1001D5B20];
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
    v15 = itemsCopy;
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
              menuItem = [v19 menuItem];
              scatElement = [menuItem scatElement];
              [v14 addObject:scatElement];
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

              menuItem2 = [v19 menuItem];
              scatElement2 = [menuItem2 scatElement];
              v31 = [NSMutableArray arrayWithObject:scatElement2];

              [v19 frame];
              v9 = v32;
              v14 = v31;
              v17 = v40;
            }
          }

          else
          {
            menuItem3 = [v19 menuItem];
            scatElement3 = [menuItem3 scatElement];
            [v14 addObject:scatElement3];

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
    v5 = [itemsCopy axMapObjectsUsingBlock:&stru_1001D5B00];
  }

  return v5;
}

- (unint64_t)currentPage
{
  numberOfItemsInFirstPage = [(SCATMenuSheetViewController *)self numberOfItemsInFirstPage];
  collectionViewController = [(SCATMenuSheetViewController *)self collectionViewController];
  visibleItemOffset = [collectionViewController visibleItemOffset];

  if (numberOfItemsInFirstPage)
  {
    collectionViewController2 = [(SCATMenuSheetViewController *)self collectionViewController];
    visibleItemOffset2 = [collectionViewController2 visibleItemOffset];

    if (visibleItemOffset2 < numberOfItemsInFirstPage)
    {
      return 0;
    }

    visibleItemOffset -= numberOfItemsInFirstPage;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  collectionViewController3 = [(SCATMenuSheetViewController *)self collectionViewController];
  collectionView = [collectionViewController3 collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  if (collectionViewLayout)
  {
    v6 += visibleItemOffset / [collectionViewLayout maxVisibleItems];
  }

  else
  {
    _AXAssert();
  }

  return v6;
}

- (unint64_t)numberOfPagesRequired
{
  collectionViewController = [(SCATMenuSheetViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  numberOfItemsInFirstPage = [(SCATMenuSheetViewController *)self numberOfItemsInFirstPage];
  sheet = [(SCATMenuSheetViewController *)self sheet];
  menuItems = [sheet menuItems];
  v9 = [menuItems count];

  if (numberOfItemsInFirstPage)
  {
    v10 = numberOfItemsInFirstPage;
  }

  else
  {
    v10 = 0;
  }

  v11 = &v9[-v10];
  maxVisibleItems = [collectionViewLayout maxVisibleItems];
  if (numberOfItemsInFirstPage)
  {
    v13 = v11 / maxVisibleItems + 1;
  }

  else
  {
    v13 = v11 / maxVisibleItems;
  }

  if (v11 % [collectionViewLayout maxVisibleItems])
  {
    ++v13;
  }

  return v13;
}

- (unint64_t)numberOfItemsInFirstPage
{
  sheet = [(SCATMenuSheetViewController *)self sheet];
  numberOfItemsInFirstPage = [sheet numberOfItemsInFirstPage];

  return numberOfItemsInFirstPage;
}

- (void)updateCellForMenuItem:(id)item
{
  v3 = [(SCATMenuSheetViewController *)self _visibleCellForMenuItem:item];
  [v3 update];
}

- (void)flashCellForMenuItem:(id)item
{
  v3 = [(SCATMenuSheetViewController *)self _visibleCellForMenuItem:item];
  [v3 flash];
}

- (id)_visibleCellForMenuItem:(id)item
{
  itemCopy = item;
  collectionViewController = [(SCATMenuSheetViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  visibleCells = [collectionView visibleCells];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007CFA4;
  v12[3] = &unk_1001D5B48;
  v13 = itemCopy;
  v8 = itemCopy;
  v9 = [visibleCells axFilterObjectsUsingBlock:v12];
  firstObject = [v9 firstObject];

  return firstObject;
}

- (void)reload
{
  collectionViewController = [(SCATMenuSheetViewController *)self collectionViewController];
  [collectionViewController adjustVisibleItemOffsetForPageBoundary];

  collectionViewController2 = [(SCATMenuSheetViewController *)self collectionViewController];
  [collectionViewController2 reloadCollectionView];
}

@end