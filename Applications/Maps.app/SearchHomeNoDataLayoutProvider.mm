@interface SearchHomeNoDataLayoutProvider
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item;
- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme;
@end

@implementation SearchHomeNoDataLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)environment estimatedHeaderHeight:(double)height estimatedFooterHeight:(double)footerHeight deletionBlock:(id)block objectsCount:(unint64_t)count mapsTheme:(id)theme
{
  footerHeight = [NSCollectionLayoutDimension fractionalWidthDimension:environment, block, count, theme, 1.0, footerHeight];
  v10 = [NSCollectionLayoutDimension fractionalHeightDimension:1.0];
  v11 = [NSCollectionLayoutSize sizeWithWidthDimension:footerHeight heightDimension:v10];

  v12 = [NSCollectionLayoutItem itemWithLayoutSize:v11];
  v13 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v14 = [NSCollectionLayoutDimension fractionalHeightDimension:1.0];
  v15 = [NSCollectionLayoutSize sizeWithWidthDimension:v13 heightDimension:v14];

  v23 = v12;
  v16 = [NSArray arrayWithObjects:&v23 count:1];
  v17 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v15 subitems:v16];

  v18 = [NSCollectionLayoutSection sectionWithGroup:v17];
  if (!v18)
  {
    v19 = sub_100798B6C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "The LayoutSection is nil for some reason in class - %@.", &v21, 0xCu);
    }
  }

  return v18;
}

- (id)cellForRowAtIndexPath:(id)path collectionView:(id)view item:(id)item
{
  viewCopy = view;
  pathCopy = path;
  cellReuseIdentifier = [(SearchHomeNoDataLayoutProvider *)self cellReuseIdentifier];
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

  [viewCopy frame];
  v12 = v11;

  LODWORD(v13) = 1144750080;
  [v10 setHeightConstraint:v12 withPriority:v13];

  return v10;
}

- (id)cellClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end