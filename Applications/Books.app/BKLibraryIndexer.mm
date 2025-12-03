@interface BKLibraryIndexer
+ (id)extraConfiguration;
+ (id)sharedInstance;
+ (void)associateAssetIdentifier:(id)identifier title:(id)title isAudiobook:(BOOL)audiobook withAttributeSet:(id)set;
+ (void)establishBackgroundTaskForProgressUpdateOfAsset:(id)asset;
+ (void)processedButNoHighWaterUpdateForAssetsWithIDs:(id)ds;
+ (void)searchableItemAttributeSetForBook:(id)book coverTimeout:(double)timeout completion:(id)completion;
+ (void)setup;
+ (void)startIndexing;
- (BKLibraryIndexer)init;
- (NSSet)cpq_pendingChangedAssetIDs;
- (NSSet)cpq_pendingDeletedAssetIDs;
- (NSSet)iq_retryAssetIDs;
- (id)_clientDataFromSearchableItem:(id)item;
- (id)_clientStateDictionaryFromData:(id)data;
- (id)_clientStateHash;
- (id)_extractDeletedIdentifiersFromArray:(id)array moc:(id)moc;
- (id)_iBooksContainerURL;
- (id)_indexCompletionBlockForItems:(id)items shouldBatch:(BOOL)batch isBatchEnd:(BOOL)end;
- (id)_indexingUserDefaults;
- (id)_mergeNSSetToUserDefaults:(id)defaults forKey:(id)key;
- (id)_nsSetFromUserDefaultsForKey:(id)key;
- (id)_requestStoreURLsForAttributeSets:(id)sets;
- (id)_subtractNSSetFromUserDefaults:(id)defaults forKey:(id)key;
- (void)_indexStartingAtLastDateAdded:(id)added retryAssetIDs:(id)ds completion:(id)completion;
- (void)_processChangedBooksWithCompletion:(id)completion;
- (void)_setNSSetToUserDefaults:(id)defaults forKey:(id)key;
- (void)continueIndexing;
- (void)cpq_addPendingChangedAssetIDs:(id)ds;
- (void)cpq_addPendingDeletedAssetIDs:(id)ds;
- (void)cpq_removePendingChangedAssetIDs:(id)ds;
- (void)cpq_removePendingDeletedAssetIDs:(id)ds;
- (void)cpq_setPendingChangedAssetIDs:(id)ds;
- (void)cpq_setPendingDeletedAssetIDs:(id)ds;
- (void)establishBackgroundTaskForProgressUpdateOfAsset:(id)asset;
- (void)iq_addRetryAssetIDs:(id)ds;
- (void)iq_indexSearchableItems:(id)items shouldBatch:(BOOL)batch;
- (void)iq_removeRetryAssetIDs:(id)ds;
- (void)iq_setRetryAssetIDs:(id)ds;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
- (void)managedObjectBackgroundMonitor:(id)monitor willSaveNotify:(id)notify;
- (void)mocq_reindexBooks:(id)books assetIDList:(id)list batch:(BOOL)batch completion:(id)completion;
- (void)mocq_reindexBooksWithAssetIDs:(id)ds batch:(BOOL)batch moc:(id)moc completion:(id)completion;
- (void)processedButNoHighWaterUpdateForAssetsWithIDs:(id)ds;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)wq_beginIndexTask;
@end

@implementation BKLibraryIndexer

+ (void)setup
{
  if (+[CSSearchableIndex isIndexingAvailable])
  {
    sharedInstance = [self sharedInstance];
  }
}

+ (void)startIndexing
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"BKDisableSpotlightIndexing"];

  if ((v4 & 1) == 0 && +[CSSearchableIndex isIndexingAvailable])
  {
    sharedInstance = [self sharedInstance];
    [sharedInstance continueIndexing];
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
    persistentStoreCoordinator = [v15 persistentStoreCoordinator];
    v17 = +[BKLibraryManager defaultManager];
    predicateForIndexing = [v17 predicateForIndexing];
    v19 = [v14 initWithContext:0 coordinator:persistentStoreCoordinator entityName:@"BKLibraryAsset" predicate:predicateForIndexing mapProperty:@"assetID" propertiesOfInterest:qword_100AF7438 observer:v2];
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
  block[4] = self;
  if (qword_100AF7448 != -1)
  {
    dispatch_once(&qword_100AF7448, block);
  }

  v2 = qword_100AF7440;

  return v2;
}

+ (void)searchableItemAttributeSetForBook:(id)book coverTimeout:(double)timeout completion:(id)completion
{
  bookCopy = book;
  completionCopy = completion;
  v10 = +[BKLibraryManager defaultManager];
  v11 = [v10 dragInfoFromLibraryAsset:bookCopy];

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

  storeURL = [v11 storeURL];
  absoluteString = [storeURL absoluteString];
  v21 = [[CSCustomAttributeKey alloc] initWithKeyName:@"com_apple_iBooks_storeURL" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  [v15 setValue:absoluteString forCustomKey:v21];

  localFileURL = [v11 localFileURL];
  absoluteString2 = [localFileURL absoluteString];
  v24 = [[CSCustomAttributeKey alloc] initWithKeyName:@"com_apple_iBooks_localFileURL" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  [v15 setValue:absoluteString2 forCustomKey:v24];

  title = [bookCopy title];

  if (title)
  {
    title2 = [bookCopy title];
    [v15 setTitle:title2];
  }

  shortBookTitle = [bookCopy shortBookTitle];

  if (shortBookTitle)
  {
    shortBookTitle2 = [bookCopy shortBookTitle];
    [v15 setDisplayName:shortBookTitle2];
  }

  lastOpenDate = [bookCopy lastOpenDate];

  if (lastOpenDate)
  {
    lastOpenDate2 = [bookCopy lastOpenDate];
    [v15 setLastUsedDate:lastOpenDate2];
  }

  creationDate = [bookCopy creationDate];

  if (creationDate)
  {
    creationDate2 = [bookCopy creationDate];
    [v15 setAddedDate:creationDate2];
  }

  language = [bookCopy language];
  v34 = language;
  if (language)
  {
    v76 = language;
    v35 = [NSArray arrayWithObjects:&v76 count:1];
    [v15 setLanguages:v35];
  }

  displayAuthor = [bookCopy displayAuthor];

  if (displayAuthor)
  {
    displayAuthor2 = [bookCopy displayAuthor];
    v75 = displayAuthor2;
    v38 = [NSArray arrayWithObjects:&v75 count:1];
    [v15 setContributors:v38];
  }

  assetID = [bookCopy assetID];
  [v15 setIdentifier:assetID];

  assetID2 = [bookCopy assetID];
  [v15 setRelatedUniqueIdentifier:assetID2];

  genre = [bookCopy genre];

  if (genre)
  {
    genre2 = [bookCopy genre];
    [v15 setGenre:genre2];
  }

  isExplicit = [bookCopy isExplicit];

  if (isExplicit)
  {
    isExplicit2 = [bookCopy isExplicit];
    if ([isExplicit2 BOOLValue])
    {
      v45 = &off_100A43410;
    }

    else
    {
      v45 = &off_100A43428;
    }

    [v15 setContentRating:v45];
  }

  if ([bookCopy isPartOfSeries])
  {
    seriesSortKey = [bookCopy seriesSortKey];
    [v15 setContainerOrder:seriesSortKey];

    localOnlySeriesItemsParent = [bookCopy localOnlySeriesItemsParent];

    if (localOnlySeriesItemsParent)
    {
      localOnlySeriesItemsParent2 = [bookCopy localOnlySeriesItemsParent];
      if (([localOnlySeriesItemsParent2 isValid] & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      purchasedAndLocalParent = [bookCopy purchasedAndLocalParent];

      if (!purchasedAndLocalParent)
      {
        goto LABEL_30;
      }

      localOnlySeriesItemsParent2 = [bookCopy purchasedAndLocalParent];
      if (![localOnlySeriesItemsParent2 isValid])
      {
        goto LABEL_29;
      }
    }

    title3 = [localOnlySeriesItemsParent2 title];
    [v15 setContainerTitle:title3];

    title4 = [localOnlySeriesItemsParent2 title];
    [v15 setContainerDisplayName:title4];

    assetID3 = [localOnlySeriesItemsParent2 assetID];
    [v15 setContainerIdentifier:assetID3];

LABEL_29:
  }

LABEL_30:
  storeID = [bookCopy storeID];
  v54 = [storeID length] == 0;

  if (!v54)
  {
    storeID2 = [bookCopy storeID];
    [v15 setAdamID:storeID2];
  }

  v56 = [bookCopy contentType] == 6;
  assetID4 = [bookCopy assetID];
  title5 = [bookCopy title];
  [self associateAssetIdentifier:assetID4 title:title5 isAudiobook:v56 withAttributeSet:v15];

  assetID5 = [bookCopy assetID];
  title6 = [bookCopy title];
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
  v63 = assetID5;
  v68 = v63;
  v71 = v73;
  v64 = title6;
  v69 = v64;
  v65 = completionCopy;
  v70 = v65;
  timeoutCopy = timeout;
  [BKBookProgressController progressStringForLibraryAsset:bookCopy completion:v66];

  _Block_object_dispose(v73, 8);
}

+ (void)establishBackgroundTaskForProgressUpdateOfAsset:(id)asset
{
  assetCopy = asset;
  sharedInstance = [self sharedInstance];
  [sharedInstance establishBackgroundTaskForProgressUpdateOfAsset:assetCopy];
}

- (void)establishBackgroundTaskForProgressUpdateOfAsset:(id)asset
{
  assetCopy = asset;
  indexSync = self->_indexSync;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079B98;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_sync(indexSync, v7);
}

+ (void)processedButNoHighWaterUpdateForAssetsWithIDs:(id)ds
{
  dsCopy = ds;
  sharedInstance = [self sharedInstance];
  [sharedInstance processedButNoHighWaterUpdateForAssetsWithIDs:dsCopy];
}

- (void)processedButNoHighWaterUpdateForAssetsWithIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[BCBackgroundTaskAssertion sharedAssertion];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = dsCopy;
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

- (id)_clientStateDictionaryFromData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    objc_opt_class();
    v10 = 0;
    v4 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v10];
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

- (id)_nsSetFromUserDefaultsForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  _indexingUserDefaults = [(BKLibraryIndexer *)self _indexingUserDefaults];
  v6 = [_indexingUserDefaults objectForKey:keyCopy];

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

- (void)_setNSSetToUserDefaults:(id)defaults forKey:(id)key
{
  defaultsCopy = defaults;
  keyCopy = key;
  _indexingUserDefaults = [(BKLibraryIndexer *)self _indexingUserDefaults];
  if ([defaultsCopy count])
  {
    allObjects = [defaultsCopy allObjects];
    [_indexingUserDefaults setObject:allObjects forKey:keyCopy];
  }

  else
  {
    [_indexingUserDefaults setObject:0 forKey:keyCopy];
  }
}

- (id)_mergeNSSetToUserDefaults:(id)defaults forKey:(id)key
{
  defaultsCopy = defaults;
  keyCopy = key;
  v8 = [(BKLibraryIndexer *)self _nsSetFromUserDefaultsForKey:keyCopy];
  v9 = [v8 count];
  v10 = defaultsCopy;
  if (!defaultsCopy)
  {
    v10 = +[NSSet set];
  }

  v11 = [v8 setByAddingObjectsFromSet:v10];

  if (!defaultsCopy)
  {
  }

  if ([v11 count] != v9)
  {
    [(BKLibraryIndexer *)self _setNSSetToUserDefaults:v11 forKey:keyCopy];
  }

  return v11;
}

- (id)_subtractNSSetFromUserDefaults:(id)defaults forKey:(id)key
{
  defaultsCopy = defaults;
  keyCopy = key;
  v8 = [(BKLibraryIndexer *)self _nsSetFromUserDefaultsForKey:keyCopy];
  v9 = [v8 mutableCopy];

  v10 = [v9 count];
  if (defaultsCopy)
  {
    [v9 minusSet:defaultsCopy];
  }

  else
  {
    v11 = +[NSSet set];
    [v9 minusSet:v11];
  }

  if ([v9 count] != v10)
  {
    [(BKLibraryIndexer *)self _setNSSetToUserDefaults:v9 forKey:keyCopy];
  }

  v12 = [v9 copy];

  return v12;
}

- (NSSet)iq_retryAssetIDs
{
  dispatch_assert_queue_V2(self->_indexSync);

  return [(BKLibraryIndexer *)self _nsSetFromUserDefaultsForKey:@"retryAssetIDs"];
}

- (void)iq_setRetryAssetIDs:(id)ds
{
  indexSync = self->_indexSync;
  dsCopy = ds;
  dispatch_assert_queue_V2(indexSync);
  [(BKLibraryIndexer *)self _setNSSetToUserDefaults:dsCopy forKey:@"retryAssetIDs"];
}

- (void)iq_addRetryAssetIDs:(id)ds
{
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_indexSync);
  v5 = [(BKLibraryIndexer *)self _mergeNSSetToUserDefaults:dsCopy forKey:@"retryAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A434(dsCopy, v5);
  }
}

- (void)iq_removeRetryAssetIDs:(id)ds
{
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_indexSync);
  v5 = [(BKLibraryIndexer *)self _subtractNSSetFromUserDefaults:dsCopy forKey:@"retryAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A500(dsCopy, v5);
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

- (void)_indexStartingAtLastDateAdded:(id)added retryAssetIDs:(id)ds completion:(id)completion
{
  addedCopy = added;
  dsCopy = ds;
  completionCopy = completion;
  v11 = +[BKLibraryManager defaultManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007B2A8;
  v15[3] = &unk_100A04708;
  v16 = addedCopy;
  v17 = dsCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = dsCopy;
  v14 = addedCopy;
  [v11 performBackgroundReadOnlyBlock:v15];
}

- (id)_extractDeletedIdentifiersFromArray:(id)array moc:(id)moc
{
  mocCopy = moc;
  arrayCopy = array;
  v7 = [arrayCopy mutableCopy];
  v8 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v14 = @"assetID";
  v9 = [NSArray arrayWithObjects:&v14 count:1];
  [v8 setPropertiesToFetch:v9];

  arrayCopy = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", arrayCopy];
  [v8 setPredicate:arrayCopy];

  [v8 setResultType:2];
  [v8 setReturnsDistinctResults:1];
  v11 = [mocCopy executeFetchRequest:v8 error:0];

  v12 = [v11 valueForKey:@"assetID"];
  [v7 removeObjectsInArray:v12];
  [arrayCopy removeObjectsInArray:v7];

  return v7;
}

- (void)mocq_reindexBooksWithAssetIDs:(id)ds batch:(BOOL)batch moc:(id)moc completion:(id)completion
{
  batchCopy = batch;
  dsCopy = ds;
  completionCopy = completion;
  mocCopy = moc;
  v12 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A738(batchCopy, dsCopy);
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

  allObjects = [dsCopy allObjects];
  v16 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", allObjects];
  [v13 setPredicate:v16];

  v17 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v22 = v17;
  v18 = [NSArray arrayWithObjects:&v22 count:1];
  [v13 setSortDescriptors:v18];

  v19 = [mocCopy executeFetchRequest:v13 error:0];

  allObjects2 = [dsCopy allObjects];
  [(BKLibraryIndexer *)self mocq_reindexBooks:v19 assetIDList:allObjects2 batch:batchCopy completion:completionCopy];
}

- (id)_clientDataFromSearchableItem:(id)item
{
  itemCopy = item;
  _clientStateHash = [(BKLibraryIndexer *)self _clientStateHash];
  if (itemCopy)
  {
    attributeSet = [itemCopy attributeSet];
    addedDate = [attributeSet addedDate];
    [addedDate timeIntervalSince1970];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v15[0] = @"hash";
  v15[1] = @"date";
  v16[0] = _clientStateHash;
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

- (id)_indexCompletionBlockForItems:(id)items shouldBatch:(BOOL)batch isBatchEnd:(BOOL)end
{
  endCopy = end;
  batchCopy = batch;
  itemsCopy = items;
  v8 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    bu_prettyDescription = [itemsCopy bu_prettyDescription];
    *buf = 67109634;
    v17 = batchCopy;
    v18 = 1024;
    v19 = endCopy;
    v20 = 2112;
    v21 = bu_prettyDescription;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Index completed items. shouldBatch:%{BOOL}d, isBatchEnd:%{BOOL}d. %@", buf, 0x18u);
  }

  if (batchCopy == endCopy)
  {
    [itemsCopy valueForKeyPath:@"attributeSet.identifier"];
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

- (id)_requestStoreURLsForAttributeSets:(id)sets
{
  setsCopy = sets;
  v3 = [setsCopy copy];
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
        adamID = [v10 adamID];
        if (adamID)
        {
          contentType = [v10 contentType];
          v13 = BCAssetUTIForContentType();
          v14 = [contentType isEqualToString:v13];

          v15 = v4;
          if ((v14 & 1) != 0 || ([v10 contentType], v16 = objc_claimAutoreleasedReturnValue(), BCAssetUTIForContentType(), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, v16, v15 = v43, v18))
          {
            [v15 addObject:adamID];
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
  v27 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(setsCopy, "count")}];
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
        adamID2 = [v33 adamID];
        v35 = adamID2;
        if (adamID2)
        {
          identifier = adamID2;
        }

        else
        {
          identifier = [v33 identifier];
        }

        v37 = identifier;

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

- (void)iq_indexSearchableItems:(id)items shouldBatch:(BOOL)batch
{
  batchCopy = batch;
  itemsCopy = items;
  dispatch_assert_queue_V2(self->_indexSync);
  if (batchCopy)
  {
    [(CSSearchableIndex *)self->_index beginIndexBatch];
  }

  v6 = [(BKLibraryIndexer *)self _indexCompletionBlockForItems:itemsCopy shouldBatch:batchCopy isBatchEnd:0];
  [(CSSearchableIndex *)self->_index indexSearchableItems:itemsCopy completionHandler:v6];
  if (batchCopy)
  {
    v7 = [(BKLibraryIndexer *)self _indexCompletionBlockForItems:itemsCopy shouldBatch:1 isBatchEnd:1];

    index = self->_index;
    lastObject = [itemsCopy lastObject];
    v10 = [(BKLibraryIndexer *)self _clientDataFromSearchableItem:lastObject];
    [(CSSearchableIndex *)index endIndexBatchWithClientState:v10 completionHandler:v7];

    lastObject2 = [itemsCopy lastObject];
    attributeSet = [lastObject2 attributeSet];
    addedDate = [attributeSet addedDate];
    lastBatchDate = self->_lastBatchDate;
    self->_lastBatchDate = addedDate;

    v6 = v7;
  }
}

- (void)mocq_reindexBooks:(id)books assetIDList:(id)list batch:(BOOL)batch completion:(id)completion
{
  booksCopy = books;
  listCopy = list;
  completionCopy = completion;
  v12 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A864(listCopy);
  }

  if ([booksCopy count])
  {
    if (batch)
    {
      v48 = 1;
    }

    else
    {
      lastObject = [booksCopy lastObject];
      if ([lastObject isValid])
      {
        lastBatchDate = self->_lastBatchDate;
        creationDate = [lastObject creationDate];
        v48 = [(NSDate *)lastBatchDate compare:creationDate]== NSOrderedAscending;
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
    v44 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [listCopy count]);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v21 = booksCopy;
    v22 = [v21 countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v22)
    {
      v23 = v22;
      v40 = v16;
      v41 = completionCopy;
      v42 = listCopy;
      v43 = booksCopy;
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
          assetID = [v26 assetID];
          if ([assetID length])
          {
            if ([v26 isValid])
            {
              v28 = BCSpotlightIndexLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                title = [v26 title];
                *buf = 138412546;
                v76 = assetID;
                v77 = 2112;
                v78 = title;
                _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "indexing %@ - %@", buf, 0x16u);
              }

              v29 = objc_alloc_init(AMSMutablePromise);
              v68[0] = _NSConcreteStackBlock;
              v68[1] = 3221225472;
              v68[2] = sub_10007CC24;
              v68[3] = &unk_100A04AA0;
              v30 = assetID;
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
              selfCopy = self;
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
              [v44 addObject:assetID];
              v33 = BCSpotlightIndexLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v76 = assetID;
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
      listCopy = v42;
      booksCopy = v43;
      v16 = v40;
      completionCopy = v41;
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
    v58 = completionCopy;
    v36 = v44;
    v37 = v46;
    v38 = v45;
    v39 = v47;
    dispatch_async(queue, v53);
  }

  else
  {
    if ([listCopy count])
    {
      v13 = BCSpotlightIndexLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_10078A968(listCopy);
      }

      indexSync = self->_indexSync;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007D240;
      block[3] = &unk_100A03440;
      block[4] = self;
      v52 = listCopy;
      dispatch_sync(indexSync, block);
    }

    v15 = objc_retainBlock(completionCopy);
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

- (void)cpq_setPendingChangedAssetIDs:(id)ds
{
  changeProcessingQueue = self->_changeProcessingQueue;
  dsCopy = ds;
  dispatch_assert_queue_V2(changeProcessingQueue);
  [(BKLibraryIndexer *)self _setNSSetToUserDefaults:dsCopy forKey:@"pendingChangedAssetIDs"];
}

- (void)cpq_addPendingChangedAssetIDs:(id)ds
{
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_changeProcessingQueue);
  v5 = [(BKLibraryIndexer *)self _mergeNSSetToUserDefaults:dsCopy forKey:@"pendingChangedAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078AC80();
  }
}

- (void)cpq_removePendingChangedAssetIDs:(id)ds
{
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_changeProcessingQueue);
  v5 = [(BKLibraryIndexer *)self _subtractNSSetFromUserDefaults:dsCopy forKey:@"pendingChangedAssetIDs"];
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

- (void)cpq_setPendingDeletedAssetIDs:(id)ds
{
  changeProcessingQueue = self->_changeProcessingQueue;
  dsCopy = ds;
  dispatch_assert_queue_V2(changeProcessingQueue);
  [(BKLibraryIndexer *)self _setNSSetToUserDefaults:dsCopy forKey:@"pendingDeletedAssetIDs"];
}

- (void)cpq_addPendingDeletedAssetIDs:(id)ds
{
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_changeProcessingQueue);
  v5 = [(BKLibraryIndexer *)self _mergeNSSetToUserDefaults:dsCopy forKey:@"pendingDeletedAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078AD60();
  }
}

- (void)cpq_removePendingDeletedAssetIDs:(id)ds
{
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_changeProcessingQueue);
  v5 = [(BKLibraryIndexer *)self _subtractNSSetFromUserDefaults:dsCopy forKey:@"pendingDeletedAssetIDs"];
  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078ADD0();
  }
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  changeProcessingQueue = self->_changeProcessingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D6A0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(changeProcessingQueue, block);
}

- (void)managedObjectBackgroundMonitor:(id)monitor willSaveNotify:(id)notify
{
  notifyCopy = notify;
  changeProcessingQueue = self->_changeProcessingQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007D7F4;
  v8[3] = &unk_100A03440;
  v9 = notifyCopy;
  selfCopy = self;
  v7 = notifyCopy;
  dispatch_async(changeProcessingQueue, v8);
}

- (void)_processChangedBooksWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007DAA4;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
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
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(workQueue, v9);
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v9 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    bu_prettyDescription = [identifiersCopy bu_prettyDescription];
    *buf = 138412290;
    v18 = bu_prettyDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Requested to reindex some searchable items: %@", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007E554;
  block[3] = &unk_100A04C50;
  v15 = identifiersCopy;
  v16 = handlerCopy;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = handlerCopy;
  dispatch_async(workQueue, block);
}

+ (void)associateAssetIdentifier:(id)identifier title:(id)title isAudiobook:(BOOL)audiobook withAttributeSet:(id)set
{
  v8 = sub_1007A2254();
  v10 = v9;
  v11 = sub_1007A2254();
  v13 = v12;
  setCopy = set;
  _sSo16BKLibraryIndexerC5BooksE9associate15assetIdentifier5title11isAudiobook12attributeSetySS_SSSbSo025CSSearchableItemAttributeK0CtFZ_0(v8, v10, v11, v13, audiobook, setCopy);
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