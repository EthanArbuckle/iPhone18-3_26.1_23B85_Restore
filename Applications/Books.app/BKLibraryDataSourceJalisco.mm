@interface BKLibraryDataSourceJalisco
+ (BOOL)isShowPurchasesEnabled;
+ (void)initialize;
+ (void)setShowPurchasesEnabled:(BOOL)enabled;
- (BKLibraryDataSourceJalisco)initWithIdentifier:(id)identifier;
- (BKLibraryDataSourcePlistWriting)plistWriter;
- (BKLibraryManager)libraryManager;
- (NSString)description;
- (id)_bookletItemForStoreID:(id)d moc:(id)moc;
- (id)_bookletItemsForStoreIDSet:(id)set moc:(id)moc dedupe:(BOOL)dedupe;
- (id)_jaliscoAssetsForStoreIDs:(id)ds moc:(id)moc dedupe:(BOOL)dedupe;
- (id)_serverItemForStoreID:(id)d moc:(id)moc;
- (id)_serverItemsForStoreIDSet:(id)set moc:(id)moc dedupe:(BOOL)dedupe;
- (id)_supplementalAssetForStoreID:(id)d;
- (id)_supplementalAssetFromServerBookletItem:(id)item;
- (id)_supplementalAssetsForBookletStoreIDs:(id)ds moc:(id)moc dedupe:(BOOL)dedupe;
- (void)_processLibraryAssetChanges:(id)changes bookletItems:(BOOL)items;
- (void)_updateProcessingAuthenticationState;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)beginAuthentication:(id)authentication;
- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion;
- (void)clientDetectedPredicateChange:(id)change;
- (void)clientDetectedStoreChange:(id)change;
- (void)dealloc;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)downloadQueue:(id)queue purchasedDidCompleteWithResponse:(id)response;
- (void)fetchAssetIDsWithCompletion:(id)completion;
- (void)fetchAssetIDsWithPredicate:(id)predicate bookletPredicate:(id)bookletPredicate completion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion;
- (void)fetchReadyPurchaseItemStoreIDs:(id)ds completion:(id)completion;
- (void)finalizeAuthentication:(id)authentication;
- (void)hiddenAssetStoreIDsWithCompletion:(id)completion;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
- (void)managedObjectBackgroundMonitor:(id)monitor fetchNotify:(id)notify;
- (void)mostRecentPurchaseDate:(id)date;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadPurchaseItemStoreIDs:(id)ds completion:(id)completion;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
- (void)updatePurchaseItemsWithCompletion:(id)completion;
@end

@implementation BKLibraryDataSourceJalisco

+ (void)initialize
{
  if (objc_opt_class() == self)
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

- (BKLibraryDataSourceJalisco)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  kdebug_trace();
  v6 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[JaliscoDS] initWithIdentifier: %@", buf, 0xCu);
  }

  v18.receiver = self;
  v18.super_class = BKLibraryDataSourceJalisco;
  v7 = [(BKLibraryDataSourceJalisco *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, identifier);
    v9 = [identifierCopy stringByAppendingString:@".dispatchQueue"];
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
    identifier = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412290;
    v10 = identifier;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_100AD10F8 == context)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(BKLibraryDataSourceJalisco *)selfCopy _updateProcessingAuthenticationState];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKLibraryDataSourceJalisco;
    [(BKLibraryDataSourceJalisco *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(BKLibraryDataSourceJalisco *)self identifier];
  v6 = [NSString stringWithFormat:@"<%@=%p id=%@ rank=%ld>", v4, self, identifier, [(BKLibraryDataSourceJalisco *)self rank]];

  return v6;
}

- (void)fetchAssetIDsWithPredicate:(id)predicate bookletPredicate:(id)bookletPredicate completion:(id)completion
{
  predicateCopy = predicate;
  bookletPredicateCopy = bookletPredicate;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E048C;
  v15[3] = &unk_100A0B738;
  v15[4] = self;
  v16 = predicateCopy;
  v17 = bookletPredicateCopy;
  v18 = completionCopy;
  v12 = bookletPredicateCopy;
  v13 = predicateCopy;
  v14 = completionCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)fetchAssetIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  kdebug_trace();
  v5 = +[BLJaliscoDAAPClient sharedClient];
  v6 = [v5 predicateForItems:0];

  v7 = +[BLJaliscoDAAPClient sharedClient];
  v8 = [v7 predicateForBookletItems:0];

  v9 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412802;
    v15 = identifier;
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
  v13 = completionCopy;
  v11 = completionCopy;
  [(BKLibraryDataSourceJalisco *)self fetchAssetIDsWithPredicate:v6 bookletPredicate:v8 completion:v12];
}

- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  kdebug_trace();
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0E4C;
  block[3] = &unk_100A049A0;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 1, 0);
    v5 = v6;
  }
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  assetCopy = asset;
  storeID = [assetCopy storeID];
  assetID = [assetCopy assetID];
  title = [assetCopy title];
  storePlaylistID = [assetCopy storePlaylistID];
  isSupplementalContent = [assetCopy isSupplementalContent];

  dispatchQueue = self->_dispatchQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001E1778;
  v23[3] = &unk_100A05060;
  v23[4] = self;
  v24 = assetID;
  v30 = isSupplementalContent;
  v25 = title;
  v26 = storeID;
  v27 = storePlaylistID;
  v28 = optionsCopy;
  v29 = completionCopy;
  v17 = completionCopy;
  v18 = optionsCopy;
  v19 = storePlaylistID;
  v20 = storeID;
  v21 = title;
  v22 = assetID;
  dispatch_async(dispatchQueue, v23);
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  storeID = [assetCopy storeID];
  assetID = [assetCopy assetID];
  title = [assetCopy title];
  isSupplementalContent = [assetCopy isSupplementalContent];

  v12 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412802;
    v25 = identifier;
    v26 = 2112;
    v27 = assetID;
    v28 = 2112;
    v29 = title;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ assetForLibraryAsset: (assetID:%@, title:%@)", buf, 0x20u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E2454;
  block[3] = &unk_100A0A388;
  v23 = isSupplementalContent;
  v19 = storeID;
  selfCopy = self;
  v21 = title;
  v22 = completionCopy;
  v15 = title;
  v16 = completionCopy;
  v17 = storeID;
  dispatch_async(dispatchQueue, block);
}

- (void)mostRecentPurchaseDate:(id)date
{
  dateCopy = date;
  +[BCStopWatch stopwatch];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E28C8;
  v7[3] = &unk_100A05E40;
  v8 = v7[4] = self;
  v9 = dateCopy;
  v5 = dateCopy;
  v6 = v8;
  [(BKLibraryDataSourceJalisco *)self fetchAssetIDsWithCompletion:v7];
}

- (void)hiddenAssetStoreIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BLJaliscoDAAPClient sharedClient];
  [v4 fetchAllHiddenItemStoreIDsWithCompletion:completionCopy];
}

- (void)downloadQueue:(id)queue purchasedDidCompleteWithResponse:(id)response
{
  responseCopy = response;
  v6 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412546;
    v22 = identifier;
    v23 = 2112;
    v24 = responseCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourceJalisco %@ purchasedDidCompleteWithResponse: %@", buf, 0x16u);
  }

  v8 = +[BLJaliscoDAAPClient sharedClient];
  newManagedObjectContext = [v8 newManagedObjectContext];

  storeID = [responseCopy storeID];
  stringValue = [storeID stringValue];

  purchaseParameters = [responseCopy purchaseParameters];
  if ([stringValue length])
  {
    v13 = +[BLJaliscoDAAPClient sharedClient];
    v14 = [v13 fetchRequestForStoreID:stringValue];
  }

  else
  {
    if (![purchaseParameters length])
    {
      v15 = 0;
      goto LABEL_14;
    }

    v13 = +[BLJaliscoDAAPClient sharedClient];
    v14 = [v13 fetchRequestForBuyParameters:purchaseParameters];
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
  v16 = [newManagedObjectContext executeFetchRequest:v15 error:&v20];
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

- (id)_serverItemForStoreID:(id)d moc:(id)moc
{
  mocCopy = moc;
  dCopy = d;
  v7 = +[BLJaliscoDAAPClient sharedClient];
  v8 = [v7 fetchRequestForStoreID:dCopy];

  v12 = 0;
  v9 = [mocCopy executeFetchRequest:v8 error:&v12];

  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)_bookletItemForStoreID:(id)d moc:(id)moc
{
  mocCopy = moc;
  dCopy = d;
  v7 = +[BLJaliscoDAAPClient sharedClient];
  v8 = [NSSet setWithObject:dCopy];

  v9 = [v7 fetchRequestForBookletItems:v8];

  v13 = 0;
  v10 = [mocCopy executeFetchRequest:v9 error:&v13];

  firstObject = [v10 firstObject];

  return firstObject;
}

- (id)_serverItemsForStoreIDSet:(id)set moc:(id)moc dedupe:(BOOL)dedupe
{
  dedupeCopy = dedupe;
  mocCopy = moc;
  setCopy = set;
  v9 = +[BLJaliscoDAAPClient sharedClient];
  v10 = [v9 fetchRequestForStoreIDs:setCopy];

  v14 = 0;
  v11 = [mocCopy executeFetchRequest:v10 error:&v14];

  if (dedupeCopy)
  {
    v12 = [v11 bu_arrayByRemovingItemsWithDuplicateValuesForKey:@"storeID"];

    v11 = v12;
  }

  return v11;
}

- (id)_bookletItemsForStoreIDSet:(id)set moc:(id)moc dedupe:(BOOL)dedupe
{
  dedupeCopy = dedupe;
  mocCopy = moc;
  setCopy = set;
  v9 = +[BLJaliscoDAAPClient sharedClient];
  v10 = [v9 fetchRequestForBookletItems:setCopy];

  v14 = 0;
  v11 = [mocCopy executeFetchRequest:v10 error:&v14];

  if (dedupeCopy)
  {
    v12 = [v11 bu_arrayByRemovingItemsWithDuplicateValuesForKey:@"storeID"];

    v11 = v12;
  }

  return v11;
}

- (id)_jaliscoAssetsForStoreIDs:(id)ds moc:(id)moc dedupe:(BOOL)dedupe
{
  dedupeCopy = dedupe;
  dsCopy = ds;
  mocCopy = moc;
  if ([dsCopy count])
  {
    v10 = [NSSet setWithArray:dsCopy];
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v12 = [(BKLibraryDataSourceJalisco *)self _serverItemsForStoreIDSet:v10 moc:mocCopy dedupe:dedupeCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001E3470;
    v15[3] = &unk_100A0B780;
    v13 = v11;
    v16 = v13;
    selfCopy = self;
    [v12 enumerateObjectsUsingBlock:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_supplementalAssetsForBookletStoreIDs:(id)ds moc:(id)moc dedupe:(BOOL)dedupe
{
  dedupeCopy = dedupe;
  dsCopy = ds;
  mocCopy = moc;
  if ([dsCopy count])
  {
    v10 = [NSSet setWithArray:dsCopy];
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v12 = [(BKLibraryDataSourceJalisco *)self _bookletItemsForStoreIDSet:v10 moc:mocCopy dedupe:dedupeCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001E3644;
    v15[3] = &unk_100A0B7A8;
    v13 = v11;
    v16 = v13;
    selfCopy = self;
    [v12 enumerateObjectsUsingBlock:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_supplementalAssetFromServerBookletItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    parentItem = [itemCopy parentItem];
    identifier = [(BKLibraryDataSourceJalisco *)self identifier];
    v7 = [BKJaliscoAsset newAssetFromServerItem:parentItem dataSourceIdentifier:identifier];

    v8 = [BLJaliscoBookletItem itemWithServerBookletItem:itemCopy];

    identifier2 = [(BKLibraryDataSourceJalisco *)self identifier];
    v10 = [BKLibrarySupplementalAsset newAssetFromJaliscoBookletItem:v8 parentAsset:v7 dataSourceIdentifier:identifier2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_supplementalAssetForStoreID:(id)d
{
  dCopy = d;
  v5 = +[BLJaliscoDAAPClient sharedClient];
  newManagedObjectContext = [v5 newManagedObjectContext];

  v7 = [(BKLibraryDataSourceJalisco *)self _bookletItemForStoreID:dCopy moc:newManagedObjectContext];

  v8 = [(BKLibraryDataSourceJalisco *)self _supplementalAssetFromServerBookletItem:v7];

  return v8;
}

- (void)beginAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  if ([authenticationCopy isEqualToString:BKLibraryAuthenticationServiceStore])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_requestedAuthentication = 1;
    [(BKLibraryDataSourceJalisco *)selfCopy _updateProcessingAuthenticationState];
    objc_sync_exit(selfCopy);
  }
}

- (void)finalizeAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  if ([authenticationCopy isEqualToString:BKLibraryAuthenticationServiceStore])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_requestedAuthentication = 0;
    [(BKLibraryDataSourceJalisco *)selfCopy _updateProcessingAuthenticationState];
    objc_sync_exit(selfCopy);
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

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  monitorCopy = monitor;
  notifyCopy = notify;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E3B00;
  block[3] = &unk_100A03A30;
  v12 = monitorCopy;
  selfCopy = self;
  v14 = notifyCopy;
  v9 = notifyCopy;
  v10 = monitorCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)managedObjectBackgroundMonitor:(id)monitor fetchNotify:(id)notify
{
  monitorCopy = monitor;
  notifyCopy = notify;
  v8 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    identifier = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412546;
    v18 = identifier;
    v19 = 2112;
    v20 = monitorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ managedObjectBackgroundMonitor called with monitor: %@", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E3E8C;
  block[3] = &unk_100A03A30;
  v14 = monitorCopy;
  selfCopy = self;
  v16 = notifyCopy;
  v11 = notifyCopy;
  v12 = monitorCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_processLibraryAssetChanges:(id)changes bookletItems:(BOOL)items
{
  itemsCopy = items;
  changesCopy = changes;
  v6 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412546;
    v75 = identifier;
    v76 = 2112;
    v77 = changesCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ _processLibraryAssetChanges %@", buf, 0x16u);
  }

  deletedObjects = [changesCopy deletedObjects];
  if ([deletedObjects count])
  {
    deletedObjects2 = [changesCopy deletedObjects];
  }

  else
  {
    deletedObjects2 = 0;
  }

  addedObjects = [changesCopy addedObjects];
  if ([addedObjects count])
  {
    addedObjects2 = [changesCopy addedObjects];
  }

  else
  {
    addedObjects2 = 0;
  }

  v12 = +[BLJaliscoDAAPClient sharedClient];
  newManagedObjectContext = [v12 newManagedObjectContext];
  v14 = [NSMutableSet setWithArray:deletedObjects2];
  [v14 addObjectsFromArray:addedObjects2];
  v61 = v14;
  if (itemsCopy)
  {
    [(BKLibraryDataSourceJalisco *)self _bookletItemsForStoreIDSet:v14 moc:newManagedObjectContext dedupe:0];
  }

  else
  {
    [(BKLibraryDataSourceJalisco *)self _serverItemsForStoreIDSet:v14 moc:newManagedObjectContext dedupe:0];
  }
  v15 = ;
  v16 = [v15 valueForKey:@"storeID"];
  v63 = [NSCountedSet setWithArray:v16];

  v62 = newManagedObjectContext;
  v60 = changesCopy;
  if ([deletedObjects2 count])
  {
    v17 = objc_opt_new();
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_1001E4D54;
    v69[3] = &unk_100A0B7D0;
    v70 = v63;
    v73 = itemsCopy;
    v18 = v17;
    v71 = v18;
    selfCopy = self;
    [deletedObjects2 enumerateObjectsUsingBlock:v69];
    v19 = [v18 valueForKey:@"storeID"];
    v20 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [(BKLibraryDataSourceJalisco *)self identifier];
      v21 = v12;
      v23 = v22 = addedObjects2;
      v24 = deletedObjects2;
      v25 = [v18 count];
      v26 = [v19 componentsJoinedByString:{@", "}];
      *buf = 138412802;
      v75 = v23;
      v76 = 2048;
      v77 = v25;
      deletedObjects2 = v24;
      newManagedObjectContext = v62;
      v78 = 2112;
      v79 = v26;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ Telling library to remove %ld assets:[%@]", buf, 0x20u);

      addedObjects2 = v22;
      v12 = v21;
      changesCopy = v60;
    }

    libraryManager = [(BKLibraryDataSourceJalisco *)self libraryManager];
    [libraryManager libraryDataSource:self removedAssets:v18];
  }

  if ([addedObjects2 count])
  {
    v59 = addedObjects2;
    v28 = [NSCountedSet setWithArray:addedObjects2];
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
    if (itemsCopy)
    {
      v32 = [(BKLibraryDataSourceJalisco *)self _supplementalAssetsForBookletStoreIDs:v31 moc:newManagedObjectContext dedupe:1];
      v33 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [(BKLibraryDataSourceJalisco *)self identifier];
        v35 = deletedObjects2;
        v36 = [v32 count];
        [v31 componentsJoinedByString:{@", "}];
        v38 = v37 = v12;
        *buf = 138412802;
        v75 = identifier2;
        v76 = 2048;
        v77 = v36;
        deletedObjects2 = v35;
        newManagedObjectContext = v62;
        v78 = 2112;
        v79 = v38;
        v39 = "%@ Telling library we added %ld booklet assets, storeIDs=[%@]";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v39, buf, 0x20u);

        v12 = v37;
        changesCopy = v60;
      }
    }

    else
    {
      v32 = [(BKLibraryDataSourceJalisco *)self _jaliscoAssetsForStoreIDs:v31 moc:newManagedObjectContext dedupe:1];
      v33 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [(BKLibraryDataSourceJalisco *)self identifier];
        v40 = deletedObjects2;
        v41 = [v32 count];
        [v31 componentsJoinedByString:{@", "}];
        v38 = v37 = v12;
        *buf = 138412802;
        v75 = identifier2;
        v76 = 2048;
        v77 = v41;
        deletedObjects2 = v40;
        newManagedObjectContext = v62;
        v78 = 2112;
        v79 = v38;
        v39 = "%@ Telling library we added %ld assets, storeIDs=[%@]";
        goto LABEL_22;
      }
    }

    v42 = +[BCCacheManager defaultCacheManager];
    [v42 addProductProfileIDs:v31 priority:3];

    libraryManager2 = [(BKLibraryDataSourceJalisco *)self libraryManager];
    [libraryManager2 libraryDataSource:self addedAssets:v32];

    if ([(BKLibraryDataSourceJalisco *)self shouldReloadAfterAssetAdded])
    {
      libraryManager3 = [(BKLibraryDataSourceJalisco *)self libraryManager];
      [libraryManager3 reloadDataSource:self completion:0];
    }

    addedObjects2 = v59;
  }

  updatedObjects = [changesCopy updatedObjects];
  if ([updatedObjects count])
  {
    updatedObjects2 = [changesCopy updatedObjects];
  }

  else
  {
    updatedObjects2 = 0;
  }

  if ([updatedObjects2 count])
  {
    if (itemsCopy)
    {
      v47 = deletedObjects2;
      v48 = [(BKLibraryDataSourceJalisco *)self _supplementalAssetsForBookletStoreIDs:updatedObjects2 moc:v62 dedupe:1];
      v49 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [(BKLibraryDataSourceJalisco *)self identifier];
        v51 = [v48 count];
        [updatedObjects2 componentsJoinedByString:{@", "}];
        v53 = v52 = v12;
        *buf = 138412802;
        v75 = identifier3;
        v76 = 2048;
        v77 = v51;
        v78 = 2112;
        v79 = v53;
        v54 = "%@ Telling library we updated %ld booklet assets, storeIDs=[%@]";
LABEL_35:
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v54, buf, 0x20u);

        v12 = v52;
        changesCopy = v60;
      }
    }

    else
    {
      v47 = deletedObjects2;
      v48 = [(BKLibraryDataSourceJalisco *)self _jaliscoAssetsForStoreIDs:updatedObjects2 moc:v62 dedupe:1];
      v49 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [(BKLibraryDataSourceJalisco *)self identifier];
        v55 = [v48 count];
        [updatedObjects2 componentsJoinedByString:{@", "}];
        v53 = v52 = v12;
        *buf = 138412802;
        v75 = identifier3;
        v76 = 2048;
        v77 = v55;
        v78 = 2112;
        v79 = v53;
        v54 = "%@ Telling library we updated %ld assets, storeIDs=[%@]";
        goto LABEL_35;
      }
    }

    v56 = +[BCCacheManager defaultCacheManager];
    v57 = [NSSet setWithArray:updatedObjects2];
    [v56 incrementVersionForIdentifiers:v57];

    libraryManager4 = [(BKLibraryDataSourceJalisco *)self libraryManager];
    [libraryManager4 libraryDataSource:self updatedAssets:v48];

    deletedObjects2 = v47;
    newManagedObjectContext = v62;
  }
}

- (void)clientDetectedStoreChange:(id)change
{
  v4 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(BKLibraryDataSourceJalisco *)self identifier];
    *buf = 138412290;
    v9 = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ clientDetectedStoreChange triggering reload of jalisco datasource", buf, 0xCu);
  }

  libraryManager = [(BKLibraryDataSourceJalisco *)self libraryManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E5010;
  v7[3] = &unk_100A033C8;
  v7[4] = self;
  [libraryManager reloadDataSource:self completion:v7];
}

- (void)clientDetectedPredicateChange:(id)change
{
  v4 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(BKLibraryDataSourceJalisco *)self identifier];
    v7 = 138412290;
    v8 = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ clientDetectedPredicateChange triggering reload of jalisco datasource", &v7, 0xCu);
  }

  libraryManager = [(BKLibraryDataSourceJalisco *)self libraryManager];
  [libraryManager reloadDataSource:self completion:0];
}

+ (BOOL)isShowPurchasesEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKShowAllPurchases"];

  return v3;
}

+ (void)setShowPurchasesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:enabledCopy forKey:@"BKShowAllPurchases"];
}

- (void)fetchReadyPurchaseItemStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  v7 = +[BLJaliscoDAAPClient sharedClient];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E531C;
  v9[3] = &unk_100A09D50;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 storeIDsWithNonEmptyPurchasedToken:dsCopy completion:v9];
}

- (void)updatePurchaseItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  libraryManager = [(BKLibraryDataSourceJalisco *)self libraryManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E5448;
  v7[3] = &unk_100A03920;
  v8 = completionCopy;
  v6 = completionCopy;
  [libraryManager reloadDataSource:self completion:v7];
}

- (void)reloadPurchaseItemStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  v8 = +[BDSJaliscoDAAPClient sharedClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001E5568;
  v10[3] = &unk_100A04160;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 resetPurchasedTokenForStoreIDs:dsCopy completion:v10];
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