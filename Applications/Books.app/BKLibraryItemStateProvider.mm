@interface BKLibraryItemStateProvider
+ (id)_propertiesToMonitor;
- (BKLibraryItemStateProvider)initWithLibraryManager:(id)manager;
- (BOOL)_updateItemStateFieldsFromMediaLibrary:(id)library;
- (id)_simulateAssetIDFromItemIdentifier:(id)identifier;
- (id)_stateForItemIdentifier:(id)identifier libraryAsset:(id)asset;
- (id)itemStateWithIdentifier:(id)identifier;
- (id)itemsOfInterest;
- (void)_handleDownloadError:(id)error downloadStatus:(id)status;
- (void)_mediaLibraryDidChange:(id)change;
- (void)_minifiedAssetPresentersChangedNotification:(id)notification;
- (void)_simulatedUpdateItems:(id)items;
- (void)_storeAvailableUpdatesChangedNotification:(id)notification;
- (void)_updateItemStatesForAssetIDs:(id)ds;
- (void)dealloc;
- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error;
- (void)downloadQueue:(id)queue purchaseAttemptForRequest:(id)request;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)simulateClear:(id)clear;
- (void)simulateClearAll;
- (void)simulateDownload:(id)download :(id)a4;
- (void)simulateLibrary:(id)library :(id)a4;
- (void)updateInterest:(id)interest;
- (void)updateStateToDownloadFailedForIdentifier:(id)identifier;
- (void)updateStateToPurchaseFailedForIdentifier:(id)identifier;
- (void)updateStateToPurchasingForIdentifier:(id)identifier;
@end

@implementation BKLibraryItemStateProvider

+ (id)_propertiesToMonitor
{
  v5[0] = @"combinedState";
  v5[1] = @"collectionMembers";
  v5[2] = @"dateFinished";
  v5[3] = @"expectedDate";
  v5[4] = @"isFinished";
  v5[5] = @"isSample";
  v5[6] = @"isTrackedAsRecent";
  v5[7] = @"readingProgress";
  v5[8] = @"storeID";
  v2 = [NSArray arrayWithObjects:v5 count:9];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (BKLibraryItemStateProvider)initWithLibraryManager:(id)manager
{
  managerCopy = manager;
  v29.receiver = self;
  v29.super_class = BKLibraryItemStateProvider;
  v6 = [(BKLibraryItemStateProvider *)&v29 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_libraryManager, manager);
    v8 = [[BSUILibraryItemStateCenter alloc] initWithProvider:v7];
    stateCenter = v7->_stateCenter;
    v7->_stateCenter = v8;

    v10 = +[NSSet set];
    storeIDsWithAvailableUpdates = v7->_storeIDsWithAvailableUpdates;
    v7->_storeIDsWithAvailableUpdates = v10;

    v12 = +[NSMutableSet set];
    storeIDsPurchasing = v7->_storeIDsPurchasing;
    v7->_storeIDsPurchasing = v12;

    v14 = [BCManagedObjectIDMonitor alloc];
    persistentStoreCoordinator = [managerCopy persistentStoreCoordinator];
    v16 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
    v17 = +[BKLibraryItemStateProvider _propertiesToMonitor];
    v18 = [v14 initWithContext:0 coordinator:persistentStoreCoordinator entityName:@"BKLibraryAsset" predicate:v16 mapProperty:@"assetID" propertiesOfInterest:v17 observer:v7];
    monitor = v7->_monitor;
    v7->_monitor = v18;

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v7 selector:"_minifiedAssetPresentersChangedNotification:" name:@"BKMnifiedPresentersUpdatedNotification" object:0];
    [v20 addObserver:v7 selector:"_storeAvailableUpdatesChangedNotification:" name:kAEStoreNumberOfUpdatesAvailableChangedNotification object:0];
    [v20 addObserver:v7 selector:"_mediaLibraryDidChange:" name:MPMediaLibraryDidChangeNotification object:0];
    v21 = +[BLDownloadQueue sharedInstance];
    [v21 addObserver:v7];

    v22 = +[NSOperationQueue mainQueue];
    objc_initWeak(&location, v7);
    v23 = BLDownloadQueuePurchaseFailedNotification;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10007ED98;
    v26[3] = &unk_100A04C78;
    objc_copyWeak(&v27, &location);
    v24 = [v20 addObserverForName:v23 object:0 queue:v22 usingBlock:v26];
    [(BKLibraryItemStateProvider *)v7 setPurchaseObserver:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  purchaseObserver = [(BKLibraryItemStateProvider *)self purchaseObserver];
  [v4 removeObserver:purchaseObserver];

  v6 = +[BLDownloadQueue sharedInstance];
  [v6 removeObserver:self];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_audiobookStatusMap allValues];
  v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v13 + 1) + 8 * v11) removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACCA38];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12.receiver = self;
  v12.super_class = BKLibraryItemStateProvider;
  [(BKLibraryItemStateProvider *)&v12 dealloc];
}

- (void)_mediaLibraryDidChange:(id)change
{
  storeIDsPurchasing = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
  allObjects = [storeIDsPurchasing allObjects];

  if ([allObjects count])
  {
    [(BKLibraryItemStateProvider *)self _updateItemStatesForAssetIDs:allObjects];
  }
}

- (void)updateInterest:(id)interest
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007F118;
  v5[3] = &unk_100A03440;
  v5[4] = self;
  interestCopy = interest;
  v4 = interestCopy;
  os_unfair_lock_lock_with_options();
  sub_10007F118(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  notifyCopy = notify;
  v6 = objc_opt_new();
  addedObjects = [notifyCopy addedObjects];
  [v6 addObjectsFromArray:addedObjects];

  deletedObjects = [notifyCopy deletedObjects];
  [v6 addObjectsFromArray:deletedObjects];

  updatedObjects = [notifyCopy updatedObjects];
  [v6 addObjectsFromArray:updatedObjects];

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10007F2A8;
  v16 = &unk_100A03440;
  v10 = v6;
  v17 = v10;
  selfCopy = self;
  os_unfair_lock_lock_with_options();
  sub_10007F2A8(&v13);
  os_unfair_lock_unlock(&self->_accessLock);
  v11 = BKLibraryItemStateProviderLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10078B0B0(notifyCopy, v10, v11);
  }

  if ([v10 count])
  {
    allObjects = [v10 allObjects];
    [(BKLibraryItemStateProvider *)self _updateItemStatesForAssetIDs:allObjects];
  }
}

- (void)_storeAvailableUpdatesChangedNotification:(id)notification
{
  v4 = +[NSMutableSet set];
  v5 = +[BKAppDelegate delegate];
  storeController = [v5 storeController];
  storeIDsWithAvailableUpdates = [storeController storeIDsWithAvailableUpdates];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007F3EC;
  v11[3] = &unk_100A03A30;
  v12 = v4;
  selfCopy = self;
  v14 = storeIDsWithAvailableUpdates;
  v8 = storeIDsWithAvailableUpdates;
  v9 = v4;
  os_unfair_lock_lock_with_options();
  sub_10007F3EC(v11);
  os_unfair_lock_unlock(&self->_accessLock);
  allObjects = [v9 allObjects];
  [(BKLibraryItemStateProvider *)self _updateItemStatesForAssetIDs:allObjects];
}

- (void)_minifiedAssetPresentersChangedNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  v35 = notificationCopy;
  object = [notificationCopy object];
  v6 = BUDynamicCast();

  v34 = v6;
  minifiedAssetPresenters = [v6 minifiedAssetPresenters];
  audiobookStatusMap = self->_audiobookStatusMap;
  if (!audiobookStatusMap)
  {
    v9 = objc_opt_new();
    v10 = self->_audiobookStatusMap;
    self->_audiobookStatusMap = v9;

    audiobookStatusMap = self->_audiobookStatusMap;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  allValues = [(NSMutableDictionary *)audiobookStatusMap allValues];
  v12 = [allValues countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v41 + 1) + 8 * i) removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACCA38];
      }

      v13 = [allValues countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v13);
  }

  v36 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = minifiedAssetPresenters;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v37 + 1) + 8 * j);
        minifiedAssetPresenterAssetID = [v21 minifiedAssetPresenterAssetID];
        minifiedAssetStatus = [v21 minifiedAssetStatus];
        objc_opt_class();
        v33 = &OBJC_PROTOCOL___AEAssetAudiobookStatus;
        v24 = BUClassAndProtocolCast();
        v25 = v24;
        if (minifiedAssetPresenterAssetID)
        {
          v26 = v24 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          [(NSMutableDictionary *)v36 setObject:v24 forKey:minifiedAssetPresenterAssetID, &OBJC_PROTOCOL___AEAssetAudiobookStatus];
          [v25 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACCA38];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v18);
  }

  allKeys = [(NSMutableDictionary *)v36 allKeys];
  v28 = [NSMutableSet setWithArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)self->_audiobookStatusMap allKeys];
  v30 = [NSMutableSet setWithArray:allKeys2];

  [v28 unionSet:v30];
  v31 = self->_audiobookStatusMap;
  self->_audiobookStatusMap = v36;

  allObjects = [v28 allObjects];
  [(BKLibraryItemStateProvider *)self _updateItemStatesForAssetIDs:allObjects];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_100ACCA38 == context)
  {
    objectCopy = object;
    objc_opt_class();
    v14 = BUClassAndProtocolCast();

    v12 = v14;
    if (v14)
    {
      v13 = [(NSMutableDictionary *)self->_audiobookStatusMap allKeysForObject:v14, &OBJC_PROTOCOL___AEAssetAudiobookStatus];
      [(BKLibraryItemStateProvider *)self _updateItemStatesForAssetIDs:v13];

      v12 = v14;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BKLibraryItemStateProvider;
    objectCopy2 = object;
    [(BKLibraryItemStateProvider *)&v15 observeValueForKeyPath:path ofObject:objectCopy2 change:change context:context];
  }
}

- (void)_updateItemStatesForAssetIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = [dsCopy mutableCopy];
    libraryManager = self->_libraryManager;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007F9C4;
    v8[3] = &unk_100A04CA0;
    v9 = dsCopy;
    selfCopy = self;
    v11 = v5;
    v7 = v5;
    [(BKLibraryManager *)libraryManager fetchLibraryAssetsFromAssetIDs:v9 handler:v8];
  }
}

- (id)_stateForItemIdentifier:(id)identifier libraryAsset:(id)asset
{
  identifierCopy = identifier;
  assetCopy = asset;
  v8 = objc_opt_new();
  [v8 setItemIdentifier:identifierCopy];
  if ([(NSMutableSet *)self->_storeIDsPurchasing containsObject:identifierCopy])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [v8 setLibrary:v9];
  [v8 setDownload:0];
  [v8 setIsInSamples:0];
  [v8 setIsSample:0];
  [v8 setWantToRead:0];
  [v8 setStreamable:0];
  [v8 setUpdateAvailable:0];
  [v8 setPlay:0];
  [v8 setSeriesType:0];
  [v8 setFinished:{objc_msgSend(assetCopy, "isFinished")}];
  [v8 setHasSpecifiedFinishedDate:{objc_msgSend(assetCopy, "hasSpecifiedFinishedDate")}];
  [v8 setTrackedAsRecent:{objc_msgSend(assetCopy, "isTrackedAsRecent")}];
  [v8 setIsPurchased:0];
  [v8 setAssetIsPreorderable:{objc_msgSend(assetCopy, "isPreorderBook")}];
  v10 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
  if (!assetCopy)
  {
    goto LABEL_61;
  }

  if ([assetCopy isCloud])
  {
    v11 = 0;
  }

  else if ([assetCopy isLocal])
  {
    v11 = 2;
  }

  else
  {
    if (![assetCopy isDownloading])
    {
      goto LABEL_12;
    }

    v11 = 1;
  }

  [v8 setDownload:v11];
LABEL_12:
  if ([assetCopy isPreorderBook])
  {
    v12 = v8;
    v13 = 3;
LABEL_14:
    [v12 setLibrary:v13];
    [v8 setIsPurchased:1];
    goto LABEL_23;
  }

  if ([assetCopy isStoreItem])
  {
    v14 = v8;
    v15 = 1;
LABEL_22:
    [v14 setLibrary:v15];
    goto LABEL_23;
  }

  if ([assetCopy isStore] && (objc_msgSend(assetCopy, "isSeriesItem") & 1) == 0 && (objc_msgSend(assetCopy, "isSample") & 1) == 0)
  {
    v12 = v8;
    v13 = 4;
    goto LABEL_14;
  }

  if (([assetCopy isStore] & 1) == 0)
  {
    v14 = v8;
    v15 = 5;
    goto LABEL_22;
  }

LABEL_23:
  seriesType = [assetCopy seriesType];
  if (seriesType <= 3)
  {
    [v8 setSeriesType:seriesType];
  }

  [v8 setIsInSamples:{objc_msgSend(assetCopy, "isInSamples")}];
  [v8 setIsSample:{objc_msgSend(assetCopy, "isSample")}];
  if (![assetCopy streamable])
  {
    if ((([assetCopy isAudiobook] & 1) != 0 || objc_msgSend(v8, "library") != 4) && objc_msgSend(v8, "library") != 3)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  storeIDsPurchasing = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
  v18 = [storeIDsPurchasing containsObject:identifierCopy];

  if (!v18)
  {
    [v8 setStreamable:1];
    goto LABEL_43;
  }

  if (![(BKLibraryItemStateProvider *)self _updateItemStateFieldsFromMediaLibrary:v8])
  {
    v19 = BKLibraryItemStateProviderLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = identifierCopy;
      v22 = "Set item (%@) to purchasing state as it had not landed in media library";
LABEL_41:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
    }

LABEL_42:

    [v8 setLibrary:2];
    goto LABEL_43;
  }

  if ([v8 download] != 2)
  {
    if ([v8 isFamilyPurchase])
    {
      storeIDsPurchasing2 = BKLibraryItemStateProviderLog();
      if (os_log_type_enabled(storeIDsPurchasing2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = identifierCopy;
        _os_log_impl(&_mh_execute_header, storeIDsPurchasing2, OS_LOG_TYPE_DEFAULT, "Item (%@) belongs to a family member, allow download progress and no streaming", buf, 0xCu);
      }

      goto LABEL_37;
    }

    isStreamable = [v8 isStreamable];
    v19 = BKLibraryItemStateProviderLog();
    v45 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (isStreamable)
    {
      if (!v45)
      {
        goto LABEL_32;
      }

      *buf = 138412290;
      v61 = identifierCopy;
      v20 = "Removing item (%@) from purchasing store IDs as it is streamable in the media library";
      goto LABEL_31;
    }

    if (v45)
    {
      *buf = 138412290;
      v61 = identifierCopy;
      v22 = "Set item (%@) to purchasing state as it is not yet playable and is not a family purchase";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v19 = BKLibraryItemStateProviderLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = identifierCopy;
    v20 = "Removing item (%@) from purchasing store IDs as it is local in the media library";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
  }

LABEL_32:

LABEL_36:
  storeIDsPurchasing2 = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
  [storeIDsPurchasing2 removeObject:identifierCopy];
LABEL_37:

LABEL_43:
  selfCopy = self;
  if ([assetCopy isDownloadingSupplementalContent])
  {
    [v8 setDownload:1];
  }

  readingProgress = [assetCopy readingProgress];
  v24 = +[NSString bc_formattedReadingProgress:isFinished:](NSString, "bc_formattedReadingProgress:isFinished:", readingProgress, [assetCopy isFinished]);
  [v8 setReadingProgress:v24];

  readingProgress2 = [assetCopy readingProgress];
  [readingProgress2 doubleValue];
  [v8 setReadingProgressValue:?];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  collectionMembers = [assetCopy collectionMembers];
  v27 = [collectionMembers countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v56;
    v30 = kBKCollectionDefaultIDWantToRead;
    while (2)
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v56 != v29)
        {
          objc_enumerationMutation(collectionMembers);
        }

        collection = [*(*(&v55 + 1) + 8 * i) collection];
        collectionID = [collection collectionID];
        v34 = [collectionID isEqualToString:v30];

        if (v34)
        {
          [v8 setWantToRead:1];
          goto LABEL_55;
        }
      }

      v28 = [collectionMembers countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_55:

  self = selfCopy;
  audiobookStatusMap = selfCopy->_audiobookStatusMap;
  assetID = [assetCopy assetID];
  v37 = [(NSMutableDictionary *)audiobookStatusMap objectForKeyedSubscript:assetID];

  if (v37)
  {
    if ([v37 assetAudiobookStatusIsPlaying])
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    [v8 setPlay:v38];
  }

  v51[0] = _NSConcreteStackBlock;
  v10 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
  v51[1] = 3221225472;
  v51[2] = sub_1000803EC;
  v51[3] = &unk_100A03A30;
  v52 = v8;
  v53 = selfCopy;
  identifierCopy = v46;
  v54 = v46;
  os_unfair_lock_lock_with_options();
  sub_1000803EC(v51);
  os_unfair_lock_unlock(&selfCopy->_accessLock);

LABEL_61:
  v48[0] = _NSConcreteStackBlock;
  v48[1] = v10[23];
  v48[2] = sub_100080430;
  v48[3] = &unk_100A03A30;
  v48[4] = self;
  v49 = identifierCopy;
  v39 = v8;
  v50 = v39;
  v40 = identifierCopy;
  os_unfair_lock_lock_with_options();
  sub_100080430(v48);
  os_unfair_lock_unlock(&self->_accessLock);
  v41 = v50;
  v42 = v39;

  return v39;
}

- (id)itemsOfInterest
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100027314;
  v15 = sub_1000275D0;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000805F8;
  v8 = &unk_100A036C0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  v7(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (id)itemStateWithIdentifier:(id)identifier
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100027314;
  v17 = sub_1000275D0;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000807AC;
  v10[3] = &unk_100A04CC8;
  v12 = &v13;
  v10[4] = self;
  identifierCopy = identifier;
  v11 = identifierCopy;
  v5 = objc_retainBlock(v10);
  v6 = +[NSThread isMainThread];
  libraryManager = self->_libraryManager;
  if (v6)
  {
    [(BKLibraryManager *)libraryManager performBlockInUIContext:v5];
  }

  else
  {
    [(BKLibraryManager *)libraryManager performBackgroundReadOnlyBlockAndWait:v5];
  }

  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)updateStateToPurchasingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  libraryManager = self->_libraryManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100080908;
  v7[3] = &unk_100A044A0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(BKLibraryManager *)libraryManager performBlockOnWorkerQueue:v7];
}

- (void)updateStateToPurchaseFailedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  libraryManager = self->_libraryManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100080A48;
  v7[3] = &unk_100A044A0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(BKLibraryManager *)libraryManager performBlockOnWorkerQueue:v7];
}

- (void)updateStateToDownloadFailedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  libraryManager = self->_libraryManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100080B88;
  v7[3] = &unk_100A044A0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(BKLibraryManager *)libraryManager performBlockOnWorkerQueue:v7];
}

- (BOOL)_updateItemStateFieldsFromMediaLibrary:(id)library
{
  libraryCopy = library;
  itemIdentifier = [libraryCopy itemIdentifier];
  v4 = +[MPMediaQuery bk_audiobooksQuery];
  if (v4 && [itemIdentifier length])
  {
    v5 = [MPMediaPropertyPredicate predicateWithValue:itemIdentifier forProperty:MPMediaItemPropertyStorePlaylistID];
    v6 = [MPMediaPropertyPredicate predicateWithValue:itemIdentifier forProperty:MPMediaItemPropertyStoreID];
    v76[0] = v5;
    v76[1] = v6;
    v7 = [NSArray arrayWithObjects:v76 count:2];
    v8 = [MPMediaCompoundAnyPredicate predicateMatchingPredicates:v7];
    [v4 addFilterPredicate:v8];

    [v4 setGroupingType:1];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [v4 collections];
    v48 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v48)
    {
      v43 = v6;
      v44 = v5;
      v45 = v4;
      v47 = *v67;
      v56 = MPMediaItemPropertyStoreFamilyAccountID;
      v55 = MPMediaItemPropertyStoreDownloaderAccountID;
      v54 = MPMediaItemPropertyStoreAccountID;
      v51 = MPMediaItemPropertyIsLocal;
      v50 = MPMediaItemPropertyHLSPlaylistURL;
      while (2)
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v67 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v66 + 1) + 8 * i);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          items = [v10 items];
          v12 = [items countByEnumeratingWithState:&v62 objects:v74 count:16];
          if (v12)
          {
            v13 = v12;
            v49 = i;
            v53 = 0;
            v52 = 0;
            v14 = 0;
            v15 = *v63;
            v59 = *v63;
            v60 = items;
            do
            {
              v16 = 0;
              v61 = v13;
              do
              {
                if (*v63 != v15)
                {
                  objc_enumerationMutation(items);
                }

                v17 = *(*(&v62 + 1) + 8 * v16);
                bk_storeID = [v17 bk_storeID];
                stringValue = [bk_storeID stringValue];
                v20 = [itemIdentifier isEqualToString:stringValue];

                if (v20)
                {
                  v21 = itemIdentifier;
                  objc_opt_class();
                  v22 = [v17 valueForProperty:MPMediaItemPropertyIsCloudItem];
                  v23 = BUDynamicCast();

                  objc_opt_class();
                  v24 = [v17 valueForProperty:v56];
                  v25 = BUDynamicCast();

                  objc_opt_class();
                  v26 = [v17 valueForProperty:v55];
                  v27 = BUDynamicCast();

                  objc_opt_class();
                  v28 = [v17 valueForProperty:v54];
                  v29 = BUDynamicCast();

                  libraryManager = [(BKLibraryItemStateProvider *)self libraryManager];
                  v31 = [libraryManager isFamilyPurchaseWithFamilyID:v25 purchaserDSID:v29 downloaderDSID:v27];

                  if ([v23 BOOLValue])
                  {
                    objc_opt_class();
                    v32 = [v17 valueForProperty:v50];
                    v33 = BUDynamicCast();

                    v34 = [v33 length];
                    v35 = BLAudiobookStreamingEnabled();
                    if (v34)
                    {
                      v36 = v35;
                    }

                    else
                    {
                      v36 = 0;
                    }

                    LOBYTE(v53) = v36;
                    v37 = BKLibraryItemStateProviderLog();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109376;
                      v71 = v34 != 0;
                      v72 = 1024;
                      v73 = v31;
                      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Found a cloud audiobook media item with a valid playlist? %d, is family? %d.", buf, 0xEu);
                    }
                  }

                  else
                  {
                    v33 = [v17 valueForProperty:v51];
                    HIDWORD(v53) = [v33 BOOLValue] ^ 1;
                    v37 = BKLibraryItemStateProviderLog();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      bOOLValue = [v33 BOOLValue];
                      *buf = 67109376;
                      v71 = bOOLValue;
                      v72 = 1024;
                      v73 = v31;
                      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Found a non-cloud audiobook media item that is local? %d, is family? %d.", buf, 0xEu);
                    }

                    v52 = 1;
                  }

                  v15 = v59;

                  [libraryCopy setFamilyPurchase:v31];
                  v14 = 1;
                  itemIdentifier = v21;
                  items = v60;
                  v13 = v61;
                }

                v16 = v16 + 1;
              }

              while (v13 != v16);
              v13 = [items countByEnumeratingWithState:&v62 objects:v74 count:16];
            }

            while (v13);

            i = v49;
            if (v14)
            {
              [libraryCopy setStreamable:v53 & 1];
              v39 = 1;
              if ((v53 & 0x100000000) != 0)
              {
                v40 = 1;
              }

              else
              {
                v40 = 2;
              }

              if (v52)
              {
                v41 = v40;
              }

              else
              {
                v41 = 0;
              }

              [libraryCopy setDownload:v41];
              goto LABEL_40;
            }
          }

          else
          {
          }
        }

        v48 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (v48)
        {
          continue;
        }

        break;
      }

      v39 = 0;
LABEL_40:
      v5 = v44;
      v4 = v45;
      v6 = v43;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (id)_simulateAssetIDFromItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100027314;
  v20 = sub_1000275D0;
  objc_opt_class();
  v21 = BUDynamicCast();
  if (!v17[5] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    stringValue = [identifierCopy stringValue];
    v6 = v17[5];
    v17[5] = stringValue;
  }

  v7 = v17[5];
  if (!v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v12 = sub_10008142C;
    v13 = &unk_100A037D8;
    selfCopy = self;
    v15 = &v16;
    v8 = v11;
    os_unfair_lock_lock_with_options();
    v12(v8);
    os_unfair_lock_unlock(&self->_accessLock);

    v7 = v17[5];
  }

  v9 = v7;
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (void)_simulatedUpdateItems:(id)items
{
  itemsCopy = items;
  libraryManager = self->_libraryManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100081534;
  v7[3] = &unk_100A044A0;
  v8 = itemsCopy;
  selfCopy = self;
  v6 = itemsCopy;
  [(BKLibraryManager *)libraryManager performBlockOnWorkerQueue:v7];
}

- (void)simulateLibrary:(id)library :(id)a4
{
  v6 = a4;
  v7 = [(BKLibraryItemStateProvider *)self _simulateAssetIDFromItemIdentifier:library];
  v8 = [&off_100A43B88 objectForKeyedSubscript:v6];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  if (v7)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000817EC;
    v12[3] = &unk_100A04CF0;
    v12[4] = self;
    v14 = unsignedIntegerValue;
    v10 = v7;
    v13 = v10;
    os_unfair_lock_lock_with_options();
    sub_1000817EC(v12);
    os_unfair_lock_unlock(&self->_accessLock);
    v15 = v10;
    v11 = [NSArray arrayWithObjects:&v15 count:1];
    [(BKLibraryItemStateProvider *)self _simulatedUpdateItems:v11];
  }
}

- (void)simulateDownload:(id)download :(id)a4
{
  v6 = a4;
  v7 = [(BKLibraryItemStateProvider *)self _simulateAssetIDFromItemIdentifier:download];
  v8 = [&off_100A43BB0 objectForKeyedSubscript:v6];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  if (v7)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000819E0;
    v12[3] = &unk_100A04CF0;
    v12[4] = self;
    v14 = unsignedIntegerValue;
    v10 = v7;
    v13 = v10;
    os_unfair_lock_lock_with_options();
    sub_1000819E0(v12);
    os_unfair_lock_unlock(&self->_accessLock);
    v15 = v10;
    v11 = [NSArray arrayWithObjects:&v15 count:1];
    [(BKLibraryItemStateProvider *)self _simulatedUpdateItems:v11];
  }
}

- (void)simulateClear:(id)clear
{
  v4 = [(BKLibraryItemStateProvider *)self _simulateAssetIDFromItemIdentifier:clear];
  v5 = v4;
  if (v4)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100081B90;
    v11 = &unk_100A03440;
    selfCopy = self;
    v6 = v4;
    v13 = v6;
    os_unfair_lock_lock_with_options();
    sub_100081B90(&v8);
    os_unfair_lock_unlock(&self->_accessLock);
    v14 = v6;
    v7 = [NSArray arrayWithObjects:&v14 count:1, v8, v9];
    [(BKLibraryItemStateProvider *)self _simulatedUpdateItems:v7];
  }
}

- (void)simulateClearAll
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100027314;
  v14 = sub_1000275D0;
  v15 = objc_opt_new();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_100081D60;
  v7 = &unk_100A036C0;
  selfCopy = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock_with_options();
  v6(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  allObjects = [v11[5] allObjects];
  [(BKLibraryItemStateProvider *)self _simulatedUpdateItems:allObjects];

  _Block_object_dispose(&v10, 8);
}

- (void)downloadQueue:(id)queue purchaseAttemptForRequest:(id)request
{
  storeIdentifier = [request storeIdentifier];
  stringValue = [storeIdentifier stringValue];

  if (stringValue)
  {
    [(BKLibraryItemStateProvider *)self updateStateToPurchasingForIdentifier:stringValue];
    storeIDsPurchasing = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
    [storeIDsPurchasing addObject:stringValue];
  }
}

- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error
{
  statesCopy = states;
  errorCopy = error;
  if (errorCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [statesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(statesCopy);
          }

          [(BKLibraryItemStateProvider *)self _handleDownloadError:errorCopy downloadStatus:*(*(&v13 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [statesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)_handleDownloadError:(id)error downloadStatus:(id)status
{
  statusCopy = status;
  storePlaylistID = [statusCopy storePlaylistID];
  v6 = storePlaylistID;
  if (storePlaylistID)
  {
    storeID = storePlaylistID;
  }

  else
  {
    storeID = [statusCopy storeID];
  }

  v8 = storeID;

  stringValue = [v8 stringValue];
  if (stringValue)
  {
    [(BKLibraryItemStateProvider *)self updateStateToDownloadFailedForIdentifier:stringValue];
    storeIDsPurchasing = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
    [storeIDsPurchasing removeObject:stringValue];
  }
}

@end