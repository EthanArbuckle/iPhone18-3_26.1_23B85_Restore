@interface BKLibraryAssetDetailsManager
- (AEAnnotationProvider)annotationProvider;
- (BCCloudAssetDetailManager)cloudAssetDetailManager;
- (BCCloudReadingNowDetailManager)cloudReadingNowDetailManager;
- (BKLibraryAssetDetailsManager)initWithLibraryManager:(id)manager;
- (BKLibraryManager)libraryManager;
- (void)_BCCloudAssetDetailManagerChanged:(id)changed;
- (void)_BCCloudReadingNowDetailManagerChanged:(id)changed;
- (void)_checkForChangesFromCloudAssetDetailManagerInMOC:(id)c reason:(id)reason;
- (void)_checkForChangesFromCloudReadingNowDetailManagerInMOC:(id)c reason:(id)reason;
- (void)_updateAssetDetailCloudVersionFromCloudSyncVersions:(id)versions inMOC:(id)c fetchAgain:(BOOL)again;
- (void)_updateGlobalAnnotationsFromDetails:(id)details annotationProvider:(id)provider;
- (void)dealloc;
- (void)managedBooksMapWithAssetIDs:(id)ds completion:(id)completion;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
- (void)p_syncAllAssetDetailChangesToCloudInMOC:(id)c;
- (void)p_syncAllReadingNowChangesToCloudInMOC:(id)c;
- (void)p_syncAssetDetailsForAssets:(id)assets inMOC:(id)c;
- (void)p_syncReadingNowDetailsForAssets:(id)assets inMOC:(id)c;
- (void)setEnableCloudMerge:(BOOL)merge;
- (void)setEnableReadingNowSync:(BOOL)sync;
- (void)updateAssetDetailsWithGlobalAnnotations:(id)annotations completion:(id)completion;
@end

@implementation BKLibraryAssetDetailsManager

- (BKLibraryAssetDetailsManager)initWithLibraryManager:(id)manager
{
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = BKLibraryAssetDetailsManager;
  v5 = [(BKLibraryAssetDetailsManager *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryManager, managerCopy);
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
    assetDetailManager = [v15 assetDetailManager];
    objc_storeWeak(&v6->_cloudAssetDetailManager, assetDetailManager);

    v17 = +[BCCloudAssetManager sharedManager];
    readingNowDetailManager = [v17 readingNowDetailManager];
    objc_storeWeak(&v6->_cloudReadingNowDetailManager, readingNowDetailManager);
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

- (void)setEnableCloudMerge:(BOOL)merge
{
  enableCloudMergeQueue = [(BKLibraryAssetDetailsManager *)self enableCloudMergeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_47D70;
  v6[3] = &unk_D61E0;
  mergeCopy = merge;
  v6[4] = self;
  dispatch_async(enableCloudMergeQueue, v6);
}

- (void)setEnableReadingNowSync:(BOOL)sync
{
  if (self->_enableReadingNowSync != sync)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_enableReadingNowSync = sync;
    if (sync)
    {
      libraryManager = [(BKLibraryAssetDetailsManager *)self libraryManager];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_484FC;
      v7[3] = &unk_D56B8;
      v7[4] = self;
      [libraryManager performNamed:@"setEnableReadingNowSync" workerQueueBlockAndWait:v7];
    }
  }
}

- (void)p_syncAllAssetDetailChangesToCloudInMOC:(id)c
{
  cCopy = c;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  [v5 setPredicate:v6];

  v10 = 0;
  v7 = [cCopy executeFetchRequest:v5 error:&v10];
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
    [(BKLibraryAssetDetailsManager *)self p_syncAssetDetailsForAssets:v7 inMOC:cCopy];
  }
}

- (void)p_syncAssetDetailsForAssets:(id)assets inMOC:(id)c
{
  assetsCopy = assets;
  cCopy = c;
  if ([assetsCopy count])
  {
    selfCopy = self;
    libraryManager = [(BKLibraryAssetDetailsManager *)self libraryManager];
    v31 = cCopy;
    v9 = [libraryManager cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:cCopy];

    [v9 setLocalVersion:{objc_msgSend(v9, "localVersion") + 1}];
    localVersion = [v9 localVersion];
    v10 = +[NSMutableDictionary dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = assetsCopy;
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
            assetDetailRepresentation = [v16 assetDetailRepresentation];
            assetID = [v16 assetID];

            if (assetID)
            {
              assetID2 = [v16 assetID];
              [v10 setObject:assetDetailRepresentation forKey:assetID2];
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
      verboseLoggingEnabled = [v20 verboseLoggingEnabled];

      if (verboseLoggingEnabled)
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
      allKeys = [v10 allKeys];
      v25 = [AEAnnotation predicateForGlobalAnnotationsWithAssetIDs:allKeys];
      annotationProvider = [(BKLibraryAssetDetailsManager *)selfCopy annotationProvider];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_489CC;
      v33[3] = &unk_D6BB8;
      v34 = v10;
      v35 = selfCopy;
      v36 = allKeys;
      v37 = localVersion;
      v27 = allKeys;
      [annotationProvider onAnnotationsMatchingPredicate:v25 performBlock:v33];
    }

    else
    {
      libraryManager2 = [(BKLibraryAssetDetailsManager *)selfCopy libraryManager];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_49228;
      v32[3] = &unk_D6B68;
      v32[4] = selfCopy;
      v32[5] = localVersion;
      [libraryManager2 performBlockOnWorkerQueue:v32];
    }

    cCopy = v31;
  }
}

- (void)p_syncAllReadingNowChangesToCloudInMOC:(id)c
{
  cCopy = c;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  [v5 setPredicate:v6];

  v11 = 0;
  v7 = [cCopy executeFetchRequest:v5 error:&v11];
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

    [(BKLibraryAssetDetailsManager *)self p_syncReadingNowDetailsForAssets:v7 inMOC:cCopy];
  }
}

- (void)p_syncReadingNowDetailsForAssets:(id)assets inMOC:(id)c
{
  assetsCopy = assets;
  cCopy = c;
  v8 = _os_activity_create(&dword_0, "Books/sync-ReadingNow", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_494C4;
  block[3] = &unk_D5A40;
  v12 = assetsCopy;
  selfCopy = self;
  v14 = cCopy;
  v9 = cCopy;
  v10 = assetsCopy;
  os_activity_apply(v8, block);
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  notifyCopy = notify;
  objc_opt_class();
  context = [notifyCopy context];
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

  persistentStoreCoordinator = [v7 persistentStoreCoordinator];
  libraryManager = [(BKLibraryAssetDetailsManager *)self libraryManager];
  persistentStoreCoordinator2 = [libraryManager persistentStoreCoordinator];
  v12 = [persistentStoreCoordinator hasStoreInCommonWith:persistentStoreCoordinator2];

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
    enableCloudMergeQueue = [(BKLibraryAssetDetailsManager *)self enableCloudMergeQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_49D40;
    v15[3] = &unk_D5420;
    v15[4] = self;
    v16 = notifyCopy;
    dispatch_async(enableCloudMergeQueue, v15);
  }
}

- (void)_BCCloudAssetDetailManagerChanged:(id)changed
{
  getChangesQueue = [(BKLibraryAssetDetailsManager *)self getChangesQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4AC34;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(getChangesQueue, block);
}

- (void)_updateAssetDetailCloudVersionFromCloudSyncVersions:(id)versions inMOC:(id)c fetchAgain:(BOOL)again
{
  againCopy = again;
  cCopy = c;
  versionsCopy = versions;
  libraryManager = [(BKLibraryAssetDetailsManager *)self libraryManager];
  [libraryManager updateCloudVersionFromCloudSyncVersions:versionsCopy inContext:cCopy];

  if (againCopy)
  {
    [(BKLibraryAssetDetailsManager *)self _checkForChangesFromCloudAssetDetailManagerInMOC:cCopy reason:@"fetchAgain"];
  }

  else
  {
    getChangesQueue = [(BKLibraryAssetDetailsManager *)self getChangesQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4AED0;
    block[3] = &unk_D5528;
    block[4] = self;
    dispatch_async(getChangesQueue, block);
  }
}

- (void)_updateGlobalAnnotationsFromDetails:(id)details annotationProvider:(id)provider
{
  detailsCopy = details;
  providerCopy = provider;
  v7 = [detailsCopy bu_dictionaryUsingPropertyAsKey:@"assetID"];
  if ([v7 count])
  {
    v8 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v8 verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v10 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = detailsCopy;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "\\_updateGlobalAnnotationsFromDetails with assetDetails: %@\\"", buf, 0xCu);
      }
    }

    allKeys = [v7 allKeys];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4B1E8;
    v12[3] = &unk_D6C58;
    v13 = v7;
    [providerCopy modifyGlobalAnnotationsWithAssetIDs:allKeys type:2 performBlock:v12];
  }
}

- (void)_checkForChangesFromCloudAssetDetailManagerInMOC:(id)c reason:(id)reason
{
  reasonCopy = reason;
  cCopy = c;
  libraryManager = [(BKLibraryAssetDetailsManager *)self libraryManager];
  annotationProvider = [(BKLibraryAssetDetailsManager *)self annotationProvider];
  v10 = [libraryManager cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:cCopy];

  v11 = [v10 mutableCopy];
  v12 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v11;
    v21 = 2114;
    v22 = reasonCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "_checkForChangesFromCloudAssetDetailManagerInMOC cloudSyncVersions:%{public}@, reason:%{public}@", buf, 0x16u);
  }

  cloudAssetDetailManager = [(BKLibraryAssetDetailsManager *)self cloudAssetDetailManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_4BDE0;
  v16[3] = &unk_D6CD0;
  v16[4] = self;
  v17 = libraryManager;
  v18 = annotationProvider;
  v14 = annotationProvider;
  v15 = libraryManager;
  [cloudAssetDetailManager getAssetDetailChangesSince:v11 completion:v16];
}

- (void)_BCCloudReadingNowDetailManagerChanged:(id)changed
{
  v4 = _os_activity_create(&dword_0, "Books/process-ReadingNowDetailManagerChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4C3AC;
  block[3] = &unk_D5528;
  block[4] = self;
  os_activity_apply(v4, block);
}

- (void)_checkForChangesFromCloudReadingNowDetailManagerInMOC:(id)c reason:(id)reason
{
  cCopy = c;
  reasonCopy = reason;
  v8 = _os_activity_create(&dword_0, "Books/BKLibrary-checkForReadingNowChange", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4C644;
  block[3] = &unk_D5A40;
  block[4] = self;
  v12 = cCopy;
  v13 = reasonCopy;
  v9 = reasonCopy;
  v10 = cCopy;
  os_activity_apply(v8, block);
}

- (void)updateAssetDetailsWithGlobalAnnotations:(id)annotations completion:(id)completion
{
  annotationsCopy = annotations;
  completionCopy = completion;
  libraryManager = [(BKLibraryAssetDetailsManager *)self libraryManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4CEB0;
  v11[3] = &unk_D5B30;
  v11[4] = self;
  v12 = annotationsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = annotationsCopy;
  [libraryManager performBlockOnWorkerQueue:v11];
}

- (void)managedBooksMapWithAssetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  libraryManager = [(BKLibraryAssetDetailsManager *)self libraryManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4D808;
  v11[3] = &unk_D5B30;
  v11[4] = self;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  [libraryManager performBlockOnWorkerQueue:v11];
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