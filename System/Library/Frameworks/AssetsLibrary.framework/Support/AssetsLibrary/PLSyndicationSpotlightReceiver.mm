@interface PLSyndicationSpotlightReceiver
- (PLSyndicationSpotlightReceiver)init;
- (id)supportedBundleIDs;
- (id)supportedContentTypes;
- (void)_recordSpotlightUpdate;
- (void)_recordSpotlightUpdateWithDate:(id)a3;
- (void)_signalBackgroundProcessingNeededForWellKnownLibraryIdentifier:(int64_t)a3;
- (void)addOrUpdateSearchableItems:(id)a3 bundleID:(id)a4;
- (void)deleteAllSearchableItemsWithBundleID:(id)a3;
- (void)deleteSearchableItemsSinceDate:(id)a3 bundleID:(id)a4;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 bundleID:(id)a4;
- (void)deleteSearchableItemsWithIdentifiers:(id)a3 bundleID:(id)a4;
- (void)purgeSearchableItemsWithIdentifiers:(id)a3 bundleID:(id)a4;
- (void)start;
@end

@implementation PLSyndicationSpotlightReceiver

- (void)purgeSearchableItemsWithIdentifiers:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = [v6 count];
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] purgeSearchableItemsWithIdentifiers, identifiersCount:%lu, bundleID:%@", &v9, 0x16u);
  }

  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSyndication];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSPL];
}

- (void)deleteSearchableItemsSinceDate:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] deleteSearchableItemsSinceDate, date:%@, bundleID:%@", &v9, 0x16u);
  }

  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSyndication];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSPL];
}

- (void)deleteAllSearchableItemsWithBundleID:(id)a3
{
  v4 = a3;
  v5 = PLSyndicationGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] deleteAllSearchableItemsWithBundleID, bundleID:%@", &v6, 0xCu);
  }

  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSyndication];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSPL];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = [v6 count];
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] deleteSearchableItemsWithDomainIdentifiers, domainIdentifiersCount:%lu, bundleID:%@", &v9, 0x16u);
  }

  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSyndication];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSPL];
}

- (void)deleteSearchableItemsWithIdentifiers:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLSyndicationGetLog();
  v9 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v24 = [v6 count];
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] deleteSearchableItemsWithIdentifiers, identifiersCount:%lu, bundleID:%@", buf, 0x16u);
  }

  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    v14 = qword_10001EE60[v10];
    v22 = 0;
    v15 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:v14 error:&v22];
    v16 = v22;
    if (v15)
    {
      v17 = objc_alloc_init(PLXPCTransaction);
      v18 = [v15 syndicationDeleteManager];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000C520;
      v20[3] = &unk_10002D458;
      v21 = v17;
      v19 = v17;
      [v18 processDeletesForBundleID:v7 identifiers:v9 completion:v20];
    }

    else
    {
      v19 = PLSyndicationGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v24 = "[PLSyndicationSpotlightReceiver deleteSearchableItemsWithIdentifiers:bundleID:]";
        v25 = 2114;
        v26 = v7;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s failed to process deletes for bundle ID %{public}@ error %@", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v13);
    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSyndication];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSPL];
}

- (void)addOrUpdateSearchableItems:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v15 = [v6 count];
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] addOrUpdateSearchableItems, itemCount:%lu, bundleID:%@", buf, 0x16u);
  }

  v9 = +[NSDate now];
  if (PLHandleSpotlightAddedOrUpdatedItems())
  {
    [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdateWithDate:v9];
    objc_initWeak(buf, self);
    v10 = dispatch_time(0, 5000000000);
    delayedBackgroundJobSignalingQueue = self->_delayedBackgroundJobSignalingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C6D4;
    block[3] = &unk_10002D058;
    objc_copyWeak(&v13, buf);
    dispatch_after(v10, delayedBackgroundJobSignalingQueue, block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (id)supportedBundleIDs
{
  v10[0] = PLMessagesBundleID;
  v10[1] = PLNotesBundleID;
  v10[2] = PLStickersBundleID;
  v2 = [NSArray arrayWithObjects:v10 count:3];
  v3 = PLSyndicationAllEquivalentFileProviderLocalAndCloudBundleIDs();
  v4 = [v3 allObjects];
  v5 = [v2 arrayByAddingObjectsFromArray:v4];

  v6 = PLSyndicationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] supported bundle ids: %{public}@", &v8, 0xCu);
  }

  return v5;
}

- (id)supportedContentTypes
{
  v2 = PLSyndicationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] supported content types", v4, 2u);
  }

  return 0;
}

- (void)_recordSpotlightUpdateWithDate:(id)a3
{
  v3 = a3;
  v4 = PLSyndicationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] setting most recent update date: %@", &v5, 0xCu);
  }

  SetPLSpotlightReceiverLastUpdate();
}

- (void)_recordSpotlightUpdate
{
  v3 = +[NSDate now];
  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdateWithDate:v3];
}

- (void)_signalBackgroundProcessingNeededForWellKnownLibraryIdentifier:(int64_t)a3
{
  v11 = 0;
  v4 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:a3 error:&v11];
  v5 = v11;
  v6 = [v4 backgroundJobService];

  v7 = PLSyndicationGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] signaling background processing needed due to new spotlight update for library %td", buf, 0xCu);
    }

    v8 = [v4 backgroundJobService];
    v9 = [v4 libraryBundle];
    v10 = +[PLBackgroundJobWorkerTypes maskForSyndicationSync];
    [v8 signalBackgroundProcessingNeededOnBundle:v9 workerTypes:v10];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v13 = a3;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[sync.spotlightReceiver] unable to signal background processing needed for library %td: %@", buf, 0x16u);
  }
}

- (void)start
{
  if (PLSyndicationRuntimeEnabled())
  {
    SpotlightReceiverRegister();
    v3 = PLSyndicationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] registered syndication spotlight receiver: %@", &v5, 0xCu);
    }

    [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  }

  else
  {
    v4 = PLSyndicationGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Syndication runtime is disabled via internal user defaults, not registering for photos spotlight receiver", &v5, 2u);
    }
  }
}

- (PLSyndicationSpotlightReceiver)init
{
  v7.receiver = self;
  v7.super_class = PLSyndicationSpotlightReceiver;
  v2 = [(PLSyndicationSpotlightReceiver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.photos.plspotlightreceiver.delayedBackgroundJobSignalingQueue", v3);
    delayedBackgroundJobSignalingQueue = v2->_delayedBackgroundJobSignalingQueue;
    v2->_delayedBackgroundJobSignalingQueue = v4;
  }

  return v2;
}

@end