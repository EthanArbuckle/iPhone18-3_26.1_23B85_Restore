@interface BKLibraryAssetDetailsManager
- (AEAnnotationProvider)annotationProvider;
- (BCCloudAssetDetailManager)cloudAssetDetailManager;
- (BCCloudReadingNowDetailManager)cloudReadingNowDetailManager;
- (BKLibraryAssetDetailsManager)initWithLibraryManager:(id)a3;
- (BKLibraryManager)libraryManager;
- (void)_BCCloudAssetDetailManagerChanged:(id)a3;
- (void)_BCCloudReadingNowDetailManagerChanged:(id)a3;
- (void)_checkForChangesFromCloudAssetDetailManagerInMOC:(id)a3 reason:(id)a4;
- (void)_checkForChangesFromCloudReadingNowDetailManagerInMOC:(id)a3 reason:(id)a4;
- (void)_updateAssetDetailCloudVersionFromCloudSyncVersions:(id)a3 inMOC:(id)a4 fetchAgain:(BOOL)a5;
- (void)_updateGlobalAnnotationsFromDetails:(id)a3 annotationProvider:(id)a4;
- (void)dealloc;
- (void)managedBooksMapWithAssetIDs:(id)a3 completion:(id)a4;
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
- (void)p_syncAllAssetDetailChangesToCloudInMOC:(id)a3;
- (void)p_syncAllReadingNowChangesToCloudInMOC:(id)a3;
- (void)p_syncAssetDetailsForAssets:(id)a3 inMOC:(id)a4;
- (void)p_syncReadingNowDetailsForAssets:(id)a3 inMOC:(id)a4;
- (void)setEnableCloudMerge:(BOOL)a3;
- (void)setEnableReadingNowSync:(BOOL)a3;
- (void)updateAssetDetailsWithGlobalAnnotations:(id)a3 completion:(id)a4;
@end

@implementation BKLibraryAssetDetailsManager

- (BKLibraryAssetDetailsManager)initWithLibraryManager:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BKLibraryAssetDetailsManager;
  v5 = [(BKLibraryAssetDetailsManager *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryManager, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.iBooks.BKLibraryAssetDetailsManager", v7);
    enableCloudMergeQueue = v6->_enableCloudMergeQueue;
    v6->_enableCloudMergeQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.iBooks.BKLibraryAssetDetailsManager.getChanges", v10);
    getChangesQueue = v6->_getChangesQueue;
    v6->_getChangesQueue = v11;

    v13 = +[NSDistributedNotificationCenter defaultCenter];
    [v13 addObserver:v6 selector:"_BCCloudAssetDetailManagerChanged:" name:BCCloudAssetDetailManagerChanged object:0];

    v14 = +[NSDistributedNotificationCenter defaultCenter];
    [v14 addObserver:v6 selector:"_BCCloudReadingNowDetailManagerChanged:" name:BCCloudReadingNowDetailManagerChanged object:0];

    v15 = +[BCCloudAssetManager sharedManager];
    v16 = [v15 assetDetailManager];
    objc_storeWeak(&v6->_cloudAssetDetailManager, v16);

    v17 = +[BCCloudAssetManager sharedManager];
    v18 = [v17 readingNowDetailManager];
    objc_storeWeak(&v6->_cloudReadingNowDetailManager, v18);
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self name:BCCloudAssetDetailManagerChanged object:0];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self name:BCCloudReadingNowDetailManagerChanged object:0];

  objc_storeWeak(&self->_libraryManager, 0);
  v5.receiver = self;
  v5.super_class = BKLibraryAssetDetailsManager;
  [(BKLibraryAssetDetailsManager *)&v5 dealloc];
}

- (void)setEnableCloudMerge:(BOOL)a3
{
  v5 = [(BKLibraryAssetDetailsManager *)self enableCloudMergeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_47D70;
  v6[3] = &unk_D61E0;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (void)setEnableReadingNowSync:(BOOL)a3
{
  if (self->_enableReadingNowSync != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_enableReadingNowSync = a3;
    if (a3)
    {
      v6 = [(BKLibraryAssetDetailsManager *)self libraryManager];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_484FC;
      v7[3] = &unk_D56B8;
      v7[4] = self;
      [v6 performNamed:@"setEnableReadingNowSync" workerQueueBlockAndWait:v7];
    }
  }
}

- (void)p_syncAllAssetDetailChangesToCloudInMOC:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  [v5 setPredicate:v6];

  v10 = 0;
  v7 = [v4 executeFetchRequest:v5 error:&v10];
  v8 = v10;
  if (v8)
  {
    v9 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_900B8();
    }
  }

  else
  {
    [(BKLibraryAssetDetailsManager *)self p_syncAssetDetailsForAssets:v7 inMOC:v4];
  }
}

- (void)p_syncAssetDetailsForAssets:(id)a3 inMOC:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v30 = self;
    v8 = [(BKLibraryAssetDetailsManager *)self libraryManager];
    v31 = v7;
    v9 = [v8 cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:v7];

    [v9 setLocalVersion:{objc_msgSend(v9, "localVersion") + 1}];
    v29 = [v9 localVersion];
    v10 = +[NSMutableDictionary dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          if ([v16 hasImportantAssetDetails])
          {
            v17 = [v16 assetDetailRepresentation];
            v18 = [v16 assetID];

            if (v18)
            {
              v19 = [v16 assetID];
              [v10 setObject:v17 forKey:v19];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      v20 = +[BULogUtilities shared];
      v21 = [v20 verboseLoggingEnabled];

      if (v21)
      {
        v22 = BKLibraryAssetDetailsDevelopmentLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v10 count];
          *buf = 134217984;
          v43 = v23;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail found %lu details to sync\\"", buf, 0xCu);
        }
      }
    }

    if ([v10 count])
    {
      v24 = [v10 allKeys];
      v25 = [AEAnnotation predicateForGlobalAnnotationsWithAssetIDs:v24];
      v26 = [(BKLibraryAssetDetailsManager *)v30 annotationProvider];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_489CC;
      v33[3] = &unk_D6BB8;
      v34 = v10;
      v35 = v30;
      v36 = v24;
      v37 = v29;
      v27 = v24;
      [v26 onAnnotationsMatchingPredicate:v25 performBlock:v33];
    }

    else
    {
      v28 = [(BKLibraryAssetDetailsManager *)v30 libraryManager];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_49228;
      v32[3] = &unk_D6B68;
      v32[4] = v30;
      v32[5] = v29;
      [v28 performBlockOnWorkerQueue:v32];
    }

    v7 = v31;
  }
}

- (void)p_syncAllReadingNowChangesToCloudInMOC:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  [v5 setPredicate:v6];

  v11 = 0;
  v7 = [v4 executeFetchRequest:v5 error:&v11];
  v8 = v11;
  v9 = BKLibraryAssetDetailsLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_900B8();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_9024C();
    }

    [(BKLibraryAssetDetailsManager *)self p_syncReadingNowDetailsForAssets:v7 inMOC:v4];
  }
}

- (void)p_syncReadingNowDetailsForAssets:(id)a3 inMOC:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_0, "Books/sync-ReadingNow", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_494C4;
  block[3] = &unk_D5A40;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [v5 context];
  v7 = BUDynamicCast();

  v8 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_904A4();
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  if ([v7 sessionContextType] == 2)
  {
    goto LABEL_9;
  }

  if ([v7 sessionContextType] == 3)
  {
    goto LABEL_9;
  }

  if ([v7 sessionContextType] == 1)
  {
    goto LABEL_9;
  }

  v9 = [v7 persistentStoreCoordinator];
  v10 = [(BKLibraryAssetDetailsManager *)self libraryManager];
  v11 = [v10 persistentStoreCoordinator];
  v12 = [v9 hasStoreInCommonWith:v11];

  if (!v12)
  {
LABEL_9:
    v14 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_904D8(v7, self, v14);
    }
  }

  else
  {
    v13 = [(BKLibraryAssetDetailsManager *)self enableCloudMergeQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_49D40;
    v15[3] = &unk_D5420;
    v15[4] = self;
    v16 = v5;
    dispatch_async(v13, v15);
  }
}

- (void)_BCCloudAssetDetailManagerChanged:(id)a3
{
  v4 = [(BKLibraryAssetDetailsManager *)self getChangesQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4AC34;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_updateAssetDetailCloudVersionFromCloudSyncVersions:(id)a3 inMOC:(id)a4 fetchAgain:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(BKLibraryAssetDetailsManager *)self libraryManager];
  [v10 updateCloudVersionFromCloudSyncVersions:v9 inContext:v8];

  if (v5)
  {
    [(BKLibraryAssetDetailsManager *)self _checkForChangesFromCloudAssetDetailManagerInMOC:v8 reason:@"fetchAgain"];
  }

  else
  {
    v11 = [(BKLibraryAssetDetailsManager *)self getChangesQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4AED0;
    block[3] = &unk_D5528;
    block[4] = self;
    dispatch_async(v11, block);
  }
}

- (void)_updateGlobalAnnotationsFromDetails:(id)a3 annotationProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 bu_dictionaryUsingPropertyAsKey:@"assetID"];
  if ([v7 count])
  {
    v8 = +[BULogUtilities shared];
    v9 = [v8 verboseLoggingEnabled];

    if (v9)
    {
      v10 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "\\_updateGlobalAnnotationsFromDetails with assetDetails: %@\\"", buf, 0xCu);
      }
    }

    v11 = [v7 allKeys];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4B1E8;
    v12[3] = &unk_D6C58;
    v13 = v7;
    [v6 modifyGlobalAnnotationsWithAssetIDs:v11 type:2 performBlock:v12];
  }
}

- (void)_checkForChangesFromCloudAssetDetailManagerInMOC:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryAssetDetailsManager *)self libraryManager];
  v9 = [(BKLibraryAssetDetailsManager *)self annotationProvider];
  v10 = [v8 cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:v7];

  v11 = [v10 mutableCopy];
  v12 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v11;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "_checkForChangesFromCloudAssetDetailManagerInMOC cloudSyncVersions:%{public}@, reason:%{public}@", buf, 0x16u);
  }

  v13 = [(BKLibraryAssetDetailsManager *)self cloudAssetDetailManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_4BDE0;
  v16[3] = &unk_D6CD0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v14 = v9;
  v15 = v8;
  [v13 getAssetDetailChangesSince:v11 completion:v16];
}

- (void)_BCCloudReadingNowDetailManagerChanged:(id)a3
{
  v4 = _os_activity_create(&dword_0, "Books/process-ReadingNowDetailManagerChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4C3AC;
  block[3] = &unk_D5528;
  block[4] = self;
  os_activity_apply(v4, block);
}

- (void)_checkForChangesFromCloudReadingNowDetailManagerInMOC:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_0, "Books/BKLibrary-checkForReadingNowChange", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4C644;
  block[3] = &unk_D5A40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

- (void)updateAssetDetailsWithGlobalAnnotations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryAssetDetailsManager *)self libraryManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4CEB0;
  v11[3] = &unk_D5B30;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlockOnWorkerQueue:v11];
}

- (void)managedBooksMapWithAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryAssetDetailsManager *)self libraryManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4D808;
  v11[3] = &unk_D5B30;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlockOnWorkerQueue:v11];
}

- (AEAnnotationProvider)annotationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationProvider);

  return WeakRetained;
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

- (BCCloudAssetDetailManager)cloudAssetDetailManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudAssetDetailManager);

  return WeakRetained;
}

- (BCCloudReadingNowDetailManager)cloudReadingNowDetailManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudReadingNowDetailManager);

  return WeakRetained;
}

@end