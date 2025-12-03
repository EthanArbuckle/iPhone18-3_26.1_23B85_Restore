@interface AEAnnotationProvider
+ (AEAnnotationProvider)sharedInstance;
+ (id)cacheKeyForService:(id)service;
+ (id)managedObjectModelBundle;
- (AEAnnotationManagedObjectContext)uiManagedObjectContext;
- (AEAnnotationProvider)init;
- (AEAnnotationProvider)initWithPersistentStoreURL:(id)l;
- (BOOL)acknowledgeMergingAnnotationsWithAssetVersionMismatch:(id)mismatch assetID:(id)d;
- (BOOL)exportAnnotationsMatchingPredicate:(id)predicate toURL:(id)l withType:(int)type error:(id *)error;
- (void)_commonInit;
- (void)_mocDidSave:(id)save;
- (void)cloudSyncVersionsForDataType:(id)type performBlock:(id)block;
- (void)dealloc;
- (void)migrateFromPersistentStoreCoordinator:(id)coordinator toPersistentStoreCoordinator:(id)storeCoordinator;
- (void)migrateFromPersistentStoreCoordinator:(id)coordinator toPersistentStoreCoordinator:(id)storeCoordinator withPredicate:(id)predicate;
- (void)modifyAnnotationsWithUUIDs:(id)ds type:(int)type performBlock:(id)block;
- (void)modifyGlobalAnnotationsWithAssetIDs:(id)ds type:(int)type performBlock:(id)block;
- (void)onAnnotationsMatchingPredicate:(id)predicate performBlock:(id)block;
- (void)onAnnotationsMatchingPredicate:(id)predicate performBlockAndWait:(id)wait;
- (void)onGlobalAnnotationsForAssetIDs:(id)ds performBlockAndWait:(id)wait;
- (void)performBlockOnUserSideQueue:(id)queue;
- (void)performBlockOnUserSideQueueAndWait:(id)wait;
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
    block[4] = self;
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
    storeName = [objc_opt_class() storeName];
    localPersistentStoreLoader = [(IMUbiquitousDataProvider *)v2 localPersistentStoreLoader];
    [localPersistentStoreLoader setStoreName:storeName];

    localPersistentStoreLoader2 = [(IMUbiquitousDataProvider *)v2 localPersistentStoreLoader];
    [localPersistentStoreLoader2 setManagedObjectModelName:@"AEAnnotation"];

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

- (AEAnnotationProvider)initWithPersistentStoreURL:(id)l
{
  v6.receiver = self;
  v6.super_class = AEAnnotationProvider;
  v3 = [(IMUbiquitousDataProvider *)&v6 initWithPersistentStoreURL:l];
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

- (BOOL)exportAnnotationsMatchingPredicate:(id)predicate toURL:(id)l withType:(int)type error:(id *)error
{
  if (!type)
  {
    lCopy = l;
    predicateCopy = predicate;
    v11 = [[AEAnnotationProvider alloc] initWithPersistentStoreURL:lCopy];

    [(IMUbiquitousDataProvider *)v11 loadCoreData];
    persistentStoreCoordinator = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
    persistentStoreCoordinator2 = [(IMUbiquitousDataProvider *)v11 persistentStoreCoordinator];
    [(AEAnnotationProvider *)self migrateFromPersistentStoreCoordinator:persistentStoreCoordinator toPersistentStoreCoordinator:persistentStoreCoordinator2 withPredicate:predicateCopy];
  }

  return type == 0;
}

- (BOOL)acknowledgeMergingAnnotationsWithAssetVersionMismatch:(id)mismatch assetID:(id)d
{
  mismatchCopy = mismatch;
  dCopy = d;
  if (dCopy)
  {
    delegate = [(AEAnnotationProvider *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      if (mismatchCopy)
      {
        mismatchCopy = [dCopy stringByAppendingFormat:@":%@", mismatchCopy];
      }

      else
      {
        mismatchCopy = dCopy;
      }

      v12 = mismatchCopy;
      acknowledgedMismatchingAssetIDs = [(AEAnnotationProvider *)self acknowledgedMismatchingAssetIDs];
      objc_sync_enter(acknowledgedMismatchingAssetIDs);
      acknowledgedMismatchingAssetIDs2 = [(AEAnnotationProvider *)self acknowledgedMismatchingAssetIDs];
      v15 = [acknowledgedMismatchingAssetIDs2 containsObject:v12];

      objc_sync_exit(acknowledgedMismatchingAssetIDs);
      if ((v15 & 1) == 0)
      {
        delegate2 = [(AEAnnotationProvider *)self delegate];
        v17 = [delegate2 annotationProvider:self acknowledgeMergingAnnotationsWithAssetVersionMismatch:mismatchCopy assetID:dCopy];

        if (!v17)
        {
          v11 = 0;
          goto LABEL_12;
        }

        acknowledgedMismatchingAssetIDs3 = [(AEAnnotationProvider *)self acknowledgedMismatchingAssetIDs];
        objc_sync_enter(acknowledgedMismatchingAssetIDs3);
        acknowledgedMismatchingAssetIDs4 = [(AEAnnotationProvider *)self acknowledgedMismatchingAssetIDs];
        [acknowledgedMismatchingAssetIDs4 addObject:v12];

        objc_sync_exit(acknowledgedMismatchingAssetIDs3);
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

+ (id)cacheKeyForService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy isEqualToString:@"DatabaseBackupFileService"])
  {
    v4 = @"BKBookmark-Generation";
  }

  else
  {
    if ([serviceCopy length])
    {
      kMaxModificationTimeIntervalSince1970 = [NSString stringWithFormat:@"%@-%@", serviceCopy, kMaxModificationTimeIntervalSince1970];
    }

    else
    {
      kMaxModificationTimeIntervalSince1970 = kMaxModificationTimeIntervalSince1970;
    }

    v4 = kMaxModificationTimeIntervalSince1970;
  }

  return v4;
}

- (void)onAnnotationsMatchingPredicate:(id)predicate performBlock:(id)block
{
  predicateCopy = predicate;
  blockCopy = block;
  [(AEAnnotationProvider *)self privateUserEditMOC];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DD5B8;
  v11[3] = &unk_2C7B30;
  v13 = v12 = predicateCopy;
  v14 = blockCopy;
  v8 = blockCopy;
  v9 = v13;
  v10 = predicateCopy;
  [v9 performBlock:v11];
}

- (void)onAnnotationsMatchingPredicate:(id)predicate performBlockAndWait:(id)wait
{
  predicateCopy = predicate;
  waitCopy = wait;
  [(AEAnnotationProvider *)self privateUserEditMOC];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DD760;
  v11[3] = &unk_2C7B30;
  v13 = v12 = predicateCopy;
  v14 = waitCopy;
  v8 = waitCopy;
  v9 = v13;
  v10 = predicateCopy;
  [v9 performBlockAndWait:v11];
}

- (void)onGlobalAnnotationsForAssetIDs:(id)ds performBlockAndWait:(id)wait
{
  dsCopy = ds;
  waitCopy = wait;
  [(AEAnnotationProvider *)self privateUserEditMOC];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DD908;
  v11[3] = &unk_2C7B30;
  v13 = v12 = dsCopy;
  v14 = waitCopy;
  v8 = waitCopy;
  v9 = v13;
  v10 = dsCopy;
  [v9 performBlockAndWait:v11];
}

- (void)modifyAnnotationsWithUUIDs:(id)ds type:(int)type performBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  if (type == 2)
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
  v15 = v14 = dsCopy;
  v16 = blockCopy;
  v10 = blockCopy;
  v11 = v15;
  v12 = dsCopy;
  [v11 performBlock:v13];
}

- (void)modifyGlobalAnnotationsWithAssetIDs:(id)ds type:(int)type performBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  if (type == 2)
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
  v15 = v14 = dsCopy;
  v16 = blockCopy;
  v10 = blockCopy;
  v11 = v15;
  v12 = dsCopy;
  [v11 performBlock:v13];
}

- (void)performBlockOnUserSideQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    sub_1E9C24(0, v4, v5, v6, v7, v8, v9, v10);
  }

  privateUserEditMOC = [(AEAnnotationProvider *)self privateUserEditMOC];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_DE764;
  v14[3] = &unk_2C8790;
  v14[4] = self;
  v15 = queueCopy;
  v13 = queueCopy;
  [privateUserEditMOC performBlock:v14];
}

- (void)performBlockOnUserSideQueueAndWait:(id)wait
{
  waitCopy = wait;
  if (!waitCopy)
  {
    sub_1E9C5C(0, v4, v5, v6, v7, v8, v9, v10);
  }

  privateUserEditMOC = [(AEAnnotationProvider *)self privateUserEditMOC];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_DE8FC;
  v14[3] = &unk_2C8790;
  v14[4] = self;
  v15 = waitCopy;
  v13 = waitCopy;
  [privateUserEditMOC performBlockAndWait:v14];
}

- (void)cloudSyncVersionsForDataType:(id)type performBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  [(AEAnnotationProvider *)self privateCloudSyncMOC];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DEABC;
  v11[3] = &unk_2C7B30;
  v13 = v12 = typeCopy;
  v14 = blockCopy;
  v8 = blockCopy;
  v9 = v13;
  v10 = typeCopy;
  [v9 performBlock:v11];
}

- (void)migrateFromPersistentStoreCoordinator:(id)coordinator toPersistentStoreCoordinator:(id)storeCoordinator withPredicate:(id)predicate
{
  coordinatorCopy = coordinator;
  storeCoordinatorCopy = storeCoordinator;
  predicateCopy = predicate;
  v11 = [[AEAnnotationManagedObjectContext alloc] initWithConcurrencyType:1];
  [(AEAnnotationManagedObjectContext *)v11 setSessionContextType:3];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_DEEA4;
  v16[3] = &unk_2CB890;
  v17 = v11;
  v18 = coordinatorCopy;
  v19 = predicateCopy;
  v20 = storeCoordinatorCopy;
  selfCopy = self;
  v12 = storeCoordinatorCopy;
  v13 = predicateCopy;
  v14 = coordinatorCopy;
  v15 = v11;
  [(AEAnnotationManagedObjectContext *)v15 performBlockAndWait:v16];
}

- (void)migrateFromPersistentStoreCoordinator:(id)coordinator toPersistentStoreCoordinator:(id)storeCoordinator
{
  storeCoordinatorCopy = storeCoordinator;
  coordinatorCopy = coordinator;
  v8 = [NSPredicate predicateWithValue:1];
  [(AEAnnotationProvider *)self migrateFromPersistentStoreCoordinator:coordinatorCopy toPersistentStoreCoordinator:storeCoordinatorCopy withPredicate:v8];
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
    selfCopy = self;
    v5 = v7;
    [v5 performBlockAndWait:v6];
  }
}

- (void)_mocDidSave:(id)save
{
  saveCopy = save;
  object = [saveCopy object];
  objc_initWeak(&location, object);

  v6 = objc_loadWeakRetained(&location);
  persistentStoreCoordinator = [v6 persistentStoreCoordinator];

  persistentStoreCoordinator2 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
  if (persistentStoreCoordinator == persistentStoreCoordinator2)
  {
    privateCloudSyncMOC = [(AEAnnotationProvider *)self privateCloudSyncMOC];
    privateUserEditMOC = [(AEAnnotationProvider *)self privateUserEditMOC];
    v11 = self->_uiManagedObjectContext;
    v12 = objc_loadWeakRetained(&location);

    if (v12 != privateCloudSyncMOC)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_DFA9C;
      v21[3] = &unk_2C7BE8;
      v22 = privateCloudSyncMOC;
      v23 = saveCopy;
      [v22 performBlock:v21];
    }

    v13 = objc_loadWeakRetained(&location);

    if (v13 != privateUserEditMOC)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_DFAA8;
      v18[3] = &unk_2C7BE8;
      v19 = privateUserEditMOC;
      v20 = saveCopy;
      [v19 performBlock:v18];
    }

    v14 = objc_loadWeakRetained(&location);

    if (v14 != v11)
    {
      if (+[NSThread isMainThread])
      {
        [(AEAnnotationManagedObjectContext *)v11 mergeChangesFromContextDidSaveNotification:saveCopy];
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_DFAB4;
        block[3] = &unk_2C7BE8;
        v16 = v11;
        v17 = saveCopy;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }

  objc_destroyWeak(&location);
}

@end