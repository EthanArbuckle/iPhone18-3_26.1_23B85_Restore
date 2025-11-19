@interface CHAchievementsDataSource
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CHAchievementsDataSource)initWithDataProvider:(id)a3 collectionView:(id)a4 recentAndRelevantCollectionView:(id)a5 recentAndRelevantDataSource:(id)a6 localizationProvider:(id)a7 badgeImageFactory:(id)a8;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)mainSectionHorizontalInset;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)siblingIndexPathsForIndexPath:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)achievementsDataProviderDidUpdate:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)textSizeDidChange:(id)a3;
@end

@implementation CHAchievementsDataSource

- (CHAchievementsDataSource)initWithDataProvider:(id)a3 collectionView:(id)a4 recentAndRelevantCollectionView:(id)a5 recentAndRelevantDataSource:(id)a6 localizationProvider:(id)a7 badgeImageFactory:(id)a8
{
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v40.receiver = self;
  v40.super_class = CHAchievementsDataSource;
  v18 = [(CHAchievementsDataSource *)&v40 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_locProvider, a7);
    objc_storeStrong(&v19->_dataProvider, a3);
    [(AAUIAchievementsDataProvider *)v19->_dataProvider addMainSectionObserver:v19];
    objc_storeStrong(&v19->_badgeImageFactory, a8);
    objc_storeStrong(&v19->_recentAndRelevantDataSource, a6);
    objc_storeStrong(&v19->_collectionView, a4);
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

    v32 = [(UICollectionView *)v19->_collectionView collectionViewLayout];
    [v32 setMinimumLineSpacing:13.0];
    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v19 selector:"textSizeDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    objc_storeStrong(&v19->_recentAndRelevantCollectionView, a5);
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

  v4 = [(CHAchievementsDataSource *)self collectionView];
  UICeilToViewScale();
  v6 = v5;

  return v6;
}

- (void)textSizeDidChange:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v5))
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
  v8 = [(CHAchievementsDataSource *)self collectionView];
  UIRoundToViewScale();
  v10 = v9;

  [(CHAchievementsDataSource *)self setMainSectionCellWidth:v10];
  v11 = [(CHAchievementsDataSource *)self cellSizeForIndexPath];
  [v11 removeAllObjects];

  v12 = [(CHAchievementsDataSource *)self collectionView];
  [v12 reloadData];
}

- (void)dealloc
{
  [(AAUIAchievementsDataProvider *)self->_dataProvider removeMainSectionObserver:self];
  v3.receiver = self;
  v3.super_class = CHAchievementsDataSource;
  [(CHAchievementsDataSource *)&v3 dealloc];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 section])
  {
    v8 = [(CHAchievementsDataSource *)self dataProvider];
    v9 = [v8 achievementAtIndexPath:v6];

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v6];

    [(CHAchievementsDataSource *)self mainSectionCellWidth];
    [v12 setPreferredWidth:?];
    v13 = [(CHAchievementsDataSource *)self badgeImageFactory];
    v14 = [(CHAchievementsDataSource *)self locProvider];
    [v12 configureWithAchievement:v9 badgeImageFactory:v13 locProvider:v14];
  }

  else
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v6];

    v9 = [(CHAchievementsDataSource *)self recentAndRelevantCollectionView];
    [v12 setCollectionView:v9];
  }

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(CHAchievementsDataSource *)self dataProvider];
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(CHAchievementsDataSource *)self dataProvider];
  v6 = [v5 numberOfItemsInSection:a4];

  return v6;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 && [(CHAchievementsDataSource *)self collectionView:v8 numberOfItemsInSection:a5])
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

- (id)siblingIndexPathsForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CHAchievementsDataSource *)self nCellsPerRow];
  v6 = [v4 item] % v5;
  if (v5 == 3)
  {
    v7 = [v4 item];
    v8 = [v4 section];
    if (v6 == 1)
    {
      v9 = [NSIndexPath indexPathForItem:v7 - 1 inSection:v8];
      v20[0] = v9;
      v10 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [v4 item] + 1, objc_msgSend(v4, "section"));
      v20[1] = v10;
      v11 = v20;
    }

    else if (v6)
    {
      v9 = [NSIndexPath indexPathForItem:v7 - 2 inSection:v8];
      v19[0] = v9;
      v10 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [v4 item] - 1, objc_msgSend(v4, "section"));
      v19[1] = v10;
      v11 = v19;
    }

    else
    {
      v9 = [NSIndexPath indexPathForItem:v7 + 1 inSection:v8];
      v21[0] = v9;
      v10 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [v4 item] + 2, objc_msgSend(v4, "section"));
      v21[1] = v10;
      v11 = v21;
    }

    v15 = [NSArray arrayWithObjects:v11 count:2];
  }

  else
  {
    v12 = [v4 item];
    v13 = [v4 section];
    if (v6)
    {
      v9 = [NSIndexPath indexPathForItem:v12 - 1 inSection:v13];
      v17 = v9;
      v14 = &v17;
    }

    else
    {
      v9 = [NSIndexPath indexPathForItem:v12 + 1 inSection:v13];
      v18 = v9;
      v14 = &v18;
    }

    v15 = [NSArray arrayWithObjects:v14 count:1];
  }

  return v15;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v8 section])
  {
    v9 = [(CHAchievementsDataSource *)self cellSizeForIndexPath];
    v10 = [v9 objectForKeyedSubscript:v8];

    if (v10)
    {
      [v10 CGSizeValue];
      Width = v11;
      v14 = v13;
    }

    else
    {
      v46 = v7;
      v17 = [(CHAchievementsDataSource *)self siblingIndexPathsForIndexPath:v8];
      v18 = [(CHAchievementsDataSource *)self dataProvider];
      v19 = [v18 achievementAtIndexPath:v8];

      [(CHAchievementsDataSource *)self mainSectionCellWidth];
      v21 = v20;
      v22 = [(CHAchievementsDataSource *)self locProvider];
      v45 = v19;
      [CHAchievementsCellContentView cellHeightForAchievement:v19 preferredWidth:0 appliesLargeCellInsets:v22 locProvider:v21];
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
            v30 = [v29 item];
            v31 = [(CHAchievementsDataSource *)self dataProvider];
            v32 = [v31 numberOfItemsInSection:{objc_msgSend(v8, "section")}];

            if (v30 < v32)
            {
              v33 = [(CHAchievementsDataSource *)self dataProvider];
              v34 = [v33 achievementAtIndexPath:v29];

              [(CHAchievementsDataSource *)self mainSectionCellWidth];
              v36 = v35;
              v37 = [(CHAchievementsDataSource *)self locProvider];
              [CHAchievementsCellContentView cellHeightForAchievement:v34 preferredWidth:0 appliesLargeCellInsets:v37 locProvider:v36];
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
      v42 = [(CHAchievementsDataSource *)self cellSizeForIndexPath];
      [v42 setObject:v41 forKeyedSubscript:v8];

      v10 = 0;
      v7 = v46;
    }
  }

  else
  {
    [v7 frame];
    Width = CGRectGetWidth(v53);
    v15 = [(CHAchievementsDataSource *)self recentAndRelevantDataSource];
    [v15 preferredCollectionViewHeight];
    v14 = v16;
  }

  v43 = Width;
  v44 = v14;
  result.height = v44;
  result.width = v43;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 && [(CHAchievementsDataSource *)self collectionView:v8 numberOfItemsInSection:a5]>= 1)
  {
    v10 = [(CHAchievementsDataSource *)self dataProvider];
    v11 = [v10 headerStringForSection:a5 isRecentAndRelevant:0];

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

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (UICollectionElementKindSectionHeader == v9)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v11 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v13 forIndexPath:v10];

    v14 = [(CHAchievementsDataSource *)self dataProvider];
    v15 = [v14 headerStringForSection:objc_msgSend(v10 isRecentAndRelevant:{"section"), 0}];
    [v11 configureWithSectionName:v15];
  }

  else
  {
    v11 = objc_alloc_init(UICollectionReusableView);
  }

  return v11;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v21 = a4;
  v6 = a3;
  [v6 deselectItemAtIndexPath:v21 animated:1];
  v7 = [v6 cellForItemAtIndexPath:v21];

  v8 = [(CHAchievementsDataSource *)self achievementTappedHandler];

  if (v8)
  {
    v9 = [(CHAchievementsDataSource *)self achievementTappedHandler];
    v10 = [(CHAchievementsDataSource *)self dataProvider];
    v11 = [v10 achievementAtIndexPath:v21];
    [v7 badgeRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [v7 contentView];
    (v9)[2](v9, v11, v20, v7, v13, v15, v17, v19);
  }
}

- (void)achievementsDataProviderDidUpdate:(id)a3
{
  v4 = [(CHAchievementsDataSource *)self cellSizeForIndexPath];
  [v4 removeAllObjects];

  v5 = [(CHAchievementsDataSource *)self collectionView];
  [v5 reloadData];
}

@end