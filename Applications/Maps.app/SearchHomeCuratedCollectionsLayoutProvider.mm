@interface SearchHomeCuratedCollectionsLayoutProvider
- (SearchHomeCuratedCollectionsLayoutProvider)initWithTraitEnvironment:(id)a3 parentViewController:(id)a4;
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5;
- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8;
@end

@implementation SearchHomeCuratedCollectionsLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8
{
  v9 = a3;
  v10 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
  [v10 setHeaderMode:1];
  v11 = +[UIColor clearColor];
  [v10 setBackgroundColor:v11];

  [v10 setShowsSeparators:0];
  [v10 setHeaderTopPadding:0.0];
  v12 = [NSCollectionLayoutSection sectionWithListConfiguration:v10 layoutEnvironment:v9];

  [v12 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v13 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v14 = [NSCollectionLayoutDimension estimatedDimension:a4];
  v15 = [NSCollectionLayoutSize sizeWithWidthDimension:v13 heightDimension:v14];

  v16 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v15 elementKind:UICollectionElementKindSectionHeader alignment:1];
  +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
  [v16 setContentInsets:{0.0, v17, 0.0, v17}];
  v20 = v16;
  v18 = [NSArray arrayWithObjects:&v20 count:1];
  [v12 setBoundarySupplementaryItems:v18];

  return v12;
}

- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SearchHomeCuratedCollectionsLayoutProvider *)self cellReuseIdentifier];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v10];

  v13 = +[_TtC4Maps19SearchHomeGuideCell reuseIdentifier];
  [v12 setAccessibilityIdentifier:v13];

  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  v15 = [v10 section];

  [v12 configureWithGuideViewModels:v8 delegate:WeakRetained sectionIndex:v15];

  return v12;
}

- (id)cellClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (SearchHomeCuratedCollectionsLayoutProvider)initWithTraitEnvironment:(id)a3 parentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SearchHomeCuratedCollectionsLayoutProvider;
  v8 = [(SearchHomeCuratedCollectionsLayoutProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SearchHomeCuratedCollectionsLayoutProvider *)v8 setTraitEnvironment:v6];
    objc_storeWeak(&v9->_parentViewController, v7);
  }

  return v9;
}

@end