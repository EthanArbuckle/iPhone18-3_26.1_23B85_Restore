@interface PLSyndicationSpotlightReceiver
- (PLSyndicationSpotlightReceiver)init;
- (id)supportedBundleIDs;
- (id)supportedContentTypes;
- (void)_recordSpotlightUpdate;
- (void)_recordSpotlightUpdateWithDate:(id)date;
- (void)_signalBackgroundProcessingNeededForWellKnownLibraryIdentifier:(int64_t)identifier;
- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d;
- (void)deleteAllSearchableItemsWithBundleID:(id)d;
- (void)deleteSearchableItemsSinceDate:(id)date bundleID:(id)d;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers bundleID:(id)d;
- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d;
- (void)purgeSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d;
- (void)start;
@end

@implementation PLSyndicationSpotlightReceiver

- (void)purgeSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d
{
  identifiersCopy = identifiers;
  dCopy = d;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = [identifiersCopy count];
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] purgeSearchableItemsWithIdentifiers, identifiersCount:%lu, bundleID:%@", &v9, 0x16u);
  }

  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSyndication];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSPL];
}

- (void)deleteSearchableItemsSinceDate:(id)date bundleID:(id)d
{
  dateCopy = date;
  dCopy = d;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = dateCopy;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] deleteSearchableItemsSinceDate, date:%@, bundleID:%@", &v9, 0x16u);
  }

  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSyndication];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSPL];
}

- (void)deleteAllSearchableItemsWithBundleID:(id)d
{
  dCopy = d;
  v5 = PLSyndicationGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] deleteAllSearchableItemsWithBundleID, bundleID:%@", &v6, 0xCu);
  }

  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSyndication];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSPL];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers bundleID:(id)d
{
  identifiersCopy = identifiers;
  dCopy = d;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = [identifiersCopy count];
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] deleteSearchableItemsWithDomainIdentifiers, domainIdentifiersCount:%lu, bundleID:%@", &v9, 0x16u);
  }

  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdate];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSyndication];
  [(PLSyndicationSpotlightReceiver *)self _signalBackgroundProcessingNeededForSPL];
}

- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d
{
  identifiersCopy = identifiers;
  dCopy = d;
  v8 = PLSyndicationGetLog();
  v9 = identifiersCopy;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v24 = [identifiersCopy count];
    v25 = 2112;
    v26 = dCopy;
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
      syndicationDeleteManager = [v15 syndicationDeleteManager];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000C520;
      v20[3] = &unk_10002D458;
      v21 = v17;
      v19 = v17;
      [syndicationDeleteManager processDeletesForBundleID:dCopy identifiers:v9 completion:v20];
    }

    else
    {
      v19 = PLSyndicationGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v24 = "[PLSyndicationSpotlightReceiver deleteSearchableItemsWithIdentifiers:bundleID:]";
        v25 = 2114;
        v26 = dCopy;
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

- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d
{
  itemsCopy = items;
  dCopy = d;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v15 = [itemsCopy count];
    v16 = 2112;
    v17 = dCopy;
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
  allObjects = [v3 allObjects];
  v5 = [v2 arrayByAddingObjectsFromArray:allObjects];

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

- (void)_recordSpotlightUpdateWithDate:(id)date
{
  dateCopy = date;
  v4 = PLSyndicationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = dateCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] setting most recent update date: %@", &v5, 0xCu);
  }

  SetPLSpotlightReceiverLastUpdate();
}

- (void)_recordSpotlightUpdate
{
  v3 = +[NSDate now];
  [(PLSyndicationSpotlightReceiver *)self _recordSpotlightUpdateWithDate:v3];
}

- (void)_signalBackgroundProcessingNeededForWellKnownLibraryIdentifier:(int64_t)identifier
{
  v11 = 0;
  v4 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:identifier error:&v11];
  v5 = v11;
  backgroundJobService = [v4 backgroundJobService];

  v7 = PLSyndicationGetLog();
  backgroundJobService2 = v7;
  if (backgroundJobService)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      identifierCopy2 = identifier;
      _os_log_impl(&_mh_execute_header, backgroundJobService2, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] signaling background processing needed due to new spotlight update for library %td", buf, 0xCu);
    }

    backgroundJobService2 = [v4 backgroundJobService];
    libraryBundle = [v4 libraryBundle];
    v10 = +[PLBackgroundJobWorkerTypes maskForSyndicationSync];
    [backgroundJobService2 signalBackgroundProcessingNeededOnBundle:libraryBundle workerTypes:v10];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    identifierCopy2 = identifier;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, backgroundJobService2, OS_LOG_TYPE_ERROR, "[sync.spotlightReceiver] unable to signal background processing needed for library %td: %@", buf, 0x16u);
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
      selfCopy = self;
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