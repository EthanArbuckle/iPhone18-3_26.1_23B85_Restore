@interface SearchHomeCitiesLayoutProvider
- (SearchHomeCitiesLayoutProvider)initWithTraitEnvironment:(id)environment parentViewController:(id)controller;
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item;
- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme;
@end

@implementation SearchHomeCitiesLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme
{
  environmentCopy = environment;
  v10 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
  [v10 setHeaderMode:1];
  v11 = +[UIColor clearColor];
  [v10 setBackgroundColor:v11];

  [v10 setHeaderTopPadding:0.0];
  [v10 setShowsSeparators:0];
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
  cellReuseIdentifier = [(SearchHomeCitiesLayoutProvider *)self cellReuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

  v13 = +[_TtC4Maps18SearchHomeCityCell reuseIdentifier];
  [v12 setAccessibilityIdentifier:v13];

  [v12 setGuideLocationViewModels:itemCopy];
  [v12 setDelegate:self->_parentViewController];

  return v12;
}

- (id)cellClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (SearchHomeCitiesLayoutProvider)initWithTraitEnvironment:(id)environment parentViewController:(id)controller
{
  environmentCopy = environment;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SearchHomeCitiesLayoutProvider;
  v8 = [(SearchHomeCitiesLayoutProvider *)&v12 init];
  if (v8)
  {
    v9 = [[MKPlaceCompactCollectionSizeController alloc] initWithDefaultCollectionsConfigurationUsingTraitCollections:environmentCopy inContext:1];
    sizeController = v8->_sizeController;
    v8->_sizeController = v9;

    objc_storeStrong(&v8->_parentViewController, controller);
  }

  return v8;
}

@end