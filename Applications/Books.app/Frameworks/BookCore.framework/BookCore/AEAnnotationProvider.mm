@interface AEAnnotationProvider
+ (AEAnnotationProvider)sharedInstance;
+ (id)cacheKeyForService:(id)a3;
+ (id)managedObjectModelBundle;
- (AEAnnotationManagedObjectContext)uiManagedObjectContext;
- (AEAnnotationProvider)init;
- (AEAnnotationProvider)initWithPersistentStoreURL:(id)a3;
- (BOOL)acknowledgeMergingAnnotationsWithAssetVersionMismatch:(id)a3 assetID:(id)a4;
- (BOOL)exportAnnotationsMatchingPredicate:(id)a3 toURL:(id)a4 withType:(int)a5 error:(id *)a6;
- (void)_commonInit;
- (void)_mocDidSave:(id)a3;
- (void)cloudSyncVersionsForDataType:(id)a3 performBlock:(id)a4;
- (void)dealloc;
- (void)migrateFromPersistentStoreCoordinator:(id)a3 toPersistentStoreCoordinator:(id)a4;
- (void)migrateFromPersistentStoreCoordinator:(id)a3 toPersistentStoreCoordinator:(id)a4 withPredicate:(id)a5;
- (void)modifyAnnotationsWithUUIDs:(id)a3 type:(int)a4 performBlock:(id)a5;
- (void)modifyGlobalAnnotationsWithAssetIDs:(id)a3 type:(int)a4 performBlock:(id)a5;
- (void)onAnnotationsMatchingPredicate:(id)a3 performBlock:(id)a4;
- (void)onAnnotationsMatchingPredicate:(id)a3 performBlockAndWait:(id)a4;
- (void)onGlobalAnnotationsForAssetIDs:(id)a3 performBlockAndWait:(id)a4;
- (void)performBlockOnUserSideQueue:(id)a3;
- (void)performBlockOnUserSideQueueAndWait:(id)a3;
- (void)upgradeAnnotationsIfNeeded;
@end

@implementation AEAnnotationProvider

+ (AEAnnotationProvider)sharedInstance
{
  v2 = qword_342888;
  if (!qword_342888)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DCD60;
    block[3] = &unk_2C7CA8;
    block[4] = a1;
    if (qword_342890 != -1)
    {
      dispatch_once(&qword_342890, block);
    }

    v2 = qword_342888;
  }

  return v2;
}

- (AEAnnotationManagedObjectContext)uiManagedObjectContext
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  uiManagedObjectContext = self->_uiManagedObjectContext;

  return uiManagedObjectContext;
}

- (AEAnnotationProvider)init
{
  v7.receiver = self;
  v7.super_class = AEAnnotationProvider;
  v2 = [(IMUbiquitousDataProvider *)&v7 init];
  if (v2)
  {
    v3 = [objc_opt_class() storeName];
    v4 = [(IMUbiquitousDataProvider *)v2 localPersistentStoreLoader];
    [v4 setStoreName:v3];

    v5 = [(IMUbiquitousDataProvider *)v2 localPersistentStoreLoader];
    [v5 setManagedObjectModelName:@"AEAnnotation"];

    [(AEAnnotationProvider *)v2 _commonInit];
  }

  return v2;
}

- (void)_commonInit
{
  v3 = objc_alloc_init(NSMutableSet);
  acknowledgedMismatchingAssetIDs = self->_acknowledgedMismatchingAssetIDs;
  self->_acknowledgedMismatchingAssetIDs = v3;

  v5 = [(IMUbiquitousDataProvider *)self newManagedObjectContextWithClass:objc_opt_class() concurrencyType:1];
  privateUserEditMOC = self->_privateUserEditMOC;
  self->_privateUserEditMOC = v5;

  [(AEAnnotationManagedObjectContext *)self->_privateUserEditMOC setAnnotationProvider:self];
  [(AEAnnotationManagedObjectContext *)self->_privateUserEditMOC setSessionContextType:0];
  v7 = [(IMUbiquitousDataProvider *)self newManagedObjectContextWithClass:objc_opt_class() concurrencyType:1];
  privateCloudSyncMOC = self->_privateCloudSyncMOC;
  self->_privateCloudSyncMOC = v7;

  [(AEAnnotationManagedObjectContext *)self->_privateCloudSyncMOC setAnnotationProvider:self];
  [(AEAnnotationManagedObjectContext *)self->_privateCloudSyncMOC setSessionContextType:2];
  v9 = [(IMUbiquitousDataProvider *)self newManagedObjectContextWithClass:objc_opt_class() concurrencyType:2];
  uiManagedObjectContext = self->_uiManagedObjectContext;
  self->_uiManagedObjectContext = v9;

  [(AEAnnotationManagedObjectContext *)self->_uiManagedObjectContext setAnnotationProvider:self];
  [(AEAnnotationManagedObjectContext *)self->_uiManagedObjectContext setSessionContextType:1];
  objc_initWeak(&location, self);
  v11 = +[NSNotificationCenter defaultCenter];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_DD0A0;
  v14[3] = &unk_2CCF18;
  objc_copyWeak(&v15, &location);
  v12 = [v11 addObserverForName:NSManagedObjectContextDidSaveNotification object:0 queue:0 usingBlock:v14];
  mocSaveObserver = self->_mocSaveObserver;
  self->_mocSaveObserver = v12;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (AEAnnotationProvider)initWithPersistentStoreURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = AEAnnotationProvider;
  v3 = [(IMUbiquitousDataProvider *)&v6 initWithPersistentStoreURL:a3];
  v4 = v3;
  if (v3)
  {
    [(AEAnnotationProvider *)v3 _commonInit];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_mocSaveObserver];

  mocSaveObserver = self->_mocSaveObserver;
  self->_mocSaveObserver = 0;

  v5.receiver = self;
  v5.super_class = AEAnnotationProvider;
  [(AEAnnotationProvider *)&v5 dealloc];
}

- (BOOL)exportAnnotationsMatchingPredicate:(id)a3 toURL:(id)a4 withType:(int)a5 error:(id *)a6
{
  if (!a5)
  {
    v9 = a4;
    v10 = a3;
    v11 = [[AEAnnotationProvider alloc] initWithPersistentStoreURL:v9];

    [(IMUbiquitousDataProvider *)v11 loadCoreData];
    v12 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
    v13 = [(IMUbiquitousDataProvider *)v11 persistentStoreCoordinator];
    [(AEAnnotationProvider *)self migrateFromPersistentStoreCoordinator:v12 toPersistentStoreCoordinator:v13 withPredicate:v10];
  }

  return a5 == 0;
}

- (BOOL)acknowledgeMergingAnnotationsWithAssetVersionMismatch:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(AEAnnotationProvider *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      if (v6)
      {
        v10 = [v7 stringByAppendingFormat:@":%@", v6];
      }

      else
      {
        v10 = v7;
      }

      v12 = v10;
      v13 = [(AEAnnotationProvider *)self acknowledgedMismatchingAssetIDs];
      objc_sync_enter(v13);
      v14 = [(AEAnnotationProvider *)self acknowledgedMismatchingAssetIDs];
      v15 = [v14 containsObject:v12];

      objc_sync_exit(v13);
      if ((v15 & 1) == 0)
      {
        v16 = [(AEAnnotationProvider *)self delegate];
        v17 = [v16 annotationProvider:self acknowledgeMergingAnnotationsWithAssetVersionMismatch:v6 assetID:v7];

        if (!v17)
        {
          v11 = 0;
          goto LABEL_12;
        }

        v18 = [(AEAnnotationProvider *)self acknowledgedMismatchingAssetIDs];
        objc_sync_enter(v18);
        v19 = [(AEAnnotationProvider *)self acknowledgedMismatchingAssetIDs];
        [v19 addObject:v12];

        objc_sync_exit(v18);
      }

      v11 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  v11 = 1;
LABEL_13:

  return v11;
}

+ (id)cacheKeyForService:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DatabaseBackupFileService"])
  {
    v4 = @"BKBookmark-Generation";
  }

  else
  {
    if ([v3 length])
    {
      v5 = [NSString stringWithFormat:@"%@-%@", v3, kMaxModificationTimeIntervalSince1970];
    }

    else
    {
      v5 = kMaxModificationTimeIntervalSince1970;
    }

    v4 = v5;
  }

  return v4;
}

- (void)onAnnotationsMatchingPredicate:(id)a3 performBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AEAnnotationProvider *)self privateUserEditMOC];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DD5B8;
  v11[3] = &unk_2C7B30;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlock:v11];
}

- (void)onAnnotationsMatchingPredicate:(id)a3 performBlockAndWait:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AEAnnotationProvider *)self privateUserEditMOC];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DD760;
  v11[3] = &unk_2C7B30;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlockAndWait:v11];
}

- (void)onGlobalAnnotationsForAssetIDs:(id)a3 performBlockAndWait:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AEAnnotationProvider *)self privateUserEditMOC];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DD908;
  v11[3] = &unk_2C7B30;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlockAndWait:v11];
}

- (void)modifyAnnotationsWithUUIDs:(id)a3 type:(int)a4 performBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 2)
  {
    [(AEAnnotationProvider *)self privateCloudSyncMOC];
  }

  else
  {
    [(AEAnnotationProvider *)self privateUserEditMOC];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_DDC50;
  v13[3] = &unk_2C7B30;
  v15 = v14 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v15;
  v12 = v8;
  [v11 performBlock:v13];
}

- (void)modifyGlobalAnnotationsWithAssetIDs:(id)a3 type:(int)a4 performBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 2)
  {
    [(AEAnnotationProvider *)self privateCloudSyncMOC];
  }

  else
  {
    [(AEAnnotationProvider *)self privateUserEditMOC];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_DE120;
  v13[3] = &unk_2C7B30;
  v15 = v14 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v15;
  v12 = v8;
  [v11 performBlock:v13];
}

- (void)performBlockOnUserSideQueue:(id)a3
{
  v11 = a3;
  if (!v11)
  {
    sub_1E9C24(0, v4, v5, v6, v7, v8, v9, v10);
  }

  v12 = [(AEAnnotationProvider *)self privateUserEditMOC];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_DE764;
  v14[3] = &unk_2C8790;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 performBlock:v14];
}

- (void)performBlockOnUserSideQueueAndWait:(id)a3
{
  v11 = a3;
  if (!v11)
  {
    sub_1E9C5C(0, v4, v5, v6, v7, v8, v9, v10);
  }

  v12 = [(AEAnnotationProvider *)self privateUserEditMOC];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_DE8FC;
  v14[3] = &unk_2C8790;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 performBlockAndWait:v14];
}

- (void)cloudSyncVersionsForDataType:(id)a3 performBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AEAnnotationProvider *)self privateCloudSyncMOC];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DEABC;
  v11[3] = &unk_2C7B30;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlock:v11];
}

- (void)migrateFromPersistentStoreCoordinator:(id)a3 toPersistentStoreCoordinator:(id)a4 withPredicate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[AEAnnotationManagedObjectContext alloc] initWithConcurrencyType:1];
  [(AEAnnotationManagedObjectContext *)v11 setSessionContextType:3];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_DEEA4;
  v16[3] = &unk_2CB890;
  v17 = v11;
  v18 = v8;
  v19 = v10;
  v20 = v9;
  v21 = self;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  v15 = v11;
  [(AEAnnotationManagedObjectContext *)v15 performBlockAndWait:v16];
}

- (void)migrateFromPersistentStoreCoordinator:(id)a3 toPersistentStoreCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSPredicate predicateWithValue:1];
  [(AEAnnotationProvider *)self migrateFromPersistentStoreCoordinator:v7 toPersistentStoreCoordinator:v6 withPredicate:v8];
}

+ (id)managedObjectModelBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (void)upgradeAnnotationsIfNeeded
{
  v3 = [(IMUbiquitousDataProvider *)self metadataObjectForKey:@"Annotations-Update-Version"];
  v4 = v3;
  if (v3)
  {
    [v3 unsignedIntegerValue];
  }

  else
  {
    [(AEAnnotationProvider *)self privateUserEditMOC];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_DF558;
    v7 = v6[3] = &unk_2C7BE8;
    v8 = self;
    v5 = v7;
    [v5 performBlockAndWait:v6];
  }
}

- (void)_mocDidSave:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_initWeak(&location, v5);

  v6 = objc_loadWeakRetained(&location);
  v7 = [v6 persistentStoreCoordinator];

  v8 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
  if (v7 == v8)
  {
    v9 = [(AEAnnotationProvider *)self privateCloudSyncMOC];
    v10 = [(AEAnnotationProvider *)self privateUserEditMOC];
    v11 = self->_uiManagedObjectContext;
    v12 = objc_loadWeakRetained(&location);

    if (v12 != v9)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_DFA9C;
      v21[3] = &unk_2C7BE8;
      v22 = v9;
      v23 = v4;
      [v22 performBlock:v21];
    }

    v13 = objc_loadWeakRetained(&location);

    if (v13 != v10)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_DFAA8;
      v18[3] = &unk_2C7BE8;
      v19 = v10;
      v20 = v4;
      [v19 performBlock:v18];
    }

    v14 = objc_loadWeakRetained(&location);

    if (v14 != v11)
    {
      if (+[NSThread isMainThread])
      {
        [(AEAnnotationManagedObjectContext *)v11 mergeChangesFromContextDidSaveNotification:v4];
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_DFAB4;
        block[3] = &unk_2C7BE8;
        v16 = v11;
        v17 = v4;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }

  objc_destroyWeak(&location);
}

@end