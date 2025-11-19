@interface SearchHomePublishersLayoutProvider
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5;
- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8;
@end

@implementation SearchHomePublishersLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8
{
  v12 = a3;
  v13 = a8;
  v14 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:v12];
  v15 = [v12 traitCollection];
  v16 = [v15 userInterfaceIdiom] != 5;

  [v14 setSeparatorStyle:v16];
  +[TwoLineCollectionViewListCell estimatedCellHeight];
  [v14 setEstimatedRowHeight:?];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1005B1E78;
  v28[3] = &unk_101656500;
  v28[4] = a7;
  [v14 setSeparatorInsetProvider:v28];
  [v14 setHeaderTopPadding:0.0];
  v17 = [v14 _separatorConfiguration];
  v18 = [v17 copy];

  v19 = [v13 dynamicHairlineColor];

  [v18 _setColor:v19];
  [v14 _setSeparatorConfiguration:v18];
  v20 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v14 layoutEnvironment:v12];
  v21 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v22 = [NSCollectionLayoutDimension estimatedDimension:a4];
  v23 = [NSCollectionLayoutSize sizeWithWidthDimension:v21 heightDimension:v22];

  v24 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v23 elementKind:UICollectionElementKindSectionHeader alignment:1];
  [v24 setContentInsets:{0.0, 16.0, 0.0, 16.0}];
  v31 = v24;
  v25 = [NSArray arrayWithObjects:&v31 count:1];
  [v20 setBoundarySupplementaryItems:v25];

  if (!v20)
  {
    v26 = sub_100798B6C();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = self;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "The LayoutSection is nil for some reason in class - %@.", buf, 0xCu);
    }
  }

  return v20;
}

- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SearchHomePublishersLayoutProvider *)self cellReuseIdentifier];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v10];

  v13 = [(SearchHomePublishersLayoutProvider *)self cellReuseIdentifier];
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