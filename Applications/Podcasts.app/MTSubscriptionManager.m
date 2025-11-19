@interface MTSubscriptionManager
- (BOOL)_addEpisode:(id)a3 toMyEpisodesInPodcast:(id)a4 persist:(BOOL)a5;
- (BOOL)_addLatestSeasonForSerialPodcast:(id)a3;
- (BOOL)_addLatestSeasonToPodcast:(id)a3;
- (BOOL)_addNewestEpisodeToPodcast:(id)a3;
- (BOOL)isSubscribingToPodcastWithStoreCollectionID:(int64_t)a3;
- (MTSubscriptionManager)init;
- (id)preProcessFeedHookWithParams:(id)a3 feed:(id)a4 requestUrl:(id)a5 needsUpdate:(BOOL)a6 ctx:(id)a7;
- (id)subscribeParamsForFeedUrl:(id)a3;
- (void)_feedUpdateAndSubscribeToPodcast:(id)a3 feedUrl:(id)a4 adamId:(int64_t)a5;
- (void)addSubscribeParams:(id)a3 forFeedUrl:(id)a4;
- (void)feedDownloadedWithParams:(id)a3 error:(id)a4 task:(id)a5;
- (void)postProcessFeedHookWithParams:(id)a3 podcastUuid:(id)a4 ctx:(id)a5;
- (void)removeSubscribeParamsForFeedUrl:(id)a3;
- (void)showSubscriptionFailureDialog:(id)a3 error:(id)a4;
- (void)subscribeToPodcastWithParams:(id)a3;
@end

@implementation MTSubscriptionManager

- (MTSubscriptionManager)init
{
  v14.receiver = self;
  v14.super_class = MTSubscriptionManager;
  v2 = [(MTSubscriptionManager *)&v14 init];
  if (v2)
  {
    v3 = +[MTFeedManager sharedInstance];
    feedManager = v2->_feedManager;
    v2->_feedManager = v3;

    v5 = objc_alloc_init(_TtC18PodcastsFoundation15FeedURLComposer);
    feedURLComposer = v2->_feedURLComposer;
    v2->_feedURLComposer = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    feedUrlsToParams = v2->_feedUrlsToParams;
    v2->_feedUrlsToParams = v7;

    v9 = objc_opt_new();
    currentlySubscribingStoreCollectionIds = v2->_currentlySubscribingStoreCollectionIds;
    v2->_currentlySubscribingStoreCollectionIds = v9;

    v11 = objc_opt_new();
    podcastStateDataSource = v2->_podcastStateDataSource;
    v2->_podcastStateDataSource = v11;
  }

  return v2;
}

- (id)preProcessFeedHookWithParams:(id)a3 feed:(id)a4 requestUrl:(id)a5 needsUpdate:(BOOL)a6 ctx:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v13 hasEpisodes])
  {
    goto LABEL_5;
  }

  v16 = [v13 title];
  if (v16)
  {

    goto LABEL_5;
  }

  v17 = [v13 author];

  if (v17)
  {
LABEL_5:
    if ([v13 isNotSubscribable])
    {
      v52 = NSLocalizedDescriptionKey;
      v53 = @"The feed is not subscribable.";
      v18 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v19 = [NSError errorWithDomain:@"com.apple.podcasts.MTSubscriptionManager" code:103 userInfo:v18];

      [(MTSubscriptionManager *)self showSubscriptionFailureDialog:v12 error:v19];
      v20 = [v12 completion];

      if (v20)
      {
        v21 = [v12 completion];
        v21[2](v21, 0);
      }

      v22 = +[MTFeedUpdatePreProcessResult shouldNotContinueResult];
    }

    else
    {
      v23 = [v13 resolvedFeedURL];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [v14 absoluteString];
      }

      v26 = v25;

      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = sub_100008C1C;
      v50 = sub_10003B5E4;
      v51 = 0;
      v37 = _NSConcreteStackBlock;
      v38 = 3221225472;
      v39 = sub_100162E34;
      v40 = &unk_1004DE078;
      v41 = v15;
      v27 = v26;
      v42 = v27;
      v43 = v13;
      v28 = v12;
      v44 = v28;
      v45 = &v46;
      [v41 performBlockAndWaitWithSave:&v37];
      v29 = [v28 completion];

      if (v29)
      {
        v30 = [v28 completion];
        v30[2](v30, 1);
      }

      v31 = [MTFeedUpdatePreProcessResult alloc];
      v22 = [v31 initWithShouldContinue:1 createdPodcastUUID:v47[5]];

      _Block_object_dispose(&v46, 8);
    }

    goto LABEL_15;
  }

  if (v8)
  {
    v54 = NSLocalizedDescriptionKey;
    v55 = @"The feed is empty. There are no items in the feed, and the feed has no title and no author.";
    v33 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v34 = [NSError errorWithDomain:@"com.apple.podcasts.MTSubscriptionManager" code:102 userInfo:v33];

    [(MTSubscriptionManager *)self showSubscriptionFailureDialog:v12 error:v34];
  }

  v35 = [v12 completion];

  if (v35)
  {
    v36 = [v12 completion];
    (v36)[2](v36, !v8);
  }

  v22 = +[MTFeedUpdatePreProcessResult shouldNotContinueResult];
LABEL_15:

  return v22;
}

- (void)postProcessFeedHookWithParams:(id)a3 podcastUuid:(id)a4 ctx:(id)a5
{
  v8 = a3;
  v9 = a4;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100163180;
  v18 = &unk_1004D8DA8;
  v19 = a5;
  v10 = v9;
  v20 = v10;
  v21 = self;
  v11 = v8;
  v22 = v11;
  v12 = v19;
  [v12 performBlockAndWait:&v15];
  v13 = [v11 processingCompletion];

  if (v13)
  {
    v14 = [v11 processingCompletion];
    (v14)[2](v14, v10);
  }
}

- (void)feedDownloadedWithParams:(id)a3 error:(id)a4 task:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (!v9 || ([v9 userCanceledAuth] & 1) == 0)
    {
      [(MTSubscriptionManager *)self showSubscriptionFailureDialog:v13 error:v8];
    }

    v11 = [v13 completion];

    if (v11)
    {
      v12 = [v13 completion];
      v12[2](v12, 0);
    }
  }
}

- (BOOL)_addLatestSeasonToPodcast:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v6 = [v4 managedObjectContext];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001634B4;
    v10[3] = &unk_1004D8DF0;
    v10[4] = self;
    v11 = v5;
    v13 = &v14;
    v7 = v6;
    v12 = v7;
    [v7 performBlockAndWait:v10];
    v8 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)_addLatestSeasonForSerialPodcast:(id)a3
{
  v4 = a3;
  v5 = [v4 episodesInLatestSeasonWithLimit:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 |= [(MTSubscriptionManager *)self _addEpisode:*(*(&v14 + 1) + 8 * i) toMyEpisodesInPodcast:v4 persist:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  for (j = kMaxSubscribeDownloadForSerialWithSeasons; j < [v5 count]; ++j)
  {
    v12 = [v5 objectAtIndexedSubscript:j];
    [v12 suppressAutomaticDownloadsIfNeeded];
  }

  return v8 & 1;
}

- (BOOL)_addNewestEpisodeToPodcast:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v6 = [v4 managedObjectContext];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100163768;
    v9[3] = &unk_1004D92B0;
    v11 = self;
    v12 = &v13;
    v10 = v5;
    [v6 performBlockAndWait:v9];
    v7 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_addEpisode:(id)a3 toMyEpisodesInPodcast:(id)a4 persist:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v11 = [v8 managedObjectContext];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100163928;
    v14[3] = &unk_1004DE0A0;
    v15 = v7;
    v17 = &v19;
    v18 = a5;
    v12 = v11;
    v16 = v12;
    [v12 performBlockAndWait:v14];
    v10 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  return v10 & 1;
}

- (void)subscribeToPodcastWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTSubscriptionManager *)self feedManager];
  v6 = [v5 abortUpdatesIfNetworkUnreachable:{objc_msgSend(v4, "userInitiated")}];

  if (!v6)
  {
    v8 = [v4 url];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [v4 url];
      v11 = [NSURL URLWithString:v10];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(MTSubscriptionManager *)self feedURLComposer];
    v36 = 0;
    v13 = [v12 feedURLForOptionalURL:v11 adamID:objc_msgSend(v4 error:{"storeCollectionId"), &v36}];
    v14 = v36;

    if (v14)
    {
      v15 = [v14 code];
      if (v15 == +[_TtC18PodcastsFoundation15FeedURLComposer errorURLDoesNotExist])
      {
        v41 = NSLocalizedDescriptionKey;
        v42 = @"The feed url does not exist.";
        v16 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v17 = [NSError errorWithDomain:@"com.apple.podcasts.MTSubscriptionManager" code:101 userInfo:v16];

        [(MTSubscriptionManager *)self showSubscriptionFailureDialog:v4 error:v17];
LABEL_11:

        goto LABEL_22;
      }

      v18 = [v14 code];
      if (v18 == +[_TtC18PodcastsFoundation15FeedURLComposer errorURLInvalid])
      {
        v17 = [NSString stringWithFormat:@"The feed url is invalid: %@", v13];
        v39 = NSLocalizedDescriptionKey;
        v40 = v17;
        v19 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v20 = [NSError errorWithDomain:@"com.apple.podcasts.MTSubscriptionManager" code:100 userInfo:v19];

        [(MTSubscriptionManager *)self showSubscriptionFailureDialog:v4 error:v20];
        goto LABEL_11;
      }

      v21 = [v14 code];
      if (v21 == +[_TtC18PodcastsFoundation15FeedURLComposer errorCannotGenerateInternalURL])
      {
        v22 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [v4 storeCollectionId];
          *buf = 134217984;
          v38 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "For some weird reason we cannot generate url of type internal://%lld", buf, 0xCu);
        }
      }
    }

    v24 = [v4 storeCollectionId];
    if (!v24)
    {
      v25 = [v13 absoluteString];
      v26 = [MTPodcast isRedirectURL:v25];

      if (!v26 || ([v13 absoluteString], v27 = objc_claimAutoreleasedReturnValue(), v24 = +[MTPodcast storeCollectionIdForRedirectURL:](MTPodcast, "storeCollectionIdForRedirectURL:", v27), v27, !v24))
      {
        v28 = [v13 absoluteString];
        v29 = +[MTSubscriptionController sharedInstance];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100163E6C;
        v31[3] = &unk_1004DE0C8;
        v32 = v28;
        v33 = v4;
        v34 = self;
        v35 = v13;
        v30 = v28;
        [v29 podcastExistsInStoreWithFeedUrl:v30 completion:v31];

        goto LABEL_22;
      }

      [v4 setStoreCollectionId:v24];
    }

    [(MTSubscriptionManager *)self _feedUpdateAndSubscribeToPodcast:v4 feedUrl:v13 adamId:v24];
LABEL_22:

    goto LABEL_23;
  }

  v7 = +[IMLogger sharedLogger];
  [v7 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Feed/MTSubscriptionManager.m" lineNumber:281 format:@"Skipping subscibe to podcasts due to network not being reachable"];

LABEL_23:
}

- (void)_feedUpdateAndSubscribeToPodcast:(id)a3 feedUrl:(id)a4 adamId:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 absoluteString];
  v38 = self;
  [(MTSubscriptionManager *)self addSubscribeParams:v8 forFeedUrl:v10];

  v11 = _MTLogCategoryFeedUpdate();
  v12 = os_signpost_id_generate(v11);

  v13 = _MTLogCategoryFollowing();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 141558786;
    v55 = 1752392040;
    v56 = 2048;
    v57 = a5;
    v58 = 2160;
    v59 = 1752392040;
    v60 = 2112;
    v61 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MTSubscriptionManager subscribe", "adamID hash: %{mask.hash}lli, url hash: %{mask.hash}@", buf, 0x2Au);
  }

  v36 = v9;
  v37 = v12;

  v15 = +[PodcastsApplicationStateMonitor shared];
  v16 = [v15 isActive];

  v17 = +[MTFeedUpdateMetricsDataKey userInitiated];
  v52[0] = v17;
  v35 = v8;
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 userInitiated]);
  v53[0] = v18;
  v19 = +[MTFeedUpdateMetricsDataKey foreground];
  v52[1] = v19;
  v20 = [NSNumber numberWithBool:v16];
  v53[1] = v20;
  v21 = +[MTFeedUpdateMetricsDataKey backgroundFetch];
  v52[2] = v21;
  v53[2] = &__kCFBooleanFalse;
  v22 = +[MTFeedUpdateMetricsDataKey podcastStoreId];
  v52[3] = v22;
  v39 = a5;
  v23 = [NSNumber numberWithLongLong:a5];
  v53[3] = v23;
  v24 = +[MTFeedUpdateMetricsDataKey source];
  v52[4] = v24;
  v53[4] = &off_1005017B0;
  v25 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:5];

  v26 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Updating podcast %@", buf, 0xCu);
  }

  v27 = +[MTFeedUpdateMetricsAction podcastDataSource];
  [IMMetrics recordEvent:v27 dataSource:0 data:v25];

  v28 = v25;
  v29 = [(MTSubscriptionManager *)v38 feedManager];
  v30 = [v35 userInitiated];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100164498;
  v50[3] = &unk_1004DE0F0;
  v50[4] = v38;
  v51 = v35;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001644AC;
  v46[3] = &unk_1004DE118;
  v46[4] = v38;
  v47 = v51;
  v48 = v36;
  v49 = v37;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100164570;
  v43[3] = &unk_1004DE140;
  v43[4] = v38;
  v44 = v47;
  v45 = v37;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10016460C;
  v40[3] = &unk_1004DE168;
  v40[4] = v38;
  v41 = v48;
  v42 = v37;
  v31 = v48;
  v32 = v47;
  LOBYTE(v34) = 1;
  LOBYTE(v33) = 0;
  [v29 updateFeedForFeedUrl:v31 cloudSyncFeedUrl:v31 podcastStoreId:v39 triggerBy:0 userInitiated:v30 forceBootstrap:0 useBackgroundFetch:v33 source:16 isSubscribing:v34 telemetryIdentifier:0 feedDownloadedHook:v50 preProcessFeedHook:v46 postProcessFeedHook:v43 completion:v40];
}

- (BOOL)isSubscribingToPodcastWithStoreCollectionID:(int64_t)a3
{
  v5 = [(MTSubscriptionManager *)self feedUrlsToParams];
  objc_sync_enter(v5);
  v6 = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  v7 = [NSNumber numberWithLongLong:a3];
  LOBYTE(a3) = [v6 containsObject:v7];

  objc_sync_exit(v5);
  return a3;
}

- (id)subscribeParamsForFeedUrl:(id)a3
{
  v4 = a3;
  v5 = [(MTSubscriptionManager *)self feedUrlsToParams];
  objc_sync_enter(v5);
  v6 = [(MTSubscriptionManager *)self feedUrlsToParams];
  v7 = [v6 objectForKey:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)addSubscribeParams:(id)a3 forFeedUrl:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(MTSubscriptionManager *)self feedUrlsToParams];
  objc_sync_enter(v7);
  v8 = [(MTSubscriptionManager *)self feedUrlsToParams];
  [v8 setObject:v13 forKey:v6];

  v9 = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v13 storeCollectionId]);
  [v9 addObject:v10];

  v11 = [(MTSubscriptionManager *)self podcastStateDataSource];
  v12 = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  [v11 updateAddingShowsWithStoreCollectionIds:v12];

  objc_sync_exit(v7);
}

- (void)removeSubscribeParamsForFeedUrl:(id)a3
{
  v4 = a3;
  v5 = [(MTSubscriptionManager *)self feedUrlsToParams];
  objc_sync_enter(v5);
  v6 = [(MTSubscriptionManager *)self feedUrlsToParams];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [(MTSubscriptionManager *)self feedUrlsToParams];
  [v8 removeObjectForKey:v4];

  v9 = [v7 storeCollectionId];
  v10 = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  v11 = [NSNumber numberWithLongLong:v9];
  [v10 removeObject:v11];

  v12 = [(MTSubscriptionManager *)self podcastStateDataSource];
  v13 = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  [v12 updateAddingShowsWithStoreCollectionIds:v13];

  objc_sync_exit(v5);
  v14 = +[NSNotificationCenter defaultCenter];
  v17 = @"com.apple.podcasts.MTSubscriptionManager.StoreCollectionID";
  v15 = [NSNumber numberWithLongLong:v9];
  v18 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v14 postNotificationName:@"com.apple.podcasts.MTSubscriptionManager.DidFinishSubscribingNotification" object:self userInfo:v16];
}

- (void)showSubscriptionFailureDialog:(id)a3 error:(id)a4
{
  v5 = a4;
  if ([a3 userInitiated])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100164C20;
    block[3] = &unk_1004D8358;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end