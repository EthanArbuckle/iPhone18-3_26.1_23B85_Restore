@interface CollectionsFilterLogicController
- (CollectionsFilterLogicController)initWithCollectionView:(id)a3 withAllCollectionsResultFilters:(id)a4 withSelectedFilterIndexPath:(id)a5;
- (CollectionsFilterLogicController)initWithCollectionView:(id)a3 withGuidesHomeResultFilters:(id)a4 withSelectedFilterIndexPath:(id)a5;
- (CollectionsFilterLogicController)initWithCollectionView:(id)a3 withResultFilters:(id)a4 withSelectedFilterIndexPath:(id)a5;
- (UICollectionView)collectionView;
- (id)buildAllCollectionsFiltersWithSelectedIndexPath:(id)a3;
- (id)buildGuidesHomeViewFiltersWithSelectedIndexPath:(id)a3;
- (id)buildPublishersFiltersWithSelectedIndexPath:(id)a3;
- (id)filterAtIndexPath:(id)a3;
- (id)filterViewModels;
- (id)initForAllCollectionsViewUsingFilters:(id)a3 withSelectedFilterIndexPath:(id)a4;
- (id)initForGuidesHomeViewUsingFilters:(id)a3 withSelectedFilterIndexPath:(id)a4 traitEnvironment:(id)a5;
- (id)initForPublisherViewUsingFilters:(id)a3 withSelectedFilterIndexPath:(id)a4;
- (id)routeToSelectedAllCollectionsFilterAtIndexPath:(id)a3;
- (id)routeToSelectedFilterAtIndexPath:(id)a3;
- (id)routeToSelectedGuidesHomeFilterAtIndexPath:(id)a3;
- (int64_t)numberOfFilters;
- (void)displayFilters;
- (void)getFilters:(id)a3;
- (void)prepareSnapshot;
- (void)scrollToSelectedFilter;
@end

@implementation CollectionsFilterLogicController

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (id)buildGuidesHomeViewFiltersWithSelectedIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CollectionsFilterLogicController *)self traitEnvironment];
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = [NSMutableArray alloc];
  v9 = [(CollectionsFilterLogicController *)self allCollectionsResultFilters];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v11 = [(CollectionsFilterLogicController *)self guidesHomeFilters];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100689DB8;
  v23 = &unk_101625BB8;
  v25 = v7 == 2;
  v12 = v10;
  v24 = v12;
  [v11 enumerateObjectsUsingBlock:&v20];

  if (v4)
  {
    v13 = [v4 item];
    if (v13 <= [v12 count])
    {
      v14 = [v12 objectAtIndex:{objc_msgSend(v4, "item")}];
      v15 = v14;
      if (v14)
      {
        [v14 modelSelected:1 isDarkMode:v7 == 2];
      }
    }
  }

  [(CollectionsFilterLogicController *)self setSelectedIndexPath:v4, v20, v21, v22, v23];
  v16 = [[NSOrderedSet alloc] initWithArray:v12];
  v17 = [v16 array];
  v18 = [v17 copy];

  return v18;
}

- (id)buildPublishersFiltersWithSelectedIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v6 = [WeakRetained traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = [NSMutableArray alloc];
  v9 = [(CollectionsFilterLogicController *)self publisherResultFilters];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v11 = [(CollectionsFilterLogicController *)self publisherResultFilters];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10068A044;
  v23 = &unk_101625B90;
  v25 = v7 == 2;
  v12 = v10;
  v24 = v12;
  [v11 enumerateObjectsUsingBlock:&v20];

  v13 = [v4 item];
  if (v13 <= [v12 count])
  {
    v14 = [v12 objectAtIndex:{objc_msgSend(v4, "item")}];
    v15 = v14;
    if (v14)
    {
      [v14 modelSelected:1 isDarkMode:v7 == 2];
    }
  }

  [(CollectionsFilterLogicController *)self setSelectedIndexPath:v4];
  v16 = [[NSOrderedSet alloc] initWithArray:v12];
  v17 = [v16 array];
  v18 = [v17 copy];

  return v18;
}

- (id)buildAllCollectionsFiltersWithSelectedIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v6 = [WeakRetained traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = [NSMutableArray alloc];
  v9 = [(CollectionsFilterLogicController *)self allCollectionsResultFilters];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v11 = [(CollectionsFilterLogicController *)self allCollectionsResultFilters];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10068A314;
  v22 = &unk_101625B68;
  v24 = v7 == 2;
  v12 = v10;
  v23 = v12;
  [v11 enumerateObjectsUsingBlock:&v19];

  v13 = [v12 objectAtIndex:{objc_msgSend(v4, "item", v19, v20, v21, v22)}];
  v14 = v13;
  if (v13)
  {
    [v13 modelSelected:1 isDarkMode:v7 == 2];
  }

  [(CollectionsFilterLogicController *)self setSelectedIndexPath:v4];
  v15 = [[NSOrderedSet alloc] initWithArray:v12];
  v16 = [v15 array];
  v17 = [v16 copy];

  return v17;
}

- (void)prepareSnapshot
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [(CollectionsFilterLogicController *)self setSnapshot:v3];

  v4 = [(CollectionsFilterLogicController *)self snapshot];
  v8 = @"FiltersSection";
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 appendSectionsWithIdentifiers:v5];

  v6 = [(CollectionsFilterLogicController *)self snapshot];
  v7 = [(CollectionsFilterLogicController *)self filters];
  [v6 appendItemsWithIdentifiers:v7];
}

- (id)routeToSelectedGuidesHomeFilterAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CollectionsFilterLogicController *)self buildGuidesHomeViewFiltersWithSelectedIndexPath:v4];
  [(CollectionsFilterLogicController *)self setFilters:v5];

  v6 = [(CollectionsFilterLogicController *)self collectionView];

  if (v6)
  {
    [(CollectionsFilterLogicController *)self prepareSnapshot];
    [(CollectionsFilterLogicController *)self displayFilters];
    v7 = [(CollectionsFilterLogicController *)self collectionView];
    [v7 scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:1];
  }

  if (v4)
  {
    v8 = [(CollectionsFilterLogicController *)self filterAtIndexPath:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)routeToSelectedAllCollectionsFilterAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CollectionsFilterLogicController *)self buildAllCollectionsFiltersWithSelectedIndexPath:v4];
  [(CollectionsFilterLogicController *)self setFilters:v5];

  v6 = [(CollectionsFilterLogicController *)self collectionView];

  if (v6)
  {
    [(CollectionsFilterLogicController *)self prepareSnapshot];
    [(CollectionsFilterLogicController *)self displayFilters];
    v7 = [(CollectionsFilterLogicController *)self collectionView];
    [v7 scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:1];
  }

  v8 = [(CollectionsFilterLogicController *)self filterAtIndexPath:v4];

  return v8;
}

- (id)routeToSelectedFilterAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CollectionsFilterLogicController *)self buildPublishersFiltersWithSelectedIndexPath:v4];
  [(CollectionsFilterLogicController *)self setFilters:v5];

  v6 = [(CollectionsFilterLogicController *)self collectionView];

  if (v6)
  {
    [(CollectionsFilterLogicController *)self prepareSnapshot];
    [(CollectionsFilterLogicController *)self displayFilters];
    v7 = [(CollectionsFilterLogicController *)self collectionView];
    [v7 scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:1];
  }

  v8 = [(CollectionsFilterLogicController *)self filterAtIndexPath:v4];

  return v8;
}

- (id)filterViewModels
{
  v2 = [(CollectionsFilterLogicController *)self filters];
  v3 = [v2 copy];

  return v3;
}

- (id)filterAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CollectionsFilterLogicController *)self filters];
  v6 = [v4 item];

  v7 = [v5 objectAtIndex:v6];

  return v7;
}

- (int64_t)numberOfFilters
{
  v2 = [(CollectionsFilterLogicController *)self filters];
  v3 = [v2 count];

  return v3;
}

- (void)displayFilters
{
  v4 = [(CollectionsFilterLogicController *)self dataSource];
  v3 = [(CollectionsFilterLogicController *)self snapshot];
  [v4 applySnapshot:v3 animatingDifferences:0];
}

- (void)getFilters:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [UICollectionViewDiffableDataSource alloc];
  v6 = [(CollectionsFilterLogicController *)self collectionView];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10068AA48;
  v11 = &unk_101636E00;
  objc_copyWeak(&v12, &location);
  v7 = [v5 initWithCollectionView:v6 cellProvider:&v8];
  [(CollectionsFilterLogicController *)self setDataSource:v7, v8, v9, v10, v11];

  [(CollectionsFilterLogicController *)self prepareSnapshot];
  if (v4)
  {
    v4[2](v4);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)scrollToSelectedFilter
{
  v3 = [(CollectionsFilterLogicController *)self collectionView];
  v4 = [(CollectionsFilterLogicController *)self selectedIndexPath];
  v9 = [v3 layoutAttributesForItemAtIndexPath:v4];

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
      v6 = [(CollectionsFilterLogicController *)self collectionView];
      [v6 layoutIfNeeded];
    }

    v7 = [(CollectionsFilterLogicController *)self collectionView];
    v8 = [(CollectionsFilterLogicController *)self selectedFilterIndexPath];
    [v7 scrollToItemAtIndexPath:v8 atScrollPosition:16 animated:0];

    v5 = v9;
  }
}

- (id)initForGuidesHomeViewUsingFilters:(id)a3 withSelectedFilterIndexPath:(id)a4 traitEnvironment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CollectionsFilterLogicController;
  v12 = [(CollectionsFilterLogicController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_guidesHomeFilters, a3);
    objc_storeStrong(&v13->_traitEnvironment, a5);
    v14 = [(CollectionsFilterLogicController *)v13 buildGuidesHomeViewFiltersWithSelectedIndexPath:v10];
    filters = v13->_filters;
    v13->_filters = v14;
  }

  return v13;
}

- (id)initForPublisherViewUsingFilters:(id)a3 withSelectedFilterIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CollectionsFilterLogicController;
  v9 = [(CollectionsFilterLogicController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_publisherResultFilters, a3);
    if (v8)
    {
      v11 = [(CollectionsFilterLogicController *)v10 buildPublishersFiltersWithSelectedIndexPath:v8];
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

- (id)initForAllCollectionsViewUsingFilters:(id)a3 withSelectedFilterIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CollectionsFilterLogicController;
  v9 = [(CollectionsFilterLogicController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_allCollectionsResultFilters, a3);
    if (v8)
    {
      v11 = [(CollectionsFilterLogicController *)v10 buildAllCollectionsFiltersWithSelectedIndexPath:v8];
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

- (CollectionsFilterLogicController)initWithCollectionView:(id)a3 withGuidesHomeResultFilters:(id)a4 withSelectedFilterIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = CollectionsFilterLogicController;
  v11 = [(CollectionsFilterLogicController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_collectionView, v8);
    objc_storeStrong(&v12->_guidesHomeFilters, a4);
    v13 = [(CollectionsFilterLogicController *)v12 buildGuidesHomeViewFiltersWithSelectedIndexPath:v10];
    filters = v12->_filters;
    v12->_filters = v13;

    v15 = objc_opt_class();
    v16 = +[CollectionsFilterCell reuseIdentifier];
    [v8 registerClass:v15 forCellWithReuseIdentifier:v16];
  }

  return v12;
}

- (CollectionsFilterLogicController)initWithCollectionView:(id)a3 withAllCollectionsResultFilters:(id)a4 withSelectedFilterIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CollectionsFilterLogicController;
  v11 = [(CollectionsFilterLogicController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_collectionView, v8);
    objc_storeStrong(&v12->_allCollectionsResultFilters, a4);
    if (v10)
    {
      v13 = [(CollectionsFilterLogicController *)v12 buildAllCollectionsFiltersWithSelectedIndexPath:v10];
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
    [v8 registerClass:v17 forCellWithReuseIdentifier:v18];
  }

  return v12;
}

- (CollectionsFilterLogicController)initWithCollectionView:(id)a3 withResultFilters:(id)a4 withSelectedFilterIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CollectionsFilterLogicController;
  v11 = [(CollectionsFilterLogicController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_collectionView, v8);
    objc_storeStrong(&v12->_publisherResultFilters, a4);
    if (v10)
    {
      v13 = [(CollectionsFilterLogicController *)v12 buildPublishersFiltersWithSelectedIndexPath:v10];
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
    [v8 registerClass:v17 forCellWithReuseIdentifier:v18];
  }

  return v12;
}

@end