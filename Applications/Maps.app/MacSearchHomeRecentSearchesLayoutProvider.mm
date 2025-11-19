@interface MacSearchHomeRecentSearchesLayoutProvider
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5;
- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8;
@end

@implementation MacSearchHomeRecentSearchesLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8
{
  v11 = a3;
  v12 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:v11];
  [v12 setSeparatorStyle:0];
  +[TwoLineCollectionViewListCell estimatedCellHeight];
  [v12 setEstimatedRowHeight:?];
  v13 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v12 layoutEnvironment:v11];

  [v13 setInterGroupSpacing:3.0];
  v14 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v15 = [NSCollectionLayoutDimension estimatedDimension:a4];
  v16 = [NSCollectionLayoutSize sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v18 = [NSCollectionLayoutDimension estimatedDimension:a5];
  v19 = [NSCollectionLayoutSize sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v16 elementKind:UICollectionElementKindSectionHeader alignment:1];
  v21 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v19 elementKind:UICollectionElementKindSectionFooter alignment:5];
  v29[0] = v20;
  v29[1] = v21;
  v22 = [NSArray arrayWithObjects:v29 count:2];
  [v13 setBoundarySupplementaryItems:v22];

  if (!v13)
  {
    v23 = sub_100798B6C();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = 138412546;
      v26 = 0;
      v27 = 2112;
      v28 = self;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "The layoutSection - %@ is nil for some reason in class - %@", &v25, 0x16u);
    }
  }

  return v13;
}

- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MacSearchHomeRecentSearchesLayoutProvider *)self cellReuseIdentifier];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v10];

  v13 = [(MacSearchHomeRecentSearchesLayoutProvider *)self cellReuseIdentifier];
  [v12 setAccessibilityIdentifier:v13];

  [v12 setViewModel:v8];

  return v12;
}

- (id)cellClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end