@interface BKLibraryAssetIsNewManager
- (BKLibraryAssetIsNewManager)initWithLibraryManager:(id)manager annotationProvider:(id)provider queue:(id)queue;
- (BOOL)_resetNextForSeriesID:(id)d inMOC:(id)c;
- (BOOL)audiobookProgressMigrationComplete;
- (void)_alternateProgressInfoForLocalAssetIDs:(id)ds cloudAssetIDs:(id)iDs completion:(id)completion;
- (void)_mediaLibraryDidChange:(id)change;
- (void)_migrateAudiobookProgressIfNeeded;
- (void)dealloc;
- (void)libraryOwnershipDidChange:(id)change;
- (void)migrateAudiobookProgressIfNeeded;
- (void)mocDidSave:(id)save;
- (void)p_processEpubIDForAssetIDs:(id)ds;
- (void)p_processEpubIDForLibraryAssets:(id)assets handlingEpubID:(id)d foundAssetHandler:(id)handler;
- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)resetIsNewForAssetIDs:(id)ds;
- (void)resetProgressHighWaterMarkForAssetIDs:(id)ds;
- (void)resetSeriesContainerSortAuthorForAssetIDs:(id)ds;
- (void)setAudiobookProgressMigrationComplete:(BOOL)complete;
- (void)updateLibraryAssetEpubIDsHandling:(id)handling foundAssetHandler:(id)handler;
- (void)updateStaleEpubIDs;
@end

@implementation BKLibraryAssetIsNewManager

- (BOOL)audiobookProgressMigrationComplete
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"AudiobookProgressMigrationGenerationCompleted"];

  return v3 > 1;
}

- (void)setAudiobookProgressMigrationComplete:(BOOL)complete
{
  completeCopy = complete;
  v4 = +[NSUserDefaults standardUserDefaults];
  v6 = v4;
  if (completeCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [v4 setInteger:v5 forKey:@"AudiobookProgressMigrationGenerationCompleted"];
}

- (BKLibraryAssetIsNewManager)initWithLibraryManager:(id)manager annotationProvider:(id)provider queue:(id)queue
{
  managerCopy = manager;
  providerCopy = provider;
  queueCopy = queue;
  v47.receiver = self;
  v47.super_class = BKLibraryAssetIsNewManager;
  v12 = [(BKLibraryAssetIsNewManager *)&v47 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workerQueue, queue);
    objc_storeStrong(&v13->_libraryManager, manager);
    objc_storeStrong(&v13->_annotationProvider, provider);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.iBooksX.BKLibraryAssetIsNewManager", v14);
    markedAssetsQueue = v13->_markedAssetsQueue;
    v13->_markedAssetsQueue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_BACKGROUND, 0);

    v19 = dispatch_queue_create("com.apple.iBooksX.BKLibraryAssetIsNewManager.processEPUBID", v18);
    processEPUBIDQueue = v13->_processEPUBIDQueue;
    v13->_processEPUBIDQueue = v19;

    v21 = dispatch_queue_create("com.apple.iBooksX.BKLibraryAssetIsNewManager.processSeriesBooks", v18);
    processSeriesBooksQueue = v13->_processSeriesBooksQueue;
    v13->_processSeriesBooksQueue = v21;

    v23 = objc_alloc_init(NSMutableSet);
    markedAssets = v13->_markedAssets;
    v13->_markedAssets = v23;

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v13 selector:"mocDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v13 selector:"libraryOwnershipDidChange:" name:BKLibraryOwnershipDidChangeNotification object:0];

    v27 = +[BKAudiobookPlayer sharedInstance];
    [v27 addObserver:v13];

    objc_initWeak(&location, v13);
    v28 = [BUCoalescingCallBlock alloc];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100140B30;
    v43[3] = &unk_100A08338;
    objc_copyWeak(&v45, &location);
    v29 = v13;
    v44 = v29;
    v30 = [v28 initWithNotifyBlock:v43 blockDescription:@"BKLibraryAssetIsNewManager coalescedResetNextInSeries"];
    coalescedResetNextInSeries = v29->_coalescedResetNextInSeries;
    v29->_coalescedResetNextInSeries = v30;

    v32 = objc_opt_new();
    seriesIDsToResetNext = v29->_seriesIDsToResetNext;
    v29->_seriesIDsToResetNext = v32;

    if ([(BKLibraryAssetIsNewManager *)v29 audiobookProgressMigrationComplete])
    {
      v34 = sub_100146624();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "No need to migrate audiobook progress, migration is complete", buf, 2u);
      }
    }

    else
    {
      v35 = [BUCoalescingCallBlock alloc];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100140F10;
      v40[3] = &unk_100A04820;
      objc_copyWeak(&v41, &location);
      v36 = [v35 initWithNotifyBlock:v40 blockDescription:@"BKLibraryAssetIsNewManager coalescedMigrateAudiobookProgress"];
      coalescedMigrateAudiobookProgress = v29->_coalescedMigrateAudiobookProgress;
      v29->_coalescedMigrateAudiobookProgress = v36;

      [(BUCoalescingCallBlock *)v29->_coalescedMigrateAudiobookProgress setCoalescingDelay:30.0];
      [(BUCoalescingCallBlock *)v29->_coalescedMigrateAudiobookProgress setMaximumDelay:300.0];
      v38 = +[NSNotificationCenter defaultCenter];
      [v38 addObserver:v29 selector:"_mediaLibraryDidChange:" name:MPMediaLibraryDidChangeNotification object:0];

      objc_destroyWeak(&v41);
    }

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MPMediaLibraryDidChangeNotification object:0];

  v5 = +[BKAudiobookPlayer sharedInstance];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = BKLibraryAssetIsNewManager;
  [(BKLibraryAssetIsNewManager *)&v6 dealloc];
}

- (void)mocDidSave:(id)save
{
  saveCopy = save;
  object = [saveCopy object];
  persistentStoreCoordinator = [object persistentStoreCoordinator];
  annotationProvider = [(BKLibraryAssetIsNewManager *)self annotationProvider];
  persistentStoreCoordinator2 = [annotationProvider persistentStoreCoordinator];

  if (persistentStoreCoordinator != persistentStoreCoordinator2)
  {
    persistentStoreCoordinator3 = [object persistentStoreCoordinator];
    libraryManager = [(BKLibraryAssetIsNewManager *)self libraryManager];
    persistentStoreCoordinator4 = [libraryManager persistentStoreCoordinator];
    v9 = persistentStoreCoordinator4;
    if (persistentStoreCoordinator3 != persistentStoreCoordinator4)
    {

      goto LABEL_103;
    }

    objc_opt_class();
    v39 = BUDynamicCast();
    sessionContextType = [v39 sessionContextType];

    if (sessionContextType == 4)
    {
      goto LABEL_103;
    }

    userInfo = [saveCopy userInfo];
    v78 = +[NSMutableSet set];
    v77 = [userInfo objectForKey:?];
    v76 = [userInfo objectForKey:?];
    if ([v77 count])
    {
      [v78 unionSet:v77];
    }

    if ([v76 count])
    {
      [v78 unionSet:v76];
    }

    v81 = +[NSMutableArray array];
    if ([v78 count])
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v41 = v78;
      v42 = [v41 countByEnumeratingWithState:&v99 objects:v116 count:16];
      if (v42)
      {
        v43 = *v100;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v100 != v43)
            {
              objc_enumerationMutation(v41);
            }

            entity = [*(*(&v99 + 1) + 8 * i) entity];
            name = [entity name];
            v47 = [name isEqualToString:@"BKLibraryAsset"];

            if (v47)
            {
              objc_opt_class();
              v48 = BUDynamicCast();
              if (![v48 isLocal] || (objc_msgSend(v48, "isAudiobook") & 1) != 0)
              {
                goto LABEL_68;
              }

              epubID = [v48 epubID];
              if (!epubID || ([v48 epubID], v85 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v85, "isEqualToString:", &stru_100A30A68) & 1) != 0))
              {
                path = [v48 path];
                if (path)
                {
                  path2 = [v48 path];
                  v52 = [path2 length];

                  if (epubID)
                  {

                    if (!v52)
                    {
                      goto LABEL_68;
                    }

LABEL_66:
                    epubID = [v48 assetID];
                    [v81 addObject:epubID];
LABEL_67:
                  }

                  else if (v52)
                  {
                    goto LABEL_66;
                  }

LABEL_68:

                  continue;
                }

                if (!epubID)
                {
                  goto LABEL_68;
                }
              }

              goto LABEL_67;
            }
          }

          v42 = [v41 countByEnumeratingWithState:&v99 objects:v116 count:16];
        }

        while (v42);
      }

      if ([v81 count])
      {
        [(BKLibraryAssetIsNewManager *)self p_processEpubIDForAssetIDs:v81];
        [(BKLibraryAssetIsNewManager *)self resetIsNewForAssetIDs:v81];
      }
    }

    delegate = [(BKLibraryAssetIsNewManager *)self delegate];
    v54 = [delegate isSyncingEnabledForIsNewManager:self];

    if (v54)
    {
      v55 = [userInfo objectForKey:NSUpdatedObjectsKey];
      if (![v55 count])
      {
LABEL_102:

        goto LABEL_103;
      }

      v87 = +[NSMutableSet set];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v55 = v55;
      v56 = [v55 countByEnumeratingWithState:&v91 objects:v114 count:16];
      if (v56)
      {
        v57 = *v92;
        do
        {
          for (j = 0; j != v56; j = j + 1)
          {
            if (*v92 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v59 = *(*(&v91 + 1) + 8 * j);
            objc_opt_class();
            v60 = BUDynamicCast();
            if (([v60 isDeleted] & 1) == 0)
            {
              seriesID = [v60 seriesID];
              v62 = seriesID == 0;

              if (!v62)
              {
                seriesID2 = [v60 seriesID];
                [v87 addObject:seriesID2];
              }
            }
          }

          v56 = [v55 countByEnumeratingWithState:&v91 objects:v114 count:16];
        }

        while (v56);
      }

      if ([v87 count])
      {
        processSeriesBooksQueue = [(BKLibraryAssetIsNewManager *)self processSeriesBooksQueue];
        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_100141DD8;
        v89[3] = &unk_100A03440;
        v89[4] = self;
        v88 = v87;
        v90 = v88;
        dispatch_async(processSeriesBooksQueue, v89);

        goto LABEL_102;
      }
    }

    else
    {
      v55 = [userInfo objectForKey:NSInsertedObjectsKey];
      if (![v55 count])
      {
        goto LABEL_102;
      }

      v87 = objc_alloc_init(NSMutableSet);
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v55 = v55;
      v65 = [v55 countByEnumeratingWithState:&v95 objects:v115 count:16];
      if (v65)
      {
        v66 = *v96;
        do
        {
          for (k = 0; k != v65; k = k + 1)
          {
            if (*v96 != v66)
            {
              objc_enumerationMutation(v55);
            }

            entity2 = [*(*(&v95 + 1) + 8 * k) entity];
            name2 = [entity2 name];
            v70 = [name2 isEqualToString:@"BKLibraryAsset"];

            if (v70)
            {
              objc_opt_class();
              v71 = BUDynamicCast();
              assetID = [v71 assetID];

              if (assetID)
              {
                assetID2 = [v71 assetID];
                [v87 addObject:assetID2];
              }
            }
          }

          v65 = [v55 countByEnumeratingWithState:&v95 objects:v115 count:16];
        }

        while (v65);
      }

      if ([v87 count])
      {
        allObjects = [v87 allObjects];
        [(BKLibraryAssetIsNewManager *)self resetIsNewForAssetIDs:allObjects];

        allObjects2 = [v87 allObjects];
        [(BKLibraryAssetIsNewManager *)self resetProgressHighWaterMarkForAssetIDs:allObjects2];
      }
    }

    goto LABEL_102;
  }

  userInfo2 = [saveCopy userInfo];
  v10 = [userInfo2 objectForKey:NSInsertedObjectsKey];
  v11 = [NSPredicate predicateWithFormat:@"SELF isKindOfClass: %@", objc_opt_class()];
  v80 = [v10 filteredSetUsingPredicate:v11];

  if ([v80 count])
  {
    v12 = objc_alloc_init(NSMutableSet);
    v13 = objc_alloc_init(NSMutableSet);
    v119 = 0;
    v120 = &v119;
    v121 = 0x3032000000;
    v122 = sub_100027420;
    v123 = sub_100027648;
    v124 = 0;
    markedAssetsQueue = [(BKLibraryAssetIsNewManager *)self markedAssetsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100141D20;
    block[3] = &unk_100A036C0;
    block[5] = &v119;
    block[4] = self;
    dispatch_sync(markedAssetsQueue, block);

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v15 = v80;
    v16 = [v15 countByEnumeratingWithState:&v109 objects:v118 count:16];
    if (v16)
    {
      v17 = *v110;
      do
      {
        for (m = 0; m != v16; m = m + 1)
        {
          if (*v110 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v109 + 1) + 8 * m);
          if (([v19 isDeleted] & 1) == 0)
          {
            annotationAssetID = [v19 annotationAssetID];
            if (([v120[5] containsObject:annotationAssetID] & 1) == 0)
            {
              [v12 addObject:annotationAssetID];
            }

            if ([v19 annotationType] == 3)
            {
              [v13 addObject:annotationAssetID];
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v109 objects:v118 count:16];
      }

      while (v16);
    }

    markedAssetsQueue2 = [(BKLibraryAssetIsNewManager *)self markedAssetsQueue];
    v107[0] = _NSConcreteStackBlock;
    v107[1] = 3221225472;
    v107[2] = sub_100141D84;
    v107[3] = &unk_100A03440;
    v107[4] = self;
    v22 = v12;
    v108 = v22;
    dispatch_async(markedAssetsQueue2, v107);

    if ([v22 count])
    {
      allObjects3 = [v22 allObjects];
      [(BKLibraryAssetIsNewManager *)self resetIsNewForAssetIDs:allObjects3];
    }

    if ([v13 count])
    {
      allObjects4 = [v13 allObjects];
      [(BKLibraryAssetIsNewManager *)self resetProgressHighWaterMarkForAssetIDs:allObjects4];
    }

    _Block_object_dispose(&v119, 8);
  }

  v25 = [userInfo2 objectForKey:NSUpdatedObjectsKey];
  v26 = [NSPredicate predicateWithFormat:@"SELF isKindOfClass: %@", objc_opt_class()];
  v27 = [v25 filteredSetUsingPredicate:v26];

  if ([v27 count])
  {
    v28 = objc_alloc_init(NSMutableSet);
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v29 = v27;
    v30 = [v29 countByEnumeratingWithState:&v103 objects:v117 count:16];
    if (v30)
    {
      v31 = *v104;
      do
      {
        for (n = 0; n != v30; n = n + 1)
        {
          if (*v104 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v103 + 1) + 8 * n);
          if ([v33 annotationType] == 3)
          {
            annotationAssetID2 = [v33 annotationAssetID];
            [v33 readingProgress];
            if (v35 < 0.0 || ([v33 readingProgress], v36 > 1.0))
            {
              v37 = sub_100146624();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
              {
                sub_100790FB8(&v119, v33, (&v119 + 4), v37);
              }
            }

            [v28 addObject:annotationAssetID2];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v103 objects:v117 count:16];
      }

      while (v30);
    }

    if ([v28 count])
    {
      allObjects5 = [v28 allObjects];
      [(BKLibraryAssetIsNewManager *)self resetProgressHighWaterMarkForAssetIDs:allObjects5];
    }
  }

LABEL_103:
}

- (void)libraryOwnershipDidChange:(id)change
{
  changeCopy = change;
  v26 = objc_opt_new();
  v23 = changeCopy;
  v24 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  userInfo = [changeCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:BKLibraryOwnershipAssetsKey];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v28 = *v30;
    v27 = BKLibraryOwnershipOldDatasourceKey;
    v8 = BKLibraryOwnershipNewDatasourceKey;
    v9 = BKLibraryOwnershipAssetIDKey;
    v10 = BKLibraryOwnershipNewStateKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:v27];
        v14 = [v12 objectForKeyedSubscript:v8];
        v15 = v14;
        if (v13)
        {
          v16 = 1;
        }

        else
        {
          v16 = v14 == 0;
        }

        if (!v16)
        {
          v17 = [v12 objectForKeyedSubscript:v9];
          if (v17)
          {
            [v24 addObject:v17];
          }
        }

        v18 = [v12 objectForKeyedSubscript:v10];
        integerValue = [v18 integerValue];

        if (integerValue <= 4u && ((1 << integerValue) & 0x16) != 0)
        {
          v21 = [v12 objectForKeyedSubscript:v9];
          [v26 addObject:v21];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  if ([v26 count])
  {
    [(BKLibraryAssetIsNewManager *)self resetIsNewForAssetIDs:v26];
    [(BKLibraryAssetIsNewManager *)self resetSeriesContainerSortAuthorForAssetIDs:v26];
  }
}

- (void)_mediaLibraryDidChange:(id)change
{
  coalescedMigrateAudiobookProgress = [(BKLibraryAssetIsNewManager *)self coalescedMigrateAudiobookProgress];

  if (coalescedMigrateAudiobookProgress)
  {
    v5 = sub_100146624();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received a notification that the media library did change.  Signalling the coalesced migration block", v7, 2u);
    }

    coalescedMigrateAudiobookProgress2 = [(BKLibraryAssetIsNewManager *)self coalescedMigrateAudiobookProgress];
    [coalescedMigrateAudiobookProgress2 signalWithCompletion:&stru_100A08378];
  }
}

- (void)resetSeriesContainerSortAuthorForAssetIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    libraryManager = [(BKLibraryAssetIsNewManager *)self libraryManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001422A8;
    v6[3] = &unk_100A044A0;
    v7 = dsCopy;
    selfCopy = self;
    [libraryManager performBlockOnWorkerQueue:v6];
  }
}

- (void)resetIsNewForAssetIDs:(id)ds
{
  dsCopy = ds;
  v5 = [dsCopy count];
  if (!dsCopy || v5)
  {
    workerQueue = [(BKLibraryAssetIsNewManager *)self workerQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014261C;
    v7[3] = &unk_100A03440;
    v7[4] = self;
    v8 = dsCopy;
    dispatch_async(workerQueue, v7);
  }
}

- (void)resetProgressHighWaterMarkForAssetIDs:(id)ds
{
  dsCopy = ds;
  v5 = [dsCopy count];
  if (!dsCopy || v5)
  {
    workerQueue = [(BKLibraryAssetIsNewManager *)self workerQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014350C;
    v7[3] = &unk_100A03440;
    v7[4] = self;
    v8 = dsCopy;
    dispatch_async(workerQueue, v7);
  }
}

- (void)p_processEpubIDForLibraryAssets:(id)assets handlingEpubID:(id)d foundAssetHandler:(id)handler
{
  assetsCopy = assets;
  dCopy = d;
  handlerCopy = handler;
  processEPUBIDQueue = [(BKLibraryAssetIsNewManager *)self processEPUBIDQueue];
  dispatch_assert_queue_V2(processEPUBIDQueue);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    v32 = AEHelperStringMetadataBookIdUrlIdentifierKey;
    v33 = v10;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        path = [v15 path];
        if (path)
        {
          v17 = path;
          path2 = [v15 path];
          if ([path2 length])
          {
            epubID = [v15 epubID];

            if (!epubID)
            {
              v20 = objc_autoreleasePoolPush();
              path3 = [v15 path];
              v22 = [NSURL fileURLWithPath:path3];

              v23 = +[AEPluginRegistry sharedInstance];
              v24 = [v23 pluginForURL:v22];

              if (v24)
              {
                v25 = [v24 helperForURL:v22 withOptions:0];
                if (v25)
                {
                  objc_opt_class();
                  v26 = [v25 helperMetadataForKey:v32 needsCoordination:1];
                  v27 = BUDynamicCast();

                  if ([v27 length])
                  {
                    [v15 setDifferentString:v27 forKey:@"epubID"];
                    v10 = v33;
                    if ([v27 isEqualToString:dCopy])
                    {
                      v28 = objc_retainBlock(handlerCopy);
                      v29 = v28;
                      if (v28)
                      {
                        (*(v28 + 2))(v28);
                      }
                    }
                  }

                  else
                  {
                    [v15 setDifferentString:&stru_100A30A68 forKey:@"epubID"];
                    v10 = v33;
                  }
                }
              }

              objc_autoreleasePoolPop(v20);
            }
          }

          else
          {
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }
}

- (void)p_processEpubIDForAssetIDs:(id)ds
{
  dsCopy = ds;
  processEPUBIDQueue = [(BKLibraryAssetIsNewManager *)self processEPUBIDQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001440E8;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_async(processEPUBIDQueue, v7);
}

- (void)updateStaleEpubIDs
{
  workerQueue = [(BKLibraryAssetIsNewManager *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001442DC;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)updateLibraryAssetEpubIDsHandling:(id)handling foundAssetHandler:(id)handler
{
  handlingCopy = handling;
  handlerCopy = handler;
  processEPUBIDQueue = [(BKLibraryAssetIsNewManager *)self processEPUBIDQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001443C4;
  block[3] = &unk_100A049A0;
  block[4] = self;
  v12 = handlingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = handlingCopy;
  dispatch_async(processEPUBIDQueue, block);
}

- (BOOL)_resetNextForSeriesID:(id)d inMOC:(id)c
{
  dCopy = d;
  cCopy = c;
  if ([dCopy length])
  {
    context = objc_autoreleasePoolPush();
    v8 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    v9 = +[BKLibraryManager predicateToExcludeUnownedLibraryAssets];
    v90[0] = v9;
    libraryManager = [(BKLibraryAssetIsNewManager *)self libraryManager];
    v11 = [libraryManager predicateForLibraryAssetsWithSeriesID:dCopy];
    v90[1] = v11;
    v12 = [NSArray arrayWithObjects:v90 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
    [v8 setPredicate:v13];

    v14 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
    v15 = [NSSortDescriptor sortDescriptorWithKey:@"seriesSortKey" ascending:0];
    v89 = v15;
    v16 = [NSArray arrayWithObjects:&v89 count:1];
    [v8 setSortDescriptors:v16];

    [v8 setReturnsObjectsAsFaults:0];
    [v8 setFetchLimit:1];
    v83 = 0;
    v17 = [cCopy executeFetchRequest:v8 error:&v83];
    v18 = v83;
    if (![v17 count])
    {
      LOBYTE(v39) = 0;
LABEL_35:

      objc_autoreleasePoolPop(context);
      goto LABEL_36;
    }

    v70 = v17;
    firstObject = [v17 firstObject];
    v75 = cCopy;
    v69 = v18;
    v71 = dCopy;
    v72 = firstObject;
    if (!firstObject || (v20 = firstObject, [firstObject seriesSortKey], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
    {
      selfCopy5 = self;
      v41 = 0;
      LOBYTE(v39) = 0;
      v27 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
LABEL_21:
      libraryManager2 = [(BKLibraryAssetIsNewManager *)selfCopy5 libraryManager];
      v44 = [libraryManager2 predicateForLibraryAssetsWithSeriesID:dCopy];

      v45 = +[BKLibraryManager predicateForNextInSeriesLibraryAssets];
      v46 = v27[278];
      v66 = v45;
      v68 = v44;
      v86[0] = v44;
      v86[1] = v45;
      v47 = [v14[466] arrayWithObjects:v86 count:2];
      v48 = [v46 andPredicateWithSubpredicates:v47];

      if (v41)
      {
        assetID = [v41 assetID];
        cCopy = v75;
        v50 = [NSPredicate predicateWithFormat:@"%K != %@", @"assetID", assetID];

        v51 = v27[278];
        v85[0] = v48;
        v85[1] = v50;
        v52 = [v14[466] arrayWithObjects:v85 count:2];
        v53 = [v51 andPredicateWithSubpredicates:v52];

        v48 = v53;
      }

      v54 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
      [v54 setPredicate:v48];
      [v54 setFetchBatchSize:50];
      v81 = 0;
      v55 = [cCopy executeFetchRequest:v54 error:&v81];
      v56 = v81;
      v57 = v56;
      if (v55)
      {
        v65 = v56;
        v74 = v41;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v58 = v55;
        v59 = [v58 countByEnumeratingWithState:&v77 objects:v84 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v78;
          do
          {
            for (i = 0; i != v60; i = i + 1)
            {
              if (*v78 != v61)
              {
                objc_enumerationMutation(v58);
              }

              v63 = *(*(&v77 + 1) + 8 * i);
              if ([v63 seriesNextFlag])
              {
                [v63 setSeriesNextFlag:0];
                LOBYTE(v39) = 1;
              }
            }

            v60 = [v58 countByEnumeratingWithState:&v77 objects:v84 count:16];
          }

          while (v60);
        }

        dCopy = v71;
        v41 = v74;
        cCopy = v75;
        v57 = v65;
      }

      v18 = v69;
      v17 = v70;
      goto LABEL_35;
    }

    libraryManager3 = [(BKLibraryAssetIsNewManager *)self libraryManager];
    v23 = [libraryManager3 predicateForLibraryAssetsWithSeriesID:dCopy];
    v88[0] = v23;
    seriesSortKey = [v20 seriesSortKey];
    v25 = [NSPredicate predicateWithFormat:@"%K > %@", @"seriesSortKey", seriesSortKey];
    v88[1] = v25;
    v26 = [NSArray arrayWithObjects:v88 count:2];

    v27 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
    v67 = v26;
    v28 = [NSCompoundPredicate andPredicateWithSubpredicates:v26];
    [v8 setPredicate:v28];

    v29 = [NSSortDescriptor sortDescriptorWithKey:@"seriesSortKey" ascending:1];
    v87[0] = v29;
    v30 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:1];
    v87[1] = v30;
    v31 = [NSArray arrayWithObjects:v87 count:2];
    [v8 setSortDescriptors:v31];

    v82 = 0;
    v32 = [cCopy executeFetchRequest:v8 error:&v82];
    if ([v32 count])
    {
      firstObject2 = [v32 firstObject];
      if (firstObject2)
      {
        v33 = v72;
        isSample = [v72 isSample];
        bookHighWaterMarkProgress = [v72 bookHighWaterMarkProgress];
        dCopy = v71;
        if (bookHighWaterMarkProgress)
        {
          bookHighWaterMarkProgress2 = [v72 bookHighWaterMarkProgress];
          [bookHighWaterMarkProgress2 floatValue];
          v38 = v37 > 0.8;

          v33 = v72;
        }

        else
        {
          v38 = 0;
        }

        if ([v33 isNew])
        {
          v42 = firstObject2;
          v39 = 0;
          cCopy = v75;
          v27 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
          v14 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
          if (([firstObject2 seriesNextFlag] & 1) == 0)
          {
            selfCopy5 = self;
            goto LABEL_20;
          }
        }

        else
        {
          v42 = firstObject2;
          v39 = v38 & (([firstObject2 isCloud] | isSample) ^ 1);
          cCopy = v75;
          v27 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
          v14 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
          if ([firstObject2 seriesNextFlag] == v39)
          {
            selfCopy5 = self;
            LOBYTE(v39) = 0;
            goto LABEL_20;
          }
        }

        selfCopy5 = self;
        [v42 setSeriesNextFlag:v39];
        LOBYTE(v39) = 1;
        goto LABEL_20;
      }
    }

    selfCopy5 = self;
    firstObject2 = 0;
    LOBYTE(v39) = 0;
    dCopy = v71;
    v14 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
LABEL_20:

    v41 = firstObject2;
    goto LABEL_21;
  }

  LOBYTE(v39) = 0;
LABEL_36:

  return v39 & 1;
}

- (void)_alternateProgressInfoForLocalAssetIDs:(id)ds cloudAssetIDs:(id)iDs completion:(id)completion
{
  dsCopy = ds;
  iDsCopy = iDs;
  completionCopy = completion;
  objc_initWeak(&location, self);
  +[BKMediaLibraryCache sharedCache];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100144DB0;
  v11 = v14[3] = &unk_100A08488;
  v15 = v11;
  v12 = iDsCopy;
  v16 = v12;
  objc_copyWeak(&v18, &location);
  v13 = completionCopy;
  v17 = v13;
  [v11 fetchAssetsWithIDs:dsCopy type:0 completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)migrateAudiobookProgressIfNeeded
{
  coalescedMigrateAudiobookProgress = [(BKLibraryAssetIsNewManager *)self coalescedMigrateAudiobookProgress];

  if (coalescedMigrateAudiobookProgress)
  {
    v4 = sub_100146624();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "migrateAudiobookProgressIfNeeded signalling coalescing call block", v6, 2u);
    }

    coalescedMigrateAudiobookProgress2 = [(BKLibraryAssetIsNewManager *)self coalescedMigrateAudiobookProgress];
    [coalescedMigrateAudiobookProgress2 signalWithCompletion:&stru_100A084A8];
  }
}

- (void)_migrateAudiobookProgressIfNeeded
{
  audiobookProgressMigrationComplete = [(BKLibraryAssetIsNewManager *)self audiobookProgressMigrationComplete];
  v4 = sub_100146624();
  libraryManager = v4;
  if (audiobookProgressMigrationComplete)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, libraryManager, OS_LOG_TYPE_INFO, "No need to migrate audiobook progress, migration is complete", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, libraryManager, OS_LOG_TYPE_DEFAULT, "migrateAudiobookProgressIfNeeded will check if audiobook progress can be migrated", buf, 2u);
    }

    libraryManager = [(BKLibraryAssetIsNewManager *)self libraryManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001454E4;
    v6[3] = &unk_100A03EA8;
    v6[4] = self;
    [libraryManager performBlockOnWorkerQueue:v6];
  }
}

- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  playerCopy = player;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ((to - 3) <= 1)
  {
    currentAudiobook = [playerCopy currentAudiobook];
    [playerCopy positionInCurrentAudiobook];
    v10 = v9;
    [currentAudiobook duration];
    v12 = v11;
    assetID = [currentAudiobook assetID];
    libraryManager = [(BKLibraryAssetIsNewManager *)self libraryManager];
    v15 = [libraryManager libraryAssetOnMainQueueWithAssetID:assetID];

    isNew = [v15 isNew];
    isFinished = [v15 isFinished];
    isAudiobookPreview = [v15 isAudiobookPreview];
    objc_initWeak(&location, self);
    if (v15 && !isAudiobookPreview && ((isNew | isFinished ^ 1) & 1) != 0)
    {
      v19 = +[BKAudiobookPersistenceController sharedInstance];
      v20 = +[BKAudiobookPlayer sharedInstance];
      currentAudiobook2 = [v20 currentAudiobook];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100146024;
      v22[3] = &unk_100A08570;
      v24[1] = v10;
      v24[2] = v12;
      v25 = isNew;
      v26 = isFinished;
      v22[4] = self;
      objc_copyWeak(v24, &location);
      v23 = assetID;
      [v19 bookmarkTimeForAudiobook:currentAudiobook2 completion:v22];

      objc_destroyWeak(v24);
    }

    objc_destroyWeak(&location);
  }
}

@end