@interface BCReadingStatisticsSyncManager
+ (id)sharedInstance;
- (BCReadingStatisticsSyncManager)init;
- (id)_appVersion;
- (id)_managedObjectModel;
- (id)fileURLForCachingCKAssetWithAssetID:(id)d;
- (void)dealloc;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)readingStatisticsDidChangeOnController:(id)controller changes:(id)changes;
- (void)registerReadingStatisticsController:(id)controller;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)setupWithCompletion:(id)completion;
- (void)signalSyncToCKForSyncManager:(id)manager;
- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion;
- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion;
- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)unregisterReadingStatisticsController:(id)controller;
@end

@implementation BCReadingStatisticsSyncManager

+ (id)sharedInstance
{
  if (qword_342840 != -1)
  {
    sub_1E90E4();
  }

  v3 = qword_342838;

  return v3;
}

- (BCReadingStatisticsSyncManager)init
{
  v17.receiver = self;
  v17.super_class = BCReadingStatisticsSyncManager;
  v2 = [(BCReadingStatisticsSyncManager *)&v17 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    *(v2 + 16) = 0;
    v5 = dispatch_queue_create("com.apple.BCReadingStasticsSyncManager", 0);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = +[BDSApplication applicationCacheDirectory];
    v8 = [v7 stringByAppendingPathComponent:@"BCReadingStatisticsSyncManagerAssetCache"];
    v9 = [NSURL fileURLWithPath:v8];
    v10 = *(v2 + 9);
    *(v2 + 9) = v9;

    v11 = +[NSFileManager defaultManager];
    v12 = *(v2 + 9);
    v16 = 0;
    [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v16];
    v13 = v16;

    if (v13)
    {
      v14 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1E90F8(v2 + 9, v13, v14);
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[BCCloudKitController sharedInstance];
  privateCloudDatabaseController = [v3 privateCloudDatabaseController];
  syncManager = [(BCReadingStatisticsSyncManager *)self syncManager];
  [privateCloudDatabaseController removeObserver:syncManager recordType:@"assetReadingStatistics"];

  [(BCCloudDataSyncManager *)self->_syncManager setDelegate:0];
  v6.receiver = self;
  v6.super_class = BCReadingStatisticsSyncManager;
  [(BCReadingStatisticsSyncManager *)&v6 dealloc];
}

- (void)setupWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [BCCloudDataSource alloc];
  _managedObjectModel = [(BCReadingStatisticsSyncManager *)self _managedObjectModel];
  v6 = [v4 initWithManagedObjectModel:_managedObjectModel nameOnDisk:@"BCReadingStatisticsSync"];
  [(BCReadingStatisticsSyncManager *)self setReadingStatisticsDataSource:v6];

  v7 = [BCCloudDataSyncManager alloc];
  v8 = +[BCCloudKitController sharedInstance];
  v9 = [v7 initWithCloudKitController:v8];
  [(BCReadingStatisticsSyncManager *)self setSyncManager:v9];

  syncManager = [(BCReadingStatisticsSyncManager *)self syncManager];
  [syncManager setDelegate:self];

  if ([(BCReadingStatisticsSyncManager *)self enableCloudSync])
  {
    v11 = +[BCCloudKitController sharedInstance];
    privateCloudDatabaseController = [v11 privateCloudDatabaseController];
    syncManager2 = [(BCReadingStatisticsSyncManager *)self syncManager];
    [privateCloudDatabaseController addObserver:syncManager2 recordType:@"assetReadingStatistics"];
  }

  v14 = [BCCloudDataManager alloc];
  readingStatisticsDataSource = [(BCReadingStatisticsSyncManager *)self readingStatisticsDataSource];
  entityName = [(BCReadingStatisticsSyncManager *)self entityName];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  syncManager3 = [(BCReadingStatisticsSyncManager *)self syncManager];
  v20 = +[BCCloudKitController sharedInstance];
  v21 = [v14 initWithCloudDataSource:readingStatisticsDataSource entityName:entityName notificationName:0 immutableClass:v17 mutableClass:v18 syncManager:syncManager3 cloudKitController:v20];
  [(BCReadingStatisticsSyncManager *)self setDataManager:v21];

  v22 = [BCCloudChangeTokenController alloc];
  readingStatisticsDataSource2 = [(BCReadingStatisticsSyncManager *)self readingStatisticsDataSource];
  managedObjectContext = [readingStatisticsDataSource2 managedObjectContext];
  v25 = kBCCloudKitZoneReadingStatistics;
  v26 = +[BCCloudKitController sharedInstance];
  v27 = [v22 initWithMOC:managedObjectContext zoneName:v25 cloudKitController:v26];
  [(BCReadingStatisticsSyncManager *)self setChangeTokenController:v27];

  if ([(BCReadingStatisticsSyncManager *)self enableCloudSync])
  {
    v28 = [[CKRecordZoneID alloc] initWithZoneName:v25 ownerName:CKCurrentUserDefaultName];
    v29 = +[BCCloudKitController sharedInstance];
    privateCloudDatabaseController2 = [v29 privateCloudDatabaseController];
    changeTokenController = [(BCReadingStatisticsSyncManager *)self changeTokenController];
    [privateCloudDatabaseController2 registerServerChangeTokenStore:changeTokenController forZoneID:v28];

    v32 = [BDSSaltVersionIdentifierManager alloc];
    changeTokenController = self->_changeTokenController;
    v34 = +[BCCloudKitController sharedInstance];
    privateCloudDatabaseController3 = [v34 privateCloudDatabaseController];
    v36 = [v32 initWithZoneDataManager:self tokenController:changeTokenController databaseController:privateCloudDatabaseController3];
    saltVersionIdentifierManager = self->_saltVersionIdentifierManager;
    self->_saltVersionIdentifierManager = v36;
  }

  v38 = objc_retainBlock(completionCopy);
  v39 = v38;
  if (v38)
  {
    (*(v38 + 2))(v38, 0);
  }
}

- (void)setEnableCloudSync:(BOOL)sync
{
  enableCloudSync = self->_enableCloudSync;
  if (enableCloudSync == sync)
  {
    if (enableCloudSync)
    {
      return;
    }

    v4 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v5 = "Request to disable CloudSync, but already disabled";
      v6 = &v17;
LABEL_10:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    syncCopy = sync;
    self->_enableCloudSync = sync;
    changeTokenController = [(BCReadingStatisticsSyncManager *)self changeTokenController];
    [changeTokenController setEnableCloudSync:syncCopy];

    v10 = +[BCCloudKitController sharedInstance];
    privateCloudDatabaseController = [v10 privateCloudDatabaseController];
    syncManager = [(BCReadingStatisticsSyncManager *)self syncManager];
    if (syncCopy)
    {
      [privateCloudDatabaseController addObserver:syncManager recordType:@"assetReadingStatistics"];

      v13 = +[BCCloudKitController sharedInstance];
      transactionManager = [v13 transactionManager];
      entityName = [(BCReadingStatisticsSyncManager *)self entityName];
      syncManager2 = [(BCReadingStatisticsSyncManager *)self syncManager];
      [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager2];

      v4 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v5 = "Enabling CloudSync";
        v6 = &v19;
        goto LABEL_10;
      }
    }

    else
    {
      [privateCloudDatabaseController removeObserver:syncManager recordType:@"assetReadingStatistics"];

      v4 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "Disabling CloudSync";
        v6 = buf;
        goto LABEL_10;
      }
    }
  }
}

- (id)fileURLForCachingCKAssetWithAssetID:(id)d
{
  dCopy = d;
  ckAssetStoreDirectory = [(BCReadingStatisticsSyncManager *)self ckAssetStoreDirectory];
  v6 = [dCopy dataUsingEncoding:4];

  bu_md5 = [v6 bu_md5];
  v8 = [ckAssetStoreDirectory URLByAppendingPathComponent:bu_md5];

  return v8;
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCReadingStatisticsSyncManager *)self dataManager];
  [dataManager hasSaltChangedWithCompletion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCReadingStatisticsSyncManager *)self dataManager];
  [dataManager dissociateCloudDataFromSyncWithCompletion:completionCopy];
}

- (void)registerReadingStatisticsController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_B96D8;
    v7[3] = &unk_2C7BE8;
    v7[4] = self;
    v8 = controllerCopy;
    dispatch_async(accessQueue, v7);
  }
}

- (void)unregisterReadingStatisticsController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_B97E4;
    v7[3] = &unk_2C7BE8;
    v8 = controllerCopy;
    selfCopy = self;
    dispatch_async(accessQueue, v7);
  }
}

- (void)readingStatisticsDidChangeOnController:(id)controller changes:(id)changes
{
  changesCopy = changes;
  controllerCopy = controller;
  v8 = objc_alloc_init(BCReadingStatisticsProtoBook);
  assetID = [controllerCopy assetID];
  [controllerCopy bookVersionString];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_B9988;
  v14[3] = &unk_2CC750;
  v15 = v8;
  v16 = assetID;
  v18 = v17 = self;
  v19 = changesCopy;
  v10 = changesCopy;
  v11 = v18;
  v12 = assetID;
  v13 = v8;
  [controllerCopy _setOfReadRangesWithCompletion:v14];
}

- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  enableCloudSync = [(BCReadingStatisticsSyncManager *)self enableCloudSync];
  v9 = BCReadingStatisticsLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (enableCloudSync)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Attempting sync of data to CK", buf, 2u);
    }

    dataManager = [(BCReadingStatisticsSyncManager *)self dataManager];
    [dataManager startSyncToCKWithSyncManager:managerCopy completion:completionCopy];
  }

  else
  {
    if (v10)
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Skipping sync of data to CK - cloudSync not enabled", v12, 2u);
    }

    dataManager = objc_retainBlock(completionCopy);
    if (dataManager)
    {
      dataManager[2](dataManager);
    }
  }
}

- (void)signalSyncToCKForSyncManager:(id)manager
{
  if ([(BCReadingStatisticsSyncManager *)self enableCloudSync])
  {
    v7 = +[BCCloudKitController sharedInstance];
    transactionManager = [v7 transactionManager];
    entityName = [(BCReadingStatisticsSyncManager *)self entityName];
    syncManager = [(BCReadingStatisticsSyncManager *)self syncManager];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
  }
}

- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dataCopy count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = dataCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        assetID = [v15 assetID];
        [v9 setObject:v15 forKey:assetID];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  dataManager = [(BCReadingStatisticsSyncManager *)self dataManager];
  allKeys = [v9 allKeys];
  v19 = [NSPredicate predicateWithFormat:@"assetID IN %@", allKeys];
  [dataManager updateSyncGenerationFromCloudData:v9 predicate:v19 propertyIDKey:@"assetID" completion:completionCopy];
}

- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  enableCloudSync = [(BCReadingStatisticsSyncManager *)self enableCloudSync];
  v10 = BCReadingStatisticsLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (enableCloudSync)
  {
    if (v11)
    {
      *buf = 138412290;
      v18 = recordsCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Resolving conflicts for records:%@", buf, 0xCu);
    }

    dataManager = [(BCReadingStatisticsSyncManager *)self dataManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_BA210;
    v15[3] = &unk_2CC840;
    v15[4] = self;
    v16 = completionCopy;
    [dataManager resolveConflictsForRecords:recordsCopy completion:v15];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Skipping resolution of records from CK - cloudSync not enabled", buf, 2u);
    }

    v13 = objc_retainBlock(completionCopy);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0, 0);
    }
  }
}

- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCReadingStatisticsSyncManager *)self enableCloudSync])
  {
    dataManager = [(BCReadingStatisticsSyncManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_BAE84;
    v12[3] = &unk_2CC868;
    v13 = completionCopy;
    [dataManager failedRecordIDs:dsCopy completion:v12];
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (id)_managedObjectModel
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"BCReadingStatisticsSync" ofType:@"momd"];

  v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
  v5 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v4];

  return v5;
}

- (id)_appVersion
{
  if (qword_342850 != -1)
  {
    sub_1E91FC();
  }

  v3 = qword_342848;

  return v3;
}

@end