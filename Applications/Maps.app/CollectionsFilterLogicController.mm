@interface CollectionsFilterLogicController
- (CollectionsFilterLogicController)initWithCollectionView:(id)view withAllCollectionsResultFilters:(id)filters withSelectedFilterIndexPath:(id)path;
- (CollectionsFilterLogicController)initWithCollectionView:(id)view withGuidesHomeResultFilters:(id)filters withSelectedFilterIndexPath:(id)path;
- (CollectionsFilterLogicController)initWithCollectionView:(id)view withResultFilters:(id)filters withSelectedFilterIndexPath:(id)path;
- (UICollectionView)collectionView;
- (id)buildAllCollectionsFiltersWithSelectedIndexPath:(id)path;
- (id)buildGuidesHomeViewFiltersWithSelectedIndexPath:(id)path;
- (id)buildPublishersFiltersWithSelectedIndexPath:(id)path;
- (id)filterAtIndexPath:(id)path;
- (id)filterViewModels;
- (id)initForAllCollectionsViewUsingFilters:(id)filters withSelectedFilterIndexPath:(id)path;
- (id)initForGuidesHomeViewUsingFilters:(id)filters withSelectedFilterIndexPath:(id)path traitEnvironment:(id)environment;
- (id)initForPublisherViewUsingFilters:(id)filters withSelectedFilterIndexPath:(id)path;
- (id)routeToSelectedAllCollectionsFilterAtIndexPath:(id)path;
- (id)routeToSelectedFilterAtIndexPath:(id)path;
- (id)routeToSelectedGuidesHomeFilterAtIndexPath:(id)path;
- (int64_t)numberOfFilters;
- (void)displayFilters;
- (void)getFilters:(id)filters;
- (void)prepareSnapshot;
- (void)scrollToSelectedFilter;
@end

@implementation CollectionsFilterLogicController

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (id)buildGuidesHomeViewFiltersWithSelectedIndexPath:(id)path
{
  pathCopy = path;
  traitEnvironment = [(CollectionsFilterLogicController *)self traitEnvironment];
  traitCollection = [traitEnvironment traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v8 = [NSMutableArray alloc];
  allCollectionsResultFilters = [(CollectionsFilterLogicController *)self allCollectionsResultFilters];
  v10 = [v8 initWithCapacity:{objc_msgSend(allCollectionsResultFilters, "count")}];

  guidesHomeFilters = [(CollectionsFilterLogicController *)self guidesHomeFilters];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100689DB8;
  v23 = &unk_101625BB8;
  v25 = userInterfaceStyle == 2;
  v12 = v10;
  v24 = v12;
  [guidesHomeFilters enumerateObjectsUsingBlock:&v20];

  if (pathCopy)
  {
    item = [pathCopy item];
    if (item <= [v12 count])
    {
      v14 = [v12 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
      v15 = v14;
      if (v14)
      {
        [v14 modelSelected:1 isDarkMode:userInterfaceStyle == 2];
      }
    }
  }

  [(CollectionsFilterLogicController *)self setSelectedIndexPath:pathCopy, v20, v21, v22, v23];
  v16 = [[NSOrderedSet alloc] initWithArray:v12];
  array = [v16 array];
  v18 = [array copy];

  return v18;
}

- (id)buildPublishersFiltersWithSelectedIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v8 = [NSMutableArray alloc];
  publisherResultFilters = [(CollectionsFilterLogicController *)self publisherResultFilters];
  v10 = [v8 initWithCapacity:{objc_msgSend(publisherResultFilters, "count")}];

  publisherResultFilters2 = [(CollectionsFilterLogicController *)self publisherResultFilters];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10068A044;
  v23 = &unk_101625B90;
  v25 = userInterfaceStyle == 2;
  v12 = v10;
  v24 = v12;
  [publisherResultFilters2 enumerateObjectsUsingBlock:&v20];

  item = [pathCopy item];
  if (item <= [v12 count])
  {
    v14 = [v12 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    v15 = v14;
    if (v14)
    {
      [v14 modelSelected:1 isDarkMode:userInterfaceStyle == 2];
    }
  }

  [(CollectionsFilterLogicController *)self setSelectedIndexPath:pathCopy];
  v16 = [[NSOrderedSet alloc] initWithArray:v12];
  array = [v16 array];
  v18 = [array copy];

  return v18;
}

- (id)buildAllCollectionsFiltersWithSelectedIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v8 = [NSMutableArray alloc];
  allCollectionsResultFilters = [(CollectionsFilterLogicController *)self allCollectionsResultFilters];
  v10 = [v8 initWithCapacity:{objc_msgSend(allCollectionsResultFilters, "count")}];

  allCollectionsResultFilters2 = [(CollectionsFilterLogicController *)self allCollectionsResultFilters];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10068A314;
  v22 = &unk_101625B68;
  v24 = userInterfaceStyle == 2;
  v12 = v10;
  v23 = v12;
  [allCollectionsResultFilters2 enumerateObjectsUsingBlock:&v19];

  v13 = [v12 objectAtIndex:{objc_msgSend(pathCopy, "item", v19, v20, v21, v22)}];
  v14 = v13;
  if (v13)
  {
    [v13 modelSelected:1 isDarkMode:userInterfaceStyle == 2];
  }

  [(CollectionsFilterLogicController *)self setSelectedIndexPath:pathCopy];
  v15 = [[NSOrderedSet alloc] initWithArray:v12];
  array = [v15 array];
  v17 = [array copy];

  return v17;
}

- (void)prepareSnapshot
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [(CollectionsFilterLogicController *)self setSnapshot:v3];

  snapshot = [(CollectionsFilterLogicController *)self snapshot];
  v8 = @"FiltersSection";
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  [snapshot appendSectionsWithIdentifiers:v5];

  snapshot2 = [(CollectionsFilterLogicController *)self snapshot];
  filters = [(CollectionsFilterLogicController *)self filters];
  [snapshot2 appendItemsWithIdentifiers:filters];
}

- (id)routeToSelectedGuidesHomeFilterAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(CollectionsFilterLogicController *)self buildGuidesHomeViewFiltersWithSelectedIndexPath:pathCopy];
  [(CollectionsFilterLogicController *)self setFilters:v5];

  collectionView = [(CollectionsFilterLogicController *)self collectionView];

  if (collectionView)
  {
    [(CollectionsFilterLogicController *)self prepareSnapshot];
    [(CollectionsFilterLogicController *)self displayFilters];
    collectionView2 = [(CollectionsFilterLogicController *)self collectionView];
    [collectionView2 scrollToItemAtIndexPath:pathCopy atScrollPosition:16 animated:1];
  }

  if (pathCopy)
  {
    v8 = [(CollectionsFilterLogicController *)self filterAtIndexPath:pathCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)routeToSelectedAllCollectionsFilterAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(CollectionsFilterLogicController *)self buildAllCollectionsFiltersWithSelectedIndexPath:pathCopy];
  [(CollectionsFilterLogicController *)self setFilters:v5];

  collectionView = [(CollectionsFilterLogicController *)self collectionView];

  if (collectionView)
  {
    [(CollectionsFilterLogicController *)self prepareSnapshot];
    [(CollectionsFilterLogicController *)self displayFilters];
    collectionView2 = [(CollectionsFilterLogicController *)self collectionView];
    [collectionView2 scrollToItemAtIndexPath:pathCopy atScrollPosition:16 animated:1];
  }

  v8 = [(CollectionsFilterLogicController *)self filterAtIndexPath:pathCopy];

  return v8;
}

- (id)routeToSelectedFilterAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(CollectionsFilterLogicController *)self buildPublishersFiltersWithSelectedIndexPath:pathCopy];
  [(CollectionsFilterLogicController *)self setFilters:v5];

  collectionView = [(CollectionsFilterLogicController *)self collectionView];

  if (collectionView)
  {
    [(CollectionsFilterLogicController *)self prepareSnapshot];
    [(CollectionsFilterLogicController *)self displayFilters];
    collectionView2 = [(CollectionsFilterLogicController *)self collectionView];
    [collectionView2 scrollToItemAtIndexPath:pathCopy atScrollPosition:16 animated:1];
  }

  v8 = [(CollectionsFilterLogicController *)self filterAtIndexPath:pathCopy];

  return v8;
}

- (id)filterViewModels
{
  filters = [(CollectionsFilterLogicController *)self filters];
  v3 = [filters copy];

  return v3;
}

- (id)filterAtIndexPath:(id)path
{
  pathCopy = path;
  filters = [(CollectionsFilterLogicController *)self filters];
  item = [pathCopy item];

  v7 = [filters objectAtIndex:item];

  return v7;
}

- (int64_t)numberOfFilters
{
  filters = [(CollectionsFilterLogicController *)self filters];
  v3 = [filters count];

  return v3;
}

- (void)displayFilters
{
  dataSource = [(CollectionsFilterLogicController *)self dataSource];
  snapshot = [(CollectionsFilterLogicController *)self snapshot];
  [dataSource applySnapshot:snapshot animatingDifferences:0];
}

- (void)getFilters:(id)filters
{
  filtersCopy = filters;
  objc_initWeak(&location, self);
  v5 = [UICollectionViewDiffableDataSource alloc];
  collectionView = [(CollectionsFilterLogicController *)self collectionView];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10068AA48;
  v11 = &unk_101636E00;
  objc_copyWeak(&v12, &location);
  v7 = [v5 initWithCollectionView:collectionView cellProvider:&v8];
  [(CollectionsFilterLogicController *)self setDataSource:v7, v8, v9, v10, v11];

  [(CollectionsFilterLogicController *)self prepareSnapshot];
  if (filtersCopy)
  {
    filtersCopy[2](filtersCopy);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)scrollToSelectedFilter
{
  collectionView = [(CollectionsFilterLogicController *)self collectionView];
  selectedIndexPath = [(CollectionsFilterLogicController *)self selectedIndexPath];
  v9 = [collectionView layoutAttributesForItemAtIndexPath:selectedIndexPath];

  v5 = v9;
  if (v9)
  {
    [v9 frame];
    v12.origin.x = CGRectZero.origin.x;
    v12.origin.y = CGRectZero.origin.y;
    v12.size.width = CGRectZero.size.width;
    v12.size.height = CGRectZero.size.height;
    if (CGRectEqualToRect(v11, v12))
    {
      collectionView2 = [(CollectionsFilterLogicController *)self collectionView];
      [collectionView2 layoutIfNeeded];
    }

    collectionView3 = [(CollectionsFilterLogicController *)self collectionView];
    selectedFilterIndexPath = [(CollectionsFilterLogicController *)self selectedFilterIndexPath];
    [collectionView3 scrollToItemAtIndexPath:selectedFilterIndexPath atScrollPosition:16 animated:0];

    v5 = v9;
  }
}

- (id)initForGuidesHomeViewUsingFilters:(id)filters withSelectedFilterIndexPath:(id)path traitEnvironment:(id)environment
{
  filtersCopy = filters;
  pathCopy = path;
  environmentCopy = environment;
  v17.receiver = self;
  v17.super_class = CollectionsFilterLogicController;
  v12 = [(CollectionsFilterLogicController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_guidesHomeFilters, filters);
    objc_storeStrong(&v13->_traitEnvironment, environment);
    v14 = [(CollectionsFilterLogicController *)v13 buildGuidesHomeViewFiltersWithSelectedIndexPath:pathCopy];
    filters = v13->_filters;
    v13->_filters = v14;
  }

  return v13;
}

- (id)initForPublisherViewUsingFilters:(id)filters withSelectedFilterIndexPath:(id)path
{
  filtersCopy = filters;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = CollectionsFilterLogicController;
  v9 = [(CollectionsFilterLogicController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_publisherResultFilters, filters);
    if (pathCopy)
    {
      v11 = [(CollectionsFilterLogicController *)v10 buildPublishersFiltersWithSelectedIndexPath:pathCopy];
      filters = v10->_filters;
      v10->_filters = v11;
    }

    else
    {
      filters = [NSIndexPath indexPathForRow:0 inSection:0];
      v13 = [(CollectionsFilterLogicController *)v10 buildPublishersFiltersWithSelectedIndexPath:filters];
      v14 = v10->_filters;
      v10->_filters = v13;
    }
  }

  return v10;
}

- (id)initForAllCollectionsViewUsingFilters:(id)filters withSelectedFilterIndexPath:(id)path
{
  filtersCopy = filters;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = CollectionsFilterLogicController;
  v9 = [(CollectionsFilterLogicController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_allCollectionsResultFilters, filters);
    if (pathCopy)
    {
      v11 = [(CollectionsFilterLogicController *)v10 buildAllCollectionsFiltersWithSelectedIndexPath:pathCopy];
      filters = v10->_filters;
      v10->_filters = v11;
    }

    else
    {
      filters = [NSIndexPath indexPathForRow:0 inSection:0];
      v13 = [(CollectionsFilterLogicController *)v10 buildAllCollectionsFiltersWithSelectedIndexPath:filters];
      v14 = v10->_filters;
      v10->_filters = v13;
    }
  }

  return v10;
}

- (CollectionsFilterLogicController)initWithCollectionView:(id)view withGuidesHomeResultFilters:(id)filters withSelectedFilterIndexPath:(id)path
{
  viewCopy = view;
  filtersCopy = filters;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = CollectionsFilterLogicController;
  v11 = [(CollectionsFilterLogicController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_collectionView, viewCopy);
    objc_storeStrong(&v12->_guidesHomeFilters, filters);
    v13 = [(CollectionsFilterLogicController *)v12 buildGuidesHomeViewFiltersWithSelectedIndexPath:pathCopy];
    filters = v12->_filters;
    v12->_filters = v13;

    v15 = objc_opt_class();
    v16 = +[CollectionsFilterCell reuseIdentifier];
    [viewCopy registerClass:v15 forCellWithReuseIdentifier:v16];
  }

  return v12;
}

- (CollectionsFilterLogicController)initWithCollectionView:(id)view withAllCollectionsResultFilters:(id)filters withSelectedFilterIndexPath:(id)path
{
  viewCopy = view;
  filtersCopy = filters;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = CollectionsFilterLogicController;
  v11 = [(CollectionsFilterLogicController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_collectionView, viewCopy);
    objc_storeStrong(&v12->_allCollectionsResultFilters, filters);
    if (pathCopy)
    {
      v13 = [(CollectionsFilterLogicController *)v12 buildAllCollectionsFiltersWithSelectedIndexPath:pathCopy];
      filters = v12->_filters;
      v12->_filters = v13;
    }

    else
    {
      filters = [NSIndexPath indexPathForRow:0 inSection:0];
      v15 = [(CollectionsFilterLogicController *)v12 buildAllCollectionsFiltersWithSelectedIndexPath:filters];
      v16 = v12->_filters;
      v12->_filters = v15;
    }

    v17 = objc_opt_class();
    v18 = +[CollectionsFilterCell reuseIdentifier];
    [viewCopy registerClass:v17 forCellWithReuseIdentifier:v18];
  }

  return v12;
}

- (CollectionsFilterLogicController)initWithCollectionView:(id)view withResultFilters:(id)filters withSelectedFilterIndexPath:(id)path
{
  viewCopy = view;
  filtersCopy = filters;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = CollectionsFilterLogicController;
  v11 = [(CollectionsFilterLogicController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_collectionView, viewCopy);
    objc_storeStrong(&v12->_publisherResultFilters, filters);
    if (pathCopy)
    {
      v13 = [(CollectionsFilterLogicController *)v12 buildPublishersFiltersWithSelectedIndexPath:pathCopy];
      filters = v12->_filters;
      v12->_filters = v13;
    }

    else
    {
      filters = [NSIndexPath indexPathForRow:0 inSection:0];
      v15 = [(CollectionsFilterLogicController *)v12 buildPublishersFiltersWithSelectedIndexPath:filters];
      v16 = v12->_filters;
      v12->_filters = v15;
    }

    v17 = objc_opt_class();
    v18 = +[CollectionsFilterCell reuseIdentifier];
    [viewCopy registerClass:v17 forCellWithReuseIdentifier:v18];
  }

  return v12;
}

@end