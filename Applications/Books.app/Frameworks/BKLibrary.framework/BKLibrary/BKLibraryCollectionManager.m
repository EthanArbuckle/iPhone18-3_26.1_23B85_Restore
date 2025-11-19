@interface BKLibraryCollectionManager
- (BKCollection)defaultAllBooksCollection;
- (BKCollection)defaultAudioBooksCollection;
- (BKCollection)defaultBooksCollection;
- (BKCollection)defaultDownloadedCollection;
- (BKCollection)defaultFinishedCollection;
- (BKCollection)defaultPDFsCollection;
- (BKCollection)defaultSamplesCollection;
- (BKCollection)defaultWantToReadCollection;
- (BKLibraryCollectionManager)initWithLibraryManager:(id)a3;
- (BKLibraryManager)libraryManager;
- (BOOL)allowsAutoDownloadOfSamplesToWantToRead;
- (BOOL)deleteCollectionOnMainQueue:(id)a3;
- (BOOL)deleteCollectionWithCollectionID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
- (BOOL)p_shouldDeleteAsset:(id)a3 removingFromCollectionIDs:(id)a4;
- (id)_defaultCollectionsIncludeAllBooks:(BOOL)a3;
- (id)_defaultManagerAssetsForDefaultCollectionWithID:(id)a3 inManagedObjectContext:(id)a4;
- (id)_setupDefaultBooksCollection:(id)a3 moc:(id)a4;
- (id)collectionOnMainQueueWithCollectionID:(id)a3 error:(id *)a4;
- (id)collectionWithCollectionID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
- (id)defaultCollectionsInManagedObjectContext:(id)a3 withError:(id *)a4;
- (id)fetchDefaultBooksCollectionInUIMoc:(id)a3;
- (id)fetchWTRMembersInContext:(id)a3;
- (id)gatherChangedAssetsCollectionsWithLibraryMoc:(id)a3;
- (id)insertNewCollectionSyncOnMainQueueWithCollectionID:(id)a3 newCollectionBlock:(id)a4;
- (id)mutableCollectionWithCollectionID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
- (id)mutableCollectionsWithCollectionIDs:(id)a3 includeDeleted:(BOOL)a4 inManagedObjectContext:(id)a5 error:(id *)a6;
- (id)p_allOrderedCollections;
- (id)p_assetsRequiringDeletion:(id)a3 removingFromCollectionIDs:(id)a4;
- (id)p_fetchOrCreatePlaceholderCollectionForCollectionID:(id)a3 moc:(id)a4;
- (id)userCollectionsInManagedObjectContext:(id)a3 withError:(id *)a4;
- (id)userCollectionsOnMainQueueWithError:(id *)a3;
- (void)_BCCloudCollectionDetailManagerChanged:(id)a3;
- (void)_BCCloudCollectionMemberManagerChanged:(id)a3;
- (void)_addMemberWithAsset:(id)a3 toCollection:(id)a4 moc:(id)a5;
- (void)_checkForChangesFromCloudCollectionDetailManagerInMOC:(id)a3 reason:(id)a4;
- (void)_checkForChangesFromCloudCollectionMemberManagerInMOC:(id)a3 reason:(id)a4;
- (void)_performResetCollectionsInMoc:(id)a3 changeSet:(id)a4 completion:(id)a5;
- (void)addBooks:(id)a3 toCollection:(id)a4 forceToTop:(BOOL)a5 completion:(id)a6;
- (void)cleanupDefaultCollections;
- (void)clearSortKeysFromAssetsInMOCForUpgrade:(id)a3;
- (void)dealloc;
- (void)fixCollectionMemberAssetLinks;
- (void)fixPDFCollectionIfNeeded;
- (void)markAsFinishedStoreID:(id)a3 completion:(id)a4;
- (void)markAssetsAsFinished:(id)a3 completion:(id)a4;
- (void)mergeCurrentCollectionDetailsToCloudInMoc:(id)a3;
- (void)mergeCurrentCollectionMembersToCloudInMoc:(id)a3;
- (void)mocDidSave:(id)a3;
- (void)p_downloadSampleBook:(id)a3;
- (void)p_syncCollectionMembers:(id)a3 deletedCollectionMembers:(id)a4 inContext:(id)a5;
- (void)p_syncCollections:(id)a3 deletedCollections:(id)a4 inContext:(id)a5;
- (void)p_updateAsset:(id)a3 inCollectionMember:(id)a4 withMOC:(id)a5;
- (void)p_updateAssetInMembers:(id)a3 moc:(id)a4;
- (void)performAddRequest:(id)a3 completion:(id)a4;
- (void)performRemoveRequest:(id)a3 completion:(id)a4;
- (void)processGatheredChangedAssetsCollections:(id)a3;
- (void)promoteSampleFromWantToReadForAssetID:(id)a3;
- (void)removeAssetID:(id)a3 fromCollectionID:(id)a4 completion:(id)a5;
- (void)removeBook:(id)a3 fromCollections:(id)a4 completion:(id)a5;
- (void)removeBooks:(id)a3 fromCollection:(id)a4 completion:(id)a5;
- (void)resetCollections;
- (void)resetCollectionsForAssetIDs:(id)a3 completion:(id)a4;
- (void)setEnableCloudMerge:(BOOL)a3;
- (void)setupDefaultCollectionsInManagedObjectContext:(id)a3;
- (void)updateCollectionMemberAssetLinksForAssetIDs:(id)a3 temporaryAssetIDs:(id)a4 moc:(id)a5;
- (void)updateCollectionMemberAssetLinksInMOCForUpgrade:(id)a3;
- (void)updateiTunesUCollectionMembersForAssetIDs:(id)a3 temporaryAssetIDs:(id)a4 moc:(id)a5;
@end

@implementation BKLibraryCollectionManager

- (BKLibraryCollectionManager)initWithLibraryManager:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BKLibraryCollectionManager;
  v5 = [(BKLibraryCollectionManager *)&v36 init];
  v6 = v5;
  if (v5)
  {
    v5->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_libraryManager, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.iBooks.BKLibraryCollectionManager", v7);
    enableCloudMergeQueue = v6->_enableCloudMergeQueue;
    v6->_enableCloudMergeQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.iBooks.BKLibraryCollectionManager.getChanges", v10);
    getChangesQueue = v6->_getChangesQueue;
    v6->_getChangesQueue = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v6 selector:"mocDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    if (BDSXPCNotificationsEnabled())
    {
      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:v6 selector:"_BCCloudCollectionDetailManagerChanged:" name:BCCloudCollectionDetailManagerChanged object:0];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:v6 selector:"_BCCloudCollectionMemberManagerChanged:" name:BCCloudCollectionMemberManagerChanged object:0];

      v16 = +[BDSServiceNotificationCenter sharedInstance];
      [v16 startMonitoring];
    }

    else
    {
      v17 = +[NSDistributedNotificationCenter defaultCenter];
      [v17 addObserver:v6 selector:"_BCCloudCollectionDetailManagerChanged:" name:BCCloudCollectionDetailManagerChanged object:0];

      v16 = +[NSDistributedNotificationCenter defaultCenter];
      [v16 addObserver:v6 selector:"_BCCloudCollectionMemberManagerChanged:" name:BCCloudCollectionMemberManagerChanged object:0];
    }

    v18 = +[BCCloudCollectionsManager sharedManager];
    cloudCollectionsManager = v6->_cloudCollectionsManager;
    v6->_cloudCollectionsManager = v18;

    v20 = [BUCoalescingCallBlock alloc];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_609A4;
    v34[3] = &unk_D6970;
    v21 = v6;
    v35 = v21;
    v22 = [v20 initWithNotifyBlock:v34 blockDescription:@"BKLibraryCollectionManager resetAll"];
    v23 = v21[17];
    v21[17] = v22;

    [v21[17] setCoalescingDelay:0.1];
    v24 = [BUCoalescingCallBlock alloc];
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_60A7C;
    v32 = &unk_D6970;
    v25 = v21;
    v33 = v25;
    v26 = [v24 initWithNotifyBlock:&v29 blockDescription:@"BKLibraryCollectionManager resetChanged"];
    v27 = v25[18];
    v25[18] = v26;

    [v25[18] setCoalescingDelay:{0.1, v29, v30, v31, v32}];
  }

  return v6;
}

- (void)dealloc
{
  v3 = NSNotificationCenter_ptr;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];

  if (!BDSXPCNotificationsEnabled())
  {
    v3 = NSDistributedNotificationCenter_ptr;
  }

  v5 = [*v3 defaultCenter];
  [v5 removeObserver:self name:BCCloudCollectionDetailManagerChanged object:0];

  v6 = [*v3 defaultCenter];
  [v6 removeObserver:self name:BCCloudCollectionMemberManagerChanged object:0];

  objc_storeWeak(&self->_libraryManager, 0);
  v7.receiver = self;
  v7.super_class = BKLibraryCollectionManager;
  [(BKLibraryCollectionManager *)&v7 dealloc];
}

- (void)setEnableCloudMerge:(BOOL)a3
{
  v5 = [(BKLibraryCollectionManager *)self enableCloudMergeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_60ECC;
  v6[3] = &unk_D61E0;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (id)p_allOrderedCollections
{
  v3 = [(BKLibraryCollectionManager *)self defaultCollections];
  v4 = [NSMutableArray arrayWithArray:v3];

  v5 = [(BKLibraryCollectionManager *)self userCollectionsOnMainQueueWithError:0];
  v6 = [NSMutableArray arrayWithArray:v5];

  if ([v6 count])
  {
    [v4 addObjectsFromArray:v6];
  }

  return v4;
}

- (id)_defaultCollectionsIncludeAllBooks:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSMutableArray array];
  if (v3)
  {
    v6 = [(BKLibraryCollectionManager *)self defaultAllBooksCollection];
    [v5 addObject:v6];
  }

  v7 = [(BKLibraryCollectionManager *)self defaultWantToReadCollection];
  [v5 addObject:v7];

  v8 = [(BKLibraryCollectionManager *)self defaultFinishedCollection];
  [v5 addObject:v8];

  v9 = [(BKLibraryCollectionManager *)self defaultBooksCollection];
  [v5 addObject:v9];

  v10 = [(BKLibraryCollectionManager *)self defaultAudioBooksCollection];
  [v5 addObject:v10];

  v11 = [(BKLibraryCollectionManager *)self defaultPDFsCollection];
  [v5 addObject:v11];

  v12 = [(BKLibraryCollectionManager *)self defaultSamplesCollection];
  [v5 addObject:v12];

  v13 = [(BKLibraryCollectionManager *)self defaultDownloadedCollection];
  [v5 addObject:v13];

  v14 = [NSArray arrayWithArray:v5];

  return v14;
}

- (id)collectionOnMainQueueWithCollectionID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_91544();
  }

  v7 = [(BKLibraryCollectionManager *)self libraryManager];
  v8 = [v7 uiChildContext];
  v9 = [(BKLibraryCollectionManager *)self collectionWithCollectionID:v6 inManagedObjectContext:v8 error:a4];

  return v9;
}

- (id)collectionWithCollectionID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([BKCollection isSeriesCollectionID:v8])
  {
    v10 = [BKCollection seriesIDFromSeriesCollectionID:v8];
    v11 = [(BKLibraryCollectionManager *)self libraryManager];
    v12 = [v11 libraryAssetOnMainQueueWithAssetID:v10];

    v13 = [v12 title];
    v14 = [BKUnsyncedSeriesCollection seriesCollectionWithSeriesID:v10 name:v13];
  }

  else
  {
    if ([(BKLibraryCollectionManager *)self isAllBooksCollection:v8])
    {
      [(BKLibraryCollectionManager *)self defaultAllBooksCollection];
    }

    else
    {
      [(BKLibraryCollectionManager *)self mutableCollectionWithCollectionID:v8 inManagedObjectContext:v9 error:a5];
    }
    v14 = ;
  }

  return v14;
}

- (id)userCollectionsOnMainQueueWithError:(id *)a3
{
  if (!+[NSThread isMainThread])
  {
    sub_91580();
  }

  v5 = [(BKLibraryCollectionManager *)self libraryManager];
  v6 = [v5 uiChildContext];
  v7 = [(BKLibraryCollectionManager *)self userCollectionsInManagedObjectContext:v6 withError:a3];

  return v7;
}

- (id)userCollectionsInManagedObjectContext:(id)a3 withError:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
    v7 = +[BKCollection predicateForNonDeletedUserCollections];
    [v6 setPredicate:v7];

    v8 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:1];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    [v6 setSortDescriptors:v9];

    [v6 setReturnsObjectsAsFaults:0];
    v10 = [v5 executeFetchRequest:v6 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultCollectionsInManagedObjectContext:(id)a3 withError:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
    v7 = +[BKCollection predicateForAllDefaultCollections];
    [v6 setPredicate:v7];

    [v6 setReturnsObjectsAsFaults:0];
    v8 = [v5 executeFetchRequest:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fetchDefaultBooksCollectionInUIMoc:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_60C78;
  v17 = sub_60C88;
  v18 = 0;
  v5 = [(BKLibraryCollectionManager *)self libraryManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_61E08;
  v9[3] = &unk_D7408;
  objc_copyWeak(&v12, &location);
  v11 = &v13;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [v5 performBlockInUIContext:v9];

  v7 = v14[5];
  objc_destroyWeak(&v12);
  _Block_object_dispose(&v13, 8);

  objc_destroyWeak(&location);

  return v7;
}

- (id)_setupDefaultBooksCollection:(id)a3 moc:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [(BKLibraryCollectionManager *)self mutableCollectionWithCollectionID:v6 inManagedObjectContext:v7 error:&v18];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [BKCollection insertNewCollectionWithCollectionID:v6 inManagedObjectContext:v7];
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = [v9 title];

  if (!v10)
  {
    v11 = [BCCollection titleForDefaultCollectionID:v6];
    [v9 setTitle:v11];
  }

  v12 = [v9 sortKey];
  v13 = [v12 integerValue];

  if (!v13 && kBKCollectionDefaultAll != v6)
  {
    v14 = [BCCollection sortKeyForDefaultCollectionID:v6];
    [v9 setSortKey:v14];
  }

  v15 = [v9 deletedFlag];
  v16 = [v15 integerValue];

  if (v16)
  {
    [v9 setDeletedFlag:&off_DE150];
  }

LABEL_11:

  return v9;
}

- (BKCollection)defaultAllBooksCollection
{
  defaultAllBooksCollection = self->_defaultAllBooksCollection;
  if (!defaultAllBooksCollection || ([(BKCollection *)defaultAllBooksCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultAll];
    [(BKLibraryCollectionManager *)self setDefaultAllBooksCollection:v5];
  }

  v6 = self->_defaultAllBooksCollection;

  return v6;
}

- (BKCollection)defaultBooksCollection
{
  defaultBooksCollection = self->_defaultBooksCollection;
  if (!defaultBooksCollection || ([(BKCollection *)defaultBooksCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDBooks];
    [(BKLibraryCollectionManager *)self setDefaultBooksCollection:v5];
  }

  v6 = self->_defaultBooksCollection;

  return v6;
}

- (BKCollection)defaultAudioBooksCollection
{
  defaultAudioBooksCollection = self->_defaultAudioBooksCollection;
  if (!defaultAudioBooksCollection || ([(BKCollection *)defaultAudioBooksCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDAudiobooks];
    [(BKLibraryCollectionManager *)self setDefaultAudioBooksCollection:v5];
  }

  v6 = self->_defaultAudioBooksCollection;

  return v6;
}

- (BKCollection)defaultPDFsCollection
{
  defaultPDFsCollection = self->_defaultPDFsCollection;
  if (!defaultPDFsCollection || ([(BKCollection *)defaultPDFsCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDPDFs];
    v6 = self->_defaultPDFsCollection;
    self->_defaultPDFsCollection = v5;
  }

  v7 = self->_defaultPDFsCollection;

  return v7;
}

- (BKCollection)defaultDownloadedCollection
{
  defaultDownloadedCollection = self->_defaultDownloadedCollection;
  if (!defaultDownloadedCollection || ([(BKCollection *)defaultDownloadedCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDDownloaded];
    [(BKLibraryCollectionManager *)self setDefaultDownloadedCollection:v5];
  }

  v6 = self->_defaultDownloadedCollection;

  return v6;
}

- (BKCollection)defaultFinishedCollection
{
  defaultFinishedCollection = self->_defaultFinishedCollection;
  if (!defaultFinishedCollection || ([(BKCollection *)defaultFinishedCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDFinished];
    [(BKLibraryCollectionManager *)self setDefaultFinishedCollection:v5];
  }

  v6 = self->_defaultFinishedCollection;

  return v6;
}

- (BKCollection)defaultWantToReadCollection
{
  defaultWantToReadCollection = self->_defaultWantToReadCollection;
  if (!defaultWantToReadCollection || ([(BKCollection *)defaultWantToReadCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDWantToRead];
    [(BKLibraryCollectionManager *)self setDefaultWantToReadCollection:v5];
  }

  v6 = self->_defaultWantToReadCollection;

  return v6;
}

- (BKCollection)defaultSamplesCollection
{
  defaultSamplesCollection = self->_defaultSamplesCollection;
  if (!defaultSamplesCollection || ([(BKCollection *)defaultSamplesCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDSamples];
    [(BKLibraryCollectionManager *)self setDefaultSamplesCollection:v5];
  }

  v6 = self->_defaultSamplesCollection;

  return v6;
}

- (void)setupDefaultCollectionsInManagedObjectContext:(id)a3
{
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = +[BKCollection availableDefaultCollectionIDsForOS];
  v49 = 0;
  v37 = v4;
  v6 = [(BKLibraryCollectionManager *)self mutableCollectionsWithCollectionIDs:v5 includeDeleted:1 inManagedObjectContext:v4 error:&v49];
  v7 = v49;
  if (v7)
  {
    v8 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_915BC();
    }
  }

  v35 = v7;
  v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        v16 = [v15 collectionID];
        [v9 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v12);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v5;
  v40 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v40)
  {
    v39 = *v42;
    do
    {
      for (j = 0; j != v40; j = j + 1)
      {
        if (*v42 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * j);
        v19 = [v9 objectForKeyedSubscript:v18];
        if (!v19)
        {
          v19 = [BKCollection insertNewCollectionWithCollectionID:v18 inManagedObjectContext:v37];
        }

        v20 = [v19 deletedFlag];
        if (!v20 || (v21 = v20, [v19 deletedFlag], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "BOOLValue"), v22, v21, v23))
        {
          [v19 setDeletedFlag:&__kCFBooleanFalse];
        }

        v24 = [BCCollection sortKeyForDefaultCollectionID:v18];
        v25 = [v19 sortKey];
        if (!v25 || (v26 = v25, v27 = [v24 intValue], objc_msgSend(v19, "sortKey"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "intValue"), v28, v26, v27 != v29))
        {
          [v19 setSortKey:v24];
        }

        v30 = [BCCollection titleForDefaultCollectionID:v18];
        v31 = [v19 title];
        if (!v31 || (v32 = v31, [v19 title], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v30, "isEqualToString:", v33), v33, v32, (v34 & 1) == 0))
        {
          [v19 setTitle:v30];
        }
      }

      v40 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v40);
  }

  objc_autoreleasePoolPop(context);
}

- (void)mergeCurrentCollectionDetailsToCloudInMoc:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
  [v5 setReturnsObjectsAsFaults:0];
  v8 = 0;
  v6 = [v4 executeFetchRequest:v5 error:&v8];
  v7 = [NSSet setWithArray:v6];
  [(BKLibraryCollectionManager *)self p_syncCollections:v7 deletedCollections:0 inContext:v4];
}

- (void)mergeCurrentCollectionMembersToCloudInMoc:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollectionMember"];
  [v5 setReturnsObjectsAsFaults:0];
  v8 = 0;
  v6 = [v4 executeFetchRequest:v5 error:&v8];
  v7 = [NSSet setWithArray:v6];
  [(BKLibraryCollectionManager *)self p_syncCollectionMembers:v7 deletedCollectionMembers:0 inContext:v4];
}

- (id)insertNewCollectionSyncOnMainQueueWithCollectionID:(id)a3 newCollectionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_60C78;
  v21 = sub_60C88;
  v22 = 0;
  v8 = [(BKLibraryCollectionManager *)self libraryManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_62B9C;
  v13[3] = &unk_D7458;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  [v8 performBlockInUIContext:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)mutableCollectionWithCollectionID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v5 = 0;
  if (a3 && a4)
  {
    v8 = a4;
    v9 = a3;
    v10 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
    [v10 setFetchLimit:1];
    v11 = [NSPredicate predicateWithFormat:@"%K == %@", @"collectionID", v9];

    [v10 setPredicate:v11];
    [v10 setReturnsObjectsAsFaults:0];
    v12 = [v8 executeFetchRequest:v10 error:a5];

    v5 = [v12 lastObject];
  }

  return v5;
}

- (id)mutableCollectionsWithCollectionIDs:(id)a3 includeDeleted:(BOOL)a4 inManagedObjectContext:(id)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    if (v8)
    {
      [BKCollection predicateForCollectionWithCollectionIDInList:v9];
    }

    else
    {
      [NSPredicate predicateWithFormat:@"%K in %@", @"collectionID", v9];
    }
    v13 = ;
    v14 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
    [v14 setPredicate:v13];
    [v14 setReturnsObjectsAsFaults:0];
    v12 = [v11 executeFetchRequest:v14 error:a6];
  }

  return v12;
}

- (BOOL)deleteCollectionWithCollectionID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (a3 && v8)
  {
    v11 = [(BKLibraryCollectionManager *)self mutableCollectionWithCollectionID:a3 inManagedObjectContext:v8 error:a5];
    v10 = v11 != 0;
    if (v11)
    {
      [v9 deleteObject:v11];
    }
  }

  return v10;
}

- (BOOL)deleteCollectionOnMainQueue:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_91624();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(BKLibraryCollectionManager *)self libraryManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_630C4;
  v9[3] = &unk_D6048;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [v5 performBlockInUIContext:v9];

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)promoteSampleFromWantToReadForAssetID:(id)a3
{
  v4 = a3;
  v5 = kBKCollectionDefaultIDWantToRead;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_631FC;
  v7[3] = &unk_D7480;
  v8 = v4;
  v6 = v4;
  [(BKLibraryCollectionManager *)self removeAssetID:v6 fromCollectionID:v5 completion:v7];
}

- (void)markAssetsAsFinished:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BKLibraryCollectionManager *)self libraryManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_633CC;
  v11[3] = &unk_D5B30;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlockOnCollectionsWorkerQueue:v11];
}

- (void)addBooks:(id)a3 toCollection:(id)a4 forceToTop:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [a4 collectionID];
  v13 = [v11 valueForKey:@"assetID"];
  v14 = [v13 allObjects];

  v15 = [v11 valueForKey:@"temporaryAssetID"];

  v16 = [v15 allObjects];

  if (![v16 count])
  {

    v16 = 0;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_63740;
  v21[3] = &unk_D74D0;
  v21[4] = self;
  v22 = v12;
  v24 = v16;
  v25 = v10;
  v23 = v14;
  v26 = a5;
  v17 = v16;
  v18 = v10;
  v19 = v14;
  v20 = v12;
  dispatch_async(&_dispatch_main_q, v21);
}

- (void)removeAssetID:(id)a3 fromCollectionID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[BKCollectionControllerMemberManagingRemoveRequest alloc] initWithStoreID:v10 collectionID:v9];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_63EB8;
  v13[3] = &unk_D74F8;
  v14 = v8;
  v12 = v8;
  [(BKLibraryCollectionManager *)self performRemoveRequest:v11 completion:v13];
}

- (void)performRemoveRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 storeID];
  v9 = [v7 collectionID];

  v10 = [(BKLibraryCollectionManager *)self libraryManager];
  v11 = v10;
  if (v10)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_64108;
    v15[3] = &unk_D7520;
    v15[4] = v9;
    v15[5] = v8;
    v15[6] = self;
    v16 = v10;
    v17 = v6;
    [v16 performBlockOnCollectionsWorkerQueue:v15];
  }

  else
  {
    v12 = objc_retainBlock(v6);
    if (v12)
    {
      v18 = NSLocalizedDescriptionKey;
      v19 = @"No library found.";
      v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v14 = [NSError errorWithDomain:@"BKLibraryCollectionManager" code:0 userInfo:v13];
      v12[2](v12, 0, v14);
    }
  }
}

- (void)markAsFinishedStoreID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[BCMutableStoreItem alloc] initWithStoreID:v6];
  v9 = +[BCCloudAssetManager sharedManager];
  v10 = [v9 storeAssetManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6467C;
  v18[3] = &unk_D7548;
  v11 = v6;
  v19 = v11;
  v20 = v7;
  v12 = v7;
  [v10 addStoreItem:v8 completion:v18];
  [(BKLibraryCollectionManager *)self libraryManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_64728;
  v16 = v15[3] = &unk_D5420;
  v17 = v11;
  v13 = v11;
  v14 = v16;
  [v14 waitForAssetID:v13 completion:v15];
}

- (void)performAddRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 storeID];
  v9 = [v7 collectionID];
  v10 = [v7 forceToTop];

  v11 = [v9 isEqualToString:kBKCollectionDefaultIDWantToRead];
  v12 = v11;
  if (v11)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"BKLibraryAssetAddToWTRCollectionNotification" object:self userInfo:0];
  }

  if ([v9 isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_64C64;
    v25[3] = &unk_D7570;
    v26 = v6;
    [(BKLibraryCollectionManager *)self markAsFinishedStoreID:v8 completion:v25];
    v14 = v26;
LABEL_9:

    goto LABEL_10;
  }

  v15 = [(BKLibraryCollectionManager *)self libraryManager];

  if (v15)
  {
    v16 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Adding storeIDs: %@ to collection %@", buf, 0x16u);
    }

    v17 = [(BKLibraryCollectionManager *)self libraryManager];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_64D30;
    v21[3] = &unk_D75E8;
    v21[4] = self;
    v21[5] = v9;
    v21[6] = v8;
    v23 = v10;
    v24 = v12;
    v22 = v6;
    [v17 performBlockOnCollectionsWorkerQueue:v21];

    v14 = v22;
    goto LABEL_9;
  }

  v18 = [NSError errorWithDomain:@"BKLibraryErrorDomain" code:2 userInfo:0];
  v19 = objc_retainBlock(v6);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, 0, v18);
  }

LABEL_10:
}

- (BOOL)allowsAutoDownloadOfSamplesToWantToRead
{
  objc_opt_class();
  v2 = +[BCRCDataContainer defaultContainer];
  v3 = [v2 configs];
  v4 = [v3 valueForKeyPath:BRCBooksDefaultsKeyReadingNowWtrSimpleModeEnabled];
  v5 = BUDynamicCast();

  LOBYTE(v2) = [v5 BOOLValue];
  return v2 ^ 1;
}

- (void)p_downloadSampleBook:(id)a3
{
  v4 = a3;
  v5 = +[AEUserPublishing sharedInstance];
  v10 = v4;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6547C;
  v8[3] = &unk_D7638;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 lockupProfilesForStoreIDs:v6 completion:v8];
}

- (void)removeBook:(id)a3 fromCollections:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BKLibraryCollectionManager *)self libraryManager];
  v12 = v11;
  if (v8 && v11 && [v9 count])
  {
    v13 = [v8 assetID];
    objc_opt_class();
    v14 = [v9 valueForKey:@"collectionID"];
    v15 = BUDynamicCast();

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_65A94;
    v20[3] = &unk_D7688;
    v20[4] = self;
    v21 = v8;
    v22 = v15;
    v23 = v13;
    v24 = v12;
    v25 = v10;
    v16 = v13;
    v17 = v15;
    [v24 performBlockOnCollectionsWorkerQueue:v20];
  }

  else
  {
    v18 = objc_retainBlock(v10);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0, 0);
    }
  }
}

- (void)removeBooks:(id)a3 fromCollection:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BKLibraryCollectionManager *)self libraryManager];
  if (v11 && [v9 deleteRemovesFromCollection])
  {
    v12 = [v9 collectionID];
    v13 = [v8 valueForKey:@"assetID"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_65F2C;
    v18[3] = &unk_D7688;
    v18[4] = self;
    v19 = v8;
    v20 = v12;
    v21 = v13;
    v22 = v11;
    v23 = v10;
    v14 = v13;
    v15 = v12;
    [v22 performBlockOnCollectionsWorkerQueue:v18];
  }

  else
  {
    v16 = objc_retainBlock(v10);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }
}

- (void)cleanupDefaultCollections
{
  v2 = [(BKLibraryCollectionManager *)self libraryManager];
  [v2 performBlockOnCollectionsWorkerQueueAndWait:&stru_D76C8];
}

- (BOOL)p_shouldDeleteAsset:(id)a3 removingFromCollectionIDs:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 collectionMembers];
  v8 = [v7 count];
  v9 = [v6 count];

  if ([v5 isSample] && objc_msgSend(v5, "isLocal") && ((v10 = v8 - v9, ((v8 - v9) & 0xFFFFFFFFFFFFFFFELL) == 2) || objc_msgSend(v6, "containsObject:", kBKCollectionDefaultIDSamples)))
  {
    v11 = [v5 collectionMembers];
    v12 = [v11 valueForKeyPath:@"collectionID"];

    v13 = [v6 isSubsetOfSet:v12] && objc_msgSend(v12, "containsObject:", kBKCollectionDefaultAll) && ((objc_msgSend(v12, "containsObject:", kBKCollectionDefaultIDBooks) & 1) != 0 || objc_msgSend(v12, "containsObject:", kBKCollectionDefaultIDAudiobooks)) && (v10 == 2 || objc_msgSend(v12, "containsObject:", kBKCollectionDefaultIDDownloaded));
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)p_assetsRequiringDeletion:(id)a3 removingFromCollectionIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([(BKLibraryCollectionManager *)self p_shouldDeleteAsset:v14 removingFromCollectionIDs:v7, v16])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)fetchWTRMembersInContext:(id)a3
{
  v3 = a3;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollectionMember"];
  v5 = [BKLibraryManager predicateForCollectionMembersInCollectionID:kBKCollectionDefaultIDWantToRead hideUnownedItems:0];
  v14[0] = v5;
  v6 = +[BKLibraryManager predicateForExcludingCollectionMembersWithSideloadedAssets];
  v14[1] = v6;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  [v4 setPredicate:v8];

  v9 = [v3 executeFetchRequest:v4 error:0];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = +[NSArray array];
  }

  v11 = v10;

  v12 = [NSSet setWithArray:v11];

  return v12;
}

- (void)p_syncCollections:(id)a3 deletedCollections:(id)a4 inContext:(id)a5
{
  v7 = a3;
  v53 = a4;
  v54 = a5;
  v8 = +[NSMutableSet set];
  v56 = +[NSMutableDictionary dictionary];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v9)
  {
    v10 = *v72;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v72 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v71 + 1) + 8 * i);
        v13 = [v12 deletedFlag];
        v14 = [v13 BOOLValue];

        if (v14)
        {
          v15 = +[BULogUtilities shared];
          v16 = [v15 verboseLoggingEnabled];

          if (v16)
          {
            v17 = BKLibraryCollectionDevelopmentLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v12;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "\\collection marked deleted: %@\\"", &buf, 0xCu);
            }
          }

          v18 = [v12 collectionID];
          if (v18)
          {
            [v8 addObject:v18];
          }

          else
          {
            v24 = +[BULogUtilities shared];
            v25 = [v24 verboseLoggingEnabled];

            if (v25)
            {
              v26 = BKLibraryAssetDetailsDevelopmentLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v12;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "\\collection marked as deleted but has no collectionID: %@\\"", &buf, 0xCu);
              }
            }
          }
        }

        else
        {
          v19 = [v12 placeholder];
          v20 = [v19 BOOLValue];

          if (v20)
          {
            v21 = +[BULogUtilities shared];
            v22 = [v21 verboseLoggingEnabled];

            if (!v22)
            {
              continue;
            }

            v18 = BKLibraryCollectionDevelopmentLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v12;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "\\collection marked placeholder: %@\\"", &buf, 0xCu);
            }
          }

          else
          {
            v18 = [v12 collectionDetailRepresentation];
            v23 = [v18 collectionID];
            if (v23)
            {
              [v56 setObject:v18 forKey:v23];
            }

            else
            {
              v27 = +[BULogUtilities shared];
              v28 = [v27 verboseLoggingEnabled];

              if (v28)
              {
                v29 = BKLibraryAssetDetailsDevelopmentLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v12;
                  _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "\\Collection detail representation has no collectionID: %@\\"", &buf, 0xCu);
                }
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v9);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v30 = v53;
  v31 = [v30 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v31)
  {
    v32 = *v68;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v68 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = [*(*(&v67 + 1) + 8 * j) collectionID];
        if (v34)
        {
          [v8 addObject:v34];
        }
      }

      v31 = [v30 countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v31);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v76 = 0x2020000000;
  v77 = 0;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_66F1C;
  v66[3] = &unk_D76F0;
  v66[4] = self;
  v66[5] = &buf;
  v35 = objc_retainBlock(v66);
  v36 = v35;
  if (v54)
  {
    (v35[2])(v35);
  }

  else
  {
    v37 = [(BKLibraryCollectionManager *)self libraryManager];
    [v37 performBlockOnCollectionsWorkerQueue:v36];
  }

  v38 = dispatch_group_create();
  if ([v56 count])
  {
    v39 = +[BULogUtilities shared];
    v40 = [v39 verboseLoggingEnabled];

    if (v40)
    {
      v41 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v65 = 0;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "\\Collections Inserted or Updated\\"", v65, 2u);
      }
    }

    v42 = [v56 allKeys];
    dispatch_group_enter(v38);
    v43 = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
    v44 = [v43 collectionDetailManager];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_66FC4;
    v62[3] = &unk_D7718;
    v45 = v42;
    v63 = v45;
    v64 = v38;
    [v44 setCollectionDetails:v56 completion:v62];
  }

  if ([v8 count])
  {
    v46 = +[BULogUtilities shared];
    v47 = [v46 verboseLoggingEnabled];

    if (v47)
    {
      v48 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *v65 = 0;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "\\Collections Deleted\\"", v65, 2u);
      }
    }

    dispatch_group_enter(v38);
    v49 = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
    v50 = [v49 collectionDetailManager];
    v51 = [v8 allObjects];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_67134;
    v59[3] = &unk_D6A78;
    v60 = v8;
    v61 = v38;
    [v50 deleteCollectionDetailForCollectionIDs:v51 completion:v59];
  }

  v52 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_67248;
  block[3] = &unk_D6410;
  block[4] = self;
  block[5] = &buf;
  dispatch_group_notify(v38, v52, block);

  _Block_object_dispose(&buf, 8);
}

- (void)p_syncCollectionMembers:(id)a3 deletedCollectionMembers:(id)a4 inContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
  v48 = v9;
  v51 = +[NSMutableDictionary dictionary];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v11)
  {
    v12 = *v68;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v67 + 1) + 8 * i);
        v15 = [v14 collection];
        v16 = [v15 collectionID];
        if (v16)
        {
          v17 = [v14 assetID];
          if (v17)
          {
            v18 = [v14 collection];
            v19 = [v18 shouldSyncCollectionMembers];

            if (!v19)
            {
              continue;
            }

            v15 = [v14 collectionMemberRepresentation];
            v16 = [v15 collectionMemberID];
            [v51 setObject:v15 forKey:v16];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v11);
  }

  v50 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v20 = v10;
  v21 = [v20 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = *v64;
  do
  {
    for (j = 0; j != v21; j = j + 1)
    {
      if (*v64 != v22)
      {
        objc_enumerationMutation(v20);
      }

      v24 = *(*(&v63 + 1) + 8 * j);
      v25 = [v24 collectionID];
      if (v25)
      {
        v26 = [v24 assetID];
        if (v26)
        {
          v27 = [v24 collectionID];
          v28 = [BKCollection shouldSyncCollectionID:v27];

          if (!v28)
          {
            continue;
          }

          v29 = [v24 collectionID];
          v30 = [v24 assetID];
          v25 = [BCCollectionMember collectionMemberIDWithCollectionID:v29 assetID:v30];

          [v50 addObject:v25];
        }
      }
    }

    v21 = [v20 countByEnumeratingWithState:&v63 objects:v71 count:16];
  }

  while (v21);
LABEL_26:

  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v62[3] = 0;
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_67A5C;
  v61[3] = &unk_D76F0;
  v61[4] = self;
  v61[5] = v62;
  v31 = objc_retainBlock(v61);
  v32 = v31;
  if (v48)
  {
    (v31[2])(v31);
  }

  else
  {
    v33 = [(BKLibraryCollectionManager *)self libraryManager];
    [v33 performBlockOnCollectionsWorkerQueue:v32];
  }

  v34 = dispatch_group_create();
  if ([v51 count])
  {
    v35 = +[BULogUtilities shared];
    v36 = [v35 verboseLoggingEnabled];

    if (v36)
    {
      v37 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "\\Collection Members Inserted or Updated\\"", buf, 2u);
      }
    }

    v38 = [v51 allKeys];
    dispatch_group_enter(v34);
    v39 = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
    v40 = [v39 collectionMemberManager];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_67B04;
    v57[3] = &unk_D7718;
    v58 = v34;
    v41 = v38;
    v59 = v41;
    [v40 setCollectionMembers:v51 completion:v57];
  }

  if ([v50 count])
  {
    v42 = +[BULogUtilities shared];
    v43 = [v42 verboseLoggingEnabled];

    if (v43)
    {
      v44 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "\\Collection Members Deleted\\"", buf, 2u);
      }
    }

    dispatch_group_enter(v34);
    v45 = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
    v46 = [v45 collectionMemberManager];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_67C74;
    v54[3] = &unk_D6A78;
    v55 = v50;
    v56 = v34;
    [v46 deleteCollectionMemberForCollectionMemberIDs:v55 completion:v54];
  }

  v47 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_67D64;
  block[3] = &unk_D6410;
  block[4] = self;
  block[5] = v62;
  dispatch_group_notify(v34, v47, block);

  _Block_object_dispose(v62, 8);
}

- (void)mocDidSave:(id)a3
{
  v4 = a3;
  v5 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_91964(v4);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v6 = [(BKLibraryCollectionManager *)self enableCloudMergeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_68544;
  block[3] = &unk_D7318;
  block[4] = self;
  block[5] = &v41;
  dispatch_sync(v6, block);

  objc_opt_class();
  v7 = [v4 object];
  v8 = BUDynamicCast();

  v9 = [v8 sessionContextType] == 5 && objc_msgSend(v8, "saveContext") == 1;
  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:NSUpdatedObjectsKey];

  if (v8)
  {
    v12 = [NSPredicate predicateWithFormat:@"self isKindOfClass:%@ AND self.collectionID == %@", objc_opt_class(), kBKCollectionDefaultIDWantToRead];
    v13 = [v11 filteredSetUsingPredicate:v12];
    if ([v13 count])
    {
      v14 = [(BKLibraryCollectionManager *)self libraryManager];
      [v14 collectionManagerDidModifyWantToReadCollection:self];
    }

    if (!v9 && [v8 sessionContextType] != 2 && objc_msgSend(v8, "sessionContextType") != 3 && objc_msgSend(v8, "sessionContextType") != 1)
    {
      v15 = [v8 persistentStoreCoordinator];
      v16 = [(BKLibraryCollectionManager *)self libraryManager];
      v17 = [v16 persistentStoreCoordinator];
      v18 = [v15 hasStoreInCommonWith:v17];

      if (v18)
      {
        v19 = [v4 userInfo];
        v39 = [v19 objectForKey:NSInsertedObjectsKey];

        v20 = [v4 userInfo];
        v38 = [v20 objectForKey:NSDeletedObjectsKey];

        if (*(v42 + 24) == 1 && ([v39 count] || objc_msgSend(v11, "count") || objc_msgSend(v38, "count")))
        {
          v21 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
          v22 = +[NSMutableSet set];
          v36 = [v39 filteredSetUsingPredicate:v21];
          v35 = [v11 filteredSetUsingPredicate:v21];
          if ([v36 count])
          {
            [v22 unionSet:v36];
          }

          if ([v35 count])
          {
            [v22 unionSet:v35];
          }

          v23 = [v38 filteredSetUsingPredicate:v21];
          v24 = [v23 mutableCopy];

          if ([v22 count] || objc_msgSend(v24, "count"))
          {
            v25 = BKLibraryCollectionLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v22 count];
              v27 = [v24 count];
              *buf = 134218498;
              v46 = v26;
              v47 = 2048;
              v48 = v27;
              v49 = 2114;
              v50 = v8;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Saving collections: %lu inserts/updates, %lu deletes (due to moc save: %{public}@)", buf, 0x20u);
            }

            [(BKLibraryCollectionManager *)self p_syncCollections:v22 deletedCollections:v24 inContext:0];
          }

          v28 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
          v29 = +[NSMutableSet set];
          v37 = [v39 filteredSetUsingPredicate:v28];
          v30 = [v11 filteredSetUsingPredicate:v28];
          if ([v37 count])
          {
            [v29 unionSet:v37];
          }

          if ([v30 count])
          {
            [v29 unionSet:v30];
          }

          v31 = [v38 filteredSetUsingPredicate:v28];
          if ([v29 count] || objc_msgSend(v31, "count"))
          {
            v32 = BKLibraryCollectionLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v29 count];
              v34 = [v31 count];
              *buf = 134218498;
              v46 = v33;
              v47 = 2048;
              v48 = v34;
              v49 = 2114;
              v50 = v8;
              _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Saving collection members: %lu inserts/updates, %lu deletes (due to moc save: %{public}@)", buf, 0x20u);
            }

            [(BKLibraryCollectionManager *)self p_syncCollectionMembers:v29 deletedCollectionMembers:v31 inContext:0];
          }
        }
      }
    }
  }

  _Block_object_dispose(&v41, 8);
}

- (void)_BCCloudCollectionDetailManagerChanged:(id)a3
{
  v4 = [(BKLibraryCollectionManager *)self getChangesQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_68600;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_checkForChangesFromCloudCollectionDetailManagerInMOC:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryCollectionManager *)self libraryManager];
  v9 = [v8 cloudSyncVersionsForDataType:@"BCCollectionDetail" inContext:v7];

  v10 = [v9 mutableCopy];
  v11 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "_checkForChangesFromCloudCollectionDetailManagerInMOC cloudSyncVersions:%{public}@, reason:%{public}@", buf, 0x16u);
  }

  v12 = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
  v13 = [v12 collectionDetailManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_68938;
  v14[3] = &unk_D7740;
  v14[4] = self;
  [v13 getCollectionDetailChangesSince:v10 completion:v14];
}

- (void)_BCCloudCollectionMemberManagerChanged:(id)a3
{
  v4 = [(BKLibraryCollectionManager *)self getChangesQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_69494;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_checkForChangesFromCloudCollectionMemberManagerInMOC:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryCollectionManager *)self libraryManager];
  v9 = [v8 cloudSyncVersionsForDataType:@"BCCollectionMember" inContext:v7];

  v10 = [v9 mutableCopy];
  v11 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "_checkForChangesFromCloudCollectionMemberManagerInMOC cloudSyncVersions:%{public}@, reason:%{public}@", buf, 0x16u);
  }

  v12 = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
  v13 = [v12 collectionMemberManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_697CC;
  v14[3] = &unk_D7740;
  v14[4] = self;
  [v13 getCollectionMemberChangesSince:v10 completion:v14];
}

- (id)p_fetchOrCreatePlaceholderCollectionForCollectionID:(id)a3 moc:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v8 = [(BKLibraryCollectionManager *)self mutableCollectionWithCollectionID:v6 inManagedObjectContext:v7 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Creating a new placeholder collection for member insertion collectionID:%{public}@", buf, 0xCu);
    }

    v12 = [BKCollection insertNewCollectionWithCollectionID:v6 inManagedObjectContext:v7];

    [v12 setTitle:@"Sync Placeholder"];
    [v12 setLocalModDate:0];
    [v12 setPlaceholder:&__kCFBooleanTrue];
    v8 = v12;
  }

  return v8;
}

- (void)p_updateAssetInMembers:(id)a3 moc:(id)a4
{
  v5 = a3;
  v72 = a4;
  v6 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_91ABC(v5);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v7 = +[BKCollection availableDefaultCollectionIDsForOS];
  v8 = [v7 countByEnumeratingWithState:&v91 objects:v103 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v92;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v92 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v91 + 1) + 8 * i);
        v13 = [NSPredicate predicateWithFormat:@"collectionID == %@", v12];
        v14 = [v5 filteredArrayUsingPredicate:v13];
        v15 = [v14 count];

        if (v15)
        {
          v16 = BKLibraryCollectionLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v100 = v15;
            v101 = 2112;
            v102 = v12;
            _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "├─ %lu %@ BKCollectionMembers don't have asset link", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v91 objects:v103 count:16];
    }

    while (v9);
  }

  v17 = +[NSMutableArray array];
  v18 = +[NSMutableArray array];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v19 = v5;
  v20 = [v19 countByEnumeratingWithState:&v87 objects:v98 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v88;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v88 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v87 + 1) + 8 * j);
        v25 = [v24 assetID];
        if (v25)
        {
          [v17 addObject:v25];
        }

        v26 = [v24 temporaryAssetID];
        if (v26)
        {
          [v18 addObject:v26];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v87 objects:v98 count:16];
    }

    while (v21);
  }

  v27 = +[NSMutableDictionary dictionary];
  v66 = v17;
  v67 = v18;
  v68 = v19;
  if ([v17 count])
  {
    v28 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    v29 = [NSPredicate predicateWithFormat:@"assetID IN %@", v66];
    [v28 setPredicate:v29];
    v86 = 0;
    v30 = [v72 executeFetchRequest:v28 error:&v86];
    v31 = v86;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v32 = v30;
    v33 = [v32 countByEnumeratingWithState:&v82 objects:v97 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v83;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v83 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v82 + 1) + 8 * k);
          v38 = [v37 assetID];
          [v27 setObject:v37 forKey:v38];
        }

        v34 = [v32 countByEnumeratingWithState:&v82 objects:v97 count:16];
      }

      while (v34);
    }

    v18 = v67;
    v19 = v68;
  }

  v39 = +[NSMutableDictionary dictionary];
  if ([v18 count])
  {
    v40 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    v41 = [NSPredicate predicateWithFormat:@"temporaryAssetID IN %@", v18];
    [v40 setPredicate:v41];
    v81 = 0;
    v42 = [v72 executeFetchRequest:v40 error:&v81];
    v69 = v81;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v43 = v42;
    v44 = [v43 countByEnumeratingWithState:&v77 objects:v96 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v78;
      do
      {
        for (m = 0; m != v45; m = m + 1)
        {
          if (*v78 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v77 + 1) + 8 * m);
          v49 = [v48 temporaryAssetID];
          [v39 setObject:v48 forKey:v49];
        }

        v45 = [v43 countByEnumeratingWithState:&v77 objects:v96 count:16];
      }

      while (v45);
    }

    v18 = v67;
    v19 = v68;
  }

  v70 = v39;
  if ([v27 count] || objc_msgSend(v39, "count"))
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v50 = v19;
    v51 = [v50 countByEnumeratingWithState:&v73 objects:v95 count:16];
    if (!v51)
    {
      goto LABEL_64;
    }

    v52 = v51;
    v53 = *v74;
    while (1)
    {
      for (n = 0; n != v52; n = n + 1)
      {
        if (*v74 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v73 + 1) + 8 * n);
        v56 = [v55 assetID];
        if (v56)
        {
          v57 = [v27 objectForKey:v56];
          if (v57)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v58 = [v55 temporaryAssetID];
          if (v58)
          {
            v57 = [v70 objectForKey:v58];
          }

          else
          {
            v57 = 0;
          }

          if (v57)
          {
LABEL_52:
            [(BKLibraryCollectionManager *)self p_updateAsset:v57 inCollectionMember:v55 withMOC:v72];
            goto LABEL_61;
          }
        }

        v59 = +[BULogUtilities shared];
        v60 = [v59 verboseLoggingEnabled];

        if (v60)
        {
          v61 = BKLibraryCollectionDevelopmentLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = [v55 collection];
            v63 = [v62 title];
            *buf = 138412546;
            v100 = v56;
            v101 = 2112;
            v102 = v63;
            _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "\\Did not find asset assetID %@ in Collection: %@ \\"", buf, 0x16u);
          }
        }

LABEL_61:
      }

      v52 = [v50 countByEnumeratingWithState:&v73 objects:v95 count:16];
      if (!v52)
      {
        v18 = v67;
        v19 = v68;
        goto LABEL_64;
      }
    }
  }

  v64 = +[BULogUtilities shared];
  v65 = [v64 verboseLoggingEnabled];

  if (v65)
  {
    v50 = BKLibraryCollectionDevelopmentLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v100 = v66;
      v101 = 2112;
      v102 = v18;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "\\Did not find any assets for assetIDs: %@, temporaryAssetID: %@\\"", buf, 0x16u);
    }

LABEL_64:

    v39 = v70;
  }
}

- (void)p_updateAsset:(id)a3 inCollectionMember:(id)a4 withMOC:(id)a5
{
  v7 = a4;
  v8 = a3;
  [v7 setAsset:v8];
  v9 = +[BULogUtilities shared];
  v10 = [v9 verboseLoggingEnabled];

  if (v10)
  {
    v11 = BKLibraryCollectionDevelopmentLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 collection];
      v13 = [v12 title];
      v14 = [v7 asset];
      v15 = [v14 title];
      v56 = 138412546;
      v57 = v13;
      v58 = 2112;
      v59 = v15;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "\\Initializing asset link for Collection: %@ Asset: %@\\"", &v56, 0x16u);
    }
  }

  v16 = [(BKLibraryCollectionManager *)self upgradeAssetSortKeys];
  v17 = [v8 permanentOrTemporaryAssetID];

  v18 = [v16 objectForKey:v17];

  v19 = [v7 sortKey];
  if (!v19)
  {
LABEL_17:
    [v7 setSortKey:v18];
    v36 = [v7 sortKey];
    if (!v36 || (v37 = v36, [v7 sortKey], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "integerValue"), v38, v37, !v39))
    {
      v42 = [v7 collection];
      v43 = [BKUserSortOrderManager nextSortKeyForCollection:v42];
      [v7 setSortKey:v43];

      v44 = +[BULogUtilities shared];
      LODWORD(v42) = [v44 verboseLoggingEnabled];

      if (v42)
      {
        v45 = BKLibraryCollectionDevelopmentLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [v7 collection];
          v47 = [v46 title];
          v48 = [v7 asset];
          v49 = [v48 title];
          v56 = 138412546;
          v57 = v47;
          v58 = 2112;
          v59 = v49;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "\\#sortKey Did not find sort key in collection member or asset, assigned next sort key - Collection: %@ Asset: %@\\"", &v56, 0x16u);
        }
      }

      v30 = [v7 collection];
      [v30 updateMaxSortKeyWithMember:v7];
      goto LABEL_32;
    }

    v40 = +[BULogUtilities shared];
    v41 = [v40 verboseLoggingEnabled];

    if (v41)
    {
      v30 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v7 collection];
        v32 = [v31 title];
        v33 = [v7 asset];
        v34 = [v33 title];
        v56 = 138412546;
        v57 = v32;
        v58 = 2112;
        v59 = v34;
        v35 = "\\#sortKey Adopted sort key from asset - Collection: %@ Asset: %@\\"";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v20 = v19;
  v21 = [v7 sortKey];
  if (![v21 integerValue])
  {

    goto LABEL_17;
  }

  if (v18 && [v18 integerValue])
  {
    v22 = [v7 sortKey];
    v23 = [v22 isEqual:v18];

    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = [v7 sortKey];
  v25 = [v7 asset];
  v26 = [v25 sortKey];
  v27 = [v24 isEqual:v26];

  if (v27)
  {
    v28 = +[BULogUtilities shared];
    v29 = [v28 verboseLoggingEnabled];

    if (v29)
    {
      v30 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v7 collection];
        v32 = [v31 title];
        v33 = [v7 asset];
        v34 = [v33 title];
        v56 = 138412546;
        v57 = v32;
        v58 = 2112;
        v59 = v34;
        v35 = "\\#sortKey Identical asset and member sort key - Collection: %@ Asset: %@\\"";
LABEL_31:
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, v35, &v56, 0x16u);
      }

LABEL_32:
    }
  }

  else
  {
    v50 = [v7 sortKey];
    v51 = [v7 asset];
    v52 = [v51 sortKey];
    v53 = [v50 isEqual:v52];

    if ((v53 & 1) == 0)
    {
      v54 = +[BULogUtilities shared];
      v55 = [v54 verboseLoggingEnabled];

      if (v55)
      {
        v30 = BKLibraryCollectionDevelopmentLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v7 collection];
          v32 = [v31 title];
          v33 = [v7 asset];
          v34 = [v33 title];
          v56 = 138412546;
          v57 = v32;
          v58 = 2112;
          v59 = v34;
          v35 = "\\#sortKey SortKey mismatch! - Collection: %@ Asset: %@\\"";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }
  }

LABEL_33:
}

- (void)updateCollectionMemberAssetLinksInMOCForUpgrade:(id)a3
{
  v4 = a3;
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  [v5 setPropertiesToFetch:&off_DE2A0];
  v6 = [NSPredicate predicateWithFormat:@"sortKey != NULL"];
  [v5 setPredicate:v6];

  v7 = [v4 executeFetchRequest:v5 error:0];
  if ([v7 count])
  {
    v23 = v4;
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
    [(BKLibraryCollectionManager *)self setUpgradeAssetSortKeys:v8];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 sortKey];
          v16 = [v15 integerValue];

          if (v16)
          {
            v17 = [v14 permanentOrTemporaryAssetID];
            if (v17)
            {
              v18 = [(BKLibraryCollectionManager *)self upgradeAssetSortKeys];
              v19 = [v14 sortKey];
              [v18 setObject:v19 forKey:v17];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v4 = v23;
  }

  v20 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v21 = [NSPredicate predicateWithFormat:@"asset == NULL"];
  [v20 setPredicate:v21];

  [v20 setFetchBatchSize:32];
  v22 = [v4 executeFetchRequest:v20 error:0];
  if ([v22 count])
  {
    [(BKLibraryCollectionManager *)self p_updateAssetInMembers:v22 moc:v4];
  }
}

- (void)clearSortKeysFromAssetsInMOCForUpgrade:(id)a3
{
  v4 = a3;
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  [v5 setPropertiesToFetch:&off_DE2B8];
  v6 = [NSPredicate predicateWithFormat:@"sortKey != NULL"];
  [v5 setPredicate:v6];

  v7 = [v4 executeFetchRequest:v5 error:0];
  if ([v7 count])
  {
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
    [(BKLibraryCollectionManager *)self setUpgradeAssetSortKeys:v8];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13) setSortKey:{0, v14}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  [(BKLibraryCollectionManager *)self setUpgradeAssetSortKeys:0, v14];
}

- (void)updateCollectionMemberAssetLinksForAssetIDs:(id)a3 temporaryAssetIDs:(id)a4 moc:(id)a5
{
  v13 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v11 = [NSPredicate predicateWithFormat:@"asset == NULL AND (assetID IN %@ OR temporaryAssetID IN %@)", v9, v8];

  [v10 setPredicate:v11];
  [v10 setFetchBatchSize:32];
  v12 = [v13 executeFetchRequest:v10 error:0];
  if ([v12 count])
  {
    [(BKLibraryCollectionManager *)self p_updateAssetInMembers:v12 moc:v13];
  }
}

- (void)updateiTunesUCollectionMembersForAssetIDs:(id)a3 temporaryAssetIDs:(id)a4 moc:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v11 = [NSPredicate predicateWithFormat:@"asset.permlink != NULL AND (assetID IN %@ OR temporaryAssetID IN %@)", v7, v8];
  [v10 setPredicate:v11];

  [v10 setFetchBatchSize:32];
  v63 = v9;
  v12 = [v9 executeFetchRequest:v10 error:0];
  if ([v12 count])
  {
    v58 = v10;
    v59 = v8;
    v60 = v7;
    v13 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v81 = [v12 count];
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "updateiTunesUCollectionMembers: processing %ld iTunesU collection members.", buf, 0xCu);
    }

    v14 = +[NSMutableDictionary dictionary];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v57 = v12;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v75 objects:v93 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v76;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v76 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v75 + 1) + 8 * i);
          v21 = [v20 collectionID];
          if (v21)
          {
            v22 = [v14 objectForKeyedSubscript:v21];

            if (!v22)
            {
              v23 = +[NSMutableArray array];
              [v14 setObject:v23 forKeyedSubscript:v21];
            }

            v24 = [v14 objectForKeyedSubscript:v21];
            [v24 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v75 objects:v93 count:16];
      }

      while (v17);
    }

    v25 = +[NSMutableArray array];
    +[NSMutableArray array];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_6C104;
    v61 = v72[3] = &unk_D7768;
    v73 = v61;
    v26 = v25;
    v74 = v26;
    v56 = v14;
    [v14 enumerateKeysAndObjectsUsingBlock:v72];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v27 = v26;
    v28 = [v27 countByEnumeratingWithState:&v68 objects:v92 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v69;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v69 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v68 + 1) + 8 * j);
          v33 = [v32 asset];
          v34 = [v33 assetID];

          if (v34)
          {
            v35 = [v32 assetID];
            v36 = [v34 isEqualToString:v35];

            if ((v36 & 1) == 0)
            {
              v37 = BKLibraryCollectionLog();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = [v32 temporaryAssetID];
                v39 = [v32 collectionID];
                *buf = 141559298;
                v81 = 1752392040;
                v82 = 2112;
                v83 = v34;
                v84 = 2160;
                v85 = 1752392040;
                v86 = 2112;
                v87 = v38;
                v88 = 2160;
                v89 = 1752392040;
                v90 = 2112;
                v91 = v39;
                _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "updateiTunesUCollectionMembers: Updated collection member. new asestID: %{mask.hash}@ tempopraryAsestID: %{mask.hash}@ collectionID: %{mask.hash}@", buf, 0x3Eu);
              }

              [v32 setAssetID:v34];
            }
          }

          v40 = [v32 asset];
          v41 = [v40 temporaryAssetID];

          if (v41)
          {
            v42 = [v32 temporaryAssetID];
            v43 = [v41 isEqualToString:v42];

            if ((v43 & 1) == 0)
            {
              v44 = BKLibraryCollectionLog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                v45 = [v32 temporaryAssetID];
                v46 = [v32 collectionID];
                *buf = 141559298;
                v81 = 1752392040;
                v82 = 2112;
                v83 = v34;
                v84 = 2160;
                v85 = 1752392040;
                v86 = 2112;
                v87 = v45;
                v88 = 2160;
                v89 = 1752392040;
                v90 = 2112;
                v91 = v46;
                _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "updateiTunesUCollectionMembers: Updated collection member. asestID: %{mask.hash}@ new tempopraryAsestID: %{mask.hash}@ collectionID: %{mask.hash}@", buf, 0x3Eu);
              }

              [v32 setTemporaryAssetID:v41];
            }
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v68 objects:v92 count:16];
      }

      while (v29);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v61;
    v47 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v65;
      do
      {
        for (k = 0; k != v48; k = k + 1)
        {
          if (*v65 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v64 + 1) + 8 * k);
          v52 = BKLibraryCollectionLog();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = [v51 assetID];
            v54 = [v51 temporaryAssetID];
            v55 = [v51 collectionID];
            *buf = 141559298;
            v81 = 1752392040;
            v82 = 2112;
            v83 = v53;
            v84 = 2160;
            v85 = 1752392040;
            v86 = 2112;
            v87 = v54;
            v88 = 2160;
            v89 = 1752392040;
            v90 = 2112;
            v91 = v55;
            _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "updateiTunesUCollectionMembers: Deleted collection member. asestID: %{mask.hash}@ tempopraryAsestID: %{mask.hash}@ collectionID: %{mask.hash}@", buf, 0x3Eu);
          }

          [v63 deleteObject:v51];
        }

        v48 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
      }

      while (v48);
    }

    v8 = v59;
    v7 = v60;
    v12 = v57;
    v10 = v58;
  }
}

- (void)fixCollectionMemberAssetLinks
{
  v3 = [(BKLibraryCollectionManager *)self libraryManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6C5E8;
  v4[3] = &unk_D56B8;
  v4[4] = self;
  [v3 performBlockOnCollectionsWorkerQueueAndWait:v4];
}

- (void)fixPDFCollectionIfNeeded
{
  v3 = [(BKLibraryCollectionManager *)self libraryManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6C8B8;
  v4[3] = &unk_D56B8;
  v4[4] = self;
  [v3 performBlockOnCollectionsWorkerQueue:v4];
}

- (void)_addMemberWithAsset:(id)a3 toCollection:(id)a4 moc:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 sortKey];
  if (![v11 integerValue])
  {

    v11 = 0;
  }

  v12 = [(BKLibraryCollectionManager *)self upgradeAssetSortKeys];

  if (v12)
  {
    v13 = [v8 isContainer];
    if (!v11)
    {
      if (v13)
      {
        v28 = v10;
        v29 = v9;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = [v8 purchasedAndLocalSeriesItems];
        v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          v11 = 0;
          v17 = *v31;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v30 + 1) + 8 * i);
              v20 = [(BKLibraryCollectionManager *)self upgradeAssetSortKeys];
              v21 = [v19 assetID];
              v22 = [v20 objectForKey:v21];

              v23 = [v22 integerValue];
              if (v23 > [v11 integerValue])
              {
                v24 = v22;

                v11 = v24;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v16);
        }

        else
        {
          v11 = 0;
        }

        v10 = v28;
        v9 = v29;
      }
    }
  }

  v25 = [v8 assetID];
  v26 = [v8 temporaryAssetID];
  v27 = [v9 addCollectionMemberAvoidingDupesWithAsset:v8 assetID:v25 temporaryAssetID:v26 sortKey:v11 forceToTop:0];
}

- (void)resetCollections
{
  v2 = [(BKLibraryCollectionManager *)self coalescedResetAllCollections];
  [v2 signalWithCompletion:&stru_D7788];
}

- (void)resetCollectionsForAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryCollectionManager *)self libraryManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6D114;
  v11[3] = &unk_D5B30;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlockOnCollectionsWorkerQueue:v11];
}

- (void)processGatheredChangedAssetsCollections:(id)a3
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_6D1F8;
  v9 = &unk_D5420;
  v10 = self;
  v11 = a3;
  v4 = v11;
  os_unfair_lock_lock_with_options();
  sub_6D1F8(&v6);
  os_unfair_lock_unlock(&self->_accessLock);
  v5 = [(BKLibraryCollectionManager *)self coalescedResetChangedCollections:v6];
  [v5 signalWithCompletion:&stru_D77A8];
}

- (id)gatherChangedAssetsCollectionsWithLibraryMoc:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@ AND (assetID != NULL OR temporaryAssetID != NULL)", objc_opt_class()];
  v5 = [NSSet setWithObjects:@"contentType", @"state", @"isSample", @"localOnlySeriesItemsParent", @"purchasedAndLocalParent", @"purchasedAndLocalSeriesItems", @"path", 0];
  v6 = [v3 updatedObjects];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_6D574;
  v23[3] = &unk_D77D0;
  v7 = v5;
  v24 = v7;
  v8 = [v6 objectsPassingTest:v23];

  v9 = +[NSMutableSet set];
  v10 = [v3 insertedObjects];

  [v9 unionSet:v10];
  [v9 unionSet:v8];
  v22 = v4;
  v11 = [v9 filteredSetUsingPredicate:v4];
  v12 = [v11 allObjects];
  v13 = [v12 valueForKey:@"assetID"];
  v14 = [v13 bu_arrayByRemovingNSNulls];
  v15 = [NSSet setWithArray:v14];

  v16 = [v12 valueForKey:@"temporaryAssetID"];
  v17 = [v16 bu_arrayByRemovingNSNulls];
  v18 = [NSSet setWithArray:v17];

  v19 = [v15 setByAddingObjectsFromSet:v18];
  v20 = BKLibraryLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_91C20(v19);
  }

  return v19;
}

- (void)_performResetCollectionsInMoc:(id)a3 changeSet:(id)a4 completion:(id)a5
{
  v186 = a3;
  v147 = a4;
  v146 = a5;
  kdebug_trace();
  v7 = BKLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v147 count]);
    *buf = 138412290;
    v222 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "#resetCollections: start for changeSet of size %@", buf, 0xCu);
  }

  v9 = +[BKCollection predicateForAllDefaultCollections];
  v10 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
  v144 = v9;
  [v10 setPredicate:v9];
  v143 = v10;
  [v186 executeFetchRequest:v10 error:0];
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  obj = v220 = 0u;
  v11 = [obj countByEnumeratingWithState:&v217 objects:v241 count:16];
  if (!v11)
  {
    v164 = 0;
    v165 = 0;
    v170 = 0;
    v152 = 0;
    v153 = 0;
    v163 = 0;
    goto LABEL_26;
  }

  v12 = v11;
  v164 = 0;
  v165 = 0;
  v170 = 0;
  v152 = 0;
  v153 = 0;
  v163 = 0;
  v13 = *v218;
  v14 = kBKCollectionDefaultAll;
  v15 = kBKCollectionDefaultIDBooks;
  v16 = kBKCollectionDefaultIDPDFs;
  v180 = kBKCollectionDefaultIDAudiobooks;
  v177 = kBKCollectionDefaultIDDownloaded;
  v174 = kBKCollectionDefaultIDSamples;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v218 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v217 + 1) + 8 * i);
      if (([v18 isDeleted] & 1) == 0)
      {
        v19 = [v18 collectionID];
        if ([v19 isEqualToString:v14])
        {
          v21 = v164;
          v20 = v165;
          v164 = v18;
          goto LABEL_20;
        }

        if ([v19 isEqualToString:v15])
        {
          v21 = v163;
          v20 = v165;
          v163 = v18;
          goto LABEL_20;
        }

        if ([v19 isEqualToString:v16])
        {
          v21 = v153;
          v20 = v165;
          v153 = v18;
          goto LABEL_20;
        }

        if ([v19 isEqualToString:v180])
        {
          v21 = v152;
          v20 = v165;
          v152 = v18;
          goto LABEL_20;
        }

        if ([v19 isEqualToString:v177])
        {
          v21 = v170;
          v20 = v165;
          v170 = v18;
          goto LABEL_20;
        }

        v21 = v165;
        v20 = v18;
        if ([v19 isEqualToString:v174])
        {
LABEL_20:
          v22 = v18;

          v165 = v20;
        }
      }
    }

    v12 = [obj countByEnumeratingWithState:&v217 objects:v241 count:16];
  }

  while (v12);
LABEL_26:

  v23 = v147;
  v24 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  if ([v147 count])
  {
    v25 = [(BKLibraryCollectionManager *)self libraryManager];
    v26 = [v25 libraryAssetsWithAssetIDsContainedInList:v147 tempAssetIDs:v147 inManagedObjectContext:v186];

    v178 = [v26 count];
  }

  else
  {
    v27 = [NSPredicate predicateWithFormat:@"assetID != NULL OR temporaryAssetID != NULL"];
    v28 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v28 setPredicate:v27];
    v178 = 32;
    [v28 setFetchBatchSize:32];
    v26 = [v186 executeFetchRequest:v28 error:0];

    v23 = v147;
  }

  v29 = BKLibraryLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v23 count];
    v31 = [v26 count];
    *buf = 134218240;
    v222 = v30;
    v223 = 2048;
    v224 = v31;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "#resetCollections: _performResetCollectionsInMoc changed: %lu toCheck: %lu", buf, 0x16u);
  }

  v145 = v26;
  if ([v26 count])
  {
    v32 = +[NSMutableArray array];
    v33 = +[NSMutableArray array];
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v161 = v26;
    v181 = [v161 countByEnumeratingWithState:&v213 objects:v240 count:16];
    if (v181)
    {
      v34 = 0;
      v171 = *v214;
      v173 = v33;
      v175 = v32;
      do
      {
        v35 = 0;
        v149 = v34;
        do
        {
          if (*v214 != v171)
          {
            objc_enumerationMutation(v161);
          }

          v36 = *(*(&v213 + 1) + 8 * v35);
          if (!(v34 % v178) && ([v32 count] || objc_msgSend(v33, "count")))
          {
            [(BKLibraryCollectionManager *)self updateCollectionMemberAssetLinksForAssetIDs:v32 temporaryAssetIDs:v33 moc:v186];
            [v32 removeAllObjects];
            [v33 removeAllObjects];
          }

          v37 = [v36 assetID];

          if (v37)
          {
            v38 = [v36 assetID];
            [v32 addObject:v38];
          }

          v39 = [v36 temporaryAssetID];

          if (v39)
          {
            v40 = [v36 temporaryAssetID];
            [v33 addObject:v40];
          }

          v41 = [v36 contentType];
          v42 = [v36 state];
          v43 = [v36 collectionMembers];
          v44 = [v43 allObjects];
          v45 = [v44 valueForKey:@"collection"];

          v46 = [v36 localOnlySeriesItemsParent];
          if (v46)
          {
            v47 = 0;
            v48 = 0;
            if (v41 == 5)
            {
              goto LABEL_63;
            }

            goto LABEL_56;
          }

          v168 = [v36 purchasedAndLocalParent];
          if (v168 || v42 == 5)
          {
            v47 = 0;
            v48 = 0;
            if (v41 == 5)
            {
              goto LABEL_62;
            }

LABEL_56:
            v49 = [v36 seriesContainer];
            v50 = [v49 seriesBooks];
            v48 = [v50 count] != &dword_0 + 1;

            if ((v47 & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

          v166 = [v36 seriesID];
          if (!v166)
          {
            goto LABEL_61;
          }

          v159 = [v36 seriesContainer];
          if (!v159)
          {
            v159 = 0;
LABEL_61:

            v48 = 0;
            v168 = 0;
LABEL_62:

            goto LABEL_63;
          }

          v157 = [v36 seriesContainer];
          v155 = [v157 purchasedAndLocalSeriesItems];
          v48 = 0;
          v168 = 0;
          if ([v155 count] && v41 != 5)
          {
            v47 = 1;
            goto LABEL_56;
          }

LABEL_57:

LABEL_58:
          if (!v46)
          {
            goto LABEL_62;
          }

LABEL_63:

          if (v164 && ([v45 containsObject:v164] & 1) == 0 && (v41 == 5 || !v48 && (objc_msgSend(v36, "isStoreItem") & 1) == 0))
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v36 toCollection:v164 moc:v186];
          }

          if (v170 && [v36 shouldBeInDownloadedCollection] && (objc_msgSend(v45, "containsObject:", v170) & 1) == 0)
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v36 toCollection:v170 moc:v186];
          }

          if (v165 && [v36 shouldBeInMySamplesCollection] && (objc_msgSend(v45, "containsObject:", v165) & 1) == 0)
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v36 toCollection:v165 moc:v186];
            v51 = +[BULogUtilities shared];
            v52 = [v51 verboseLoggingEnabled];

            if (v52)
            {
              v53 = BKLibraryLog();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v222 = v36;
                _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "\\Adding Asset to sample collection:%@\\"", buf, 0xCu);
              }
            }

            v54 = [v36 storeID];

            if (v54)
            {
              v55 = [BCMutableStoreItem alloc];
              v56 = [v36 storeID];
              v57 = [v55 initWithStoreID:v56];

              v58 = +[BCCloudAssetManager sharedManager];
              v59 = [v58 storeAssetManager];

              v212[0] = _NSConcreteStackBlock;
              v212[1] = 3221225472;
              v212[2] = sub_6EBB4;
              v212[3] = &unk_D77F8;
              v212[4] = v36;
              [v59 addStoreItem:v57 completion:v212];
            }
          }

          if ([v36 state] == 2)
          {
            v60 = [BKAssetUtilities isAudiobookTrackContentType:v41]^ 1;
          }

          else
          {
            v60 = 1;
          }

          objc_opt_class();
          v61 = [v36 seriesBooks];
          v62 = [v61 anyObject];
          v63 = BUDynamicCast();

          v64 = [v63 isStoreAudiobook];
          v65 = [v64 BOOLValue];

          if (v163 && (v41 <= 4 && ((1 << v41) & 0x16) != 0 || !((v41 != 5) | v65 & 1)) && (([v45 containsObject:v163] | v48) & 1) == 0 && (v66 = v163, !objc_msgSend(v36, "isStoreItem")) || v153 && v41 == 3 && (v66 = v153, !objc_msgSend(v45, "containsObject:", v153)) || v152 && (v41 != 6 ? (v67 = v60) : (v67 = 0), (v67 != 1 || !((v41 != 5) | (v65 ^ 1) & 1)) && ((objc_msgSend(v45, "containsObject:", v152) | v48) & 1) == 0 && (objc_msgSend(v36, "isStoreItem") & 1) == 0 && (v66 = v152, (objc_msgSend(v36, "isSample") & 1) == 0)))
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v36 toCollection:v66 moc:v186];
          }

          v35 = v35 + 1;
          ++v34;
          v32 = v175;
          v33 = v173;
        }

        while (v181 != v35);
        v34 = v181 + v149;
        v181 = [v161 countByEnumeratingWithState:&v213 objects:v240 count:16];
      }

      while (v181);
    }

    if ([v32 count] || objc_msgSend(v33, "count"))
    {
      [(BKLibraryCollectionManager *)self updateCollectionMemberAssetLinksForAssetIDs:v32 temporaryAssetIDs:v33 moc:v186];
      [(BKLibraryCollectionManager *)self updateiTunesUCollectionMembersForAssetIDs:v32 temporaryAssetIDs:v33 moc:v186];
    }

    v26 = v145;
    v24 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  }

  if (v170)
  {
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v68 = v26;
    v69 = [v68 countByEnumeratingWithState:&v208 objects:v239 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v209;
      v182 = *v209;
      do
      {
        for (j = 0; j != v70; j = j + 1)
        {
          if (*v209 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = *(*(&v208 + 1) + 8 * j);
          v74 = [v73 collectionMembers];
          v75 = [v74 allObjects];
          v76 = [v75 valueForKey:@"collection"];

          if ([v73 shouldBeInDownloadedCollection] && (objc_msgSend(v76, "containsObject:", v170) & 1) == 0)
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v73 toCollection:v170 moc:v186];
          }

          if (([v73 shouldBeInDownloadedCollection] & 1) == 0 && objc_msgSend(v76, "containsObject:", v170))
          {
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v77 = [v73 collectionMembers];
            v78 = [v77 countByEnumeratingWithState:&v204 objects:v238 count:16];
            if (v78)
            {
              v79 = v78;
              v80 = *v205;
              while (2)
              {
                for (k = 0; k != v79; k = k + 1)
                {
                  if (*v205 != v80)
                  {
                    objc_enumerationMutation(v77);
                  }

                  v82 = *(*(&v204 + 1) + 8 * k);
                  v83 = [v82 collection];

                  if (v83 == v170)
                  {
                    [v186 deleteObject:v82];
                    goto LABEL_132;
                  }
                }

                v79 = [v77 countByEnumeratingWithState:&v204 objects:v238 count:16];
                if (v79)
                {
                  continue;
                }

                break;
              }
            }

LABEL_132:

            v71 = v182;
          }
        }

        v70 = [v68 countByEnumeratingWithState:&v208 objects:v239 count:16];
      }

      while (v70);
    }

    v24 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  }

  v84 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v85 = [v24[371] predicateWithFormat:@"collection == NULL"];
  [v84 setPredicate:v85];

  [v84 setFetchBatchSize:32];
  v142 = v84;
  v86 = [v186 executeFetchRequest:v84 error:0];
  if ([v86 count])
  {
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v87 = v86;
    v88 = [v87 countByEnumeratingWithState:&v200 objects:v237 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v201;
      do
      {
        for (m = 0; m != v89; m = m + 1)
        {
          if (*v201 != v90)
          {
            objc_enumerationMutation(v87);
          }

          [v186 deleteObject:*(*(&v200 + 1) + 8 * m)];
        }

        v89 = [v87 countByEnumeratingWithState:&v200 objects:v237 count:16];
      }

      while (v89);
    }
  }

  v141 = v86;
  v158 = kBKCollectionDefaultIDAudiobooks;
  v160 = kBKCollectionDefaultIDBooks;
  v92 = [v24[371] predicateWithFormat:@"(collection.collectionID == %@ OR collection.collectionID == %@ OR collection.collectionID == %@) AND asset.seriesID != NULL AND asset.contentType != %@ AND (asset.state == %@ OR asset.purchasedAndLocalParent != nil)", kBKCollectionDefaultAll, kBKCollectionDefaultIDBooks, kBKCollectionDefaultIDAudiobooks, &off_DE180, &off_DE180];
  v93 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v140 = v92;
  [v93 setPredicate:v92];
  v139 = v93;
  v94 = [v186 executeFetchRequest:v93 error:0];
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v95 = v94;
  v96 = [v95 countByEnumeratingWithState:&v196 objects:v236 count:16];
  v148 = v95;
  if (v96)
  {
    v97 = v96;
    v98 = *v197;
    do
    {
      v99 = 0;
      do
      {
        if (*v197 != v98)
        {
          objc_enumerationMutation(v95);
        }

        v100 = *(*(&v196 + 1) + 8 * v99);
        v101 = [v100 asset];
        v102 = [v101 seriesContainer];
        v103 = [v102 seriesBooks];
        v104 = [v103 count];

        if (v104 != &dword_0 + 1)
        {
          v105 = [v101 localOnlySeriesItemsParent];
          if (v105 || ([v101 purchasedAndLocalParent], (v105 = objc_claimAutoreleasedReturnValue()) != 0))
          {

LABEL_154:
            [v186 deleteObject:v100];
            goto LABEL_155;
          }

          v106 = [v101 seriesID];
          if (v106)
          {
            v107 = v106;
            v108 = [v101 seriesContainer];
            if (v108)
            {
              v109 = [v101 seriesContainer];
              v110 = [v109 purchasedAndLocalSeriesItems];
              v111 = [v110 count];

              v95 = v148;
              if (v111)
              {
                goto LABEL_154;
              }
            }

            else
            {
            }
          }
        }

LABEL_155:

        v99 = v99 + 1;
      }

      while (v97 != v99);
      v112 = [v95 countByEnumeratingWithState:&v196 objects:v236 count:16];
      v97 = v112;
    }

    while (v112);
  }

  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v234[0] = v160;
  v234[1] = v158;
  v156 = kBKCollectionDefaultIDPDFs;
  v234[2] = kBKCollectionDefaultIDPDFs;
  v150 = [NSArray arrayWithObjects:v234 count:3];
  v162 = [v150 countByEnumeratingWithState:&v192 objects:v235 count:16];
  if (!v162)
  {
    goto LABEL_190;
  }

  v154 = *v193;
  while (2)
  {
    v113 = 0;
    while (2)
    {
      if (*v193 != v154)
      {
        objc_enumerationMutation(v150);
      }

      v169 = v113;
      v114 = *(*(&v192 + 1) + 8 * v113);
      v115 = [v114 isEqualToString:v160];
      v185 = [v114 isEqualToString:v158];
      v172 = [v114 isEqualToString:v156];
      v116 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
      v183 = v114;
      v117 = [NSPredicate predicateWithFormat:@"collection.collectionID == %@", v114];
      [v116 setPredicate:v117];

      v167 = v116;
      v118 = [v186 executeFetchRequest:v116 error:0];
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v191 = 0u;
      v119 = v118;
      v120 = [v119 countByEnumeratingWithState:&v188 objects:v233 count:16];
      if (v120)
      {
        v121 = v120;
        v122 = *v189;
        v179 = v115;
        v176 = *v189;
        do
        {
          for (n = 0; n != v121; n = n + 1)
          {
            if (*v189 != v122)
            {
              objc_enumerationMutation(v119);
            }

            v124 = *(*(&v188 + 1) + 8 * n);
            v125 = [v124 asset];
            v126 = v125;
            if (v125)
            {
              if (v115)
              {
                if (([v125 isAudiobook] & 1) == 0 && objc_msgSend(v126, "contentType") != 3)
                {
                  goto LABEL_186;
                }
              }

              else if (v185)
              {
                if (([v125 isBook] & 1) == 0)
                {
                  goto LABEL_186;
                }
              }

              else if (!v172 || [v125 contentType] == 3)
              {
                goto LABEL_186;
              }

              v127 = BKLibraryCollectionLog();
              if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
              {
                v128 = [v126 title];
                v129 = [v126 assetID];
                v130 = [v126 isBook];
                v131 = [v126 isAudiobook];
                v132 = [v126 contentType];
                *buf = 138413570;
                v222 = v128;
                v223 = 2112;
                v224 = v183;
                v225 = 2112;
                v226 = v129;
                v227 = 1024;
                v228 = v130;
                v229 = 1024;
                v230 = v131;
                v231 = 1024;
                v232 = v132;
                _os_log_impl(&dword_0, v127, OS_LOG_TYPE_DEFAULT, "Removing '%@' from %@: id %@, isBook %d, isAudiobook %d, contentType %d ", buf, 0x32u);

                v115 = v179;
                v122 = v176;
              }

              [v186 deleteObject:v124];
            }

LABEL_186:
          }

          v121 = [v119 countByEnumeratingWithState:&v188 objects:v233 count:16];
        }

        while (v121);
      }

      v113 = v169 + 1;
      if ((v169 + 1) != v162)
      {
        continue;
      }

      break;
    }

    v162 = [v150 countByEnumeratingWithState:&v192 objects:v235 count:16];
    if (v162)
    {
      continue;
    }

    break;
  }

LABEL_190:

  if ([v186 hasChanges])
  {
    v187 = 0;
    [v186 save:&v187];
    v133 = v187;
    if (v133)
    {
      v134 = BKLibraryLog();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        sub_91C98();
      }
    }
  }

  v135 = BKLibraryLog();
  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
  {
    v136 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v147 count]);
    *buf = 138412290;
    v222 = v136;
    _os_log_impl(&dword_0, v135, OS_LOG_TYPE_DEFAULT, "#resetCollections: done for changeSet of size %@", buf, 0xCu);
  }

  v137 = objc_retainBlock(v146);
  v138 = v137;
  if (v137)
  {
    (*(v137 + 2))(v137);
  }

  kdebug_trace();
}

- (id)_defaultManagerAssetsForDefaultCollectionWithID:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = [BKCollection contentTypesForDefaultCollectionWithID:a3];
  if (v6)
  {
    v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v7 setReturnsObjectsAsFaults:0];
    [v7 setFetchBatchSize:32];
    v8 = [BKLibraryManager predicateForContentTypes:v6];
    [v7 setPredicate:v8];

    v13 = 0;
    v9 = [v5 executeFetchRequest:v7 error:&v13];
    v10 = v13;
    if (!v9)
    {
      v11 = BKLibraryCollectionLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_91D88();
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end