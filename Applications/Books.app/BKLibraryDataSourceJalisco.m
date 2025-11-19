@interface BKLibraryDataSourceJalisco
+ (BOOL)isShowPurchasesEnabled;
+ (void)initialize;
+ (void)setShowPurchasesEnabled:(BOOL)a3;
- (BKLibraryDataSourceJalisco)initWithIdentifier:(id)a3;
- (BKLibraryDataSourcePlistWriting)plistWriter;
- (BKLibraryManager)libraryManager;
- (NSString)description;
- (id)_bookletItemForStoreID:(id)a3 moc:(id)a4;
- (id)_bookletItemsForStoreIDSet:(id)a3 moc:(id)a4 dedupe:(BOOL)a5;
- (id)_jaliscoAssetsForStoreIDs:(id)a3 moc:(id)a4 dedupe:(BOOL)a5;
- (id)_serverItemForStoreID:(id)a3 moc:(id)a4;
- (id)_serverItemsForStoreIDSet:(id)a3 moc:(id)a4 dedupe:(BOOL)a5;
- (id)_supplementalAssetForStoreID:(id)a3;
- (id)_supplementalAssetFromServerBookletItem:(id)a3;
- (id)_supplementalAssetsForBookletStoreIDs:(id)a3 moc:(id)a4 dedupe:(BOOL)a5;
- (void)_processLibraryAssetChanges:(id)a3 bookletItems:(BOOL)a4;
- (void)_updateProcessingAuthenticationState;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)beginAuthentication:(id)a3;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)clientDetectedPredicateChange:(id)a3;
- (void)clientDetectedStoreChange:(id)a3;
- (void)dealloc;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)downloadQueue:(id)a3 purchasedDidCompleteWithResponse:(id)a4;
- (void)fetchAssetIDsWithCompletion:(id)a3;
- (void)fetchAssetIDsWithPredicate:(id)a3 bookletPredicate:(id)a4 completion:(id)a5;
- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4;
- (void)fetchReadyPurchaseItemStoreIDs:(id)a3 completion:(id)a4;
- (void)finalizeAuthentication:(id)a3;
- (void)hiddenAssetStoreIDsWithCompletion:(id)a3;
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
- (void)managedObjectBackgroundMonitor:(id)a3 fetchNotify:(id)a4;
- (void)mostRecentPurchaseDate:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reloadPurchaseItemStoreIDs:(id)a3 completion:(id)a4;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
- (void)updatePurchaseItemsWithCompletion:(id)a3;
@end

@implementation BKLibraryDataSourceJalisco

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v5 = [[NSMutableDictionary alloc] initWithCapacity:1];
    v2 = [NSNumber numberWithBool:1];
    [v5 setObject:v2 forKey:@"BKShowAllPurchases"];

    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 registerDefaults:v5];

    v4 = dispatch_get_global_queue(-2, 0);
    dispatch_async(v4, &stru_100A0B710);
  }
}

- (BKLibraryDataSourceJalisco)initWithIdentifier:(id)a3
{
  v5 = a3;
  kdebug_trace();
  v6 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[JaliscoDS] initWithIdentifier: %@", buf, 0xCu);
  }

  v18.receiver = self;
  v18.super_class = BKLibraryDataSourceJalisco;
  v7 = [(BKLibraryDataSourceJalisco *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, a3);
    v9 = [v5 stringByAppendingString:@".dispatchQueue"];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v10;

    v12 = objc_alloc_init(NSMutableArray);
    monitoredStoreIDs = v8->_monitoredStoreIDs;
    v8->_monitoredStoreIDs = v12;

    v14 = +[BKLibraryDataSourceJaliscoDAAPClientProxy sharedproxy];
    [v14 registerDataSource:v8];

    v15 = +[BLJaliscoDAAPClient sharedClient];
    [v15 addObserver:v8 forKeyPath:@"initiallyLoadingJalisco" options:0 context:off_100AD10F8];

    v16 = +[BLDownloadQueue sharedInstance];
    [v16 addObserver:v8];
  }

  kdebug_trace();

  return v8;
}

- (void)dealloc
{
  v3 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourceJalisco identifier: %@ dealloc", buf, 0xCu);
  }

  v5 = +[BKLibraryDataSourceJaliscoDAAPClientProxy sharedproxy];
  [v5 unregisterDataSource:self];

  v6 = +[BLJaliscoDAAPClient sharedClient];
  [v6 removeObserver:self forKeyPath:@"initiallyLoadingJalisco" context:off_100AD10F8];

  v7 = +[BLDownloadQueue sharedInstance];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = BKLibraryDataSourceJalisco;
  [(BKLibraryDataSourceJalisco *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_100AD10F8 == a6)
  {
    v13 = self;
    objc_sync_enter(v13);
    [(BKLibraryDataSourceJalisco *)v13 _updateProcessingAuthenticationState];
    objc_sync_exit(v13);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKLibraryDataSourceJalisco;
    [(BKLibraryDataSourceJalisco *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKLibraryDataSourceJalisco *)self identifier];
  v6 = [NSString stringWithFormat:@"<%@=%p id=%@ rank=%ld>", v4, self, v5, [(BKLibraryDataSourceJalisco *)self rank]];

  return v6;
}

- (void)fetchAssetIDsWithPredicate:(id)a3 bookletPredicate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E048C;
  v15[3] = &unk_100A0B738;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(dispatchQueue, v15);
}

- (void)fetchAssetIDsWithCompletion:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = +[BLJaliscoDAAPClient sharedClient];
  v6 = [v5 predicateForItems:0];

  v7 = +[BLJaliscoDAAPClient sharedClient];
  v8 = [v7 predicateForBookletItems:0];

  v9 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ [JaliscoDS] fetchAssetIDsWithCompletion: predicate %@. bookletPredicate %@", buf, 0x20u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E0C30;
  v12[3] = &unk_100A05E68;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  [(BKLibraryDataSourceJalisco *)self fetchAssetIDsWithPredicate:v6 bookletPredicate:v8 completion:v12];
}

- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0E4C;
  block[3] = &unk_100A049A0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
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

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 1, 0);
    v5 = v6;
  }
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 storeID];
  v12 = [v10 assetID];
  v13 = [v10 title];
  v14 = [v10 storePlaylistID];
  v15 = [v10 isSupplementalContent];

  dispatchQueue = self->_dispatchQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001E1778;
  v23[3] = &unk_100A05060;
  v23[4] = self;
  v24 = v12;
  v30 = v15;
  v25 = v13;
  v26 = v11;
  v27 = v14;
  v28 = v8;
  v29 = v9;
  v17 = v9;
  v18 = v8;
  v19 = v14;
  v20 = v11;
  v21 = v13;
  v22 = v12;
  dispatch_async(dispatchQueue, v23);
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 storeID];
  v9 = [v7 assetID];
  v10 = [v7 title];
  v11 = [v7 isSupplementalContent];

  v12 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412802;
    v25 = v13;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ assetForLibraryAsset: (assetID:%@, title:%@)", buf, 0x20u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E2454;
  block[3] = &unk_100A0A388;
  v23 = v11;
  v19 = v8;
  v20 = self;
  v21 = v10;
  v22 = v6;
  v15 = v10;
  v16 = v6;
  v17 = v8;
  dispatch_async(dispatchQueue, block);
}

- (void)mostRecentPurchaseDate:(id)a3
{
  v4 = a3;
  +[BCStopWatch stopwatch];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E28C8;
  v7[3] = &unk_100A05E40;
  v8 = v7[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [(BKLibraryDataSourceJalisco *)self fetchAssetIDsWithCompletion:v7];
}

- (void)hiddenAssetStoreIDsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[BLJaliscoDAAPClient sharedClient];
  [v4 fetchAllHiddenItemStoreIDsWithCompletion:v3];
}

- (void)downloadQueue:(id)a3 purchasedDidCompleteWithResponse:(id)a4
{
  v5 = a4;
  v6 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412546;
    v22 = v7;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourceJalisco %@ purchasedDidCompleteWithResponse: %@", buf, 0x16u);
  }

  v8 = +[BLJaliscoDAAPClient sharedClient];
  v9 = [v8 newManagedObjectContext];

  v10 = [v5 storeID];
  v11 = [v10 stringValue];

  v12 = [v5 purchaseParameters];
  if ([v11 length])
  {
    v13 = +[BLJaliscoDAAPClient sharedClient];
    v14 = [v13 fetchRequestForStoreID:v11];
  }

  else
  {
    if (![v12 length])
    {
      v15 = 0;
      goto LABEL_14;
    }

    v13 = +[BLJaliscoDAAPClient sharedClient];
    v14 = [v13 fetchRequestForBuyParameters:v12];
  }

  v15 = v14;

  if (!v15)
  {
LABEL_14:
    v17 = 0;
    v16 = 0;
    goto LABEL_15;
  }

  v20 = 0;
  v16 = [v9 executeFetchRequest:v15 error:&v20];
  v17 = v20;
  if (![v16 count])
  {
    v18 = +[BDSJaliscoDAAPClient sharedClient];
    [v18 updatePolitely:0 reason:13 completion:&stru_100A0B758];

    if (v17)
    {
      v19 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10079584C();
      }
    }
  }

LABEL_15:
}

- (id)_serverItemForStoreID:(id)a3 moc:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BLJaliscoDAAPClient sharedClient];
  v8 = [v7 fetchRequestForStoreID:v6];

  v12 = 0;
  v9 = [v5 executeFetchRequest:v8 error:&v12];

  v10 = [v9 firstObject];

  return v10;
}

- (id)_bookletItemForStoreID:(id)a3 moc:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BLJaliscoDAAPClient sharedClient];
  v8 = [NSSet setWithObject:v6];

  v9 = [v7 fetchRequestForBookletItems:v8];

  v13 = 0;
  v10 = [v5 executeFetchRequest:v9 error:&v13];

  v11 = [v10 firstObject];

  return v11;
}

- (id)_serverItemsForStoreIDSet:(id)a3 moc:(id)a4 dedupe:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = +[BLJaliscoDAAPClient sharedClient];
  v10 = [v9 fetchRequestForStoreIDs:v8];

  v14 = 0;
  v11 = [v7 executeFetchRequest:v10 error:&v14];

  if (v5)
  {
    v12 = [v11 bu_arrayByRemovingItemsWithDuplicateValuesForKey:@"storeID"];

    v11 = v12;
  }

  return v11;
}

- (id)_bookletItemsForStoreIDSet:(id)a3 moc:(id)a4 dedupe:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = +[BLJaliscoDAAPClient sharedClient];
  v10 = [v9 fetchRequestForBookletItems:v8];

  v14 = 0;
  v11 = [v7 executeFetchRequest:v10 error:&v14];

  if (v5)
  {
    v12 = [v11 bu_arrayByRemovingItemsWithDuplicateValuesForKey:@"storeID"];

    v11 = v12;
  }

  return v11;
}

- (id)_jaliscoAssetsForStoreIDs:(id)a3 moc:(id)a4 dedupe:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = [NSSet setWithArray:v8];
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v12 = [(BKLibraryDataSourceJalisco *)self _serverItemsForStoreIDSet:v10 moc:v9 dedupe:v5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001E3470;
    v15[3] = &unk_100A0B780;
    v13 = v11;
    v16 = v13;
    v17 = self;
    [v12 enumerateObjectsUsingBlock:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_supplementalAssetsForBookletStoreIDs:(id)a3 moc:(id)a4 dedupe:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = [NSSet setWithArray:v8];
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v12 = [(BKLibraryDataSourceJalisco *)self _bookletItemsForStoreIDSet:v10 moc:v9 dedupe:v5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001E3644;
    v15[3] = &unk_100A0B7A8;
    v13 = v11;
    v16 = v13;
    v17 = self;
    [v12 enumerateObjectsUsingBlock:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_supplementalAssetFromServerBookletItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 parentItem];
    v6 = [(BKLibraryDataSourceJalisco *)self identifier];
    v7 = [BKJaliscoAsset newAssetFromServerItem:v5 dataSourceIdentifier:v6];

    v8 = [BLJaliscoBookletItem itemWithServerBookletItem:v4];

    v9 = [(BKLibraryDataSourceJalisco *)self identifier];
    v10 = [BKLibrarySupplementalAsset newAssetFromJaliscoBookletItem:v8 parentAsset:v7 dataSourceIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_supplementalAssetForStoreID:(id)a3
{
  v4 = a3;
  v5 = +[BLJaliscoDAAPClient sharedClient];
  v6 = [v5 newManagedObjectContext];

  v7 = [(BKLibraryDataSourceJalisco *)self _bookletItemForStoreID:v4 moc:v6];

  v8 = [(BKLibraryDataSourceJalisco *)self _supplementalAssetFromServerBookletItem:v7];

  return v8;
}

- (void)beginAuthentication:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:BKLibraryAuthenticationServiceStore])
  {
    v4 = self;
    objc_sync_enter(v4);
    v4->_requestedAuthentication = 1;
    [(BKLibraryDataSourceJalisco *)v4 _updateProcessingAuthenticationState];
    objc_sync_exit(v4);
  }
}

- (void)finalizeAuthentication:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:BKLibraryAuthenticationServiceStore])
  {
    v4 = self;
    objc_sync_enter(v4);
    v4->_requestedAuthentication = 0;
    [(BKLibraryDataSourceJalisco *)v4 _updateProcessingAuthenticationState];
    objc_sync_exit(v4);
  }
}

- (void)_updateProcessingAuthenticationState
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E39C4;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E3B00;
  block[3] = &unk_100A03A30;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)managedObjectBackgroundMonitor:(id)a3 fetchNotify:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ managedObjectBackgroundMonitor called with monitor: %@", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E3E8C;
  block[3] = &unk_100A03A30;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_processLibraryAssetChanges:(id)a3 bookletItems:(BOOL)a4
{
  v64 = a4;
  v5 = a3;
  v6 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412546;
    v75 = v7;
    v76 = 2112;
    v77 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ _processLibraryAssetChanges %@", buf, 0x16u);
  }

  v8 = [v5 deletedObjects];
  if ([v8 count])
  {
    v9 = [v5 deletedObjects];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 addedObjects];
  if ([v10 count])
  {
    v11 = [v5 addedObjects];
  }

  else
  {
    v11 = 0;
  }

  v12 = +[BLJaliscoDAAPClient sharedClient];
  v13 = [v12 newManagedObjectContext];
  v14 = [NSMutableSet setWithArray:v9];
  [v14 addObjectsFromArray:v11];
  v61 = v14;
  if (v64)
  {
    [(BKLibraryDataSourceJalisco *)self _bookletItemsForStoreIDSet:v14 moc:v13 dedupe:0];
  }

  else
  {
    [(BKLibraryDataSourceJalisco *)self _serverItemsForStoreIDSet:v14 moc:v13 dedupe:0];
  }
  v15 = ;
  v16 = [v15 valueForKey:@"storeID"];
  v63 = [NSCountedSet setWithArray:v16];

  v62 = v13;
  v60 = v5;
  if ([v9 count])
  {
    v17 = objc_opt_new();
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_1001E4D54;
    v69[3] = &unk_100A0B7D0;
    v70 = v63;
    v73 = v64;
    v18 = v17;
    v71 = v18;
    v72 = self;
    [v9 enumerateObjectsUsingBlock:v69];
    v19 = [v18 valueForKey:@"storeID"];
    v20 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [(BKLibraryDataSourceJalisco *)self identifier];
      v21 = v12;
      v23 = v22 = v11;
      v24 = v9;
      v25 = [v18 count];
      v26 = [v19 componentsJoinedByString:{@", "}];
      *buf = 138412802;
      v75 = v23;
      v76 = 2048;
      v77 = v25;
      v9 = v24;
      v13 = v62;
      v78 = 2112;
      v79 = v26;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ Telling library to remove %ld assets:[%@]", buf, 0x20u);

      v11 = v22;
      v12 = v21;
      v5 = v60;
    }

    v27 = [(BKLibraryDataSourceJalisco *)self libraryManager];
    [v27 libraryDataSource:self removedAssets:v18];
  }

  if ([v11 count])
  {
    v59 = v11;
    v28 = [NSCountedSet setWithArray:v11];
    v29 = objc_opt_new();
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1001E4E48;
    v65[3] = &unk_100A0B7F8;
    v66 = v63;
    v30 = v28;
    v67 = v30;
    v31 = v29;
    v68 = v31;
    [v30 enumerateObjectsUsingBlock:v65];
    if (v64)
    {
      v32 = [(BKLibraryDataSourceJalisco *)self _supplementalAssetsForBookletStoreIDs:v31 moc:v13 dedupe:1];
      v33 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(BKLibraryDataSourceJalisco *)self identifier];
        v35 = v9;
        v36 = [v32 count];
        [v31 componentsJoinedByString:{@", "}];
        v38 = v37 = v12;
        *buf = 138412802;
        v75 = v34;
        v76 = 2048;
        v77 = v36;
        v9 = v35;
        v13 = v62;
        v78 = 2112;
        v79 = v38;
        v39 = "%@ Telling library we added %ld booklet assets, storeIDs=[%@]";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v39, buf, 0x20u);

        v12 = v37;
        v5 = v60;
      }
    }

    else
    {
      v32 = [(BKLibraryDataSourceJalisco *)self _jaliscoAssetsForStoreIDs:v31 moc:v13 dedupe:1];
      v33 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(BKLibraryDataSourceJalisco *)self identifier];
        v40 = v9;
        v41 = [v32 count];
        [v31 componentsJoinedByString:{@", "}];
        v38 = v37 = v12;
        *buf = 138412802;
        v75 = v34;
        v76 = 2048;
        v77 = v41;
        v9 = v40;
        v13 = v62;
        v78 = 2112;
        v79 = v38;
        v39 = "%@ Telling library we added %ld assets, storeIDs=[%@]";
        goto LABEL_22;
      }
    }

    v42 = +[BCCacheManager defaultCacheManager];
    [v42 addProductProfileIDs:v31 priority:3];

    v43 = [(BKLibraryDataSourceJalisco *)self libraryManager];
    [v43 libraryDataSource:self addedAssets:v32];

    if ([(BKLibraryDataSourceJalisco *)self shouldReloadAfterAssetAdded])
    {
      v44 = [(BKLibraryDataSourceJalisco *)self libraryManager];
      [v44 reloadDataSource:self completion:0];
    }

    v11 = v59;
  }

  v45 = [v5 updatedObjects];
  if ([v45 count])
  {
    v46 = [v5 updatedObjects];
  }

  else
  {
    v46 = 0;
  }

  if ([v46 count])
  {
    if (v64)
    {
      v47 = v9;
      v48 = [(BKLibraryDataSourceJalisco *)self _supplementalAssetsForBookletStoreIDs:v46 moc:v62 dedupe:1];
      v49 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [(BKLibraryDataSourceJalisco *)self identifier];
        v51 = [v48 count];
        [v46 componentsJoinedByString:{@", "}];
        v53 = v52 = v12;
        *buf = 138412802;
        v75 = v50;
        v76 = 2048;
        v77 = v51;
        v78 = 2112;
        v79 = v53;
        v54 = "%@ Telling library we updated %ld booklet assets, storeIDs=[%@]";
LABEL_35:
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v54, buf, 0x20u);

        v12 = v52;
        v5 = v60;
      }
    }

    else
    {
      v47 = v9;
      v48 = [(BKLibraryDataSourceJalisco *)self _jaliscoAssetsForStoreIDs:v46 moc:v62 dedupe:1];
      v49 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [(BKLibraryDataSourceJalisco *)self identifier];
        v55 = [v48 count];
        [v46 componentsJoinedByString:{@", "}];
        v53 = v52 = v12;
        *buf = 138412802;
        v75 = v50;
        v76 = 2048;
        v77 = v55;
        v78 = 2112;
        v79 = v53;
        v54 = "%@ Telling library we updated %ld assets, storeIDs=[%@]";
        goto LABEL_35;
      }
    }

    v56 = +[BCCacheManager defaultCacheManager];
    v57 = [NSSet setWithArray:v46];
    [v56 incrementVersionForIdentifiers:v57];

    v58 = [(BKLibraryDataSourceJalisco *)self libraryManager];
    [v58 libraryDataSource:self updatedAssets:v48];

    v9 = v47;
    v13 = v62;
  }
}

- (void)clientDetectedStoreChange:(id)a3
{
  v4 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ clientDetectedStoreChange triggering reload of jalisco datasource", buf, 0xCu);
  }

  v6 = [(BKLibraryDataSourceJalisco *)self libraryManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E5010;
  v7[3] = &unk_100A033C8;
  v7[4] = self;
  [v6 reloadDataSource:self completion:v7];
}

- (void)clientDetectedPredicateChange:(id)a3
{
  v4 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(BKLibraryDataSourceJalisco *)self identifier];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ clientDetectedPredicateChange triggering reload of jalisco datasource", &v7, 0xCu);
  }

  v6 = [(BKLibraryDataSourceJalisco *)self libraryManager];
  [v6 reloadDataSource:self completion:0];
}

+ (BOOL)isShowPurchasesEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKShowAllPurchases"];

  return v3;
}

+ (void)setShowPurchasesEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:v3 forKey:@"BKShowAllPurchases"];
}

- (void)fetchReadyPurchaseItemStoreIDs:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BLJaliscoDAAPClient sharedClient];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E531C;
  v9[3] = &unk_100A09D50;
  v10 = v5;
  v8 = v5;
  [v7 storeIDsWithNonEmptyPurchasedToken:v6 completion:v9];
}

- (void)updatePurchaseItemsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceJalisco *)self libraryManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E5448;
  v7[3] = &unk_100A03920;
  v8 = v4;
  v6 = v4;
  [v5 reloadDataSource:self completion:v7];
}

- (void)reloadPurchaseItemStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[BDSJaliscoDAAPClient sharedClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001E5568;
  v10[3] = &unk_100A04160;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 resetPurchasedTokenForStoreIDs:v7 completion:v10];
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

- (BKLibraryDataSourcePlistWriting)plistWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_plistWriter);

  return WeakRetained;
}

@end