@interface BCAnnotationSyncManager
+ (BOOL)managedBooksAllowedToSync;
+ (id)_cloudSyncVersionsForDataType:(id)a3 inContext:(id)a4;
+ (id)sharedInstance;
- (AEAnnotationProvider)annotationProvider;
- (BCAnnotationSyncManager)initWithAnnotationProvider:(id)a3;
- (BCAnnotationSyncManagerDelegate)delegate;
- (void)_BCCloudAssetAnnotationManagerChanged:(id)a3;
- (void)_acknowledgeMergingCloudAnnotations:(id)a3 forAssetID:(id)a4;
- (void)_mocDidSave:(id)a3;
- (void)_syncAssetsWithCompletionSyncVersion:(int64_t)a3;
- (void)assetAnnotationsUpdatedWithCurrentCloudSyncVersions:(id)a3 updated:(id)a4 removed:(id)a5 fetchAgain:(BOOL)a6;
- (void)dealloc;
@end

@implementation BCAnnotationSyncManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_141650;
  block[3] = &unk_2C7CA8;
  block[4] = a1;
  if (qword_345F48 != -1)
  {
    dispatch_once(&qword_345F48, block);
  }

  v2 = qword_345F50;

  return v2;
}

- (BCAnnotationSyncManager)initWithAnnotationProvider:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BCAnnotationSyncManager;
  v5 = [(BCAnnotationSyncManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_annotationProvider, v4);
    v7 = objc_opt_new();
    assetIDsOfAssetsToSync = v6->_assetIDsOfAssetsToSync;
    v6->_assetIDsOfAssetsToSync = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.iBooks.BCAnnotationSyncManager", v9);
    assetIDsOfAssetsToSyncQueue = v6->_assetIDsOfAssetsToSyncQueue;
    v6->_assetIDsOfAssetsToSyncQueue = v10;

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v6 selector:"_mocDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    v13 = +[NSDistributedNotificationCenter defaultCenter];
    [v13 addObserver:v6 selector:"_BCCloudAssetAnnotationManagerChanged:" name:BCCloudAssetAnnotationManagerChanged object:0];

    v14 = +[BCCloudAssetManager sharedManager];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self name:BCCloudAssetAnnotationManagerChanged object:0];

  v5.receiver = self;
  v5.super_class = BCAnnotationSyncManager;
  [(BCAnnotationSyncManager *)&v5 dealloc];
}

- (void)_acknowledgeMergingCloudAnnotations:(id)a3 forAssetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v26 + 1) + 8 * v13) assetVersion];
        if (v14)
        {
          [v8 addObject:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * v19);
        v21 = [(BCAnnotationSyncManager *)self annotationProvider];
        [v21 acknowledgeMergingAnnotationsWithAssetVersionMismatch:v20 assetID:v7];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

- (void)assetAnnotationsUpdatedWithCurrentCloudSyncVersions:(id)a3 updated:(id)a4 removed:(id)a5 fetchAgain:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = BCCloudKitLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "assetAnnotationsUpdated", buf, 2u);
  }

  v12 = [(BCAnnotationSyncManager *)self annotationProvider];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_141BC8;
  v15[3] = &unk_2CDF28;
  v16 = v10;
  v17 = v9;
  v18 = self;
  v19 = a6;
  v13 = v9;
  v14 = v10;
  [v12 cloudSyncVersionsForDataType:@"BCAssetAnnotations" performBlock:v15];
}

+ (BOOL)managedBooksAllowedToSync
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isEnterpriseBookMetadataSyncAllowed];

  return v3;
}

- (void)_mocDidSave:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = objc_opt_class();
  v7 = [v5 persistentStoreCoordinator];
  v8 = [(BCAnnotationSyncManager *)self annotationProvider];
  v9 = [v8 persistentStoreCoordinator];
  v10 = v9;
  if (v7 != v9)
  {

LABEL_19:
    goto LABEL_20;
  }

  objc_opt_class();
  v11 = BUDynamicCast();
  v12 = [v11 sessionContextType];

  if (v12 != 2)
  {
    v7 = [v4 userInfo];
    v13 = objc_opt_new();
    v14 = [v7 objectForKey:NSInsertedObjectsKey];
    if (v14)
    {
      [v13 unionSet:v14];
    }

    else
    {
      v15 = +[NSSet set];
      [v13 unionSet:v15];
    }

    v16 = [v7 objectForKey:NSUpdatedObjectsKey];
    if (v16)
    {
      [v13 unionSet:v16];
    }

    else
    {
      v17 = +[NSSet set];
      [v13 unionSet:v17];
    }

    v18 = [v7 objectForKey:NSDeletedObjectsKey];
    if (v18)
    {
      [v13 unionSet:v18];
    }

    else
    {
      v19 = +[NSSet set];
      [v13 unionSet:v19];
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_142898;
    v28[3] = &unk_2CDF78;
    v8 = v13;
    v29 = v8;
    v30 = self;
    v31 = v6;
    v20 = objc_retainBlock(v28);
    if ([objc_opt_class() managedBooksAllowedToSync])
    {
      (v20[2])(v20, 0);
    }

    else
    {
      v21 = [v8 mutableCopy];
      v22 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@ AND annotationDeleted == 0", objc_opt_class()];
      [v21 filterUsingPredicate:v22];

      if ([v21 count])
      {
        v23 = [v21 valueForKey:@"annotationAssetID"];
        v24 = [(BCAnnotationSyncManager *)self delegate];
        v25 = [v23 allObjects];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_143004;
        v26[3] = &unk_2CDFA0;
        v27 = v20;
        [v24 managedBooksMapWithAssetIDs:v25 completion:v26];
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_BCCloudAssetAnnotationManagerChanged:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(BCAnnotationSyncManager *)self annotationProvider];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1431FC;
  v6[3] = &unk_2CDFF0;
  v6[4] = self;
  v6[5] = v4;
  [v5 performBlockOnUserSideQueue:v6];
}

+ (id)_cloudSyncVersionsForDataType:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BCCloudSyncVersions"];
  [v7 setReturnsObjectsAsFaults:0];
  [v7 setFetchLimit:1];
  v8 = [NSPredicate predicateWithFormat:@"dataType == %@", v5];
  [v7 setPredicate:v8];

  v14 = 0;
  v9 = [v6 executeFetchRequest:v7 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = BCCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1EB1DC(v10, v11);
    }
  }

  v12 = [v9 firstObject];
  if (!v12)
  {
    v12 = [NSEntityDescription insertNewObjectForEntityForName:@"BCCloudSyncVersions" inManagedObjectContext:v6];
    [v12 setDataType:v5];
  }

  return v12;
}

- (void)_syncAssetsWithCompletionSyncVersion:(int64_t)a3
{
  v3 = [(BCAnnotationSyncManager *)self assetIDsOfAssetsToSyncQueue];
  dispatch_assert_queue_V2(v3);

  v15 = objc_opt_class();
  objc_initWeak(&location, self);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(BCAnnotationSyncManager *)self assetIDsOfAssetsToSync];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v14 = *v21;
    obj = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [AEAnnotation predicateForAnnotationsWithAssetID:v7 includingDeleted:1];
        v9 = +[AEAnnotation predicateForNonGlobalAnnotationsIncludingDeleted];
        v25[0] = v8;
        v25[1] = v9;
        v10 = [NSArray arrayWithObjects:v25 count:2];
        v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

        v12 = [(BCAnnotationSyncManager *)self annotationProvider];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1436EC;
        v18[3] = &unk_2CE088;
        objc_copyWeak(v19, &location);
        v18[4] = v7;
        v19[1] = v15;
        v19[2] = a3;
        [v12 onAnnotationsMatchingPredicate:v11 performBlock:v18];

        objc_destroyWeak(v19);
      }

      v4 = obj;
      v5 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }

  objc_destroyWeak(&location);
}

- (BCAnnotationSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AEAnnotationProvider)annotationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationProvider);

  return WeakRetained;
}

@end