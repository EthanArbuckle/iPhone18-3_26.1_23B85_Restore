@interface SearchHomeBrowseCategoriesLayoutProvider
- (BOOL)useSingleColumn;
- (SearchHomeBrowseCategoriesLayoutProvider)initWithSearchAlongRoute:(BOOL)a3 supportsFullTextSearch:(BOOL)a4 parentViewController:(id)a5;
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5;
- (id)cellForRowAtIndexPath:(id)a3 tableview:(id)a4 item:(id)a5;
- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8;
@end

@implementation SearchHomeBrowseCategoriesLayoutProvider

- (id)cellForRowAtIndexPath:(id)a3 tableview:(id)a4 item:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = +[_TtC4Maps27BrowseCategoryTableViewCell identifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8];

  v10 = v6;
  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];

  v13 = [v10 name];
  [v9 updateContents:v13 uniqueID:v12];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100A451F4;
  v19[3] = &unk_10165FED0;
  v14 = v9;
  v20 = v14;
  v21 = v12;
  v15 = v12;
  [v10 imageWithResultHandler:v19];

  v16 = v21;
  v17 = v14;

  return v14;
}

- (BOOL)useSingleColumn
{
  v3 = [(SearchHomeBrowseCategoriesLayoutProvider *)self searchAlongRoute];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  if (!WeakRetained || (v3 & 1) != 0)
  {
    return (WeakRetained != 0) | v3 & 1;
  }

  v5 = objc_loadWeakRetained(&self->_parentViewController);
  v6 = [v5 useSingleColumnLayout];

  return v6;
}

- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8
{
  v10 = a3;
  if ([(SearchHomeBrowseCategoriesLayoutProvider *)self useSingleColumn])
  {
    v32 = v10;
    v11 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v12 = [NSCollectionLayoutDimension fractionalHeightDimension:1.0];
    v13 = [NSCollectionLayoutSize sizeWithWidthDimension:v11 heightDimension:v12];

    v14 = [NSCollectionLayoutItem itemWithLayoutSize:v13];
    v15 = [NSCollectionLayoutDimension fractionalHeightDimension:1.0];
    v16 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v17 = [NSCollectionLayoutSize sizeWithWidthDimension:v16 heightDimension:v15];

    v35 = v14;
    v18 = [NSArray arrayWithObjects:&v35 count:1];
    v19 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v17 subitems:v18];

    v20 = [NSCollectionLayoutSection sectionWithGroup:v19];
    v21 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v22 = [NSCollectionLayoutDimension estimatedDimension:a4];
    v23 = [NSCollectionLayoutSize sizeWithWidthDimension:v21 heightDimension:v22];

    v24 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v23 elementKind:UICollectionElementKindSectionHeader alignment:1];
    +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
    [v24 setContentInsets:{0.0, v25, 0.0, v25}];
    if (![(SearchHomeBrowseCategoriesLayoutProvider *)self searchAlongRoute])
    {
      v34 = v24;
      v26 = [NSArray arrayWithObjects:&v34 count:1];
      [v20 setBoundarySupplementaryItems:v26];
    }

    v10 = v32;
  }

  else
  {
    v13 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
    [v13 setHeaderMode:1];
    v27 = +[UIColor clearColor];
    [v13 setBackgroundColor:v27];

    [v13 setShowsSeparators:0];
    [v13 setHeaderTopPadding:0.0];
    v20 = [NSCollectionLayoutSection sectionWithListConfiguration:v13 layoutEnvironment:v10];
    [v20 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    v28 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v29 = [NSCollectionLayoutDimension estimatedDimension:a4];
    v14 = [NSCollectionLayoutSize sizeWithWidthDimension:v28 heightDimension:v29];

    v15 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v14 elementKind:UICollectionElementKindSectionHeader alignment:1];
    +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
    [v15 setContentInsets:{0.0, v30, 0.0, v30}];
    if ([(SearchHomeBrowseCategoriesLayoutProvider *)self searchAlongRoute])
    {
      goto LABEL_8;
    }

    v33 = v15;
    v17 = [NSArray arrayWithObjects:&v33 count:1];
    [v20 setBoundarySupplementaryItems:v17];
  }

LABEL_8:

  return v20;
}

- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SearchHomeBrowseCategoriesLayoutProvider *)self cellReuseIdentifier];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v10];

  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  [v12 configureWithCategories:v8 delegate:WeakRetained singleColumnLayout:-[SearchHomeBrowseCategoriesLayoutProvider useSingleColumn](self searchAlongRoute:{"useSingleColumn"), -[SearchHomeBrowseCategoriesLayoutProvider searchAlongRoute](self, "searchAlongRoute")}];

  return v12;
}

- (id)cellClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (SearchHomeBrowseCategoriesLayoutProvider)initWithSearchAlongRoute:(BOOL)a3 supportsFullTextSearch:(BOOL)a4 parentViewController:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v12.receiver = self;
  v12.super_class = SearchHomeBrowseCategoriesLayoutProvider;
  v9 = [(SearchHomeBrowseCategoriesLayoutProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(SearchHomeBrowseCategoriesLayoutProvider *)v9 setSearchAlongRoute:v6];
    [(SearchHomeBrowseCategoriesLayoutProvider *)v10 setSupportsFullTextSearch:v5];
    objc_storeWeak(&v10->_parentViewController, v8);
  }

  return v10;
}

@end