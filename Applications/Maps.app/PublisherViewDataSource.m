@interface PublisherViewDataSource
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (MKCollectionCarouselRoutingDelegate)routingDelegate;
- (PublisherViewDataSource)initWithCollectionView:(id)a3 usingCuratedCollections:(id)a4 usingPlaceCollectionIds:(id)a5 withResultFilters:(id)a6 withAPIController:(id)a7 withCollectionRoutingDelegate:(id)a8 usingAnalyticsManager:(id)a9 usingPublisherActionsManager:(id)a10;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)clearPublisherData;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)a3;
- (void)dealloc;
- (void)didRouteToAddressFilter:(id)a3 atIndexPath:(id)a4;
- (void)didRouteToKeywordFilter:(id)a3 atIndexPath:(id)a4;
- (void)didTapTryAgainOnErrorView;
- (void)dismissedCollections;
- (void)displayCollections:(id)a3;
- (void)filterDataFetchStarted;
- (void)updateCollections:(id)a3 usingBatchIdentifiers:(id)a4;
@end

@implementation PublisherViewDataSource

- (MKCollectionCarouselRoutingDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)a3
{
  v3 = [(PublisherViewDataSource *)self logicController];
  [v3 refreshCollections];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9 = a5;
  v6 = [(PublisherViewDataSource *)self logicController];
  v7 = [v6 sectionKindAtIndex:{objc_msgSend(v9, "section")}];

  if (v7 != 1)
  {
    v8 = [(PublisherViewDataSource *)self logicController];
    [v8 willDisplayCellAtIndexpath:v9];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v15 = a4;
  v5 = [(PublisherViewDataSource *)self logicController];
  v6 = [v5 sectionKindAtIndex:{objc_msgSend(v15, "section")}];

  if (v6 != 1)
  {
    v7 = [(PublisherViewDataSource *)self routingDelegate];
    v8 = [(PublisherViewDataSource *)self logicController];
    v9 = [v8 geoCollectionAtIndex:{objc_msgSend(v15, "item")}];
    [v7 routeToCuratedCollection:v9];

    v10 = [(PublisherViewDataSource *)self analyticsManager];
    v11 = [(PublisherViewDataSource *)self logicController];
    v12 = [v11 identifierForCollectionAtIndex:{objc_msgSend(v15, "item")}];
    v13 = [v15 item];
    v14 = [(PublisherViewDataSource *)self logicController];
    [v10 publisherCollectionTapped:v12 atIndex:v13 isCurrentlySaved:{objc_msgSend(v14, "isCollectionSavedAtIndex:", objc_msgSend(v15, "item"))}];
  }
}

- (void)dismissedCollections
{
  v2 = [(PublisherViewDataSource *)self logicController];
  [v2 dismissedCollections];
}

- (void)updateCollections:(id)a3 usingBatchIdentifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(PublisherViewDataSource *)self logicController];
  v8 = [(PublisherViewDataSource *)self apiController];
  v9 = [(PublisherViewDataSource *)self apiController];
  [v10 updateCollections:v7 usingBatchedIdentifiers:v6 usingCollectionFetcher:v8 usingBatchSize:{objc_msgSend(v9, "batchSize")}];
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v7 = [(PublisherViewDataSource *)self logicController:a3];
  v8 = [v7 sectionKindAtIndex:a5];

  if (v8 == 1)
  {
    return 0.0;
  }

  v10 = [(PublisherViewDataSource *)self sizeController];
  [v10 minimumInterItemSpacing];
  v12 = v11;

  return v12;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v7 = [(PublisherViewDataSource *)self logicController:a3];
  v8 = [v7 sectionKindAtIndex:a5];

  if (v8 == 1)
  {
    return 0.0;
  }

  v10 = [(PublisherViewDataSource *)self sizeController];
  [v10 minimumInterItemSpacing];
  v12 = v11;

  return v12;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(PublisherViewDataSource *)self logicController:a3];
  v8 = [v7 sectionKindAtIndex:a5];

  if (v8 == 1)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    v13 = [(PublisherViewDataSource *)self sizeController];
    [v13 sectionInsets];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PublisherViewDataSource *)self logicController];
  v10 = [v8 section];

  v11 = [v9 sectionKindAtIndex:v10];
  if (v11 == 1)
  {
    [v7 frame];
    v13 = v12;
    v14 = 100.0;
  }

  else
  {
    v15 = [(PublisherViewDataSource *)self sizeController];
    [v7 frame];
    [v15 sizeForCollectionWithMaxCollectionsWidth:v16];
    v13 = v17;
    v19 = v18;

    v20 = [(PublisherViewDataSource *)self sizeController];
    [v20 sectionInsets];
    v14 = v19 - v21;
  }

  v22 = v13;
  v23 = v14;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = a3;
  v8 = [(PublisherViewDataSource *)self logicController];
  v9 = [v8 sectionKindAtIndex:a5];

  if (v9 == 1)
  {
    goto LABEL_2;
  }

  if (sub_10000FA08(v7) != 5)
  {
    v16 = [PublisherActionView alloc];
    [v7 frame];
    v17 = [(PublisherActionView *)v16 initWithFrame:0.0, 0.0];
    v18 = [(PublisherViewDataSource *)self actionsManager];
    v19 = [(PublisherViewDataSource *)self apiController];
    v20 = [v19 publisherViewResultFilters];
    v21 = [(PublisherViewDataSource *)self selectedFilterIndexPath];
    [(PublisherActionView *)v17 configureWithActionManager:v18 publishersResultFilters:v20 routingDelegate:self selectedFilterIndex:v21];

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

  v12 = [(PublisherViewDataSource *)self resultFilters];
  v13 = [v12 count];

  if (v13 == 1)
  {
LABEL_2:
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    [v7 frame];
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

- (void)didRouteToAddressFilter:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PublisherViewDataSource *)self apiController];
  [v8 cancelFetchingPublisher];

  [(PublisherViewDataSource *)self setSelectedFilterIndexPath:v7];
  [(PublisherViewDataSource *)self filterDataFetchStarted];
  objc_initWeak(&location, self);
  v9 = [(PublisherViewDataSource *)self apiController];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100FD6430;
  v15 = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  [v9 fetchPublisherViewForKeywordFilter:0 addressFilter:v6 onCompletion:&v12];

  v10 = [(PublisherViewDataSource *)self analyticsManager:v12];
  v11 = [(FilterAnalyticsProvider *)self->_filterAnalyticsProvider titleForFilterAtIndexPath:v7];
  [v10 publisherFilterTappedWithValue:v11 atIndex:{objc_msgSend(v7, "item")}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)didRouteToKeywordFilter:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PublisherViewDataSource *)self apiController];
  [v8 cancelFetchingPublisher];

  [(PublisherViewDataSource *)self setSelectedFilterIndexPath:v7];
  [(PublisherViewDataSource *)self filterDataFetchStarted];
  objc_initWeak(&location, self);
  v9 = [(PublisherViewDataSource *)self apiController];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100FD670C;
  v15 = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  [v9 fetchPublisherViewForKeywordFilter:v6 addressFilter:0 onCompletion:&v12];

  v10 = [(PublisherViewDataSource *)self analyticsManager:v12];
  v11 = [(FilterAnalyticsProvider *)self->_filterAnalyticsProvider titleForFilterAtIndexPath:v7];
  [v10 publisherFilterTappedWithValue:v11 atIndex:{objc_msgSend(v7, "item")}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (UICollectionElementKindSectionHeader == v9 && (-[PublisherViewDataSource logicController](self, "logicController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 sectionKindAtIndex:{objc_msgSend(v10, "section")}], v11, !v12))
  {
    v15 = sub_10000FA08(v8);
    v16 = [(DataSource *)self collectionView];
    if (v15 == 5)
    {
      v17 = +[CollectionsFilterMenu reuseIdentifier];
      v18 = [v16 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v17 forIndexPath:v10];
      [(PublisherViewDataSource *)self setFilterMenu:v18];

      v19 = [(PublisherViewDataSource *)self filterMenu];
      v20 = [(PublisherViewDataSource *)self resultFilters];
      v21 = [(PublisherViewDataSource *)self selectedFilterIndexPath];
      v22 = [(PublisherViewDataSource *)self apiController];
      v23 = [v22 publisherViewIdentifiers];
      [v19 configureForPublisherWithRoutingDelegate:self withPublishersResultFilters:v20 withSelectedFilterIndex:v21 selectedFilterResultsCount:{objc_msgSend(v23, "count")}];

      v24 = [(PublisherViewDataSource *)self filterMenu];
      filterAnalyticsProvider = self->_filterAnalyticsProvider;
      self->_filterAnalyticsProvider = v24;

      v13 = [(PublisherViewDataSource *)self filterMenu];
    }

    else
    {
      v26 = +[PublisherActionView reuseIdentifier];
      v13 = [v16 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v26 forIndexPath:v10];

      v27 = [(PublisherViewDataSource *)self actionsManager];
      v28 = [(PublisherViewDataSource *)self apiController];
      v29 = [v28 publisherViewResultFilters];
      v30 = [(PublisherViewDataSource *)self selectedFilterIndexPath];
      [v13 configureWithActionManager:v27 publishersResultFilters:v29 routingDelegate:self selectedFilterIndex:v30];

      objc_storeStrong(&self->_filterAnalyticsProvider, v13);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(PublisherViewDataSource *)self logicController];
  v10 = [v9 sectionKindAtIndex:{objc_msgSend(v7, "section")}];

  if (v10 == 1)
  {
    v11 = +[MKCollectionBatchCell reuseIdentifier];
    v12 = [v8 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v7];

    [v12 startedLoadingBatch];
  }

  else
  {
    v13 = +[MKPlaceCollectionCell reuseIdentifier];
    v12 = [v8 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v7];

    v14 = [(PublisherViewDataSource *)self logicController];
    v15 = [v14 collectionAtIndex:{objc_msgSend(v7, "item")}];
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
  v3 = [(PublisherViewDataSource *)self resultFilters];
  v4 = [(PublisherViewDataSource *)self selectedFilterIndexPath];
  v8 = [v3 objectAtIndex:{objc_msgSend(v4, "item")}];

  v5 = [v8 filterType];
  if (v5 == 2)
  {
    v6 = [v8 keywordFilter];
    v7 = [(PublisherViewDataSource *)self selectedFilterIndexPath];
    [(PublisherViewDataSource *)self didRouteToKeywordFilter:v6 atIndexPath:v7];
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v6 = [v8 addressFilter];
    v7 = [(PublisherViewDataSource *)self selectedFilterIndexPath];
    [(PublisherViewDataSource *)self didRouteToAddressFilter:v6 atIndexPath:v7];
  }

LABEL_6:
}

- (void)clearPublisherData
{
  v2 = [(PublisherViewDataSource *)self logicController];
  [v2 clearSnapshotData];
}

- (void)displayCollections:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PublisherViewDataSource *)self logicController];
  v6 = [(PublisherViewDataSource *)self dataSource];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FD6FD4;
  v8[3] = &unk_101660648;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [v5 getCollectionsUsingDataSource:v6 onCompletion:v8];

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

- (PublisherViewDataSource)initWithCollectionView:(id)a3 usingCuratedCollections:(id)a4 usingPlaceCollectionIds:(id)a5 withResultFilters:(id)a6 withAPIController:(id)a7 withCollectionRoutingDelegate:(id)a8 usingAnalyticsManager:(id)a9 usingPublisherActionsManager:(id)a10
{
  v16 = a3;
  v17 = a4;
  v52 = a5;
  v51 = a6;
  v18 = a7;
  v19 = a8;
  v50 = a9;
  v49 = a10;
  v53.receiver = self;
  v53.super_class = PublisherViewDataSource;
  v20 = [(DataSource *)&v53 initWithCollectionView:v16 updateLocation:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_placeCollections, a4);
    objc_storeStrong(&v21->_resultFilters, a6);
    objc_storeStrong(&v21->_apiController, a7);
    objc_storeWeak(&v21->_routingDelegate, v19);
    objc_storeStrong(&v21->_analyticsManager, a9);
    objc_storeStrong(&v21->_actionsManager, a10);
    v22 = [NSIndexPath indexPathForItem:0 inSection:0];
    selectedFilterIndexPath = v21->_selectedFilterIndexPath;
    v21->_selectedFilterIndexPath = v22;

    v24 = +[CuratedCollectionSyncManager sharedManager];
    [v24 addObserver:v21];

    v25 = [(DataSource *)v21 collectionView];
    [v25 setDelegate:v21];

    v26 = [(DataSource *)v21 collectionView];
    v27 = objc_opt_class();
    v28 = +[MKPlaceCollectionCell reuseIdentifier];
    [v26 registerClass:v27 forCellWithReuseIdentifier:v28];

    v29 = [(DataSource *)v21 collectionView];
    v30 = objc_opt_class();
    v31 = +[MKCollectionBatchCell reuseIdentifier];
    [v29 registerClass:v30 forCellWithReuseIdentifier:v31];

    v32 = sub_10000FA08(v16);
    v33 = [(DataSource *)v21 collectionView];
    if (v32 == 5)
    {
      v34 = off_1015F61B8;
    }

    else
    {
      v34 = off_1015F6518;
    }

    v35 = objc_opt_class();
    v36 = [(__objc2_class *)*v34 reuseIdentifier];
    [v33 registerClass:v35 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v36];

    v37 = [UICollectionViewDiffableDataSource alloc];
    v38 = sub_1007CDFC8(v21);
    v39 = [v37 initWithCollectionView:v16 cellProvider:v38];
    dataSource = v21->_dataSource;
    v21->_dataSource = v39;

    v41 = v21->_dataSource;
    v42 = sub_1007CE178(v21);
    [(UICollectionViewDiffableDataSource *)v41 setSupplementaryViewProvider:v42];

    v43 = [MKPlaceCollectionsLogicController alloc];
    v44 = [(DataSource *)v21 collectionView];
    v45 = +[CuratedCollectionSyncManager sharedManager];
    v46 = [v43 initWithCollectionView:v44 withPlaceCollections:v17 usingCollectionIds:v52 usingCollectionFetcher:v18 usingGuideConsumer:0 usingSyncCoordinator:v45 inContext:2 usingBatchSize:{objc_msgSend(v18, "batchSize")}];
    [(PublisherViewDataSource *)v21 setLogicController:v46];

    v47 = [[MKPlaceCollectionsSizeController alloc] initWithCollectionsConfiguration:2 isSingleCollection:2 usingTraitCollections:objc_msgSend(v17 inContext:{"count") == 1, v16, 2}];
    [(PublisherViewDataSource *)v21 setSizeController:v47];
  }

  return v21;
}

@end