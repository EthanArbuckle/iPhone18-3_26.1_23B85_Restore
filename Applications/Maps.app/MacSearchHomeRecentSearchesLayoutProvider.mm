@interface MacSearchHomeRecentSearchesLayoutProvider
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item;
- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme;
@end

@implementation MacSearchHomeRecentSearchesLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme
{
  environmentCopy = environment;
  v12 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:environmentCopy];
  [v12 setSeparatorStyle:0];
  +[TwoLineCollectionViewListCell estimatedCellHeight];
  [v12 setEstimatedRowHeight:?];
  v13 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v12 layoutEnvironment:environmentCopy];

  [v13 setInterGroupSpacing:3.0];
  v14 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v15 = [NSCollectionLayoutDimension estimatedDimension:height];
  v16 = [NSCollectionLayoutSize sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v18 = [NSCollectionLayoutDimension estimatedDimension:footerHeight];
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "The layoutSection - %@ is nil for some reason in class - %@", &v25, 0x16u);
    }
  }

  return v13;
}

- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  cellReuseIdentifier = [(MacSearchHomeRecentSearchesLayoutProvider *)self cellReuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

  cellReuseIdentifier2 = [(MacSearchHomeRecentSearchesLayoutProvider *)self cellReuseIdentifier];
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