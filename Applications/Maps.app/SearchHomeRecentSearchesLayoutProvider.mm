@interface SearchHomeRecentSearchesLayoutProvider
- (SearchHomeRecentSearchesLayoutProvider)initWithParentViewController:(id)controller;
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item;
- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme;
@end

@implementation SearchHomeRecentSearchesLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme
{
  environmentCopy = environment;
  [(SearchHomeRecentSearchesLayoutProvider *)self setDeletionBlock:block];
  v12 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
  [v12 setHeaderMode:1];
  v13 = +[UIColor clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setShowsSeparators:0];
  [v12 setHeaderTopPadding:0.0];
  v14 = [NSCollectionLayoutSection sectionWithListConfiguration:v12 layoutEnvironment:environmentCopy];

  [v14 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v15 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v16 = [NSCollectionLayoutDimension estimatedDimension:height];
  v17 = [NSCollectionLayoutSize sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v17 elementKind:UICollectionElementKindSectionHeader alignment:1];
  +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
  [v18 setContentInsets:{0.0, v19, 0.0, v19}];
  v22 = v18;
  v20 = [NSArray arrayWithObjects:&v22 count:1];
  [v14 setBoundarySupplementaryItems:v20];

  return v14;
}

- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  cellReuseIdentifier = [(SearchHomeRecentSearchesLayoutProvider *)self cellReuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100FCAED0;
  v27[4] = sub_100FCAEE0;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_100FCAED0;
  v25[4] = sub_100FCAEE0;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100FCAED0;
  v23 = sub_100FCAEE0;
  v24 = objc_alloc_init(NSMutableArray);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100FCAEE8;
  v18[3] = &unk_101660338;
  v18[4] = v27;
  v18[5] = v25;
  v18[6] = &v19;
  [itemCopy enumerateObjectsUsingBlock:v18];
  v13 = v20[5];
  WeakRetained = objc_loadWeakRetained(&self->_recentsDelegate);
  deletionBlock = [(SearchHomeRecentSearchesLayoutProvider *)self deletionBlock];
  [v12 configureUsing:v13 delegate:WeakRetained deletionBlock:deletionBlock];

  cellReuseIdentifier2 = [(SearchHomeRecentSearchesLayoutProvider *)self cellReuseIdentifier];
  [v12 setAccessibilityIdentifier:cellReuseIdentifier2];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v25, 8);

  _Block_object_dispose(v27, 8);

  return v12;
}

- (id)cellClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (SearchHomeRecentSearchesLayoutProvider)initWithParentViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SearchHomeRecentSearchesLayoutProvider;
  v5 = [(SearchHomeRecentSearchesLayoutProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_recentsDelegate, controllerCopy);
  }

  return v6;
}

@end