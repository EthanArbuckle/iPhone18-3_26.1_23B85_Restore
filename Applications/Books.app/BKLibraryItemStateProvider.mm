@interface BKLibraryItemStateProvider
+ (id)_propertiesToMonitor;
- (BKLibraryItemStateProvider)initWithLibraryManager:(id)a3;
- (BOOL)_updateItemStateFieldsFromMediaLibrary:(id)a3;
- (id)_simulateAssetIDFromItemIdentifier:(id)a3;
- (id)_stateForItemIdentifier:(id)a3 libraryAsset:(id)a4;
- (id)itemStateWithIdentifier:(id)a3;
- (id)itemsOfInterest;
- (void)_handleDownloadError:(id)a3 downloadStatus:(id)a4;
- (void)_mediaLibraryDidChange:(id)a3;
- (void)_minifiedAssetPresentersChangedNotification:(id)a3;
- (void)_simulatedUpdateItems:(id)a3;
- (void)_storeAvailableUpdatesChangedNotification:(id)a3;
- (void)_updateItemStatesForAssetIDs:(id)a3;
- (void)dealloc;
- (void)downloadQueue:(id)a3 downloadStates:(id)a4 didCompleteWithError:(id)a5;
- (void)downloadQueue:(id)a3 purchaseAttemptForRequest:(id)a4;
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)simulateClear:(id)a3;
- (void)simulateClearAll;
- (void)simulateDownload:(id)a3 :(id)a4;
- (void)simulateLibrary:(id)a3 :(id)a4;
- (void)updateInterest:(id)a3;
- (void)updateStateToDownloadFailedForIdentifier:(id)a3;
- (void)updateStateToPurchaseFailedForIdentifier:(id)a3;
- (void)updateStateToPurchasingForIdentifier:(id)a3;
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

- (BKLibraryItemStateProvider)initWithLibraryManager:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = BKLibraryItemStateProvider;
  v6 = [(BKLibraryItemStateProvider *)&v29 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_libraryManager, a3);
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
    v15 = [v5 persistentStoreCoordinator];
    v16 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
    v17 = +[BKLibraryItemStateProvider _propertiesToMonitor];
    v18 = [v14 initWithContext:0 coordinator:v15 entityName:@"BKLibraryAsset" predicate:v16 mapProperty:@"assetID" propertiesOfInterest:v17 observer:v7];
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
  v5 = [(BKLibraryItemStateProvider *)self purchaseObserver];
  [v4 removeObserver:v5];

  v6 = +[BLDownloadQueue sharedInstance];
  [v6 removeObserver:self];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSMutableDictionary *)self->_audiobookStatusMap allValues];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11) removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACCA38];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12.receiver = self;
  v12.super_class = BKLibraryItemStateProvider;
  [(BKLibraryItemStateProvider *)&v12 dealloc];
}

- (void)_mediaLibraryDidChange:(id)a3
{
  v4 = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
  v5 = [v4 allObjects];

  if ([v5 count])
  {
    [(BKLibraryItemStateProvider *)self _updateItemStatesForAssetIDs:v5];
  }
}

- (void)updateInterest:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007F118;
  v5[3] = &unk_100A03440;
  v5[4] = self;
  v6 = a3;
  v4 = v6;
  os_unfair_lock_lock_with_options();
  sub_10007F118(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [v5 addedObjects];
  [v6 addObjectsFromArray:v7];

  v8 = [v5 deletedObjects];
  [v6 addObjectsFromArray:v8];

  v9 = [v5 updatedObjects];
  [v6 addObjectsFromArray:v9];

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10007F2A8;
  v16 = &unk_100A03440;
  v10 = v6;
  v17 = v10;
  v18 = self;
  os_unfair_lock_lock_with_options();
  sub_10007F2A8(&v13);
  os_unfair_lock_unlock(&self->_accessLock);
  v11 = BKLibraryItemStateProviderLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10078B0B0(v5, v10, v11);
  }

  if ([v10 count])
  {
    v12 = [v10 allObjects];
    [(BKLibraryItemStateProvider *)self _updateItemStatesForAssetIDs:v12];
  }
}

- (void)_storeAvailableUpdatesChangedNotification:(id)a3
{
  v4 = +[NSMutableSet set];
  v5 = +[BKAppDelegate delegate];
  v6 = [v5 storeController];
  v7 = [v6 storeIDsWithAvailableUpdates];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007F3EC;
  v11[3] = &unk_100A03A30;
  v12 = v4;
  v13 = self;
  v14 = v7;
  v8 = v7;
  v9 = v4;
  os_unfair_lock_lock_with_options();
  sub_10007F3EC(v11);
  os_unfair_lock_unlock(&self->_accessLock);
  v10 = [v9 allObjects];
  [(BKLibraryItemStateProvider *)self _updateItemStatesForAssetIDs:v10];
}

- (void)_minifiedAssetPresentersChangedNotification:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v35 = v4;
  v5 = [v4 object];
  v6 = BUDynamicCast();

  v34 = v6;
  v7 = [v6 minifiedAssetPresenters];
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
  v11 = [(NSMutableDictionary *)audiobookStatusMap allValues];
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v41 + 1) + 8 * i) removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACCA38];
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v13);
  }

  v36 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = v7;
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
        v22 = [v21 minifiedAssetPresenterAssetID];
        v23 = [v21 minifiedAssetStatus];
        objc_opt_class();
        v33 = &OBJC_PROTOCOL___AEAssetAudiobookStatus;
        v24 = BUClassAndProtocolCast();
        v25 = v24;
        if (v22)
        {
          v26 = v24 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          [(NSMutableDictionary *)v36 setObject:v24 forKey:v22, &OBJC_PROTOCOL___AEAssetAudiobookStatus];
          [v25 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACCA38];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v18);
  }

  v27 = [(NSMutableDictionary *)v36 allKeys];
  v28 = [NSMutableSet setWithArray:v27];

  v29 = [(NSMutableDictionary *)self->_audiobookStatusMap allKeys];
  v30 = [NSMutableSet setWithArray:v29];

  [v28 unionSet:v30];
  v31 = self->_audiobookStatusMap;
  self->_audiobookStatusMap = v36;

  v32 = [v28 allObjects];
  [(BKLibraryItemStateProvider *)self _updateItemStatesForAssetIDs:v32];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_100ACCA38 == a6)
  {
    v11 = a4;
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
    v10 = a4;
    [(BKLibraryItemStateProvider *)&v15 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

- (void)_updateItemStatesForAssetIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 mutableCopy];
    libraryManager = self->_libraryManager;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007F9C4;
    v8[3] = &unk_100A04CA0;
    v9 = v4;
    v10 = self;
    v11 = v5;
    v7 = v5;
    [(BKLibraryManager *)libraryManager fetchLibraryAssetsFromAssetIDs:v9 handler:v8];
  }
}

- (id)_stateForItemIdentifier:(id)a3 libraryAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setItemIdentifier:v6];
  if ([(NSMutableSet *)self->_storeIDsPurchasing containsObject:v6])
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
  [v8 setFinished:{objc_msgSend(v7, "isFinished")}];
  [v8 setHasSpecifiedFinishedDate:{objc_msgSend(v7, "hasSpecifiedFinishedDate")}];
  [v8 setTrackedAsRecent:{objc_msgSend(v7, "isTrackedAsRecent")}];
  [v8 setIsPurchased:0];
  [v8 setAssetIsPreorderable:{objc_msgSend(v7, "isPreorderBook")}];
  v10 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
  if (!v7)
  {
    goto LABEL_61;
  }

  if ([v7 isCloud])
  {
    v11 = 0;
  }

  else if ([v7 isLocal])
  {
    v11 = 2;
  }

  else
  {
    if (![v7 isDownloading])
    {
      goto LABEL_12;
    }

    v11 = 1;
  }

  [v8 setDownload:v11];
LABEL_12:
  if ([v7 isPreorderBook])
  {
    v12 = v8;
    v13 = 3;
LABEL_14:
    [v12 setLibrary:v13];
    [v8 setIsPurchased:1];
    goto LABEL_23;
  }

  if ([v7 isStoreItem])
  {
    v14 = v8;
    v15 = 1;
LABEL_22:
    [v14 setLibrary:v15];
    goto LABEL_23;
  }

  if ([v7 isStore] && (objc_msgSend(v7, "isSeriesItem") & 1) == 0 && (objc_msgSend(v7, "isSample") & 1) == 0)
  {
    v12 = v8;
    v13 = 4;
    goto LABEL_14;
  }

  if (([v7 isStore] & 1) == 0)
  {
    v14 = v8;
    v15 = 5;
    goto LABEL_22;
  }

LABEL_23:
  v16 = [v7 seriesType];
  if (v16 <= 3)
  {
    [v8 setSeriesType:v16];
  }

  [v8 setIsInSamples:{objc_msgSend(v7, "isInSamples")}];
  [v8 setIsSample:{objc_msgSend(v7, "isSample")}];
  if (![v7 streamable])
  {
    if ((([v7 isAudiobook] & 1) != 0 || objc_msgSend(v8, "library") != 4) && objc_msgSend(v8, "library") != 3)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  v17 = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
  v18 = [v17 containsObject:v6];

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
      v61 = v6;
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
      v21 = BKLibraryItemStateProviderLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v6;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Item (%@) belongs to a family member, allow download progress and no streaming", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v44 = [v8 isStreamable];
    v19 = BKLibraryItemStateProviderLog();
    v45 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v44)
    {
      if (!v45)
      {
        goto LABEL_32;
      }

      *buf = 138412290;
      v61 = v6;
      v20 = "Removing item (%@) from purchasing store IDs as it is streamable in the media library";
      goto LABEL_31;
    }

    if (v45)
    {
      *buf = 138412290;
      v61 = v6;
      v22 = "Set item (%@) to purchasing state as it is not yet playable and is not a family purchase";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v19 = BKLibraryItemStateProviderLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v6;
    v20 = "Removing item (%@) from purchasing store IDs as it is local in the media library";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
  }

LABEL_32:

LABEL_36:
  v21 = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
  [v21 removeObject:v6];
LABEL_37:

LABEL_43:
  v47 = self;
  if ([v7 isDownloadingSupplementalContent])
  {
    [v8 setDownload:1];
  }

  v23 = [v7 readingProgress];
  v24 = +[NSString bc_formattedReadingProgress:isFinished:](NSString, "bc_formattedReadingProgress:isFinished:", v23, [v7 isFinished]);
  [v8 setReadingProgress:v24];

  v25 = [v7 readingProgress];
  [v25 doubleValue];
  [v8 setReadingProgressValue:?];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v26 = [v7 collectionMembers];
  v27 = [v26 countByEnumeratingWithState:&v55 objects:v59 count:16];
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
          objc_enumerationMutation(v26);
        }

        v32 = [*(*(&v55 + 1) + 8 * i) collection];
        v33 = [v32 collectionID];
        v34 = [v33 isEqualToString:v30];

        if (v34)
        {
          [v8 setWantToRead:1];
          goto LABEL_55;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_55:

  self = v47;
  audiobookStatusMap = v47->_audiobookStatusMap;
  v36 = [v7 assetID];
  v37 = [(NSMutableDictionary *)audiobookStatusMap objectForKeyedSubscript:v36];

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
  v53 = v47;
  v6 = v46;
  v54 = v46;
  os_unfair_lock_lock_with_options();
  sub_1000803EC(v51);
  os_unfair_lock_unlock(&v47->_accessLock);

LABEL_61:
  v48[0] = _NSConcreteStackBlock;
  v48[1] = v10[23];
  v48[2] = sub_100080430;
  v48[3] = &unk_100A03A30;
  v48[4] = self;
  v49 = v6;
  v39 = v8;
  v50 = v39;
  v40 = v6;
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
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  v7(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (id)itemStateWithIdentifier:(id)a3
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
  v4 = a3;
  v11 = v4;
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

- (void)updateStateToPurchasingForIdentifier:(id)a3
{
  v4 = a3;
  libraryManager = self->_libraryManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100080908;
  v7[3] = &unk_100A044A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BKLibraryManager *)libraryManager performBlockOnWorkerQueue:v7];
}

- (void)updateStateToPurchaseFailedForIdentifier:(id)a3
{
  v4 = a3;
  libraryManager = self->_libraryManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100080A48;
  v7[3] = &unk_100A044A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BKLibraryManager *)libraryManager performBlockOnWorkerQueue:v7];
}

- (void)updateStateToDownloadFailedForIdentifier:(id)a3
{
  v4 = a3;
  libraryManager = self->_libraryManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100080B88;
  v7[3] = &unk_100A044A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BKLibraryManager *)libraryManager performBlockOnWorkerQueue:v7];
}

- (BOOL)_updateItemStateFieldsFromMediaLibrary:(id)a3
{
  v58 = a3;
  v3 = [v58 itemIdentifier];
  v4 = +[MPMediaQuery bk_audiobooksQuery];
  if (v4 && [v3 length])
  {
    v5 = [MPMediaPropertyPredicate predicateWithValue:v3 forProperty:MPMediaItemPropertyStorePlaylistID];
    v6 = [MPMediaPropertyPredicate predicateWithValue:v3 forProperty:MPMediaItemPropertyStoreID];
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
          v11 = [v10 items];
          v12 = [v11 countByEnumeratingWithState:&v62 objects:v74 count:16];
          if (v12)
          {
            v13 = v12;
            v49 = i;
            v53 = 0;
            v52 = 0;
            v14 = 0;
            v15 = *v63;
            v59 = *v63;
            v60 = v11;
            do
            {
              v16 = 0;
              v61 = v13;
              do
              {
                if (*v63 != v15)
                {
                  objc_enumerationMutation(v11);
                }

                v17 = *(*(&v62 + 1) + 8 * v16);
                v18 = [v17 bk_storeID];
                v19 = [v18 stringValue];
                v20 = [v3 isEqualToString:v19];

                if (v20)
                {
                  v21 = v3;
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

                  v30 = [(BKLibraryItemStateProvider *)self libraryManager];
                  v31 = [v30 isFamilyPurchaseWithFamilyID:v25 purchaserDSID:v29 downloaderDSID:v27];

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
                      v38 = [v33 BOOLValue];
                      *buf = 67109376;
                      v71 = v38;
                      v72 = 1024;
                      v73 = v31;
                      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Found a non-cloud audiobook media item that is local? %d, is family? %d.", buf, 0xEu);
                    }

                    v52 = 1;
                  }

                  v15 = v59;

                  [v58 setFamilyPurchase:v31];
                  v14 = 1;
                  v3 = v21;
                  v11 = v60;
                  v13 = v61;
                }

                v16 = v16 + 1;
              }

              while (v13 != v16);
              v13 = [v11 countByEnumeratingWithState:&v62 objects:v74 count:16];
            }

            while (v13);

            i = v49;
            if (v14)
            {
              [v58 setStreamable:v53 & 1];
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

              [v58 setDownload:v41];
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

- (id)_simulateAssetIDFromItemIdentifier:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100027314;
  v20 = sub_1000275D0;
  objc_opt_class();
  v21 = BUDynamicCast();
  if (!v17[5] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 stringValue];
    v6 = v17[5];
    v17[5] = v5;
  }

  v7 = v17[5];
  if (!v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v12 = sub_10008142C;
    v13 = &unk_100A037D8;
    v14 = self;
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

- (void)_simulatedUpdateItems:(id)a3
{
  v4 = a3;
  libraryManager = self->_libraryManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100081534;
  v7[3] = &unk_100A044A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(BKLibraryManager *)libraryManager performBlockOnWorkerQueue:v7];
}

- (void)simulateLibrary:(id)a3 :(id)a4
{
  v6 = a4;
  v7 = [(BKLibraryItemStateProvider *)self _simulateAssetIDFromItemIdentifier:a3];
  v8 = [&off_100A43B88 objectForKeyedSubscript:v6];

  v9 = [v8 unsignedIntegerValue];
  if (v7)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000817EC;
    v12[3] = &unk_100A04CF0;
    v12[4] = self;
    v14 = v9;
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

- (void)simulateDownload:(id)a3 :(id)a4
{
  v6 = a4;
  v7 = [(BKLibraryItemStateProvider *)self _simulateAssetIDFromItemIdentifier:a3];
  v8 = [&off_100A43BB0 objectForKeyedSubscript:v6];

  v9 = [v8 unsignedIntegerValue];
  if (v7)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000819E0;
    v12[3] = &unk_100A04CF0;
    v12[4] = self;
    v14 = v9;
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

- (void)simulateClear:(id)a3
{
  v4 = [(BKLibraryItemStateProvider *)self _simulateAssetIDFromItemIdentifier:a3];
  v5 = v4;
  if (v4)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100081B90;
    v11 = &unk_100A03440;
    v12 = self;
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
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock_with_options();
  v6(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = [v11[5] allObjects];
  [(BKLibraryItemStateProvider *)self _simulatedUpdateItems:v4];

  _Block_object_dispose(&v10, 8);
}

- (void)downloadQueue:(id)a3 purchaseAttemptForRequest:(id)a4
{
  v5 = [a4 storeIdentifier];
  v7 = [v5 stringValue];

  if (v7)
  {
    [(BKLibraryItemStateProvider *)self updateStateToPurchasingForIdentifier:v7];
    v6 = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
    [v6 addObject:v7];
  }
}

- (void)downloadQueue:(id)a3 downloadStates:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v7);
          }

          [(BKLibraryItemStateProvider *)self _handleDownloadError:v8 downloadStatus:*(*(&v13 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)_handleDownloadError:(id)a3 downloadStatus:(id)a4
{
  v11 = a4;
  v5 = [v11 storePlaylistID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v11 storeID];
  }

  v8 = v7;

  v9 = [v8 stringValue];
  if (v9)
  {
    [(BKLibraryItemStateProvider *)self updateStateToDownloadFailedForIdentifier:v9];
    v10 = [(BKLibraryItemStateProvider *)self storeIDsPurchasing];
    [v10 removeObject:v9];
  }
}

@end