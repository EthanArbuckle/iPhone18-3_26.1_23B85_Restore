@interface BKSeriesManager
+ (id)itemFetchProperties;
+ (id)sharedManager;
- (BKSeriesManager)init;
- (BKSeriesManager)initWithDatabase:(id)a3 catalogService:(id)a4;
- (id)allSeriesContainerIds;
- (id)allSeriesContainerIdsInManagedObjectContext:(id)a3;
- (id)allSeriesItemAdamIds;
- (id)allSeriesItemAdamIdsInManagedObjectContext:(id)a3;
- (id)allSeriesItemsForAdamIDs:(id)a3;
- (id)allSeriesItemsForAdamIDs:(id)a3 inManagedObjectContext:(id)a4;
- (id)allSeriesItemsInSeries:(id)a3;
- (id)allSeriesItemsInSeries:(id)a3 inManagedObjectContext:(id)a4;
- (id)seriesContainerIdsMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4;
- (id)seriesContainerWithSeriesId:(id)a3;
- (id)seriesContainerWithSeriesId:(id)a3 inManagedObjectContext:(id)a4;
- (id)seriesIDsReferencedByAdamIds:(id)a3 inManagedObjectContext:(id)a4;
- (id)seriesItemAdamIdsMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4;
- (id)seriesItemWithAdamId:(id)a3;
- (id)seriesItemWithAdamId:(id)a3 inManagedObjectContext:(id)a4;
- (id)seriesItemsWithAdamIds:(id)a3;
- (void)_updateSeriesForAssetAdamIDsWithTypes:(id)a3 forceCheck:(BOOL)a4 completion:(id)a5;
- (void)_updateSeriesForSeriesAdamIDsWithTypes:(id)a3 forceCheck:(BOOL)a4 completion:(id)a5;
- (void)fetchBuyParametersForSeriesWithAdamID:(id)a3 isAudiobook:(BOOL)a4 completionHandler:(id)a5;
- (void)updateAssetsFromCloudSyncForAssetAdamIDsWithTypes:(id)a3 completion:(id)a4;
- (void)updateExpiredSeriesForAssetAdamIDsWithTypes:(id)a3;
@end

@implementation BKSeriesManager

+ (id)sharedManager
{
  if (qword_346220[0] != -1)
  {
    sub_1EDAD8();
  }

  v3 = qword_346218;

  return v3;
}

+ (id)itemFetchProperties
{
  v4[0] = @"adamId";
  v4[1] = @"author";
  v4[2] = @"authorCount";
  v4[3] = @"authorNames";
  v4[4] = @"coverAspectRatio";
  v4[5] = @"genre";
  v4[6] = @"genres";
  v4[7] = @"hasTooManyAuthors";
  v4[8] = @"hasTooManyNarrators";
  v4[9] = @"isAudiobook";
  v4[10] = @"isContainer";
  v4[11] = @"isExplicit";
  v4[12] = @"mappedItemId";
  v4[13] = @"mappedItemTypeRaw";
  v4[14] = @"narratorCount";
  v4[15] = @"narratorNames";
  v4[16] = @"objectID";
  v4[17] = @"position";
  v4[18] = @"popularity";
  v4[19] = @"releaseDate";
  v4[20] = @"sequenceDisplayName";
  v4[21] = @"sequenceNumber";
  v4[22] = @"seriesAdamId";
  v4[23] = @"seriesIsOrdered";
  v4[24] = @"seriesTitle";
  v4[25] = @"sortTitle";
  v4[26] = @"sortAuthor";
  v4[27] = @"title";
  v4[28] = @"url";
  v2 = [NSArray arrayWithObjects:v4 count:29];

  return v2;
}

- (BKSeriesManager)initWithDatabase:(id)a3 catalogService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKSeriesManager;
  v9 = [(BKSeriesManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    v10->_timeOut = 300.0;
    v11 = dispatch_queue_create("com.apple.BKSeriesManager", 0);
    queue = v10->_queue;
    v10->_queue = v11;

    objc_storeStrong(&v10->_catalogService, a4);
  }

  return v10;
}

- (BKSeriesManager)init
{
  v3 = objc_alloc_init(BKSeriesDatabase);
  v4 = +[BCMBridgedCatalogService sharedInstance];
  v5 = [(BKSeriesManager *)self initWithDatabase:v3 catalogService:v4];

  return v5;
}

- (id)seriesContainerIdsMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BKSeriesItem fetchRequest];
  [v7 setPredicate:v6];

  [v7 setResultType:2];
  v15[0] = @"objectID";
  v15[1] = @"seriesAdamId";
  v8 = [NSArray arrayWithObjects:v15 count:2];
  [v7 setPropertiesToFetch:v8];

  [v7 setReturnsObjectsAsFaults:0];
  [v7 setReturnsDistinctResults:1];
  [v7 setFetchBatchSize:128];
  v14 = 0;
  v9 = [v5 executeFetchRequest:v7 error:&v14];

  v10 = v14;
  if (v9)
  {
    v11 = [v9 valueForKey:@"seriesAdamId"];
  }

  else
  {
    v12 = BCSeriesManagerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1EDAEC();
    }

    v11 = 0;
  }

  return v11;
}

- (id)seriesItemAdamIdsMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BKSeriesItem fetchRequest];
  [v7 setPredicate:v6];

  [v7 setResultType:2];
  v15[0] = @"objectID";
  v15[1] = @"adamId";
  v8 = [NSArray arrayWithObjects:v15 count:2];
  [v7 setPropertiesToFetch:v8];

  [v7 setReturnsObjectsAsFaults:0];
  [v7 setReturnsDistinctResults:1];
  [v7 setFetchBatchSize:128];
  v14 = 0;
  v9 = [v5 executeFetchRequest:v7 error:&v14];

  v10 = v14;
  if (v9)
  {
    v11 = [v9 valueForKey:@"adamId"];
  }

  else
  {
    v12 = BCSeriesManagerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1EDAEC();
    }

    v11 = 0;
  }

  return v11;
}

- (id)allSeriesContainerIds
{
  v3 = [(BKSeriesManager *)self database];
  v4 = [v3 newManagedObjectContext];

  v5 = [(BKSeriesManager *)self allSeriesContainerIdsInManagedObjectContext:v4];

  return v5;
}

- (id)allSeriesItemAdamIds
{
  v3 = [(BKSeriesManager *)self database];
  v4 = [v3 newManagedObjectContext];

  v5 = [(BKSeriesManager *)self allSeriesItemAdamIdsInManagedObjectContext:v4];

  return v5;
}

- (id)allSeriesItemsForAdamIDs:(id)a3
{
  v4 = a3;
  v5 = [(BKSeriesManager *)self database];
  v6 = [v5 newManagedObjectContext];

  v7 = [(BKSeriesManager *)self allSeriesItemsForAdamIDs:v4 inManagedObjectContext:v6];

  return v7;
}

- (id)allSeriesItemsInSeries:(id)a3
{
  v4 = a3;
  v5 = [(BKSeriesManager *)self database];
  v6 = [v5 newManagedObjectContext];

  v7 = [(BKSeriesManager *)self allSeriesItemsInSeries:v4 inManagedObjectContext:v6];

  return v7;
}

- (id)seriesContainerWithSeriesId:(id)a3
{
  v4 = a3;
  v5 = [(BKSeriesManager *)self database];
  v6 = [v5 newManagedObjectContext];

  v7 = [(BKSeriesManager *)self seriesContainerWithSeriesId:v4 inManagedObjectContext:v6];

  return v7;
}

- (id)seriesItemWithAdamId:(id)a3
{
  v4 = a3;
  v5 = [(BKSeriesManager *)self database];
  v6 = [v5 newManagedObjectContext];

  v7 = [(BKSeriesManager *)self seriesItemWithAdamId:v4 inManagedObjectContext:v6];

  return v7;
}

- (id)allSeriesContainerIdsInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = +[BKSeriesItem predicateForAllSeriesContainerItems];
  v6 = [(BKSeriesManager *)self seriesContainerIdsMatchingPredicate:v5 inManagedObjectContext:v4];

  return v6;
}

- (id)allSeriesItemAdamIdsInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = +[BKSeriesItem predicateForAllBookItems];
  v6 = [(BKSeriesManager *)self seriesItemAdamIdsMatchingPredicate:v5 inManagedObjectContext:v4];

  return v6;
}

- (id)allSeriesItemsForAdamIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [(BKSeriesManager *)self seriesIDsReferencedByAdamIds:a3 inManagedObjectContext:v6];
  if ([v7 count])
  {
    v8 = [NSSet setWithArray:v7];
    v9 = [v8 allObjects];
    v10 = [BKSeriesItem predicateForAllItemsAndContainersInSeries:v9];

    v11 = [(BKSeriesManager *)self seriesItemAdamIdsMatchingPredicate:v10 inManagedObjectContext:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)seriesIDsReferencedByAdamIds:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BKSeriesItem fetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"adamId IN %@ AND seriesAdamId != NULL", v6];

  [v7 setPredicate:v8];
  v14 = @"seriesAdamId";
  v9 = [NSArray arrayWithObjects:&v14 count:1];
  [v7 setPropertiesToFetch:v9];

  v13 = 0;
  v10 = [v5 executeFetchRequest:v7 error:&v13];

  v11 = [v10 valueForKey:@"seriesAdamId"];

  return v11;
}

- (id)allSeriesItemsInSeries:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [NSArray arrayWithObject:a3];
  v8 = [BKSeriesItem predicateForAllItemsAndContainersInSeries:v7];

  v9 = [(BKSeriesManager *)self seriesItemAdamIdsMatchingPredicate:v8 inManagedObjectContext:v6];

  return v9;
}

- (id)seriesContainerWithSeriesId:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [BKSeriesItem predicateForContainerWithSeriesId:v5];
  v8 = +[BKSeriesItem fetchRequest];
  [v8 setPredicate:v7];
  [v8 setResultType:2];
  v9 = [objc_opt_class() itemFetchProperties];
  [v8 setPropertiesToFetch:v9];

  [v8 setReturnsObjectsAsFaults:0];
  [v8 setReturnsDistinctResults:1];
  [v8 setFetchLimit:1];
  v17 = 0;
  v10 = [v6 executeFetchRequest:v8 error:&v17];

  v11 = v17;
  if (!v10)
  {
    v14 = BCSeriesManagerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1EDB5C();
    }

    goto LABEL_8;
  }

  if (![v10 count])
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v12 = [v10 lastObject];
  if (!v12)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v13 = [BKSeriesInfo seriesInfoWithDictionary:v12];
LABEL_10:
  v15 = v13;

  return v13;
}

- (id)seriesItemsWithAdamIds:(id)a3
{
  v4 = a3;
  v5 = +[BKSeriesItem fetchRequest];
  v6 = [BKSeriesItem predicateForAllItemsAndContainerWithAdamIdInList:v4];

  [v5 setPredicate:v6];
  [v5 setResultType:2];
  v7 = [objc_opt_class() itemFetchProperties];
  [v5 setPropertiesToFetch:v7];

  [v5 setReturnsObjectsAsFaults:0];
  [v5 setReturnsDistinctResults:1];
  [v5 setFetchBatchSize:32];
  v8 = [(BKSeriesManager *)self database];
  v9 = [v8 newManagedObjectContext];
  v12 = 0;
  v10 = [v9 executeFetchRequest:v5 error:&v12];

  return v10;
}

- (id)seriesItemWithAdamId:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [BKSeriesItem predicateForItemWithAdamId:v5];
  v8 = +[BKSeriesItem fetchRequest];
  [v8 setPredicate:v7];
  [v8 setResultType:2];
  v9 = [objc_opt_class() itemFetchProperties];
  [v8 setPropertiesToFetch:v9];

  [v8 setReturnsObjectsAsFaults:0];
  [v8 setReturnsDistinctResults:1];
  [v8 setFetchLimit:1];
  v17 = 0;
  v10 = [v6 executeFetchRequest:v8 error:&v17];

  v11 = v17;
  if (!v10)
  {
    v14 = BCSeriesManagerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1EDB5C();
    }

    goto LABEL_8;
  }

  if (![v10 count])
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v12 = [v10 lastObject];
  if (!v12)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v13 = [BKSeriesInfo seriesInfoWithDictionary:v12];
LABEL_10:
  v15 = v13;

  return v13;
}

- (void)fetchBuyParametersForSeriesWithAdamID:(id)a3 isAudiobook:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    v21 = v8;
    v10 = [NSArray arrayWithObjects:&v21 count:1];
    v11 = &__NSArray0__struct;
  }

  else
  {
    v22 = v8;
    v11 = [NSArray arrayWithObjects:&v22 count:1];
    v10 = &__NSArray0__struct;
  }

  v12 = [(BKSeriesManager *)self catalogService];
  v13 = [BFMRequestMetadata alloc];
  v14 = [NSString stringWithFormat:@"%s", "BKSeriesManager.m"];
  v15 = [v13 initWithFileID:v14 line:392];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_18A0F8;
  v18[3] = &unk_2CF120;
  v19 = v8;
  v20 = v9;
  v16 = v9;
  v17 = v8;
  [v12 fetchMixedAssetsWithBookIds:v11 audiobookIds:v10 relationships:0 views:0 additionalParameters:0 batchSize:150 metadata:v15 completionHandler:v18];
}

- (void)_updateSeriesForSeriesAdamIDsWithTypes:(id)a3 forceCheck:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = BCSeriesManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1EDBD0();
  }

  if ([v8 hasSeriesTypes])
  {
    v11 = BCSeriesManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Begin Updating Series Adam IDs", buf, 2u);
    }

    v12 = [(BKSeriesManager *)self queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_18A354;
    v15[3] = &unk_2CC630;
    v15[4] = self;
    v16 = v8;
    v18 = a4;
    v17 = v9;
    dispatch_async(v12, v15);
  }

  else
  {
    v13 = objc_retainBlock(v9);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

- (void)_updateSeriesForAssetAdamIDsWithTypes:(id)a3 forceCheck:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = BCSeriesManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v19 = [v8 hasAssetTypes];
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "updateSeriesForAssetAdamIDsWithTypes: hasAsset=%{BOOL}d", buf, 8u);
  }

  if ([v8 hasAssetTypes])
  {
    v11 = [(BKSeriesManager *)self queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_18A690;
    v14[3] = &unk_2CC630;
    v14[4] = self;
    v15 = v8;
    v17 = a4;
    v16 = v9;
    dispatch_async(v11, v14);
  }

  else
  {
    v12 = objc_retainBlock(v9);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }
}

- (void)updateExpiredSeriesForAssetAdamIDsWithTypes:(id)a3
{
  v4 = a3;
  if ([v4 hasAssetTypes])
  {
    v5 = [(BKSeriesManager *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_18A8E4;
    v6[3] = &unk_2C7BE8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)updateAssetsFromCloudSyncForAssetAdamIDsWithTypes:(id)a3 completion:(id)a4
{
  v5 = a3;
  v19 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = BCSeriesManagerLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v5 objectForKeyedSubscript:v10];
          v13 = [v12 count];
          v14 = [v5 objectForKeyedSubscript:v10];
          v15 = [v14 bu_prettyDescription];
          *buf = 138543874;
          v28 = v10;
          v29 = 2048;
          v30 = v13;
          v31 = 2112;
          v32 = v15;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Begin updating store cloud assets type=%{public}@, %lu adamIds=%@", buf, 0x20u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v16 = [v18 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18ABF4;
    block[3] = &unk_2C7B30;
    block[4] = v18;
    v21 = v5;
    v22 = v19;
    dispatch_async(v16, block);
  }
}

@end