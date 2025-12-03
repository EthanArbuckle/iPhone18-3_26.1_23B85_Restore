@interface MTNotificationManager
- (BOOL)canPromptForNotificationPermissionsWithPreWarmSheet;
- (MTNotificationManager)init;
- (id)computeNotificationsWithSchedulingOptions:(unint64_t)options;
- (id)preWarmSheetMetricsOverlayDictionary;
- (void)_showDetailUsingURL:(id)l;
- (void)clearAllNotifications;
- (void)determineCanSendNewEpisodeAlertsWithSchedulingOptions:(unint64_t)options completion:(id)completion;
- (void)markEpisodesAsNotified:(id)notified;
- (void)playPodcastDefaultBehaviorForNotificationEpisode:(id)episode;
- (void)playPodcastNotificationEpisodes:(id)episodes;
- (void)postLocalNotificationForPlayerItem:(id)item;
- (void)processNotificationsWithSchedulingOptions:(unint64_t)options reason:(id)reason completion:(id)completion;
- (void)requestNotificationPermissionsIfNeeded;
- (void)requestNotificationPermissionsWithPreWarmSheetIfNeeded;
- (void)scheduleLocalNotificationForPodcast:(id)podcast schedulingOptions:(unint64_t)options completion:(id)completion;
- (void)scheduleLocalNotifications:(id)notifications schedulingOptions:(unint64_t)options completion:(id)completion;
- (void)setUpNotificationStatusIsAuthorizedUpdates;
- (void)showPodcastDetailForOneShowWithMultipleNotificationEpisodes:(id)episodes;
- (void)showPodcastDetailForOneShowWithOneNotificationEpisode:(id)episode;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
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
  dictionary = [v2 dictionary];
  v4 = [dictionary mutableCopy];

  v5 = +[_TtC8ShelfKit15MetricsActivity shared];
  pageContext = [v5 pageContext];
  v7 = pageContext;
  v8 = &stru_1004F3018;
  if (pageContext)
  {
    v8 = pageContext;
  }

  v9 = v8;

  [v4 setValue:v9 forKey:@"pageContext"];
  [v4 setValue:@"xp_amp_podcasts_main" forKey:@"topic"];
  v10 = objc_alloc_init(AMSMutablePromise);
  v11 = +[_TtC18PodcastsFoundation26AnalyticsIdentifierManager sharedInstance];
  identifierPromise = [v11 identifierPromise];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006015C;
  v18[3] = &unk_1004D89D0;
  v19 = v4;
  v13 = v10;
  v20 = v13;
  v14 = v4;
  [identifierPromise addFinishBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

- (void)determineCanSendNewEpisodeAlertsWithSchedulingOptions:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (completionCopy)
  {
    v6 = +[PodcastsApplicationStateMonitor shared];
    currentState = [v6 currentState];

    if ((optionsCopy & 1) != 0 || currentState == 2)
    {
      v10 = +[UNUserNotificationCenter currentNotificationCenter];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100060468;
      v11[3] = &unk_1004D89F8;
      v12 = completionCopy;
      [v10 getNotificationSettingsWithCompletionHandler:v11];
    }

    else
    {
      v8 = _MTLogCategoryNotifications();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [PodcastsApplicationStateMonitor descriptionForState:currentState];
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "canSendNotifications is NO (reason: appState = %@)", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)processNotificationsWithSchedulingOptions:(unint64_t)options reason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  v10 = _MTLogCategoryNotifications();
  v11 = os_signpost_id_generate(v10);

  v12 = _MTLogCategoryNotifications();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 134218242;
    *&buf[4] = options;
    *&buf[12] = 2112;
    *&buf[14] = reasonCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ProcessNotifications", "SchedulingOptions=%{name=schedulingOptions}lu Reason=%{name=reason}@", buf, 0x16u);
  }

  v14 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = reasonCopy;
    *&buf[12] = 1024;
    *&buf[14] = options;
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
  v17 = reasonCopy;
  v26 = v17;
  v18 = completionCopy;
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
  v23[1] = options;
  [(MTNotificationManager *)self determineCanSendNewEpisodeAlertsWithSchedulingOptions:options completion:v21];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
}

- (void)markEpisodesAsNotified:(id)notified
{
  notifiedCopy = notified;
  v4 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    descriptionForNotificationLogging = [notifiedCopy descriptionForNotificationLogging];
    *buf = 138412290;
    v14 = descriptionForNotificationLogging;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Marking as notified: %@", buf, 0xCu);
  }

  v6 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v6 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100060DA0;
  v10[3] = &unk_1004D8798;
  v11 = notifiedCopy;
  v12 = mainOrPrivateContext;
  v8 = mainOrPrivateContext;
  v9 = notifiedCopy;
  [v8 performBlockAndWait:v10];
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  centerCopy = center;
  settingsCopy = settings;
  v6 = +[IMURLBag sharedInstance];
  v7 = [AMSUserNotification notificationCenter:centerCopy didChangeSettings:settingsCopy bag:v6];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse", buf, 2u);
  }

  if (![AMSUserNotification shouldHandleNotificationResponse:responseCopy])
  {
    notification = [responseCopy notification];
    request = [notification request];
    content = [request content];

    mt_notificationEpisodes = [content mt_notificationEpisodes];
    v16 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [mt_notificationEpisodes count];
      *buf = 134217984;
      v45 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse for %lu episodes", buf, 0xCu);
    }

    v18 = [mt_notificationEpisodes mt_compactMap:&stru_1004D8AD8];
    v19 = [NSSet setWithArray:v18];
    v20 = [v19 count];

    if (!v20)
    {
      v32 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = responseCopy;
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
    v38 = responseCopy;
    v39 = content;
    v40 = handlerCopy;
    mt_actionType = [responseCopy mt_actionType];
    selfCopy = self;
    if (!mt_actionType && v20 == 1)
    {
      if ([mt_notificationEpisodes count] == 1)
      {
        mt_actionType = 3;
      }

      else
      {
        mt_actionType = 4;
      }
    }

    v22 = +[MTFeedUpdateMetricsAction notificationTapped];
    v23 = +[MTFeedUpdateMetricsDataKey actionType];
    v42[0] = v23;
    v24 = [NSNumber numberWithInteger:mt_actionType];
    v43[0] = v24;
    v25 = +[MTFeedUpdateMetricsDataKey uniquePodcastUuidCount];
    v42[1] = v25;
    v26 = [NSNumber numberWithUnsignedInteger:v20];
    v43[1] = v26;
    v27 = +[MTFeedUpdateMetricsDataKey notificationEpisodesCount];
    v42[2] = v27;
    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [mt_notificationEpisodes count]);
    v43[2] = v28;
    v29 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
    [IMMetrics recordUserAction:v22 dataSource:0 withData:v29];

    v30 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v45 = mt_actionType;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse for actionType %lu", buf, 0xCu);
    }

    if (mt_actionType <= 1)
    {
      if (mt_actionType)
      {
        v31 = mt_actionType == 1;
        content = v39;
        handlerCopy = v40;
        v18 = v37;
        responseCopy = v38;
        if (v31)
        {
          firstObject = [mt_notificationEpisodes firstObject];
          [(MTNotificationManager *)selfCopy playPodcastDefaultBehaviorForNotificationEpisode:firstObject];
        }

        goto LABEL_39;
      }

      v36 = _MTLogCategoryDefault();
      responseCopy = v38;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Unexpected notification action type encountered in %@", buf, 0xCu);
      }

      content = v39;
      handlerCopy = v40;
    }

    else
    {
      if (mt_actionType == 2)
      {
        [(MTNotificationManager *)selfCopy playPodcastNotificationEpisodes:mt_notificationEpisodes];
      }

      else
      {
        if (mt_actionType != 3)
        {
          v31 = mt_actionType == 4;
          content = v39;
          handlerCopy = v40;
          v18 = v37;
          responseCopy = v38;
          if (v31)
          {
            [(MTNotificationManager *)selfCopy showPodcastDetailForOneShowWithMultipleNotificationEpisodes:mt_notificationEpisodes];
          }

          goto LABEL_39;
        }

        firstObject2 = [mt_notificationEpisodes firstObject];
        [(MTNotificationManager *)selfCopy showPodcastDetailForOneShowWithOneNotificationEpisode:firstObject2];
      }

      content = v39;
      handlerCopy = v40;
      responseCopy = v38;
    }

    v18 = v37;
LABEL_39:
    handlerCopy[2](handlerCopy);

    goto LABEL_40;
  }

  v10 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handing notification response over to AMS for further processing", buf, 2u);
  }

  content = +[IMURLBag sharedInstance];
  v12 = [AMSUserNotification handleNotificationResponse:responseCopy bag:content];
  handlerCopy[2](handlerCopy);
LABEL_40:
}

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  centerCopy = center;
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  mt_podcastUuid = [content mt_podcastUuid];

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
  v13 = mt_podcastUuid;
  v27 = v13;
  v14 = objc_retainBlock(v25);
  v15 = +[UIApplication sharedApplication];
  applicationState = [v15 applicationState];

  if (applicationState)
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

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  request = [notification request];
  v7 = ([request mt_schedulingOptions] << 63) >> 63;

  handlerCopy[2](handlerCopy, v7);
}

- (void)showPodcastDetailForOneShowWithOneNotificationEpisode:(id)episode
{
  episodeCopy = episode;
  if (episodeCopy)
  {
    v5 = +[MTDB sharedInstance];
    mainQueueContext = [v5 mainQueueContext];
    uuid = [episodeCopy uuid];
    v8 = [mainQueueContext episodeForUuid:uuid];

    if (v8)
    {
      [v8 displayURL];
    }

    else
    {
      +[MTPodcast productURLForStoreCollectionId:storeTrackId:](MTPodcast, "productURLForStoreCollectionId:storeTrackId:", [episodeCopy podcastStoreCollectionId], objc_msgSend(episodeCopy, "storeTrackId"));
    }
    v9 = ;
    v10 = _MTLogCategoryNotifications();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        absoluteString = [v9 absoluteString];
        v13 = 138412290;
        v14 = absoluteString;
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

- (void)showPodcastDetailForOneShowWithMultipleNotificationEpisodes:(id)episodes
{
  episodesCopy = episodes;
  if ([episodesCopy count] <= 1)
  {
    v5 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid parameter", &v15, 2u);
    }
  }

  if ([episodesCopy count])
  {
    firstObject = [episodesCopy firstObject];
    v7 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v7 mainOrPrivateContext];
    podcastUuid = [firstObject podcastUuid];
    v10 = [mainOrPrivateContext podcastForUuid:podcastUuid];

    if (v10)
    {
      [v10 displayURL];
    }

    else
    {
      +[MTPodcast productURLForStoreCollectionId:storeTrackId:](MTPodcast, "productURLForStoreCollectionId:storeTrackId:", [firstObject podcastStoreCollectionId], 0);
    }
    v11 = ;
    v12 = _MTLogCategoryNotifications();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        absoluteString = [v11 absoluteString];
        v15 = 138412290;
        v16 = absoluteString;
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

- (void)_showDetailUsingURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100061F14;
    block[3] = &unk_1004D8358;
    v6 = lCopy;
    dispatch_async(v4, block);
  }
}

- (void)playPodcastDefaultBehaviorForNotificationEpisode:(id)episode
{
  episodeCopy = episode;
  v4 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse playPodcastDefaultBehaviorForNotificationEpisode", buf, 2u);
  }

  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  uuid = [episodeCopy uuid];
  if (uuid)
  {
    uuid2 = [episodeCopy uuid];
    v9 = [mainOrPrivateContext episodeForUuid:uuid2];
    v10 = v9 == 0;

    if (!v10)
    {
      uuid3 = [episodeCopy uuid];
      v12 = [MTPlaybackQueueFactory playEpisodeUuid:uuid3];

      if (v12)
      {
        goto LABEL_10;
      }
    }
  }

  storeTrackId = [episodeCopy storeTrackId];
  v14 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    uuid4 = [episodeCopy uuid];
    *buf = 138412546;
    *&buf[4] = uuid4;
    *&buf[12] = 2048;
    *&buf[14] = storeTrackId;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "didReceiveNotificationResponse playPodcastDefaultBehaviorForNotificationEpisode failed manifest from episode uuid %@. Will attempt to create from adam ID %lld", buf, 0x16u);
  }

  if ([MTStoreIdentifier isNotEmpty:storeTrackId]&& (v16 = [MTNetworkMediaManifest alloc], [NSString stringWithFormat:@"%llu", storeTrackId], v17 = objc_claimAutoreleasedReturnValue(), v12 = [(MTNetworkMediaManifest *)v16 initWithEpisodeAdamId:v17 assetInfo:0], v17, v12))
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

- (void)playPodcastNotificationEpisodes:(id)episodes
{
  episodesCopy = episodes;
  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v21 = sub_100064EE0;
  v22 = &unk_1004D8CF0;
  v23 = mainOrPrivateContext;
  v6 = mainOrPrivateContext;
  v7 = [episodesCopy mt_compactMap:&buf];

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

  v11 = [episodesCopy mt_compactMap:&stru_1004D8D30];
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

- (id)computeNotificationsWithSchedulingOptions:(unint64_t)options
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
  privateQueueContext = [v13 privateQueueContext];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100062B2C;
  v24[3] = &unk_1004D8BB8;
  v25 = privateQueueContext;
  v26 = v5;
  v27 = v12;
  optionsCopy = options;
  v15 = v4;
  v28 = v15;
  v16 = v12;
  v17 = v5;
  v18 = privateQueueContext;
  [v18 performBlockAndWait:v24];
  v19 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    descriptionForNotificationLogging = [(MTNotificationInfo *)v15 descriptionForNotificationLogging];
    *buf = 138412290;
    v31 = descriptionForNotificationLogging;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Computed notification items: %@", buf, 0xCu);
  }

  v21 = v28;
  v22 = v15;

  return v15;
}

- (void)scheduleLocalNotifications:(id)notifications schedulingOptions:(unint64_t)options completion:(id)completion
{
  notificationsCopy = notifications;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10006316C;
  v20[3] = &unk_1004D84D0;
  completionCopy = completion;
  v21 = completionCopy;
  v10 = objc_retainBlock(v20);
  podcasts = [notificationsCopy podcasts];
  v12 = [podcasts count] == 0;

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
      descriptionForNotificationLogging = [notificationsCopy descriptionForNotificationLogging];
      *buf = 138412290;
      v23 = descriptionForNotificationLogging;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to post notifications for: %@", buf, 0xCu);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100063184;
    v15[3] = &unk_1004D8BE0;
    objc_copyWeak(v18, &location);
    v16 = notificationsCopy;
    v18[1] = options;
    v17 = v10;
    [(MTNotificationManager *)self determineCanSendNewEpisodeAlertsWithSchedulingOptions:options completion:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

- (void)postLocalNotificationForPlayerItem:(id)item
{
  itemCopy = item;
  podcastUuid = [itemCopy podcastUuid];
  v5 = podcastUuid;
  if (podcastUuid)
  {
    absoluteString = podcastUuid;
  }

  else
  {
    artworkUrl = [itemCopy artworkUrl];
    absoluteString = [artworkUrl absoluteString];
  }

  v8 = +[NSMutableArray array];
  v9 = +[PUIObjCArtworkProvider shared];
  podcastUuid2 = [itemCopy podcastUuid];
  artworkUrl2 = [itemCopy artworkUrl];
  absoluteString2 = [artworkUrl2 absoluteString];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000635A0;
  v16[3] = &unk_1004D8C30;
  v17 = absoluteString;
  v18 = v8;
  v19 = itemCopy;
  v13 = itemCopy;
  v14 = v8;
  v15 = absoluteString;
  [v9 artworkPathForShow:podcastUuid2 size:absoluteString2 source:v16 completionHandler:{0x50uLL, 0x50uLL}];
}

- (void)scheduleLocalNotificationForPodcast:(id)podcast schedulingOptions:(unint64_t)options completion:(id)completion
{
  podcastCopy = podcast;
  completionCopy = completion;
  title = [podcastCopy title];
  episodes = [podcastCopy episodes];
  v8 = [episodes count];

  v35 = +[UNNotificationCategory mt_localNotificationForNewEpisodesAvailable];
  if (v8 == 1)
  {
    episodes2 = [podcastCopy episodes];
    firstObject = [episodes2 firstObject];

    title2 = [podcastCopy title];
    bestTitle = [firstObject bestTitle];
    v12 = [bestTitle length];

    if (v12)
    {
      bestTitle2 = [firstObject bestTitle];
    }

    else
    {
      v15 = +[NSBundle mainBundle];
      bestTitle2 = [v15 localizedStringForKey:@"NOTIFICATION_SINGLE_EPISODE_NO_TITLE_FOR_PODCAST_AVAILABLE_MESSAGE_BODY" value:&stru_1004F3018 table:0];
    }
  }

  else
  {
    title2 = [podcastCopy title];
    firstObject = +[NSBundle mainBundle];
    v14 = [firstObject localizedStringForKey:@"NOTIFICATION_MULTIPLE_EPISODES_AVAILABLE_MESSAGE_BODY_FORMAT" value:&stru_1004F3018 table:0];
    bestTitle2 = [NSString localizedStringWithFormat:v14, v8];
  }

  v16 = +[NSMutableArray array];
  uuid = [podcastCopy uuid];
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
    descriptionForNotificationLogging = [podcastCopy descriptionForNotificationLogging];
    *buf = 138412290;
    v52 = descriptionForNotificationLogging;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Loading image to attach to notification for: %@", buf, 0xCu);
  }

  v24 = +[PUIObjCArtworkProvider shared];
  uuid2 = [podcastCopy uuid];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100063FD0;
  v39[3] = &unk_1004D8C80;
  v40 = uuid;
  v41 = v16;
  v42 = v35;
  v43 = title2;
  v44 = bestTitle2;
  v45 = title;
  v48 = v19;
  v49 = v8;
  optionsCopy = options;
  v46 = podcastCopy;
  v47 = completionCopy;
  v26 = completionCopy;
  v27 = podcastCopy;
  v28 = title;
  v29 = bestTitle2;
  v30 = title2;
  v31 = v35;
  v32 = v16;
  v33 = uuid;
  [v24 artworkPathForShow:uuid2 size:v39 completionHandler:{0x50uLL, 0x50uLL}];
}

- (void)clearAllNotifications
{
  v2 = +[MTDB sharedInstance];
  privateQueueContext = [v2 privateQueueContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064878;
  v5[3] = &unk_1004D8358;
  v6 = privateQueueContext;
  v4 = privateQueueContext;
  [v4 performBlock:v5];
}

@end