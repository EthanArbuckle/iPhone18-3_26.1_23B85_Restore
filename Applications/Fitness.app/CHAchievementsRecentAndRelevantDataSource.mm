@interface CHAchievementsRecentAndRelevantDataSource
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CHAchievementsRecentAndRelevantDataSource)initWithDataProvider:(id)provider collectionView:(id)view localizationProvider:(id)localizationProvider badgeImageFactory:(id)factory;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)cellWidth;
- (double)collectionView:layout:minimumInteritemSpacingForSectionAtIndex:;
- (double)maxCellHeight;
- (double)preferredCollectionViewHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)achievementsDataProviderDidUpdate:(id)update;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)fontChanged:(id)changed;
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

- (CHAchievementsRecentAndRelevantDataSource)initWithDataProvider:(id)provider collectionView:(id)view localizationProvider:(id)localizationProvider badgeImageFactory:(id)factory
{
  providerCopy = provider;
  viewCopy = view;
  localizationProviderCopy = localizationProvider;
  factoryCopy = factory;
  v33.receiver = self;
  v33.super_class = CHAchievementsRecentAndRelevantDataSource;
  v15 = [(CHAchievementsRecentAndRelevantDataSource *)&v33 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataProvider, provider);
    [(AAUIAchievementsDataProvider *)v16->_dataProvider addRecentAndRelevantSectionObserver:v16];
    objc_storeStrong(&v16->_localizationProvider, localizationProvider);
    objc_storeStrong(&v16->_badgeImageFactory, factory);
    objc_storeStrong(&v16->_collectionView, view);
    [(UICollectionView *)v16->_collectionView setDataSource:v16];
    [(UICollectionView *)v16->_collectionView setDelegate:v16];
    collectionViewLayout = [(UICollectionView *)v16->_collectionView collectionViewLayout];
    [collectionViewLayout setScrollDirection:1];
    collectionView = v16->_collectionView;
    v32 = providerCopy;
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

    providerCopy = v32;
    [(CHAchievementsRecentAndRelevantDataSource *)v16 invalidateMaxCellHeight];
  }

  return v16;
}

- (void)fontChanged:(id)changed
{
  [(CHAchievementsRecentAndRelevantDataSource *)self invalidateMaxCellHeight];
  collectionView = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
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
    collectionView = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
    v5 = [(CHAchievementsRecentAndRelevantDataSource *)self numberOfSectionsInCollectionView:collectionView];

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
        collectionView2 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
        v8 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView:collectionView2 numberOfItemsInSection:v6];

        if (v8 >= 1)
        {
          v9 = 0;
          do
          {
            v10 = [NSIndexPath indexPathForItem:v9 inSection:v6];
            dataProvider = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
            v12 = [dataProvider recentAndRelevantAchievementAtIndexPath:v10];

            [(CHAchievementsRecentAndRelevantDataSource *)self cellWidth];
            v14 = v13;
            localizationProvider = [(CHAchievementsRecentAndRelevantDataSource *)self localizationProvider];
            [CHAchievementsCellContentView cellHeightForAchievement:v12 preferredWidth:1 appliesLargeCellInsets:localizationProvider locProvider:v14];
            v17 = v16;

            if (maxCellHeight < v17)
            {
              maxCellHeight = v17;
            }

            ++v9;
            collectionView3 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
            v19 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView:collectionView3 numberOfItemsInSection:v6];
          }

          while (v9 < v19);
        }

        ++v6;
        collectionView4 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
        v21 = [(CHAchievementsRecentAndRelevantDataSource *)self numberOfSectionsInCollectionView:collectionView4];
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataProvider = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
  v9 = [dataProvider recentAndRelevantAchievementAtIndexPath:pathCopy];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  [(CHAchievementsRecentAndRelevantDataSource *)self cellWidth];
  [v12 setPreferredWidth:?];
  [v12 setAppliesLargeCellInset:1];
  badgeImageFactory = [(CHAchievementsRecentAndRelevantDataSource *)self badgeImageFactory];
  localizationProvider = [(CHAchievementsRecentAndRelevantDataSource *)self localizationProvider];
  [v12 configureWithAchievement:v9 badgeImageFactory:badgeImageFactory locProvider:localizationProvider];

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataProvider = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
  numberOfRecentAndRelevantSections = [dataProvider numberOfRecentAndRelevantSections];

  return numberOfRecentAndRelevantSections;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataProvider = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
  v6 = [dataProvider numberOfItemsInRecentAndRelevantSection:section];

  return v6;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [(CHAchievementsRecentAndRelevantDataSource *)self cellWidth:view];
  v7 = v6;
  [(CHAchievementsRecentAndRelevantDataSource *)self maxCellHeight];
  v9 = v8;
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  left = 10.0;
  top = 0.0;
  if (index)
  {
    bottom = 0.0;
    right = 10.0;
  }

  else
  {
    v9 = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView:view numberOfItemsInSection:0];
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  if ([(CHAchievementsRecentAndRelevantDataSource *)self collectionView:view numberOfItemsInSection:section]< 1)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    dataProvider = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
    v8 = [dataProvider headerStringForSection:section isRecentAndRelevant:1];

    [CHAchievementsSectionHeaderView preferredSizeForSectionName:v8];
    height = v9;

    width = 1.0;
  }

  v12 = height;
  result.height = v12;
  result.width = width;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:UICollectionElementKindSectionHeader] && -[CHAchievementsRecentAndRelevantDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", viewCopy, objc_msgSend(pathCopy, "section")) >= 1)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v12 forIndexPath:pathCopy];

    [v13 setHidesKeyLine:1];
    dataProvider = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
    v15 = [dataProvider headerStringForSection:objc_msgSend(pathCopy isRecentAndRelevant:{"section"), 1}];
    [v13 configureWithSectionName:v15];

LABEL_13:
    goto LABEL_14;
  }

  if ([kindCopy isEqualToString:UICollectionElementKindSectionFooter] && !objc_msgSend(pathCopy, "section") && -[CHAchievementsRecentAndRelevantDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", viewCopy, objc_msgSend(pathCopy, "section")) >= 1)
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v18 forIndexPath:pathCopy];

    dataProvider = +[UIColor separatorColor];
    [v13 setBackgroundColor:dataProvider];
    goto LABEL_13;
  }

  if ([kindCopy isEqualToString:UICollectionElementKindSectionHeader] || objc_msgSend(kindCopy, "isEqualToString:", UICollectionElementKindSectionFooter))
  {
    v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"EMPTY" forIndexPath:pathCopy];
  }

  else
  {
    v16 = objc_alloc_init(UICollectionReusableView);
  }

  v13 = v16;
LABEL_14:

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  v7 = [viewCopy cellForItemAtIndexPath:pathCopy];

  achievementTappedHandler = [(CHAchievementsRecentAndRelevantDataSource *)self achievementTappedHandler];

  if (achievementTappedHandler)
  {
    achievementTappedHandler2 = [(CHAchievementsRecentAndRelevantDataSource *)self achievementTappedHandler];
    dataProvider = [(CHAchievementsRecentAndRelevantDataSource *)self dataProvider];
    v11 = [dataProvider recentAndRelevantAchievementAtIndexPath:pathCopy];
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
  [(CHAchievementsRecentAndRelevantDataSource *)self invalidateMaxCellHeight];
  collectionView = [(CHAchievementsRecentAndRelevantDataSource *)self collectionView];
  [collectionView reloadData];
}

@end