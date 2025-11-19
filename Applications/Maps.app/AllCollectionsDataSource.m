@interface AllCollectionsDataSource
- (AllCollectionsDataSource)initWithCollectionView:(id)a3 usingCuratedCollections:(id)a4 usingPlaceCollectionIds:(id)a5 withResultFilters:(id)a6 sections:(id)a7 usingAPIController:(id)a8 withRoutingDelegate:(id)a9;
- (MKCollectionCarouselRoutingDelegate)routingDelegate;
- (id)allCollectionsSectionOfType:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)_dispatchOnManThread:(id)a3;
- (void)applySnapshot;
- (void)clearGuidesFromSnapshot;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)a3;
- (void)dealloc;
- (void)didRouteToAddressFilter:(id)a3 atIndexPath:(id)a4;
- (void)didRouteToKeywordFilter:(id)a3 atIndexPath:(id)a4;
- (void)didStartFetchingBatch;
- (void)didTapTryAgainOnErrorView;
- (void)dismissedCollections;
- (void)displayAllCollectionsData;
- (void)filterDataFetchStarted;
- (void)prepareSnapshotUsingCollections:(id)a3;
- (void)presentFirstCollection;
- (void)shouldConsumeBatch:(BOOL)a3 fetchedBatch:(id)a4;
- (void)updateCollections:(id)a3 usingBatchIdentifiers:(id)a4;
- (void)updateSnapshotUsingCollections:(id)a3;
@end

@implementation AllCollectionsDataSource

- (MKCollectionCarouselRoutingDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

- (void)presentFirstCollection
{
  v3 = [(AllCollectionsDataSource *)self placeCollections];
  v4 = [v3 count];

  if (v4)
  {
    v7 = [(AllCollectionsDataSource *)self routingDelegate];
    v5 = [(AllCollectionsDataSource *)self collectionsLogicController];
    v6 = [v5 geoCollectionAtIndex:0];
    [v7 routeToCuratedCollection:v6];
  }
}

- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(AllCollectionsDataSource *)self sections];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
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

        v10 = [(AllCollectionsDataSource *)self dataSource];
        v11 = [v10 snapshot];

        v20 = v9;
        v12 = [NSArray arrayWithObjects:&v20 count:1];
        [v11 reloadSectionsWithIdentifiers:v12];

        v13 = [(AllCollectionsDataSource *)self dataSource];
        [v13 applySnapshot:v11 animatingDifferences:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
  v3 = [(AllCollectionsDataSource *)self sections];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
        objc_enumerationMutation(v3);
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

    v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  }

  while (v5);

  if (v7)
  {
    if (v6)
    {
      v14 = [(AllCollectionsDataSource *)self snapshot];
      v15 = [v14 itemIdentifiersInSectionWithIdentifier:v7];
      v16 = [v15 count];

      if (!v16)
      {
        v17 = sub_1007982D8();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[<-->] AllCollectionDateSource informed about batch load starting. Adding loading cell.", v21, 2u);
        }

        v18 = [(AllCollectionsDataSource *)self snapshot];
        v19 = +[MKCollectionBatchCell reuseIdentifier];
        v30 = v19;
        v20 = [NSArray arrayWithObjects:&v30 count:1];
        [v18 appendItemsWithIdentifiers:v20 intoSectionWithIdentifier:v7];

        [(AllCollectionsDataSource *)self displayAllCollectionsData];
      }
    }
  }

LABEL_22:
}

- (void)shouldConsumeBatch:(BOOL)a3 fetchedBatch:(id)a4
{
  v30 = a3;
  v5 = a4;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [(AllCollectionsDataSource *)self sections];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
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
        objc_enumerationMutation(v6);
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

    v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v8);
LABEL_17:

  v17 = sub_1007982D8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[<-->] AllCollectionDateSource informed about batch load complete. Removing loading cell.", buf, 2u);
  }

  v18 = [(AllCollectionsDataSource *)self snapshot];
  v19 = [(AllCollectionsDataSource *)self snapshot];
  v20 = [v19 itemIdentifiersInSectionWithIdentifier:v10];
  [v18 deleteItemsWithIdentifiers:v20];

  v21 = v5;
  if (v30 && [v5 count])
  {
    v22 = [(AllCollectionsDataSource *)self apiController];
    v23 = [v22 placeCollectionsFromLastBatch];

    v24 = [(AllCollectionsDataSource *)self collectionsLogicController];
    [v24 appendBatchOfCollections:v23];

    v25 = [(AllCollectionsDataSource *)self snapshot];
    [v25 appendItemsWithIdentifiers:v23 intoSectionWithIdentifier:v9];

    v26 = sub_1007982D8();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = [v23 count];
      *buf = 134217984;
      v40 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[<-->] AllCollectionDateSource displaying %ld more collections.", buf, 0xCu);
    }

    [(AllCollectionsDataSource *)self displayAllCollectionsData];
  }

  else
  {
    if (![v5 count])
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

- (void)didRouteToAddressFilter:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AllCollectionsDataSource *)self apiController];
  [v8 cancelFetchingAllCollections];

  [(AllCollectionsDataSource *)self setSelectedFilterIndexPath:v7];
  [(AllCollectionsDataSource *)self filterDataFetchStarted];
  objc_initWeak(&location, self);
  v9 = [(AllCollectionsDataSource *)self apiController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DAD044;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  [v9 fetchAllCollectionsViewForKeywordFilter:0 addressFilter:v6 onCompletion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)didRouteToKeywordFilter:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AllCollectionsDataSource *)self apiController];
  [v8 cancelFetchingAllCollections];

  [(AllCollectionsDataSource *)self setSelectedFilterIndexPath:v7];
  [(AllCollectionsDataSource *)self filterDataFetchStarted];
  objc_initWeak(&location, self);
  v9 = [(AllCollectionsDataSource *)self apiController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DAD2D8;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  [v9 fetchAllCollectionsViewForKeywordFilter:v6 addressFilter:0 onCompletion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9 = a5;
  v6 = [(AllCollectionsDataSource *)self collectionsLogicController];
  v7 = [v6 sectionKindAtIndex:{objc_msgSend(v9, "section")}];

  if (v7 != 1)
  {
    v8 = [(AllCollectionsDataSource *)self collectionsLogicController];
    [v8 willDisplayCellAtIndexpath:v9];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = [(AllCollectionsDataSource *)self routingDelegate];
  v6 = [(AllCollectionsDataSource *)self collectionsLogicController];
  v7 = [v5 item];

  v8 = [v6 geoCollectionAtIndex:v7];
  [v9 routeToCuratedCollection:v8];
}

- (void)dismissedCollections
{
  v2 = [(AllCollectionsDataSource *)self collectionsLogicController];
  [v2 dismissedCollections];
}

- (void)updateCollections:(id)a3 usingBatchIdentifiers:(id)a4
{
  v6 = a4;
  v10 = a3;
  v7 = [(AllCollectionsDataSource *)self collectionsLogicController];
  v8 = [(AllCollectionsDataSource *)self apiController];
  v9 = [(AllCollectionsDataSource *)self apiController];
  [v7 updateCollectionsWithoutPreparingSnapshot:v10 usingBatchedIdentifiers:v6 usingCollectionFetcher:v8 usingGuideConsumer:self usingBatchSize:{objc_msgSend(v9, "batchSize")}];

  [(AllCollectionsDataSource *)self updateSnapshotUsingCollections:v10];
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(AllCollectionsDataSource *)self sections];
  v15 = [v14 objectAtIndex:{objc_msgSend(v13, "section")}];

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

  v16 = sub_10000FA08(v10);

  if (v16 != 5 && v11)
  {
    [v11 scrollToSelectedFilter];
  }

LABEL_9:
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(AllCollectionsDataSource *)self sections];
  v10 = [v9 objectAtIndex:{objc_msgSend(v8, "section")}];

  if (v10)
  {
    [v10 configuration];

    if (v29 == 1)
    {
      v11 = sub_10000FA08(v7);
      v12 = [(DataSource *)self collectionView];
      if (v11 == 5)
      {
        v13 = +[CollectionsFilterMenu reuseIdentifier];
        v14 = [v12 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v13 forIndexPath:v8];
        [(AllCollectionsDataSource *)self setFilterMenu:v14];

        v15 = [(AllCollectionsDataSource *)self apiController];
        v16 = [v15 allCollectionViewFilters];

        v17 = [(AllCollectionsDataSource *)self filterMenu];
        v18 = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
        v19 = [(AllCollectionsDataSource *)self apiController];
        v20 = [v19 allCollectionViewIdentifiers];
        [v17 configureForAllCollectionsWithRoutingDelegate:self withAllCollectionsResultFilters:v16 withSelectedFilterIndex:v18 selectedFilterResultsCount:{objc_msgSend(v20, "count")}];

        v21 = [(AllCollectionsDataSource *)self filterMenu];
      }

      else
      {
        v22 = +[CollectionsFilterCarouselView reuseIdentifier];
        v23 = +[CollectionsFilterCarouselView reuseIdentifier];
        v21 = [v12 dequeueReusableSupplementaryViewOfKind:v22 withReuseIdentifier:v23 forIndexPath:v8];

        v24 = [(AllCollectionsDataSource *)self apiController];
        v25 = [v24 allCollectionViewFilters];

        v26 = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
        [v21 configureWithContext:1 withRoutingDelegate:self withAllCollectionsResultFilters:v25 withSelectedFilterIndex:v26];

        [v21 displayFilters];
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(AllCollectionsDataSource *)self sections];
  v10 = [v9 objectAtIndex:{objc_msgSend(v8, "section")}];

  if (v10 && ([v10 configuration], v19, v20))
  {
    [v10 configuration];

    if (v18 == 1)
    {
      v11 = +[MKCollectionBatchCell reuseIdentifier];
      v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

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
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v8];

    v14 = [(AllCollectionsDataSource *)self collectionsLogicController];
    v15 = [v14 collectionAtIndex:{objc_msgSend(v8, "item")}];
    [v12 configureWithModel:v15];
  }

  return v12;
}

- (void)clearGuidesFromSnapshot
{
  v3 = [(AllCollectionsDataSource *)self dataSource];
  v9 = [v3 snapshot];

  v4 = [(AllCollectionsDataSource *)self allCollectionsSectionOfType:0];
  v5 = [v9 itemIdentifiersInSectionWithIdentifier:v4];

  v6 = [(AllCollectionsDataSource *)self allCollectionsSectionOfType:1];
  v7 = [v9 itemIdentifiersInSectionWithIdentifier:v6];

  if ([v5 count] || objc_msgSend(v7, "count"))
  {
    [v9 deleteItemsWithIdentifiers:v5];
    [v9 deleteItemsWithIdentifiers:v7];
    v8 = [(AllCollectionsDataSource *)self dataSource];
    [v8 applySnapshot:v9 animatingDifferences:0];
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

- (id)allCollectionsSectionOfType:(int64_t)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(AllCollectionsDataSource *)self sections];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
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

        if (v10 == a3)
        {
          v11 = v9;
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(AllCollectionsDataSource *)self resultFilters];
  v4 = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
  v8 = [v3 objectAtIndex:{objc_msgSend(v4, "item")}];

  v5 = [v8 filterType];
  if (v5 == 2)
  {
    v6 = [v8 keywordFilter];
    v7 = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
    [(AllCollectionsDataSource *)self didRouteToKeywordFilter:v6 atIndexPath:v7];
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v6 = [v8 addressFilter];
    v7 = [(AllCollectionsDataSource *)self selectedFilterIndexPath];
    [(AllCollectionsDataSource *)self didRouteToAddressFilter:v6 atIndexPath:v7];
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

- (void)_dispatchOnManThread:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (+[NSThread isMainThread])
    {
      v3[2](v3);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100DAE2B0;
      block[3] = &unk_101661760;
      v5 = v3;
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
  v4 = [(AllCollectionsDataSource *)self dataSource];
  v3 = [(AllCollectionsDataSource *)self snapshot];
  [v4 applySnapshot:v3 animatingDifferences:0];
}

- (void)updateSnapshotUsingCollections:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [(AllCollectionsDataSource *)self setSnapshot:v5];

  v6 = [(AllCollectionsDataSource *)self snapshot];
  v7 = [(AllCollectionsDataSource *)self sections];
  [v6 appendSectionsWithIdentifiers:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(AllCollectionsDataSource *)self sections];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (!v13)
        {
          v15 = 0u;
          v16 = 0u;
LABEL_12:
          [(AllCollectionsDataSource *)self setPlaceCollections:v4, v15, v16];
          v14 = [(AllCollectionsDataSource *)self snapshot];
          [v14 appendItemsWithIdentifiers:v4 intoSectionWithIdentifier:v13];

          goto LABEL_13;
        }

        [*(*(&v17 + 1) + 8 * i) configuration];

        if (!v16)
        {
          goto LABEL_12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)prepareSnapshotUsingCollections:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [(AllCollectionsDataSource *)self setSnapshot:v5];

  v6 = [(AllCollectionsDataSource *)self snapshot];
  v7 = [(AllCollectionsDataSource *)self sections];
  [v6 appendSectionsWithIdentifiers:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(AllCollectionsDataSource *)self sections];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
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

        v14 = [(AllCollectionsDataSource *)self snapshot];
        [v14 appendItemsWithIdentifiers:v4 intoSectionWithIdentifier:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (AllCollectionsDataSource)initWithCollectionView:(id)a3 usingCuratedCollections:(id)a4 usingPlaceCollectionIds:(id)a5 withResultFilters:(id)a6 sections:(id)a7 usingAPIController:(id)a8 withRoutingDelegate:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v50 = a6;
  v49 = a7;
  v18 = a8;
  v19 = a9;
  v51.receiver = self;
  v51.super_class = AllCollectionsDataSource;
  v20 = [(DataSource *)&v51 initWithCollectionView:v15 updateLocation:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_placeCollections, a4);
    objc_storeStrong(&v21->_resultFilters, a6);
    objc_storeStrong(&v21->_sections, a7);
    objc_storeStrong(&v21->_apiController, a8);
    objc_storeWeak(&v21->_routingDelegate, v19);
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

    v32 = sub_10000FA08(v15);
    v33 = [(DataSource *)v21 collectionView];
    v34 = objc_opt_class();
    if (v32 == 5)
    {
      v35 = +[CollectionsFilterMenu reuseIdentifier];
      [v33 registerClass:v34 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v35];
    }

    else
    {
      v35 = +[CollectionsFilterCarouselView reuseIdentifier];
      v36 = +[CollectionsFilterCarouselView reuseIdentifier];
      [v33 registerClass:v34 forSupplementaryViewOfKind:v35 withReuseIdentifier:v36];
    }

    v37 = [UICollectionViewDiffableDataSource alloc];
    v38 = sub_1007CDFC8(v21);
    v39 = [v37 initWithCollectionView:v15 cellProvider:v38];
    dataSource = v21->_dataSource;
    v21->_dataSource = v39;

    v41 = v21->_dataSource;
    v42 = sub_1007CE178(v21);
    [(UICollectionViewDiffableDataSource *)v41 setSupplementaryViewProvider:v42];

    v43 = [MKPlaceCollectionsLogicController alloc];
    v44 = [(DataSource *)v21 collectionView];
    v45 = +[CuratedCollectionSyncManager sharedManager];
    v46 = [v43 initWithCollectionView:v44 withPlaceCollections:v16 usingCollectionIds:v17 usingCollectionFetcher:v18 usingGuideConsumer:v21 usingSyncCoordinator:v45 inContext:5 usingBatchSize:{objc_msgSend(v18, "batchSize")}];
    collectionsLogicController = v21->_collectionsLogicController;
    v21->_collectionsLogicController = v46;

    [(AllCollectionsDataSource *)v21 prepareSnapshotUsingCollections:v21->_placeCollections];
  }

  return v21;
}

@end