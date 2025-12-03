@interface SearchHomePublishersLayoutProvider
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item;
- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme;
@end

@implementation SearchHomePublishersLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme
{
  environmentCopy = environment;
  themeCopy = theme;
  v14 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:environmentCopy];
  traitCollection = [environmentCopy traitCollection];
  v16 = [traitCollection userInterfaceIdiom] != 5;

  [v14 setSeparatorStyle:v16];
  +[TwoLineCollectionViewListCell estimatedCellHeight];
  [v14 setEstimatedRowHeight:?];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1005B1E78;
  v28[3] = &unk_101656500;
  v28[4] = count;
  [v14 setSeparatorInsetProvider:v28];
  [v14 setHeaderTopPadding:0.0];
  _separatorConfiguration = [v14 _separatorConfiguration];
  v18 = [_separatorConfiguration copy];

  dynamicHairlineColor = [themeCopy dynamicHairlineColor];

  [v18 _setColor:dynamicHairlineColor];
  [v14 _setSeparatorConfiguration:v18];
  v20 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v14 layoutEnvironment:environmentCopy];
  v21 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v22 = [NSCollectionLayoutDimension estimatedDimension:height];
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "The LayoutSection is nil for some reason in class - %@.", buf, 0xCu);
    }
  }

  return v20;
}

- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  cellReuseIdentifier = [(SearchHomePublishersLayoutProvider *)self cellReuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

  cellReuseIdentifier2 = [(SearchHomePublishersLayoutProvider *)self cellReuseIdentifier];
  [v12 setAccessibilityIdentifier:cellReuseIdentifier2];

  [v12 setViewModel:itemCopy];

  return v12;
}

- (id)cellClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end