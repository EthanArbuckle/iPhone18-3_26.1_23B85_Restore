@interface BKLibraryIndexer
+ (id)extraConfiguration;
+ (id)sharedInstance;
+ (void)associateAssetIdentifier:(id)a3 title:(id)a4 isAudiobook:(BOOL)a5 withAttributeSet:(id)a6;
+ (void)establishBackgroundTaskForProgressUpdateOfAsset:(id)a3;
+ (void)processedButNoHighWaterUpdateForAssetsWithIDs:(id)a3;
+ (void)searchableItemAttributeSetForBook:(id)a3 coverTimeout:(double)a4 completion:(id)a5;
+ (void)setup;
+ (void)startIndexing;
- (BKLibraryIndexer)init;
- (NSSet)cpq_pendingChangedAssetIDs;
- (NSSet)cpq_pendingDeletedAssetIDs;
- (NSSet)iq_retryAssetIDs;
- (id)_clientDataFromSearchableItem:(id)a3;
- (id)_clientStateDictionaryFromData:(id)a3;
- (id)_clientStateHash;
- (id)_extractDeletedIdentifiersFromArray:(id)a3 moc:(id)a4;
- (id)_iBooksContainerURL;
- (id)_indexCompletionBlockForItems:(id)a3 shouldBatch:(BOOL)a4 isBatchEnd:(BOOL)a5;
- (id)_indexingUserDefaults;
- (id)_mergeNSSetToUserDefaults:(id)a3 forKey:(id)a4;
- (id)_nsSetFromUserDefaultsForKey:(id)a3;
- (id)_requestStoreURLsForAttributeSets:(id)a3;
- (id)_subtractNSSetFromUserDefaults:(id)a3 forKey:(id)a4;
- (void)_indexStartingAtLastDateAdded:(id)a3 retryAssetIDs:(id)a4 completion:(id)a5;
- (void)_processChangedBooksWithCompletion:(id)a3;
- (void)_setNSSetToUserDefaults:(id)a3 forKey:(id)a4;
- (void)continueIndexing;
- (void)cpq_addPendingChangedAssetIDs:(id)a3;
- (void)cpq_addPendingDeletedAssetIDs:(id)a3;
- (void)cpq_removePendingChangedAssetIDs:(id)a3;
- (void)cpq_removePendingDeletedAssetIDs:(id)a3;
- (void)cpq_setPendingChangedAssetIDs:(id)a3;
- (void)cpq_setPendingDeletedAssetIDs:(id)a3;
- (void)establishBackgroundTaskForProgressUpdateOfAsset:(id)a3;
- (void)iq_addRetryAssetIDs:(id)a3;
- (void)iq_indexSearchableItems:(id)a3 shouldBatch:(BOOL)a4;
- (void)iq_removeRetryAssetIDs:(id)a3;
- (void)iq_setRetryAssetIDs:(id)a3;
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
- (void)managedObjectBackgroundMonitor:(id)a3 willSaveNotify:(id)a4;
- (void)mocq_reindexBooks:(id)a3 assetIDList:(id)a4 batch:(BOOL)a5 completion:(id)a6;
- (void)mocq_reindexBooksWithAssetIDs:(id)a3 batch:(BOOL)a4 moc:(id)a5 completion:(id)a6;
- (void)processedButNoHighWaterUpdateForAssetsWithIDs:(id)a3;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
- (void)wq_beginIndexTask;
@end

@implementation BKLibraryIndexer

+ (void)setup
{
  if (+[CSSearchableIndex isIndexingAvailable])
  {
    v3 = [a1 sharedInstance];
  }
}

+ (void)startIndexing
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"BKDisableSpotlightIndexing"];

  if ((v4 & 1) == 0 && +[CSSearchableIndex isIndexingAvailable])
  {
    v5 = [a1 sharedInstance];
    [v5 continueIndexing];
  }
}

- (BKLibraryIndexer)init
{
  v28.receiver = self;
  v28.super_class = BKLibraryIndexer;
  v2 = [(BKLibraryIndexer *)&v28 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("BKLibraryIndexer.workQueue", v4);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    v7 = dispatch_queue_create("BKLibraryIndexer.changeProcessingQueue", v4);
    changeProcessingQueue = v2->_changeProcessingQueue;
    v2->_changeProcessingQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("BKLibraryIndexer.indexSync", v9);
    indexSync = v2->_indexSync;
    v2->_indexSync = v10;

    v12 = dispatch_semaphore_create(1);
    indexingSem = v2->_indexingSem;
    v2->_indexingSem = v12;

    v14 = [BCManagedObjectIDMonitor alloc];
    v15 = +[BKLibraryManager defaultManager];
    v16 = [v15 persistentStoreCoordinator];
    v17 = +[BKLibraryManager defaultManager];
    v18 = [v17 predicateForIndexing];
    v19 = [v14 initWithContext:0 coordinator:v16 entityName:@"BKLibraryAsset" predicate:v18 mapProperty:@"assetID" propertiesOfInterest:qword_100AF7438 observer:v2];
    libraryAssetMonitor = v2->_libraryAssetMonitor;
    v2->_libraryAssetMonitor = v19;

    objc_initWeak(&location, v2);
    v21 = [BUCoalescingCallBlock alloc];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100078978;
    v25[3] = &unk_100A04820;
    objc_copyWeak(&v26, &location);
    v22 = [v21 initWithNotifyBlock:v25 blockDescription:@"BKLibraryIndexer"];
    coalescingProcessChangedBooks = v2->_coalescingProcessChangedBooks;
    v2->_coalescingProcessChangedBooks = v22;

    [(BUCoalescingCallBlock *)v2->_coalescingProcessChangedBooks setCoalescingDelay:5.0];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078A74;
  block[3] = &unk_100A03560;
  block[4] = a1;
  if (qword_100AF7448 != -1)
  {
    dispatch_once(&qword_100AF7448, block);
  }

  v2 = qword_100AF7440;

  return v2;
}

+ (void)searchableItemAttributeSetForBook:(id)a3 coverTimeout:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[BKLibraryManager defaultManager];
  v11 = [v10 dragInfoFromLibraryAsset:v8];

  v12 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A150();
  }

  v13 = [CSSearchableItemAttributeSet alloc];
  [v11 contentType];
  v14 = BCAssetUTIForContentType();
  v15 = [v13 initWithItemContentType:v14];

  [v11 fileSizeInMegaBytes];
  v16 = [NSNumber numberWithDouble:?];
  [v15 setFileSize:v16];

  v17 = [BCDragRepresentationFactory providerDataTypesForDragInfo:v11];
  [v15 setProviderDataTypes:v17];

  v18 = [BCDragRepresentationFactory providerFileTypesForDragInfo:v11];
  [v15 setProviderFileTypes:v18];

  v19 = [v11 storeURL];
  v20 = [v19 absoluteString];
  v21 = [[CSCustomAttributeKey alloc] initWithKeyName:@"com_apple_iBooks_storeURL" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  [v15 setValue:v20 forCustomKey:v21];

  v22 = [v11 localFileURL];
  v23 = [v22 absoluteString];
  v24 = [[CSCustomAttributeKey alloc] initWithKeyName:@"com_apple_iBooks_localFileURL" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  [v15 setValue:v23 forCustomKey:v24];

  v25 = [v8 title];

  if (v25)
  {
    v26 = [v8 title];
    [v15 setTitle:v26];
  }

  v27 = [v8 shortBookTitle];

  if (v27)
  {
    v28 = [v8 shortBookTitle];
    [v15 setDisplayName:v28];
  }

  v29 = [v8 lastOpenDate];

  if (v29)
  {
    v30 = [v8 lastOpenDate];
    [v15 setLastUsedDate:v30];
  }

  v31 = [v8 creationDate];

  if (v31)
  {
    v32 = [v8 creationDate];
    [v15 setAddedDate:v32];
  }

  v33 = [v8 language];
  v34 = v33;
  if (v33)
  {
    v76 = v33;
    v35 = [NSArray arrayWithObjects:&v76 count:1];
    [v15 setLanguages:v35];
  }

  v36 = [v8 displayAuthor];

  if (v36)
  {
    v37 = [v8 displayAuthor];
    v75 = v37;
    v38 = [NSArray arrayWithObjects:&v75 count:1];
    [v15 setContributors:v38];
  }

  v39 = [v8 assetID];
  [v15 setIdentifier:v39];

  v40 = [v8 assetID];
  [v15 setRelatedUniqueIdentifier:v40];

  v41 = [v8 genre];

  if (v41)
  {
    v42 = [v8 genre];
    [v15 setGenre:v42];
  }

  v43 = [v8 isExplicit];

  if (v43)
  {
    v44 = [v8 isExplicit];
    if ([v44 BOOLValue])
    {
      v45 = &off_100A43410;
    }

    else
    {
      v45 = &off_100A43428;
    }

    [v15 setContentRating:v45];
  }

  if ([v8 isPartOfSeries])
  {
    v46 = [v8 seriesSortKey];
    [v15 setContainerOrder:v46];

    v47 = [v8 localOnlySeriesItemsParent];

    if (v47)
    {
      v48 = [v8 localOnlySeriesItemsParent];
      if (([v48 isValid] & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v49 = [v8 purchasedAndLocalParent];

      if (!v49)
      {
        goto LABEL_30;
      }

      v48 = [v8 purchasedAndLocalParent];
      if (![v48 isValid])
      {
        goto LABEL_29;
      }
    }

    v50 = [v48 title];
    [v15 setContainerTitle:v50];

    v51 = [v48 title];
    [v15 setContainerDisplayName:v51];

    v52 = [v48 assetID];
    [v15 setContainerIdentifier:v52];

LABEL_29:
  }

LABEL_30:
  v53 = [v8 storeID];
  v54 = [v53 length] == 0;

  if (!v54)
  {
    v55 = [v8 storeID];
    [v15 setAdamID:v55];
  }

  v56 = [v8 contentType] == 6;
  v57 = [v8 assetID];
  v58 = [v8 title];
  [a1 associateAssetIdentifier:v57 title:v58 isAudiobook:v56 withAttributeSet:v15];

  v59 = [v8 assetID];
  v60 = [v8 title];
  if (qword_100AF7468 != -1)
  {
    sub_10078A1C0();
  }

  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v74 = 0;
  v61 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A1E8();
  }

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100079470;
  v66[3] = &unk_100A04908;
  v62 = v15;
  v67 = v62;
  v63 = v59;
  v68 = v63;
  v71 = v73;
  v64 = v60;
  v69 = v64;
  v65 = v9;
  v70 = v65;
  v72 = a4;
  [BKBookProgressController progressStringForLibraryAsset:v8 completion:v66];

  _Block_object_dispose(v73, 8);
}

+ (void)establishBackgroundTaskForProgressUpdateOfAsset:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedInstance];
  [v5 establishBackgroundTaskForProgressUpdateOfAsset:v4];
}

- (void)establishBackgroundTaskForProgressUpdateOfAsset:(id)a3
{
  v4 = a3;
  indexSync = self->_indexSync;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079B98;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(indexSync, v7);
}

+ (void)processedButNoHighWaterUpdateForAssetsWithIDs:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedInstance];
  [v5 processedButNoHighWaterUpdateForAssetsWithIDs:v4];
}

- (void)processedButNoHighWaterUpdateForAssetsWithIDs:(id)a3
{
  v3 = a3;
  v4 = +[BCBackgroundTaskAssertion sharedAssertion];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 releaseAssertionForIdentifier:{*(*(&v10 + 1) + 8 * v9), v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_clientStateDictionaryFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    v10 = 0;
    v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v10];
    v5 = v10;
    v6 = BUDynamicCast();

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = BCIMLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[BKLibraryIndexer _clientStateDictionaryFromData:]";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKLibraryIndexer.m";
    v15 = 1024;
    v16 = 447;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
  }

  v8 = BCIMLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "@couldn't decode clientData - %@", buf, 0xCu);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)_clientStateHash
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  data[0] = 7;
  CC_SHA256_Update(&v7, data, 1u);
  v2 = +[UIApplication applicationCacheDirectory];
  sub_10007A07C(&v7, v2);

  v3 = +[BKLibraryIndexer extraConfiguration];
  if ([v3 length])
  {
    sub_10007A07C(&v7, v3);
  }

  CC_SHA256_Final(data, &v7);
  v4 = [NSData dataWithBytesNoCopy:data length:32 freeWhenDone:0];
  v5 = [v4 base64EncodedStringWithOptions:0];

  return v5;
}

- (id)_iBooksContainerURL
{
  if (qword_100AF7470 != -1)
  {
    sub_10078A420();
  }

  v3 = qword_100AF7478;

  return v3;
}

- (id)_indexingUserDefaults
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A280;
  block[3] = &unk_100A033C8;
  block[4] = self;
  if (qword_100AF7480 != -1)
  {
    dispatch_once(&qword_100AF7480, block);
  }

  return qword_100AF7488;
}

- (id)_nsSetFromUserDefaultsForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(BKLibraryIndexer *)self _indexingUserDefaults];
  v6 = [v5 objectForKey:v4];

  v7 = BUDynamicCast();

  if (v7)
  {
    [NSSet setWithArray:v7];
  }

  else
  {
    +[NSSet set];
  }
  v8 = ;

  return v8;
}

- (void)_setNSSetToUserDefaults:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(BKLibraryIndexer *)self _indexingUserDefaults];
  if ([v9 count])
  {
    v8 = [v9 allObjects];
    [v7 setObject:v8 forKey:v6];
  }

  else
  {
    [v7 setObject:0 forKey:v6];
  }
}

- (id)_mergeNSSetToUserDefaults:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryIndexer *)self _nsSetFromUserDefaultsForKey:v7];
  v9 = [v8 count];
  v10 = v6;
  if (!v6)
  {
    v10 = +[NSSet set];
  }

  v11 = [v8 setByAddingObjectsFromSet:v10];

  if (!v6)
  {
  }

  if ([v11 count] != v9)
  {
    [(BKLibraryIndexer *)self _setNSSetToUserDefaults:v11 forKey:v7];
  }

  return v11;
}

- (id)_subtractNSSetFromUserDefaults:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryIndexer *)self _nsSetFromUserDefaultsForKey:v7];
  v9 = [v8 mutableCopy];

  v10 = [v9 count];
  if (v6)
  {
    [v9 minusSet:v6];
  }

  else
  {
    v11 = +[NSSet set];
    [v9 minusSet:v11];
  }

  if ([v9 count] != v10)
  {
    [(BKLibraryIndexer *)self _setNSSetToUserDefaults:v9 forKey:v7];
  }

  v12 = [v9 copy];

  return v12;
}

- (NSSet)iq_retryAssetIDs
{
  dispatch_assert_queue_V2(self->_indexSync);

  return [(BKLibraryIndexer *)self _nsSetFromUserDefaultsForKey:@"retryAssetIDs"];
}

- (void)iq_setRetryAssetIDs:(id)a3
{
  indexSync = self->_indexSync;
  v5 = a3;
  dispatch_assert_queue_V2(indexSync);
  [(BKLibraryIndexer *)self _setNSSetToUserDefaults:v5 forKey:@"retryAssetIDs"];
}

- (void)iq_addRetryAssetIDs:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_indexSync);
  v5 = [(BKLibraryIndexer *)self _mergeNSSetToUserDefaults:v4 forKey:@"retryAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A434(v4, v5);
  }
}

- (void)iq_removeRetryAssetIDs:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_indexSync);
  v5 = [(BKLibraryIndexer *)self _subtractNSSetFromUserDefaults:v4 forKey:@"retryAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A500(v4, v5);
  }
}

- (void)wq_beginIndexTask
{
  dispatch_assert_queue_V2(self->_workQueue);
  indexingSem = self->_indexingSem;
  v4 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(indexingSem, v4))
  {
    v5 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10078A5CC();
    }

    v6 = self->_indexingSem;
    v7 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      v8 = BCSpotlightIndexLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10078A60C();
      }

      dispatch_semaphore_wait(self->_indexingSem, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

- (void)continueIndexing
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007A998;
  v3[3] = &unk_100A049E8;
  v3[4] = self;
  v4 = [[CSSearchableIndex alloc] initWithName:@"Library"];
  v2 = v4;
  [v2 fetchLastClientStateWithCompletionHandler:v3];
}

- (void)_indexStartingAtLastDateAdded:(id)a3 retryAssetIDs:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[BKLibraryManager defaultManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007B2A8;
  v15[3] = &unk_100A04708;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBackgroundReadOnlyBlock:v15];
}

- (id)_extractDeletedIdentifiersFromArray:(id)a3 moc:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 mutableCopy];
  v8 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v14 = @"assetID";
  v9 = [NSArray arrayWithObjects:&v14 count:1];
  [v8 setPropertiesToFetch:v9];

  v10 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", v6];
  [v8 setPredicate:v10];

  [v8 setResultType:2];
  [v8 setReturnsDistinctResults:1];
  v11 = [v5 executeFetchRequest:v8 error:0];

  v12 = [v11 valueForKey:@"assetID"];
  [v7 removeObjectsInArray:v12];
  [v6 removeObjectsInArray:v7];

  return v7;
}

- (void)mocq_reindexBooksWithAssetIDs:(id)a3 batch:(BOOL)a4 moc:(id)a5 completion:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A738(v8, v9);
  }

  v13 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v13 setFetchBatchSize:25];
  v23[0] = @"assetID";
  v23[1] = @"title";
  v23[2] = @"author";
  v23[3] = @"lastOpenDate";
  v23[4] = @"creationDate";
  v23[5] = @"genre";
  v23[6] = @"seriesSortKey";
  v23[7] = @"seriesID";
  v14 = [NSArray arrayWithObjects:v23 count:8];
  [v13 setPropertiesToFetch:v14];

  v15 = [v9 allObjects];
  v16 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", v15];
  [v13 setPredicate:v16];

  v17 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v22 = v17;
  v18 = [NSArray arrayWithObjects:&v22 count:1];
  [v13 setSortDescriptors:v18];

  v19 = [v11 executeFetchRequest:v13 error:0];

  v20 = [v9 allObjects];
  [(BKLibraryIndexer *)self mocq_reindexBooks:v19 assetIDList:v20 batch:v8 completion:v10];
}

- (id)_clientDataFromSearchableItem:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryIndexer *)self _clientStateHash];
  if (v4)
  {
    v6 = [v4 attributeSet];
    v7 = [v6 addedDate];
    [v7 timeIntervalSince1970];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v15[0] = @"hash";
  v15[1] = @"date";
  v16[0] = v5;
  v10 = [NSNumber numberWithDouble:v9];
  v16[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [NSJSONSerialization dataWithJSONObject:v11 options:0 error:0];
  v13 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A7F4();
  }

  return v12;
}

- (id)_indexCompletionBlockForItems:(id)a3 shouldBatch:(BOOL)a4 isBatchEnd:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v7 bu_prettyDescription];
    *buf = 67109634;
    v17 = v6;
    v18 = 1024;
    v19 = v5;
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Index completed items. shouldBatch:%{BOOL}d, isBatchEnd:%{BOOL}d. %@", buf, 0x18u);
  }

  if (v6 == v5)
  {
    [v7 valueForKeyPath:@"attributeSet.identifier"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007BC84;
    v15 = v14[3] = &unk_100A04A50;
    v10 = v15;
    v9 = objc_retainBlock(v14);
  }

  else
  {
    v9 = &stru_100A04A28;
  }

  v11 = objc_retainBlock(v9);

  return v11;
}

- (id)_requestStoreURLsForAttributeSets:(id)a3
{
  v42 = a3;
  v3 = [v42 copy];
  v4 = +[NSMutableArray array];
  v43 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = [v10 adamID];
        if (v11)
        {
          v12 = [v10 contentType];
          v13 = BCAssetUTIForContentType();
          v14 = [v12 isEqualToString:v13];

          v15 = v4;
          if ((v14 & 1) != 0 || ([v10 contentType], v16 = objc_claimAutoreleasedReturnValue(), BCAssetUTIForContentType(), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, v16, v15 = v43, v18))
          {
            [v15 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v7);
  }

  v19 = dispatch_semaphore_create(0);
  v20 = +[BCMBridgedCatalogService sharedInstance];
  v21 = [BFMRequestMetadata alloc];
  v22 = [NSString stringWithFormat:@"%s", "BKLibraryIndexer.m"];
  v23 = [v21 initWithFileID:v22 line:823];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10007C208;
  v48[3] = &unk_100A04A78;
  v24 = v5;
  v49 = v24;
  v25 = v19;
  v50 = v25;
  [v20 fetchMixedAssetsWithBookIds:v4 audiobookIds:v43 relationships:0 views:0 additionalParameters:0 batchSize:25 metadata:v23 completionHandler:v48];

  v26 = dispatch_time(0, 2000000000);
  v41 = v25;
  dispatch_semaphore_wait(v25, v26);
  v27 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v42, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v28 = v24;
  v29 = [v28 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v45;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v44 + 1) + 8 * j);
        v34 = [v33 adamID];
        v35 = v34;
        if (v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = [v33 identifier];
        }

        v37 = v36;

        v38 = [[CSSearchableItem alloc] initWithUniqueIdentifier:v37 domainIdentifier:0 attributeSet:v33];
        [v27 addObject:v38];
      }

      v30 = [v28 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v30);
  }

  v39 = [v27 copy];

  return v39;
}

- (void)iq_indexSearchableItems:(id)a3 shouldBatch:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  dispatch_assert_queue_V2(self->_indexSync);
  if (v4)
  {
    [(CSSearchableIndex *)self->_index beginIndexBatch];
  }

  v6 = [(BKLibraryIndexer *)self _indexCompletionBlockForItems:v15 shouldBatch:v4 isBatchEnd:0];
  [(CSSearchableIndex *)self->_index indexSearchableItems:v15 completionHandler:v6];
  if (v4)
  {
    v7 = [(BKLibraryIndexer *)self _indexCompletionBlockForItems:v15 shouldBatch:1 isBatchEnd:1];

    index = self->_index;
    v9 = [v15 lastObject];
    v10 = [(BKLibraryIndexer *)self _clientDataFromSearchableItem:v9];
    [(CSSearchableIndex *)index endIndexBatchWithClientState:v10 completionHandler:v7];

    v11 = [v15 lastObject];
    v12 = [v11 attributeSet];
    v13 = [v12 addedDate];
    lastBatchDate = self->_lastBatchDate;
    self->_lastBatchDate = v13;

    v6 = v7;
  }
}

- (void)mocq_reindexBooks:(id)a3 assetIDList:(id)a4 batch:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A864(v10);
  }

  if ([v9 count])
  {
    if (a5)
    {
      v48 = 1;
    }

    else
    {
      v17 = [v9 lastObject];
      if ([v17 isValid])
      {
        lastBatchDate = self->_lastBatchDate;
        v19 = [v17 creationDate];
        v48 = [(NSDate *)lastBatchDate compare:v19]== NSOrderedAscending;
      }

      else
      {
        v48 = 0;
      }
    }

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_UTILITY, 0);

    queue = dispatch_queue_create("com.apple.iBooks.libraryIndexer.attributeSet", v16);
    v47 = [[NSMutableArray alloc] initWithCapacity:25];
    v46 = [NSMutableSet setWithCapacity:25];
    v45 = +[NSMutableSet set];
    v44 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v10 count]);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v21 = v9;
    v22 = [v21 countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v22)
    {
      v23 = v22;
      v40 = v16;
      v41 = v11;
      v42 = v10;
      v43 = v9;
      v24 = *v72;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v72 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v71 + 1) + 8 * i);
          v27 = [v26 assetID];
          if ([v27 length])
          {
            if ([v26 isValid])
            {
              v28 = BCSpotlightIndexLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                v35 = [v26 title];
                *buf = 138412546;
                v76 = v27;
                v77 = 2112;
                v78 = v35;
                _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "indexing %@ - %@", buf, 0x16u);
              }

              v29 = objc_alloc_init(AMSMutablePromise);
              v68[0] = _NSConcreteStackBlock;
              v68[1] = 3221225472;
              v68[2] = sub_10007CC24;
              v68[3] = &unk_100A04AA0;
              v30 = v27;
              v69 = v30;
              v31 = v29;
              v70 = v31;
              [BKLibraryIndexer searchableItemAttributeSetForBook:v26 coverTimeout:v68 completion:10.0];
              v60[0] = _NSConcreteStackBlock;
              v60[1] = 3221225472;
              v60[2] = sub_10007CC94;
              v60[3] = &unk_100A04AF0;
              v61 = v31;
              v32 = v30;
              v62 = v32;
              v63 = v47;
              v64 = self;
              v65 = v45;
              v67 = v48;
              v66 = v46;
              v33 = v31;
              dispatch_async(queue, v60);
              v34 = BCSpotlightIndexLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v76 = v32;
                _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "To be indexed: %@", buf, 0xCu);
              }
            }

            else
            {
              [v44 addObject:v27];
              v33 = BCSpotlightIndexLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v76 = v27;
                _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Indexes to be deleted: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v33 = BCSpotlightIndexLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_10078A8F0(v79, v26, &v80, v33);
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v23);
      v10 = v42;
      v9 = v43;
      v16 = v40;
      v11 = v41;
    }

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10007D018;
    v53[3] = &unk_100A04B40;
    v53[4] = self;
    v54 = v47;
    v59 = v48;
    v55 = v45;
    v56 = v46;
    v57 = v44;
    v58 = v11;
    v36 = v44;
    v37 = v46;
    v38 = v45;
    v39 = v47;
    dispatch_async(queue, v53);
  }

  else
  {
    if ([v10 count])
    {
      v13 = BCSpotlightIndexLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_10078A968(v10);
      }

      indexSync = self->_indexSync;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007D240;
      block[3] = &unk_100A03440;
      block[4] = self;
      v52 = v10;
      dispatch_sync(indexSync, block);
    }

    v15 = objc_retainBlock(v11);
    v16 = v15;
    if (v15)
    {
      (v15[2].isa)(v15);
    }
  }
}

- (NSSet)cpq_pendingChangedAssetIDs
{
  dispatch_assert_queue_V2(self->_changeProcessingQueue);

  return [(BKLibraryIndexer *)self _nsSetFromUserDefaultsForKey:@"pendingChangedAssetIDs"];
}

- (void)cpq_setPendingChangedAssetIDs:(id)a3
{
  changeProcessingQueue = self->_changeProcessingQueue;
  v5 = a3;
  dispatch_assert_queue_V2(changeProcessingQueue);
  [(BKLibraryIndexer *)self _setNSSetToUserDefaults:v5 forKey:@"pendingChangedAssetIDs"];
}

- (void)cpq_addPendingChangedAssetIDs:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_changeProcessingQueue);
  v5 = [(BKLibraryIndexer *)self _mergeNSSetToUserDefaults:v4 forKey:@"pendingChangedAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078AC80();
  }
}

- (void)cpq_removePendingChangedAssetIDs:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_changeProcessingQueue);
  v5 = [(BKLibraryIndexer *)self _subtractNSSetFromUserDefaults:v4 forKey:@"pendingChangedAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078ACF0();
  }
}

- (NSSet)cpq_pendingDeletedAssetIDs
{
  dispatch_assert_queue_V2(self->_changeProcessingQueue);

  return [(BKLibraryIndexer *)self _nsSetFromUserDefaultsForKey:@"pendingDeletedAssetIDs"];
}

- (void)cpq_setPendingDeletedAssetIDs:(id)a3
{
  changeProcessingQueue = self->_changeProcessingQueue;
  v5 = a3;
  dispatch_assert_queue_V2(changeProcessingQueue);
  [(BKLibraryIndexer *)self _setNSSetToUserDefaults:v5 forKey:@"pendingDeletedAssetIDs"];
}

- (void)cpq_addPendingDeletedAssetIDs:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_changeProcessingQueue);
  v5 = [(BKLibraryIndexer *)self _mergeNSSetToUserDefaults:v4 forKey:@"pendingDeletedAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078AD60();
  }
}

- (void)cpq_removePendingDeletedAssetIDs:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_changeProcessingQueue);
  v5 = [(BKLibraryIndexer *)self _subtractNSSetFromUserDefaults:v4 forKey:@"pendingDeletedAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078ADD0();
  }
}

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  changeProcessingQueue = self->_changeProcessingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D6A0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(changeProcessingQueue, block);
}

- (void)managedObjectBackgroundMonitor:(id)a3 willSaveNotify:(id)a4
{
  v5 = a4;
  changeProcessingQueue = self->_changeProcessingQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007D7F4;
  v8[3] = &unk_100A03440;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(changeProcessingQueue, v8);
}

- (void)_processChangedBooksWithCompletion:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007DAA4;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v5 = a4;
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Requested to reindex all searchable items.", buf, 2u);
  }

  workQueue = self->_workQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007E1A0;
  v9[3] = &unk_100A03788;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(workQueue, v9);
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 bu_prettyDescription];
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Requested to reindex some searchable items: %@", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007E554;
  block[3] = &unk_100A04C50;
  v15 = v7;
  v16 = v8;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  dispatch_async(workQueue, block);
}

+ (void)associateAssetIdentifier:(id)a3 title:(id)a4 isAudiobook:(BOOL)a5 withAttributeSet:(id)a6
{
  v8 = sub_1007A2254();
  v10 = v9;
  v11 = sub_1007A2254();
  v13 = v12;
  v14 = a6;
  _sSo16BKLibraryIndexerC5BooksE9associate15assetIdentifier5title11isAudiobook12attributeSetySS_SSSbSo025CSSearchableItemAttributeK0CtFZ_0(v8, v10, v11, v13, a5, v14);
}

+ (id)extraConfiguration
{
  _sSo16BKLibraryIndexerC5BooksE18extraConfigurationSSSgyFZ_0();
  if (v2)
  {
    v3 = sub_1007A2214();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end