@interface BKLibraryDataSourceSeries
- (BKLibraryDataSourceSeries)init;
- (id)_arrayOfAllSeriesContainerAssetIDs;
- (id)_arrayOfSeriesAssetsFromAdamIDs:(id)a3 insertNullsForMissingAssets:(BOOL)a4;
- (id)_latestOpenedLibraryAssetForSeriesID:(id)a3 inMOC:(id)a4;
- (void)_BCCloudStoreAssetManagerChanged:(id)a3;
- (void)_ownershipDidChange:(id)a3;
- (void)_seriesUpdated:(id)a3;
- (void)_storeItemsUpdatedWithCurrentCloudSyncVersions:(id)a3 updated:(id)a4 removed:(id)a5;
- (void)_updateSeriesManager;
- (void)applicationDidBecomeActive;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)dealloc;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)fetchAssetIDsWithCompletion:(id)a3;
- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
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
    v12 = [v11 lastObject];
    v13 = [v12 stringByAppendingPathComponent:@"series-artwork"];
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
  v4 = [(BKLibraryDataSourceSeries *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139258;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v3, v4, block);
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

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v7 = a4;
    v8 = [a3 assetID];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v10 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:v9 insertNullsForMissingAssets:0];
    v11 = [v10 lastObject];
    (*(a4 + 2))(v7, v11, 0);
  }
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)fetchAssetIDsWithCompletion:(id)a3
{
  v13 = a3;
  kdebug_trace();
  if (!self->_listeningForLibraryUpdates)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = BKLibraryOwnershipDidChangeNotification;
    v6 = [(BKLibraryDataSourceSeries *)self libraryManager];
    [v4 addObserver:self selector:"_ownershipDidChange:" name:v5 object:v6];

    self->_listeningForLibraryUpdates = 1;
  }

  v7 = v13;
  if (v13)
  {
    v8 = +[BKSeriesManager sharedManager];
    v9 = [v8 allSeriesItemAdamIds];
    v10 = [(BKLibraryDataSourceSeries *)self _arrayOfAllSeriesContainerAssetIDs];
    v11 = [v9 arrayByAddingObjectsFromArray:v10];
    v12 = +[BCCacheManager defaultCacheManager];
    [v12 addProductProfileIDs:v9 priority:3];

    kdebug_trace();
    (*(v13 + 2))(v13, v11, 0);

    v7 = v13;
  }
}

- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  kdebug_trace();
  v9 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:v7 insertNullsForMissingAssets:1];

  kdebug_trace();
  v8 = objc_retainBlock(v6);

  if (v8)
  {
    v8[2](v8, v9, 0);
  }
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v7;
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
        v16 = [v15 storeID];
        if (v16)
        {
          v17 = v16;
          if (a4)
          {
          }

          else
          {
            v18 = [v15 isOwned];

            if (v18)
            {
              continue;
            }
          }

          v19 = [v15 storeID];
          [v9 addObject:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v20 = +[BCCloudAssetManager sharedManager];
    v21 = [v20 storeAssetManager];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100138004;
    v24[3] = &unk_100A063F0;
    v25 = v8;
    [v21 deleteStoreItemsWithStoreIDs:v9 completion:v24];

    v22 = v25;
  }

  else
  {
    v23 = objc_retainBlock(v8);
    v22 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 1, 0);
    }
  }
}

- (void)_ownershipDidChange:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceSeries *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013812C;
  v7[3] = &unk_100A03440;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_BCCloudStoreAssetManagerChanged:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "BCCloudStoreAssetManagerChanged Received Notification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001384EC;
  v7[3] = &unk_100A03440;
  v8 = v4;
  v9 = self;
  v6 = v4;
  os_activity_apply(v5, v7);
}

- (void)_storeItemsUpdatedWithCurrentCloudSyncVersions:(id)a3 updated:(id)a4 removed:(id)a5
{
  v6 = BKLibraryDataSourceSeriesLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#storeItemsUpdatedWithCurrentCloudSyncVersions", buf, 2u);
  }

  v7 = +[BCCloudAssetManager sharedManager];
  v8 = [v7 storeAssetManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100138AA0;
  v9[3] = &unk_100A081E8;
  v9[4] = self;
  [v8 fetchStoreItemsIncludingDeleted:0 completion:v9];
}

- (void)_updateSeriesManager
{
  v3 = [(BKLibraryDataSourceSeries *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

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

  v6 = [(BKLibraryDataSourceSeries *)self libraryManager];
  v7 = [v6 assetIDsOfStoreBookAssets];

  v8 = [(BKLibraryDataSourceSeries *)self libraryManager];
  v9 = [v8 assetIDsOfStoreAudiobookAssets];

  v10 = +[BKSeriesManager sharedManager];
  v11 = &__NSArray0__struct;
  v15[0] = BKSeriesManagerAssetTypeBooks;
  v15[1] = BKSeriesManagerAssetTypeAudiobooks;
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  if (v9)
  {
    v11 = v9;
  }

  v16[0] = v12;
  v16[1] = v11;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v10 updateSeriesForAssetAdamIDsWithTypes:v13 forceCheck:0];
  [(BKLibraryDataSourceSeries *)self setWantsSeriesUpdated:0];
}

- (void)_seriesUpdated:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:BKSeriesManagerUpdatesSeriesNotificationUserInfoAdamIDsAddedKey];
  if ([v5 count])
  {
    v39 = v5;
    v40 = v4;
    v6 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:v5 insertNullsForMissingAssets:0];
    v7 = [v6 valueForKey:@"assetID"];
    v8 = [v7 bu_arrayByRemovingNSNulls];

    v38 = self;
    v9 = [(BKLibraryDataSourceSeries *)self libraryManager];
    v37 = v8;
    v10 = [v9 existingAssetIDsFromAssetIDs:v8];

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
          v19 = [v18 assetID];
          v20 = [v10 containsObject:v19];

          if (v20)
          {
            [v12 addObject:v18];
            v21 = [v18 assetID];
            [v41 addObject:v21];
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

    self = v38;
    v24 = [(BKLibraryDataSourceSeries *)v38 libraryManager];
    [v24 libraryDataSource:v38 addedAssets:v11];

    v25 = [(BKLibraryDataSourceSeries *)v38 libraryManager];
    [v25 libraryDataSource:v38 updatedAssets:v12];

    v5 = v39;
    v4 = v40;
  }

  v26 = [v4 objectForKey:BKSeriesManagerUpdatesSeriesNotificationUserInfoAdamIDsRemovedKey];
  if ([v26 count])
  {
    v27 = [v26 bu_arrayByRemovingDuplicates];

    v28 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:v27 insertNullsForMissingAssets:0];
    if ([v28 count])
    {
      v29 = [v28 valueForKey:@"assetID"];
      v30 = [v29 bu_arrayByRemovingNSNulls];

      v31 = [v27 bu_arrayByRemovingObjectsInArray:v30];

      v27 = v31;
    }

    else
    {
      v30 = 0;
    }

    v26 = v27;
  }

  else
  {
    v30 = 0;
  }

  if ([v26 count])
  {
    v32 = [(BKLibraryDataSourceSeries *)self libraryManager];
    [v32 libraryDataSource:self removedAssetsWithAssetIDs:v26 orTemporaryAssetIDs:0];
  }

  v33 = [v4 objectForKey:BKSeriesManagerUpdatesSeriesNotificationUserInfoAdamIDsUpdatedKey];
  if ([v30 count])
  {
    v34 = [v33 arrayByAddingObjectsFromArray:v30];

    v33 = v34;
  }

  if ([v33 count])
  {
    v35 = [(BKLibraryDataSourceSeries *)self _arrayOfSeriesAssetsFromAdamIDs:v33 insertNullsForMissingAssets:0];
    v36 = [(BKLibraryDataSourceSeries *)self libraryManager];
    [v36 libraryDataSource:self updatedAssets:v35];
  }
}

- (id)_arrayOfSeriesAssetsFromAdamIDs:(id)a3 insertNullsForMissingAssets:(BOOL)a4
{
  v20 = a4;
  v5 = a3;
  v6 = +[BKSeriesManager sharedManager];
  v7 = +[NSMutableArray array];
  v18 = v6;
  v19 = v5;
  v8 = [v6 seriesItemsWithAdamIds:v5];
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
          if (!v20)
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
  v3 = [v2 allSeriesContainerIds];

  return v3;
}

- (id)_latestOpenedLibraryAssetForSeriesID:(id)a3 inMOC:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v9 = [(BKLibraryDataSourceSeries *)self libraryManager];
  v10 = [v9 predicateForLibraryAssetsWithSeriesID:v7];

  v23[0] = v10;
  v11 = [(BKLibraryDataSourceSeries *)self libraryManager];
  v12 = [v11 predicateForLocalLibraryAssets];
  v23[1] = v12;
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
  v18 = [v6 executeFetchRequest:v8 error:&v21];

  if (v18)
  {
    v19 = [v18 lastObject];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end