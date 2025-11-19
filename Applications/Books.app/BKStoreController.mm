@interface BKStoreController
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BKLibraryDownloadQueueManager)downloadQueueManager;
- (BKStoreController)initWithLibrary:(id)a3 downloadQueueManager:(id)a4;
- (BOOL)allowCitationForProtectedBooks;
- (BOOL)citationAllowedForStoreFrontID:(unint64_t)a3;
- (BOOL)isAssetDownloadableWithStoreId:(id)a3;
- (BOOL)isReportConcernEnabled;
- (NSSet)storeIDsWithAvailableUpdates;
- (NSURL)bookmarkGetAllUrl;
- (NSURL)bookmarkSetAllUrl;
- (NSURL)tellAFriendEmailBodyURLBase;
- (id)assetDownloadProgressWithStoreId:(id)a3;
- (id)bookUrlForStoreId:(id)a3;
- (id)storesAllowingCitation;
- (unint64_t)lastBookUpdateCheck;
- (void)_bagInvalidated:(id)a3;
- (void)_notifyStoreIDsWithAvailableUpdatesChanged;
- (void)_operationDidFinish:(id)a3 result:(id)a4;
- (void)bumpLastBookUpdateCheck;
- (void)canCheckForBookUpdatesWithCompletion:(id)a3;
- (void)cancelDownloadingAssetWithStoreId:(id)a3;
- (void)clearAvailableUpdatesForStoreIDAndRefreshUpdateCount:(id)a3;
- (void)coverForAssetWithStoreId:(id)a3 supplementalAssetID:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)downloadQueueReload;
- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)a3;
- (void)libraryOperationDidComplete:(id)a3;
- (void)openEBookProductPageForStoreID:(id)a3;
- (void)refreshUpdateCountAsync;
- (void)setStoreIDsWithAvailableUpdates:(id)a3;
- (void)startAllowingRefreshUpdateCount;
- (void)startOrResumeDownloadingAssetWithStoreId:(id)a3;
@end

@implementation BKStoreController

- (BKStoreController)initWithLibrary:(id)a3 downloadQueueManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = BKStoreController;
  v8 = [(BKStoreController *)&v29 init];
  v9 = v8;
  if (v8)
  {
    [(BKStoreController *)v8 setLibraryAssetProvider:v6];
    v10 = dispatch_queue_create("BKStoreController.storeIDsWithAvailableUpdates", 0);
    storeIDsWithAvailableUpdatesSync = v9->_storeIDsWithAvailableUpdatesSync;
    v9->_storeIDsWithAvailableUpdatesSync = v10;

    v12 = dispatch_queue_create("BKStoreController.storeIDsWithAssetVersionUpdatePendingSync", 0);
    storeIDsWithAssetVersionUpdatePendingSync = v9->_storeIDsWithAssetVersionUpdatePendingSync;
    v9->_storeIDsWithAssetVersionUpdatePendingSync = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("BKStoreController.bagSnapshotAccessQueue", v14);
    bagSnapshotAccessQueue = v9->_bagSnapshotAccessQueue;
    v9->_bagSnapshotAccessQueue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_initially_inactive(v17);
    v19 = dispatch_queue_create("BKStoreController.updateQueue", v18);
    updateQueue = v9->_updateQueue;
    v9->_updateQueue = v19;

    storeIDsCompletions = v9->_storeIDsCompletions;
    v9->_storeIDsCompletions = &__NSArray0__struct;

    v22 = +[NSMutableSet set];
    storeIDsWithAssetVersionUpdatePending = v9->_storeIDsWithAssetVersionUpdatePending;
    v9->_storeIDsWithAssetVersionUpdatePending = v22;

    [(BKStoreController *)v9 _bagInvalidated:0];
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v9 selector:"_bagInvalidated:" name:AMSBagInvalidatedNotification object:0];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v9 selector:"libraryOperationDidComplete:" name:BKLibraryOperationCompleteNotification object:0];

    [(BKStoreController *)v9 setDownloadQueueManager:v7];
    v26 = objc_alloc_init(NSOperationQueue);
    operationQueue = v9->_operationQueue;
    v9->_operationQueue = v26;

    [(NSOperationQueue *)v9->_operationQueue setMaxConcurrentOperationCount:1];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  dispatch_sync(self->_storeIDsWithAvailableUpdatesSync, &stru_100A03580);
  storeIDsWithAvailableUpdates = self->_storeIDsWithAvailableUpdates;
  self->_storeIDsWithAvailableUpdates = 0;

  storeIDsWithAssetVersionUpdatePendingSync = self->_storeIDsWithAssetVersionUpdatePendingSync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050D2C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_sync(storeIDsWithAssetVersionUpdatePendingSync, block);
  dispatch_activate(self->_updateQueue);
  v6.receiver = self;
  v6.super_class = BKStoreController;
  [(BKStoreController *)&v6 dealloc];
}

- (void)_bagInvalidated:(id)a3
{
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050DB0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(bagSnapshotAccessQueue, block);
}

- (void)startAllowingRefreshUpdateCount
{
  v3 = BKStoreBookUpdateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startAllowingRefreshUpdateCount", v4, 2u);
  }

  dispatch_activate(self->_updateQueue);
}

- (void)refreshUpdateCountAsync
{
  updateQueue = self->_updateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000511D4;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

- (void)openEBookProductPageForStoreID:(id)a3
{
  v3 = a3;
  v4 = +[BKAppDelegate sceneManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005182C;
  v6[3] = &unk_100A03698;
  v7 = v3;
  v5 = v3;
  [v4 requestPrimaryScene:v6];
}

- (id)bookUrlForStoreId:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000272D4;
  v20 = sub_1000275B0;
  v21 = 0;
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051A28;
  block[3] = &unk_100A036C0;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(bagSnapshotAccessQueue, block);
  v6 = v17[5];
  v7 = v4;
  v8 = v6;
  v9 = [v7 length];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = [v8 absoluteString];
    v12 = [v11 stringByAppendingFormat:@"?id=%@", v7];
    v13 = [NSURL URLWithString:v12];
  }

  _Block_object_dispose(&v16, 8);

  return v13;
}

- (BOOL)isAssetDownloadableWithStoreId:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(BKStoreController *)self libraryAssetProvider];
  v6 = [v5 libraryAssetOnMainQueueWithStoreID:v4];

  if ([v5 isDownloadableFromLibraryAsset:v6])
  {
    v7 = +[BKReachability isOffline]^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)startOrResumeDownloadingAssetWithStoreId:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = +[BKLibraryAssetStatusController sharedController];
  v6 = [v5 statusForAssetID:v4];

  if ([v6 canResume])
  {
    v7 = BCBookDownloadLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resuming download of asset with ID %{private}@", buf, 0xCu);
    }

    v8 = +[BKLibraryAssetStatusController sharedController];
    [v8 resumeDownloadOfAsset:v4];
  }

  else
  {
    v9 = [(BKStoreController *)self libraryAssetProvider];
    v8 = [v9 libraryAssetOnMainQueueWithStoreID:v4];

    v10 = BCBookDownloadLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting download of asset with ID %{private}@", buf, 0xCu);
    }

    v11 = [(BKStoreController *)self libraryAssetProvider];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100051D3C;
    v12[3] = &unk_100A036E8;
    v13 = v4;
    [v11 resolveLibraryAsset:v8 completion:v12];
  }
}

- (void)cancelDownloadingAssetWithStoreId:(id)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = BCBookDownloadLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138477827;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling download of asset with ID %{private}@", &v6, 0xCu);
  }

  v5 = +[BKLibraryAssetStatusController sharedController];
  [v5 cancelDownloadOfAsset:v3];
}

- (id)assetDownloadProgressWithStoreId:(id)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = +[BKLibraryAssetStatusController sharedController];
  v5 = [v4 statusForAssetID:v3];

  if ([v5 state] == 4)
  {
    if ([v5 fileSize])
    {
      v6 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v5 bytesDownloaded] / objc_msgSend(v5, "fileSize"));
    }

    else
    {
      v6 = &off_100A433C8;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)coverForAssetWithStoreId:(id)a3 supplementalAssetID:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  if (!+[NSThread isMainThread])
  {
    v8 = BCImageCacheLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078850C(v8);
    }

    BCReportAssertionFailureWithMessage();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000520D4;
  v10[3] = &unk_100A03710;
  v11 = v7;
  v9 = v7;
  [BKLibraryManager fetchImageForAssetID:v6 size:1 includeSpine:1 includeShadow:0 coverEffectsEnvironment:v10 completion:256.0, 256.0];
}

- (void)bumpLastBookUpdateCheck
{
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000521C4;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_sync(bagSnapshotAccessQueue, block);
}

- (unint64_t)lastBookUpdateCheck
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000522D0;
  v5[3] = &unk_100A036C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(bagSnapshotAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)downloadQueueReload
{
  v2 = [(BKStoreController *)self downloadQueueManager];
  [v2 reloadDownloadQueue];
}

- (void)setStoreIDsWithAvailableUpdates:(id)a3
{
  v4 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000272D4;
  v36 = sub_1000275B0;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000272D4;
  v30 = sub_1000275B0;
  v31 = 0;
  storeIDsWithAvailableUpdatesSync = self->_storeIDsWithAvailableUpdatesSync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052694;
  block[3] = &unk_100A03738;
  block[4] = self;
  v6 = v4;
  v22 = v6;
  v23 = &v38;
  v24 = &v32;
  v25 = &v26;
  dispatch_sync(storeIDsWithAvailableUpdatesSync, block);
  v7 = BKStoreBookUpdateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithBool:*(v39 + 24)];
    v9 = [v6 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v44 = v8;
    v45 = 2112;
    v46 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting storeIdsWithAvailableUpdates, changed=%@: [%@]", buf, 0x16u);
  }

  self->_hasSetStoreIDsWithAvailableUpdates = 1;
  if (*(v39 + 24) == 1)
  {
    [(BKStoreController *)self _notifyStoreIDsWithAvailableUpdatesChanged];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v27[5];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v42 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = objc_retainBlock(*(*(&v17 + 1) + 8 * v14));
          v16 = v15;
          if (v15)
          {
            (*(v15 + 2))(v15, v33[5]);
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v42 count:16];
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
}

- (void)libraryOperationDidComplete:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  storeIDsWithAssetVersionUpdatePendingSync = self->_storeIDsWithAssetVersionUpdatePendingSync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000528F8;
  block[3] = &unk_100A036C0;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(storeIDsWithAssetVersionUpdatePendingSync, block);
  if (*(v17 + 24) == 1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v6 = self->_storeIDsWithAssetVersionUpdatePendingSync;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100052938;
    v7[3] = &unk_100A03760;
    v8 = v4;
    v9 = self;
    v10 = &v11;
    dispatch_sync(v6, v7);
    if (*(v12 + 24) == 1)
    {
      [(BKStoreController *)self refreshUpdateCountAsync];
    }

    _Block_object_dispose(&v11, 8);
  }

  _Block_object_dispose(&v16, 8);
}

- (void)clearAvailableUpdatesForStoreIDAndRefreshUpdateCount:(id)a3
{
  v4 = a3;
  v5 = [(BKStoreController *)self storeIDsWithAvailableUpdates];
  v6 = [v5 mutableCopy];

  [v6 removeObject:v4];
  v7 = [v6 copy];
  [(BKStoreController *)self setStoreIDsWithAvailableUpdates:v7];

  v8 = BKStoreBookUpdateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed %@ from storeIDsWithAvailableUpdates", buf, 0xCu);
  }

  storeIDsWithAssetVersionUpdatePendingSync = self->_storeIDsWithAssetVersionUpdatePendingSync;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100052C30;
  v11[3] = &unk_100A03440;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_sync(storeIDsWithAssetVersionUpdatePendingSync, v11);
}

- (void)_notifyStoreIDsWithAvailableUpdatesChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052CB0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (NSSet)storeIDsWithAvailableUpdates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000272D4;
  v10 = sub_1000275B0;
  v11 = 0;
  storeIDsWithAvailableUpdatesSync = self->_storeIDsWithAvailableUpdatesSync;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100052E04;
  v5[3] = &unk_100A036C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(storeIDsWithAvailableUpdatesSync, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hasSetStoreIDsWithAvailableUpdates)
  {
    if (v4)
    {
      *v17 = 0;
      v18 = v17;
      v19 = 0x3032000000;
      v20 = sub_1000272D4;
      v21 = sub_1000275B0;
      v22 = 0;
      storeIDsWithAvailableUpdatesSync = self->_storeIDsWithAvailableUpdatesSync;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000530F0;
      block[3] = &unk_100A036C0;
      block[4] = self;
      block[5] = v17;
      dispatch_sync(storeIDsWithAvailableUpdatesSync, block);
      v7 = BKStoreBookUpdateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(v18 + 5) allObjects];
        v9 = [v8 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning these items with update: [%@]", buf, 0xCu);
      }

      v10 = objc_retainBlock(v5);
      v11 = v10;
      if (v10)
      {
        (*(v10 + 2))(v10, *(v18 + 5));
      }

      _Block_object_dispose(v17, 8);
    }
  }

  else
  {
    v12 = BKStoreBookUpdateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetching updated items before they were ready, queued up in _storeIDsCompletions.", v17, 2u);
    }

    v13 = self->_storeIDsWithAvailableUpdatesSync;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005313C;
    v14[3] = &unk_100A03788;
    v14[4] = self;
    v15 = v5;
    dispatch_sync(v13, v14);
  }
}

- (void)_operationDidFinish:(id)a3 result:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_updateQueue);
  v6 = +[NSMutableSet set];
  if ([v5 count])
  {
    [(BKStoreController *)self bumpLastBookUpdateCheck];
    v7 = [v5 objectForKey:@"items"];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v27 = self;
      v28 = v5;
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v36 + 1) + 8 * i) objectForKeyedSubscript:{@"item-id", v27, v28}];
          v13 = [v12 adamIDStringValue];
          if (v13)
          {
            v14 = BKStoreBookUpdateLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding storeId (%@) from server response to storeIdsWithAvailableUpdates", buf, 0xCu);
            }

            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v9);
      self = v27;
      v5 = v28;
    }
  }

  else
  {
    v7 = BKStoreBookUpdateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No results", buf, 2u);
    }
  }

  v15 = [(BKStoreController *)self libraryAssetProvider];
  v16 = [v15 storeIDsForDownloadingBooks];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [v6 removeObject:*(*(&v32 + 1) + 8 * j)];
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  v22 = BKStoreBookUpdateLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v6 allObjects];
    v24 = [v23 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v42 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Fetching items to filter out unowned ones: [%@]", buf, 0xCu);
  }

  v25 = +[BLJaliscoDAAPClient sharedClient];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10005358C;
  v29[3] = &unk_100A037B0;
  v30 = v6;
  v31 = self;
  v26 = v6;
  [v25 fetchItemsForStoreIDs:v26 completion:v29];
}

- (NSURL)bookmarkGetAllUrl
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000272D4;
  v10 = sub_1000275B0;
  v11 = 0;
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000537EC;
  v5[3] = &unk_100A036C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(bagSnapshotAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSURL)bookmarkSetAllUrl
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000272D4;
  v10 = sub_1000275B0;
  v11 = 0;
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005394C;
  v5[3] = &unk_100A036C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(bagSnapshotAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)allowCitationForProtectedBooks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100053A68;
  v5[3] = &unk_100A036C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(bagSnapshotAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isReportConcernEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100053B88;
  v5[3] = &unk_100A037D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(bagSnapshotAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)storesAllowingCitation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000272D4;
  v10 = sub_1000275B0;
  v11 = 0;
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100053D08;
  v5[3] = &unk_100A036C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(bagSnapshotAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)citationAllowedForStoreFrontID:(unint64_t)a3
{
  v5 = [(BKStoreController *)self storesAllowingCitation];
  if (v5)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:a3];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = [(BKStoreController *)self allowCitationForProtectedBooks];
  }

  return v7;
}

- (void)canCheckForBookUpdatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_1000272D4;
  v26[4] = sub_1000275B0;
  v27 = 0;
  v6 = +[BUBag defaultBag];
  v7 = [v6 availableBookUpdatesReloadFrequency];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000540DC;
  v23[3] = &unk_100A03800;
  v25 = v26;
  v8 = v5;
  v24 = v8;
  [v7 valueWithCompletion:v23];

  dispatch_group_enter(v8);
  v9 = +[BUBag defaultBag];
  v10 = [AMSNetworkConstraints networkConstraintsForMediaType:@"ebook" withBag:v9];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000272D4;
  v21[4] = sub_1000275B0;
  v22 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100054180;
  v18[3] = &unk_100A03828;
  v20 = v21;
  v11 = v8;
  v19 = v11;
  [v10 addFinishBlock:v18];
  v12 = dispatch_get_global_queue(17, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000541E0;
  v14[3] = &unk_100A03850;
  v16 = v21;
  v17 = v26;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  dispatch_group_notify(v11, v12, v14);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v26, 8);
}

- (NSURL)tellAFriendEmailBodyURLBase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000272D4;
  v10 = sub_1000275B0;
  v11 = 0;
  bagSnapshotAccessQueue = self->_bagSnapshotAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000543D8;
  v5[3] = &unk_100A036C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(bagSnapshotAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BKLibraryAssetProvider)libraryAssetProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryAssetProvider);

  return WeakRetained;
}

- (BKLibraryDownloadQueueManager)downloadQueueManager
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadQueueManager);

  return WeakRetained;
}

@end