@interface MTSyncController
+ (BOOL)hasAccountChangedSinceLastSync;
+ (BOOL)isUserLoggedIn;
+ (id)accountIdentifierForLastSync;
+ (id)playlistSyncVersion;
+ (id)sharedInstance;
+ (int64_t)syncFlagsForSyncType:(int64_t)a3;
+ (void)didUpdateSubscriptionsSyncVersionForSyncType:(int64_t)a3;
+ (void)resetAllSubscriptionSyncVersion;
+ (void)resetMetadataToInitialState;
+ (void)resetPlaylistSyncVersion;
+ (void)setAccountIdentifierForLastSync:(id)a3;
+ (void)setPlaylistSyncVersion:(id)a3;
- (AMSPromise)UPPEnabled;
- (BOOL)canScheduleSyncRequest;
- (BOOL)checkViabilityOfSyncLibraryAndUPP;
- (BOOL)hasAccountChangedSinceLastSync;
- (BOOL)hasInterestSyncVersion;
- (BOOL)hasPlaylistSyncVersion;
- (BOOL)hasPodcastSyncV3Version;
- (BOOL)hasPodcastSyncVersion;
- (BOOL)isRunning;
- (BOOL)isUserLoggedIn;
- (BOOL)keyValueStoreController:(id)a3 transaction:(id)a4 didFailWithError:(id)a5;
- (BOOL)resetToInitialStateForced:(BOOL)a3 completion:(id)a4;
- (BOOL)resetToInitialStateIfIncomplete;
- (MTSyncController)init;
- (NSString)playlistSyncVersion;
- (id)addEpisodeObserverUsingBlock:(id)a3;
- (id)expandFeedUrls:(id)a3;
- (id)operationInQueueWithType:(int64_t)a3;
- (int64_t)timedOperationTypeForBookmarksSyncType:(int64_t)a3;
- (int64_t)timedOperationTypeForSyncType:(int64_t)a3;
- (void)_finaliseResetToInitial:(id)a3;
- (void)_setupUPP;
- (void)_synchronousResetToInitialStateDatabase;
- (void)_synchronousResetToInitialStateMetadata;
- (void)addOperation:(id)a3;
- (void)applicationDidEnterBackground;
- (void)dealloc;
- (void)enableAssetDeletionIfPossible:(unint64_t)a3;
- (void)endBackgroundTask;
- (void)keyValueStoreController:(id)a3 transaction:(id)a4 didCancelWithError:(id)a5;
- (void)keyValueStoreController:(id)a3 transactionDidFinish:(id)a4;
- (void)operationFinished:(id)a3;
- (void)performUniversalPlaybackPositionSync;
- (void)reachabilityChangedFrom:(BOOL)a3 to:(BOOL)a4;
- (void)removeEpisodeObserver:(id)a3;
- (void)scheduleEpisodeStateGetWithFeedUrls:(id)a3 priority:(int64_t)a4;
- (void)scheduleEpisodeStatePutWithFeedUrls:(id)a3;
- (void)setIsRunning:(BOOL)a3;
- (void)setPlaylistSyncVersion:(id)a3;
- (void)setResettingToInitialState:(BOOL)a3;
- (void)start;
- (void)startBackgroundTask;
- (void)startUPPSyncTimerAfterPrivacy;
- (void)syncAllBookkeeperKeys;
- (void)syncCoreKeysIfDirty;
- (void)syncCriticalBookkeeperKeysShouldSyncCleanKeys:(BOOL)a3;
- (void)syncEverything;
- (void)syncMultipleKeysAndProcessors:(id)a3 shouldSyncCleanKeys:(BOOL)a4;
- (void)syncNonFollowedShows;
- (void)syncNonFollowedShowsIfSyncDirty;
- (void)syncSubscriptions;
- (void)syncTermsVersion;
- (void)updateAccountForLastSync;
@end

@implementation MTSyncController

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A790;
  block[3] = &unk_1004D86F8;
  block[4] = a1;
  if (qword_100583C98 != -1)
  {
    dispatch_once(&qword_100583C98, block);
  }

  v2 = qword_100583C90;

  return v2;
}

- (MTSyncController)init
{
  v21.receiver = self;
  v21.super_class = MTSyncController;
  v2 = [(MTSyncController *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MTSyncController.syncQueue", 0);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v3;

    v5 = objc_opt_new();
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = +[NSMutableArray array];
    episodeObservers = v2->_episodeObservers;
    v2->_episodeObservers = v7;

    v9 = objc_alloc_init(_TtC8Podcasts20CloudSyncBugReporter);
    cloudSyncBugReporter = v2->_cloudSyncBugReporter;
    v2->_cloudSyncBugReporter = v9;

    v11 = [[MTKeyProcessorPairProvider alloc] initWithCloudSyncBugReporter:v2->_cloudSyncBugReporter];
    keyProcessorPairProvider = v2->_keyProcessorPairProvider;
    v2->_keyProcessorPairProvider = v11;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    v2->_lastOperation = 0.0;
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"operationFinished:" name:@"MTTimedOperationFinished" object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"syncCoreKeysIfDirty" name:@"MTFeedUpdateDidEndUpdatingAllFeeds" object:0];

    v15 = objc_opt_new();
    episodeSyncStorage = v2->_episodeSyncStorage;
    v2->_episodeSyncStorage = v15;

    v17 = [objc_opt_class() syncFlagsForSyncType:0];
    v2->_syncVersionFlags = [objc_opt_class() syncFlagsForSyncType:1] | v17;
    v18 = +[MTAppShortcutManager sharedInstance];
    [(MTSyncController *)v2 resetToInitialStateIfIncomplete];
    v19 = v2;
  }

  return v2;
}

- (BOOL)resetToInitialStateIfIncomplete
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"kMTSyncControllerResettingToInitialState"];
  v5 = v4;
  v6 = &__kCFBooleanFalse;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v7 BOOLValue];
  if (!v8)
  {
    return 0;
  }

  v9 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reset to initial state was incomplete. Will retry.", v11, 2u);
  }

  return [(MTSyncController *)self resetToInitialStateForced:1];
}

- (void)endBackgroundTask
{
  if ([(MTSyncController *)self backgroundTask]!= UIBackgroundTaskInvalid)
  {
    v3 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "*** Ending background task", v5, 2u);
    }

    v4 = +[UIApplication sharedApplication];
    [v4 endBackgroundTask:{-[MTSyncController backgroundTask](self, "backgroundTask")}];

    [(MTSyncController *)self setBackgroundTask:UIBackgroundTaskInvalid];
  }
}

- (void)start
{
  if ((sub_10003DBA0() & 1) == 0)
  {
    v3 = +[IMURLBag sharedInstance];
    v4 = self->_syncQueue;
    if ([(MTSyncController *)self isRunning])
    {
      v5 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "MTSyncController start called, but the controller is already running.";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      }
    }

    else
    {
      v7 = +[MTReachability sharedInstance];
      [v7 addObserver:self];

      v8 = +[MTReachability sharedInstance];
      v9 = [v8 isReachable];

      v5 = _MTLogCategoryCloudSync();
      v10 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MTSyncController start is requesting bag keys", buf, 2u);
        }

        v11 = [v3 URLForKey:kMTSyncGetAll];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10003DC98;
        v12[3] = &unk_1004DC0F0;
        v13 = v3;
        v14 = v4;
        v15 = self;
        [v11 asyncValueOnQueue:v14 withCompletion:v12];

        v5 = v13;
        goto LABEL_12;
      }

      if (v10)
      {
        *buf = 0;
        v6 = "Cannot start sync controller - Network is not reachable";
        goto LABEL_11;
      }
    }

LABEL_12:
  }
}

- (BOOL)isRunning
{
  v2 = self;
  objc_sync_enter(v2);
  isRunning = v2->_isRunning;
  objc_sync_exit(v2);

  return isRunning;
}

- (void)_setupUPP
{
  v3 = [(MTSyncController *)self UPPStore];
  [v3 setDataSource:0];

  v4 = objc_alloc_init(MZUniversalPlaybackPositionStore);
  [(MTSyncController *)self setUPPStore:v4];

  v5 = objc_alloc_init(MTUniversalPlaybackPositionDataSource);
  [(MTSyncController *)self setUppDataSource:v5];

  v6 = [(MTSyncController *)self UPPStore];
  v7 = [(MTSyncController *)self uppDataSource];
  [v6 setDataSource:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(MTSyncController *)self episodeObservers];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = [(MTSyncController *)self uppDataSource];
        [v14 addEpisodeObserver:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)syncEverything
{
  [(MTSyncController *)self syncAllBookkeeperKeys];

  [(MTSyncController *)self performUniversalPlaybackPositionSync];
}

- (void)syncAllBookkeeperKeys
{
  if ([(MTSyncController *)self canScheduleSyncRequest])
  {
    v3 = [(MTSyncController *)self keyProcessorPairProvider];
    v4 = [v3 keysAndProcessorsForAllBookkeeperKeys];

    [(MTSyncController *)self syncMultipleKeysAndProcessors:v4 shouldSyncCleanKeys:1];
  }

  else
  {

    [(MTSyncController *)self resetToInitialStateForced:0];
  }
}

- (BOOL)canScheduleSyncRequest
{
  if ([(MTSyncController *)self isRunning])
  {
    v3 = +[MTReachability sharedInstance];
    v4 = [v3 isReachable];

    if (v4)
    {
      if ([(MTSyncController *)self isUserLoggedIn])
      {
        if (+[MTPrivacyUtil privacyAcknowledgementNeeded])
        {
          v5 = _MTLogCategoryCloudSync();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v11 = 0;
            v6 = "Cannot schedule sync request - Need privacy acknoweldgement";
            v7 = &v11;
LABEL_13:
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
          }
        }

        else
        {
          if ([(MTSyncController *)self hasAccountChangedSinceLastSync])
          {
            v5 = _MTLogCategoryCloudSync();
            if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            v10 = 0;
            v6 = "Cannot schedule sync request - Account has changed since last sync";
            v7 = &v10;
            goto LABEL_13;
          }

          if (![(MTSyncController *)self resettingToInitialState])
          {
            return sub_10003DBA0() ^ 1;
          }

          v5 = _MTLogCategoryCloudSync();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 0;
            v6 = "Cannot schedule sync request - We are in the process of resetting to initial state";
            v7 = &v9;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v5 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v6 = "Cannot schedule sync request - User is not logged in";
          v7 = buf;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v5 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v6 = "Cannot schedule sync request - Network is not reachable";
        v7 = &v13;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v5 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v6 = "Cannot schedule sync request - Sync controller should be started before syncing.";
      v7 = &v14;
      goto LABEL_13;
    }
  }

LABEL_14:

  return 0;
}

- (BOOL)isUserLoggedIn
{
  v2 = objc_opt_class();

  return [v2 isUserLoggedIn];
}

+ (BOOL)isUserLoggedIn
{
  v2 = +[MTAccountController sharedInstance];
  v3 = [v2 activeAccount];

  v4 = +[MTAccountController sharedInstance];
  v5 = [v4 isUserLoggedIn];

  return v5;
}

- (BOOL)hasPodcastSyncVersion
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v3 = [v2 subscriptionsSyncVersionFor:0];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasPodcastSyncV3Version
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v3 = [v2 subscriptionsSyncVersionFor:1];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasPlaylistSyncVersion
{
  v2 = [(MTSyncController *)self playlistSyncVersion];
  v3 = v2 != 0;

  return v3;
}

- (NSString)playlistSyncVersion
{
  v2 = objc_opt_class();

  return [v2 playlistSyncVersion];
}

+ (id)playlistSyncVersion
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:kMTPlaylistsKey];

  return v3;
}

+ (id)accountIdentifierForLastSync
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"SSAccountIdentifier"];

  return v3;
}

- (void)performUniversalPlaybackPositionSync
{
  if (![(MTSyncController *)self checkViabilityOfSyncLibraryAndUPP])
  {
    v3 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Cannot sync library and UPP. Skipping UPP sync.";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  if (+[PFClientUtil isRunningOnHomepod])
  {
    v3 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Not doing UPP Sync on HomePod.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = +[UIApplication sharedApplication];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F0478;
  v11[3] = &unk_1004D8688;
  v11[4] = buf;
  v6 = [v5 beginBackgroundTaskWithName:@"MTSyncController.UPPEnabled" expirationHandler:v11];

  *(v13 + 3) = v6;
  objc_initWeak(&location, self);
  v7 = [(MTSyncController *)self UPPEnabled];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F04D8;
  v8[3] = &unk_1004DC138;
  objc_copyWeak(&v9, &location);
  v8[4] = buf;
  [v7 addFinishBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

- (BOOL)checkViabilityOfSyncLibraryAndUPP
{
  if ([(MTSyncController *)self canScheduleSyncRequest])
  {
    v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    v4 = [v3 isLibrarySyncEnabled];

    return v4;
  }

  else
  {
    [(MTSyncController *)self resetToInitialStateIfNeeded];
    return 0;
  }
}

- (id)addEpisodeObserverUsingBlock:(id)a3
{
  v4 = [MTSyncedEpisodeObserver observerWithBlock:a3];
  [(NSMutableArray *)self->_episodeObservers addObject:v4];
  v5 = [(MTSyncController *)self uppDataSource];
  [v5 addEpisodeObserver:v4];

  return v4;
}

- (void)removeEpisodeObserver:(id)a3
{
  episodeObservers = self->_episodeObservers;
  v5 = a3;
  [(NSMutableArray *)episodeObservers removeObject:v5];
  v6 = [(MTSyncController *)self uppDataSource];
  [v6 removeEpisodeObserver:v5];
}

- (void)startUPPSyncTimerAfterPrivacy
{
  v2 = [(MTSyncController *)self UPPStore];
  [v2 startUPPSyncTimer];
}

- (void)operationFinished:(id)a3
{
  v4 = a3;
  v5 = [(NSOperationQueue *)self->_queue operationCount];
  v6 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134217984;
    v20[0] = v5 - 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MTSyncController operation completed: Count is %lld", &v19, 0xCu);
  }

  if ([objc_opt_class() isUserLoggedIn])
  {
    v7 = +[MTPushNotificationController sharedInstance];
    [v7 registerPushNotifications];
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(MTSyncController *)v8 resettingToInitialState];
  objc_sync_exit(v8);

  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:@"MTTimedOperationIsCancelledKey"];
  v12 = [v11 BOOLValue];

  if ((v9 | v12))
  {
    v13 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109376;
      LODWORD(v20[0]) = v9;
      WORD2(v20[0]) = 1024;
      *(v20 + 6) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Didn't updateAccountForLastSync because resettingToInitialState = %d or operationIsCancelled = %d", &v19, 0xEu);
    }
  }

  else
  {
    [(MTSyncController *)v8 updateAccountForLastSync];
  }

  if ([(NSOperationQueue *)self->_queue operationCount]== 1)
  {
    v14 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sync Operations Completed", &v19, 2u);
    }

    [(MTSyncController *)v8 enableAssetDeletionIfPossible:1];
    [(MTSyncController *)v8 endBackgroundTask];
    dispatch_async(&_dispatch_main_q, &stru_1004DC110);
    v15 = v8;
    objc_sync_enter(v15);
    if ([(MTSyncController *)v15 resyncWhenDone])
    {
      v16 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Syncing Content for New Account (previous sync completed)", &v19, 2u);
      }

      [(MTSyncController *)v15 syncEverything];
      [(MTSyncController *)v15 setResyncWhenDone:0];
    }

    objc_sync_exit(v15);
  }

  v17 = +[NSDate date];
  [v17 timeIntervalSince1970];
  v8->_lastOperation = v18;
}

- (void)applicationDidEnterBackground
{
  if ([(NSOperationQueue *)self->_queue operationCount])
  {
    v3 = +[PodcastsApplicationStateMonitor shared];
    v4 = [v3 isActive];

    if (v4)
    {

      [(MTSyncController *)self startBackgroundTask];
    }
  }
}

- (void)startBackgroundTask
{
  v2 = self;
  objc_sync_enter(v2);
  [(MTSyncController *)v2 endBackgroundTask];
  objc_initWeak(&location, v2);
  v3 = +[UIApplication sharedApplication];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000EFCC4;
  v12 = &unk_1004D9E80;
  objc_copyWeak(&v13, &location);
  v4 = [v3 beginBackgroundTaskWithName:@"MTSyncController" expirationHandler:&v9];
  [(MTSyncController *)v2 setBackgroundTask:v4, v9, v10, v11, v12];

  v5 = [(MTSyncController *)v2 backgroundTask];
  +[PodcastsApplicationStateMonitor remainingBackgroundTime];
  v7 = v6;
  v8 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v16 = v5;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "*** Start background task with id=%lu timeout=%f", buf, 0x16u);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  objc_sync_exit(v2);
}

- (void)addOperation:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = -[MTSyncController operationInQueueWithType:](v5, "operationInQueueWithType:", [v4 operationType]);
  if (!v6 || [v4 operationType] == 6 || objc_msgSend(v4, "operationType") == 7 || objc_msgSend(v4, "operationType") == 12)
  {
    v7 = +[PodcastsApplicationStateMonitor shared];
    if ([v7 isActive])
    {
      v8 = [(MTSyncController *)v5 backgroundTask];

      if (v8 == UIBackgroundTaskInvalid)
      {
        [(MTSyncController *)v5 startBackgroundTask];
      }
    }

    else
    {
    }

    if ([v4 requiresStartDelayToAvoidClampErrors])
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSince1970];
      v11 = v10;

      lastOperation = v5->_lastOperation;
      if (lastOperation != 0.0)
      {
        v13 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = v11 - v5->_lastOperation;
          v25 = 134217984;
          v26 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Time since last operation %f", &v25, 0xCu);
        }

        lastOperation = v5->_lastOperation;
      }

      if ((lastOperation == 0.0 || v11 - lastOperation >= 6.0) && ![(NSOperationQueue *)v5->_queue operationCount])
      {
        v15 = 0.5;
      }

      else
      {
        v15 = 6.0;
      }

      [v4 setStartDelay:v15];
    }

    [(NSOperationQueue *)v5->_queue addOperation:v4];
    v16 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 operationType];
      [v4 startDelay];
      v19 = v18;
      v20 = [(NSOperationQueue *)v5->_queue operationCount];
      v25 = 134218754;
      v26 = *&v17;
      v27 = 2048;
      *v28 = v19;
      *&v28[8] = 2048;
      v29 = v20;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Add operation with type: %ld with a timeout of %f. Total operation count is %li op=%@", &v25, 0x2Au);
    }
  }

  else
  {
    v21 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134218496;
      v26 = COERCE_DOUBLE([v6 operationType]);
      v27 = 1024;
      *v28 = [v6 isExecuting];
      *&v28[4] = 1024;
      *&v28[6] = [v6 isFinished];
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Dropping operation with type %ld as it's in the queue. isExecuting = %d, isFinished = %d", &v25, 0x18u);
    }

    v22 = [(MTSyncController *)v5 queue];
    v23 = [v22 operations];
    v16 = [v23 firstObject];

    if (([v16 isFinished]& 1) == 0 && [v16 isCancelled]&& ([v16 isExecuting]& 1) == 0)
    {
      v24 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Sync is probably stalled :(", &v25, 2u);
      }
    }
  }

  objc_sync_exit(v5);
}

- (void)setIsRunning:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isRunning = a3;
  objc_sync_exit(obj);
}

- (void)setResettingToInitialState:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  obj->_resettingToInitialState = v3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [NSNumber numberWithBool:v3];
  [v4 setObject:v5 forKey:@"kMTSyncControllerResettingToInitialState"];

  objc_sync_exit(obj);
}

- (id)operationInQueueWithType:(int64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSOperationQueue *)self->_queue operations];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 operationType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)dealloc
{
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "<%p>", buf, 0xCu);
  }

  v4 = [(MTSyncController *)self UPPStore];
  [v4 setDataSource:0];

  v5 = +[MTReachability sharedInstance];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = MTSyncController;
  [(MTSyncController *)&v6 dealloc];
}

- (int64_t)timedOperationTypeForSyncType:(int64_t)a3
{
  if (a3 == 1)
  {
    return 13;
  }

  else
  {
    return 1;
  }
}

- (int64_t)timedOperationTypeForBookmarksSyncType:(int64_t)a3
{
  if (a3 == 1)
  {
    return 14;
  }

  else
  {
    return 11;
  }
}

- (AMSPromise)UPPEnabled
{
  UPPEnabled = self->_UPPEnabled;
  if (!UPPEnabled)
  {
    v4 = +[IMURLBag sharedInstance];
    v5 = [v4 stringForKey:kMTUPPDisabled];
    v6 = dispatch_queue_create("UPPEnabled", 0);
    v7 = [v5 asyncValuePromiseOnQueue:v6];
    v8 = [v7 thenWithBlock:&stru_1004DC178];
    v9 = self->_UPPEnabled;
    self->_UPPEnabled = v8;

    UPPEnabled = self->_UPPEnabled;
  }

  v10 = UPPEnabled;

  return v10;
}

- (void)syncCoreKeysIfDirty
{
  if ([(MTSyncController *)self checkViabilityOfSyncLibraryAndUPP])
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F0970;
    block[3] = &unk_1004D8358;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (void)syncSubscriptions
{
  if ([(MTSyncController *)self checkViabilityOfSyncLibraryAndUPP])
  {
    v3 = [(MTSyncController *)self keyProcessorPairProvider];
    v4 = [v3 keysAndProcessorsForSubscriptionsAndStationsSync];

    [(MTSyncController *)self syncMultipleKeysAndProcessors:v4 shouldSyncCleanKeys:1];
  }
}

- (void)syncTermsVersion
{
  if ([(MTSyncController *)self canScheduleSyncRequest])
  {
    v3 = objc_alloc_init(MTTimedOperation);
    [(MTTimedOperation *)v3 setOperationType:8];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000F0B1C;
    v4[3] = &unk_1004D8358;
    v4[4] = self;
    [(MTTimedOperation *)v3 setMainBlock:v4];
    [(MTSyncController *)self addOperation:v3];
  }

  else
  {

    [(MTSyncController *)self resetToInitialStateIfNeeded];
  }
}

- (void)syncNonFollowedShowsIfSyncDirty
{
  if ([(MTSyncController *)self checkViabilityOfSyncLibraryAndUPP])
  {
    v3 = objc_alloc_init(_TtC8Podcasts29NonFollowedShowsSyncProcessor);
    if ([(NonFollowedShowsSyncProcessor *)v3 hasLocalChanges])
    {
      [(MTSyncController *)self syncNonFollowedShows];
    }
  }
}

- (void)syncNonFollowedShows
{
  if ([(MTSyncController *)self checkViabilityOfSyncLibraryAndUPP])
  {
    objc_initWeak(&location, self);
    v3 = objc_opt_new();
    [v3 setOperationType:15];
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = sub_1000F0DF4;
    v7 = &unk_1004D9E80;
    objc_copyWeak(&v8, &location);
    [v3 setMainBlock:&v4];
    [(MTSyncController *)self addOperation:v3, v4, v5, v6, v7];
    objc_destroyWeak(&v8);

    objc_destroyWeak(&location);
  }
}

- (BOOL)keyValueStoreController:(id)a3 transaction:(id)a4 didFailWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v8 code] != -1001)
  {
    v9 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "transaction did fail with error: %@", &v14, 0xCu);
    }
  }

  if ([v8 isAccountsChangedError])
  {
    [(MTSyncController *)self resetToInitialStateIfNeeded];
    [(MTSyncController *)self syncEverything];
LABEL_8:
    [(MTSyncController *)self enableAssetDeletionIfPossible];
    v10 = 0;
    goto LABEL_12;
  }

  if ([v8 isRecoverableError])
  {
    goto LABEL_8;
  }

  v11 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ Did fail with unrecoverable error. Cancelling all transactions", &v14, 0xCu);
  }

  v12 = [(MTSyncController *)self cloudSyncController];
  [v12 cancelAllTransactions];

  v10 = 1;
LABEL_12:

  return v10;
}

- (void)keyValueStoreController:(id)a3 transaction:(id)a4 didCancelWithError:(id)a5
{
  v6 = a5;
  v7 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 description];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
  }

  [(MTSyncController *)self enableAssetDeletionIfPossible];
}

- (void)keyValueStoreController:(id)a3 transactionDidFinish:(id)a4
{
  v5 = [a4 processor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = +[MTLibrary sharedInstance];
    [v7 cleanUpOldHiddenPodcasts];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MTSyncControllerSubscriptionSyncCompleted" object:0];
  }

  [(MTSyncController *)self enableAssetDeletionIfPossible];
}

- (void)enableAssetDeletionIfPossible:(unint64_t)a3
{
  v6 = [(MTSyncController *)self cloudSyncController];
  if ([v6 isIdle])
  {
    v5 = [(NSOperationQueue *)self->_queue operationCount];

    if (v5 != a3)
    {
      return;
    }

    v6 = +[(MTBaseProcessor *)MTAssetRemovalProcessor];
    [v6 enable];
  }
}

- (void)scheduleEpisodeStatePutWithFeedUrls:(id)a3
{
  v4 = a3;
  if (+[PFClientUtil isRunningOnHomepod])
  {
    v5 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not scheduling episode sync PUT on HomePod.", buf, 2u);
    }

    goto LABEL_7;
  }

  if (-[MTSyncController checkViabilityOfSyncLibraryAndUPP](self, "checkViabilityOfSyncLibraryAndUPP") && [v4 count])
  {
    v5 = objc_opt_new();
    [v5 setOperationType:7];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1000F14A0;
    v9 = &unk_1004D8798;
    v10 = self;
    v11 = v4;
    [v5 setMainBlock:&v6];
    [(MTSyncController *)self addOperation:v5, v6, v7, v8, v9, v10];

LABEL_7:
  }
}

- (void)scheduleEpisodeStateGetWithFeedUrls:(id)a3 priority:(int64_t)a4
{
  v6 = a3;
  if (+[PFClientUtil isRunningOnHomepod])
  {
    v7 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not scheduling episode sync GET on HomePod.", buf, 2u);
    }

    goto LABEL_7;
  }

  if (-[MTSyncController checkViabilityOfSyncLibraryAndUPP](self, "checkViabilityOfSyncLibraryAndUPP") && [v6 count])
  {
    v7 = objc_opt_new();
    [v7 setOperationType:6];
    [v7 setQueuePriority:a4];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000F16F0;
    v11 = &unk_1004D8798;
    v12 = v6;
    v13 = self;
    [v7 setMainBlock:&v8];
    [(MTSyncController *)self addOperation:v7, v8, v9, v10, v11];

LABEL_7:
  }
}

- (id)expandFeedUrls:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(MTSyncController *)self episodeSyncStorage];
        v13 = [v12 modernKeyFromFeedUrl:v11];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)syncCriticalBookkeeperKeysShouldSyncCleanKeys:(BOOL)a3
{
  v3 = a3;
  if ([(MTSyncController *)self checkViabilityOfSyncLibraryAndUPP])
  {
    v5 = [(MTSyncController *)self keyProcessorPairProvider];
    v6 = [v5 keysAndProcessorsForCriticalBookkeeperKeys];

    [(MTSyncController *)self syncMultipleKeysAndProcessors:v6 shouldSyncCleanKeys:v3];
  }
}

- (void)syncMultipleKeysAndProcessors:(id)a3 shouldSyncCleanKeys:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[MTMultiKeySyncProcessor alloc] initWithKeysAndProcessors:v6];
  objc_initWeak(&location, self);
  if (v4)
  {
    v8 = objc_alloc_init(MTTimedOperation);
    [(MTTimedOperation *)v8 setOperationType:16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F1C04;
    v15[3] = &unk_1004DB990;
    v16 = v7;
    objc_copyWeak(&v17, &location);
    [(MTTimedOperation *)v8 setMainBlock:v15];
    [(MTSyncController *)self addOperation:v8];
    objc_destroyWeak(&v17);
  }

  v9 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F1D48;
  v11[3] = &unk_1004DC1A0;
  v12 = v7;
  v10 = v7;
  objc_copyWeak(&v14, &location);
  v13 = self;
  dispatch_async(v9, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

+ (void)resetMetadataToInitialState
{
  v3 = objc_opt_new();
  [v3 resetVersionForAllFeedUrls];

  [a1 resetAllSubscriptionSyncVersion];
  [a1 resetPlaylistSyncVersion];
  +[MTBookmarksSyncStorage resetBookmarksSync];
  +[MTUniversalPlaybackPositionDataSource resetUppLastSyncTimeAndDomainVersion];
  +[_TtC8Podcasts27NonFollowedShowsSyncStorage resetNonFollowedShowsSync];
  +[_TtC8Podcasts19InterestSyncStorage resetInterestSync];
  v4 = +[MTPrivacyUtil cloudSyncVersion];

  if (v4)
  {
    +[MTPrivacyUtil resetToInitialState];
  }

  v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v6 = [v5 podcastsDomainVersion];

  if (v6)
  {
    v7 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v7 setPodcastsDomainVersion:0];
  }

  v8 = +[MTPushNotificationController sharedInstance];
  [v8 unregisterPushNotifications];

  v9 = +[MTIntentDonationUtil sharedInstance];
  [v9 removeAllDonations];

  v10 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Clearing account identifier for last sync", v11, 2u);
  }

  [a1 resetAccountIdentifierForLastSync];
}

- (BOOL)resetToInitialStateForced:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!+[MTApplication localLibraryUpdatesDisabled])
  {
    v9 = self;
    objc_sync_enter(v9);
    if ([(MTSyncController *)v9 resettingToInitialState])
    {
      v10 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "Reset to initial state in progress";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      }
    }

    else if ([(MTSyncController *)v9 isRunning]|| v4)
    {
      v12 = +[MTAccountController sharedInstance];
      v13 = [v12 hasFetchedInitialAccount] | v4;

      if (v13)
      {
        if (![(MTSyncController *)v9 hasPodcastSyncVersion]&& ![(MTSyncController *)v9 hasPodcastSyncV3Version])
        {
          v14 = +[MTPrivacyUtil cloudSyncVersion];
          if (v14 || [(MTSyncController *)v9 hasPlaylistSyncVersion])
          {
          }

          else if (!+[MTBookmarksSyncStorage hasBookmarksSync])
          {
            v19 = +[MTSyncController accountIdentifierForLastSync];

            if (!v19)
            {
              v10 = _MTLogCategoryCloudSync();
              if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_27;
              }

              *buf = 0;
              v11 = "Already in Initial State";
              goto LABEL_26;
            }
          }
        }

        if ([(MTSyncController *)v9 isUserLoggedIn]&& ![(MTSyncController *)v9 hasAccountChangedSinceLastSync]&& !v4)
        {
          v10 = _MTLogCategoryCloudSync();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          *buf = 0;
          v11 = "Already in Initial State, account didn't change";
          goto LABEL_26;
        }

        if (!+[MTPrivacyUtil privacyAcknowledgementNeeded])
        {
          [(MTSyncController *)v9 setResettingToInitialState:1];
          v16 = _MTLogCategoryCloudSync();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Reset to Initial State - Started", buf, 2u);
          }

          v17 = [(MTSyncController *)v9 cloudSyncController];
          [v17 cancelAllTransactions];

          [(NSOperationQueue *)v9->_queue cancelAllOperations];
          v18 = objc_opt_new();
          [v18 setOperationType:10];
          [v18 setStartDelay:0.0];
          v20 = _NSConcreteStackBlock;
          v21 = 3221225472;
          v22 = sub_1000F263C;
          v23 = &unk_1004D8520;
          v24 = v9;
          v25 = v6;
          [v18 setMainBlock:&v20];
          [(MTSyncController *)v9 addOperation:v18, v20, v21, v22, v23, v24];

          v8 = 1;
          goto LABEL_30;
        }

        v10 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v11 = "No reset - missing privacy ACK";
          goto LABEL_26;
        }
      }

      else
      {
        v10 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v11 = "Can't reset because the account isn't available yet";
          goto LABEL_26;
        }
      }
    }

    else
    {
      v10 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "Shouldn't reset because the sync controller didn't complete starting yet.";
        goto LABEL_26;
      }
    }

LABEL_27:

    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }

    v8 = 0;
LABEL_30:
    objc_sync_exit(v9);

    goto LABEL_31;
  }

  v7 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DEMO MODE Trying to reset to initial state. We say no", buf, 2u);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }

  v8 = 0;
LABEL_31:

  return v8;
}

- (void)_synchronousResetToInitialStateDatabase
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 importContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2738;
  v6[3] = &unk_1004D8798;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

- (void)_synchronousResetToInitialStateMetadata
{
  +[MTUniversalPlaybackPositionDataSource resetUppLastSyncTimeAndDomainVersion];
  v2 = +[MTPrivacyUtil cloudSyncVersion];

  if (v2)
  {
    +[MTPrivacyUtil resetToInitialState];
  }

  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v4 = [v3 podcastsDomainVersion];

  if (v4)
  {
    v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v5 setPodcastsDomainVersion:0];
  }

  v6 = +[MTPushNotificationController sharedInstance];
  [v6 unregisterPushNotifications];

  v7 = +[MTIntentDonationUtil sharedInstance];
  [v7 removeAllDonations];

  v8 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing account identifier for last sync", v9, 2u);
  }

  [objc_opt_class() resetAccountIdentifierForLastSync];
}

- (void)_finaliseResetToInitial:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(MTSyncController *)v5 setResettingToInitialState:0];
  v6 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reset to Initial State - Completed", buf, 2u);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"MTSyncControllerResetToInitialStateCompleted" object:0];

  objc_sync_exit(v5);
  v8 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F2EA4;
  v10[3] = &unk_1004D9158;
  v10[4] = v5;
  v11 = v4;
  v9 = v4;
  dispatch_async(v8, v10);
}

+ (int64_t)syncFlagsForSyncType:(int64_t)a3
{
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v5 = [v4 subscriptionsSyncVersionFor:a3];

  if (v5)
  {
    v6 = 1 << a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)didUpdateSubscriptionsSyncVersionForSyncType:(int64_t)a3
{
  v3 = a3;
  v5 = [a1 sharedInstance];
  v6 = [v5 syncVersionFlags];

  if (v6 != 3)
  {
    v7 = v6 | (1 << v3);
    v8 = [a1 sharedInstance];
    [v8 setSyncVersionFlags:v7];

    v9 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting MTSyncController syncVersionFlags to %lld", &v10, 0xCu);
    }
  }
}

+ (void)resetAllSubscriptionSyncVersion
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v2 resetSubscriptionsSyncVersionFor:0];

  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v3 resetSubscriptionsSyncVersionFor:1];
}

- (BOOL)hasInterestSyncVersion
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v3 = [v2 interestSyncVersion];
  v4 = v3 != 0;

  return v4;
}

- (void)setPlaylistSyncVersion:(id)a3
{
  v3 = a3;
  [objc_opt_class() setPlaylistSyncVersion:v3];
}

+ (void)setPlaylistSyncVersion:(id)a3
{
  v6 = a3;
  v3 = [v6 length];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v6 forKey:kMTPlaylistsKey];
  }

  else
  {
    [v4 removeObjectForKey:kMTPlaylistsKey];
  }
}

+ (void)resetPlaylistSyncVersion
{
  [a1 setPlaylistSyncVersion:0];
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v2 setIsPlaylistSyncDirty:1];
}

+ (void)setAccountIdentifierForLastSync:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = [v5 accountIdentifierForLastSync];
  v7 = v6;
  if (v6 != v4 && ([v6 isEqualToString:v4] & 1) == 0)
  {
    v8 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Changing account identifier to %@ from %@", &v10, 0x16u);
    }

    if ([v4 length])
    {
      v9 = +[NSUserDefaults standardUserDefaults];
      [v9 setObject:v4 forKey:@"SSAccountIdentifier"];
    }

    else
    {
      v9 = +[NSUserDefaults standardUserDefaults];
      [v9 removeObjectForKey:@"SSAccountIdentifier"];
    }
  }

  objc_sync_exit(v5);
}

+ (BOOL)hasAccountChangedSinceLastSync
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = [v2 accountIdentifierForLastSync];
  if (![v3 length])
  {
    v6 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "hasAccountChangedSinceLastSync = NO since there was previously no account", buf, 2u);
    }

    goto LABEL_10;
  }

  v4 = +[MTAccountController sharedInstance];
  v5 = [v4 activeDsid];
  v6 = [v5 stringValue];

  if (![v6 length])
  {
    v8 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "hasAccountChangedSinceLastSync = NO since there is currently no account", v10, 2u);
    }

    goto LABEL_10;
  }

  if (v3 == v6)
  {
LABEL_10:
    LOBYTE(v7) = 0;
    goto LABEL_11;
  }

  v7 = [v3 isEqualToString:v6]^ 1;
LABEL_11:

  objc_sync_exit(v2);
  return v7;
}

- (BOOL)hasAccountChangedSinceLastSync
{
  v2 = objc_opt_class();

  return [v2 hasAccountChangedSinceLastSync];
}

- (void)updateAccountForLastSync
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating account for last sync", v7, 2u);
  }

  v4 = +[MTAccountController sharedInstance];
  v5 = [v4 activeDsid];
  v6 = [v5 stringValue];

  [objc_opt_class() setAccountIdentifierForLastSync:v6];
  objc_sync_exit(v2);
}

- (void)reachabilityChangedFrom:(BOOL)a3 to:(BOOL)a4
{
  if (a4 && !a3)
  {
    if ([(MTSyncController *)self isRunning])
    {

      [(MTSyncController *)self syncCriticalBookkeeperKeysShouldSyncCleanKeys:1];
    }

    else
    {

      [(MTSyncController *)self start];
    }
  }
}

@end