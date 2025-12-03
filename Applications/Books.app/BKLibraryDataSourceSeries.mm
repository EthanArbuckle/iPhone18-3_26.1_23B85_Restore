@interface BKLibraryDataSourceSeries
- (BKLibraryDataSourceSeries)init;
- (id)_arrayOfAllSeriesContainerAssetIDs;
- (id)_arrayOfSeriesAssetsFromAdamIDs:(id)ds insertNullsForMissingAssets:(BOOL)assets;
- (id)_latestOpenedLibraryAssetForSeriesID:(id)d inMOC:(id)c;
- (void)_BCCloudStoreAssetManagerChanged:(id)changed;
- (void)_ownershipDidChange:(id)change;
- (void)_seriesUpdated:(id)updated;
- (void)_storeItemsUpdatedWithCurrentCloudSyncVersions:(id)versions updated:(id)updated removed:(id)removed;
- (void)_updateSeriesManager;
- (void)applicationDidBecomeActive;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion;
- (void)dealloc;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)fetchAssetIDsWithCompletion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
@end

@implementation BKLibraryDataSourceSeries

- (BKLibraryDataSourceSeries)init
{
  kdebug_trace();
  v16.receiver = self;
  v16.super_class = BKLibraryDataSourceSeries;
  v3 = [(BKLibraryDataSourceSeries *)&v16 init];
  v4 = v3;
  if (v3)
  {
    v3->_didMigrateAudiobookSeriesOnce = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("com.apple.BKLibraryDataSourceSeries.dispatchQueue", v6);
    [(BKLibraryDataSourceSeries *)v4 setDispatchQueue:v7];

    v8 = +[NSDistributedNotificationCenter defaultCenter];
    [v8 addObserver:v4 selector:"_BCCloudStoreAssetManagerChanged:" name:BCCloudStoreAssetManagerChanged object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = +[UIApplication sharedApplication];
    [v9 addObserver:v4 selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:v10];

    [(BKLibraryDataSourceSeries *)v4 applicationDidBecomeActive];
    v11 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    lastObject = [v11 lastObject];
    v13 = [lastObject stringByAppendingPathComponent:@"series-artwork"];
    v14 = +[NSFileManager defaultManager];
    [v14 removeItemAtPath:v13 error:0];
  }

  kdebug_trace();
  return v4;
}

- (void)applicationDidBecomeActive
{
  [(BKLibraryDataSourceSeries *)self setWantsSeriesUpdated:1];
  v3 = dispatch_time(0, 10000000000);
  dispatchQueue = [(BKLibraryDataSourceSeries *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139258;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v3, dispatchQueue, block);
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self name:BCCloudStoreAssetManagerChanged object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[UIApplication sharedApplication];
  [v4 removeObserver:self name:UIApplicationDidBecomeActiveNotification object:v5];

  v6.receiver = self;
  v6.super_class = BKLibraryDataSourceSeries;
  [(BKLibraryDataSourceSeries *)&v6 dealloc];
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    assetID = [asset assetID];
    v12 = assetID;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v10 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:v9 insertNullsForMissingAssets:0];
    lastObject = [v10 lastObject];
    (*(completion + 2))(completionCopy, lastObject, 0);
  }
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)fetchAssetIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  kdebug_trace();
  if (!self->_listeningForLibraryUpdates)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = BKLibraryOwnershipDidChangeNotification;
    libraryManager = [(BKLibraryDataSourceSeries *)self libraryManager];
    [v4 addObserver:self selector:"_ownershipDidChange:" name:v5 object:libraryManager];

    self->_listeningForLibraryUpdates = 1;
  }

  v7 = completionCopy;
  if (completionCopy)
  {
    v8 = +[BKSeriesManager sharedManager];
    allSeriesItemAdamIds = [v8 allSeriesItemAdamIds];
    _arrayOfAllSeriesContainerAssetIDs = [(BKLibraryDataSourceSeries *)self _arrayOfAllSeriesContainerAssetIDs];
    v11 = [allSeriesItemAdamIds arrayByAddingObjectsFromArray:_arrayOfAllSeriesContainerAssetIDs];
    v12 = +[BCCacheManager defaultCacheManager];
    [v12 addProductProfileIDs:allSeriesItemAdamIds priority:3];

    kdebug_trace();
    (*(completionCopy + 2))(completionCopy, v11, 0);

    v7 = completionCopy;
  }
}

- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  kdebug_trace();
  v9 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:dsCopy insertNullsForMissingAssets:1];

  kdebug_trace();
  v8 = objc_retainBlock(completionCopy);

  if (v8)
  {
    v8[2](v8, v9, 0);
  }
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  v9 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        storeID = [v15 storeID];
        if (storeID)
        {
          v17 = storeID;
          if (exhaustive)
          {
          }

          else
          {
            isOwned = [v15 isOwned];

            if (isOwned)
            {
              continue;
            }
          }

          storeID2 = [v15 storeID];
          [v9 addObject:storeID2];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v20 = +[BCCloudAssetManager sharedManager];
    storeAssetManager = [v20 storeAssetManager];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100138004;
    v24[3] = &unk_100A063F0;
    v25 = completionCopy;
    [storeAssetManager deleteStoreItemsWithStoreIDs:v9 completion:v24];

    v22 = v25;
  }

  else
  {
    v23 = objc_retainBlock(completionCopy);
    v22 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 1, 0);
    }
  }
}

- (void)_ownershipDidChange:(id)change
{
  changeCopy = change;
  dispatchQueue = [(BKLibraryDataSourceSeries *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013812C;
  v7[3] = &unk_100A03440;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_BCCloudStoreAssetManagerChanged:(id)changed
{
  changedCopy = changed;
  v5 = _os_activity_create(&_mh_execute_header, "BCCloudStoreAssetManagerChanged Received Notification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001384EC;
  v7[3] = &unk_100A03440;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  os_activity_apply(v5, v7);
}

- (void)_storeItemsUpdatedWithCurrentCloudSyncVersions:(id)versions updated:(id)updated removed:(id)removed
{
  v6 = BKLibraryDataSourceSeriesLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#storeItemsUpdatedWithCurrentCloudSyncVersions", buf, 2u);
  }

  v7 = +[BCCloudAssetManager sharedManager];
  storeAssetManager = [v7 storeAssetManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100138AA0;
  v9[3] = &unk_100A081E8;
  v9[4] = self;
  [storeAssetManager fetchStoreItemsIncludingDeleted:0 completion:v9];
}

- (void)_updateSeriesManager
{
  dispatchQueue = [(BKLibraryDataSourceSeries *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = BKLibraryDataSourceSeriesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating series data for all store books and audiobooks", v14, 2u);
  }

  if (!self->_listeningForSeriesUpdates)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_seriesUpdated:" name:BKSeriesManagerUpdatesSeriesNotificationName object:0];

    self->_listeningForSeriesUpdates = 1;
  }

  libraryManager = [(BKLibraryDataSourceSeries *)self libraryManager];
  assetIDsOfStoreBookAssets = [libraryManager assetIDsOfStoreBookAssets];

  libraryManager2 = [(BKLibraryDataSourceSeries *)self libraryManager];
  assetIDsOfStoreAudiobookAssets = [libraryManager2 assetIDsOfStoreAudiobookAssets];

  v10 = +[BKSeriesManager sharedManager];
  v11 = &__NSArray0__struct;
  v15[0] = BKSeriesManagerAssetTypeBooks;
  v15[1] = BKSeriesManagerAssetTypeAudiobooks;
  if (assetIDsOfStoreBookAssets)
  {
    v12 = assetIDsOfStoreBookAssets;
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  if (assetIDsOfStoreAudiobookAssets)
  {
    v11 = assetIDsOfStoreAudiobookAssets;
  }

  v16[0] = v12;
  v16[1] = v11;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v10 updateSeriesForAssetAdamIDsWithTypes:v13 forceCheck:0];
  [(BKLibraryDataSourceSeries *)self setWantsSeriesUpdated:0];
}

- (void)_seriesUpdated:(id)updated
{
  userInfo = [updated userInfo];
  v5 = [userInfo objectForKey:BKSeriesManagerUpdatesSeriesNotificationUserInfoAdamIDsAddedKey];
  if ([v5 count])
  {
    v39 = v5;
    v40 = userInfo;
    v6 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:v5 insertNullsForMissingAssets:0];
    v7 = [v6 valueForKey:@"assetID"];
    bu_arrayByRemovingNSNulls = [v7 bu_arrayByRemovingNSNulls];

    selfCopy = self;
    libraryManager = [(BKLibraryDataSourceSeries *)self libraryManager];
    v37 = bu_arrayByRemovingNSNulls;
    v10 = [libraryManager existingAssetIDsFromAssetIDs:bu_arrayByRemovingNSNulls];

    v11 = +[NSMutableArray array];
    v12 = +[NSMutableArray array];
    v41 = +[NSMutableArray array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v43;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          assetID = [v18 assetID];
          v20 = [v10 containsObject:assetID];

          if (v20)
          {
            [v12 addObject:v18];
            assetID2 = [v18 assetID];
            [v41 addObject:assetID2];
          }

          else
          {
            [v11 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v15);
    }

    v22 = +[BCCacheManager defaultCacheManager];
    v23 = [v11 valueForKey:@"assetID"];
    [v22 addProductProfileIDs:v23 priority:3];

    self = selfCopy;
    libraryManager2 = [(BKLibraryDataSourceSeries *)selfCopy libraryManager];
    [libraryManager2 libraryDataSource:selfCopy addedAssets:v11];

    libraryManager3 = [(BKLibraryDataSourceSeries *)selfCopy libraryManager];
    [libraryManager3 libraryDataSource:selfCopy updatedAssets:v12];

    v5 = v39;
    userInfo = v40;
  }

  v26 = [userInfo objectForKey:BKSeriesManagerUpdatesSeriesNotificationUserInfoAdamIDsRemovedKey];
  if ([v26 count])
  {
    bu_arrayByRemovingDuplicates = [v26 bu_arrayByRemovingDuplicates];

    v28 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:bu_arrayByRemovingDuplicates insertNullsForMissingAssets:0];
    if ([v28 count])
    {
      v29 = [v28 valueForKey:@"assetID"];
      bu_arrayByRemovingNSNulls2 = [v29 bu_arrayByRemovingNSNulls];

      v31 = [bu_arrayByRemovingDuplicates bu_arrayByRemovingObjectsInArray:bu_arrayByRemovingNSNulls2];

      bu_arrayByRemovingDuplicates = v31;
    }

    else
    {
      bu_arrayByRemovingNSNulls2 = 0;
    }

    v26 = bu_arrayByRemovingDuplicates;
  }

  else
  {
    bu_arrayByRemovingNSNulls2 = 0;
  }

  if ([v26 count])
  {
    libraryManager4 = [(BKLibraryDataSourceSeries *)self libraryManager];
    [libraryManager4 libraryDataSource:self removedAssetsWithAssetIDs:v26 orTemporaryAssetIDs:0];
  }

  v33 = [userInfo objectForKey:BKSeriesManagerUpdatesSeriesNotificationUserInfoAdamIDsUpdatedKey];
  if ([bu_arrayByRemovingNSNulls2 count])
  {
    v34 = [v33 arrayByAddingObjectsFromArray:bu_arrayByRemovingNSNulls2];

    v33 = v34;
  }

  if ([v33 count])
  {
    v35 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:v33 insertNullsForMissingAssets:0];
    libraryManager5 = [(BKLibraryDataSourceSeries *)self libraryManager];
    [libraryManager5 libraryDataSource:self updatedAssets:v35];
  }
}

- (id)_arrayOfSeriesAssetsFromAdamIDs:(id)ds insertNullsForMissingAssets:(BOOL)assets
{
  assetsCopy = assets;
  dsCopy = ds;
  v6 = +[BKSeriesManager sharedManager];
  v7 = +[NSMutableArray array];
  v18 = v6;
  v19 = dsCopy;
  v8 = [v6 seriesItemsWithAdamIds:dsCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [BKSeriesInfo seriesInfoWithDictionary:*(*(&v21 + 1) + 8 * i)];
        if (!v13 || (v14 = [BKSeriesAsset alloc], [(BKLibraryDataSourceSeries *)self identifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(BKSeriesAsset *)v14 initWithSeriesInfo:v13 dataSourceIdentifier:v15], v15, !v16))
        {
          if (!assetsCopy)
          {
            goto LABEL_11;
          }

          v16 = +[NSNull null];
        }

        [v7 addObject:v16];

LABEL_11:
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_arrayOfAllSeriesContainerAssetIDs
{
  v2 = +[BKSeriesManager sharedManager];
  allSeriesContainerIds = [v2 allSeriesContainerIds];

  return allSeriesContainerIds;
}

- (id)_latestOpenedLibraryAssetForSeriesID:(id)d inMOC:(id)c
{
  cCopy = c;
  dCopy = d;
  v8 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  libraryManager = [(BKLibraryDataSourceSeries *)self libraryManager];
  v10 = [libraryManager predicateForLibraryAssetsWithSeriesID:dCopy];

  v23[0] = v10;
  libraryManager2 = [(BKLibraryDataSourceSeries *)self libraryManager];
  predicateForLocalLibraryAssets = [libraryManager2 predicateForLocalLibraryAssets];
  v23[1] = predicateForLocalLibraryAssets;
  v13 = [NSArray arrayWithObjects:v23 count:2];
  v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];
  [v8 setPredicate:v14];

  v15 = [NSSortDescriptor sortDescriptorWithKey:@"lastOpenDate" ascending:0];
  v22[0] = v15;
  v16 = [NSSortDescriptor sortDescriptorWithKey:@"seriesSortKey" ascending:1];
  v22[1] = v16;
  v17 = [NSArray arrayWithObjects:v22 count:2];
  [v8 setSortDescriptors:v17];

  [v8 setFetchLimit:1];
  [v8 setReturnsObjectsAsFaults:0];
  v21 = 0;
  v18 = [cCopy executeFetchRequest:v8 error:&v21];

  if (v18)
  {
    lastObject = [v18 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

@end