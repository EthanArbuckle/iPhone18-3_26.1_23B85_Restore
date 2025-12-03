@interface SearchHomeCuratedCollectionsLayoutProvider
- (SearchHomeCuratedCollectionsLayoutProvider)initWithTraitEnvironment:(id)environment parentViewController:(id)controller;
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item;
- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme;
@end

@implementation SearchHomeCuratedCollectionsLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme
{
  environmentCopy = environment;
  v10 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
  [v10 setHeaderMode:1];
  v11 = +[UIColor clearColor];
  [v10 setBackgroundColor:v11];

  [v10 setShowsSeparators:0];
  [v10 setHeaderTopPadding:0.0];
  v12 = [NSCollectionLayoutSection sectionWithListConfiguration:v10 layoutEnvironment:environmentCopy];

  [v12 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v13 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v14 = [NSCollectionLayoutDimension estimatedDimension:height];
  v15 = [NSCollectionLayoutSize sizeWithWidthDimension:v13 heightDimension:v14];

  v16 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v15 elementKind:UICollectionElementKindSectionHeader alignment:1];
  +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
  [v16 setContentInsets:{0.0, v17, 0.0, v17}];
  v20 = v16;
  v18 = [NSArray arrayWithObjects:&v20 count:1];
  [v12 setBoundarySupplementaryItems:v18];

  return v12;
}

- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  cellReuseIdentifier = [(SearchHomeCuratedCollectionsLayoutProvider *)self cellReuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

  v13 = +[_TtC4Maps19SearchHomeGuideCell reuseIdentifier];
  [v12 setAccessibilityIdentifier:v13];

  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  section = [pathCopy section];

  [v12 configureWithGuideViewModels:itemCopy delegate:WeakRetained sectionIndex:section];

  return v12;
}

- (id)cellClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (SearchHomeCuratedCollectionsLayoutProvider)initWithTraitEnvironment:(id)environment parentViewController:(id)controller
{
  environmentCopy = environment;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SearchHomeCuratedCollectionsLayoutProvider;
  v8 = [(SearchHomeCuratedCollectionsLayoutProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SearchHomeCuratedCollectionsLayoutProvider *)v8 setTraitEnvironment:environmentCopy];
    objc_storeWeak(&v9->_parentViewController, controllerCopy);
  }

  return v9;
}

@end