@interface AllCollectionsDataSource
- (AllCollectionsDataSource)initWithCollectionView:(id)view usingCuratedCollections:(id)collections usingPlaceCollectionIds:(id)ids withResultFilters:(id)filters sections:(id)sections usingAPIController:(id)controller withRoutingDelegate:(id)delegate;
- (MKCollectionCarouselRoutingDelegate)routingDelegate;
- (id)allCollectionsSectionOfType:(int64_t)type;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)_dispatchOnManThread:(id)thread;
- (void)applySnapshot;
- (void)clearGuidesFromSnapshot;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections;
- (void)dealloc;
- (void)didRouteToAddressFilter:(id)filter atIndexPath:(id)path;
- (void)didRouteToKeywordFilter:(id)filter atIndexPath:(id)path;
- (void)didStartFetchingBatch;
- (void)didTapTryAgainOnErrorView;
- (void)dismissedCollections;
- (void)displayAllCollectionsData;
- (void)filterDataFetchStarted;
- (void)prepareSnapshotUsingCollections:(id)collections;
- (void)presentFirstCollection;
- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch;
- (void)updateCollections:(id)collections usingBatchIdentifiers:(id)identifiers;
- (void)updateSnapshotUsingCollections:(id)collections;
@end

@implementation AllCollectionsDataSource

- (MKCollectionCarouselRoutingDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

- (void)presentFirstCollection
{
  placeCollections = [(AllCollectionsDataSource *)self placeCollections];
  v4 = [placeCollections count];

  if (v4)
  {
    routingDelegate = [(AllCollectionsDataSource *)self routingDelegate];
    collectionsLogicController = [(AllCollectionsDataSource *)self collectionsLogicController];
    v6 = [collectionsLogicController geoCollectionAtIndex:0];
    [routingDelegate routeToCuratedCollection:v6];
  }
}

- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  sections = [(AllCollectionsDataSource *)self sections];
  v5 = [sections countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(sections);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (v9)
        {
          [*(*(&v16 + 1) + 8 * i) configuration];

          if (v15)
          {
            continue;
          }
        }

        else
        {
          v14 = 0u;
          v15 = 0;
        }

        dataSource = [(AllCollectionsDataSource *)self dataSource];
        snapshot = [dataSource snapshot];

        v20 = v9;
        v12 = [NSArray arrayWithObjects:&v20 count:1];
        [snapshot reloadSectionsWithIdentifiers:v12];

        dataSource2 = [(AllCollectionsDataSource *)self dataSource];
        [dataSource2 applySnapshot:snapshot animatingDifferences:0];
      }

      v6 = [sections countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)didStartFetchingBatch
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  sections = [(AllCollectionsDataSource *)self sections];
  v4 = [sections countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v4)
  {

    v7 = 0;
    v6 = 0;
    goto LABEL_22;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v27;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(sections);
      }

      v10 = *(*(&v26 + 1) + 8 * i);
      if (!v10)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
LABEL_11:
        v13 = v10;
        v12 = v6;
        v6 = v13;
        goto LABEL_12;
      }

      [*(*(&v26 + 1) + 8 * i) configuration];

      if (v25 != 1)
      {
        [v10 configuration];

        if (v23)
        {
          continue;
        }

        goto LABEL_11;
      }

      v11 = v10;
      v12 = v7;
      v7 = v11;
LABEL_12:
    }

    v5 = [sections countByEnumeratingWithState:&v26 objects:v31 count:16];
  }

  while (v5);

  if (v7)
  {
    if (v6)
    {
      snapshot = [(AllCollectionsDataSource *)self snapshot];
      v15 = [snapshot itemIdentifiersInSectionWithIdentifier:v7];
      v16 = [v15 count];

      if (!v16)
      {
        v17 = sub_1007982D8();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[<-->] AllCollectionDateSource informed about batch load starting. Adding loading cell.", v21, 2u);
        }

        snapshot2 = [(AllCollectionsDataSource *)self snapshot];
        v19 = +[MKCollectionBatchCell reuseIdentifier];
        v30 = v19;
        v20 = [NSArray arrayWithObjects:&v30 count:1];
        [snapshot2 appendItemsWithIdentifiers:v20 intoSectionWithIdentifier:v7];

        [(AllCollectionsDataSource *)self displayAllCollectionsData];
      }
    }
  }

LABEL_22:
}

- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch
{
  batchCopy = batch;
  fetchedBatchCopy = fetchedBatch;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  sections = [(AllCollectionsDataSource *)self sections];
  v7 = [sections countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v7)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v36;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(sections);
      }

      v13 = *(*(&v35 + 1) + 8 * i);
      if (!v13)
      {
        v33 = 0u;
        v34 = 0;
        v31 = 0u;
        v32 = 0;
LABEL_11:
        v16 = v13;
        v15 = v9;
        v9 = v16;
        goto LABEL_12;
      }

      [*(*(&v35 + 1) + 8 * i) configuration];

      if (v34 != 1)
      {
        [v13 configuration];

        if (v32)
        {
          continue;
        }

        goto LABEL_11;
      }

      v14 = v13;
      v15 = v10;
      v10 = v14;
LABEL_12:
    }

    v8 = [sections countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v8);
LABEL_17:

  v17 = sub_1007982D8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[<-->] AllCollectionDateSource informed about batch load complete. Removing loading cell.", buf, 2u);
  }

  snapshot = [(AllCollectionsDataSource *)self snapshot];
  snapshot2 = [(AllCollectionsDataSource *)self snapshot];
  v20 = [snapshot2 itemIdentifiersInSectionWithIdentifier:v10];
  [snapshot deleteItemsWithIdentifiers:v20];

  v21 = fetchedBatchCopy;
  if (batchCopy && [fetchedBatchCopy count])
  {
    apiController = [(AllCollectionsDataSource *)self apiController];
    placeCollectionsFromLastBatch = [apiController placeCollectionsFromLastBatch];

    collectionsLogicController = [(AllCollectionsDataSource *)self collectionsLogicController];
    [collectionsLogicController appendBatchOfCollections:placeCollectionsFromLastBatch];

    snapshot3 = [(AllCollectionsDataSource *)self snapshot];
    [snapshot3 appendItemsWithIdentifiers:placeCollectionsFromLastBatch intoSectionWithIdentifier:v9];

    v26 = sub_1007982D8();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = [placeCollectionsFromLastBatch count];
      *buf = 134217984;
      v40 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[<-->] AllCollectionDateSource displaying %ld more collections.", buf, 0xCu);
    }

    [(AllCollectionsDataSource *)self displayAllCollectionsData];
  }

  else
  {
    if (![fetchedBatchCopy count])
    {
      v28 = sub_1007982D8();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[<-->] AllCollectionDateSource received empty placeCollections when we were sure to load a batch.", buf, 2u);
      }
    }

    v29 = sub_1007982D8();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "[<-->] AllCollectionDateSource is removing loading indicator only as batch load failed.", buf, 2u);
    }

    [(AllCollectionsDataSource *)self displayAllCollectionsData];
  }
}

- (void)didRouteToAddressFilter:(id)filter atIndexPath:(id)path
{
  filterCopy = filter;
  pathCopy = path;
  apiController = [(AllCollectionsDataSource *)self apiController];
  [apiController cancelFetchingAllCollections];

  [(AllCollectionsDataSource *)self setSelectedFilterIndexPath:pathCopy];
  [(AllCollectionsDataSource *)self filterDataFetchStarted];
  objc_initWeak(&location, self);
  apiController2 = [(AllCollectionsDataSource *)self apiController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DAD044;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  [apiController2 fetchAllCollectionsViewForKeywordFilter:0 addressFilter:filterCopy onCompletion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)didRouteToKeywordFilter:(id)filter atIndexPath:(id)path
{
  filterCopy = filter;
  pathCopy = path;
  apiController = [(AllCollectionsDataSource *)self apiController];
  [apiController cancelFetchingAllCollections];

  [(AllCollectionsDataSource *)self setSelectedFilterIndexPath:pathCopy];
  [(AllCollectionsDataSource *)self filterDataFetchStarted];
  objc_initWeak(&location, self);
  apiController2 = [(AllCollectionsDataSource *)self apiController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DAD2D8;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  [apiController2 fetchAllCollectionsViewForKeywordFilter:filterCopy addressFilter:0 onCompletion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionsLogicController = [(AllCollectionsDataSource *)self collectionsLogicController];
  v7 = [collectionsLogicController sectionKindAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v7 != 1)
  {
    collectionsLogicController2 = [(AllCollectionsDataSource *)self collectionsLogicController];
    [collectionsLogicController2 willDisplayCellAtIndexpath:pathCopy];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  routingDelegate = [(AllCollectionsDataSource *)self routingDelegate];
  collectionsLogicController = [(AllCollectionsDataSource *)self collectionsLogicController];
  item = [pathCopy item];

  v8 = [collectionsLogicController geoCollectionAtIndex:item];
  [routingDelegate routeToCuratedCollection:v8];
}

- (void)dismissedCollections
{
  collectionsLogicController = [(AllCollectionsDataSource *)self collectionsLogicController];
  [collectionsLogicController dismissedCollections];
}

- (void)updateCollections:(id)collections usingBatchIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  collectionsCopy = collections;
  collectionsLogicController = [(AllCollectionsDataSource *)self collectionsLogicController];
  apiController = [(AllCollectionsDataSource *)self apiController];
  apiController2 = [(AllCollectionsDataSource *)self apiController];
  [collectionsLogicController updateCollectionsWithoutPreparingSnapshot:collectionsCopy usingBatchedIdentifiers:identifiersCopy usingCollectionFetcher:apiController usingGuideConsumer:self usingBatchSize:{objc_msgSend(apiController2, "batchSize")}];

  [(AllCollectionsDataSource *)self updateSnapshotUsingCollections:collectionsCopy];
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  kindCopy = kind;
  pathCopy = path;
  sections = [(AllCollectionsDataSource *)self sections];
  v15 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (!v15)
  {
    v17 = 0;
LABEL_8:

    goto LABEL_9;
  }

  [v15 configuration];
  if (v19 != 1)
  {
    v17 = v18;
    goto LABEL_8;
  }

  v16 = sub_10000FA08(viewCopy);

  if (v16 != 5 && supplementaryViewCopy)
  {
    [supplementaryViewCopy scrollToSelectedFilter];
  }

LABEL_9:
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sections = [(AllCollectionsDataSource *)self sections];
  v10 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v10)
  {
    [v10 configuration];

    if (v29 == 1)
    {
      v11 = sub_10000FA08(viewCopy);
      collectionView = [(DataSource *)self collectionView];
      if (v11 == 5)
      {
        v13 = +[CollectionsFilterMenu reuseIdentifier];
        v14 = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v13 forIndexPath:pathCopy];
        [(AllCollectionsDataSource *)self setFilterMenu:v14];

        apiController = [(AllCollectionsDataSource *)self apiController];
        allCollectionViewFilters = [apiController allCollectionViewFilters];

        filterMenu = [(AllCollectionsDataSource *)self filterMenu];
        selectedFilterIndexPath = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
        apiController2 = [(AllCollectionsDataSource *)self apiController];
        allCollectionViewIdentifiers = [apiController2 allCollectionViewIdentifiers];
        [filterMenu configureForAllCollectionsWithRoutingDelegate:self withAllCollectionsResultFilters:allCollectionViewFilters withSelectedFilterIndex:selectedFilterIndexPath selectedFilterResultsCount:{objc_msgSend(allCollectionViewIdentifiers, "count")}];

        filterMenu2 = [(AllCollectionsDataSource *)self filterMenu];
      }

      else
      {
        v22 = +[CollectionsFilterCarouselView reuseIdentifier];
        v23 = +[CollectionsFilterCarouselView reuseIdentifier];
        filterMenu2 = [collectionView dequeueReusableSupplementaryViewOfKind:v22 withReuseIdentifier:v23 forIndexPath:pathCopy];

        apiController3 = [(AllCollectionsDataSource *)self apiController];
        allCollectionViewFilters2 = [apiController3 allCollectionViewFilters];

        selectedFilterIndexPath2 = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
        [filterMenu2 configureWithContext:1 withRoutingDelegate:self withAllCollectionsResultFilters:allCollectionViewFilters2 withSelectedFilterIndex:selectedFilterIndexPath2];

        [filterMenu2 displayFilters];
      }
    }

    else
    {
      filterMenu2 = 0;
    }
  }

  else
  {
    filterMenu2 = 0;
  }

  return filterMenu2;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  sections = [(AllCollectionsDataSource *)self sections];
  v10 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v10 && ([v10 configuration], v19, v20))
  {
    [v10 configuration];

    if (v18 == 1)
    {
      v11 = +[MKCollectionBatchCell reuseIdentifier];
      v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

      [v12 startedLoadingBatch];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = +[MKPlaceCollectionCell reuseIdentifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];

    collectionsLogicController = [(AllCollectionsDataSource *)self collectionsLogicController];
    v15 = [collectionsLogicController collectionAtIndex:{objc_msgSend(pathCopy, "item")}];
    [v12 configureWithModel:v15];
  }

  return v12;
}

- (void)clearGuidesFromSnapshot
{
  dataSource = [(AllCollectionsDataSource *)self dataSource];
  snapshot = [dataSource snapshot];

  v4 = [(AllCollectionsDataSource *)self allCollectionsSectionOfType:0];
  v5 = [snapshot itemIdentifiersInSectionWithIdentifier:v4];

  v6 = [(AllCollectionsDataSource *)self allCollectionsSectionOfType:1];
  v7 = [snapshot itemIdentifiersInSectionWithIdentifier:v6];

  if ([v5 count] || objc_msgSend(v7, "count"))
  {
    [snapshot deleteItemsWithIdentifiers:v5];
    [snapshot deleteItemsWithIdentifiers:v7];
    dataSource2 = [(AllCollectionsDataSource *)self dataSource];
    [dataSource2 applySnapshot:snapshot animatingDifferences:0];
  }
}

- (void)filterDataFetchStarted
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100DADDA0;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)allCollectionsSectionOfType:(int64_t)type
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  sections = [(AllCollectionsDataSource *)self sections];
  v5 = [sections countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(sections);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (v9)
        {
          [*(*(&v15 + 1) + 8 * i) configuration];
          v10 = v14;
        }

        else
        {
          v10 = 0;
          v13 = 0u;
          v14 = 0;
        }

        if (v10 == type)
        {
          v11 = v9;
          goto LABEL_14;
        }
      }

      v6 = [sections countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (void)didTapTryAgainOnErrorView
{
  resultFilters = [(AllCollectionsDataSource *)self resultFilters];
  selectedFilterIndexPath = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
  v8 = [resultFilters objectAtIndex:{objc_msgSend(selectedFilterIndexPath, "item")}];

  filterType = [v8 filterType];
  if (filterType == 2)
  {
    keywordFilter = [v8 keywordFilter];
    selectedFilterIndexPath2 = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
    [(AllCollectionsDataSource *)self didRouteToKeywordFilter:keywordFilter atIndexPath:selectedFilterIndexPath2];
  }

  else
  {
    if (filterType != 1)
    {
      goto LABEL_6;
    }

    keywordFilter = [v8 addressFilter];
    selectedFilterIndexPath2 = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
    [(AllCollectionsDataSource *)self didRouteToAddressFilter:keywordFilter atIndexPath:selectedFilterIndexPath2];
  }

LABEL_6:
}

- (void)displayAllCollectionsData
{
  v3 = sub_1007982D8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[<-->]Displaying All Collection data.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DAE164;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, buf);
  [(AllCollectionsDataSource *)self _dispatchOnManThread:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)_dispatchOnManThread:(id)thread
{
  threadCopy = thread;
  if (threadCopy)
  {
    if (+[NSThread isMainThread])
    {
      threadCopy[2](threadCopy);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100DAE2B0;
      block[3] = &unk_101661760;
      v5 = threadCopy;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: block", buf, 2u);
  }
}

- (void)applySnapshot
{
  dataSource = [(AllCollectionsDataSource *)self dataSource];
  snapshot = [(AllCollectionsDataSource *)self snapshot];
  [dataSource applySnapshot:snapshot animatingDifferences:0];
}

- (void)updateSnapshotUsingCollections:(id)collections
{
  collectionsCopy = collections;
  v5 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [(AllCollectionsDataSource *)self setSnapshot:v5];

  snapshot = [(AllCollectionsDataSource *)self snapshot];
  sections = [(AllCollectionsDataSource *)self sections];
  [snapshot appendSectionsWithIdentifiers:sections];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  sections2 = [(AllCollectionsDataSource *)self sections];
  v9 = [sections2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(sections2);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (!v13)
        {
          v15 = 0u;
          v16 = 0u;
LABEL_12:
          [(AllCollectionsDataSource *)self setPlaceCollections:collectionsCopy, v15, v16];
          snapshot2 = [(AllCollectionsDataSource *)self snapshot];
          [snapshot2 appendItemsWithIdentifiers:collectionsCopy intoSectionWithIdentifier:v13];

          goto LABEL_13;
        }

        [*(*(&v17 + 1) + 8 * i) configuration];

        if (!v16)
        {
          goto LABEL_12;
        }
      }

      v10 = [sections2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)prepareSnapshotUsingCollections:(id)collections
{
  collectionsCopy = collections;
  v5 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [(AllCollectionsDataSource *)self setSnapshot:v5];

  snapshot = [(AllCollectionsDataSource *)self snapshot];
  sections = [(AllCollectionsDataSource *)self sections];
  [snapshot appendSectionsWithIdentifiers:sections];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  sections2 = [(AllCollectionsDataSource *)self sections];
  v9 = [sections2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(sections2);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (v13)
        {
          [*(*(&v17 + 1) + 8 * i) configuration];

          if (v16)
          {
            continue;
          }
        }

        else
        {
          v15 = 0u;
          v16 = 0;
        }

        snapshot2 = [(AllCollectionsDataSource *)self snapshot];
        [snapshot2 appendItemsWithIdentifiers:collectionsCopy intoSectionWithIdentifier:v13];
      }

      v10 = [sections2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)dealloc
{
  v3 = +[CuratedCollectionSyncManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AllCollectionsDataSource;
  [(AllCollectionsDataSource *)&v4 dealloc];
}

- (AllCollectionsDataSource)initWithCollectionView:(id)view usingCuratedCollections:(id)collections usingPlaceCollectionIds:(id)ids withResultFilters:(id)filters sections:(id)sections usingAPIController:(id)controller withRoutingDelegate:(id)delegate
{
  viewCopy = view;
  collectionsCopy = collections;
  idsCopy = ids;
  filtersCopy = filters;
  sectionsCopy = sections;
  controllerCopy = controller;
  delegateCopy = delegate;
  v51.receiver = self;
  v51.super_class = AllCollectionsDataSource;
  v20 = [(DataSource *)&v51 initWithCollectionView:viewCopy updateLocation:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_placeCollections, collections);
    objc_storeStrong(&v21->_resultFilters, filters);
    objc_storeStrong(&v21->_sections, sections);
    objc_storeStrong(&v21->_apiController, controller);
    objc_storeWeak(&v21->_routingDelegate, delegateCopy);
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
    v34 = objc_opt_class();
    if (v32 == 5)
    {
      v35 = +[CollectionsFilterMenu reuseIdentifier];
      [collectionView4 registerClass:v34 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v35];
    }

    else
    {
      v35 = +[CollectionsFilterCarouselView reuseIdentifier];
      v36 = +[CollectionsFilterCarouselView reuseIdentifier];
      [collectionView4 registerClass:v34 forSupplementaryViewOfKind:v35 withReuseIdentifier:v36];
    }

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
    v46 = [v43 initWithCollectionView:collectionView5 withPlaceCollections:collectionsCopy usingCollectionIds:idsCopy usingCollectionFetcher:controllerCopy usingGuideConsumer:v21 usingSyncCoordinator:v45 inContext:5 usingBatchSize:{objc_msgSend(controllerCopy, "batchSize")}];
    collectionsLogicController = v21->_collectionsLogicController;
    v21->_collectionsLogicController = v46;

    [(AllCollectionsDataSource *)v21 prepareSnapshotUsingCollections:v21->_placeCollections];
  }

  return v21;
}

@end