@interface MTAutoDownloadProcessor
+ (unint64_t)_freeSpace;
- (BOOL)_isLPMEnabled;
- (BOOL)start;
- (id)defaultPropertiesThatAffectPredicate;
- (id)episodePredicateForPodcast:(id)a3;
- (void)_lpmDidChange;
- (void)_reCheck;
- (void)_reportRetentionPolicy;
- (void)autodownloadEpisodesChanged:(id)a3;
- (void)episodeUuidObserver:(id)a3 resultsChangedForPodcast:(id)a4 withDeletedIds:(id)a5 andInsertIds:(id)a6;
- (void)reachabilityChangedFrom:(BOOL)a3 to:(BOOL)a4;
- (void)stop;
@end

@implementation MTAutoDownloadProcessor

+ (unint64_t)_freeSpace
{
  v9 = 0;
  v2 = +[MTConstants sharedDocumentsDirectory];
  v3 = [v2 path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 attributesOfFileSystemForPath:v3 error:&v9];

  if (v9)
  {
    [v9 logAndThrow:1];
  }

  if (v5)
  {
    v6 = [v5 objectForKey:NSFileSystemFreeSize];
    v7 = [v6 unsignedLongLongValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)start
{
  [(MTAutoDownloadProcessor *)self _reportRetentionPolicy];
  v15.receiver = self;
  v15.super_class = MTAutoDownloadProcessor;
  v3 = [(MTBaseProcessor *)&v15 start];
  if (v3)
  {
    objc_initWeak(&location, self);
    [(MTAutoDownloadProcessor *)self setLastCheckTime:0.0];
    [(MTAutoDownloadProcessor *)self setIsDeviceStorageSpaceAvailableForPersistence:1];
    v4 = +[MTReachability sharedInstance];
    [v4 addObserver:self];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_lpmDidChange" name:NSProcessInfoPowerStateDidChangeNotification object:0];
    v6 = +[MTDeviceCapacityMonitor shared];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100065408;
    v12 = &unk_1004D8D58;
    objc_copyWeak(&v13, &location);
    v7 = [v6 addCapacityChangeObserverWithOptions:3 callback:&v9];
    [(MTAutoDownloadProcessor *)self setDeviceCapacityObserver:v7, v9, v10, v11, v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = MTAutoDownloadProcessor;
  [(MTPodcastAndEpisodeProcessor *)&v5 stop];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[MTDeviceCapacityMonitor shared];
  [v4 removeCapacityChangeObserverWith:{-[MTAutoDownloadProcessor deviceCapacityObserver](self, "deviceCapacityObserver")}];
}

- (id)defaultPropertiesThatAffectPredicate
{
  v2 = +[MTEpisode userDefaultPropertiesAffectingPredicates];
  v3 = +[MTPodcast userDefaultPropertiesAffectingPredicates];
  v4 = [v2 setByAddingObjectsFromSet:v3];

  return v4;
}

- (id)episodePredicateForPodcast:(id)a3
{
  v4 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10006585C;
  v19 = &unk_1004D8D80;
  v7 = v6;
  v20 = v7;
  v8 = v4;
  v21 = v8;
  v22 = &v38;
  v23 = &v34;
  v24 = &v30;
  v25 = &v26;
  [v7 performBlockAndWait:&v16];
  if (*(v39 + 24) == 1 && [(MTAutoDownloadProcessor *)self isDeviceStorageSpaceAvailableForPersistence:v16])
  {
    v9 = *(v31 + 24);
    v10 = v35[3];
    v11 = *(v27 + 24);
    v12 = +[MTAccountController sharedInstance];
    v13 = [v12 activeDsid];
    v14 = [MTEpisode predicateForAutomaticDownloadsOnShow:v8 deletePlayedEpisodes:v9 episodeLimit:v10 serialNextEpisodesSort:v11 includePlayableWithoutAccount:v13 == 0];
  }

  else
  {
    v14 = [NSPredicate falsePredicate:v16];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  return v14;
}

- (void)episodeUuidObserver:(id)a3 resultsChangedForPodcast:(id)a4 withDeletedIds:(id)a5 andInsertIds:(id)a6
{
  if ([a6 count])
  {

    [(MTAutoDownloadProcessor *)self _reCheck];
  }
}

- (void)autodownloadEpisodesChanged:(id)a3
{
  v4 = a3;
  [(MTAutoDownloadProcessor *)self _reportRetentionPolicy];
  if ([v4 count])
  {
    v5 = +[MTReachability sharedInstance];
    v6 = [v5 isReachable];

    if (v6)
    {
      v7 = +[MTReachability sharedInstance];
      v8 = [v7 isReachableViaCellular];

      v9 = +[MTReachability sharedInstance];
      v10 = [v9 isPodcastsCellularDownloadsEnabled];

      if ((v10 & 1) != 0 || !v8)
      {
        if ([(MTAutoDownloadProcessor *)self _isLPMEnabled])
        {
          v11 = _MTLogCategoryDownload();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            goto LABEL_10;
          }

          *buf = 0;
          v12 = "Skipping autodownloaded since Low Power Mode is enabled.";
          goto LABEL_9;
        }

        v13 = [(MTAutoDownloadProcessor *)self isDeviceStorageSpaceAvailableForPersistence];
        v14 = _MTLogCategoryDownload();
        v11 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v30 = [v4 count];
            v31 = 2112;
            v32 = v4;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking Autodownloads for %lu episodes: %@", buf, 0x16u);
          }

          v15 = +[MTDB sharedInstance];
          v16 = [v15 importContext];

          v17 = objc_alloc_init(NSMutableSet);
          v21 = _NSConcreteStackBlock;
          v22 = 3221225472;
          v23 = sub_100065C6C;
          v24 = &unk_1004D8DA8;
          v25 = v4;
          v26 = v16;
          v27 = self;
          v28 = v17;
          v18 = v17;
          v11 = v16;
          [v11 performBlockAndWait:&v21];
          v19 = [MTLegacyDownloadManagerProvider sharedInstance:v21];
          v20 = [v19 downloadManager];
          [v20 addEpisodeAutoDownloads:v18 completion:0];

          goto LABEL_10;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Skipping autodownloaded since disk capacity is low.";
          goto LABEL_9;
        }
      }

      else
      {
        v11 = _MTLogCategoryDownload();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Skipping autodownloaded since cellular internet usage is not allowed.";
LABEL_9:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 2u);
        }
      }
    }

    else
    {
      v11 = _MTLogCategoryDownload();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v12 = "Skipping autodownloaded since there is no active internet connection";
        goto LABEL_9;
      }
    }

LABEL_10:
  }
}

- (BOOL)_isLPMEnabled
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3;
}

- (void)_reCheck
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  [(MTAutoDownloadProcessor *)self lastCheckTime];
  v6 = v4 - v5;
  if (v4 - v5 >= 2.0)
  {
    [(MTAutoDownloadProcessor *)self setLastCheckTime:v4];
    [(MTAutoDownloadProcessor *)self setHasCheckQueued:0];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100065FEC;
    v9[3] = &unk_1004D8358;
    v9[4] = self;
    [(MTBaseProcessor *)self enqueueWorkBlock:v9];
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    if (![(MTAutoDownloadProcessor *)v7 hasCheckQueued])
    {
      v8 = _MTLogCategoryDownload();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v11 = v6 + 1.0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Postponing recheck for %.0lf sec.", buf, 0xCu);
      }

      [(MTAutoDownloadProcessor *)v7 setHasCheckQueued:1];
      [(MTAutoDownloadProcessor *)v7 performSelector:"_reCheck" withObject:0 afterDelay:v6 + 1.0];
    }

    objc_sync_exit(v7);
  }
}

- (void)reachabilityChangedFrom:(BOOL)a3 to:(BOOL)a4
{
  if (a4)
  {
    [(MTAutoDownloadProcessor *)self _reCheck];
  }
}

- (void)_lpmDidChange
{
  if (![(MTAutoDownloadProcessor *)self _isLPMEnabled])
  {

    [(MTAutoDownloadProcessor *)self _reCheck];
  }
}

- (void)_reportRetentionPolicy
{
  if (qword_100583A60 != -1)
  {
    sub_1003B2AE4();
  }

  v2 = qword_100583A58;
  v3 = +[PFAnalyticsEvent globalRetentionPolicy];
  [v2 sendEvent:v3];
}

@end