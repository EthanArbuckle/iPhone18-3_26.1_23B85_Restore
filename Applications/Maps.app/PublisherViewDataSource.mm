@interface PublisherViewDataSource
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MKCollectionCarouselRoutingDelegate)routingDelegate;
- (PublisherViewDataSource)initWithCollectionView:(id)view usingCuratedCollections:(id)collections usingPlaceCollectionIds:(id)ids withResultFilters:(id)filters withAPIController:(id)controller withCollectionRoutingDelegate:(id)delegate usingAnalyticsManager:(id)manager usingPublisherActionsManager:(id)self0;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)clearPublisherData;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections;
- (void)dealloc;
- (void)didRouteToAddressFilter:(id)filter atIndexPath:(id)path;
- (void)didRouteToKeywordFilter:(id)filter atIndexPath:(id)path;
- (void)didTapTryAgainOnErrorView;
- (void)dismissedCollections;
- (void)displayCollections:(id)collections;
- (void)filterDataFetchStarted;
- (void)updateCollections:(id)collections usingBatchIdentifiers:(id)identifiers;
@end

@implementation PublisherViewDataSource

- (MKCollectionCarouselRoutingDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections
{
  logicController = [(PublisherViewDataSource *)self logicController];
  [logicController refreshCollections];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(PublisherViewDataSource *)self logicController];
  v7 = [logicController sectionKindAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v7 != 1)
  {
    logicController2 = [(PublisherViewDataSource *)self logicController];
    [logicController2 willDisplayCellAtIndexpath:pathCopy];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(PublisherViewDataSource *)self logicController];
  v6 = [logicController sectionKindAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v6 != 1)
  {
    routingDelegate = [(PublisherViewDataSource *)self routingDelegate];
    logicController2 = [(PublisherViewDataSource *)self logicController];
    v9 = [logicController2 geoCollectionAtIndex:{objc_msgSend(pathCopy, "item")}];
    [routingDelegate routeToCuratedCollection:v9];

    analyticsManager = [(PublisherViewDataSource *)self analyticsManager];
    logicController3 = [(PublisherViewDataSource *)self logicController];
    v12 = [logicController3 identifierForCollectionAtIndex:{objc_msgSend(pathCopy, "item")}];
    item = [pathCopy item];
    logicController4 = [(PublisherViewDataSource *)self logicController];
    [analyticsManager publisherCollectionTapped:v12 atIndex:item isCurrentlySaved:{objc_msgSend(logicController4, "isCollectionSavedAtIndex:", objc_msgSend(pathCopy, "item"))}];
  }
}

- (void)dismissedCollections
{
  logicController = [(PublisherViewDataSource *)self logicController];
  [logicController dismissedCollections];
}

- (void)updateCollections:(id)collections usingBatchIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  collectionsCopy = collections;
  logicController = [(PublisherViewDataSource *)self logicController];
  apiController = [(PublisherViewDataSource *)self apiController];
  apiController2 = [(PublisherViewDataSource *)self apiController];
  [logicController updateCollections:collectionsCopy usingBatchedIdentifiers:identifiersCopy usingCollectionFetcher:apiController usingBatchSize:{objc_msgSend(apiController2, "batchSize")}];
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  v7 = [(PublisherViewDataSource *)self logicController:view];
  v8 = [v7 sectionKindAtIndex:index];

  if (v8 == 1)
  {
    return 0.0;
  }

  sizeController = [(PublisherViewDataSource *)self sizeController];
  [sizeController minimumInterItemSpacing];
  v12 = v11;

  return v12;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  v7 = [(PublisherViewDataSource *)self logicController:view];
  v8 = [v7 sectionKindAtIndex:index];

  if (v8 == 1)
  {
    return 0.0;
  }

  sizeController = [(PublisherViewDataSource *)self sizeController];
  [sizeController minimumInterItemSpacing];
  v12 = v11;

  return v12;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v7 = [(PublisherViewDataSource *)self logicController:view];
  v8 = [v7 sectionKindAtIndex:index];

  if (v8 == 1)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    sizeController = [(PublisherViewDataSource *)self sizeController];
    [sizeController sectionInsets];
    top = v14;
    left = v15;
    bottom = v16;
    right = v17;
  }

  v18 = top;
  v19 = left;
  v20 = bottom;
  v21 = right;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  logicController = [(PublisherViewDataSource *)self logicController];
  section = [pathCopy section];

  v11 = [logicController sectionKindAtIndex:section];
  if (v11 == 1)
  {
    [viewCopy frame];
    v13 = v12;
    v14 = 100.0;
  }

  else
  {
    sizeController = [(PublisherViewDataSource *)self sizeController];
    [viewCopy frame];
    [sizeController sizeForCollectionWithMaxCollectionsWidth:v16];
    v13 = v17;
    v19 = v18;

    sizeController2 = [(PublisherViewDataSource *)self sizeController];
    [sizeController2 sectionInsets];
    v14 = v19 - v21;
  }

  v22 = v13;
  v23 = v14;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  logicController = [(PublisherViewDataSource *)self logicController];
  v9 = [logicController sectionKindAtIndex:section];

  if (v9 == 1)
  {
    goto LABEL_2;
  }

  if (sub_10000FA08(viewCopy) != 5)
  {
    v16 = [PublisherActionView alloc];
    [viewCopy frame];
    v17 = [(PublisherActionView *)v16 initWithFrame:0.0, 0.0];
    actionsManager = [(PublisherViewDataSource *)self actionsManager];
    apiController = [(PublisherViewDataSource *)self apiController];
    publisherViewResultFilters = [apiController publisherViewResultFilters];
    selectedFilterIndexPath = [(PublisherViewDataSource *)self selectedFilterIndexPath];
    [(PublisherActionView *)v17 configureWithActionManager:actionsManager publishersResultFilters:publisherViewResultFilters routingDelegate:self selectedFilterIndex:selectedFilterIndexPath];

    [(PublisherActionView *)v17 frame];
    v23 = v22;
    v25 = v24;
    LODWORD(v22) = 1144750080;
    LODWORD(v24) = 1132068864;
    [(PublisherActionView *)v17 systemLayoutSizeFittingSize:v23 withHorizontalFittingPriority:v25 verticalFittingPriority:v22, v24];
    width = v26;
    height = v27;

    goto LABEL_7;
  }

  resultFilters = [(PublisherViewDataSource *)self resultFilters];
  v13 = [resultFilters count];

  if (v13 == 1)
  {
LABEL_2:
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    [viewCopy frame];
    width = v14;
    [CollectionsFilterMenu defaultHeightForDisplayStyle:1 inContext:0];
    height = v15;
  }

LABEL_7:

  v28 = width;
  v29 = height;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)didRouteToAddressFilter:(id)filter atIndexPath:(id)path
{
  filterCopy = filter;
  pathCopy = path;
  apiController = [(PublisherViewDataSource *)self apiController];
  [apiController cancelFetchingPublisher];

  [(PublisherViewDataSource *)self setSelectedFilterIndexPath:pathCopy];
  [(PublisherViewDataSource *)self filterDataFetchStarted];
  objc_initWeak(&location, self);
  apiController2 = [(PublisherViewDataSource *)self apiController];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100FD6430;
  v15 = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  [apiController2 fetchPublisherViewForKeywordFilter:0 addressFilter:filterCopy onCompletion:&v12];

  v10 = [(PublisherViewDataSource *)self analyticsManager:v12];
  v11 = [(FilterAnalyticsProvider *)self->_filterAnalyticsProvider titleForFilterAtIndexPath:pathCopy];
  [v10 publisherFilterTappedWithValue:v11 atIndex:{objc_msgSend(pathCopy, "item")}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)didRouteToKeywordFilter:(id)filter atIndexPath:(id)path
{
  filterCopy = filter;
  pathCopy = path;
  apiController = [(PublisherViewDataSource *)self apiController];
  [apiController cancelFetchingPublisher];

  [(PublisherViewDataSource *)self setSelectedFilterIndexPath:pathCopy];
  [(PublisherViewDataSource *)self filterDataFetchStarted];
  objc_initWeak(&location, self);
  apiController2 = [(PublisherViewDataSource *)self apiController];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100FD670C;
  v15 = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  [apiController2 fetchPublisherViewForKeywordFilter:filterCopy addressFilter:0 onCompletion:&v12];

  v10 = [(PublisherViewDataSource *)self analyticsManager:v12];
  v11 = [(FilterAnalyticsProvider *)self->_filterAnalyticsProvider titleForFilterAtIndexPath:pathCopy];
  [v10 publisherFilterTappedWithValue:v11 atIndex:{objc_msgSend(pathCopy, "item")}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (UICollectionElementKindSectionHeader == kindCopy && (-[PublisherViewDataSource logicController](self, "logicController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 sectionKindAtIndex:{objc_msgSend(pathCopy, "section")}], v11, !v12))
  {
    v15 = sub_10000FA08(viewCopy);
    collectionView = [(DataSource *)self collectionView];
    if (v15 == 5)
    {
      v17 = +[CollectionsFilterMenu reuseIdentifier];
      v18 = [collectionView dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v17 forIndexPath:pathCopy];
      [(PublisherViewDataSource *)self setFilterMenu:v18];

      filterMenu = [(PublisherViewDataSource *)self filterMenu];
      resultFilters = [(PublisherViewDataSource *)self resultFilters];
      selectedFilterIndexPath = [(PublisherViewDataSource *)self selectedFilterIndexPath];
      apiController = [(PublisherViewDataSource *)self apiController];
      publisherViewIdentifiers = [apiController publisherViewIdentifiers];
      [filterMenu configureForPublisherWithRoutingDelegate:self withPublishersResultFilters:resultFilters withSelectedFilterIndex:selectedFilterIndexPath selectedFilterResultsCount:{objc_msgSend(publisherViewIdentifiers, "count")}];

      filterMenu2 = [(PublisherViewDataSource *)self filterMenu];
      filterAnalyticsProvider = self->_filterAnalyticsProvider;
      self->_filterAnalyticsProvider = filterMenu2;

      filterMenu3 = [(PublisherViewDataSource *)self filterMenu];
    }

    else
    {
      v26 = +[PublisherActionView reuseIdentifier];
      filterMenu3 = [collectionView dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v26 forIndexPath:pathCopy];

      actionsManager = [(PublisherViewDataSource *)self actionsManager];
      apiController2 = [(PublisherViewDataSource *)self apiController];
      publisherViewResultFilters = [apiController2 publisherViewResultFilters];
      selectedFilterIndexPath2 = [(PublisherViewDataSource *)self selectedFilterIndexPath];
      [filterMenu3 configureWithActionManager:actionsManager publishersResultFilters:publisherViewResultFilters routingDelegate:self selectedFilterIndex:selectedFilterIndexPath2];

      objc_storeStrong(&self->_filterAnalyticsProvider, filterMenu3);
    }
  }

  else
  {
    filterMenu3 = 0;
  }

  return filterMenu3;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  pathCopy = path;
  viewCopy = view;
  logicController = [(PublisherViewDataSource *)self logicController];
  v10 = [logicController sectionKindAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v10 == 1)
  {
    v11 = +[MKCollectionBatchCell reuseIdentifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

    [v12 startedLoadingBatch];
  }

  else
  {
    v13 = +[MKPlaceCollectionCell reuseIdentifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];

    logicController2 = [(PublisherViewDataSource *)self logicController];
    v15 = [logicController2 collectionAtIndex:{objc_msgSend(pathCopy, "item")}];
    [v12 configureWithModel:v15];
  }

  return v12;
}

- (void)filterDataFetchStarted
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100FD6CF4;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)didTapTryAgainOnErrorView
{
  resultFilters = [(PublisherViewDataSource *)self resultFilters];
  selectedFilterIndexPath = [(PublisherViewDataSource *)self selectedFilterIndexPath];
  v8 = [resultFilters objectAtIndex:{objc_msgSend(selectedFilterIndexPath, "item")}];

  filterType = [v8 filterType];
  if (filterType == 2)
  {
    keywordFilter = [v8 keywordFilter];
    selectedFilterIndexPath2 = [(PublisherViewDataSource *)self selectedFilterIndexPath];
    [(PublisherViewDataSource *)self didRouteToKeywordFilter:keywordFilter atIndexPath:selectedFilterIndexPath2];
  }

  else
  {
    if (filterType != 1)
    {
      goto LABEL_6;
    }

    keywordFilter = [v8 addressFilter];
    selectedFilterIndexPath2 = [(PublisherViewDataSource *)self selectedFilterIndexPath];
    [(PublisherViewDataSource *)self didRouteToAddressFilter:keywordFilter atIndexPath:selectedFilterIndexPath2];
  }

LABEL_6:
}

- (void)clearPublisherData
{
  logicController = [(PublisherViewDataSource *)self logicController];
  [logicController clearSnapshotData];
}

- (void)displayCollections:(id)collections
{
  collectionsCopy = collections;
  objc_initWeak(&location, self);
  logicController = [(PublisherViewDataSource *)self logicController];
  dataSource = [(PublisherViewDataSource *)self dataSource];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FD6FD4;
  v8[3] = &unk_101660648;
  objc_copyWeak(&v10, &location);
  v7 = collectionsCopy;
  v9 = v7;
  [logicController getCollectionsUsingDataSource:dataSource onCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = +[CuratedCollectionSyncManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PublisherViewDataSource;
  [(PublisherViewDataSource *)&v4 dealloc];
}

- (PublisherViewDataSource)initWithCollectionView:(id)view usingCuratedCollections:(id)collections usingPlaceCollectionIds:(id)ids withResultFilters:(id)filters withAPIController:(id)controller withCollectionRoutingDelegate:(id)delegate usingAnalyticsManager:(id)manager usingPublisherActionsManager:(id)self0
{
  viewCopy = view;
  collectionsCopy = collections;
  idsCopy = ids;
  filtersCopy = filters;
  controllerCopy = controller;
  delegateCopy = delegate;
  managerCopy = manager;
  actionsManagerCopy = actionsManager;
  v53.receiver = self;
  v53.super_class = PublisherViewDataSource;
  v20 = [(DataSource *)&v53 initWithCollectionView:viewCopy updateLocation:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_placeCollections, collections);
    objc_storeStrong(&v21->_resultFilters, filters);
    objc_storeStrong(&v21->_apiController, controller);
    objc_storeWeak(&v21->_routingDelegate, delegateCopy);
    objc_storeStrong(&v21->_analyticsManager, manager);
    objc_storeStrong(&v21->_actionsManager, actionsManager);
    v22 = [NSIndexPath indexPathForItem:0 inSection:0];
    selectedFilterIndexPath = v21->_selectedFilterIndexPath;
    v21->_selectedFilterIndexPath = v22;

    v24 = +[CuratedCollectionSyncManager sharedManager];
    [v24 addObserver:v21];

    collectionView = [(DataSource *)v21 collectionView];
    [collectionView setDelegate:v21];

    collectionView2 = [(DataSource *)v21 collectionView];
    v27 = objc_opt_class();
    v28 = +[MKPlaceCollectionCell reuseIdentifier];
    [collectionView2 registerClass:v27 forCellWithReuseIdentifier:v28];

    collectionView3 = [(DataSource *)v21 collectionView];
    v30 = objc_opt_class();
    v31 = +[MKCollectionBatchCell reuseIdentifier];
    [collectionView3 registerClass:v30 forCellWithReuseIdentifier:v31];

    v32 = sub_10000FA08(viewCopy);
    collectionView4 = [(DataSource *)v21 collectionView];
    if (v32 == 5)
    {
      v34 = off_1015F61B8;
    }

    else
    {
      v34 = off_1015F6518;
    }

    v35 = objc_opt_class();
    reuseIdentifier = [(__objc2_class *)*v34 reuseIdentifier];
    [collectionView4 registerClass:v35 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:reuseIdentifier];

    v37 = [UICollectionViewDiffableDataSource alloc];
    v38 = sub_1007CDFC8(v21);
    v39 = [v37 initWithCollectionView:viewCopy cellProvider:v38];
    dataSource = v21->_dataSource;
    v21->_dataSource = v39;

    v41 = v21->_dataSource;
    v42 = sub_1007CE178(v21);
    [(UICollectionViewDiffableDataSource *)v41 setSupplementaryViewProvider:v42];

    v43 = [MKPlaceCollectionsLogicController alloc];
    collectionView5 = [(DataSource *)v21 collectionView];
    v45 = +[CuratedCollectionSyncManager sharedManager];
    v46 = [v43 initWithCollectionView:collectionView5 withPlaceCollections:collectionsCopy usingCollectionIds:idsCopy usingCollectionFetcher:controllerCopy usingGuideConsumer:0 usingSyncCoordinator:v45 inContext:2 usingBatchSize:{objc_msgSend(controllerCopy, "batchSize")}];
    [(PublisherViewDataSource *)v21 setLogicController:v46];

    v47 = [[MKPlaceCollectionsSizeController alloc] initWithCollectionsConfiguration:2 isSingleCollection:2 usingTraitCollections:objc_msgSend(collectionsCopy inContext:{"count") == 1, viewCopy, 2}];
    [(PublisherViewDataSource *)v21 setSizeController:v47];
  }

  return v21;
}

@end