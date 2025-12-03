@interface BKBookletMigrationManager
- (BKBookletMigrationManager)initWithPurchaseItemMigrationController:(id)controller;
- (BKPurchaseItemMigrationControlling)purchaseItemMigrationController;
- (BOOL)_shouldRunDownloadFlowState:(id)state;
- (BOOL)_shouldStart;
- (id)_downloadFlowState;
- (id)_fetchOwnedAudiobookAssetIDsIncludeLocalOnly:(BOOL)only;
- (id)_loadMigrationInfos;
- (id)_migrationInfo;
- (void)_persistDownloadFlowState:(id)state;
- (void)_persistMigrationInfo:(id)info;
- (void)_privacyAcknowledgementChanged:(id)changed;
- (void)_resetEverythingIfNeeded;
- (void)_runDownloadFlowFromState:(id)state;
- (void)_setDownloadFlowStage:(unint64_t)stage;
- (void)_setDownloadFlowState:(id)state persist:(BOOL)persist;
- (void)migrateIfNeeded;
- (void)wq_checkGDPRPrivacyAcknowledgementBeforeForceReloadPurchaseItems;
- (void)wq_runDownloadFlowStageForceReloadPurchaseItems;
- (void)wq_runDownloadFlowStageInitial;
- (void)wq_runDownloadFlowStageQuery;
- (void)wq_runDownloadFlowStageQueued;
- (void)wq_runDownloadFlowStageWait;
- (void)wq_runDownloadFlowStageWaitGDPRPrivacyAcknowledgement;
@end

@implementation BKBookletMigrationManager

- (id)_loadMigrationInfos
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"BKBookletMigration.infos"];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  return v4;
}

- (BKBookletMigrationManager)initWithPurchaseItemMigrationController:(id)controller
{
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = BKBookletMigrationManager;
  v5 = [(BKBookletMigrationManager *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_purchaseItemMigrationController, controllerCopy);
    v7 = objc_alloc_init(BKBookletMigrationStore);
    store = v6->_store;
    v6->_store = v7;

    v9 = [[BKBookletMigrationDownloadFlowState alloc] initWithStage:0];
    flowState = v6->_flowState;
    v6->_flowState = v9;

    v11 = [[BKBookletMigrationDownloadQueue alloc] initWithStore:v6->_store];
    migrationDownloadQueue = v6->_migrationDownloadQueue;
    v6->_migrationDownloadQueue = v11;

    [(BKBookletMigrationDownloadQueue *)v6->_migrationDownloadQueue setObserver:v6];
    _loadMigrationInfos = [(BKBookletMigrationManager *)v6 _loadMigrationInfos];
    migrationInfos = v6->_migrationInfos;
    v6->_migrationInfos = _loadMigrationInfos;

    v6->_accessLock._os_unfair_lock_opaque = 0;
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_UTILITY, 0);

    v17 = dispatch_queue_create("BKBookletMigrationManager.workQueue", v16);
    workQueue = v6->_workQueue;
    v6->_workQueue = v17;
  }

  return v6;
}

- (void)migrateIfNeeded
{
  [(BKBookletMigrationManager *)self _resetEverythingIfNeeded];
  if ([(BKBookletMigrationManager *)self _shouldStart])
  {
    _downloadFlowState = [(BKBookletMigrationManager *)self _downloadFlowState];
    [(BKBookletMigrationManager *)self _setDownloadFlowState:_downloadFlowState persist:0];
  }
}

- (void)_resetEverythingIfNeeded
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if ([v3 BOOLForKey:@"BKBookletMigration.resetEverything"])
  {
    v4 = BKBookletMigrationLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reset everything", buf, 2u);
    }

    [v3 removeObjectForKey:@"BKBookletMigration.infos"];
    [v3 removeObjectForKey:@"BKBookletMigration.resetEverything"];
    _loadMigrationInfos = [(BKBookletMigrationManager *)self _loadMigrationInfos];
    [(BKBookletMigrationManager *)self setMigrationInfos:_loadMigrationInfos];

    v6 = objc_alloc_init(NSSet);
    store = [(BKBookletMigrationManager *)self store];
    v15 = 0;
    v8 = [store removeAllMigrationInfosExcludingStates:v6 error:&v15];
    v9 = v15;

    v10 = BKBookletMigrationLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        *buf = 0;
        v12 = "Removed all booklet migration infos";
        v13 = v10;
        v14 = 2;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }

    else if (v11)
    {
      *buf = 138412290;
      v17 = v9;
      v12 = "Error removing all booklet migration infos, error: %@";
      v13 = v10;
      v14 = 12;
      goto LABEL_9;
    }
  }
}

- (id)_migrationInfo
{
  v3 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v3 activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  stringValue = [ams_DSID stringValue];

  if (!stringValue || (-[BKBookletMigrationManager migrationInfos](self, "migrationInfos"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:stringValue], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = objc_alloc_init(NSDictionary);
  }

  v9 = [v8 objectForKeyedSubscript:@"stage"];
  unsignedIntValue = [v9 unsignedIntValue];

  if (!unsignedIntValue)
  {
    v11 = objc_alloc_init(NSDictionary);

    v8 = v11;
  }

  return v8;
}

- (id)_downloadFlowState
{
  _migrationInfo = [(BKBookletMigrationManager *)self _migrationInfo];
  v3 = [_migrationInfo objectForKeyedSubscript:@"stage"];
  unsignedIntValue = [v3 unsignedIntValue];
  v5 = unsignedIntValue;

  if (unsignedIntValue > 399)
  {
    if (unsignedIntValue != 400 && unsignedIntValue != 800 && unsignedIntValue != 600)
    {
      goto LABEL_11;
    }
  }

  else if (unsignedIntValue && unsignedIntValue != 200 && unsignedIntValue != 300)
  {
LABEL_11:
    v6 = BKBookletMigrationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loaded flow state: Encountered unknown value: %lu", &v10, 0xCu);
    }

    v5 = 0;
    goto LABEL_14;
  }

  v6 = BKBookletMigrationLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loaded flow state: Loaded value: %lu", &v10, 0xCu);
  }

LABEL_14:

  v7 = [[BKBookletMigrationDownloadFlowState alloc] initWithStage:v5];
  v8 = BKBookletMigrationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loaded flow state: %{public}@", &v10, 0xCu);
  }

  return v7;
}

- (void)_persistMigrationInfo:(id)info
{
  infoCopy = info;
  v5 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v5 activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  stringValue = [ams_DSID stringValue];

  if (stringValue)
  {
    migrationInfos = [(BKBookletMigrationManager *)self migrationInfos];
    [migrationInfos setObject:infoCopy forKeyedSubscript:stringValue];

    v10 = +[NSUserDefaults standardUserDefaults];
    migrationInfos2 = [(BKBookletMigrationManager *)self migrationInfos];
    [v10 setObject:migrationInfos2 forKey:@"BKBookletMigration.infos"];
  }

  else
  {
    v12 = BKBookletMigrationLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10078F6AC(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (void)_persistDownloadFlowState:(id)state
{
  stateCopy = state;
  v5 = BKBookletMigrationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = stateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Persisting flow state: %{public}@", buf, 0xCu);
  }

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [stateCopy stage]);
  v8[1] = @"version";
  v9[0] = v6;
  v9[1] = &off_100A435A8;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  [(BKBookletMigrationManager *)self _persistMigrationInfo:v7];
}

- (BOOL)_shouldStart
{
  if (+[BKReachability isOffline])
  {
    v2 = BKBookletMigrationLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v3 = "Device is offline, skipping booklet migration";
      v4 = &v10;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    }
  }

  else
  {
    v5 = +[BUAccountsProvider sharedProvider];
    activeStoreAccount = [v5 activeStoreAccount];
    ams_DSID = [activeStoreAccount ams_DSID];

    if (ams_DSID)
    {
      return 1;
    }

    v2 = BKBookletMigrationLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v3 = "Not signed in to store, skipping booklet migration";
      v4 = &v9;
      goto LABEL_8;
    }
  }

  return 0;
}

- (BOOL)_shouldRunDownloadFlowState:(id)state
{
  stateCopy = state;
  if ([stateCopy stage] >= 0xC9)
  {
    v6 = BKBookletMigrationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      stage = [stateCopy stage];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "stopping booklet migration download at stage: %lu", &v8, 0xCu);
    }

    _shouldStart = 0;
  }

  else
  {
    _shouldStart = [(BKBookletMigrationManager *)self _shouldStart];
  }

  return _shouldStart;
}

- (void)_setDownloadFlowStage:(unint64_t)stage
{
  v4 = [[BKBookletMigrationDownloadFlowState alloc] initWithStage:stage];
  [(BKBookletMigrationManager *)self _setDownloadFlowState:v4 persist:1];
}

- (void)_setDownloadFlowState:(id)state persist:(BOOL)persist
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F6518;
  v7[3] = &unk_100A03E80;
  selfCopy = self;
  stateCopy = state;
  v9 = stateCopy;
  persistCopy = persist;
  os_unfair_lock_lock(&selfCopy->_accessLock);
  sub_1000F6518(v7);
  os_unfair_lock_unlock(&self->_accessLock);
  if ([(BKBookletMigrationManager *)self _shouldRunDownloadFlowState:stateCopy])
  {
    [(BKBookletMigrationManager *)self _runDownloadFlowFromState:stateCopy];
  }
}

- (void)_runDownloadFlowFromState:(id)state
{
  stateCopy = state;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F6604;
  v7[3] = &unk_100A03440;
  v8 = stateCopy;
  selfCopy = self;
  v6 = stateCopy;
  dispatch_async(workQueue, v7);
}

- (void)wq_runDownloadFlowStageInitial
{
  dispatch_assert_queue_V2(self->_workQueue);

  [(BKBookletMigrationManager *)self _setDownloadFlowStage:150];
}

- (void)wq_runDownloadFlowStageWaitGDPRPrivacyAcknowledgement
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_privacyAcknowledgementChanged:" name:BAPrivacyAcknowledgementChanged object:0];

  [(BKBookletMigrationManager *)self wq_checkGDPRPrivacyAcknowledgementBeforeForceReloadPurchaseItems];
}

- (void)wq_checkGDPRPrivacyAcknowledgementBeforeForceReloadPurchaseItems
{
  if (BUIsGDPRAcknowledgementNeededForBooks())
  {
    v3 = BKBookletMigrationLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "GDPR privacy acknowledgement needed", v5, 2u);
    }
  }

  else
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:BAPrivacyAcknowledgementChanged object:0];

    [(BKBookletMigrationManager *)self _setDownloadFlowStage:200];
  }
}

- (void)_privacyAcknowledgementChanged:(id)changed
{
  v4 = BKBookletMigrationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GDPR privacy acknowledgement changed", buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F6A8C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)_fetchOwnedAudiobookAssetIDsIncludeLocalOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = +[BKLibraryManager defaultManager];
  v6 = [NSMutableArray alloc];
  v7 = +[BKLibraryManager predicateForAllOwnedAudiobooks];
  _predicateForRedownloadableAssets = [(BKBookletMigrationManager *)self _predicateForRedownloadableAssets];
  v9 = [v6 initWithObjects:{v7, _predicateForRedownloadableAssets, 0}];

  if (onlyCopy)
  {
    predicateForLocalLibraryAssets = [v5 predicateForLocalLibraryAssets];
    [v9 addObject:predicateForLocalLibraryAssets];
  }

  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  v12 = [v5 assetIDsOfStoreAssetsWithPredicate:v11];

  return v12;
}

- (void)wq_runDownloadFlowStageForceReloadPurchaseItems
{
  dispatch_assert_queue_V2(self->_workQueue);
  purchaseItemMigrationController = [(BKBookletMigrationManager *)self purchaseItemMigrationController];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000F6EE8;
  v23[3] = &unk_100A033C8;
  v23[4] = self;
  v4 = objc_retainBlock(v23);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000F6EF4;
  v22[3] = &unk_100A033C8;
  v22[4] = self;
  v5 = objc_retainBlock(v22);
  if (purchaseItemMigrationController)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(BKBookletMigrationManager *)self _fetchOwnedAudiobookAssetIDsIncludeLocalOnly:0];
      v7 = [NSSet setWithArray:v6];
      v8 = BKBookletMigrationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "About to update purchase items with assetIDs: %@", buf, 0xCu);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000F7004;
      v18[3] = &unk_100A03CA0;
      v19 = v4;
      [purchaseItemMigrationController reloadPurchaseItemStoreIDs:v7 completion:v18];
    }

    else
    {
      v17 = BKBookletMigrationLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "About to update purchase items", buf, 2u);
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000F6FF4;
      v20[3] = &unk_100A03CA0;
      v21 = v5;
      [purchaseItemMigrationController updatePurchaseItemsWithCompletion:v20];
    }
  }

  else
  {
    v9 = BKBookletMigrationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10078F6E4(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    (v4[2])(v4);
  }
}

- (void)wq_runDownloadFlowStageWait
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 doubleForKey:@"BKBookletMigration.stopAndWaitStartTime"];
  v5 = v4;
  v6 = +[NSDate now];
  [v6 timeIntervalSince1970];
  v8 = v7;

  v9 = v8 - v5;
  v10 = BKBookletMigrationLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 <= 150.0)
  {
    if (v11)
    {
      v12 = 134217984;
      v13 = 150.0 - v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stopping migration download for now. Will retry stage query on next launch after %.1f seconds.", &v12, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished waiting. Resuming migration download", &v12, 2u);
    }

    [v3 removeObjectForKey:@"BKBookletMigration.stopAndWaitStartTime"];
    [(BKBookletMigrationManager *)self _setDownloadFlowStage:400];
  }
}

- (void)wq_runDownloadFlowStageQuery
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = +[BKLibraryManager defaultManager];
  v4 = [(BKBookletMigrationManager *)self _fetchOwnedAudiobookAssetIDsIncludeLocalOnly:1];
  v5 = BKBookletMigrationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = [v4 count];
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "local audiobooks %lu assetIDs: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = sub_100027384;
  v29 = sub_100027608;
  v6 = v4;
  v30 = v6;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000F74B4;
  v24[3] = &unk_100A07258;
  v26 = buf;
  v24[4] = self;
  v7 = v3;
  v25 = v7;
  v8 = objc_retainBlock(v24);
  purchaseItemMigrationController = [(BKBookletMigrationManager *)self purchaseItemMigrationController];
  if (![v6 count])
  {
    v11 = BKBookletMigrationLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No local audiobooks to consider", v23, 2u);
    }

    goto LABEL_10;
  }

  if (!purchaseItemMigrationController)
  {
    v11 = BKBookletMigrationLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10078F6E4(v11, v12, v13, v14, v15, v16, v17, v18);
    }

LABEL_10:

    (v8[2])(v8, 1);
    goto LABEL_11;
  }

  [NSSet setWithArray:v6];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000F772C;
  v19[3] = &unk_100A07280;
  v10 = v22 = buf;
  v20 = v10;
  v21 = v8;
  [purchaseItemMigrationController fetchReadyPurchaseItemStoreIDs:v10 completion:v19];

LABEL_11:
  _Block_object_dispose(buf, 8);
}

- (void)wq_runDownloadFlowStageQueued
{
  dispatch_assert_queue_V2(self->_workQueue);
  migrationDownloadQueue = [(BKBookletMigrationManager *)self migrationDownloadQueue];
  [migrationDownloadQueue reloadFromStore];
}

- (BKPurchaseItemMigrationControlling)purchaseItemMigrationController
{
  WeakRetained = objc_loadWeakRetained(&self->_purchaseItemMigrationController);

  return WeakRetained;
}

@end