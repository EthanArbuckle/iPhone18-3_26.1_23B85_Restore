@interface CHAchievementsDataSource
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CHAchievementsDataSource)initWithDataProvider:(id)provider collectionView:(id)view recentAndRelevantCollectionView:(id)collectionView recentAndRelevantDataSource:(id)source localizationProvider:(id)localizationProvider badgeImageFactory:(id)factory;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)mainSectionHorizontalInset;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)siblingIndexPathsForIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)achievementsDataProviderDidUpdate:(id)update;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)textSizeDidChange:(id)change;
@end

@implementation CHAchievementsDataSource

- (CHAchievementsDataSource)initWithDataProvider:(id)provider collectionView:(id)view recentAndRelevantCollectionView:(id)collectionView recentAndRelevantDataSource:(id)source localizationProvider:(id)localizationProvider badgeImageFactory:(id)factory
{
  providerCopy = provider;
  viewCopy = view;
  collectionViewCopy = collectionView;
  sourceCopy = source;
  localizationProviderCopy = localizationProvider;
  factoryCopy = factory;
  v40.receiver = self;
  v40.super_class = CHAchievementsDataSource;
  v18 = [(CHAchievementsDataSource *)&v40 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_locProvider, localizationProvider);
    objc_storeStrong(&v19->_dataProvider, provider);
    [(AAUIAchievementsDataProvider *)v19->_dataProvider addMainSectionObserver:v19];
    objc_storeStrong(&v19->_badgeImageFactory, factory);
    objc_storeStrong(&v19->_recentAndRelevantDataSource, source);
    objc_storeStrong(&v19->_collectionView, view);
    [(UICollectionView *)v19->_collectionView setDelegate:v19];
    [(UICollectionView *)v19->_collectionView setDataSource:v19];
    collectionView = v19->_collectionView;
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [(UICollectionView *)collectionView registerClass:v21 forCellWithReuseIdentifier:v23];

    v24 = v19->_collectionView;
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [(UICollectionView *)v24 registerClass:v25 forCellWithReuseIdentifier:v27];

    v28 = v19->_collectionView;
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    [(UICollectionView *)v28 registerClass:v29 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v31];

    collectionViewLayout = [(UICollectionView *)v19->_collectionView collectionViewLayout];
    [collectionViewLayout setMinimumLineSpacing:13.0];
    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v19 selector:"textSizeDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    objc_storeStrong(&v19->_recentAndRelevantCollectionView, collectionView);
    v34 = objc_alloc_init(NSMutableDictionary);
    cellSizeForIndexPath = v19->_cellSizeForIndexPath;
    v19->_cellSizeForIndexPath = v34;

    [(CHAchievementsDataSource *)v19 textSizeDidChange:0];
  }

  return v19;
}

- (double)mainSectionHorizontalInset
{
  [(CHAchievementsDataSource *)self nCellsPerRow];
  [(CHAchievementsDataSource *)self mainSectionCellWidth];
  [(CHAchievementsDataSource *)self mainSectionCellPadding];
  v3 = +[UIScreen mainScreen];
  [v3 bounds];

  collectionView = [(CHAchievementsDataSource *)self collectionView];
  UICeilToViewScale();
  v6 = v5;

  return v6;
}

- (void)textSizeDidChange:(id)change
{
  v4 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  [(CHAchievementsDataSource *)self setNCellsPerRow:v6];

  v7 = +[UIScreen mainScreen];
  [v7 bounds];

  [(CHAchievementsDataSource *)self nCellsPerRow];
  collectionView = [(CHAchievementsDataSource *)self collectionView];
  UIRoundToViewScale();
  v10 = v9;

  [(CHAchievementsDataSource *)self setMainSectionCellWidth:v10];
  cellSizeForIndexPath = [(CHAchievementsDataSource *)self cellSizeForIndexPath];
  [cellSizeForIndexPath removeAllObjects];

  collectionView2 = [(CHAchievementsDataSource *)self collectionView];
  [collectionView2 reloadData];
}

- (void)dealloc
{
  [(AAUIAchievementsDataProvider *)self->_dataProvider removeMainSectionObserver:self];
  v3.receiver = self;
  v3.super_class = CHAchievementsDataSource;
  [(CHAchievementsDataSource *)&v3 dealloc];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    dataProvider = [(CHAchievementsDataSource *)self dataProvider];
    recentAndRelevantCollectionView = [dataProvider achievementAtIndexPath:pathCopy];

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

    [(CHAchievementsDataSource *)self mainSectionCellWidth];
    [v12 setPreferredWidth:?];
    badgeImageFactory = [(CHAchievementsDataSource *)self badgeImageFactory];
    locProvider = [(CHAchievementsDataSource *)self locProvider];
    [v12 configureWithAchievement:recentAndRelevantCollectionView badgeImageFactory:badgeImageFactory locProvider:locProvider];
  }

  else
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:pathCopy];

    recentAndRelevantCollectionView = [(CHAchievementsDataSource *)self recentAndRelevantCollectionView];
    [v12 setCollectionView:recentAndRelevantCollectionView];
  }

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataProvider = [(CHAchievementsDataSource *)self dataProvider];
  numberOfSections = [dataProvider numberOfSections];

  return numberOfSections;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataProvider = [(CHAchievementsDataSource *)self dataProvider];
  v6 = [dataProvider numberOfItemsInSection:section];

  return v6;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  if (index && [(CHAchievementsDataSource *)self collectionView:viewCopy numberOfItemsInSection:index])
  {
    [(CHAchievementsDataSource *)self mainSectionHorizontalInset];
    left = v10;
    bottom = 12.0;
    top = 0.0;
    right = v10;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v15 = top;
  v16 = left;
  v17 = bottom;
  v18 = right;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (id)siblingIndexPathsForIndexPath:(id)path
{
  pathCopy = path;
  nCellsPerRow = [(CHAchievementsDataSource *)self nCellsPerRow];
  v6 = [pathCopy item] % nCellsPerRow;
  if (nCellsPerRow == 3)
  {
    item = [pathCopy item];
    section = [pathCopy section];
    if (v6 == 1)
    {
      v9 = [NSIndexPath indexPathForItem:item - 1 inSection:section];
      v20[0] = v9;
      v10 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [pathCopy item] + 1, objc_msgSend(pathCopy, "section"));
      v20[1] = v10;
      v11 = v20;
    }

    else if (v6)
    {
      v9 = [NSIndexPath indexPathForItem:item - 2 inSection:section];
      v19[0] = v9;
      v10 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [pathCopy item] - 1, objc_msgSend(pathCopy, "section"));
      v19[1] = v10;
      v11 = v19;
    }

    else
    {
      v9 = [NSIndexPath indexPathForItem:item + 1 inSection:section];
      v21[0] = v9;
      v10 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [pathCopy item] + 2, objc_msgSend(pathCopy, "section"));
      v21[1] = v10;
      v11 = v21;
    }

    v15 = [NSArray arrayWithObjects:v11 count:2];
  }

  else
  {
    item2 = [pathCopy item];
    section2 = [pathCopy section];
    if (v6)
    {
      v9 = [NSIndexPath indexPathForItem:item2 - 1 inSection:section2];
      v17 = v9;
      v14 = &v17;
    }

    else
    {
      v9 = [NSIndexPath indexPathForItem:item2 + 1 inSection:section2];
      v18 = v9;
      v14 = &v18;
    }

    v15 = [NSArray arrayWithObjects:v14 count:1];
  }

  return v15;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    cellSizeForIndexPath = [(CHAchievementsDataSource *)self cellSizeForIndexPath];
    v10 = [cellSizeForIndexPath objectForKeyedSubscript:pathCopy];

    if (v10)
    {
      [v10 CGSizeValue];
      Width = v11;
      v14 = v13;
    }

    else
    {
      v46 = viewCopy;
      v17 = [(CHAchievementsDataSource *)self siblingIndexPathsForIndexPath:pathCopy];
      dataProvider = [(CHAchievementsDataSource *)self dataProvider];
      v19 = [dataProvider achievementAtIndexPath:pathCopy];

      [(CHAchievementsDataSource *)self mainSectionCellWidth];
      v21 = v20;
      locProvider = [(CHAchievementsDataSource *)self locProvider];
      v45 = v19;
      [CHAchievementsCellContentView cellHeightForAchievement:v19 preferredWidth:0 appliesLargeCellInsets:locProvider locProvider:v21];
      v14 = v23;

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v24 = v17;
      v25 = [v24 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v48;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v48 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v47 + 1) + 8 * i);
            item = [v29 item];
            dataProvider2 = [(CHAchievementsDataSource *)self dataProvider];
            v32 = [dataProvider2 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];

            if (item < v32)
            {
              dataProvider3 = [(CHAchievementsDataSource *)self dataProvider];
              v34 = [dataProvider3 achievementAtIndexPath:v29];

              [(CHAchievementsDataSource *)self mainSectionCellWidth];
              v36 = v35;
              locProvider2 = [(CHAchievementsDataSource *)self locProvider];
              [CHAchievementsCellContentView cellHeightForAchievement:v34 preferredWidth:0 appliesLargeCellInsets:locProvider2 locProvider:v36];
              v39 = v38;

              if (v14 < v39)
              {
                v14 = v39;
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v26);
      }

      [(CHAchievementsDataSource *)self mainSectionCellWidth];
      Width = v40;
      v41 = [NSValue valueWithCGSize:?];
      cellSizeForIndexPath2 = [(CHAchievementsDataSource *)self cellSizeForIndexPath];
      [cellSizeForIndexPath2 setObject:v41 forKeyedSubscript:pathCopy];

      v10 = 0;
      viewCopy = v46;
    }
  }

  else
  {
    [viewCopy frame];
    Width = CGRectGetWidth(v53);
    recentAndRelevantDataSource = [(CHAchievementsDataSource *)self recentAndRelevantDataSource];
    [recentAndRelevantDataSource preferredCollectionViewHeight];
    v14 = v16;
  }

  v43 = Width;
  v44 = v14;
  result.height = v44;
  result.width = v43;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  if (section && [(CHAchievementsDataSource *)self collectionView:viewCopy numberOfItemsInSection:section]>= 1)
  {
    dataProvider = [(CHAchievementsDataSource *)self dataProvider];
    v11 = [dataProvider headerStringForSection:section isRecentAndRelevant:0];

    [CHAchievementsSectionHeaderView preferredSizeForSectionName:v11];
    width = v12;
    height = v14;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (UICollectionElementKindSectionHeader == kindCopy)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v11 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v13 forIndexPath:pathCopy];

    dataProvider = [(CHAchievementsDataSource *)self dataProvider];
    v15 = [dataProvider headerStringForSection:objc_msgSend(pathCopy isRecentAndRelevant:{"section"), 0}];
    [v11 configureWithSectionName:v15];
  }

  else
  {
    v11 = objc_alloc_init(UICollectionReusableView);
  }

  return v11;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  v7 = [viewCopy cellForItemAtIndexPath:pathCopy];

  achievementTappedHandler = [(CHAchievementsDataSource *)self achievementTappedHandler];

  if (achievementTappedHandler)
  {
    achievementTappedHandler2 = [(CHAchievementsDataSource *)self achievementTappedHandler];
    dataProvider = [(CHAchievementsDataSource *)self dataProvider];
    v11 = [dataProvider achievementAtIndexPath:pathCopy];
    [v7 badgeRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    contentView = [v7 contentView];
    (achievementTappedHandler2)[2](achievementTappedHandler2, v11, contentView, v7, v13, v15, v17, v19);
  }
}

- (void)achievementsDataProviderDidUpdate:(id)update
{
  cellSizeForIndexPath = [(CHAchievementsDataSource *)self cellSizeForIndexPath];
  [cellSizeForIndexPath removeAllObjects];

  collectionView = [(CHAchievementsDataSource *)self collectionView];
  [collectionView reloadData];
}

@end