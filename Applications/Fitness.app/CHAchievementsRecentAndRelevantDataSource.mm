@interface CHAchievementsRecentAndRelevantDataSource
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CHAchievementsRecentAndRelevantDataSource)initWithDataProvider:(id)a3 collectionView:(id)a4 localizationProvider:(id)a5 badgeImageFactory:(id)a6;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)cellWidth;
- (double)collectionView:layout:minimumInteritemSpacingForSectionAtIndex:;
- (double)maxCellHeight;
- (double)preferredCollectionViewHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)achievementsDataProviderDidUpdate:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)fontChanged:(id)a3;
@end

@implementation CHAchievementsRecentAndRelevantDataSource

- (double)collectionView:layout:minimumInteritemSpacingForSectionAtIndex:
{
  if (qword_1008F9948 != -1)
  {
    sub_10069B5C4();
  }

  return *&qword_1008F9940;
}

- (CHAchievementsRecentAndRelevantDataSource)initWithDataProvider:(id)a3 collectionView:(id)a4 localizationProvider:(id)a5 badgeImageFactory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v33.receiver = self;
  v33.super_class = CHAchievementsRecentAndRelevantDataSource;
  v15 = [(CHAchievementsRecentAndRelevantDataSource *)&v33 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataProvider, a3);
    [(AAUIAchievementsDataProvider *)v16->_dataProvider addRecentAndRelevantSectionObserver:v16];
    objc_storeStrong(&v16->_localizationProvider, a5);
    objc_storeStrong(&v16->_badgeImageFactory, a6);
    objc_storeStrong(&v16->_collectionView, a4);
    [(UICollectionView *)v16->_collectionView setDataSource:v16];
    [(UICollectionView *)v16->_collectionView setDelegate:v16];
    v31 = [(UICollectionView *)v16->_collectionView collectionViewLayout];
    [v31 setScrollDirection:1];
    collectionView = v16->_collectionView;
    v32 = v11;
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [(UICollectionView *)collectionView registerClass:v18 forCellWithReuseIdentifier:v20];

    v21 = v16->_collectionView;
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [(UICollectionView *)v21 registerClass:v22 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v24];

    v25 = v16->_collectionView;
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    [(UICollectionView *)v25 registerClass:v26 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v28];

    [(UICollectionView *)v16->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"EMPTY"];
    [(UICollectionView *)v16->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"EMPTY"];
    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v16 selector:"fontChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v11 = v32;
    [(CHAchievementsRecentAndRelevantDataSource *)v16 invalidateMaxCellHeight];
  }

  return v16;
}

- (void)fontChanged:(id)a3
{
  [(CHAchievementsRecentAndRelevantDataSource *)self invalidateMaxCellHeight];
  v5 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
  v4 = [v5 collectionViewLayout];
  [v4 invalidateLayout];
}

- (double)preferredCollectionViewHeight
{
  [CHAchievementsSectionHeaderView preferredSizeForSectionName:@" "];
  v4 = v3;
  [(CHAchievementsRecentAndRelevantDataSource *)self maxCellHeight];
  v6 = v5;
  v7 = +[CHAchievementsSectionHeaderView headerFont];
  [v7 _scaledValueForValue:17.0];
  v9 = v8;

  return v4 + v6 + v9;
}

- (double)cellWidth
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B8D00;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  if (qword_1008F9998 != -1)
  {
    dispatch_once(&qword_1008F9998, block);
  }

  return *&qword_1008F9990;
}

- (double)maxCellHeight
{
  maxCellHeight = self->_maxCellHeight;
  if (maxCellHeight < 0.0)
  {
    v4 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
    v5 = [(CHAchievementsRecentAndRelevantDataSource *)self numberOfSectionsInCollectionView:v4];

    if (v5 < 1)
    {
      maxCellHeight = 0.0;
    }

    else
    {
      v6 = 0;
      maxCellHeight = 0.0;
      do
      {
        v7 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
        v8 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView:v7 numberOfItemsInSection:v6];

        if (v8 >= 1)
        {
          v9 = 0;
          do
          {
            v10 = [NSIndexPath indexPathForItem:v9 inSection:v6];
            v11 = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
            v12 = [v11 recentAndRelevantAchievementAtIndexPath:v10];

            [(CHAchievementsRecentAndRelevantDataSource *)self cellWidth];
            v14 = v13;
            v15 = [(CHAchievementsRecentAndRelevantDataSource *)self localizationProvider];
            [CHAchievementsCellContentView cellHeightForAchievement:v12 preferredWidth:1 appliesLargeCellInsets:v15 locProvider:v14];
            v17 = v16;

            if (maxCellHeight < v17)
            {
              maxCellHeight = v17;
            }

            ++v9;
            v18 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
            v19 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView:v18 numberOfItemsInSection:v6];
          }

          while (v9 < v19);
        }

        ++v6;
        v20 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
        v21 = [(CHAchievementsRecentAndRelevantDataSource *)self numberOfSectionsInCollectionView:v20];
      }

      while (v6 < v21);
    }

    self->_maxCellHeight = maxCellHeight;
  }

  return maxCellHeight;
}

- (void)dealloc
{
  [(AAUIAchievementsDataProvider *)self->_dataProvider removeRecentAndRelevantSectionObserver:self];
  v3.receiver = self;
  v3.super_class = CHAchievementsRecentAndRelevantDataSource;
  [(CHAchievementsRecentAndRelevantDataSource *)&v3 dealloc];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
  v9 = [v8 recentAndRelevantAchievementAtIndexPath:v6];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v6];

  [(CHAchievementsRecentAndRelevantDataSource *)self cellWidth];
  [v12 setPreferredWidth:?];
  [v12 setAppliesLargeCellInset:1];
  v13 = [(CHAchievementsRecentAndRelevantDataSource *)self badgeImageFactory];
  v14 = [(CHAchievementsRecentAndRelevantDataSource *)self localizationProvider];
  [v12 configureWithAchievement:v9 badgeImageFactory:v13 locProvider:v14];

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
  v4 = [v3 numberOfRecentAndRelevantSections];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
  v6 = [v5 numberOfItemsInRecentAndRelevantSection:a4];

  return v6;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [(CHAchievementsRecentAndRelevantDataSource *)self cellWidth:a3];
  v7 = v6;
  [(CHAchievementsRecentAndRelevantDataSource *)self maxCellHeight];
  v9 = v8;
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  left = 10.0;
  top = 0.0;
  if (a5)
  {
    bottom = 0.0;
    right = 10.0;
  }

  else
  {
    v9 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView:a3 numberOfItemsInSection:0];
    right = 29.0;
    bottom = 0.0;
    if (v9 <= 0)
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
    }
  }

  v10 = top;
  v11 = left;
  result.right = right;
  result.bottom = bottom;
  result.left = v11;
  result.top = v10;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  if ([(CHAchievementsRecentAndRelevantDataSource *)self collectionView:a3 numberOfItemsInSection:a5]< 1)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v7 = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
    v8 = [v7 headerStringForSection:a5 isRecentAndRelevant:1];

    [CHAchievementsSectionHeaderView preferredSizeForSectionName:v8];
    height = v9;

    width = 1.0;
  }

  v12 = height;
  result.height = v12;
  result.width = width;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:UICollectionElementKindSectionHeader] && -[CHAchievementsRecentAndRelevantDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", v8, objc_msgSend(v10, "section")) >= 1)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v12 forIndexPath:v10];

    [v13 setHidesKeyLine:1];
    v14 = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
    v15 = [v14 headerStringForSection:objc_msgSend(v10 isRecentAndRelevant:{"section"), 1}];
    [v13 configureWithSectionName:v15];

LABEL_13:
    goto LABEL_14;
  }

  if ([v9 isEqualToString:UICollectionElementKindSectionFooter] && !objc_msgSend(v10, "section") && -[CHAchievementsRecentAndRelevantDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", v8, objc_msgSend(v10, "section")) >= 1)
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v13 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v18 forIndexPath:v10];

    v14 = +[UIColor separatorColor];
    [v13 setBackgroundColor:v14];
    goto LABEL_13;
  }

  if ([v9 isEqualToString:UICollectionElementKindSectionHeader] || objc_msgSend(v9, "isEqualToString:", UICollectionElementKindSectionFooter))
  {
    v16 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"EMPTY" forIndexPath:v10];
  }

  else
  {
    v16 = objc_alloc_init(UICollectionReusableView);
  }

  v13 = v16;
LABEL_14:

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v21 = a4;
  v6 = a3;
  [v6 deselectItemAtIndexPath:v21 animated:1];
  v7 = [v6 cellForItemAtIndexPath:v21];

  v8 = [(CHAchievementsRecentAndRelevantDataSource *)self achievementTappedHandler];

  if (v8)
  {
    v9 = [(CHAchievementsRecentAndRelevantDataSource *)self achievementTappedHandler];
    v10 = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
    v11 = [v10 recentAndRelevantAchievementAtIndexPath:v21];
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
  [(CHAchievementsRecentAndRelevantDataSource *)self invalidateMaxCellHeight];
  v4 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
  [v4 reloadData];
}

@end