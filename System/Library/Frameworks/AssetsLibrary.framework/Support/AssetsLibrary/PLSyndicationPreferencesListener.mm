@interface PLSyndicationPreferencesListener
- (PLSyndicationPreferencesListener)init;
- (void)_triggerGuestAssetSyncUpdate;
- (void)start;
@end

@implementation PLSyndicationPreferencesListener

- (void)_triggerGuestAssetSyncUpdate
{
  v2 = PLSyndicationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%{public}@ Triggering guest asset sync update", buf, 0xCu);
  }

  v3 = +[PLPhotoLibraryBundleController sharedBundleController];
  v4 = [PLPhotoLibraryPathManager wellKnownPhotoLibraryURLForIdentifier:1];
  v5 = [v3 openBundleAtLibraryURL:v4];

  libraryServicesManager = [v5 libraryServicesManager];
  if ((PLSyndicationPreferencesEnabled() & 1) == 0)
  {
    databaseContext = [libraryServicesManager databaseContext];
    v8 = [databaseContext newShortLivedLibraryWithName:"-[PLSyndicationPreferencesListener _triggerGuestAssetSyncUpdate]"];

    managedObjectContext = [v8 managedObjectContext];
    v10 = managedObjectContext;
    if (managedObjectContext)
    {
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1000181A4;
      v17 = &unk_10002D9D8;
      v18 = managedObjectContext;
      v19 = v8;
      [v19 performBlockAndWait:&v14];

      v11 = v18;
    }

    else
    {
      v11 = PLSyndicationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Syndication for Photos was turned OFF, but we have no managed object context for the SPL. Probably shutting down. Assume we'll take care of this on next open.", buf, 2u);
      }
    }
  }

  backgroundJobService = [libraryServicesManager backgroundJobService];
  v13 = +[PLBackgroundJobWorkerTypes maskForGuestAssetSync];
  [backgroundJobService signalBackgroundProcessingNeededOnBundle:v5 workerTypes:v13];
}

- (void)start
{
  if (self->_listenerQueue)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLSyndicationPreferencesListener.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"_listenerQueue == nil"}];
  }

  v3 = [objc_opt_class() description];
  v4 = dispatch_queue_create([v3 UTF8String], 0);
  listenerQueue = self->_listenerQueue;
  self->_listenerQueue = v4;

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018370;
  v10[3] = &unk_10002D9B0;
  objc_copyWeak(&v11, &location);
  v6 = objc_retainBlock(v10);
  listenerBlock = self->_listenerBlock;
  self->_listenerBlock = v6;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", self->_listenerQueue, self->_listenerBlock);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (PLSyndicationPreferencesListener)init
{
  v3.receiver = self;
  v3.super_class = PLSyndicationPreferencesListener;
  return [(PLSyndicationPreferencesListener *)&v3 init];
}

@end