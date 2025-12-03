@interface BKLibraryAssetStatusController
+ (id)sharedController;
- (BKLibraryAssetStatusController)init;
- (BKLibraryAssetStatusController)initWithLibrary:(id)library;
- (BKLibraryAssetStatusControllerStoreDelegate)storeDelegate;
- (BOOL)_filterDownloadForAsset:(id)asset;
- (BOOL)_filterUpdateForAsset:(id)asset;
- (BOOL)_filterUploadsForAsset:(id)asset;
- (BOOL)_hasActiveDownloadForAssetID:(id)d;
- (BOOL)_includeInDownloadsForAssetID:(id)d;
- (BOOL)_includeInUploadsForAssetID:(id)d;
- (BOOL)_includedInUpdatesForAssetID:(id)d;
- (BOOL)_isSignedInForAssetID:(id)d;
- (BOOL)_passesExplicitContentFilter:(id)filter;
- (BUCoalescingCallBlock)downloadRelatedNotificationCoalescingBlock;
- (id)_addArrayControllerWithFilter:(id)filter;
- (id)_persistedInfoURL;
- (id)_updateInfoForAssetID:(id)d;
- (id)addStatusObserverWithFilter:(id)filter notify:(id)notify;
- (id)ephemeralStatusForAssetID:(id)d;
- (id)statusForAssetID:(id)d;
- (unint64_t)downloadAssetsCount;
- (unint64_t)updateAssetsCount;
- (unint64_t)uploadAssetsCount;
- (void)_addAssetID:(id)d;
- (void)_downloadStatusNotification:(id)notification;
- (void)_libraryOwnershipNotification:(id)notification;
- (void)_libraryUpdateNotification:(id)notification;
- (void)_processDownloadRelatedNotificationsCompletion:(id)completion;
- (void)_processDownloadStatuses:(id)statuses completion:(id)completion;
- (void)_processLibraryAssetChanges:(id)changes;
- (void)_processLibraryOwnershipNotification:(id)notification completion:(id)completion;
- (void)_readPersistedInfoFromDisk;
- (void)_removeAssetID:(id)d;
- (void)_removeAssetIDs:(id)ds;
- (void)_removeTrackingOfAssetID:(id)d;
- (void)_showUpdateFailureForAssetID:(id)d;
- (void)_startUpdateForAssetIDs:(id)ds;
- (void)_trimUpdateDictionary;
- (void)_updateAcknowledgeCountsWithAssetIDs:(id)ds;
- (void)_updateAssetsWithBlock:(id)block;
- (void)_updateCountsForAssetIDs:(id)ds;
- (void)_updateSeriesContainerDownloadStatusForAssetIDs:(id)ds;
- (void)_updateTotalPercentCompleteForAssetIDs:(id)ds;
- (void)_updateUploadStatusForAssetIDs:(id)ds;
- (void)_updatedAssets;
- (void)_writePersistedInfoToDisk;
- (void)_writePersistentInfoIfNeeded;
- (void)acknowledgeCurrentUpdatesAndDownloads;
- (void)cancelDownloadOfAsset:(id)asset;
- (void)checkForUpdates:(id)updates;
- (void)dealloc;
- (void)makeAccountPrimaryAndCheckForUpdateAndUpdateAssetUnacknowledged:(id)unacknowledged;
- (void)pauseDownloadOfAsset:(id)asset;
- (void)primaryAccountChanged;
- (void)removeCompletedDownloads;
- (void)removeCompletedUploads;
- (void)restartDownloadOfAsset:(id)asset;
- (void)restrictionsForExplicitContentAllowedChanged:(BOOL)changed;
- (void)resumeDownloadOfAsset:(id)asset;
- (void)setupStateObservation;
@end

@implementation BKLibraryAssetStatusController

+ (id)sharedController
{
  if (qword_EFCB0 != -1)
  {
    sub_8FFF8();
  }

  v3 = qword_EFCB8;

  return v3;
}

- (BKLibraryAssetStatusController)init
{
  v3 = +[BKLibraryManager defaultManager];
  v4 = [(BKLibraryAssetStatusController *)self initWithLibrary:v3];

  return v4;
}

- (BKLibraryAssetStatusController)initWithLibrary:(id)library
{
  libraryCopy = library;
  v59.receiver = self;
  v59.super_class = BKLibraryAssetStatusController;
  v5 = [(BKLibraryAssetStatusController *)&v59 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.iBooks.BKLibraryAssetStatusController.statuses", v6);
    v8 = *(v5 + 18);
    *(v5 + 18) = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create("com.apple.iBooks.BKLibraryAssetStatusController.monitors", v10);
    v12 = *(v5 + 19);
    *(v5 + 19) = v11;

    v13 = objc_opt_new();
    v14 = *(v5 + 27);
    *(v5 + 27) = v13;

    v15 = objc_opt_new();
    v16 = *(v5 + 4);
    *(v5 + 4) = v15;

    v17 = [[BKAssetArrayController alloc] initWithContent:*(v5 + 4)];
    v18 = *(v5 + 2);
    *(v5 + 2) = v17;

    v19 = [[BKAssetArrayController alloc] initWithContent:*(v5 + 4)];
    v20 = *(v5 + 1);
    *(v5 + 1) = v19;

    v21 = [[BKAssetArrayController alloc] initWithContent:*(v5 + 4)];
    v22 = *(v5 + 3);
    *(v5 + 3) = v21;

    v23 = objc_opt_new();
    v24 = *(v5 + 5);
    *(v5 + 5) = v23;

    *(v5 + 22) = 0x3FF0000000000000;
    v5[162] = 0;
    *(v5 + 25) = 0;
    *(v5 + 80) = 0;
    v25 = objc_opt_new();
    v26 = *(v5 + 15);
    *(v5 + 15) = v25;

    [v5 _readPersistedInfoFromDisk];
    v27 = +[BURestrictionsProvider sharedInstance];
    [v27 addObserver:v5];

    objc_initWeak(&location, v5);
    v28 = *(v5 + 2);
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_40494;
    v56[3] = &unk_D6830;
    objc_copyWeak(&v57, &location);
    [v28 setFilter:v56];
    v29 = *(v5 + 1);
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_404E8;
    v54[3] = &unk_D6830;
    objc_copyWeak(&v55, &location);
    [v29 setFilter:v54];
    v30 = *(v5 + 3);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_4053C;
    v52[3] = &unk_D6830;
    objc_copyWeak(&v53, &location);
    [v30 setFilter:v52];
    [v5 setupStateObservation];
    v31 = [libraryCopy dataSourcesConformingToProtocol:&OBJC_PROTOCOL___BKBookDownloadController];
    v32 = *(v5 + 7);
    *(v5 + 7) = v31;

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = *(v5 + 7);
    v34 = [v33 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v34)
    {
      v35 = *v49;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v49 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v48 + 1) + 8 * i);
          [v37 setExplicitContentRestricted:v5[136]];
          [v37 updateDownloadStatus];
        }

        v34 = [v33 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v34);
    }

    v38 = [libraryCopy dataSourceConformingToProtocol:&OBJC_PROTOCOL___BKBookUpdateController];
    v39 = *(v5 + 8);
    *(v5 + 8) = v38;

    v40 = *(v5 + 19);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_40590;
    block[3] = &unk_D5420;
    v41 = v5;
    v46 = v41;
    v47 = libraryCopy;
    dispatch_async(v40, block);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_406D0;
    v43[3] = &unk_D5528;
    v44 = v41;
    [v44 _updateAssetsWithBlock:v43];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v55);
    objc_destroyWeak(&v57);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_updatedAssets
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_40AE0;
  v20[3] = &unk_D5528;
  v20[4] = self;
  v3 = objc_retainBlock(v20);
  if (v3)
  {
    if (+[NSThread isMainThread])
    {
      (v3[2])(v3);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_40B30;
      block[3] = &unk_D6858;
      v19 = v3;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_additionalArrayControllers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_40B40;
        v13[3] = &unk_D5528;
        v13[4] = v9;
        v10 = objc_retainBlock(v13);
        if (v10)
        {
          if (+[NSThread isMainThread])
          {
            (v10[2])(v10);
          }

          else
          {
            v11[0] = _NSConcreteStackBlock;
            v11[1] = 3221225472;
            v11[2] = sub_40B48;
            v11[3] = &unk_D6858;
            v12 = v10;
            dispatch_async(&_dispatch_main_q, v11);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)_addAssetID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    if (([(NSMutableArray *)self->_assetsArray containsObject:dCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_assetsArray addObject:v5];
    }
  }

  _objc_release_x1();
}

- (void)_removeAssetID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    if ([(NSMutableArray *)self->_assetsArray containsObject:dCopy])
    {
      [(NSMutableArray *)self->_assetsArray removeObject:v5];
    }
  }

  _objc_release_x1();
}

- (void)_removeAssetIDs:(id)ds
{
  dsCopy = ds;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(dsCopy);
        }

        [(NSMutableArray *)self->_assetsArray removeObject:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [dsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(BKLibraryAssetStatusController *)self _updatedAssets];
}

- (id)_persistedInfoURL
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:0];

  v4 = [v3 URLByAppendingPathComponent:@"BKLibraryAssetStatusController" isDirectory:0];

  return v4;
}

- (void)_writePersistedInfoToDisk
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  acknowledgedDownloads = self->_acknowledgedDownloads;
  if (acknowledgedDownloads)
  {
    [v3 setObject:acknowledgedDownloads forKeyedSubscript:@"AckedDownloads"];
  }

  acknowledgedUpdates = self->_acknowledgedUpdates;
  if (acknowledgedUpdates)
  {
    [v4 setObject:acknowledgedUpdates forKeyedSubscript:@"AckedUpdates"];
  }

  updateDictionary = self->_updateDictionary;
  if (updateDictionary)
  {
    [v4 setObject:updateDictionary forKeyedSubscript:@"Updates"];
  }

  backgroundQueue = self->_backgroundQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_40EA8;
  v10[3] = &unk_D5420;
  v11 = v4;
  selfCopy = self;
  v9 = v4;
  dispatch_async(backgroundQueue, v10);
}

- (void)_readPersistedInfoFromDisk
{
  _persistedInfoURL = [(BKLibraryAssetStatusController *)self _persistedInfoURL];
  v4 = [NSData dataWithContentsOfURL:_persistedInfoURL];

  persistentInfo = self->_persistentInfo;
  self->_persistentInfo = 0;

  acknowledgedDownloads = self->_acknowledgedDownloads;
  self->_acknowledgedDownloads = 0;

  acknowledgedUpdates = self->_acknowledgedUpdates;
  self->_acknowledgedUpdates = 0;

  updateDictionary = self->_updateDictionary;
  self->_updateDictionary = 0;

  if (v4)
  {
    v35 = 0;
    v9 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v35];
    v10 = v35;
    if (v10)
    {
      v11 = BKLibraryLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_9000C(v10, v11);
      }
    }

    else
    {
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v11 = [NSSet setWithObjects:v12, v13, v14, objc_opt_class(), 0];
      objc_opt_class();
      v15 = [v9 decodeObjectOfClasses:v11 forKey:@"Root"];
      v16 = BUDynamicCast();

      objc_storeStrong(&self->_persistentInfo, v16);
      objc_opt_class();
      v17 = [v16 objectForKeyedSubscript:@"AckedDownloads"];
      v18 = BUDynamicCast();
      v19 = [v18 mutableCopy];
      v20 = self->_acknowledgedDownloads;
      self->_acknowledgedDownloads = v19;

      objc_opt_class();
      v21 = [v16 objectForKeyedSubscript:@"AckedUpdates"];
      v22 = BUDynamicCast();
      v23 = [v22 mutableCopy];
      v24 = self->_acknowledgedUpdates;
      self->_acknowledgedUpdates = v23;

      objc_opt_class();
      v25 = [v16 objectForKeyedSubscript:@"Updates"];
      v26 = BUDynamicCast();
      v27 = [v26 mutableCopy];
      v28 = self->_updateDictionary;
      self->_updateDictionary = v27;
    }
  }

  if (!self->_acknowledgedDownloads)
  {
    v29 = objc_opt_new();
    v30 = self->_acknowledgedDownloads;
    self->_acknowledgedDownloads = v29;
  }

  if (!self->_acknowledgedUpdates)
  {
    v31 = objc_opt_new();
    v32 = self->_acknowledgedUpdates;
    self->_acknowledgedUpdates = v31;
  }

  if (!self->_updateDictionary)
  {
    v33 = objc_opt_new();
    v34 = self->_updateDictionary;
    self->_updateDictionary = v33;
  }
}

- (void)_writePersistentInfoIfNeeded
{
  acknowledgedDownloads = self->_acknowledgedDownloads;
  v4 = [(NSDictionary *)self->_persistentInfo objectForKeyedSubscript:@"AckedDownloads"];
  v5 = [(NSMutableSet *)acknowledgedDownloads isEqual:v4];

  acknowledgedUpdates = self->_acknowledgedUpdates;
  v7 = [(NSDictionary *)self->_persistentInfo objectForKeyedSubscript:@"AckedUpdates"];
  v8 = [(NSMutableSet *)acknowledgedUpdates isEqual:v7];

  updateDictionary = self->_updateDictionary;
  v10 = [(NSDictionary *)self->_persistentInfo objectForKeyedSubscript:@"Updates"];
  LODWORD(updateDictionary) = [(NSMutableDictionary *)updateDictionary isEqual:v10];

  if (!updateDictionary || !v8 || (v5 & 1) == 0)
  {

    [(BKLibraryAssetStatusController *)self _writePersistedInfoToDisk];
  }
}

- (id)_updateInfoForAssetID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    objc_opt_class();
    v5 = [(NSMutableDictionary *)self->_updateDictionary objectForKey:dCopy];
    v6 = BUDynamicCast();

    objc_opt_class();
    v7 = BUDynamicCast();
    if (!v7)
    {
      if (v6)
      {
        v8 = [v6 mutableCopy];
      }

      else
      {
        v8 = objc_opt_new();
      }

      v7 = v8;
      updateDictionary = self->_updateDictionary;
      if (!updateDictionary)
      {
        v10 = objc_opt_new();
        v11 = self->_updateDictionary;
        self->_updateDictionary = v10;

        updateDictionary = self->_updateDictionary;
      }

      [(NSMutableDictionary *)updateDictionary setObject:v7 forKey:dCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isSignedInForAssetID:(id)d
{
  dCopy = d;
  v5 = +[BKLibraryManager defaultManager];
  v6 = [v5 libraryAssetOnMainQueueWithAssetID:dCopy];

  if (v6)
  {
    storeID = [v6 storeID];
    if (storeID)
    {
      storeDelegate = [(BKLibraryAssetStatusController *)self storeDelegate];
      accountID = [v6 accountID];
      v10 = [storeDelegate libraryAssetStatusController:self isAccountPrimaryAndSignedIn:accountID];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_hasActiveDownloadForAssetID:(id)d
{
  v3 = [(BKLibraryAssetStatusController *)self statusForAssetID:d];
  v4 = [v3 state] - 2 < &dword_4 + 3;

  return v4;
}

- (BOOL)_passesExplicitContentFilter:(id)filter
{
  if (self->_explicitContentRestricted)
  {
    isExplicit = [filter isExplicit];
    v4 = isExplicit;
    if (isExplicit)
    {
      v5 = [isExplicit BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_includedInUpdatesForAssetID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSMutableDictionary *)self->_statusDictionary objectForKey:dCopy];
    if ([v5 state] == &dword_0 + 1)
    {
      v6 = 1;
    }

    else
    {
      arrangedObjects = [(BKAssetArrayController *)self->_updateAssets arrangedObjects];
      v6 = [arrangedObjects containsObject:dCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_includeInDownloadsForAssetID:(id)d
{
  dCopy = d;
  if (dCopy && ![(BKLibraryAssetStatusController *)self _includedInUpdatesForAssetID:dCopy])
  {
    v5 = [(BKLibraryAssetStatusController *)self _hasActiveDownloadForAssetID:dCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_includeInUploadsForAssetID:(id)d
{
  if (!d)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)self->_statusDictionary objectForKey:?];
  v4 = [v3 state] - 9 < &dword_0 + 3;

  return v4;
}

- (BOOL)_filterUpdateForAsset:(id)asset
{
  assetCopy = asset;
  assetID = [assetCopy assetID];
  if ([(BKLibraryAssetStatusController *)self _includedInUpdatesForAssetID:assetID]&& ([(BKLibraryAssetStatusController *)self _isSignedInForAssetID:assetID]|| [(BKLibraryAssetStatusController *)self _hasActiveDownloadForAssetID:assetID]))
  {
    v6 = [(BKLibraryAssetStatusController *)self _passesExplicitContentFilter:assetCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_filterDownloadForAsset:(id)asset
{
  assetCopy = asset;
  assetID = [assetCopy assetID];
  if ([(BKLibraryAssetStatusController *)self _includeInDownloadsForAssetID:assetID])
  {
    v6 = [(BKLibraryAssetStatusController *)self _passesExplicitContentFilter:assetCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_filterUploadsForAsset:(id)asset
{
  assetID = [asset assetID];
  LOBYTE(self) = [(BKLibraryAssetStatusController *)self _includeInUploadsForAssetID:assetID];

  return self;
}

- (unint64_t)updateAssetsCount
{
  arrangedObjects = [(BKAssetArrayController *)self->_updateAssets arrangedObjects];
  v3 = [arrangedObjects count];

  return v3;
}

- (unint64_t)downloadAssetsCount
{
  arrangedObjects = [(BKAssetArrayController *)self->_downloadAssets arrangedObjects];
  v3 = [arrangedObjects count];

  return v3;
}

- (unint64_t)uploadAssetsCount
{
  arrangedObjects = [(BKAssetArrayController *)self->_uploadAssets arrangedObjects];
  v3 = [arrangedObjects count];

  return v3;
}

- (void)setupStateObservation
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_downloadStatusNotification:" name:@"BKLibraryDownloadStatusNotification" object:0];
  [v4 addObserver:self selector:"_libraryUpdateNotification:" name:@"BKLibraryUpdateNotification" object:0];
  v3 = +[BKLibraryManager defaultManager];
  [v4 addObserver:self selector:"_libraryOwnershipNotification:" name:@"BKLibraryOwnershipDidChangeNotification" object:v3];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[BURestrictionsProvider sharedInstance];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = BKLibraryAssetStatusController;
  [(BKLibraryAssetStatusController *)&v5 dealloc];
}

- (void)_updateTotalPercentCompleteForAssetIDs:(id)ds
{
  dsCopy = ds;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  statusDictionary = self->_statusDictionary;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_41C3C;
  v9[3] = &unk_D6880;
  v6 = dsCopy;
  v10 = v6;
  v11 = &v13;
  v12 = &v17;
  [(NSMutableDictionary *)statusDictionary enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v14[3];
  if (v7)
  {
    v8 = v18[3] / v7;
  }

  else
  {
    v8 = 1.0;
  }

  [(BKLibraryAssetStatusController *)self setDownloadAssetsTotalPercentComplete:v8];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

- (void)_updateSeriesContainerDownloadStatusForAssetIDs:(id)ds
{
  statusDictionary = self->_statusDictionary;
  dsCopy = ds;
  v6 = [(NSMutableDictionary *)statusDictionary copy];
  allKeys = [v6 allKeys];
  v8 = [NSMutableSet setWithArray:allKeys];

  [v8 intersectSet:dsCopy];
  v9 = +[NSMutableDictionary dictionary];
  v10 = +[NSMutableDictionary dictionary];
  v11 = +[NSMutableSet set];
  v12 = +[BKLibraryManager defaultManager];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_41EE0;
  v20[3] = &unk_D68D0;
  v13 = v8;
  v21 = v13;
  v14 = v6;
  v22 = v14;
  v15 = v12;
  v23 = v15;
  v16 = v11;
  v24 = v16;
  v17 = v10;
  v25 = v17;
  v18 = v9;
  v26 = v18;
  selfCopy = self;
  v19 = objc_retainBlock(v20);
  if (+[NSThread isMainThread])
  {
    [v15 performNamed:@"updateSeriesContainerDownloadStatus" workerQueueBlock:v19];
  }

  else
  {
    [v15 performNamed:@"updateSeriesContainerDownloadStatus" workerQueueBlockAndWait:v19];
  }
}

- (void)_updateCountsForAssetIDs:(id)ds
{
  dsCopy = ds;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  statusDictionary = self->_statusDictionary;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_42748;
  v7[3] = &unk_D6880;
  v6 = dsCopy;
  v8 = v6;
  v9 = &v15;
  v10 = &v11;
  [(NSMutableDictionary *)statusDictionary enumerateKeysAndObjectsUsingBlock:v7];
  if (self->_canResumeCount != v12[3])
  {
    [(BKLibraryAssetStatusController *)self setCanResumeCount:?];
  }

  if (self->_canPauseCount != v16[3])
  {
    [(BKLibraryAssetStatusController *)self setCanPauseCount:?];
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

- (void)_updateAcknowledgeCountsWithAssetIDs:(id)ds
{
  dsCopy = ds;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  statusDictionary = self->_statusDictionary;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_42928;
  v10 = &unk_D68F8;
  v6 = dsCopy;
  v11 = v6;
  selfCopy = self;
  v13 = &v19;
  v14 = &v15;
  [(NSMutableDictionary *)statusDictionary enumerateKeysAndObjectsUsingBlock:&v7];
  if (self->_unacknowledgedDownloadsCount != v20[3])
  {
    [(BKLibraryAssetStatusController *)self setUnacknowledgedDownloadsCount:v7, v8, v9, v10];
  }

  if (self->_unacknowledgedUpdatesCount != v16[3])
  {
    [(BKLibraryAssetStatusController *)self setUnacknowledgedUpdatesCount:?];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)_updateUploadStatusForAssetIDs:(id)ds
{
  dsCopy = ds;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_42B6C;
  v6[3] = &unk_D6920;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v15;
  v6[7] = &v7;
  [dsCopy enumerateObjectsUsingBlock:v6];
  if (v12[3])
  {
    v5 = 1;
  }

  else if (v16[3])
  {
    v5 = 2;
  }

  else if (v8[3])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 != self->_uploadStatus)
  {
    [(BKLibraryAssetStatusController *)self setUploadStatus:?];
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

- (void)_trimUpdateDictionary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_42D0C;
  v9 = sub_42D1C;
  v10 = 0;
  updateDictionary = self->_updateDictionary;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_42D24;
  v4[3] = &unk_D6948;
  v4[4] = &v5;
  [(NSMutableDictionary *)updateDictionary enumerateKeysAndObjectsUsingBlock:v4];
  if (v6[5])
  {
    [(NSMutableDictionary *)self->_updateDictionary removeObjectsForKeys:?];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)_updateAssetsWithBlock:(id)block
{
  blockCopy = block;
  arrangedObjects = [(BKAssetArrayController *)self->_updateAssets arrangedObjects];
  v5 = [arrangedObjects count];

  arrangedObjects2 = [(BKAssetArrayController *)self->_downloadAssets arrangedObjects];
  v7 = [arrangedObjects2 count];

  arrangedObjects3 = [(BKAssetArrayController *)self->_uploadAssets arrangedObjects];
  v9 = [arrangedObjects3 count];

  v21 = (v5 | v7 | v9) != 0;
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v10 = v5 != 0;
  arrangedObjects4 = [(BKAssetArrayController *)self->_updateAssets arrangedObjects];
  v12 = [arrangedObjects4 count];

  arrangedObjects5 = [(BKAssetArrayController *)self->_downloadAssets arrangedObjects];
  v14 = [arrangedObjects5 count];

  arrangedObjects6 = [(BKAssetArrayController *)self->_uploadAssets arrangedObjects];
  v16 = [arrangedObjects6 count];

  if (v10 != (v12 != 0))
  {
    [(BKLibraryAssetStatusController *)self setHasUpdates:v12 != 0];
  }

  if ((v7 != 0) != (v14 != 0))
  {
    [(BKLibraryAssetStatusController *)self setHasDownloads:v14 != 0];
  }

  if ((v9 != 0) != (v16 != 0))
  {
    [(BKLibraryAssetStatusController *)self setHasUploads:v16 != 0];
  }

  if (v21 != ((v12 | v14 | v16) != 0))
  {
    [(BKLibraryAssetStatusController *)self setHasUpdatesOrDownloadsOrUploads:(v12 | v14 | v16) != 0];
  }

  v17 = objc_alloc_init(NSMutableSet);
  arrangedObjects7 = [(BKAssetArrayController *)self->_updateAssets arrangedObjects];
  [v17 addObjectsFromArray:arrangedObjects7];

  arrangedObjects8 = [(BKAssetArrayController *)self->_downloadAssets arrangedObjects];
  [v17 addObjectsFromArray:arrangedObjects8];

  arrangedObjects9 = [(BKAssetArrayController *)self->_uploadAssets arrangedObjects];
  [(BKLibraryAssetStatusController *)self _updateUploadStatusForAssetIDs:arrangedObjects9];

  [(BKLibraryAssetStatusController *)self _updateTotalPercentCompleteForAssetIDs:v17];
  [(BKLibraryAssetStatusController *)self _updateCountsForAssetIDs:v17];
  [(BKLibraryAssetStatusController *)self _updateSeriesContainerDownloadStatusForAssetIDs:v17];
  [(BKLibraryAssetStatusController *)self _updateAcknowledgeCountsWithAssetIDs:v17];
  [(BKLibraryAssetStatusController *)self _trimUpdateDictionary];
  [(BKLibraryAssetStatusController *)self _writePersistentInfoIfNeeded];
}

- (BUCoalescingCallBlock)downloadRelatedNotificationCoalescingBlock
{
  downloadRelatedNotificationCoalescingBlock = self->_downloadRelatedNotificationCoalescingBlock;
  if (!downloadRelatedNotificationCoalescingBlock)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_43118;
    v7[3] = &unk_D6970;
    v7[4] = self;
    v4 = [[BUCoalescingCallBlock alloc] initWithNotifyBlock:v7 blockDescription:@"BKLibraryAssetStatusController"];
    v5 = self->_downloadRelatedNotificationCoalescingBlock;
    self->_downloadRelatedNotificationCoalescingBlock = v4;

    [(BUCoalescingCallBlock *)self->_downloadRelatedNotificationCoalescingBlock setCoalescingDelay:0.1];
    [(BUCoalescingCallBlock *)self->_downloadRelatedNotificationCoalescingBlock setMaximumDelay:0.5];
    downloadRelatedNotificationCoalescingBlock = self->_downloadRelatedNotificationCoalescingBlock;
  }

  return downloadRelatedNotificationCoalescingBlock;
}

- (void)_downloadStatusNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"BKLibraryDownloadStatusKey"];
  v7 = BUDynamicCast();

  if ([v7 count])
  {
    downloadStatusesQueue = self->_downloadStatusesQueue;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_43254;
    v13 = &unk_D5420;
    selfCopy = self;
    v15 = notificationCopy;
    dispatch_sync(downloadStatusesQueue, &v10);
    v9 = [(BKLibraryAssetStatusController *)self downloadRelatedNotificationCoalescingBlock:v10];
    [v9 signalWithCompletion:&stru_D6990];
  }
}

- (void)_processDownloadRelatedNotificationsCompletion:(id)completion
{
  completionCopy = completion;
  downloadStatusesQueue = self->_downloadStatusesQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_432FC;
  v7[3] = &unk_D5550;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(downloadStatusesQueue, v7);
}

- (void)_processDownloadStatuses:(id)statuses completion:(id)completion
{
  statusesCopy = statuses;
  completionCopy = completion;
  if ([statusesCopy count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_43920;
    block[3] = &unk_D62F8;
    block[4] = self;
    v9 = statusesCopy;
    v10 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_libraryUpdateNotification:(id)notification
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_43C68;
  v4[3] = &unk_D5420;
  v4[4] = self;
  notificationCopy = notification;
  v3 = notificationCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_removeTrackingOfAssetID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_44030;
    v6[3] = &unk_D5420;
    v6[4] = self;
    v7 = dCopy;
    [(BKLibraryAssetStatusController *)self _updateAssetsWithBlock:v6];
  }
}

- (void)_libraryOwnershipNotification:(id)notification
{
  notificationCopy = notification;
  downloadStatusesQueue = self->_downloadStatusesQueue;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_4415C;
  v11 = &unk_D5420;
  selfCopy = self;
  v13 = notificationCopy;
  v6 = notificationCopy;
  dispatch_sync(downloadStatusesQueue, &v8);
  v7 = [(BKLibraryAssetStatusController *)self downloadRelatedNotificationCoalescingBlock:v8];
  [v7 signalWithCompletion:&stru_D69B0];
}

- (void)_processLibraryOwnershipNotification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  userInfo = [notification userInfo];
  v6 = dispatch_group_create();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = userInfo;
  obj = [userInfo objectForKeyedSubscript:@"BKLibraryOwnershipAssetsKey"];
  v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"BKLibraryOwnershipNewState"];
        integerValue = [v11 integerValue];

        v13 = [v10 objectForKeyedSubscript:@"BKLibraryOwnershipOldState"];
        integerValue2 = [v13 integerValue];

        v15 = [v10 objectForKeyedSubscript:@"BKLibraryOwnershipAssetIDKey"];
        v16 = v15;
        if (v15)
        {
          v17 = integerValue == 3;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          dispatch_group_enter(v6);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_44558;
          block[3] = &unk_D69D8;
          block[4] = self;
          v32 = v16;
          v34 = integerValue2;
          v33 = v6;
          dispatch_async(&_dispatch_main_q, block);
        }

        else if (integerValue == 2)
        {
          if (!v15)
          {
            goto LABEL_17;
          }

          dispatch_group_enter(v6);
          v18 = v30;
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_44640;
          v30[3] = &unk_D5A40;
          v30[4] = self;
          v30[5] = v16;
          goto LABEL_16;
        }

        if (integerValue2 != 2)
        {
          goto LABEL_17;
        }

        dispatch_group_enter(v6);
        v18 = v28;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_44778;
        v28[3] = &unk_D69D8;
        v28[4] = self;
        v28[5] = v16;
        v29 = integerValue;
LABEL_16:
        v18[6] = v6;
        dispatch_async(&_dispatch_main_q, v18);

LABEL_17:
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  downloadStatusesQueue = self->_downloadStatusesQueue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_44A30;
  v26[3] = &unk_D6858;
  v27 = completionCopy;
  v20 = completionCopy;
  dispatch_group_notify(v6, downloadStatusesQueue, v26);
}

- (void)_showUpdateFailureForAssetID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_44B18;
    v6[3] = &unk_D5420;
    v6[4] = self;
    v7 = dCopy;
    [(BKLibraryAssetStatusController *)self _updateAssetsWithBlock:v6];
  }
}

- (void)makeAccountPrimaryAndCheckForUpdateAndUpdateAssetUnacknowledged:(id)unacknowledged
{
  unacknowledgedCopy = unacknowledged;
  assetID = [unacknowledgedCopy assetID];
  accountID = [unacknowledgedCopy accountID];

  if (assetID && accountID)
  {
    storeDelegate = [(BKLibraryAssetStatusController *)self storeDelegate];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_44C94;
    v8[3] = &unk_D6A78;
    v8[4] = self;
    v9 = assetID;
    [storeDelegate libraryAssetStatusController:self makeAccountPrimaryAndSignedIn:accountID completion:v8];
  }
}

- (void)_startUpdateForAssetIDs:(id)ds
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4548C;
  v5[3] = &unk_D5420;
  dsCopy = ds;
  selfCopy = self;
  v4 = dsCopy;
  _os_activity_initiate(&dword_0, "Start update for assets", OS_ACTIVITY_FLAG_DEFAULT, v5);
}

- (void)pauseDownloadOfAsset:(id)asset
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_45924;
  v4[3] = &unk_D5420;
  v4[4] = self;
  assetCopy = asset;
  v3 = assetCopy;
  _os_activity_initiate(&dword_0, "Pause download for asset", OS_ACTIVITY_FLAG_DEFAULT, v4);
}

- (void)resumeDownloadOfAsset:(id)asset
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_45AC0;
  v4[3] = &unk_D5420;
  v4[4] = self;
  assetCopy = asset;
  v3 = assetCopy;
  _os_activity_initiate(&dword_0, "Resume download for asset", OS_ACTIVITY_FLAG_DEFAULT, v4);
}

- (void)cancelDownloadOfAsset:(id)asset
{
  assetCopy = asset;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_downloadControllers;
  v6 = [(BKBookDownloadController *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) cancelDownloadForAssetID:{assetCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(BKBookDownloadController *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)restartDownloadOfAsset:(id)asset
{
  assetCopy = asset;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_downloadControllers;
  v6 = [(BKBookDownloadController *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) restartDownloadForAssetID:{assetCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(BKBookDownloadController *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeCompletedDownloads
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_45E24;
  v2[3] = &unk_D5528;
  v2[4] = self;
  [(BKLibraryAssetStatusController *)self _updateAssetsWithBlock:v2];
}

- (void)removeCompletedUploads
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_46030;
  v2[3] = &unk_D5528;
  v2[4] = self;
  [(BKLibraryAssetStatusController *)self _updateAssetsWithBlock:v2];
}

- (void)checkForUpdates:(id)updates
{
  updatesCopy = updates;
  [(BKLibraryAssetStatusController *)self setCheckingForUpdates:1];
  updateController = self->_updateController;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_46250;
  v7[3] = &unk_D6AC8;
  v7[4] = self;
  v8 = updatesCopy;
  v6 = updatesCopy;
  [(BKBookUpdateController *)updateController checkForUpdates:v7];
}

- (id)statusForAssetID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSMutableDictionary *)self->_statusDictionary objectForKey:dCopy];
    if (!v5)
    {
      v5 = [[BKLibraryDownloadStatus alloc] initWithAssetID:dCopy state:0 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:0.0];
      [(NSMutableDictionary *)self->_statusDictionary setObject:v5 forKey:dCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)ephemeralStatusForAssetID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_statusDictionary objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)acknowledgeCurrentUpdatesAndDownloads
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_464CC;
  v2[3] = &unk_D5528;
  v2[4] = self;
  [(BKLibraryAssetStatusController *)self _updateAssetsWithBlock:v2];
}

- (void)primaryAccountChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_466E8;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_processLibraryAssetChanges:(id)changes
{
  changesCopy = changes;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    addedObjects = [changesCopy addedObjects];
    v7 = [addedObjects count];
    deletedObjects = [changesCopy deletedObjects];
    v9 = [deletedObjects count];
    updatedObjects = [changesCopy updatedObjects];
    *buf = 134218496;
    v17 = v7;
    v18 = 2048;
    v19 = v9;
    v20 = 2048;
    v21 = [updatedObjects count];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BKLibraryAssetStatusController _processLibraryAssetChanges: added: %ld deleted: %ld updated: %ld", buf, 0x20u);
  }

  v11 = +[BKLibraryManager defaultManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_4691C;
  v13[3] = &unk_D58E0;
  v14 = changesCopy;
  selfCopy = self;
  v12 = changesCopy;
  [v11 performBackgroundReadOnlyBlock:v13];
}

- (id)_addArrayControllerWithFilter:(id)filter
{
  filterCopy = filter;
  v5 = [[BKAssetArrayController alloc] initWithContent:self->_assetsArray];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_46C18;
  v11 = &unk_D6AF0;
  selfCopy = self;
  v13 = filterCopy;
  v6 = filterCopy;
  [(BKAssetArrayController *)v5 setFilter:&v8];
  [(NSMutableArray *)self->_additionalArrayControllers addObject:v5, v8, v9, v10, v11, selfCopy];

  return v5;
}

- (id)addStatusObserverWithFilter:(id)filter notify:(id)notify
{
  notifyCopy = notify;
  filterCopy = filter;
  v7 = [[BKLibraryAssetStatusObserver alloc] initWithFilter:filterCopy notify:notifyCopy];

  return v7;
}

- (void)restrictionsForExplicitContentAllowedChanged:(BOOL)changed
{
  changedCopy = changed;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_downloadControllers;
  v6 = [(BKBookDownloadController *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9) setExplicitContentRestricted:!changedCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(BKBookDownloadController *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_46E60;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BKLibraryAssetStatusControllerStoreDelegate)storeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_storeDelegate);

  return WeakRetained;
}

@end