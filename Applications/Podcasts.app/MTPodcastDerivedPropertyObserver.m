@interface MTPodcastDerivedPropertyObserver
+ (id)sharedInstance;
- (BOOL)_changeContainsRelevantChannelChanges:(id)a3;
- (BOOL)_changeContainsRelevantEpisodeChanges:(id)a3;
- (BOOL)_changeContainsRelevantPodcastChanges:(id)a3;
- (BOOL)_shouldUpdatePodcastsStatsForChange:(id)a3;
- (BOOL)setDerivedPropertyValue:(id)a3 forKey:(id)a4 forPodcast:(id)a5;
- (MTPodcastDerivedPropertyObserver)init;
- (NSMutableDictionary)handlers;
- (id)_historyTransactionsSinceLatestPersistentHistoryToken;
- (id)_predicateForEpisodesToUpdateWithPodcastUuid:(id)a3 predicateForUnplayedInUnplayedTab:(id)a4 predicateForUserEpisodes:(id)a5;
- (id)addDerivedPropertyChangeHandler:(id)a3;
- (id)dependentPropertyForKey:(id)a3 forPodcastUuid:(id)a4;
- (id)derivedPropertiesForPodcast:(id)a3;
- (id)derivedPropertyValueForKey:(id)a3 forPodcast:(id)a4;
- (unint64_t)countOfNewEpisodesForPodcast:(id)a3;
- (unint64_t)countOfUnplayedEpisodesForPodcast:(id)a3;
- (void)_fetchLatestProcessedPersistentHistoryToken;
- (void)_processLatestPersistentHistoryTransactions;
- (void)_setLastProcessedPersistentHistoryToken:(id)a3;
- (void)_updateDerivedPropertiesForPodcastUUIDs:(id)a3;
- (void)_updateEpisodeCountsForPodcastUuid:(id)a3;
- (void)episodeResultsChangedForPodcastUuid:(id)a3;
- (void)notifyObserversForPodcast:(id)a3;
- (void)pauseProcessing;
- (void)removeDerivedPropertyChangeHandler:(id)a3;
- (void)reportStatsForPodcasts;
- (void)resumeProcessing;
- (void)setDependentPropertyValue:(id)a3 forKey:(id)a4 forPodcastUuid:(id)a5;
- (void)startObserving;
- (void)stopObserving;
- (void)updateFlagsForPodcastUuid:(id)a3 predicateForUnplayedTab:(id)a4 predicateForUserEpisodes:(id)a5;
@end

@implementation MTPodcastDerivedPropertyObserver

+ (id)sharedInstance
{
  if (qword_100583CC0 != -1)
  {
    sub_10003D3F0();
  }

  v3 = qword_100583CB8;

  return v3;
}

- (MTPodcastDerivedPropertyObserver)init
{
  v31.receiver = self;
  v31.super_class = MTPodcastDerivedPropertyObserver;
  v2 = [(MTPodcastDerivedPropertyObserver *)&v31 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = *(v2 + 5);
    *(v2 + 5) = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = *(v2 + 6);
    *(v2 + 6) = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(v2 + 7);
    *(v2 + 7) = v7;

    v9 = [NSSet setWithObjects:kEpisodeUuid, kEpisodeExternalType, kEpisodeTitle, kEpisodeLevel, kEpisodeShowTypeSpecificLevel, kEpisodePubDate, kEpisodeEpisodeNumber, kEpisodePlayState, kEpisodePlayStateManuallySet, kEpisodePodcastUuid, kEpisodeIsFromiTunesSync, kEpisodeListenNowEpisode, kEpisodeUnplayedTab, kEpisodeUserEpisode, kEpisodeIsNew, kEpisodePlayStateLastModifiedDate, kEpisodeMetadataTimestamp, kEpisodeLastDatePlayed, kEpisodePriceType, kEpisodeIsBookmarked, kEpisodeAssetURL, 0];
    v10 = *(v2 + 8);
    *(v2 + 8) = v9;

    v11 = kPodcastSubscribed;
    v12 = [NSSet setWithObjects:kPodcastSubscribed, kPodcastDeletePlayedEpisodes, kPodcastEpisodeLimit, kPodcastHidden, kPodcastChannelStoreId, kPodcastLastRemovedFromUpNextDate, 0];
    v13 = *(v2 + 9);
    *(v2 + 9) = v12;

    v14 = [NSSet setWithObjects:kChannelSubscriptionActive, 0];
    v15 = *(v2 + 10);
    *(v2 + 10) = v14;

    v16 = [NSSet setWithObjects:v11, kPodcastFlags, kPodcastDarkCountLocal, kPodcastLastTouchDate, kPodcastNotifications, 0];
    v17 = *(v2 + 11);
    *(v2 + 11) = v16;

    v18 = dispatch_queue_create("com.apple.podcasts.MTPodcastDerivedPropertyObserver.handlerQueue", 0);
    v19 = *(v2 + 1);
    *(v2 + 1) = v18;

    v20 = dispatch_queue_create("com.apple.podcasts.MTPodcastDerivedPropertyObserver.notificationQueue", 0);
    v21 = *(v2 + 2);
    *(v2 + 2) = v20;

    v22 = objc_alloc_init(MTEpisodeLevelCalculator);
    v23 = *(v2 + 13);
    *(v2 + 13) = v22;

    objc_initWeak(&location, v2);
    v24 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, *(v2 + 2));
    v25 = *(v2 + 3);
    *(v2 + 3) = v24;

    v26 = *(v2 + 3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003F6BC;
    handler[3] = &unk_1004D9E80;
    objc_copyWeak(&v29, &location);
    dispatch_source_set_event_handler(v26, handler);
    dispatch_resume(*(v2 + 3));
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)startObserving
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MTPodcastDerivedPropertyObserver *)obj isObserving])
  {
    objc_sync_exit(obj);
  }

  else
  {
    [(MTPodcastDerivedPropertyObserver *)obj setIsObserving:1];
    objc_sync_exit(obj);

    [(MTPodcastDerivedPropertyObserver *)obj _fetchLatestProcessedPersistentHistoryToken];
    v2 = +[MTDB sharedInstance];
    [v2 addChangeNotifier:obj];

    [(MTPodcastDerivedPropertyObserver *)obj processLatestPersistentHistoryTransactions];
  }
}

- (void)_fetchLatestProcessedPersistentHistoryToken
{
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E5F8;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)_processLatestPersistentHistoryTransactions
{
  dispatch_assert_queue_V2(self->_notificationQueue);
  if (self->_processingIsPaused)
  {
    v3 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MTPodcastDerivedPropertyObserver processing is paused. Skipping processLatestPersistentHistoryTransactions.", buf, 2u);
    }
  }

  else
  {
    kdebug_trace();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100049360;
    block[3] = &unk_1004D8358;
    v4 = objc_alloc_init(MTBackgroundTaskManager);
    v53 = v4;
    dispatch_async(&_dispatch_main_q, block);
    kdebug_trace();
    v5 = [(MTPodcastDerivedPropertyObserver *)self _historyTransactionsSinceLatestPersistentHistoryToken];
    kdebug_trace();
    *buf = 0;
    v47 = buf;
    v48 = 0x3032000000;
    v49 = sub_100008AEC;
    v50 = sub_10003B54C;
    v51 = 0;
    v6 = +[NSMutableSet set];
    v7 = +[NSMutableSet set];
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    kdebug_trace();
    v8 = +[MTDB sharedInstance];
    v9 = [v8 privateQueueContext];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100041758;
    v34[3] = &unk_1004DC3C0;
    v10 = v5;
    v40 = &v42;
    v35 = v10;
    v36 = self;
    v11 = v7;
    v37 = v11;
    v12 = v6;
    v38 = v12;
    v13 = v9;
    v39 = v13;
    v41 = buf;
    [v13 performBlockAndWait:v34];
    kdebug_trace();
    if (!v10)
    {
      kdebug_trace();
      v14 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Derived Property Observer has never processed persistent history data. Will recalculate everything.", v54, 2u);
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000FC684;
      v29[3] = &unk_1004D8E40;
      v30 = v13;
      v31 = v12;
      v32 = v11;
      v33 = buf;
      [v30 performBlockAndWait:v29];
      *(v43 + 24) = 1;
      kdebug_trace();
    }

    objc_initWeak(&location, self);
    if ([v12 count])
    {
      v15 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v54 = 138543362;
        v55 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Derived Property Observer did find changes for %{public}@", v54, 0xCu);
      }

      [(MTPodcastDerivedPropertyObserver *)self _updateDerivedPropertiesForPodcastUUIDs:v12];
    }

    if ([v11 count])
    {
      handlerQueue = self->_handlerQueue;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000FC9E4;
      v25[3] = &unk_1004D9DB8;
      objc_copyWeak(&v27, &location);
      v26 = v11;
      dispatch_async(handlerQueue, v25);

      objc_destroyWeak(&v27);
    }

    if (*(v43 + 24) == 1)
    {
      v17 = self->_handlerQueue;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000FCB3C;
      v23[3] = &unk_1004D9E80;
      objc_copyWeak(&v24, &location);
      dispatch_async(v17, v23);
      objc_destroyWeak(&v24);
    }

    if (*(v47 + 5))
    {
      v18 = self->_handlerQueue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10004404C;
      v21[3] = &unk_1004DA818;
      objc_copyWeak(&v22, &location);
      v21[4] = buf;
      dispatch_async(v18, v21);
      [(MTPodcastDerivedPropertyObserver *)self setLatestPersistentHistoryToken:*(v47 + 5)];
      objc_destroyWeak(&v22);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000FCBBC;
    v19[3] = &unk_1004D8358;
    v3 = v4;
    v20 = v3;
    dispatch_async(&_dispatch_main_q, v19);

    kdebug_trace();
    objc_destroyWeak(&location);

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (id)_historyTransactionsSinceLatestPersistentHistoryToken
{
  dispatch_assert_queue_V2(self->_notificationQueue);
  if (self->_latestPersistentHistoryToken)
  {
    v3 = +[MTDB sharedInstance];
    v4 = [v3 privateQueueContext];

    v5 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:self->_latestPersistentHistoryToken];
    [v5 setResultType:5];
    [v5 setFetchBatchSize:200];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_100008AEC;
    v33 = sub_10003B54C;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100008AEC;
    v27 = sub_10003B54C;
    v28 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10004018C;
    v18 = &unk_1004DBF48;
    v21 = &v23;
    v6 = v4;
    v19 = v6;
    v7 = v5;
    v20 = v7;
    v22 = &v29;
    [v6 performBlockAndWait:&v15];
    if (v30[5])
    {
      v8 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v30[5];
        *buf = 138412290;
        v36 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Derived Property Observer encountered error trying to fetch store result %@", buf, 0xCu);
      }

      v10 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Derived Property Observer clearing out persistent history token and performing a full persistent history run", buf, 2u);
      }

      v11 = [NSUserDefaults standardUserDefaults:v15];
      [v11 removeObjectForKey:@"DerivedPropertyObserverPersistentHistoryToken"];

      latestPersistentHistoryToken = self->_latestPersistentHistoryToken;
      self->_latestPersistentHistoryToken = 0;

      v13 = 0;
    }

    else
    {
      v13 = [v24[5] result];
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)stopObserving
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MTPodcastDerivedPropertyObserver *)obj isObserving])
  {
    [(MTPodcastDerivedPropertyObserver *)obj setIsObserving:0];
    objc_sync_exit(obj);

    v2 = +[MTDB sharedInstance];
    [(MTPodcastDerivedPropertyObserver *)v2 removeChangeNotifier:obj];
    v3 = v2;
  }

  else
  {
    objc_sync_exit(obj);
    v3 = obj;
  }
}

- (void)pauseProcessing
{
  kdebug_trace();
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FB720;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)resumeProcessing
{
  kdebug_trace();
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FB840;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)_setLastProcessedPersistentHistoryToken:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_handlerQueue);
  if (v4)
  {
    v21 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v21];
    v6 = v21;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v11 = +[NSUserDefaults standardUserDefaults];
      [v11 setObject:v5 forKey:@"DerivedPropertyObserverPersistentHistoryToken"];

      v12 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Derived Property Observer set last processed persistent history token %@.", buf, 0xCu);
      }

      v13 = [NSDate dateWithTimeIntervalSinceNow:-1209600.0];
      v14 = [NSPersistentHistoryChangeRequest deleteHistoryBeforeDate:v13];

      v15 = +[MTDB sharedInstance];
      v16 = [v15 privateQueueContext];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000FBB98;
      v18[3] = &unk_1004D8798;
      v19 = v16;
      v20 = v14;
      v17 = v14;
      v9 = v16;
      [v9 performBlock:v18];
    }

    else
    {
      v9 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Derived Property Observer encountered error archiving last persistent history token %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Derived Property Observer set last processed persistent history token to nil. Removing default.", buf, 2u);
    }

    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 removeObjectForKey:@"DerivedPropertyObserverPersistentHistoryToken"];
  }
}

- (void)_updateDerivedPropertiesForPodcastUUIDs:(id)a3
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FBDDC;
  block[3] = &unk_1004D8358;
  v5 = objc_alloc_init(MTBackgroundTaskManager);
  v14 = v5;
  dispatch_async(&_dispatch_main_q, block);
  handlerQueue = self->_handlerQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FBDEC;
  v9[3] = &unk_1004D94C8;
  v10 = v4;
  v11 = self;
  v12 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(handlerQueue, v9);
}

- (BOOL)_shouldUpdatePodcastsStatsForChange:(id)a3
{
  v3 = a3;
  v4 = [v3 changedObjectID];
  v5 = [v4 entity];
  v6 = [v5 name];

  v7 = [v6 isEqualToString:kMTEpisodeEntityName];
  v8 = [v6 isEqualToString:kMTPodcastEntityName];
  v9 = v8;
  if ((v7 & 1) != 0 || v8)
  {
    if (([v3 changeType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = [v3 updatedProperties];
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v23 = v6;
        v24 = v3;
        v14 = *v27;
        v15 = kEpisodeIsFromiTunesSync;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v26 + 1) + 8 * i);
            if (!v7 || ([*(*(&v26 + 1) + 8 * i) name], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", v15), v18, (v19 & 1) == 0))
            {
              if (!v9)
              {
                continue;
              }

              podcastStatsProperties = self->_podcastStatsProperties;
              v21 = [v17 name];
              LOBYTE(podcastStatsProperties) = [(NSSet *)podcastStatsProperties containsObject:v21];

              if ((podcastStatsProperties & 1) == 0)
              {
                continue;
              }
            }

            v10 = 1;
            goto LABEL_18;
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v10 = 0;
LABEL_18:
        v6 = v23;
        v3 = v24;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_changeContainsRelevantEpisodeChanges:(id)a3
{
  v4 = a3;
  v5 = [v4 changedObjectID];
  v6 = [v5 entity];
  v7 = [v6 name];

  if ([v7 isEqualToString:kMTEpisodeEntityName])
  {
    v8 = [v4 changeType];
    if (!v8)
    {
LABEL_15:
      v16 = 1;
      goto LABEL_16;
    }

    if (v8 == 1)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [v4 updatedProperties];
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            episodePropertiesToFetch = self->_episodePropertiesToFetch;
            v15 = [*(*(&v18 + 1) + 8 * i) name];
            LOBYTE(episodePropertiesToFetch) = [(NSSet *)episodePropertiesToFetch containsObject:v15];

            if (episodePropertiesToFetch)
            {

              goto LABEL_15;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (BOOL)_changeContainsRelevantPodcastChanges:(id)a3
{
  v4 = a3;
  v5 = [v4 changedObjectID];
  v6 = [v5 entity];
  v7 = [v6 name];

  if ([v7 isEqualToString:kMTPodcastEntityName])
  {
    v8 = [v4 changeType];
    if (!v8)
    {
LABEL_15:
      v16 = 1;
      goto LABEL_16;
    }

    if (v8 == 1)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [v4 updatedProperties];
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            podcastPropertiesToFetch = self->_podcastPropertiesToFetch;
            v15 = [*(*(&v18 + 1) + 8 * i) name];
            LOBYTE(podcastPropertiesToFetch) = [(NSSet *)podcastPropertiesToFetch containsObject:v15];

            if (podcastPropertiesToFetch)
            {

              goto LABEL_15;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (BOOL)_changeContainsRelevantChannelChanges:(id)a3
{
  v4 = a3;
  v5 = [v4 changedObjectID];
  v6 = [v5 entity];
  v7 = [v6 name];

  if (![v7 isEqualToString:kMTChannelEntityName])
  {
    goto LABEL_13;
  }

  v8 = [v4 changeType];
  if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v16 = 1;
    goto LABEL_17;
  }

  if (v8 == 1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v4 updatedProperties];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          channelPropertiesToFetch = self->_channelPropertiesToFetch;
          v15 = [*(*(&v18 + 1) + 8 * i) name];
          LOBYTE(channelPropertiesToFetch) = [(NSSet *)channelPropertiesToFetch containsObject:v15];

          if (channelPropertiesToFetch)
          {
            v16 = 1;
            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_16:
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

LABEL_17:

  return v16;
}

- (void)reportStatsForPodcasts
{
  kdebug_trace();
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v3 = +[MTDB sharedInstance];
  v4 = [v3 privateQueueContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000FD000;
  v15[3] = &unk_1004DC3E8;
  v18 = &v44;
  v5 = v4;
  v16 = v5;
  v17 = self;
  v19 = &v40;
  v20 = &v36;
  v21 = &v32;
  v22 = &v28;
  v23 = &v24;
  [v5 performBlockAndWait:v15];
  v48[0] = @"total";
  v6 = [NSNumber numberWithUnsignedInteger:v41[3]];
  v49[0] = v6;
  v48[1] = @"subscribed";
  v7 = [NSNumber numberWithUnsignedInteger:v37[3]];
  v49[1] = v7;
  v48[2] = @"not_subscribed";
  v8 = [NSNumber numberWithUnsignedInteger:v41[3] - v37[3]];
  v49[2] = v8;
  v48[3] = @"authenticated_dark";
  v9 = [NSNumber numberWithUnsignedInteger:v33[3]];
  v49[3] = v9;
  v49[4] = &off_100500FB8;
  v48[4] = @"feed_dark";
  v48[5] = @"download_dark";
  v10 = [NSNumber numberWithUnsignedInteger:v29[3]];
  v49[5] = v10;
  v48[6] = @"notifications_enabled";
  v11 = [NSNumber numberWithUnsignedInteger:v25[3]];
  v49[6] = v11;
  v48[7] = @"notifications_disabled";
  v12 = [NSNumber numberWithUnsignedInteger:v41[3] - v25[3]];
  v49[7] = v12;
  v48[8] = @"episodes_from_itunes";
  v13 = [NSNumber numberWithUnsignedInteger:v45[3]];
  v49[8] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:9];
  [IMMetrics recordUserAction:@"podcast_stats" dataSource:0 withData:v14];

  kdebug_trace();
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
}

- (void)_updateEpisodeCountsForPodcastUuid:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100008AEC;
  v25 = sub_10003B54C;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100008AEC;
  v19 = sub_10003B54C;
  v20 = 0;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 privateQueueContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FD454;
  v9[3] = &unk_1004DC410;
  v7 = v4;
  v10 = v7;
  v8 = v6;
  v13 = &v21;
  v14 = &v15;
  v11 = v8;
  v12 = self;
  [v8 performBlockAndWait:v9];
  LODWORD(v5) = [(MTPodcastDerivedPropertyObserver *)self setDerivedPropertyValue:v22[5] forKey:@"kCountOfNewEpisodesKey" forPodcast:v7];
  if (([(MTPodcastDerivedPropertyObserver *)self setDerivedPropertyValue:v16[5] forKey:@"kCountOfUnplayedEpisodesKey" forPodcast:v7]| v5))
  {
    [(MTPodcastDerivedPropertyObserver *)self notifyObserversForPodcast:v7];
  }

  kdebug_trace();

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

- (void)episodeResultsChangedForPodcastUuid:(id)a3
{
  v7 = a3;
  [(MTPodcastDerivedPropertyObserver *)self _updateEpisodeCountsForPodcastUuid:?];
  v4 = [(MTPodcastDerivedPropertyObserver *)self didFinishProcessingContextSaveHandlerForTests];

  if (v4)
  {
    v5 = [(MTPodcastDerivedPropertyObserver *)self derivedPropertiesForPodcast:v7];
    v6 = [(MTPodcastDerivedPropertyObserver *)self didFinishProcessingContextSaveHandlerForTests];
    (v6)[2](v6, v5);
  }
}

- (void)updateFlagsForPodcastUuid:(id)a3 predicateForUnplayedTab:(id)a4 predicateForUserEpisodes:(id)a5
{
  v8 = a3;
  v29 = a4;
  v9 = a5;
  v10 = +[MTDB sharedInstance];
  v11 = [v10 privateQueueContext];

  kdebug_trace();
  v12 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  v13 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v8];
  [v12 setPredicate:v13];

  [v12 setFetchLimit:1];
  v14 = [v11 executeFetchRequest:v12 error:0];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [MTEpisode predicateForPlayed:0];
    v17 = [v29 AND:v16];

    v18 = [(MTPodcastDerivedPropertyObserver *)self _predicateForEpisodesToUpdateWithPodcastUuid:v8 predicateForUnplayedInUnplayedTab:v17 predicateForUserEpisodes:v9];
    kdebug_trace();
    objc_initWeak(&location, self);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000FDC78;
    v38[3] = &unk_1004DC438;
    objc_copyWeak(&v45, &location);
    v19 = v11;
    v39 = v19;
    v28 = v18;
    v40 = v28;
    v27 = v17;
    v41 = v27;
    v42 = self;
    v43 = v9;
    v20 = v8;
    v44 = v20;
    [v19 performBlockAndWait:v38];
    kdebug_trace();
    kdebug_trace();
    v21 = [MTRecencyUtil upNextForPodcastUuid:v20 excludeExplicit:0 ctx:v19];
    kdebug_trace();
    v22 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v21 episodeUuid];
      [v21 modifiedDate];
      *buf = 138543874;
      v48 = v20;
      v49 = 2114;
      v50 = v23;
      v51 = 2050;
      v52 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "UpNext result from property changed observer for podcast %{public}@: episodeUuid: %{public}@ at %{public}f", buf, 0x20u);
    }

    if (![(MTPodcastDerivedPropertyObserver *)self _shouldSkipSettingPropertiesForWatchPPT])
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000FE220;
      v33[3] = &unk_1004D8DA8;
      v34 = v20;
      v35 = v21;
      v36 = v19;
      v37 = self;
      [v36 performBlockAndWait:v33];
    }

    [_TtC18PodcastsFoundation23NewEpisodesShelfUpdater synchronouslyUpdateNewEpisodeForPodcastWithUUID:v20 context:v19];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000FE2D8;
    v30[3] = &unk_1004D8798;
    v31 = v19;
    v32 = v20;
    [v31 performBlockAndWait:v30];
    kdebug_trace();

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  else
  {
    v25 = [v11 podcastForUuid:v8];
    v26 = [v25 nextEpisodeUuid];

    if (v26)
    {
      [v25 setNextEpisodeUuid:0];
      [v11 saveInCurrentBlock];
    }

    kdebug_trace();
  }
}

- (id)_predicateForEpisodesToUpdateWithPodcastUuid:(id)a3 predicateForUnplayedInUnplayedTab:(id)a4 predicateForUserEpisodes:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[NSMutableArray array];
  v11 = [MTEpisode predicateForUnplayedTabFlag:0];
  v12 = [NSPredicate predicateForNilValueForKey:kEpisodeUnplayedTab];
  v13 = [v11 OR:v12];
  v30 = [v8 AND:v13];

  v14 = [NSCompoundPredicate notPredicateWithSubpredicate:v8];

  v15 = [MTEpisode predicateForUnplayedTabFlag:1];
  v16 = [v14 AND:v15];

  v17 = [v30 OR:v16];
  [v10 addObject:v17];
  v18 = [MTEpisode predicateForUserEpisode:0];
  v19 = [NSPredicate predicateForNilValueForKey:kEpisodeUserEpisode];
  v20 = [v18 OR:v19];
  v21 = [v7 AND:v20];

  v22 = [NSCompoundPredicate notPredicateWithSubpredicate:v7];

  v23 = [MTEpisode predicateForUserEpisode:1];
  v24 = [v22 AND:v23];

  v25 = [v21 OR:v24];
  [v10 addObject:v25];
  v26 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v9];

  v27 = [NSCompoundPredicate orPredicateWithSubpredicates:v10];
  v28 = [v26 AND:v27];

  return v28;
}

- (id)derivedPropertiesForPodcast:(id)a3
{
  v4 = a3;
  v5 = self->_cache;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v4];
  if (!v6)
  {
    v6 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->_cache setObject:v6 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)derivedPropertyValueForKey:(id)a3 forPodcast:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [(MTPodcastDerivedPropertyObserver *)self derivedPropertiesForPodcast:v7];
    objc_sync_enter(v8);
    v9 = [v8 objectForKeyedSubscript:v6];
    objc_sync_exit(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setDerivedPropertyValue:(id)a3 forKey:(id)a4 forPodcast:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 length])
  {
    v11 = [(MTPodcastDerivedPropertyObserver *)self derivedPropertiesForPodcast:v10];
    objc_sync_enter(v11);
    v12 = [v11 objectForKeyedSubscript:v9];
    v13 = [v12 isEqual:v8];
    if (v8)
    {
      [v11 setObject:v8 forKeyedSubscript:v9];
    }

    else
    {
      [v11 removeObjectForKey:v9];
    }

    v14 = v13 ^ 1;

    objc_sync_exit(v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)dependentPropertyForKey:(id)a3 forPodcastUuid:(id)a4
{
  podcastCache = self->_podcastCache;
  v6 = a3;
  v7 = [(NSMutableDictionary *)podcastCache objectForKeyedSubscript:a4];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

- (void)setDependentPropertyValue:(id)a3 forKey:(id)a4 forPodcastUuid:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_podcastCache objectForKeyedSubscript:v9];
  if (!v10)
  {
    podcastCache = self->_podcastCache;
    v10 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)podcastCache setObject:v10 forKeyedSubscript:v9];
  }

  [v10 setObject:v12 forKeyedSubscript:v8];
}

- (void)notifyObserversForPodcast:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastDerivedPropertyObserver *)self derivedPropertiesForPodcast:v4];
  v6 = [(MTPodcastDerivedPropertyObserver *)self handlers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FEC34;
  v9[3] = &unk_1004DB778;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
}

- (NSMutableDictionary)handlers
{
  v3 = self->_handlers;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_handlers copy];
  objc_sync_exit(v3);

  return v4;
}

- (id)addDerivedPropertyChangeHandler:(id)a3
{
  v4 = a3;
  v5 = CFUUIDCreate(0);
  v6 = CFUUIDCreateString(0, v5);
  CFRelease(v5);
  v7 = self->_handlers;
  objc_sync_enter(v7);
  handlers = self->_handlers;
  v9 = [v4 copy];
  [(NSMutableDictionary *)handlers setObject:v9 forKey:v6];

  objc_sync_exit(v7);

  return v6;
}

- (void)removeDerivedPropertyChangeHandler:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = self->_handlers;
    objc_sync_enter(v4);
    [(NSMutableDictionary *)self->_handlers removeObjectForKey:v5];
    objc_sync_exit(v4);
  }
}

- (unint64_t)countOfNewEpisodesForPodcast:(id)a3
{
  v3 = [(MTPodcastDerivedPropertyObserver *)self derivedPropertyValueForKey:@"kCountOfNewEpisodesKey" forPodcast:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)countOfUnplayedEpisodesForPodcast:(id)a3
{
  v3 = [(MTPodcastDerivedPropertyObserver *)self derivedPropertyValueForKey:@"kCountOfUnplayedEpisodesKey" forPodcast:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

@end