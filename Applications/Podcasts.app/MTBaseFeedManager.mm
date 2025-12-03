@interface MTBaseFeedManager
+ (BOOL)isUpdatingFeedUrl:(id)url;
+ (BOOL)isUpdatingPodcastUuid:(id)uuid;
+ (id)_metadataUrl;
+ (unint64_t)updatingCount;
+ (void)didFinishUpdatingAllFeeds:(BOOL)feeds;
+ (void)didFinishUpdatingFeedUrl:(id)url withError:(id)error;
+ (void)didStartUpdatingFeedUrl:(id)url cloudSyncUrl:(id)syncUrl;
+ (void)initialize;
+ (void)postNotificationName:(id)name userInfo:(id)info;
+ (void)purgeSubscriptionMetadata;
+ (void)removeMetadataForPodcastUuid:(id)uuid;
+ (void)saveSubscriptionMetadata;
+ (void)standardDeviationForEpisodes:(id)episodes standardDeviation:(double *)deviation average:(double *)average;
- (BOOL)_localEpisode:(id)episode isEqualToServerEpisode:(id)serverEpisode;
- (BOOL)abortUpdatesIfNetworkUnreachable:(BOOL)unreachable;
- (BOOL)processFeed:(id)feed podcastUUID:(id)d requestUrl:(id)url useBackgroundFetch:(BOOL)fetch needsUpdate:(BOOL)update source:(int64_t)source;
- (BOOL)updatePodcastWithUuid:(id)uuid withFeed:(id)feed originalFeedUrl:(id)url source:(int64_t)source;
- (MTBaseFeedManager)init;
- (id)_insertNewEpisodeForServerEpisode:(id)episode podcast:(id)podcast ctx:(id)ctx;
- (id)_sortDescriptorsForLocalEpisodes;
- (id)importContext;
- (id)preProcessFeedHook:(id)hook requestUrl:(id)url needsUpdate:(BOOL)update;
- (id)sessionCompletionHandler;
- (int64_t)_compareServerEpisode:(id)episode toLocalEpisode:(id)localEpisode;
- (int64_t)_compareServerEpisode:(id)episode toServerEpisode:(id)serverEpisode;
- (void)_addPendingFeedProcessingBlock:(id)block;
- (void)_didFinishUpdatingFeedUrl:(id)url withError:(id)error;
- (void)_processNextPendingFeedIfPossible;
- (void)_queue_processNextPendingFeedIfPossible;
- (void)_startDownloadForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated useBackgroundFetch:(BOOL)fetch source:(int64_t)source;
- (void)didDownloadFeedWithError:(id)error data:(id)data task:(id)task requestedUrl:(id)url useBackgroundFetch:(BOOL)fetch;
- (void)didRestoreFeedUrlTask:(id)task;
- (void)markEpisodeAsFirstSeen:(id)seen;
- (void)preprocessFeedWithDataHashingBlock:(id)block feedCreationBlock:(id)creationBlock url:(id)url useBackgroundFetch:(BOOL)fetch source:(int64_t)source;
- (void)setSessionCompletionHandler:(id)handler;
- (void)startDownloadForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated useBackgroundFetch:(BOOL)fetch source:(int64_t)source;
- (void)startDownloadForPodcastStoreId:(int64_t)id triggerBy:(id)by feedUrl:(id)url useBackgroundFetch:(BOOL)fetch source:(int64_t)source;
@end

@implementation MTBaseFeedManager

+ (void)initialize
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTBaseFeedManager;
  objc_msgSendSuper2(&v5, "initialize");
  if (qword_100583CC8 != -1)
  {
    sub_10001468C();
  }

  _metadataUrl = [self _metadataUrl];
  v4 = [NSDictionary dictionaryWithContentsOfURL:_metadataUrl];

  if (v4)
  {
    [qword_100583CD8 addEntriesFromDictionary:v4];
  }
}

+ (id)_metadataUrl
{
  v2 = +[MTConstants cachesDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"MTSubscriptionMeta.plist"];

  return v3;
}

- (MTBaseFeedManager)init
{
  v21.receiver = self;
  v21.super_class = MTBaseFeedManager;
  v2 = [(MTBaseFeedManager *)&v21 init];
  if (v2)
  {
    v3 = +[_TtC18PodcastsFoundation29FeedManagerLocalConfiguration platformSpecificConfiguration];
    [(MTBaseFeedManager *)v2 setConfiguration:v3];

    v4 = [[MTExternalFeedDownloader alloc] initWithDelegate:v2];
    [(MTBaseFeedManager *)v2 setExternalFeedDownloader:v4];

    v5 = objc_alloc_init(_TtC18PodcastsFoundation21PodcastFeedDownloader);
    [(MTBaseFeedManager *)v2 setStorePodcastDownloader:v5];

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [NSString stringWithFormat:@"%@-feedProcessingQueue", v7];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    [(MTBaseFeedManager *)v2 setFeedProcessingQueue:v9];

    configuration = [(MTBaseFeedManager *)v2 configuration];
    workQueueConcurrent = [configuration workQueueConcurrent];
    v12 = &_dispatch_queue_attr_concurrent;
    if (!workQueueConcurrent)
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [NSString stringWithFormat:@"%@-worker", v15];
    v17 = dispatch_queue_create([v16 UTF8String], v13);

    [(MTBaseFeedManager *)v2 setWorkQueue:v17];
    v18 = +[NSMutableArray array];
    pendingFeedProcessingBlocks = v2->_pendingFeedProcessingBlocks;
    v2->_pendingFeedProcessingBlocks = v18;
  }

  return v2;
}

- (id)sessionCompletionHandler
{
  externalFeedDownloader = [(MTBaseFeedManager *)self externalFeedDownloader];
  sessionCompletionHandler = [externalFeedDownloader sessionCompletionHandler];

  return sessionCompletionHandler;
}

- (void)setSessionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  externalFeedDownloader = [(MTBaseFeedManager *)self externalFeedDownloader];
  [externalFeedDownloader setSessionCompletionHandler:handlerCopy];

  [(MTBaseFeedManager *)self _processNextPendingFeedIfPossible];
}

- (id)importContext
{
  configuration = [(MTBaseFeedManager *)self configuration];
  supportsBatchInsertion = [configuration supportsBatchInsertion];

  v4 = +[MTDB sharedInstance];
  v5 = v4;
  if (supportsBatchInsertion)
  {
    [v4 resetableImportContext];
  }

  else
  {
    [v4 importContext];
  }
  v6 = ;

  return v6;
}

- (id)preProcessFeedHook:(id)hook requestUrl:(id)url needsUpdate:(BOOL)update
{
  v5 = [[MTFeedUpdatePreProcessResult alloc] initWithShouldContinue:1 createdPodcastUUID:0];

  return v5;
}

- (BOOL)processFeed:(id)feed podcastUUID:(id)d requestUrl:(id)url useBackgroundFetch:(BOOL)fetch needsUpdate:(BOOL)update source:(int64_t)source
{
  updateCopy = update;
  fetchCopy = fetch;
  feedCopy = feed;
  dCopy = d;
  urlCopy = url;
  v17 = +[MTProcessorManager sharedInstance];
  [v17 startProcessorsForFeedUpdates];

  importContext = [(MTBaseFeedManager *)self importContext];
  if (dCopy)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    sourceCopy = source;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = sub_100008B0C;
    v35[4] = sub_10003B55C;
    v36 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100103BEC;
    v24[3] = &unk_1004DC740;
    v23 = importContext;
    v25 = importContext;
    v20 = dCopy;
    v33 = updateCopy;
    v30 = v35;
    v31 = &v37;
    v26 = v20;
    selfCopy = self;
    v28 = feedCopy;
    v29 = urlCopy;
    v32 = sourceCopy;
    v34 = fetchCopy;
    [v25 performBlockAndWaitWithSave:v24];
    if (updateCopy && *(v38 + 24) == 1)
    {
      v21 = +[MTFeedUpdateManager sharedInstance];
      [v21 _updatePodcastWithUUID:v20 userInitiated:0 useBackgroundFetch:fetchCopy source:14];
    }

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(&v37, 8);
    importContext = v23;
  }

  return 1;
}

- (BOOL)updatePodcastWithUuid:(id)uuid withFeed:(id)feed originalFeedUrl:(id)url source:(int64_t)source
{
  uuidCopy = uuid;
  feedCopy = feed;
  urlCopy = url;
  v314 = feedCopy;
  if (feedCopy)
  {
    v308 = os_transaction_create();
    v305 = objc_autoreleasePoolPush();
    selfCopy = self;
    importContext = [(MTBaseFeedManager *)self importContext];
    v310 = uuidCopy;
    v12 = [importContext podcastForUuid:uuidCopy];
    podcastStoreId = [feedCopy podcastStoreId];
    longLongValue = [podcastStoreId longLongValue];

    if ([MTStoreIdentifier isNotEmpty:longLongValue])
    {
      [v12 setStoreCollectionId:longLongValue];
    }

    updatedFeedURL = [feedCopy updatedFeedURL];
    v307 = updatedFeedURL;
    v301 = longLongValue;
    if ([MTDBUtil isSupportedUrlString:updatedFeedURL])
    {
      [v12 currentFeedURL];
      v17 = v16 = updatedFeedURL;
      absoluteString = [v17 absoluteString];
      LOBYTE(v16) = [v16 isEqualToString:absoluteString];

      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v24 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          currentFeedURL = [v12 currentFeedURL];
          absoluteString2 = [currentFeedURL absoluteString];
          *buf = 138543874;
          v352 = v310;
          v353 = 2112;
          v354 = v307;
          v355 = 2112;
          v356 = *&absoluteString2;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Found different updatedFeedURL %@ from %@", buf, 0x20u);
        }

        [v12 setUpdatedFeedURL:v307];
        v19 = 1;
      }

      feedCopy = v314;
    }

    else
    {
      v19 = 0;
    }

    v303 = v19;
    resolvedFeedURL = [feedCopy resolvedFeedURL];
    v309 = resolvedFeedURL;
    if ([resolvedFeedURL length])
    {
      currentFeedURL2 = [v12 currentFeedURL];
      absoluteString3 = [currentFeedURL2 absoluteString];
      v30 = [resolvedFeedURL isEqualToString:absoluteString3];

      if ((v30 & 1) == 0)
      {
        v31 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          currentFeedURL3 = [v12 currentFeedURL];
          absoluteString4 = [currentFeedURL3 absoluteString];
          *buf = 138543874;
          v352 = v310;
          v353 = 2112;
          v354 = v309;
          v355 = 2112;
          v356 = *&absoluteString4;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Found different feedURL %@ from %@", buf, 0x20u);
        }

        [v12 setUpdatedFeedURL:v309];
        v303 = 1;
      }
    }

    sourceCopy = source;
    v23 = v314;
    title = [v314 title];
    stringByStrippingHTML = [title stringByStrippingHTML];
    stringByRemovingNewlineCharacters = [stringByStrippingHTML stringByRemovingNewlineCharacters];
    [v12 setTitle:stringByRemovingNewlineCharacters];

    author = [v314 author];
    stringByStrippingHTML2 = [author stringByStrippingHTML];
    [v12 setAuthor:stringByStrippingHTML2];

    provider = [v314 provider];
    stringByStrippingHTML3 = [provider stringByStrippingHTML];
    [v12 setProvider:stringByStrippingHTML3];

    [v12 setIsExplicit:{objc_msgSend(v314, "isExplicit")}];
    feedDescription = [v314 feedDescription];
    [v12 setItemDescription:feedDescription];

    showType = [v314 showType];
    [v12 setShowTypeInFeed:showType];

    category = [v314 category];
    [v12 setCategory:category];

    webpageURL = [v314 webpageURL];
    [v12 setWebpageURL:webpageURL];

    shareURL = [v314 shareURL];
    [v12 setStoreCleanURL:shareURL];

    artworkPrimaryColor = [v314 artworkPrimaryColor];
    [v12 setArtworkPrimaryColor:artworkPrimaryColor];

    showSpecificUpsellCopy = [v314 showSpecificUpsellCopy];
    [v12 setShowSpecificUpsellCopy:showSpecificUpsellCopy];

    [v12 setOfferTypes:{objc_msgSend(v314, "offerTypesAsFlagBits")}];
    displayType = [v314 displayType];
    if (displayType)
    {
      v49 = displayType;
      displayType2 = [v314 displayType];
      isNotEmpty = [displayType2 isNotEmpty];

      if (isNotEmpty)
      {
        displayType3 = [v314 displayType];
        [v12 setDisplayType:displayType3];
      }
    }

    channelItem = [v314 channelItem];

    if (channelItem)
    {
      channelItem2 = [v314 channelItem];
      v55 = importContext;
      v56 = [MTChannel createOrFindChannelFromFeedChannelItem:channelItem2 personalizedRequest:0 context:importContext];

      [v12 setChannel:v56];
      subscriptionActive = [v56 subscriptionActive];
    }

    else
    {
      subscriptionActive = 0;
      v55 = importContext;
    }

    v57 = kMTEpisodeEntityName;
    v58 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
    uuid = [v12 uuid];
    v60 = [MTEpisode predicateForAllEpisodesIncludingHiddenOnPodcastUuid:uuid];
    [v58 setPredicate:v60];

    _sortDescriptorsForLocalEpisodes = [(MTBaseFeedManager *)selfCopy _sortDescriptorsForLocalEpisodes];
    [v58 setSortDescriptors:_sortDescriptorsForLocalEpisodes];

    [v58 setReturnsObjectsAsFaults:0];
    [v58 setFetchBatchSize:200];
    v346 = 0;
    v304 = v58;
    v62 = [v55 executeFetchRequest:v58 error:&v346];
    v63 = v346;
    if (v63)
    {
      v64 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [v12 uuid];
        title2 = [v12 title];
        *buf = 138543874;
        v352 = uuid2;
        v353 = 2112;
        v354 = title2;
        v355 = 2112;
        v356 = *&v63;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%{public}@ - %@ failed to fetch db episodes - %@", buf, 0x20u);

        v23 = v314;
      }

      v300 = 0;
      v323 = 0;
      v316 = 0;
      v67 = v63;
      v20 = v310;
      v21 = v308;
      v68 = importContext;
LABEL_187:

      objc_autoreleasePoolPop(v305);
      if (v63)
      {
        v22 = 0;
      }

      else
      {
        v337 = +[MTFeedUpdateMetricsDataKey newEpisodeCount];
        v347[0] = v337;
        v284 = [NSNumber numberWithLongLong:v316];
        v348[0] = v284;
        v285 = +[MTFeedUpdateMetricsDataKey deletedEpisodeCount];
        v347[1] = v285;
        v286 = [NSNumber numberWithLongLong:v323];
        v348[1] = v286;
        v287 = +[MTFeedUpdateMetricsDataKey totalEpisodeCount];
        v347[2] = v287;
        v288 = [NSNumber numberWithLongLong:v300];
        v348[2] = v288;
        v289 = +[MTFeedUpdateMetricsDataKey podcastStoreId];
        v347[3] = v289;
        v290 = [NSNumber numberWithLongLong:v301];
        v348[3] = v290;
        v291 = +[MTFeedUpdateMetricsDataKey source];
        v347[4] = v291;
        v292 = [NSNumber numberWithInteger:sourceCopy];
        v348[4] = v292;
        v293 = [NSDictionary dictionaryWithObjects:v348 forKeys:v347 count:5];

        v294 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v294, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v352 = v310;
          v353 = 2112;
          v354 = v293;
          _os_log_impl(&_mh_execute_header, v294, OS_LOG_TYPE_DEFAULT, "%{public}@ - processed feed and found new episodes: %@", buf, 0x16u);
        }

        v295 = +[MTFeedUpdateMetricsAction parser];
        [IMMetrics recordUserAction:v295 dataSource:0 withData:v293];

        v20 = v310;
        v23 = v314;
        v21 = v308;
        v22 = v303;
      }

      goto LABEL_192;
    }

    items = [v314 items];
    v345[0] = _NSConcreteStackBlock;
    v345[1] = 3221225472;
    v345[2] = sub_100106774;
    v345[3] = &unk_1004DC768;
    v345[4] = selfCopy;
    v70 = [items sortedArrayWithOptions:16 usingComparator:v345];

    v300 = [v70 count];
    v343 = 0.0;
    v344 = 0.0;
    [objc_opt_class() standardDeviationForEpisodes:v70 standardDeviation:&v344 average:&v343];
    v71 = _MTLogCategoryFeedUpdate();
    v315 = v70;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [v12 uuid];
      title3 = [v12 title];
      *buf = 138544130;
      v352 = uuid3;
      v353 = 2112;
      v354 = title3;
      v355 = 2048;
      v356 = v344;
      v357 = 2048;
      v358 = v343;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Standard Deviation: %f, average: %f", buf, 0x2Au);
    }

    [v12 setUpdateStdDev:v344];
    [v12 setUpdateAvg:v343];
    v74 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      uuid4 = [v12 uuid];
      title4 = [v12 title];
      v77 = [v70 count];
      *buf = 138543874;
      v352 = uuid4;
      v353 = 2112;
      v354 = title4;
      v355 = 2048;
      v356 = *&v77;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ number of items: %lu", buf, 0x20u);
    }

    v324 = +[NSMutableSet set];
    v325 = +[NSMutableSet set];
    v299 = +[NSMutableSet set];
    v336 = v12;
    v297 = 0;
    v329 = v62;
    v306 = v57;
    if (![v70 count])
    {
      v78 = 0;
      v321 = 0;
      v312 = 0;
      v316 = 0;
      v80 = 0.0;
LABEL_135:
      [importContext saveInCurrentBlock];
      if (v78 < [v62 count])
      {
        do
        {
          v224 = [v62 objectAtIndex:v78];
          uuid5 = [v224 uuid];

          if (uuid5)
          {
            uuid6 = [v224 uuid];
            [v324 addObject:uuid6];

            v227 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v224 storeTrackId]);
            [v325 addObject:v227];
          }

          else
          {
            v227 = _MTLogCategoryFeedUpdate();
            if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
            {
              title5 = [v224 title];
              *buf = 138412290;
              v352 = title5;
              _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_ERROR, "NULL UUID for feedDeletedEpisode removed from the feed, title %@", buf, 0xCu);
            }
          }

          v229 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
          {
            [v12 uuid];
            v231 = v230 = v78;
            title6 = [v12 title];
            uuid7 = [v224 uuid];
            title7 = [v224 title];
            *buf = 138544130;
            v352 = v231;
            v353 = 2112;
            v354 = title6;
            v355 = 2114;
            v356 = *&uuid7;
            v357 = 2112;
            v358 = *&title7;
            _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ marking episode for deletion from tail end %{public}@ - %@", buf, 0x2Au);

            v12 = v336;
            v78 = v230;
          }

          ++v78;
          v62 = v329;
        }

        while (v78 < [v329 count]);
      }

      v235 = [NSFetchRequest fetchRequestWithEntityName:v306];
      v236 = [MTEpisode predicateForEpisodeUuids:v324];
      [v235 setPredicate:v236];

      v237 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:0];
      v350 = v237;
      v238 = [NSArray arrayWithObjects:&v350 count:1];
      [v235 setSortDescriptors:v238];

      [v235 setReturnsObjectsAsFaults:0];
      [v235 setFetchBatchSize:200];
      v342 = 0;
      v320 = v235;
      v239 = [importContext executeFetchRequest:v235 error:&v342];
      v240 = v342;
      v241 = v321;
      if (v240)
      {
        v242 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
        {
          uuid8 = [v12 uuid];
          title8 = [v12 title];
          *buf = 138543874;
          v352 = uuid8;
          v353 = 2112;
          v354 = title8;
          v355 = 2112;
          v356 = *&v240;
          _os_log_impl(&_mh_execute_header, v242, OS_LOG_TYPE_ERROR, "%{public}@ - %@ failed to fetch episodes to delete - %@", buf, 0x20u);
        }
      }

      contexta = v240;
      v323 = [v239 count];
      v338 = 0u;
      v339 = 0u;
      v340 = 0u;
      v341 = 0u;
      obja = v239;
      v322 = [obja countByEnumeratingWithState:&v338 objects:v349 count:16];
      if (v322)
      {
        v245 = 0;
        v246 = *v339;
        v247 = v322;
        do
        {
          v248 = 0;
          v327 = v245;
          v249 = v245 + 1;
          v333 = v247;
          do
          {
            if (*v339 != v246)
            {
              objc_enumerationMutation(obja);
            }

            v250 = *(*(&v338 + 1) + 8 * v248);
            v251 = _MTLogCategoryFeedUpdate();
            if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
            {
              uuid9 = [v336 uuid];
              [v336 title];
              v253 = v246;
              v255 = v254 = v241;
              uuid10 = [v250 uuid];
              title9 = [v250 title];
              *buf = 138544130;
              v352 = uuid9;
              v353 = 2112;
              v354 = v255;
              v355 = 2114;
              v356 = *&uuid10;
              v357 = 2112;
              v358 = *&title9;
              _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ deleting episode removed from feed %{public}@ - %@", buf, 0x2Au);

              v241 = v254;
              v246 = v253;
              v247 = v333;
            }

            [v250 setFeedDeleted:1];
            [v250 setEpisodeLevel:v241];
            if (!(v249 % 0xC8))
            {
              [importContext saveInCurrentBlock];
            }

            ++v248;
            ++v249;
            ++v241;
          }

          while (v247 != v248);
          v245 = &v247[v327];
          v247 = [obja countByEnumeratingWithState:&v338 objects:v349 count:16];
        }

        while (v247);
      }

      [importContext saveInCurrentBlock];
      v12 = v336;
      if (v312 && ![(MTBaseFeedManager *)selfCopy isSubscribingWithFeedUrl:urlCopy])
      {
        v258 = [importContext episodeForUuid:v312];
        [v258 metadataTimestamp];
        if (fabs(v259) <= 2.22044605e-16 && [v336 subscribed])
        {
          [(MTBaseFeedManager *)selfCopy markEpisodeAsFirstSeen:v258];
          [v258 setPlayState:2 manually:0 source:6];
          [v258 setMetadataTimestamp:0.0];
          [v258 setMetadataFirstSyncEligible:1];
        }
      }

      if ([v299 count])
      {
        uuid11 = [v336 uuid];
        managedObjectContext = [v336 managedObjectContext];
        v262 = [MTRecencyUtil upNextForPodcastUuid:uuid11 ctx:managedObjectContext];
        episodeUuid = [v262 episodeUuid];

        v264 = v312;
        if (episodeUuid)
        {
          v264 = episodeUuid;
        }

        v265 = v264;
        if ([v299 containsObject:v265])
        {
          v266 = [importContext episodeForUuid:episodeUuid];
          v267 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
          {
            uuid12 = [v336 uuid];
            title10 = [v336 title];
            uuid13 = [v266 uuid];
            title11 = [v266 title];
            *buf = 138544130;
            v352 = uuid12;
            v353 = 2112;
            v354 = title10;
            v355 = 2114;
            v356 = *&uuid13;
            v357 = 2112;
            v358 = *&title11;
            _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Found new smart play episode from episod entitlement changed %{public}@ - %@", buf, 0x2Au);

            v12 = v336;
          }

          [(MTBaseFeedManager *)selfCopy markEpisodeAsFirstSeen:v266];
          [v266 setSentNotification:0];
        }
      }

      imageURL = [v314 imageURL];
      if ([imageURL length])
      {
        [v314 imageURL];
      }

      else
      {
        [v314 globalImageURL];
      }

      v273 = v62 = v329;

      if ([objc_opt_class() _fetchSmallestPicturePossible])
      {
        v274 = +[MTResizedArtworkURLProvider sharedInstance];
        v275 = [v274 resizedArtworkURLString:v273 withDimension:{objc_msgSend(objc_opt_class(), "_maxArtworkSize")}];

        v273 = v275;
      }

      if (v273)
      {
        imageURL2 = [v12 imageURL];
        v277 = [imageURL2 isEqualToString:v273];

        if ((v277 & 1) == 0)
        {
          v278 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
          {
            uuid14 = [v12 uuid];
            title12 = [v12 title];
            *buf = 138543874;
            v352 = uuid14;
            v353 = 2112;
            v354 = title12;
            v355 = 2112;
            v356 = *&v273;
            _os_log_impl(&_mh_execute_header, v278, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ artwork url did change %@", buf, 0x20u);
          }

          [v12 setNeedsArtworkUpdate:1];
        }
      }

      [v12 setImageURL:v273];
      uberBackgroundImageURL = [v314 uberBackgroundImageURL];
      [v12 setUberBackgroundImageURL:uberBackgroundImageURL];
      uberBackgroundJoeColor = [v314 uberBackgroundJoeColor];
      [v12 setUberBackgroundJoeColor:uberBackgroundJoeColor];

      [v12 feedChangedDate];
      if (v80 > v283)
      {
        [v12 setFeedChangedDate:v80];
      }

      v20 = v310;
      v21 = v308;
      if (v322)
      {
        [v12 markPlaylistsForUpdate];
      }

      [importContext saveInCurrentBlock];

      v68 = importContext;
      v23 = v314;
      v63 = v298;
      v67 = contexta;
      goto LABEL_187;
    }

    v316 = 0;
    v312 = 0;
    v321 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0.0;
    while (1)
    {
      obj = [v70 objectAtIndex:{v79, v297}];
      enclosureURL = [obj enclosureURL];

      if (!enclosureURL)
      {
        v108 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          uuid15 = [v12 uuid];
          title13 = [v12 title];
          title14 = [obj title];
          *buf = 138543874;
          v352 = uuid15;
          v353 = 2112;
          v354 = title13;
          v355 = 2112;
          v356 = *&title14;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "%{public}@ - %@ feed item without an enclosure: %@", buf, 0x20u);

          v70 = v315;
          v62 = v329;
        }

        goto LABEL_129;
      }

      context = objc_autoreleasePoolPush();
      v319 = v79;
      if (v78 >= [v62 count])
      {
        v107 = 0;
        v82 = 0;
      }

      else
      {
        v82 = 0;
        ++v78;
        v83 = AMSUserNotification_ptr;
        while (1)
        {
          v84 = v82;
          v85 = v78 - 1;
          v82 = [v62 objectAtIndex:v78 - 1];

          if ([(MTBaseFeedManager *)selfCopy _localEpisode:v82 isEqualToServerEpisode:obj])
          {
            v107 = 0;
            goto LABEL_63;
          }

          v86 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            uuid16 = [v12 uuid];
            title15 = [v12 title];
            [obj guid];
            v331 = v78;
            v89 = v326 = v78 - 1;
            [v82 guid];
            v90 = v332 = v82;
            resolvedEnclosureUrl = [obj resolvedEnclosureUrl];
            enclosureURL2 = [v332 enclosureURL];
            title16 = [obj title];
            title17 = [v332 title];
            *buf = 138545154;
            v352 = uuid16;
            v353 = 2112;
            v354 = title15;
            v355 = 2112;
            v356 = *&v89;
            v357 = 2112;
            v358 = *&v90;
            v359 = 2112;
            v360 = resolvedEnclosureUrl;
            v361 = 2112;
            v362 = enclosureURL2;
            v363 = 2112;
            v364 = title16;
            v365 = 2112;
            v366 = title17;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%{public}@ - %@ did not find match for episode %@ - %@ | %@ - %@ | %@ - %@", buf, 0x52u);

            v82 = v332;
            v85 = v326;
            v78 = v331;

            v12 = v336;
            v83 = AMSUserNotification_ptr;
          }

          if ([(MTBaseFeedManager *)selfCopy _compareServerEpisode:obj toLocalEpisode:v82]== -1)
          {
            break;
          }

          uuid17 = [v82 uuid];

          if (uuid17)
          {
            uuid18 = [v82 uuid];
            [v324 addObject:uuid18];

            v97 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v82 storeTrackId]);
            [v325 addObject:v97];
          }

          else
          {
            v97 = _MTLogCategoryFeedUpdate();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              title18 = [v82 title];
              *buf = 138412290;
              v352 = title18;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "NULL UUID for localEpisode no longer in server feed, title %@", buf, 0xCu);
            }
          }

          v99 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            uuid19 = [v12 uuid];
            title19 = [v12 title];
            uuid20 = [v82 uuid];
            title20 = [v82 title];
            *buf = 138544130;
            v352 = uuid19;
            v353 = 2112;
            v354 = title19;
            v355 = 2114;
            v356 = *&uuid20;
            v357 = 2112;
            v358 = *&title20;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ marking episode for deletion %{public}@ - %@", buf, 0x2Au);

            v83 = AMSUserNotification_ptr;
          }

          v62 = v329;
          if (200 * (v78 / 0xC8) == v78)
          {
            [importContext saveInCurrentBlock];
          }

          v104 = [v329 count];
          v105 = v78 + 1;
          if (v78++ >= v104)
          {
            v107 = 0;
            v78 = v105 - 1;
            goto LABEL_63;
          }
        }

        v112 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          uuid21 = [v12 uuid];
          title21 = [v12 title];
          episodeStoreId = [obj episodeStoreId];
          title22 = [obj title];
          *buf = 138544130;
          v352 = uuid21;
          v353 = 2112;
          v354 = title21;
          v355 = 2114;
          v356 = *&episodeStoreId;
          v357 = 2112;
          v358 = *&title22;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ should add new episode from server %{public}@ - %@", buf, 0x2Au);

          v12 = v336;
        }

        v107 = 1;
        v78 = v85;
      }

      v83 = AMSUserNotification_ptr;
LABEL_63:
      episodeStoreId2 = [obj episodeStoreId];
      longLongValue2 = [episodeStoreId2 longLongValue];

      v119 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        uuid22 = [v12 uuid];
        title23 = [v12 title];
        v122 = [NSNumber numberWithLongLong:longLongValue2];
        *buf = 138543874;
        v352 = uuid22;
        v353 = 2112;
        v354 = title23;
        v355 = 2112;
        v356 = *&v122;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ serverEpisode %@", buf, 0x20u);

        v83 = AMSUserNotification_ptr;
      }

      if (!v82)
      {
        break;
      }

      if (longLongValue2 > 0)
      {
        v123 = v107;
      }

      else
      {
        v123 = 0;
      }

      if (v123)
      {
        goto LABEL_72;
      }

LABEL_77:
      v127 = v82;
      if ((v107 & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_81:
      v136 = importContext;
      v79 = v319;
LABEL_82:
      v137 = v127;
      v127 = [(MTBaseFeedManager *)selfCopy _insertNewEpisodeForServerEpisode:obj podcast:v12 ctx:v136];

      v138 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        uuid23 = [v12 uuid];
        title24 = [v12 title];
        uuid24 = [v127 uuid];
        title25 = [v127 title];
        *buf = 138544130;
        v352 = uuid23;
        v353 = 2112;
        v354 = title24;
        v355 = 2114;
        v356 = *&uuid24;
        v357 = 2112;
        v358 = *&title25;
        _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ adding new episode %{public}@ - %@", buf, 0x2Au);

        v12 = v336;
      }

      ++v316;
      if (!v127)
      {
        goto LABEL_123;
      }

      v135 = 1;
LABEL_86:
      v143 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        uuid25 = [v12 uuid];
        title26 = [v12 title];
        uuid26 = [v127 uuid];
        title27 = [v127 title];
        *buf = 138544130;
        v352 = uuid25;
        v353 = 2112;
        v354 = title26;
        v355 = 2114;
        v356 = *&uuid26;
        v357 = 2112;
        v358 = *&title27;
        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ updating episode %{public}@ - %@", buf, 0x2Au);

        v12 = v336;
      }

      [v127 setFeedDeleted:0];
      guid = [obj guid];
      [v127 setGuid:guid];

      if ([MTStoreIdentifier isNotEmpty:longLongValue2])
      {
        [v127 setStoreTrackId:longLongValue2];
      }

      title28 = [obj title];
      stringByStrippingHTML4 = [title28 stringByStrippingHTML];

      [v127 setTitle:stringByStrippingHTML4];
      itunesTitle = [obj itunesTitle];
      [v127 setItunesTitle:itunesTitle];

      configuration = [(MTBaseFeedManager *)selfCopy configuration];
      usesCleanEpisodeTitles = [configuration usesCleanEpisodeTitles];

      if (usesCleanEpisodeTitles)
      {
        title29 = [v12 title];
        v155 = [stringByStrippingHTML4 cleanedTitleStringWithPrefix:title29];
        [v127 setCleanedTitle:v155];
      }

      itemDescription = [obj itemDescription];
      [v127 setItemDescription:itemDescription];

      itemSummary = [obj itemSummary];
      [v127 setItunesSubtitle:itemSummary];

      author2 = [obj author];
      [v127 setAuthor:author2];

      [v127 setByteSize:{objc_msgSend(obj, "byteSize")}];
      v159 = [obj uti];
      [v127 setUti:v159];

      pubDate = [obj pubDate];
      if (pubDate)
      {
        v161 = pubDate;
        [v127 pubDate];
        v163 = v162;
        pubDate2 = [obj pubDate];
        [pubDate2 timeIntervalSinceReferenceDate];
        v166 = v165;

        if (v163 != v166)
        {
          pubDate3 = [obj pubDate];
          [pubDate3 timeIntervalSinceReferenceDate];
          [v127 setPubDate:?];
        }
      }

      firstTimeAvailableAsFree = [obj firstTimeAvailableAsFree];
      if (firstTimeAvailableAsFree)
      {
        v169 = firstTimeAvailableAsFree;
        [v127 firstTimeAvailableAsFree];
        v171 = v170;
        firstTimeAvailableAsFree2 = [obj firstTimeAvailableAsFree];
        [firstTimeAvailableAsFree2 timeIntervalSinceReferenceDate];
        v174 = v173;

        if (v171 != v174)
        {
          firstTimeAvailableAsFree3 = [obj firstTimeAvailableAsFree];
          [firstTimeAvailableAsFree3 timeIntervalSinceReferenceDate];
          [v127 setFirstTimeAvailableAsFree:?];
        }
      }

      firstTimeAvailableAsPaid = [obj firstTimeAvailableAsPaid];
      if (firstTimeAvailableAsPaid)
      {
        v177 = firstTimeAvailableAsPaid;
        [v127 firstTimeAvailableAsPaid];
        v179 = v178;
        firstTimeAvailableAsPaid2 = [obj firstTimeAvailableAsPaid];
        [firstTimeAvailableAsPaid2 timeIntervalSinceReferenceDate];
        v182 = v181;

        if (v179 != v182)
        {
          firstTimeAvailableAsPaid3 = [obj firstTimeAvailableAsPaid];
          [firstTimeAvailableAsPaid3 timeIntervalSinceReferenceDate];
          [v127 setFirstTimeAvailableAsPaid:?];
        }
      }

      if ([obj trackNum])
      {
        [v127 setTrackNum:{objc_msgSend(obj, "trackNum")}];
      }

      [v127 setExplicit:{objc_msgSend(obj, "isExplicit")}];
      [v127 setEpisodeLevel:v321];
      episodeType = [obj episodeType];
      [v127 setEpisodeType:episodeType];

      episodeNumber = [v127 episodeNumber];
      if (episodeNumber != [obj episodeNumber])
      {
        [v127 setEpisodeNumber:{objc_msgSend(obj, "episodeNumber")}];
      }

      seasonNumber = [v127 seasonNumber];
      if (seasonNumber != [obj seasonNumber])
      {
        [v127 setSeasonNumber:{objc_msgSend(obj, "seasonNumber")}];
      }

      webpageURL2 = [obj webpageURL];
      [v127 setWebpageURL:webpageURL2];

      [v127 setIsHidden:0];
      [obj entitledDuration];
      if (v188 > 0.0)
      {
        [obj entitledDuration];
        [v127 setEntitledDuration:?];
      }

      [obj duration];
      if (v189 > 0.0)
      {
        [obj duration];
        [v127 setFreeDuration:?];
      }

      entitledEnclosureURL = [obj entitledEnclosureURL];
      [v127 setEntitledEnclosureURL:entitledEnclosureURL];

      resolvedEnclosureUrl2 = [obj resolvedEnclosureUrl];
      [v127 setFreeEnclosureURL:resolvedEnclosureUrl2];

      priceType = [obj priceType];
      [v127 setFreePriceType:priceType];

      entitledPriceType = [obj entitledPriceType];
      [v127 setEntitledPriceType:entitledPriceType];

      entitledTranscriptIdentifier = [obj entitledTranscriptIdentifier];
      [v127 setEntitledTranscriptIdentifier:entitledTranscriptIdentifier];

      freeTranscriptIdentifier = [obj freeTranscriptIdentifier];
      [v127 setFreeTranscriptIdentifier:freeTranscriptIdentifier];

      transcriptIdentifier = [v127 transcriptIdentifier];
      entitledTranscriptSnippet = [obj entitledTranscriptSnippet];
      [v127 setEntitledTranscriptSnippet:entitledTranscriptSnippet];

      freeTranscriptSnippet = [obj freeTranscriptSnippet];
      [v127 setFreeTranscriptSnippet:freeTranscriptSnippet];

      entitledTranscriptProvider = [obj entitledTranscriptProvider];
      [v127 setEntitledTranscriptProvider:entitledTranscriptProvider];

      freeTranscriptProvider = [obj freeTranscriptProvider];
      [v127 setFreeTranscriptProvider:freeTranscriptProvider];

      if (subscriptionActive)
      {
        [obj entitledDuration];
        if (v201 > 0.0)
        {
          [obj entitledDuration];
          [v127 setDuration:?];
        }

        entitledEnclosureURL2 = [obj entitledEnclosureURL];

        if (entitledEnclosureURL2)
        {
          entitledEnclosureURL3 = [obj entitledEnclosureURL];
          [v127 setEnclosureURL:entitledEnclosureURL3];
        }

        entitledPriceType2 = [obj entitledPriceType];
        [v127 setPriceType:entitledPriceType2];

        entitledTranscriptIdentifier2 = [obj entitledTranscriptIdentifier];
      }

      else
      {
        [v127 freeDuration];
        [v127 setDuration:?];
        freeEnclosureURL = [v127 freeEnclosureURL];
        [v127 setEnclosureURL:freeEnclosureURL];

        freePriceType = [v127 freePriceType];
        [v127 setPriceType:freePriceType];

        entitledTranscriptIdentifier2 = [v127 freeTranscriptIdentifier];
      }

      v208 = entitledTranscriptIdentifier2;
      [v127 setTranscriptIdentifier:entitledTranscriptIdentifier2];

      v209 = +[PFTranscriptProviderBridge shared];
      transcriptIdentifier2 = [v127 transcriptIdentifier];
      assetURL = [v127 assetURL];
      [v209 updateTTMLIDFrom:transcriptIdentifier toNewID:transcriptIdentifier2 hasDownloadedContent:assetURL != 0 forEpisodeAdamID:{objc_msgSend(v127, "storeTrackId")}];

      v12 = v336;
      if (v135)
      {
        [v127 updateEntitlementState];
        v212 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
        {
          uuid27 = [v127 uuid];
          title30 = [v127 title];
          entitlementState = [v127 entitlementState];
          *buf = 138543874;
          v352 = uuid27;
          v353 = 2112;
          v354 = title30;
          v355 = 2048;
          v356 = *&entitlementState;
          _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ set entitlement state for inserted episode to %lld from updatePodcastWithUuid", buf, 0x20u);
        }
      }

      ++v321;

LABEL_123:
      v70 = v315;
      [v127 resolveAvailabilityDate];
      [v127 firstTimeAvailable];
      v62 = v329;
      if (v216 > v80 && [v127 isMedia])
      {
        [v127 firstTimeAvailable];
        v80 = v217;
        uuid28 = [v127 uuid];

        v312 = uuid28;
        v70 = v315;
      }

      if (__ROR8__(0x8F5C28F5C28F5C29 * v78, 3) <= 0x147AE147AE147AEuLL)
      {
        [importContext saveInCurrentBlock];
      }

      objc_autoreleasePoolPop(context);
LABEL_129:
      ++v79;

      if (v79 >= [v70 count])
      {
        goto LABEL_135;
      }
    }

    if (longLongValue2 < 1)
    {
      v127 = 0;
      goto LABEL_81;
    }

LABEL_72:
    v124 = [NSNumber numberWithLongLong:longLongValue2];
    v125 = [v325 containsObject:v124];

    if (v125)
    {
      v126 = [v83[282] predicateForEpisodeStoreTrackId:longLongValue2];
      v127 = [importContext objectInEntity:v306 predicate:v126];

      if (!v127)
      {
        v219 = _MTLogCategoryFeedUpdate();
        v79 = v319;
        if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
        {
          uuid29 = [v12 uuid];
          title31 = [v12 title];
          uuid30 = [0 uuid];
          title32 = [0 title];
          *buf = 138544130;
          v352 = uuid29;
          v353 = 2112;
          v354 = title31;
          v355 = 2114;
          v356 = *&uuid30;
          v357 = 2112;
          v358 = *&title32;
          _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_ERROR, "%{public}@ - %@ failed to update feed-deleted episode %{public}@ - %@", buf, 0x2Au);
        }

        v127 = 0;
        v136 = importContext;
        goto LABEL_82;
      }

      uuid31 = [v127 uuid];
      [v324 removeObject:uuid31];

      v129 = [NSNumber numberWithLongLong:longLongValue2];
      [v325 removeObject:v129];

      v130 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        uuid32 = [v12 uuid];
        title33 = [v12 title];
        uuid33 = [v127 uuid];
        title34 = [v127 title];
        *buf = 138544130;
        v352 = uuid32;
        v353 = 2112;
        v354 = title33;
        v355 = 2114;
        v356 = *&uuid33;
        v357 = 2112;
        v358 = *&title34;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ updating feed-deleted episode %{public}@ - %@", buf, 0x2Au);

        v12 = v336;
      }

      ++v316;

LABEL_78:
      if (v127)
      {
        v135 = 0;
        v79 = v319;
        goto LABEL_86;
      }

      goto LABEL_81;
    }

    goto LABEL_77;
  }

  v20 = uuidCopy;
  v21 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v352 = uuidCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@ failed to update because feed was nil", buf, 0xCu);
  }

  v22 = 0;
  v23 = 0;
LABEL_192:

  return v22;
}

- (void)markEpisodeAsFirstSeen:(id)seen
{
  seenCopy = seen;
  [seenCopy unsuppressAutomaticDownloadsIfNeeded];
  [seenCopy setIsNew:1];
}

- (id)_insertNewEpisodeForServerEpisode:(id)episode podcast:(id)podcast ctx:(id)ctx
{
  episodeCopy = episode;
  podcastCopy = podcast;
  ctxCopy = ctx;
  if (podcastCopy && ([podcastCopy isDeleted] & 1) == 0)
  {
    v11 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
    [v11 setUppSyncDirtyFlag:1];

    v10 = +[MTEpisode insertNewEpisodeInManagedObjectContext:canSendNotifications:](MTEpisode, "insertNewEpisodeInManagedObjectContext:canSendNotifications:", ctxCopy, +[PFNotificationSettings canSendNotification]);
    [v10 setPodcast:podcastCopy];
    guid = [episodeCopy guid];
    [v10 setGuid:guid];

    [v10 setImportSource:2];
    pubDate = [episodeCopy pubDate];
    [pubDate timeIntervalSinceReferenceDate];
    v15 = v14;
    [podcastCopy addedDate];
    v17 = v16;

    importing = [podcastCopy importing];
    if (v15 < v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = importing;
    }

    if (v19 & 1) == 0 && ([podcastCopy subscribed])
    {
      goto LABEL_26;
    }

    [v10 metadataTimestamp];
    if (v20 == 0.0)
    {
      [v10 setPlayState:0 manually:1 source:6];
      [v10 setBackCatalog:1];
      [v10 setMetadataTimestamp:0.0];
      [v10 setMetadataFirstSyncEligible:0];
    }

    else
    {
      [v10 setIsNew:0];
    }

    [v10 suppressAutomaticDownloadsIfNeeded];
    if ((v19 & 1) == 0)
    {
LABEL_26:
      isDark = [podcastCopy isDark];
      darkCount = [podcastCopy darkCount];
      [podcastCopy setDarkCount:darkCount + 1];
      [podcastCopy setDarkCountLocal:darkCount + 1];
      [podcastCopy markPlaylistsForUpdate];
      if (isDark != [podcastCopy isDark])
      {
        isDark2 = [podcastCopy isDark];
        latestExitFromDarkDownloads = [podcastCopy latestExitFromDarkDownloads];
        if (latestExitFromDarkDownloads)
        {
          v25 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:isDark isDark:isDark2 reason:2 previousExit:latestExitFromDarkDownloads];
        }

        else
        {
          v26 = +[NSDate now];
          v25 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:isDark isDark:isDark2 reason:2 previousExit:v26];
        }

        v27 = objc_opt_new();
        [v27 sendEvent:v25];
      }
    }

    v28 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [podcastCopy uuid];
      title = [podcastCopy title];
      uuid2 = [v10 uuid];
      title2 = [v10 title];
      v34 = 138544130;
      v35 = uuid;
      v36 = 2112;
      v37 = title;
      v38 = 2114;
      v39 = uuid2;
      v40 = 2112;
      v41 = title2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ new episode %{public}@ - %@", &v34, 0x2Au);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_localEpisode:(id)episode isEqualToServerEpisode:(id)serverEpisode
{
  episodeCopy = episode;
  serverEpisodeCopy = serverEpisode;
  guid = [serverEpisodeCopy guid];
  if (guid)
  {
    v8 = guid;
    guid2 = [episodeCopy guid];
    if (guid2)
    {
      v10 = guid2;
      guid3 = [serverEpisodeCopy guid];
      guid4 = [episodeCopy guid];
      v13 = [guid3 isEqualToString:guid4];

      if (v13)
      {
        v14 = 1;
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  resolvedEnclosureUrl = [serverEpisodeCopy resolvedEnclosureUrl];
  if (resolvedEnclosureUrl && ([episodeCopy enclosureURL], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(episodeCopy, "enclosureURL"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(resolvedEnclosureUrl, "isEqualToString:", v18), v18, v17, (v19 & 1) != 0))
  {
    v14 = 1;
  }

  else
  {
    title = [serverEpisodeCopy title];
    stringByStrippingHTML = [title stringByStrippingHTML];

    if (stringByStrippingHTML)
    {
      title2 = [episodeCopy title];
      if (title2)
      {
        title3 = [episodeCopy title];
        if ([stringByStrippingHTML isEqualToString:title3])
        {
          pubDate = [serverEpisodeCopy pubDate];
          [episodeCopy pubDate];
          v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          v14 = [pubDate isEqualToDate:v25];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_21:
  return v14;
}

- (int64_t)_compareServerEpisode:(id)episode toServerEpisode:(id)serverEpisode
{
  episodeCopy = episode;
  serverEpisodeCopy = serverEpisode;
  pubDate = [episodeCopy pubDate];
  pubDate2 = [serverEpisodeCopy pubDate];
  v9 = pubDate2;
  if (pubDate && pubDate2)
  {
    v10 = [pubDate2 compare:pubDate];
  }

  else
  {
    guid = [episodeCopy guid];
    guid2 = [serverEpisodeCopy guid];
    v13 = guid2;
    if (guid | guid2)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    if (guid2)
    {
      v10 = 1;
    }

    else
    {
      v10 = v14;
    }

    if (guid && guid2)
    {
      v10 = [guid2 compare:guid];
    }
  }

  return v10;
}

- (id)_sortDescriptorsForLocalEpisodes
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:0];
  v6[0] = v2;
  v3 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeGuid ascending:0];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (int64_t)_compareServerEpisode:(id)episode toLocalEpisode:(id)localEpisode
{
  episodeCopy = episode;
  localEpisodeCopy = localEpisode;
  pubDate = [episodeCopy pubDate];
  [localEpisodeCopy pubDate];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v9 = v8;
  if (pubDate && v8)
  {
    v10 = [v8 compare:pubDate];
  }

  else
  {
    guid = [episodeCopy guid];
    guid2 = [localEpisodeCopy guid];
    v13 = guid2;
    if (guid | guid2)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    if (guid2)
    {
      v10 = 1;
    }

    else
    {
      v10 = v14;
    }

    if (guid && guid2)
    {
      v10 = [guid2 compare:guid];
    }
  }

  return v10;
}

+ (BOOL)isUpdatingPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  if ([uuidCopy length])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v5 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v5 mainOrPrivateContext];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100107164;
    v10[3] = &unk_1004DC790;
    v7 = mainOrPrivateContext;
    v11 = v7;
    v12 = uuidCopy;
    v13 = &v15;
    selfCopy = self;
    [v7 performBlockAndWait:v10];
    v8 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

+ (BOOL)isUpdatingFeedUrl:(id)url
{
  urlCopy = url;
  if ([urlCopy length])
  {
    v4 = qword_100583CD0;
    objc_sync_enter(v4);
    v5 = [qword_100583CD0 containsObject:urlCopy];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)updatingCount
{
  v2 = qword_100583CD0;
  objc_sync_enter(v2);
  v3 = [qword_100583CD0 count];
  objc_sync_exit(v2);

  return v3;
}

- (void)preprocessFeedWithDataHashingBlock:(id)block feedCreationBlock:(id)creationBlock url:(id)url useBackgroundFetch:(BOOL)fetch source:(int64_t)source
{
  blockCopy = block;
  creationBlockCopy = creationBlock;
  urlCopy = url;
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001074C8;
  v19[3] = &unk_1004DC7B8;
  objc_copyWeak(v23, &location);
  v15 = blockCopy;
  v21 = v15;
  v16 = urlCopy;
  v20 = v16;
  v17 = creationBlockCopy;
  fetchCopy = fetch;
  v22 = v17;
  v23[1] = source;
  v18 = objc_retainBlock(v19);
  [(MTBaseFeedManager *)self _addPendingFeedProcessingBlock:v18];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)didDownloadFeedWithError:(id)error data:(id)data task:(id)task requestedUrl:(id)url useBackgroundFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  errorCopy = error;
  dataCopy = data;
  taskCopy = task;
  if (errorCopy)
  {
    urlCopy = url;
    v16 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [errorCopy localizedDescription];
      userInfo = [errorCopy userInfo];
      v19 = [userInfo objectForKey:NSUnderlyingErrorKey];
      *buf = 138412546;
      v27 = localizedDescription;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: Underlying error %@", buf, 0x16u);
    }

    [(MTBaseFeedManager *)self feedDownloadedWithError:errorCopy task:taskCopy requestedUrl:urlCopy];
    absoluteString = [urlCopy absoluteString];

    [(MTBaseFeedManager *)self _didFinishUpdatingFeedUrl:absoluteString withError:errorCopy];
  }

  else
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100107C70;
    v24[3] = &unk_1004DC7E0;
    v25 = dataCopy;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100107C78;
    v22[3] = &unk_1004DC808;
    v23 = v25;
    urlCopy2 = url;
    [(MTBaseFeedManager *)self preprocessFeedWithDataHashingBlock:v24 feedCreationBlock:v22 url:urlCopy2 useBackgroundFetch:fetchCopy source:17];

    absoluteString = v25;
  }
}

- (void)didRestoreFeedUrlTask:(id)task
{
  taskCopy = task;
  v3 = qword_100583CD0;
  objc_sync_enter(v3);
  absoluteString = [taskCopy absoluteString];
  v5 = [absoluteString length];

  if (v5)
  {
    v6 = qword_100583CD0;
    absoluteString2 = [taskCopy absoluteString];
    [v6 addObject:absoluteString2];
  }

  objc_sync_exit(v3);
}

- (BOOL)abortUpdatesIfNetworkUnreachable:(BOOL)unreachable
{
  unreachableCopy = unreachable;
  v4 = +[MTReachability sharedInstance];
  isReachable = [v4 isReachable];

  if ((isReachable & 1) == 0)
  {
    if (unreachableCopy)
    {
      dispatch_async(&_dispatch_main_q, &stru_1004DC828);
    }

    [objc_opt_class() didFinishUpdatingAllFeeds:0];
  }

  return isReachable ^ 1;
}

- (void)_startDownloadForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated useBackgroundFetch:(BOOL)fetch source:(int64_t)source
{
  fetchCopy = fetch;
  initiatedCopy = initiated;
  urlCopy = url;
  byCopy = by;
  v16 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v24 = 138412290;
    idCopy = urlCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Running on downloads queue %@", &v24, 0xCu);
  }

  configuration = [(MTBaseFeedManager *)self configuration];
  v18 = ([configuration useBackgroundFetchForFeedDownloads] | fetchCopy);

  v19 = [(MTBaseFeedManager *)self _shouldDownloadPodcastWithIdentifierFromStore:id];
  v20 = _MTLogCategoryFeedUpdate();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v24 = 134218498;
      idCopy = id;
      v26 = 2112;
      v27 = urlCopy;
      v28 = 2048;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Downloading from Media API with storeID %lld for feedURL %@ localBackgroundFetch %ld", &v24, 0x20u);
    }

    [(MTBaseFeedManager *)self startDownloadForPodcastStoreId:id triggerBy:byCopy feedUrl:urlCopy useBackgroundFetch:v18 source:source];
  }

  else
  {
    if (v21)
    {
      v24 = 138412546;
      idCopy = urlCopy;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Downloading directly from feedURL %@ localBackgroundFetch %ld", &v24, 0x16u);
    }

    v22 = [[_TtC18PodcastsFoundation22DownloadableURLOptions alloc] initWithUrl:urlCopy nonAppInitiated:1];
    externalFeedDownloader = [(MTBaseFeedManager *)self externalFeedDownloader];
    [externalFeedDownloader startDownloadTaskForFeedURL:v22 userInitiated:initiatedCopy useBackgroundFetch:v18];
  }
}

- (void)startDownloadForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated useBackgroundFetch:(BOOL)fetch source:(int64_t)source
{
  urlCopy = url;
  feedUrlCopy = feedUrl;
  byCopy = by;
  if (urlCopy)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100108350;
    v22[3] = &unk_1004DC850;
    v22[4] = self;
    v23 = urlCopy;
    idCopy = id;
    v24 = feedUrlCopy;
    initiatedCopy = initiated;
    fetchCopy = fetch;
    v25 = byCopy;
    sourceCopy = source;
    v18 = objc_retainBlock(v22);
    configuration = [(MTBaseFeedManager *)self configuration];
    if ([configuration useBackgroundFetchForFeedDownloads])
    {
      v20 = [(MTBaseFeedManager *)self _shouldDownloadPodcastWithIdentifierFromStore:id];

      if ((v20 & 1) == 0)
      {
        externalFeedDownloader = [(MTBaseFeedManager *)self externalFeedDownloader];
        [externalFeedDownloader restoreBackgroundDownloadTasksWithCompletion:v18];

LABEL_7:
        goto LABEL_8;
      }
    }

    else
    {
    }

    (v18[2])(v18);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)startDownloadForPodcastStoreId:(int64_t)id triggerBy:(id)by feedUrl:(id)url useBackgroundFetch:(BOOL)fetch source:(int64_t)source
{
  fetchCopy = fetch;
  urlCopy = url;
  byCopy = by;
  storePodcastDownloader = [(MTBaseFeedManager *)self storePodcastDownloader];
  v15 = [NSNumber numberWithLongLong:id];
  absoluteString = [urlCopy absoluteString];
  v17 = [(MTBaseFeedManager *)self allowEpisodesRequestTo404AndDeleteEpisodesWithFeedUrl:absoluteString];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100108774;
  v19[3] = &unk_1004DC878;
  v19[4] = self;
  v20 = urlCopy;
  v22 = fetchCopy;
  sourceCopy = source;
  v18 = urlCopy;
  [storePodcastDownloader downloadPodcast:v15 triggerBy:byCopy allowEpisodesTo404:v17 isImplicitActionRequest:fetchCopy completion:v19];
}

+ (void)purgeSubscriptionMetadata
{
  v3 = qword_100583CD8;
  objc_sync_enter(v3);
  v4 = qword_100583CD8;
  qword_100583CD8 = 0;

  objc_sync_exit(v3);

  [self saveSubscriptionMetadata];
}

+ (void)removeMetadataForPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  if (uuidCopy)
  {
    v5 = uuidCopy;
    v4 = qword_100583CD8;
    objc_sync_enter(v4);
    [qword_100583CD8 removeObjectForKey:v5];
    objc_sync_exit(v4);

    uuidCopy = v5;
  }
}

+ (void)saveSubscriptionMetadata
{
  v3 = qword_100583CD8;
  objc_sync_enter(v3);
  v4 = qword_100583CD8;
  _metadataUrl = [self _metadataUrl];
  v8 = 0;
  [v4 writeToURL:_metadataUrl error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ failed to save hash cache due to %@", buf, 0x16u);
    }
  }

  objc_sync_exit(v3);
}

- (void)_addPendingFeedProcessingBlock:(id)block
{
  blockCopy = block;
  feedProcessingQueue = [(MTBaseFeedManager *)self feedProcessingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100108C98;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(feedProcessingQueue, v7);
}

- (void)_processNextPendingFeedIfPossible
{
  feedProcessingQueue = [(MTBaseFeedManager *)self feedProcessingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100108D84;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(feedProcessingQueue, block);
}

- (void)_queue_processNextPendingFeedIfPossible
{
  feedProcessingQueue = [(MTBaseFeedManager *)self feedProcessingQueue];
  dispatch_assert_queue_V2(feedProcessingQueue);

  externalFeedDownloader = [(MTBaseFeedManager *)self externalFeedDownloader];
  sessionCompletionHandler = [externalFeedDownloader sessionCompletionHandler];

  if (sessionCompletionHandler)
  {
    firstObject = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v7 = "Postponing feed update because we're waiting to call the session completion handler";
LABEL_4:
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_DEFAULT, v7, &v14, 2u);
    }
  }

  else
  {
    pendingFeedProcessingBlocks = [(MTBaseFeedManager *)self pendingFeedProcessingBlocks];
    v9 = [pendingFeedProcessingBlocks count];

    if (!v9)
    {
      firstObject = _MTLogCategoryFeedUpdate();
      if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      LOWORD(v14) = 0;
      v7 = "There are no pending feed updates. Doing nothing.";
      goto LABEL_4;
    }

    pendingFeedProcessingBlocks2 = [(MTBaseFeedManager *)self pendingFeedProcessingBlocks];
    firstObject = [pendingFeedProcessingBlocks2 firstObject];

    pendingFeedProcessingBlocks3 = [(MTBaseFeedManager *)self pendingFeedProcessingBlocks];
    [pendingFeedProcessingBlocks3 removeObjectAtIndex:0];

    (*(firstObject + 16))(firstObject);
    v12 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      pendingFeedProcessingBlocks4 = [(MTBaseFeedManager *)self pendingFeedProcessingBlocks];
      v14 = 134217984;
      v15 = [pendingFeedProcessingBlocks4 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Done processing feed. %lu remaining.", &v14, 0xCu);
    }

    [(MTBaseFeedManager *)self _queue_processNextPendingFeedIfPossible];
  }

LABEL_11:
}

+ (void)didStartUpdatingFeedUrl:(id)url cloudSyncUrl:(id)syncUrl
{
  urlCopy = url;
  syncUrlCopy = syncUrl;
  v8 = qword_100583CD0;
  objc_sync_enter(v8);
  [qword_100583CD0 addObject:urlCopy];
  objc_sync_exit(v8);

  v13 = @"MTBaseFeedManagerFeedUrlKey";
  v14 = urlCopy;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [self postNotificationName:@"MTBaseFeedManagerDidStartUpdatingFeed" userInfo:v9];

  v10 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = urlCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didStartUpdatingFeedUrl: %@", &v11, 0xCu);
  }
}

- (void)_didFinishUpdatingFeedUrl:(id)url withError:(id)error
{
  errorCopy = error;
  urlCopy = url;
  [objc_opt_class() didFinishUpdatingFeedUrl:urlCopy withError:errorCopy];
}

+ (void)didFinishUpdatingFeedUrl:(id)url withError:(id)error
{
  urlCopy = url;
  errorCopy = error;
  v8 = qword_100583CD0;
  objc_sync_enter(v8);
  if (urlCopy)
  {
    if ([qword_100583CD0 containsObject:urlCopy])
    {
      [qword_100583CD0 removeObject:urlCopy];
      v9 = [qword_100583CD0 count] == 0;
      if (!errorCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = +[IMLogger sharedLogger];
    [v11 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Feed/MTBaseFeedManager.m" lineNumber:1368 format:{@"Feed update finished without a feedURL, likely failed."}];

    v12 = +[MTFeedUpdateMetricsAction finishedWithoutURL];
    [IMMetrics recordUserAction:v12];
  }

  v9 = 0;
  if (!errorCopy)
  {
LABEL_4:
    v10 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = urlCopy;
      v20 = 1024;
      LODWORD(v21) = [qword_100583CD0 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didFinishUpdatingFeedUrl: %@, remaining count = %d", buf, 0x12u);
    }

    goto LABEL_10;
  }

LABEL_8:
  v10 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    localizedDescription = [errorCopy localizedDescription];
    *buf = 138412802;
    v19 = urlCopy;
    v20 = 2112;
    v21 = localizedDescription;
    v22 = 1024;
    v23 = [qword_100583CD0 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "didFinishUpdatingFeedUrl: %@, with error: %@, remaining count = %d", buf, 0x1Cu);
  }

LABEL_10:

  objc_sync_exit(v8);
  if (urlCopy)
  {
    v14 = urlCopy;
  }

  else
  {
    v14 = &stru_1004F3018;
  }

  v16 = @"MTBaseFeedManagerFeedUrlKey";
  v17 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [self postNotificationName:@"MTBaseFeedManagerDidEndUpdatingFeed" userInfo:v15];

  if (v9)
  {
    [self didFinishUpdatingAllFeeds:1];
  }
}

+ (void)didFinishUpdatingAllFeeds:(BOOL)feeds
{
  feedsCopy = feeds;
  if (![self updatingCount])
  {
    [self postNotificationName:@"MTBaseFeedManagerDidEndUpdatingAllFeeds" userInfo:0];
    if (feedsCopy)
    {
      v5 = +[MTNotificationManager sharedInstance];
      [v5 processNotificationsWithReason:@"Feed Update"];
    }

    v6 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "didFinishUpdatingAllFeeds", v7, 2u);
    }
  }
}

+ (void)postNotificationName:(id)name userInfo:(id)info
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100109580;
  v7[3] = &unk_1004D8798;
  nameCopy = name;
  infoCopy = info;
  v5 = infoCopy;
  v6 = nameCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)standardDeviationForEpisodes:(id)episodes standardDeviation:(double *)deviation average:(double *)average
{
  episodesCopy = episodes;
  *deviation = 0.0;
  *average = 0.0;
  v7 = objc_opt_new();
  v8 = [episodesCopy count];
  if (v8 - 1 >= 1)
  {
    v9 = v8;
    v10 = 1;
    do
    {
      v11 = [episodesCopy objectAtIndex:v10 - 1];
      pubDate = [v11 pubDate];
      [pubDate timeIntervalSinceReferenceDate];
      v14 = v13;

      v15 = [episodesCopy objectAtIndex:v10];
      pubDate2 = [v15 pubDate];
      [pubDate2 timeIntervalSinceReferenceDate];
      v18 = v17;

      v19 = [NSNumber numberWithDouble:vabdd_f64(v14, v18)];
      [v7 addObject:v19];

      ++v10;
    }

    while (v9 != v10);
    v20 = [v7 count];
    v21 = v20;
    if (v20 < 1)
    {
      if (v20)
      {
        *average = 0.0 / v20;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0.0;
      do
      {
        v24 = [v7 objectAtIndex:v22];
        [v24 doubleValue];
        v23 = v23 + v25;

        ++v22;
      }

      while (v21 != v22);
      *average = v23 / v21;
      if (v21 >= 1)
      {
        v26 = 0;
        v27 = 0.0;
        do
        {
          v28 = [v7 objectAtIndex:v26];
          [v28 doubleValue];
          v30 = v29 - *average;
          v31 = [v7 objectAtIndex:v26];
          [v31 doubleValue];
          v27 = v27 + v30 * (v32 - *average);

          ++v26;
        }

        while (v21 != v26);
        if (v21 != 1)
        {
          *deviation = sqrt(v27 / (v21 - 1));
        }
      }
    }
  }
}

@end