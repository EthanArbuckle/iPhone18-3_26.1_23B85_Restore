@interface MTNotificationManager
- (BOOL)canPromptForNotificationPermissionsWithPreWarmSheet;
- (MTNotificationManager)init;
- (id)computeNotificationsWithSchedulingOptions:(unint64_t)a3;
- (id)preWarmSheetMetricsOverlayDictionary;
- (void)_showDetailUsingURL:(id)a3;
- (void)clearAllNotifications;
- (void)determineCanSendNewEpisodeAlertsWithSchedulingOptions:(unint64_t)a3 completion:(id)a4;
- (void)markEpisodesAsNotified:(id)a3;
- (void)playPodcastDefaultBehaviorForNotificationEpisode:(id)a3;
- (void)playPodcastNotificationEpisodes:(id)a3;
- (void)postLocalNotificationForPlayerItem:(id)a3;
- (void)processNotificationsWithSchedulingOptions:(unint64_t)a3 reason:(id)a4 completion:(id)a5;
- (void)requestNotificationPermissionsIfNeeded;
- (void)requestNotificationPermissionsWithPreWarmSheetIfNeeded;
- (void)scheduleLocalNotificationForPodcast:(id)a3 schedulingOptions:(unint64_t)a4 completion:(id)a5;
- (void)scheduleLocalNotifications:(id)a3 schedulingOptions:(unint64_t)a4 completion:(id)a5;
- (void)setUpNotificationStatusIsAuthorizedUpdates;
- (void)showPodcastDetailForOneShowWithMultipleNotificationEpisodes:(id)a3;
- (void)showPodcastDetailForOneShowWithOneNotificationEpisode:(id)a3;
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation MTNotificationManager

- (MTNotificationManager)init
{
  v9.receiver = self;
  v9.super_class = MTNotificationManager;
  v2 = [(MTNotificationManager *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    [(MTNotificationManager *)v2 setUpNotificationStatusIsAuthorizedUpdates];
    v7 = +[UNUserNotificationCenter currentNotificationCenter];
    [v7 setDelegate:v2];
  }

  return v2;
}

- (void)setUpNotificationStatusIsAuthorizedUpdates
{
  v2 = MTApplicationDidBecomeActiveNotification;
  v5 = +[NSNotificationCenter defaultCenter];
  v3 = +[NSOperationQueue mainQueue];
  v4 = [v5 addObserverForName:v2 object:0 queue:v3 usingBlock:&stru_1004D8878];
}

- (void)requestNotificationPermissionsIfNeeded
{
  v2 = +[UNUserNotificationCenter currentNotificationCenter];
  v3 = +[UNNotificationCategory mt_allSupportedNotificationCategories];
  [v2 setNotificationCategories:v3];

  v4 = +[UNUserNotificationCenter currentNotificationCenter];
  [v4 requestAuthorizationWithOptions:38 completionHandler:&stru_1004D88F8];
}

- (BOOL)canPromptForNotificationPermissionsWithPreWarmSheet
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 BOOLForKey:kMTDidPromptForNotificationsPermissionsKey];

  if (v3)
  {
    v4 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User was already prompted for notification permissions. Not showing pre-warming sheet.", buf, 2u);
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v5 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v4 = [v5 objectForKey:kMTNotificationsPreWarmSheetShownDateKey];

  if (v4)
  {
    v6 = objc_alloc_init(NSDate);
    [v6 timeIntervalSinceDate:v4];
    if (fabs(v7) < 432000.0)
    {
      v9 = _MTLogCategoryNotifications();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "User was shown the pre-warming sheet within the last five days. Not showing pre-warming sheet.", v11, 2u);
      }

      goto LABEL_11;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (void)requestNotificationPermissionsWithPreWarmSheetIfNeeded
{
  if ([(MTNotificationManager *)self canPromptForNotificationPermissionsWithPreWarmSheet])
  {
    v3 = +[AMSUserNotificationAuthorizationTask engagementRequestForFullSheet];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10005FBD4;
    v4[3] = &unk_1004D89A8;
    v4[4] = self;
    [v3 addFinishBlock:v4];
  }
}

- (id)preWarmSheetMetricsOverlayDictionary
{
  v2 = objc_alloc_init(_TtC8ShelfKit26UniversalMetricsDictionary);
  v3 = [v2 dictionary];
  v4 = [v3 mutableCopy];

  v5 = +[_TtC8ShelfKit15MetricsActivity shared];
  v6 = [v5 pageContext];
  v7 = v6;
  v8 = &stru_1004F3018;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  [v4 setValue:v9 forKey:@"pageContext"];
  [v4 setValue:@"xp_amp_podcasts_main" forKey:@"topic"];
  v10 = objc_alloc_init(AMSMutablePromise);
  v11 = +[_TtC18PodcastsFoundation26AnalyticsIdentifierManager sharedInstance];
  v12 = [v11 identifierPromise];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006015C;
  v18[3] = &unk_1004D89D0;
  v19 = v4;
  v13 = v10;
  v20 = v13;
  v14 = v4;
  [v12 addFinishBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

- (void)determineCanSendNewEpisodeAlertsWithSchedulingOptions:(unint64_t)a3 completion:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (v5)
  {
    v6 = +[PodcastsApplicationStateMonitor shared];
    v7 = [v6 currentState];

    if ((v4 & 1) != 0 || v7 == 2)
    {
      v10 = +[UNUserNotificationCenter currentNotificationCenter];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100060468;
      v11[3] = &unk_1004D89F8;
      v12 = v5;
      [v10 getNotificationSettingsWithCompletionHandler:v11];
    }

    else
    {
      v8 = _MTLogCategoryNotifications();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [PodcastsApplicationStateMonitor descriptionForState:v7];
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "canSendNotifications is NO (reason: appState = %@)", buf, 0xCu);
      }

      (*(v5 + 2))(v5, 0);
    }
  }
}

- (void)processNotificationsWithSchedulingOptions:(unint64_t)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = _MTLogCategoryNotifications();
  v11 = os_signpost_id_generate(v10);

  v12 = _MTLogCategoryNotifications();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 134218242;
    *&buf[4] = a3;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ProcessNotifications", "SchedulingOptions=%{name=schedulingOptions}lu Reason=%{name=reason}@", buf, 0x16u);
  }

  v14 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BEGIN] processing notifications for '%@' (scheduling options = %d)", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v32 = UIBackgroundTaskInvalid;
  v15 = +[UIApplication sharedApplication];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000608A0;
  v30[3] = &unk_1004D8688;
  v30[4] = buf;
  v16 = [v15 beginBackgroundTaskWithExpirationHandler:v30];
  *(*&buf[8] + 24) = v16;

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100060900;
  v25[3] = &unk_1004D8A20;
  v17 = v8;
  v26 = v17;
  v18 = v9;
  v27 = v18;
  v28 = buf;
  v29 = v11;
  v19 = objc_retainBlock(v25);
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100060A5C;
  v21[3] = &unk_1004D8A98;
  objc_copyWeak(v23, &location);
  v20 = v19;
  v22 = v20;
  v23[1] = a3;
  [(MTNotificationManager *)self determineCanSendNewEpisodeAlertsWithSchedulingOptions:a3 completion:v21];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
}

- (void)markEpisodesAsNotified:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 descriptionForNotificationLogging];
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Marking as notified: %@", buf, 0xCu);
  }

  v6 = +[MTDB sharedInstance];
  v7 = [v6 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100060DA0;
  v10[3] = &unk_1004D8798;
  v11 = v3;
  v12 = v7;
  v8 = v7;
  v9 = v3;
  [v8 performBlockAndWait:v10];
}

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = +[IMURLBag sharedInstance];
  v7 = [AMSUserNotification notificationCenter:v8 didChangeSettings:v5 bag:v6];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse", buf, 2u);
  }

  if (![AMSUserNotification shouldHandleNotificationResponse:v7])
  {
    v13 = [v7 notification];
    v14 = [v13 request];
    v11 = [v14 content];

    v15 = [v11 mt_notificationEpisodes];
    v16 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 count];
      *buf = 134217984;
      v45 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse for %lu episodes", buf, 0xCu);
    }

    v18 = [v15 mt_compactMap:&stru_1004D8AD8];
    v19 = [NSSet setWithArray:v18];
    v20 = [v19 count];

    if (!v20)
    {
      v32 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v7;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unexpected notification content [no podcasts] in response %@", buf, 0xCu);
      }

      v33 = _MTLogCategoryNotifications();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse failed to find unique podcast UUID", buf, 2u);
      }

      goto LABEL_39;
    }

    v37 = v18;
    v38 = v7;
    v39 = v11;
    v40 = v8;
    v21 = [v7 mt_actionType];
    v41 = self;
    if (!v21 && v20 == 1)
    {
      if ([v15 count] == 1)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }
    }

    v22 = +[MTFeedUpdateMetricsAction notificationTapped];
    v23 = +[MTFeedUpdateMetricsDataKey actionType];
    v42[0] = v23;
    v24 = [NSNumber numberWithInteger:v21];
    v43[0] = v24;
    v25 = +[MTFeedUpdateMetricsDataKey uniquePodcastUuidCount];
    v42[1] = v25;
    v26 = [NSNumber numberWithUnsignedInteger:v20];
    v43[1] = v26;
    v27 = +[MTFeedUpdateMetricsDataKey notificationEpisodesCount];
    v42[2] = v27;
    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 count]);
    v43[2] = v28;
    v29 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
    [IMMetrics recordUserAction:v22 dataSource:0 withData:v29];

    v30 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v45 = v21;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse for actionType %lu", buf, 0xCu);
    }

    if (v21 <= 1)
    {
      if (v21)
      {
        v31 = v21 == 1;
        v11 = v39;
        v8 = v40;
        v18 = v37;
        v7 = v38;
        if (v31)
        {
          v34 = [v15 firstObject];
          [(MTNotificationManager *)v41 playPodcastDefaultBehaviorForNotificationEpisode:v34];
        }

        goto LABEL_39;
      }

      v36 = _MTLogCategoryDefault();
      v7 = v38;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Unexpected notification action type encountered in %@", buf, 0xCu);
      }

      v11 = v39;
      v8 = v40;
    }

    else
    {
      if (v21 == 2)
      {
        [(MTNotificationManager *)v41 playPodcastNotificationEpisodes:v15];
      }

      else
      {
        if (v21 != 3)
        {
          v31 = v21 == 4;
          v11 = v39;
          v8 = v40;
          v18 = v37;
          v7 = v38;
          if (v31)
          {
            [(MTNotificationManager *)v41 showPodcastDetailForOneShowWithMultipleNotificationEpisodes:v15];
          }

          goto LABEL_39;
        }

        v35 = [v15 firstObject];
        [(MTNotificationManager *)v41 showPodcastDetailForOneShowWithOneNotificationEpisode:v35];
      }

      v11 = v39;
      v8 = v40;
      v7 = v38;
    }

    v18 = v37;
LABEL_39:
    v8[2](v8);

    goto LABEL_40;
  }

  v10 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handing notification response over to AMS for further processing", buf, 2u);
  }

  v11 = +[IMURLBag sharedInstance];
  v12 = [AMSUserNotification handleNotificationResponse:v7 bag:v11];
  v8[2](v8);
LABEL_40:
}

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 request];
  v8 = [v7 content];
  v9 = [v8 mt_podcastUuid];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = +[UIApplication sharedApplication];
  [v11 beginIgnoringInteractionEvents];

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000088E0;
  v36 = sub_10003B454;
  v37 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10006190C;
  v25[3] = &unk_1004D8B00;
  v28 = v30;
  v29 = &v32;
  v12 = v10;
  v26 = v12;
  v13 = v9;
  v27 = v13;
  v14 = objc_retainBlock(v25);
  v15 = +[UIApplication sharedApplication];
  v16 = [v15 applicationState];

  if (v16)
  {
    v17 = +[NSOperationQueue mainQueue];
    v18 = MTApplicationDidBecomeActiveNotification;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000619C8;
    v23[3] = &unk_1004D8B28;
    v19 = v14;
    v24 = v19;
    v20 = [v12 addObserverForName:v18 object:0 queue:v17 usingBlock:v23];
    v21 = v33[5];
    v33[5] = v20;

    v22 = dispatch_time(0, 1000000000);
    dispatch_after(v22, &_dispatch_main_q, v19);
  }

  else
  {
    (v14[2])(v14);
  }

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v6 = [a4 request];
  v7 = ([v6 mt_schedulingOptions] << 63) >> 63;

  v8[2](v8, v7);
}

- (void)showPodcastDetailForOneShowWithOneNotificationEpisode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[MTDB sharedInstance];
    v6 = [v5 mainQueueContext];
    v7 = [v4 uuid];
    v8 = [v6 episodeForUuid:v7];

    if (v8)
    {
      [v8 displayURL];
    }

    else
    {
      +[MTPodcast productURLForStoreCollectionId:storeTrackId:](MTPodcast, "productURLForStoreCollectionId:storeTrackId:", [v4 podcastStoreCollectionId], objc_msgSend(v4, "storeTrackId"));
    }
    v9 = ;
    v10 = _MTLogCategoryNotifications();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = [v9 absoluteString];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Showing Podcast Details with one episode with URL %@", &v13, 0xCu);
      }
    }

    else if (v11)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Showing Podcast Details with one episode with null URL", &v13, 2u);
    }

    [(MTNotificationManager *)self _showDetailUsingURL:v9];
  }

  else
  {
    v9 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid parameter", &v13, 2u);
    }
  }
}

- (void)showPodcastDetailForOneShowWithMultipleNotificationEpisodes:(id)a3
{
  v4 = a3;
  if ([v4 count] <= 1)
  {
    v5 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid parameter", &v15, 2u);
    }
  }

  if ([v4 count])
  {
    v6 = [v4 firstObject];
    v7 = +[MTDB sharedInstance];
    v8 = [v7 mainOrPrivateContext];
    v9 = [v6 podcastUuid];
    v10 = [v8 podcastForUuid:v9];

    if (v10)
    {
      [v10 displayURL];
    }

    else
    {
      +[MTPodcast productURLForStoreCollectionId:storeTrackId:](MTPodcast, "productURLForStoreCollectionId:storeTrackId:", [v6 podcastStoreCollectionId], 0);
    }
    v11 = ;
    v12 = _MTLogCategoryNotifications();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = [v11 absoluteString];
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Showing Podcast Details with multiple episodes with URL %@", &v15, 0xCu);
      }
    }

    else if (v13)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Showing Podcast Details with multiple episodes with URL", &v15, 2u);
    }

    [(MTNotificationManager *)self _showDetailUsingURL:v11];
  }
}

- (void)_showDetailUsingURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100061F14;
    block[3] = &unk_1004D8358;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

- (void)playPodcastDefaultBehaviorForNotificationEpisode:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse playPodcastDefaultBehaviorForNotificationEpisode", buf, 2u);
  }

  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v7 = [v3 uuid];
  if (v7)
  {
    v8 = [v3 uuid];
    v9 = [v6 episodeForUuid:v8];
    v10 = v9 == 0;

    if (!v10)
    {
      v11 = [v3 uuid];
      v12 = [MTPlaybackQueueFactory playEpisodeUuid:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = [v3 storeTrackId];
  v14 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = [v3 uuid];
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "didReceiveNotificationResponse playPodcastDefaultBehaviorForNotificationEpisode failed manifest from episode uuid %@. Will attempt to create from adam ID %lld", buf, 0x16u);
  }

  if ([MTStoreIdentifier isNotEmpty:v13]&& (v16 = [MTNetworkMediaManifest alloc], [NSString stringWithFormat:@"%llu", v13], v17 = objc_claimAutoreleasedReturnValue(), v12 = [(MTNetworkMediaManifest *)v16 initWithEpisodeAdamId:v17 assetInfo:0], v17, v12))
  {
LABEL_10:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    v18 = +[UIApplication sharedApplication];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100062334;
    v23[3] = &unk_1004D8688;
    v23[4] = buf;
    v19 = [v18 beginBackgroundTaskWithName:@"com.apple.podcasts.NotifcationStartPlayback" expirationHandler:v23];

    *(*&buf[8] + 24) = v19;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100062394;
    v22[3] = &unk_1004D8B50;
    v22[4] = buf;
    v20 = objc_retainBlock(v22);
    v21 = +[UIApplication sharedPlaybackController];
    [v21 playManifest:v12 waitingForEngine:1 completion:v20];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "didReceiveNotificationResponse playPodcastDefaultBehaviorForNotificationEpisode failed to create manifest", buf, 2u);
    }
  }
}

- (void)playPodcastNotificationEpisodes:(id)a3
{
  v3 = a3;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v21 = sub_100064EE0;
  v22 = &unk_1004D8CF0;
  v23 = v5;
  v6 = v5;
  v7 = [v3 mt_compactMap:&buf];

  v8 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse playPodcastNotificationEpisodes for %lu episodes", &buf, 0xCu);
  }

  if ([v7 count])
  {
    v10 = [[MTItemListManifest alloc] initWithItems:v7];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v11 = [v3 mt_compactMap:&stru_1004D8D30];
  v12 = [v11 mt_compactMap:&stru_1004D8B90];
  v13 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "didReceiveNotificationResponse playPodcastNotificationEpisodes failed manifest from episode uuids. Will attempt to create from adam IDs %@", &buf, 0xCu);
  }

  if ([v11 count])
  {
    v10 = [[MTNetworkMediaManifest alloc] initWithEpisodeAdamIds:v12 assetInfo:0];

    if (v10)
    {
LABEL_9:
      *&buf = 0;
      *(&buf + 1) = &buf;
      v21 = 0x2020000000;
      v22 = 0;
      v14 = +[UIApplication sharedApplication];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000627F8;
      v19[3] = &unk_1004D8688;
      v19[4] = &buf;
      v15 = [v14 beginBackgroundTaskWithName:@"com.apple.podcasts.NotifcationStartPlayback" expirationHandler:v19];

      *(*(&buf + 1) + 24) = v15;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100062858;
      v18[3] = &unk_1004D8B50;
      v18[4] = &buf;
      v16 = objc_retainBlock(v18);
      v17 = +[UIApplication sharedPlaybackController];
      [v17 playManifest:v10 waitingForEngine:1 completion:v16];

      _Block_object_dispose(&buf, 8);
      goto LABEL_13;
    }
  }

  else
  {
  }

  v10 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "didReceiveNotificationResponse playPodcastNotificationEpisodes failed to create manifest", &buf, 2u);
  }

LABEL_13:
}

- (id)computeNotificationsWithSchedulingOptions:(unint64_t)a3
{
  v4 = objc_alloc_init(MTNotificationInfo);
  v5 = +[MTEpisode predicateForEpisodesFirstAvailableThisWeek];
  v6 = [MTEpisode predicateForIsNew:1];
  v7 = [MTEpisode predicateForSentNotification:0];
  v8 = [v6 AND:v7];
  v9 = +[MTEpisode predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v10 = [v8 AND:v9];
  v11 = +[MTEpisode predicateForEntitledEpisodes];
  v12 = [v10 AND:v11];

  v13 = +[MTDB sharedInstance];
  v14 = [v13 privateQueueContext];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100062B2C;
  v24[3] = &unk_1004D8BB8;
  v25 = v14;
  v26 = v5;
  v27 = v12;
  v29 = a3;
  v15 = v4;
  v28 = v15;
  v16 = v12;
  v17 = v5;
  v18 = v14;
  [v18 performBlockAndWait:v24];
  v19 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(MTNotificationInfo *)v15 descriptionForNotificationLogging];
    *buf = 138412290;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Computed notification items: %@", buf, 0xCu);
  }

  v21 = v28;
  v22 = v15;

  return v15;
}

- (void)scheduleLocalNotifications:(id)a3 schedulingOptions:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10006316C;
  v20[3] = &unk_1004D84D0;
  v9 = a5;
  v21 = v9;
  v10 = objc_retainBlock(v20);
  v11 = [v8 podcasts];
  v12 = [v11 count] == 0;

  if (v12)
  {
    (v10[2])(v10);
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 descriptionForNotificationLogging];
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to post notifications for: %@", buf, 0xCu);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100063184;
    v15[3] = &unk_1004D8BE0;
    objc_copyWeak(v18, &location);
    v16 = v8;
    v18[1] = a4;
    v17 = v10;
    [(MTNotificationManager *)self determineCanSendNewEpisodeAlertsWithSchedulingOptions:a4 completion:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

- (void)postLocalNotificationForPlayerItem:(id)a3
{
  v3 = a3;
  v4 = [v3 podcastUuid];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 artworkUrl];
    v6 = [v7 absoluteString];
  }

  v8 = +[NSMutableArray array];
  v9 = +[PUIObjCArtworkProvider shared];
  v10 = [v3 podcastUuid];
  v11 = [v3 artworkUrl];
  v12 = [v11 absoluteString];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000635A0;
  v16[3] = &unk_1004D8C30;
  v17 = v6;
  v18 = v8;
  v19 = v3;
  v13 = v3;
  v14 = v8;
  v15 = v6;
  [v9 artworkPathForShow:v10 size:v12 source:v16 completionHandler:{0x50uLL, 0x50uLL}];
}

- (void)scheduleLocalNotificationForPodcast:(id)a3 schedulingOptions:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v36 = a5;
  v37 = [v6 title];
  v7 = [v6 episodes];
  v8 = [v7 count];

  v35 = +[UNNotificationCategory mt_localNotificationForNewEpisodesAvailable];
  if (v8 == 1)
  {
    v9 = [v6 episodes];
    v10 = [v9 firstObject];

    v34 = [v6 title];
    v11 = [v10 bestTitle];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v10 bestTitle];
    }

    else
    {
      v15 = +[NSBundle mainBundle];
      v13 = [v15 localizedStringForKey:@"NOTIFICATION_SINGLE_EPISODE_NO_TITLE_FOR_PODCAST_AVAILABLE_MESSAGE_BODY" value:&stru_1004F3018 table:0];
    }
  }

  else
  {
    v34 = [v6 title];
    v10 = +[NSBundle mainBundle];
    v14 = [v10 localizedStringForKey:@"NOTIFICATION_MULTIPLE_EPISODES_AVAILABLE_MESSAGE_BODY_FORMAT" value:&stru_1004F3018 table:0];
    v13 = [NSString localizedStringWithFormat:v14, v8];
  }

  v16 = +[NSMutableArray array];
  v17 = [v6 uuid];
  v18 = _MTLogCategoryNotifications();
  v19 = os_signpost_id_generate(v18);

  v20 = _MTLogCategoryNotifications();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "LOAD_NOTIFICATION_ARTWORK", "", buf, 2u);
  }

  v22 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v6 descriptionForNotificationLogging];
    *buf = 138412290;
    v52 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Loading image to attach to notification for: %@", buf, 0xCu);
  }

  v24 = +[PUIObjCArtworkProvider shared];
  v25 = [v6 uuid];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100063FD0;
  v39[3] = &unk_1004D8C80;
  v40 = v17;
  v41 = v16;
  v42 = v35;
  v43 = v34;
  v44 = v13;
  v45 = v37;
  v48 = v19;
  v49 = v8;
  v50 = a4;
  v46 = v6;
  v47 = v36;
  v26 = v36;
  v27 = v6;
  v28 = v37;
  v29 = v13;
  v30 = v34;
  v31 = v35;
  v32 = v16;
  v33 = v17;
  [v24 artworkPathForShow:v25 size:v39 completionHandler:{0x50uLL, 0x50uLL}];
}

- (void)clearAllNotifications
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 privateQueueContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064878;
  v5[3] = &unk_1004D8358;
  v6 = v3;
  v4 = v3;
  [v4 performBlock:v5];
}

@end