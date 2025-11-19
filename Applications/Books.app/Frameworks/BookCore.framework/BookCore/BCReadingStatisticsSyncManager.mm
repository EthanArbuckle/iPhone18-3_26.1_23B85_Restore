@interface BCReadingStatisticsSyncManager
+ (id)sharedInstance;
- (BCReadingStatisticsSyncManager)init;
- (id)_appVersion;
- (id)_managedObjectModel;
- (id)fileURLForCachingCKAssetWithAssetID:(id)a3;
- (void)dealloc;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)readingStatisticsDidChangeOnController:(id)a3 changes:(id)a4;
- (void)registerReadingStatisticsController:(id)a3;
- (void)setEnableCloudSync:(BOOL)a3;
- (void)setupWithCompletion:(id)a3;
- (void)signalSyncToCKForSyncManager:(id)a3;
- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4;
- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5;
- (void)unregisterReadingStatisticsController:(id)a3;
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
  v4 = [v3 privateCloudDatabaseController];
  v5 = [(BCReadingStatisticsSyncManager *)self syncManager];
  [v4 removeObserver:v5 recordType:@"assetReadingStatistics"];

  [(BCCloudDataSyncManager *)self->_syncManager setDelegate:0];
  v6.receiver = self;
  v6.super_class = BCReadingStatisticsSyncManager;
  [(BCReadingStatisticsSyncManager *)&v6 dealloc];
}

- (void)setupWithCompletion:(id)a3
{
  v40 = a3;
  v4 = [BCCloudDataSource alloc];
  v5 = [(BCReadingStatisticsSyncManager *)self _managedObjectModel];
  v6 = [v4 initWithManagedObjectModel:v5 nameOnDisk:@"BCReadingStatisticsSync"];
  [(BCReadingStatisticsSyncManager *)self setReadingStatisticsDataSource:v6];

  v7 = [BCCloudDataSyncManager alloc];
  v8 = +[BCCloudKitController sharedInstance];
  v9 = [v7 initWithCloudKitController:v8];
  [(BCReadingStatisticsSyncManager *)self setSyncManager:v9];

  v10 = [(BCReadingStatisticsSyncManager *)self syncManager];
  [v10 setDelegate:self];

  if ([(BCReadingStatisticsSyncManager *)self enableCloudSync])
  {
    v11 = +[BCCloudKitController sharedInstance];
    v12 = [v11 privateCloudDatabaseController];
    v13 = [(BCReadingStatisticsSyncManager *)self syncManager];
    [v12 addObserver:v13 recordType:@"assetReadingStatistics"];
  }

  v14 = [BCCloudDataManager alloc];
  v15 = [(BCReadingStatisticsSyncManager *)self readingStatisticsDataSource];
  v16 = [(BCReadingStatisticsSyncManager *)self entityName];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [(BCReadingStatisticsSyncManager *)self syncManager];
  v20 = +[BCCloudKitController sharedInstance];
  v21 = [v14 initWithCloudDataSource:v15 entityName:v16 notificationName:0 immutableClass:v17 mutableClass:v18 syncManager:v19 cloudKitController:v20];
  [(BCReadingStatisticsSyncManager *)self setDataManager:v21];

  v22 = [BCCloudChangeTokenController alloc];
  v23 = [(BCReadingStatisticsSyncManager *)self readingStatisticsDataSource];
  v24 = [v23 managedObjectContext];
  v25 = kBCCloudKitZoneReadingStatistics;
  v26 = +[BCCloudKitController sharedInstance];
  v27 = [v22 initWithMOC:v24 zoneName:v25 cloudKitController:v26];
  [(BCReadingStatisticsSyncManager *)self setChangeTokenController:v27];

  if ([(BCReadingStatisticsSyncManager *)self enableCloudSync])
  {
    v28 = [[CKRecordZoneID alloc] initWithZoneName:v25 ownerName:CKCurrentUserDefaultName];
    v29 = +[BCCloudKitController sharedInstance];
    v30 = [v29 privateCloudDatabaseController];
    v31 = [(BCReadingStatisticsSyncManager *)self changeTokenController];
    [v30 registerServerChangeTokenStore:v31 forZoneID:v28];

    v32 = [BDSSaltVersionIdentifierManager alloc];
    changeTokenController = self->_changeTokenController;
    v34 = +[BCCloudKitController sharedInstance];
    v35 = [v34 privateCloudDatabaseController];
    v36 = [v32 initWithZoneDataManager:self tokenController:changeTokenController databaseController:v35];
    saltVersionIdentifierManager = self->_saltVersionIdentifierManager;
    self->_saltVersionIdentifierManager = v36;
  }

  v38 = objc_retainBlock(v40);
  v39 = v38;
  if (v38)
  {
    (*(v38 + 2))(v38, 0);
  }
}

- (void)setEnableCloudSync:(BOOL)a3
{
  enableCloudSync = self->_enableCloudSync;
  if (enableCloudSync == a3)
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
    v7 = a3;
    self->_enableCloudSync = a3;
    v9 = [(BCReadingStatisticsSyncManager *)self changeTokenController];
    [v9 setEnableCloudSync:v7];

    v10 = +[BCCloudKitController sharedInstance];
    v11 = [v10 privateCloudDatabaseController];
    v12 = [(BCReadingStatisticsSyncManager *)self syncManager];
    if (v7)
    {
      [v11 addObserver:v12 recordType:@"assetReadingStatistics"];

      v13 = +[BCCloudKitController sharedInstance];
      v14 = [v13 transactionManager];
      v15 = [(BCReadingStatisticsSyncManager *)self entityName];
      v16 = [(BCReadingStatisticsSyncManager *)self syncManager];
      [v14 signalSyncToCKTransactionForEntityName:v15 syncManager:v16];

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
      [v11 removeObserver:v12 recordType:@"assetReadingStatistics"];

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

- (id)fileURLForCachingCKAssetWithAssetID:(id)a3
{
  v4 = a3;
  v5 = [(BCReadingStatisticsSyncManager *)self ckAssetStoreDirectory];
  v6 = [v4 dataUsingEncoding:4];

  v7 = [v6 bu_md5];
  v8 = [v5 URLByAppendingPathComponent:v7];

  return v8;
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCReadingStatisticsSyncManager *)self dataManager];
  [v5 hasSaltChangedWithCompletion:v4];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCReadingStatisticsSyncManager *)self dataManager];
  [v5 dissociateCloudDataFromSyncWithCompletion:v4];
}

- (void)registerReadingStatisticsController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessQueue = self->_accessQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_B96D8;
    v7[3] = &unk_2C7BE8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(accessQueue, v7);
  }
}

- (void)unregisterReadingStatisticsController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessQueue = self->_accessQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_B97E4;
    v7[3] = &unk_2C7BE8;
    v8 = v4;
    v9 = self;
    dispatch_async(accessQueue, v7);
  }
}

- (void)readingStatisticsDidChangeOnController:(id)a3 changes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(BCReadingStatisticsProtoBook);
  v9 = [v7 assetID];
  [v7 bookVersionString];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_B9988;
  v14[3] = &unk_2CC750;
  v15 = v8;
  v16 = v9;
  v18 = v17 = self;
  v19 = v6;
  v10 = v6;
  v11 = v18;
  v12 = v9;
  v13 = v8;
  [v7 _setOfReadRangesWithCompletion:v14];
}

- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCReadingStatisticsSyncManager *)self enableCloudSync];
  v9 = BCReadingStatisticsLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Attempting sync of data to CK", buf, 2u);
    }

    v11 = [(BCReadingStatisticsSyncManager *)self dataManager];
    [v11 startSyncToCKWithSyncManager:v6 completion:v7];
  }

  else
  {
    if (v10)
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Skipping sync of data to CK - cloudSync not enabled", v12, 2u);
    }

    v11 = objc_retainBlock(v7);
    if (v11)
    {
      v11[2](v11);
    }
  }
}

- (void)signalSyncToCKForSyncManager:(id)a3
{
  if ([(BCReadingStatisticsSyncManager *)self enableCloudSync])
  {
    v7 = +[BCCloudKitController sharedInstance];
    v4 = [v7 transactionManager];
    v5 = [(BCReadingStatisticsSyncManager *)self entityName];
    v6 = [(BCReadingStatisticsSyncManager *)self syncManager];
    [v4 signalSyncToCKTransactionForEntityName:v5 syncManager:v6];
  }
}

- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v7;
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
        v16 = [v15 assetID];
        [v9 setObject:v15 forKey:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = [(BCReadingStatisticsSyncManager *)self dataManager];
  v18 = [v9 allKeys];
  v19 = [NSPredicate predicateWithFormat:@"assetID IN %@", v18];
  [v17 updateSyncGenerationFromCloudData:v9 predicate:v19 propertyIDKey:@"assetID" completion:v8];
}

- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(BCReadingStatisticsSyncManager *)self enableCloudSync];
  v10 = BCReadingStatisticsLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Resolving conflicts for records:%@", buf, 0xCu);
    }

    v12 = [(BCReadingStatisticsSyncManager *)self dataManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_BA210;
    v15[3] = &unk_2CC840;
    v15[4] = self;
    v16 = v8;
    [v12 resolveConflictsForRecords:v7 completion:v15];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Skipping resolution of records from CK - cloudSync not enabled", buf, 2u);
    }

    v13 = objc_retainBlock(v8);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0, 0);
    }
  }
}

- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCReadingStatisticsSyncManager *)self enableCloudSync])
  {
    v9 = [(BCReadingStatisticsSyncManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_BAE84;
    v12[3] = &unk_2CC868;
    v13 = v8;
    [v9 failedRecordIDs:v7 completion:v12];
  }

  else
  {
    v10 = objc_retainBlock(v8);
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