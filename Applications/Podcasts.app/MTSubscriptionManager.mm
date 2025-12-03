@interface MTSubscriptionManager
- (BOOL)_addEpisode:(id)episode toMyEpisodesInPodcast:(id)podcast persist:(BOOL)persist;
- (BOOL)_addLatestSeasonForSerialPodcast:(id)podcast;
- (BOOL)_addLatestSeasonToPodcast:(id)podcast;
- (BOOL)_addNewestEpisodeToPodcast:(id)podcast;
- (BOOL)isSubscribingToPodcastWithStoreCollectionID:(int64_t)d;
- (MTSubscriptionManager)init;
- (id)preProcessFeedHookWithParams:(id)params feed:(id)feed requestUrl:(id)url needsUpdate:(BOOL)update ctx:(id)ctx;
- (id)subscribeParamsForFeedUrl:(id)url;
- (void)_feedUpdateAndSubscribeToPodcast:(id)podcast feedUrl:(id)url adamId:(int64_t)id;
- (void)addSubscribeParams:(id)params forFeedUrl:(id)url;
- (void)feedDownloadedWithParams:(id)params error:(id)error task:(id)task;
- (void)postProcessFeedHookWithParams:(id)params podcastUuid:(id)uuid ctx:(id)ctx;
- (void)removeSubscribeParamsForFeedUrl:(id)url;
- (void)showSubscriptionFailureDialog:(id)dialog error:(id)error;
- (void)subscribeToPodcastWithParams:(id)params;
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

- (id)preProcessFeedHookWithParams:(id)params feed:(id)feed requestUrl:(id)url needsUpdate:(BOOL)update ctx:(id)ctx
{
  updateCopy = update;
  paramsCopy = params;
  feedCopy = feed;
  urlCopy = url;
  ctxCopy = ctx;
  if ([feedCopy hasEpisodes])
  {
    goto LABEL_5;
  }

  title = [feedCopy title];
  if (title)
  {

    goto LABEL_5;
  }

  author = [feedCopy author];

  if (author)
  {
LABEL_5:
    if ([feedCopy isNotSubscribable])
    {
      v52 = NSLocalizedDescriptionKey;
      v53 = @"The feed is not subscribable.";
      v18 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v19 = [NSError errorWithDomain:@"com.apple.podcasts.MTSubscriptionManager" code:103 userInfo:v18];

      [(MTSubscriptionManager *)self showSubscriptionFailureDialog:paramsCopy error:v19];
      completion = [paramsCopy completion];

      if (completion)
      {
        completion2 = [paramsCopy completion];
        completion2[2](completion2, 0);
      }

      v22 = +[MTFeedUpdatePreProcessResult shouldNotContinueResult];
    }

    else
    {
      resolvedFeedURL = [feedCopy resolvedFeedURL];
      v24 = resolvedFeedURL;
      if (resolvedFeedURL)
      {
        absoluteString = resolvedFeedURL;
      }

      else
      {
        absoluteString = [urlCopy absoluteString];
      }

      v26 = absoluteString;

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
      v41 = ctxCopy;
      v27 = v26;
      v42 = v27;
      v43 = feedCopy;
      v28 = paramsCopy;
      v44 = v28;
      v45 = &v46;
      [v41 performBlockAndWaitWithSave:&v37];
      completion3 = [v28 completion];

      if (completion3)
      {
        completion4 = [v28 completion];
        completion4[2](completion4, 1);
      }

      v31 = [MTFeedUpdatePreProcessResult alloc];
      v22 = [v31 initWithShouldContinue:1 createdPodcastUUID:v47[5]];

      _Block_object_dispose(&v46, 8);
    }

    goto LABEL_15;
  }

  if (updateCopy)
  {
    v54 = NSLocalizedDescriptionKey;
    v55 = @"The feed is empty. There are no items in the feed, and the feed has no title and no author.";
    v33 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v34 = [NSError errorWithDomain:@"com.apple.podcasts.MTSubscriptionManager" code:102 userInfo:v33];

    [(MTSubscriptionManager *)self showSubscriptionFailureDialog:paramsCopy error:v34];
  }

  completion5 = [paramsCopy completion];

  if (completion5)
  {
    completion6 = [paramsCopy completion];
    (completion6)[2](completion6, !updateCopy);
  }

  v22 = +[MTFeedUpdatePreProcessResult shouldNotContinueResult];
LABEL_15:

  return v22;
}

- (void)postProcessFeedHookWithParams:(id)params podcastUuid:(id)uuid ctx:(id)ctx
{
  paramsCopy = params;
  uuidCopy = uuid;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100163180;
  v18 = &unk_1004D8DA8;
  ctxCopy = ctx;
  v10 = uuidCopy;
  v20 = v10;
  selfCopy = self;
  v11 = paramsCopy;
  v22 = v11;
  v12 = ctxCopy;
  [v12 performBlockAndWait:&v15];
  processingCompletion = [v11 processingCompletion];

  if (processingCompletion)
  {
    processingCompletion2 = [v11 processingCompletion];
    (processingCompletion2)[2](processingCompletion2, v10);
  }
}

- (void)feedDownloadedWithParams:(id)params error:(id)error task:(id)task
{
  paramsCopy = params;
  errorCopy = error;
  taskCopy = task;
  v10 = taskCopy;
  if (errorCopy)
  {
    if (!taskCopy || ([taskCopy userCanceledAuth] & 1) == 0)
    {
      [(MTSubscriptionManager *)self showSubscriptionFailureDialog:paramsCopy error:errorCopy];
    }

    completion = [paramsCopy completion];

    if (completion)
    {
      completion2 = [paramsCopy completion];
      completion2[2](completion2, 0);
    }
  }
}

- (BOOL)_addLatestSeasonToPodcast:(id)podcast
{
  podcastCopy = podcast;
  v5 = podcastCopy;
  if (podcastCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    managedObjectContext = [podcastCopy managedObjectContext];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001634B4;
    v10[3] = &unk_1004D8DF0;
    v10[4] = self;
    v11 = v5;
    v13 = &v14;
    v7 = managedObjectContext;
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

- (BOOL)_addLatestSeasonForSerialPodcast:(id)podcast
{
  podcastCopy = podcast;
  v5 = [podcastCopy episodesInLatestSeasonWithLimit:0];
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

        v8 |= [(MTSubscriptionManager *)self _addEpisode:*(*(&v14 + 1) + 8 * i) toMyEpisodesInPodcast:podcastCopy persist:0];
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

- (BOOL)_addNewestEpisodeToPodcast:(id)podcast
{
  podcastCopy = podcast;
  v5 = podcastCopy;
  if (podcastCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    managedObjectContext = [podcastCopy managedObjectContext];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100163768;
    v9[3] = &unk_1004D92B0;
    selfCopy = self;
    v12 = &v13;
    v10 = v5;
    [managedObjectContext performBlockAndWait:v9];
    v7 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_addEpisode:(id)episode toMyEpisodesInPodcast:(id)podcast persist:(BOOL)persist
{
  episodeCopy = episode;
  podcastCopy = podcast;
  v9 = podcastCopy;
  v10 = 0;
  if (episodeCopy && podcastCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    managedObjectContext = [podcastCopy managedObjectContext];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100163928;
    v14[3] = &unk_1004DE0A0;
    v15 = episodeCopy;
    v17 = &v19;
    persistCopy = persist;
    v12 = managedObjectContext;
    v16 = v12;
    [v12 performBlockAndWait:v14];
    v10 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  return v10 & 1;
}

- (void)subscribeToPodcastWithParams:(id)params
{
  paramsCopy = params;
  feedManager = [(MTSubscriptionManager *)self feedManager];
  v6 = [feedManager abortUpdatesIfNetworkUnreachable:{objc_msgSend(paramsCopy, "userInitiated")}];

  if (!v6)
  {
    v8 = [paramsCopy url];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [paramsCopy url];
      v11 = [NSURL URLWithString:v10];
    }

    else
    {
      v11 = 0;
    }

    feedURLComposer = [(MTSubscriptionManager *)self feedURLComposer];
    v36 = 0;
    v13 = [feedURLComposer feedURLForOptionalURL:v11 adamID:objc_msgSend(paramsCopy error:{"storeCollectionId"), &v36}];
    v14 = v36;

    if (v14)
    {
      code = [v14 code];
      if (code == +[_TtC18PodcastsFoundation15FeedURLComposer errorURLDoesNotExist])
      {
        v41 = NSLocalizedDescriptionKey;
        v42 = @"The feed url does not exist.";
        v16 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v17 = [NSError errorWithDomain:@"com.apple.podcasts.MTSubscriptionManager" code:101 userInfo:v16];

        [(MTSubscriptionManager *)self showSubscriptionFailureDialog:paramsCopy error:v17];
LABEL_11:

        goto LABEL_22;
      }

      code2 = [v14 code];
      if (code2 == +[_TtC18PodcastsFoundation15FeedURLComposer errorURLInvalid])
      {
        v17 = [NSString stringWithFormat:@"The feed url is invalid: %@", v13];
        v39 = NSLocalizedDescriptionKey;
        v40 = v17;
        v19 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v20 = [NSError errorWithDomain:@"com.apple.podcasts.MTSubscriptionManager" code:100 userInfo:v19];

        [(MTSubscriptionManager *)self showSubscriptionFailureDialog:paramsCopy error:v20];
        goto LABEL_11;
      }

      code3 = [v14 code];
      if (code3 == +[_TtC18PodcastsFoundation15FeedURLComposer errorCannotGenerateInternalURL])
      {
        v22 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          storeCollectionId = [paramsCopy storeCollectionId];
          *buf = 134217984;
          v38 = storeCollectionId;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "For some weird reason we cannot generate url of type internal://%lld", buf, 0xCu);
        }
      }
    }

    storeCollectionId2 = [paramsCopy storeCollectionId];
    if (!storeCollectionId2)
    {
      absoluteString = [v13 absoluteString];
      v26 = [MTPodcast isRedirectURL:absoluteString];

      if (!v26 || ([v13 absoluteString], v27 = objc_claimAutoreleasedReturnValue(), storeCollectionId2 = +[MTPodcast storeCollectionIdForRedirectURL:](MTPodcast, "storeCollectionIdForRedirectURL:", v27), v27, !storeCollectionId2))
      {
        absoluteString2 = [v13 absoluteString];
        v29 = +[MTSubscriptionController sharedInstance];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100163E6C;
        v31[3] = &unk_1004DE0C8;
        v32 = absoluteString2;
        v33 = paramsCopy;
        selfCopy = self;
        v35 = v13;
        v30 = absoluteString2;
        [v29 podcastExistsInStoreWithFeedUrl:v30 completion:v31];

        goto LABEL_22;
      }

      [paramsCopy setStoreCollectionId:storeCollectionId2];
    }

    [(MTSubscriptionManager *)self _feedUpdateAndSubscribeToPodcast:paramsCopy feedUrl:v13 adamId:storeCollectionId2];
LABEL_22:

    goto LABEL_23;
  }

  v7 = +[IMLogger sharedLogger];
  [v7 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Feed/MTSubscriptionManager.m" lineNumber:281 format:@"Skipping subscibe to podcasts due to network not being reachable"];

LABEL_23:
}

- (void)_feedUpdateAndSubscribeToPodcast:(id)podcast feedUrl:(id)url adamId:(int64_t)id
{
  podcastCopy = podcast;
  urlCopy = url;
  absoluteString = [urlCopy absoluteString];
  selfCopy = self;
  [(MTSubscriptionManager *)self addSubscribeParams:podcastCopy forFeedUrl:absoluteString];

  v11 = _MTLogCategoryFeedUpdate();
  v12 = os_signpost_id_generate(v11);

  v13 = _MTLogCategoryFollowing();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 141558786;
    v55 = 1752392040;
    v56 = 2048;
    idCopy = id;
    v58 = 2160;
    v59 = 1752392040;
    v60 = 2112;
    v61 = urlCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MTSubscriptionManager subscribe", "adamID hash: %{mask.hash}lli, url hash: %{mask.hash}@", buf, 0x2Au);
  }

  v36 = urlCopy;
  v37 = v12;

  v15 = +[PodcastsApplicationStateMonitor shared];
  isActive = [v15 isActive];

  v17 = +[MTFeedUpdateMetricsDataKey userInitiated];
  v52[0] = v17;
  v35 = podcastCopy;
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [podcastCopy userInitiated]);
  v53[0] = v18;
  v19 = +[MTFeedUpdateMetricsDataKey foreground];
  v52[1] = v19;
  v20 = [NSNumber numberWithBool:isActive];
  v53[1] = v20;
  v21 = +[MTFeedUpdateMetricsDataKey backgroundFetch];
  v52[2] = v21;
  v53[2] = &__kCFBooleanFalse;
  v22 = +[MTFeedUpdateMetricsDataKey podcastStoreId];
  v52[3] = v22;
  idCopy2 = id;
  v23 = [NSNumber numberWithLongLong:id];
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
  feedManager = [(MTSubscriptionManager *)selfCopy feedManager];
  userInitiated = [v35 userInitiated];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100164498;
  v50[3] = &unk_1004DE0F0;
  v50[4] = selfCopy;
  v51 = v35;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001644AC;
  v46[3] = &unk_1004DE118;
  v46[4] = selfCopy;
  v47 = v51;
  v48 = v36;
  v49 = v37;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100164570;
  v43[3] = &unk_1004DE140;
  v43[4] = selfCopy;
  v44 = v47;
  v45 = v37;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10016460C;
  v40[3] = &unk_1004DE168;
  v40[4] = selfCopy;
  v41 = v48;
  v42 = v37;
  v31 = v48;
  v32 = v47;
  LOBYTE(v34) = 1;
  LOBYTE(v33) = 0;
  [feedManager updateFeedForFeedUrl:v31 cloudSyncFeedUrl:v31 podcastStoreId:idCopy2 triggerBy:0 userInitiated:userInitiated forceBootstrap:0 useBackgroundFetch:v33 source:16 isSubscribing:v34 telemetryIdentifier:0 feedDownloadedHook:v50 preProcessFeedHook:v46 postProcessFeedHook:v43 completion:v40];
}

- (BOOL)isSubscribingToPodcastWithStoreCollectionID:(int64_t)d
{
  feedUrlsToParams = [(MTSubscriptionManager *)self feedUrlsToParams];
  objc_sync_enter(feedUrlsToParams);
  currentlySubscribingStoreCollectionIds = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  v7 = [NSNumber numberWithLongLong:d];
  LOBYTE(d) = [currentlySubscribingStoreCollectionIds containsObject:v7];

  objc_sync_exit(feedUrlsToParams);
  return d;
}

- (id)subscribeParamsForFeedUrl:(id)url
{
  urlCopy = url;
  feedUrlsToParams = [(MTSubscriptionManager *)self feedUrlsToParams];
  objc_sync_enter(feedUrlsToParams);
  feedUrlsToParams2 = [(MTSubscriptionManager *)self feedUrlsToParams];
  v7 = [feedUrlsToParams2 objectForKey:urlCopy];

  objc_sync_exit(feedUrlsToParams);

  return v7;
}

- (void)addSubscribeParams:(id)params forFeedUrl:(id)url
{
  paramsCopy = params;
  urlCopy = url;
  feedUrlsToParams = [(MTSubscriptionManager *)self feedUrlsToParams];
  objc_sync_enter(feedUrlsToParams);
  feedUrlsToParams2 = [(MTSubscriptionManager *)self feedUrlsToParams];
  [feedUrlsToParams2 setObject:paramsCopy forKey:urlCopy];

  currentlySubscribingStoreCollectionIds = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [paramsCopy storeCollectionId]);
  [currentlySubscribingStoreCollectionIds addObject:v10];

  podcastStateDataSource = [(MTSubscriptionManager *)self podcastStateDataSource];
  currentlySubscribingStoreCollectionIds2 = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  [podcastStateDataSource updateAddingShowsWithStoreCollectionIds:currentlySubscribingStoreCollectionIds2];

  objc_sync_exit(feedUrlsToParams);
}

- (void)removeSubscribeParamsForFeedUrl:(id)url
{
  urlCopy = url;
  feedUrlsToParams = [(MTSubscriptionManager *)self feedUrlsToParams];
  objc_sync_enter(feedUrlsToParams);
  feedUrlsToParams2 = [(MTSubscriptionManager *)self feedUrlsToParams];
  v7 = [feedUrlsToParams2 objectForKeyedSubscript:urlCopy];

  feedUrlsToParams3 = [(MTSubscriptionManager *)self feedUrlsToParams];
  [feedUrlsToParams3 removeObjectForKey:urlCopy];

  storeCollectionId = [v7 storeCollectionId];
  currentlySubscribingStoreCollectionIds = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  v11 = [NSNumber numberWithLongLong:storeCollectionId];
  [currentlySubscribingStoreCollectionIds removeObject:v11];

  podcastStateDataSource = [(MTSubscriptionManager *)self podcastStateDataSource];
  currentlySubscribingStoreCollectionIds2 = [(MTSubscriptionManager *)self currentlySubscribingStoreCollectionIds];
  [podcastStateDataSource updateAddingShowsWithStoreCollectionIds:currentlySubscribingStoreCollectionIds2];

  objc_sync_exit(feedUrlsToParams);
  v14 = +[NSNotificationCenter defaultCenter];
  v17 = @"com.apple.podcasts.MTSubscriptionManager.StoreCollectionID";
  v15 = [NSNumber numberWithLongLong:storeCollectionId];
  v18 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v14 postNotificationName:@"com.apple.podcasts.MTSubscriptionManager.DidFinishSubscribingNotification" object:self userInfo:v16];
}

- (void)showSubscriptionFailureDialog:(id)dialog error:(id)error
{
  errorCopy = error;
  if ([dialog userInitiated])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100164C20;
    block[3] = &unk_1004D8358;
    v7 = errorCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end