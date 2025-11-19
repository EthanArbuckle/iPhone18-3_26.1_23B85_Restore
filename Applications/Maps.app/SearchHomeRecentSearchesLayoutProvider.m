@interface SearchHomeRecentSearchesLayoutProvider
- (SearchHomeRecentSearchesLayoutProvider)initWithParentViewController:(id)a3;
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5;
- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8;
@end

@implementation SearchHomeRecentSearchesLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8
{
  v11 = a3;
  [(SearchHomeRecentSearchesLayoutProvider *)self setDeletionBlock:a6];
  v12 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
  [v12 setHeaderMode:1];
  v13 = +[UIColor clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setShowsSeparators:0];
  [v12 setHeaderTopPadding:0.0];
  v14 = [NSCollectionLayoutSection sectionWithListConfiguration:v12 layoutEnvironment:v11];

  [v14 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v15 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v16 = [NSCollectionLayoutDimension estimatedDimension:a4];
  v17 = [NSCollectionLayoutSize sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v17 elementKind:UICollectionElementKindSectionHeader alignment:1];
  +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
  [v18 setContentInsets:{0.0, v19, 0.0, v19}];
  v22 = v18;
  v20 = [NSArray arrayWithObjects:&v22 count:1];
  [v14 setBoundarySupplementaryItems:v20];

  return v14;
}

- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SearchHomeRecentSearchesLayoutProvider *)self cellReuseIdentifier];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

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
  [v10 enumerateObjectsUsingBlock:v18];
  v13 = v20[5];
  WeakRetained = objc_loadWeakRetained(&self->_recentsDelegate);
  v15 = [(SearchHomeRecentSearchesLayoutProvider *)self deletionBlock];
  [v12 configureUsing:v13 delegate:WeakRetained deletionBlock:v15];

  v16 = [(SearchHomeRecentSearchesLayoutProvider *)self cellReuseIdentifier];
  [v12 setAccessibilityIdentifier:v16];

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

- (SearchHomeRecentSearchesLayoutProvider)initWithParentViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchHomeRecentSearchesLayoutProvider;
  v5 = [(SearchHomeRecentSearchesLayoutProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_recentsDelegate, v4);
  }

  return v6;
}

@end