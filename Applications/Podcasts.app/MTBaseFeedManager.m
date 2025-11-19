@interface MTBaseFeedManager
+ (BOOL)isUpdatingFeedUrl:(id)a3;
+ (BOOL)isUpdatingPodcastUuid:(id)a3;
+ (id)_metadataUrl;
+ (unint64_t)updatingCount;
+ (void)didFinishUpdatingAllFeeds:(BOOL)a3;
+ (void)didFinishUpdatingFeedUrl:(id)a3 withError:(id)a4;
+ (void)didStartUpdatingFeedUrl:(id)a3 cloudSyncUrl:(id)a4;
+ (void)initialize;
+ (void)postNotificationName:(id)a3 userInfo:(id)a4;
+ (void)purgeSubscriptionMetadata;
+ (void)removeMetadataForPodcastUuid:(id)a3;
+ (void)saveSubscriptionMetadata;
+ (void)standardDeviationForEpisodes:(id)a3 standardDeviation:(double *)a4 average:(double *)a5;
- (BOOL)_localEpisode:(id)a3 isEqualToServerEpisode:(id)a4;
- (BOOL)abortUpdatesIfNetworkUnreachable:(BOOL)a3;
- (BOOL)processFeed:(id)a3 podcastUUID:(id)a4 requestUrl:(id)a5 useBackgroundFetch:(BOOL)a6 needsUpdate:(BOOL)a7 source:(int64_t)a8;
- (BOOL)updatePodcastWithUuid:(id)a3 withFeed:(id)a4 originalFeedUrl:(id)a5 source:(int64_t)a6;
- (MTBaseFeedManager)init;
- (id)_insertNewEpisodeForServerEpisode:(id)a3 podcast:(id)a4 ctx:(id)a5;
- (id)_sortDescriptorsForLocalEpisodes;
- (id)importContext;
- (id)preProcessFeedHook:(id)a3 requestUrl:(id)a4 needsUpdate:(BOOL)a5;
- (id)sessionCompletionHandler;
- (int64_t)_compareServerEpisode:(id)a3 toLocalEpisode:(id)a4;
- (int64_t)_compareServerEpisode:(id)a3 toServerEpisode:(id)a4;
- (void)_addPendingFeedProcessingBlock:(id)a3;
- (void)_didFinishUpdatingFeedUrl:(id)a3 withError:(id)a4;
- (void)_processNextPendingFeedIfPossible;
- (void)_queue_processNextPendingFeedIfPossible;
- (void)_startDownloadForFeedUrl:(id)a3 cloudSyncFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 triggerBy:(id)a6 userInitiated:(BOOL)a7 useBackgroundFetch:(BOOL)a8 source:(int64_t)a9;
- (void)didDownloadFeedWithError:(id)a3 data:(id)a4 task:(id)a5 requestedUrl:(id)a6 useBackgroundFetch:(BOOL)a7;
- (void)didRestoreFeedUrlTask:(id)a3;
- (void)markEpisodeAsFirstSeen:(id)a3;
- (void)preprocessFeedWithDataHashingBlock:(id)a3 feedCreationBlock:(id)a4 url:(id)a5 useBackgroundFetch:(BOOL)a6 source:(int64_t)a7;
- (void)setSessionCompletionHandler:(id)a3;
- (void)startDownloadForFeedUrl:(id)a3 cloudSyncFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 triggerBy:(id)a6 userInitiated:(BOOL)a7 useBackgroundFetch:(BOOL)a8 source:(int64_t)a9;
- (void)startDownloadForPodcastStoreId:(int64_t)a3 triggerBy:(id)a4 feedUrl:(id)a5 useBackgroundFetch:(BOOL)a6 source:(int64_t)a7;
@end

@implementation MTBaseFeedManager

+ (void)initialize
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTBaseFeedManager;
  objc_msgSendSuper2(&v5, "initialize");
  if (qword_100583CC8 != -1)
  {
    sub_10001468C();
  }

  v3 = [a1 _metadataUrl];
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3];

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

    v10 = [(MTBaseFeedManager *)v2 configuration];
    v11 = [v10 workQueueConcurrent];
    v12 = &_dispatch_queue_attr_concurrent;
    if (!v11)
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
  v2 = [(MTBaseFeedManager *)self externalFeedDownloader];
  v3 = [v2 sessionCompletionHandler];

  return v3;
}

- (void)setSessionCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(MTBaseFeedManager *)self externalFeedDownloader];
  [v5 setSessionCompletionHandler:v4];

  [(MTBaseFeedManager *)self _processNextPendingFeedIfPossible];
}

- (id)importContext
{
  v2 = [(MTBaseFeedManager *)self configuration];
  v3 = [v2 supportsBatchInsertion];

  v4 = +[MTDB sharedInstance];
  v5 = v4;
  if (v3)
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

- (id)preProcessFeedHook:(id)a3 requestUrl:(id)a4 needsUpdate:(BOOL)a5
{
  v5 = [[MTFeedUpdatePreProcessResult alloc] initWithShouldContinue:1 createdPodcastUUID:0];

  return v5;
}

- (BOOL)processFeed:(id)a3 podcastUUID:(id)a4 requestUrl:(id)a5 useBackgroundFetch:(BOOL)a6 needsUpdate:(BOOL)a7 source:(int64_t)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = +[MTProcessorManager sharedInstance];
  [v17 startProcessorsForFeedUpdates];

  v18 = [(MTBaseFeedManager *)self importContext];
  if (v15)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v19 = a8;
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
    v23 = v18;
    v25 = v18;
    v20 = v15;
    v33 = v9;
    v30 = v35;
    v31 = &v37;
    v26 = v20;
    v27 = self;
    v28 = v14;
    v29 = v16;
    v32 = v19;
    v34 = v10;
    [v25 performBlockAndWaitWithSave:v24];
    if (v9 && *(v38 + 24) == 1)
    {
      v21 = +[MTFeedUpdateManager sharedInstance];
      [v21 _updatePodcastWithUUID:v20 userInitiated:0 useBackgroundFetch:v10 source:14];
    }

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(&v37, 8);
    v18 = v23;
  }

  return 1;
}

- (BOOL)updatePodcastWithUuid:(id)a3 withFeed:(id)a4 originalFeedUrl:(id)a5 source:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v311 = a5;
  v314 = v11;
  if (v11)
  {
    v308 = os_transaction_create();
    v305 = objc_autoreleasePoolPush();
    v328 = self;
    v330 = [(MTBaseFeedManager *)self importContext];
    v310 = v10;
    v12 = [v330 podcastForUuid:v10];
    v13 = [v11 podcastStoreId];
    v14 = [v13 longLongValue];

    if ([MTStoreIdentifier isNotEmpty:v14])
    {
      [v12 setStoreCollectionId:v14];
    }

    v15 = [v11 updatedFeedURL];
    v307 = v15;
    v301 = v14;
    if ([MTDBUtil isSupportedUrlString:v15])
    {
      [v12 currentFeedURL];
      v17 = v16 = v15;
      v18 = [v17 absoluteString];
      LOBYTE(v16) = [v16 isEqualToString:v18];

      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v24 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v12 currentFeedURL];
          v26 = [v25 absoluteString];
          *buf = 138543874;
          v352 = v310;
          v353 = 2112;
          v354 = v307;
          v355 = 2112;
          v356 = *&v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Found different updatedFeedURL %@ from %@", buf, 0x20u);
        }

        [v12 setUpdatedFeedURL:v307];
        v19 = 1;
      }

      v11 = v314;
    }

    else
    {
      v19 = 0;
    }

    v303 = v19;
    v27 = [v11 resolvedFeedURL];
    v309 = v27;
    if ([v27 length])
    {
      v28 = [v12 currentFeedURL];
      v29 = [v28 absoluteString];
      v30 = [v27 isEqualToString:v29];

      if ((v30 & 1) == 0)
      {
        v31 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v12 currentFeedURL];
          v33 = [v32 absoluteString];
          *buf = 138543874;
          v352 = v310;
          v353 = 2112;
          v354 = v309;
          v355 = 2112;
          v356 = *&v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Found different feedURL %@ from %@", buf, 0x20u);
        }

        [v12 setUpdatedFeedURL:v309];
        v303 = 1;
      }
    }

    v302 = a6;
    v23 = v314;
    v34 = [v314 title];
    v35 = [v34 stringByStrippingHTML];
    v36 = [v35 stringByRemovingNewlineCharacters];
    [v12 setTitle:v36];

    v37 = [v314 author];
    v38 = [v37 stringByStrippingHTML];
    [v12 setAuthor:v38];

    v39 = [v314 provider];
    v40 = [v39 stringByStrippingHTML];
    [v12 setProvider:v40];

    [v12 setIsExplicit:{objc_msgSend(v314, "isExplicit")}];
    v41 = [v314 feedDescription];
    [v12 setItemDescription:v41];

    v42 = [v314 showType];
    [v12 setShowTypeInFeed:v42];

    v43 = [v314 category];
    [v12 setCategory:v43];

    v44 = [v314 webpageURL];
    [v12 setWebpageURL:v44];

    v45 = [v314 shareURL];
    [v12 setStoreCleanURL:v45];

    v46 = [v314 artworkPrimaryColor];
    [v12 setArtworkPrimaryColor:v46];

    v47 = [v314 showSpecificUpsellCopy];
    [v12 setShowSpecificUpsellCopy:v47];

    [v12 setOfferTypes:{objc_msgSend(v314, "offerTypesAsFlagBits")}];
    v48 = [v314 displayType];
    if (v48)
    {
      v49 = v48;
      v50 = [v314 displayType];
      v51 = [v50 isNotEmpty];

      if (v51)
      {
        v52 = [v314 displayType];
        [v12 setDisplayType:v52];
      }
    }

    v53 = [v314 channelItem];

    if (v53)
    {
      v54 = [v314 channelItem];
      v55 = v330;
      v56 = [MTChannel createOrFindChannelFromFeedChannelItem:v54 personalizedRequest:0 context:v330];

      [v12 setChannel:v56];
      v313 = [v56 subscriptionActive];
    }

    else
    {
      v313 = 0;
      v55 = v330;
    }

    v57 = kMTEpisodeEntityName;
    v58 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
    v59 = [v12 uuid];
    v60 = [MTEpisode predicateForAllEpisodesIncludingHiddenOnPodcastUuid:v59];
    [v58 setPredicate:v60];

    v61 = [(MTBaseFeedManager *)v328 _sortDescriptorsForLocalEpisodes];
    [v58 setSortDescriptors:v61];

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
        v65 = [v12 uuid];
        v66 = [v12 title];
        *buf = 138543874;
        v352 = v65;
        v353 = 2112;
        v354 = v66;
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
      v68 = v330;
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
        v292 = [NSNumber numberWithInteger:v302];
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

    v69 = [v314 items];
    v345[0] = _NSConcreteStackBlock;
    v345[1] = 3221225472;
    v345[2] = sub_100106774;
    v345[3] = &unk_1004DC768;
    v345[4] = v328;
    v70 = [v69 sortedArrayWithOptions:16 usingComparator:v345];

    v300 = [v70 count];
    v343 = 0.0;
    v344 = 0.0;
    [objc_opt_class() standardDeviationForEpisodes:v70 standardDeviation:&v344 average:&v343];
    v71 = _MTLogCategoryFeedUpdate();
    v315 = v70;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = [v12 uuid];
      v73 = [v12 title];
      *buf = 138544130;
      v352 = v72;
      v353 = 2112;
      v354 = v73;
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
      v75 = [v12 uuid];
      v76 = [v12 title];
      v77 = [v70 count];
      *buf = 138543874;
      v352 = v75;
      v353 = 2112;
      v354 = v76;
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
      [v330 saveInCurrentBlock];
      if (v78 < [v62 count])
      {
        do
        {
          v224 = [v62 objectAtIndex:v78];
          v225 = [v224 uuid];

          if (v225)
          {
            v226 = [v224 uuid];
            [v324 addObject:v226];

            v227 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v224 storeTrackId]);
            [v325 addObject:v227];
          }

          else
          {
            v227 = _MTLogCategoryFeedUpdate();
            if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
            {
              v228 = [v224 title];
              *buf = 138412290;
              v352 = v228;
              _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_ERROR, "NULL UUID for feedDeletedEpisode removed from the feed, title %@", buf, 0xCu);
            }
          }

          v229 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
          {
            [v12 uuid];
            v231 = v230 = v78;
            v232 = [v12 title];
            v233 = [v224 uuid];
            v234 = [v224 title];
            *buf = 138544130;
            v352 = v231;
            v353 = 2112;
            v354 = v232;
            v355 = 2114;
            v356 = *&v233;
            v357 = 2112;
            v358 = *&v234;
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
      v239 = [v330 executeFetchRequest:v235 error:&v342];
      v240 = v342;
      v241 = v321;
      if (v240)
      {
        v242 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
        {
          v243 = [v12 uuid];
          v244 = [v12 title];
          *buf = 138543874;
          v352 = v243;
          v353 = 2112;
          v354 = v244;
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
              v252 = [v336 uuid];
              [v336 title];
              v253 = v246;
              v255 = v254 = v241;
              v256 = [v250 uuid];
              v257 = [v250 title];
              *buf = 138544130;
              v352 = v252;
              v353 = 2112;
              v354 = v255;
              v355 = 2114;
              v356 = *&v256;
              v357 = 2112;
              v358 = *&v257;
              _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ deleting episode removed from feed %{public}@ - %@", buf, 0x2Au);

              v241 = v254;
              v246 = v253;
              v247 = v333;
            }

            [v250 setFeedDeleted:1];
            [v250 setEpisodeLevel:v241];
            if (!(v249 % 0xC8))
            {
              [v330 saveInCurrentBlock];
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

      [v330 saveInCurrentBlock];
      v12 = v336;
      if (v312 && ![(MTBaseFeedManager *)v328 isSubscribingWithFeedUrl:v311])
      {
        v258 = [v330 episodeForUuid:v312];
        [v258 metadataTimestamp];
        if (fabs(v259) <= 2.22044605e-16 && [v336 subscribed])
        {
          [(MTBaseFeedManager *)v328 markEpisodeAsFirstSeen:v258];
          [v258 setPlayState:2 manually:0 source:6];
          [v258 setMetadataTimestamp:0.0];
          [v258 setMetadataFirstSyncEligible:1];
        }
      }

      if ([v299 count])
      {
        v260 = [v336 uuid];
        v261 = [v336 managedObjectContext];
        v262 = [MTRecencyUtil upNextForPodcastUuid:v260 ctx:v261];
        v263 = [v262 episodeUuid];

        v264 = v312;
        if (v263)
        {
          v264 = v263;
        }

        v265 = v264;
        if ([v299 containsObject:v265])
        {
          v266 = [v330 episodeForUuid:v263];
          v267 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
          {
            v268 = [v336 uuid];
            v269 = [v336 title];
            v270 = [v266 uuid];
            v271 = [v266 title];
            *buf = 138544130;
            v352 = v268;
            v353 = 2112;
            v354 = v269;
            v355 = 2114;
            v356 = *&v270;
            v357 = 2112;
            v358 = *&v271;
            _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Found new smart play episode from episod entitlement changed %{public}@ - %@", buf, 0x2Au);

            v12 = v336;
          }

          [(MTBaseFeedManager *)v328 markEpisodeAsFirstSeen:v266];
          [v266 setSentNotification:0];
        }
      }

      v272 = [v314 imageURL];
      if ([v272 length])
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
        v276 = [v12 imageURL];
        v277 = [v276 isEqualToString:v273];

        if ((v277 & 1) == 0)
        {
          v278 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
          {
            v279 = [v12 uuid];
            v280 = [v12 title];
            *buf = 138543874;
            v352 = v279;
            v353 = 2112;
            v354 = v280;
            v355 = 2112;
            v356 = *&v273;
            _os_log_impl(&_mh_execute_header, v278, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ artwork url did change %@", buf, 0x20u);
          }

          [v12 setNeedsArtworkUpdate:1];
        }
      }

      [v12 setImageURL:v273];
      v281 = [v314 uberBackgroundImageURL];
      [v12 setUberBackgroundImageURL:v281];
      v282 = [v314 uberBackgroundJoeColor];
      [v12 setUberBackgroundJoeColor:v282];

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

      [v330 saveInCurrentBlock];

      v68 = v330;
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
      v81 = [obj enclosureURL];

      if (!v81)
      {
        v108 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          v109 = [v12 uuid];
          v110 = [v12 title];
          v111 = [obj title];
          *buf = 138543874;
          v352 = v109;
          v353 = 2112;
          v354 = v110;
          v355 = 2112;
          v356 = *&v111;
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

          if ([(MTBaseFeedManager *)v328 _localEpisode:v82 isEqualToServerEpisode:obj])
          {
            v107 = 0;
            goto LABEL_63;
          }

          v86 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            v87 = [v12 uuid];
            v88 = [v12 title];
            [obj guid];
            v331 = v78;
            v89 = v326 = v78 - 1;
            [v82 guid];
            v90 = v332 = v82;
            v91 = [obj resolvedEnclosureUrl];
            v92 = [v332 enclosureURL];
            v93 = [obj title];
            v94 = [v332 title];
            *buf = 138545154;
            v352 = v87;
            v353 = 2112;
            v354 = v88;
            v355 = 2112;
            v356 = *&v89;
            v357 = 2112;
            v358 = *&v90;
            v359 = 2112;
            v360 = v91;
            v361 = 2112;
            v362 = v92;
            v363 = 2112;
            v364 = v93;
            v365 = 2112;
            v366 = v94;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%{public}@ - %@ did not find match for episode %@ - %@ | %@ - %@ | %@ - %@", buf, 0x52u);

            v82 = v332;
            v85 = v326;
            v78 = v331;

            v12 = v336;
            v83 = AMSUserNotification_ptr;
          }

          if ([(MTBaseFeedManager *)v328 _compareServerEpisode:obj toLocalEpisode:v82]== -1)
          {
            break;
          }

          v95 = [v82 uuid];

          if (v95)
          {
            v96 = [v82 uuid];
            [v324 addObject:v96];

            v97 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v82 storeTrackId]);
            [v325 addObject:v97];
          }

          else
          {
            v97 = _MTLogCategoryFeedUpdate();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              v98 = [v82 title];
              *buf = 138412290;
              v352 = v98;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "NULL UUID for localEpisode no longer in server feed, title %@", buf, 0xCu);
            }
          }

          v99 = _MTLogCategoryFeedUpdate();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            v100 = [v12 uuid];
            v101 = [v12 title];
            v102 = [v82 uuid];
            v103 = [v82 title];
            *buf = 138544130;
            v352 = v100;
            v353 = 2112;
            v354 = v101;
            v355 = 2114;
            v356 = *&v102;
            v357 = 2112;
            v358 = *&v103;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ marking episode for deletion %{public}@ - %@", buf, 0x2Au);

            v83 = AMSUserNotification_ptr;
          }

          v62 = v329;
          if (200 * (v78 / 0xC8) == v78)
          {
            [v330 saveInCurrentBlock];
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
          v113 = [v12 uuid];
          v114 = [v12 title];
          v115 = [obj episodeStoreId];
          v116 = [obj title];
          *buf = 138544130;
          v352 = v113;
          v353 = 2112;
          v354 = v114;
          v355 = 2114;
          v356 = *&v115;
          v357 = 2112;
          v358 = *&v116;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ should add new episode from server %{public}@ - %@", buf, 0x2Au);

          v12 = v336;
        }

        v107 = 1;
        v78 = v85;
      }

      v83 = AMSUserNotification_ptr;
LABEL_63:
      v117 = [obj episodeStoreId];
      v118 = [v117 longLongValue];

      v119 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v120 = [v12 uuid];
        v121 = [v12 title];
        v122 = [NSNumber numberWithLongLong:v118];
        *buf = 138543874;
        v352 = v120;
        v353 = 2112;
        v354 = v121;
        v355 = 2112;
        v356 = *&v122;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ serverEpisode %@", buf, 0x20u);

        v83 = AMSUserNotification_ptr;
      }

      if (!v82)
      {
        break;
      }

      if (v118 > 0)
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
      v136 = v330;
      v79 = v319;
LABEL_82:
      v137 = v127;
      v127 = [(MTBaseFeedManager *)v328 _insertNewEpisodeForServerEpisode:obj podcast:v12 ctx:v136];

      v138 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        v139 = [v12 uuid];
        v140 = [v12 title];
        v141 = [v127 uuid];
        v142 = [v127 title];
        *buf = 138544130;
        v352 = v139;
        v353 = 2112;
        v354 = v140;
        v355 = 2114;
        v356 = *&v141;
        v357 = 2112;
        v358 = *&v142;
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
        v144 = [v12 uuid];
        v145 = [v12 title];
        v146 = [v127 uuid];
        v147 = [v127 title];
        *buf = 138544130;
        v352 = v144;
        v353 = 2112;
        v354 = v145;
        v355 = 2114;
        v356 = *&v146;
        v357 = 2112;
        v358 = *&v147;
        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ updating episode %{public}@ - %@", buf, 0x2Au);

        v12 = v336;
      }

      [v127 setFeedDeleted:0];
      v148 = [obj guid];
      [v127 setGuid:v148];

      if ([MTStoreIdentifier isNotEmpty:v118])
      {
        [v127 setStoreTrackId:v118];
      }

      v149 = [obj title];
      v150 = [v149 stringByStrippingHTML];

      [v127 setTitle:v150];
      v151 = [obj itunesTitle];
      [v127 setItunesTitle:v151];

      v152 = [(MTBaseFeedManager *)v328 configuration];
      v153 = [v152 usesCleanEpisodeTitles];

      if (v153)
      {
        v154 = [v12 title];
        v155 = [v150 cleanedTitleStringWithPrefix:v154];
        [v127 setCleanedTitle:v155];
      }

      v156 = [obj itemDescription];
      [v127 setItemDescription:v156];

      v157 = [obj itemSummary];
      [v127 setItunesSubtitle:v157];

      v158 = [obj author];
      [v127 setAuthor:v158];

      [v127 setByteSize:{objc_msgSend(obj, "byteSize")}];
      v159 = [obj uti];
      [v127 setUti:v159];

      v160 = [obj pubDate];
      if (v160)
      {
        v161 = v160;
        [v127 pubDate];
        v163 = v162;
        v164 = [obj pubDate];
        [v164 timeIntervalSinceReferenceDate];
        v166 = v165;

        if (v163 != v166)
        {
          v167 = [obj pubDate];
          [v167 timeIntervalSinceReferenceDate];
          [v127 setPubDate:?];
        }
      }

      v168 = [obj firstTimeAvailableAsFree];
      if (v168)
      {
        v169 = v168;
        [v127 firstTimeAvailableAsFree];
        v171 = v170;
        v172 = [obj firstTimeAvailableAsFree];
        [v172 timeIntervalSinceReferenceDate];
        v174 = v173;

        if (v171 != v174)
        {
          v175 = [obj firstTimeAvailableAsFree];
          [v175 timeIntervalSinceReferenceDate];
          [v127 setFirstTimeAvailableAsFree:?];
        }
      }

      v176 = [obj firstTimeAvailableAsPaid];
      if (v176)
      {
        v177 = v176;
        [v127 firstTimeAvailableAsPaid];
        v179 = v178;
        v180 = [obj firstTimeAvailableAsPaid];
        [v180 timeIntervalSinceReferenceDate];
        v182 = v181;

        if (v179 != v182)
        {
          v183 = [obj firstTimeAvailableAsPaid];
          [v183 timeIntervalSinceReferenceDate];
          [v127 setFirstTimeAvailableAsPaid:?];
        }
      }

      if ([obj trackNum])
      {
        [v127 setTrackNum:{objc_msgSend(obj, "trackNum")}];
      }

      [v127 setExplicit:{objc_msgSend(obj, "isExplicit")}];
      [v127 setEpisodeLevel:v321];
      v184 = [obj episodeType];
      [v127 setEpisodeType:v184];

      v185 = [v127 episodeNumber];
      if (v185 != [obj episodeNumber])
      {
        [v127 setEpisodeNumber:{objc_msgSend(obj, "episodeNumber")}];
      }

      v186 = [v127 seasonNumber];
      if (v186 != [obj seasonNumber])
      {
        [v127 setSeasonNumber:{objc_msgSend(obj, "seasonNumber")}];
      }

      v187 = [obj webpageURL];
      [v127 setWebpageURL:v187];

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

      v190 = [obj entitledEnclosureURL];
      [v127 setEntitledEnclosureURL:v190];

      v191 = [obj resolvedEnclosureUrl];
      [v127 setFreeEnclosureURL:v191];

      v192 = [obj priceType];
      [v127 setFreePriceType:v192];

      v193 = [obj entitledPriceType];
      [v127 setEntitledPriceType:v193];

      v194 = [obj entitledTranscriptIdentifier];
      [v127 setEntitledTranscriptIdentifier:v194];

      v195 = [obj freeTranscriptIdentifier];
      [v127 setFreeTranscriptIdentifier:v195];

      v196 = [v127 transcriptIdentifier];
      v197 = [obj entitledTranscriptSnippet];
      [v127 setEntitledTranscriptSnippet:v197];

      v198 = [obj freeTranscriptSnippet];
      [v127 setFreeTranscriptSnippet:v198];

      v199 = [obj entitledTranscriptProvider];
      [v127 setEntitledTranscriptProvider:v199];

      v200 = [obj freeTranscriptProvider];
      [v127 setFreeTranscriptProvider:v200];

      if (v313)
      {
        [obj entitledDuration];
        if (v201 > 0.0)
        {
          [obj entitledDuration];
          [v127 setDuration:?];
        }

        v202 = [obj entitledEnclosureURL];

        if (v202)
        {
          v203 = [obj entitledEnclosureURL];
          [v127 setEnclosureURL:v203];
        }

        v204 = [obj entitledPriceType];
        [v127 setPriceType:v204];

        v205 = [obj entitledTranscriptIdentifier];
      }

      else
      {
        [v127 freeDuration];
        [v127 setDuration:?];
        v206 = [v127 freeEnclosureURL];
        [v127 setEnclosureURL:v206];

        v207 = [v127 freePriceType];
        [v127 setPriceType:v207];

        v205 = [v127 freeTranscriptIdentifier];
      }

      v208 = v205;
      [v127 setTranscriptIdentifier:v205];

      v209 = +[PFTranscriptProviderBridge shared];
      v210 = [v127 transcriptIdentifier];
      v211 = [v127 assetURL];
      [v209 updateTTMLIDFrom:v196 toNewID:v210 hasDownloadedContent:v211 != 0 forEpisodeAdamID:{objc_msgSend(v127, "storeTrackId")}];

      v12 = v336;
      if (v135)
      {
        [v127 updateEntitlementState];
        v212 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
        {
          v213 = [v127 uuid];
          v214 = [v127 title];
          v215 = [v127 entitlementState];
          *buf = 138543874;
          v352 = v213;
          v353 = 2112;
          v354 = v214;
          v355 = 2048;
          v356 = *&v215;
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
        v218 = [v127 uuid];

        v312 = v218;
        v70 = v315;
      }

      if (__ROR8__(0x8F5C28F5C28F5C29 * v78, 3) <= 0x147AE147AE147AEuLL)
      {
        [v330 saveInCurrentBlock];
      }

      objc_autoreleasePoolPop(context);
LABEL_129:
      ++v79;

      if (v79 >= [v70 count])
      {
        goto LABEL_135;
      }
    }

    if (v118 < 1)
    {
      v127 = 0;
      goto LABEL_81;
    }

LABEL_72:
    v124 = [NSNumber numberWithLongLong:v118];
    v125 = [v325 containsObject:v124];

    if (v125)
    {
      v126 = [v83[282] predicateForEpisodeStoreTrackId:v118];
      v127 = [v330 objectInEntity:v306 predicate:v126];

      if (!v127)
      {
        v219 = _MTLogCategoryFeedUpdate();
        v79 = v319;
        if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
        {
          v220 = [v12 uuid];
          v221 = [v12 title];
          v222 = [0 uuid];
          v223 = [0 title];
          *buf = 138544130;
          v352 = v220;
          v353 = 2112;
          v354 = v221;
          v355 = 2114;
          v356 = *&v222;
          v357 = 2112;
          v358 = *&v223;
          _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_ERROR, "%{public}@ - %@ failed to update feed-deleted episode %{public}@ - %@", buf, 0x2Au);
        }

        v127 = 0;
        v136 = v330;
        goto LABEL_82;
      }

      v128 = [v127 uuid];
      [v324 removeObject:v128];

      v129 = [NSNumber numberWithLongLong:v118];
      [v325 removeObject:v129];

      v130 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        v131 = [v12 uuid];
        v132 = [v12 title];
        v133 = [v127 uuid];
        v134 = [v127 title];
        *buf = 138544130;
        v352 = v131;
        v353 = 2112;
        v354 = v132;
        v355 = 2114;
        v356 = *&v133;
        v357 = 2112;
        v358 = *&v134;
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

  v20 = v10;
  v21 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v352 = v10;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@ failed to update because feed was nil", buf, 0xCu);
  }

  v22 = 0;
  v23 = 0;
LABEL_192:

  return v22;
}

- (void)markEpisodeAsFirstSeen:(id)a3
{
  v3 = a3;
  [v3 unsuppressAutomaticDownloadsIfNeeded];
  [v3 setIsNew:1];
}

- (id)_insertNewEpisodeForServerEpisode:(id)a3 podcast:(id)a4 ctx:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 && ([v8 isDeleted] & 1) == 0)
  {
    v11 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
    [v11 setUppSyncDirtyFlag:1];

    v10 = +[MTEpisode insertNewEpisodeInManagedObjectContext:canSendNotifications:](MTEpisode, "insertNewEpisodeInManagedObjectContext:canSendNotifications:", v9, +[PFNotificationSettings canSendNotification]);
    [v10 setPodcast:v8];
    v12 = [v7 guid];
    [v10 setGuid:v12];

    [v10 setImportSource:2];
    v13 = [v7 pubDate];
    [v13 timeIntervalSinceReferenceDate];
    v15 = v14;
    [v8 addedDate];
    v17 = v16;

    v18 = [v8 importing];
    if (v15 < v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    if (v19 & 1) == 0 && ([v8 subscribed])
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
      v21 = [v8 isDark];
      v22 = [v8 darkCount];
      [v8 setDarkCount:v22 + 1];
      [v8 setDarkCountLocal:v22 + 1];
      [v8 markPlaylistsForUpdate];
      if (v21 != [v8 isDark])
      {
        v23 = [v8 isDark];
        v24 = [v8 latestExitFromDarkDownloads];
        if (v24)
        {
          v25 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v21 isDark:v23 reason:2 previousExit:v24];
        }

        else
        {
          v26 = +[NSDate now];
          v25 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v21 isDark:v23 reason:2 previousExit:v26];
        }

        v27 = objc_opt_new();
        [v27 sendEvent:v25];
      }
    }

    v28 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v8 uuid];
      v30 = [v8 title];
      v31 = [v10 uuid];
      v32 = [v10 title];
      v34 = 138544130;
      v35 = v29;
      v36 = 2112;
      v37 = v30;
      v38 = 2114;
      v39 = v31;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ new episode %{public}@ - %@", &v34, 0x2Au);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_localEpisode:(id)a3 isEqualToServerEpisode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 guid];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 guid];
    if (v9)
    {
      v10 = v9;
      v11 = [v6 guid];
      v12 = [v5 guid];
      v13 = [v11 isEqualToString:v12];

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

  v15 = [v6 resolvedEnclosureUrl];
  if (v15 && ([v5 enclosureURL], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(v5, "enclosureURL"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v15, "isEqualToString:", v18), v18, v17, (v19 & 1) != 0))
  {
    v14 = 1;
  }

  else
  {
    v20 = [v6 title];
    v21 = [v20 stringByStrippingHTML];

    if (v21)
    {
      v22 = [v5 title];
      if (v22)
      {
        v23 = [v5 title];
        if ([v21 isEqualToString:v23])
        {
          v24 = [v6 pubDate];
          [v5 pubDate];
          v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          v14 = [v24 isEqualToDate:v25];
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

- (int64_t)_compareServerEpisode:(id)a3 toServerEpisode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 pubDate];
  v8 = [v6 pubDate];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v8 compare:v7];
  }

  else
  {
    v11 = [v5 guid];
    v12 = [v6 guid];
    v13 = v12;
    if (v11 | v12)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v10 = 1;
    }

    else
    {
      v10 = v14;
    }

    if (v11 && v12)
    {
      v10 = [v12 compare:v11];
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

- (int64_t)_compareServerEpisode:(id)a3 toLocalEpisode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 pubDate];
  [v6 pubDate];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v8 compare:v7];
  }

  else
  {
    v11 = [v5 guid];
    v12 = [v6 guid];
    v13 = v12;
    if (v11 | v12)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v10 = 1;
    }

    else
    {
      v10 = v14;
    }

    if (v11 && v12)
    {
      v10 = [v12 compare:v11];
    }
  }

  return v10;
}

+ (BOOL)isUpdatingPodcastUuid:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v5 = +[MTDB sharedInstance];
    v6 = [v5 mainOrPrivateContext];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100107164;
    v10[3] = &unk_1004DC790;
    v7 = v6;
    v11 = v7;
    v12 = v4;
    v13 = &v15;
    v14 = a1;
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

+ (BOOL)isUpdatingFeedUrl:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = qword_100583CD0;
    objc_sync_enter(v4);
    v5 = [qword_100583CD0 containsObject:v3];
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

- (void)preprocessFeedWithDataHashingBlock:(id)a3 feedCreationBlock:(id)a4 url:(id)a5 useBackgroundFetch:(BOOL)a6 source:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001074C8;
  v19[3] = &unk_1004DC7B8;
  objc_copyWeak(v23, &location);
  v15 = v12;
  v21 = v15;
  v16 = v14;
  v20 = v16;
  v17 = v13;
  v24 = a6;
  v22 = v17;
  v23[1] = a7;
  v18 = objc_retainBlock(v19);
  [(MTBaseFeedManager *)self _addPendingFeedProcessingBlock:v18];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)didDownloadFeedWithError:(id)a3 data:(id)a4 task:(id)a5 requestedUrl:(id)a6 useBackgroundFetch:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    v15 = a6;
    v16 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v12 localizedDescription];
      v18 = [v12 userInfo];
      v19 = [v18 objectForKey:NSUnderlyingErrorKey];
      *buf = 138412546;
      v27 = v17;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: Underlying error %@", buf, 0x16u);
    }

    [(MTBaseFeedManager *)self feedDownloadedWithError:v12 task:v14 requestedUrl:v15];
    v20 = [v15 absoluteString];

    [(MTBaseFeedManager *)self _didFinishUpdatingFeedUrl:v20 withError:v12];
  }

  else
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100107C70;
    v24[3] = &unk_1004DC7E0;
    v25 = v13;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100107C78;
    v22[3] = &unk_1004DC808;
    v23 = v25;
    v21 = a6;
    [(MTBaseFeedManager *)self preprocessFeedWithDataHashingBlock:v24 feedCreationBlock:v22 url:v21 useBackgroundFetch:v7 source:17];

    v20 = v25;
  }
}

- (void)didRestoreFeedUrlTask:(id)a3
{
  v8 = a3;
  v3 = qword_100583CD0;
  objc_sync_enter(v3);
  v4 = [v8 absoluteString];
  v5 = [v4 length];

  if (v5)
  {
    v6 = qword_100583CD0;
    v7 = [v8 absoluteString];
    [v6 addObject:v7];
  }

  objc_sync_exit(v3);
}

- (BOOL)abortUpdatesIfNetworkUnreachable:(BOOL)a3
{
  v3 = a3;
  v4 = +[MTReachability sharedInstance];
  v5 = [v4 isReachable];

  if ((v5 & 1) == 0)
  {
    if (v3)
    {
      dispatch_async(&_dispatch_main_q, &stru_1004DC828);
    }

    [objc_opt_class() didFinishUpdatingAllFeeds:0];
  }

  return v5 ^ 1;
}

- (void)_startDownloadForFeedUrl:(id)a3 cloudSyncFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 triggerBy:(id)a6 userInitiated:(BOOL)a7 useBackgroundFetch:(BOOL)a8 source:(int64_t)a9
{
  v9 = a8;
  v10 = a7;
  v14 = a3;
  v15 = a6;
  v16 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v24 = 138412290;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Running on downloads queue %@", &v24, 0xCu);
  }

  v17 = [(MTBaseFeedManager *)self configuration];
  v18 = ([v17 useBackgroundFetchForFeedDownloads] | v9);

  v19 = [(MTBaseFeedManager *)self _shouldDownloadPodcastWithIdentifierFromStore:a5];
  v20 = _MTLogCategoryFeedUpdate();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v24 = 134218498;
      v25 = a5;
      v26 = 2112;
      v27 = v14;
      v28 = 2048;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Downloading from Media API with storeID %lld for feedURL %@ localBackgroundFetch %ld", &v24, 0x20u);
    }

    [(MTBaseFeedManager *)self startDownloadForPodcastStoreId:a5 triggerBy:v15 feedUrl:v14 useBackgroundFetch:v18 source:a9];
  }

  else
  {
    if (v21)
    {
      v24 = 138412546;
      v25 = v14;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Downloading directly from feedURL %@ localBackgroundFetch %ld", &v24, 0x16u);
    }

    v22 = [[_TtC18PodcastsFoundation22DownloadableURLOptions alloc] initWithUrl:v14 nonAppInitiated:1];
    v23 = [(MTBaseFeedManager *)self externalFeedDownloader];
    [v23 startDownloadTaskForFeedURL:v22 userInitiated:v10 useBackgroundFetch:v18];
  }
}

- (void)startDownloadForFeedUrl:(id)a3 cloudSyncFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 triggerBy:(id)a6 userInitiated:(BOOL)a7 useBackgroundFetch:(BOOL)a8 source:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  if (v15)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100108350;
    v22[3] = &unk_1004DC850;
    v22[4] = self;
    v23 = v15;
    v26 = a5;
    v24 = v16;
    v28 = a7;
    v29 = a8;
    v25 = v17;
    v27 = a9;
    v18 = objc_retainBlock(v22);
    v19 = [(MTBaseFeedManager *)self configuration];
    if ([v19 useBackgroundFetchForFeedDownloads])
    {
      v20 = [(MTBaseFeedManager *)self _shouldDownloadPodcastWithIdentifierFromStore:a5];

      if ((v20 & 1) == 0)
      {
        v21 = [(MTBaseFeedManager *)self externalFeedDownloader];
        [v21 restoreBackgroundDownloadTasksWithCompletion:v18];

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

- (void)startDownloadForPodcastStoreId:(int64_t)a3 triggerBy:(id)a4 feedUrl:(id)a5 useBackgroundFetch:(BOOL)a6 source:(int64_t)a7
{
  v8 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(MTBaseFeedManager *)self storePodcastDownloader];
  v15 = [NSNumber numberWithLongLong:a3];
  v16 = [v12 absoluteString];
  v17 = [(MTBaseFeedManager *)self allowEpisodesRequestTo404AndDeleteEpisodesWithFeedUrl:v16];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100108774;
  v19[3] = &unk_1004DC878;
  v19[4] = self;
  v20 = v12;
  v22 = v8;
  v21 = a7;
  v18 = v12;
  [v14 downloadPodcast:v15 triggerBy:v13 allowEpisodesTo404:v17 isImplicitActionRequest:v8 completion:v19];
}

+ (void)purgeSubscriptionMetadata
{
  v3 = qword_100583CD8;
  objc_sync_enter(v3);
  v4 = qword_100583CD8;
  qword_100583CD8 = 0;

  objc_sync_exit(v3);

  [a1 saveSubscriptionMetadata];
}

+ (void)removeMetadataForPodcastUuid:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    v4 = qword_100583CD8;
    objc_sync_enter(v4);
    [qword_100583CD8 removeObjectForKey:v5];
    objc_sync_exit(v4);

    v3 = v5;
  }
}

+ (void)saveSubscriptionMetadata
{
  v3 = qword_100583CD8;
  objc_sync_enter(v3);
  v4 = qword_100583CD8;
  v5 = [a1 _metadataUrl];
  v8 = 0;
  [v4 writeToURL:v5 error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = a1;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ failed to save hash cache due to %@", buf, 0x16u);
    }
  }

  objc_sync_exit(v3);
}

- (void)_addPendingFeedProcessingBlock:(id)a3
{
  v4 = a3;
  v5 = [(MTBaseFeedManager *)self feedProcessingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100108C98;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_processNextPendingFeedIfPossible
{
  v3 = [(MTBaseFeedManager *)self feedProcessingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100108D84;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_queue_processNextPendingFeedIfPossible
{
  v3 = [(MTBaseFeedManager *)self feedProcessingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MTBaseFeedManager *)self externalFeedDownloader];
  v5 = [v4 sessionCompletionHandler];

  if (v5)
  {
    v6 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v7 = "Postponing feed update because we're waiting to call the session completion handler";
LABEL_4:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v14, 2u);
    }
  }

  else
  {
    v8 = [(MTBaseFeedManager *)self pendingFeedProcessingBlocks];
    v9 = [v8 count];

    if (!v9)
    {
      v6 = _MTLogCategoryFeedUpdate();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      LOWORD(v14) = 0;
      v7 = "There are no pending feed updates. Doing nothing.";
      goto LABEL_4;
    }

    v10 = [(MTBaseFeedManager *)self pendingFeedProcessingBlocks];
    v6 = [v10 firstObject];

    v11 = [(MTBaseFeedManager *)self pendingFeedProcessingBlocks];
    [v11 removeObjectAtIndex:0];

    (*(v6 + 16))(v6);
    v12 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MTBaseFeedManager *)self pendingFeedProcessingBlocks];
      v14 = 134217984;
      v15 = [v13 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Done processing feed. %lu remaining.", &v14, 0xCu);
    }

    [(MTBaseFeedManager *)self _queue_processNextPendingFeedIfPossible];
  }

LABEL_11:
}

+ (void)didStartUpdatingFeedUrl:(id)a3 cloudSyncUrl:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100583CD0;
  objc_sync_enter(v8);
  [qword_100583CD0 addObject:v6];
  objc_sync_exit(v8);

  v13 = @"MTBaseFeedManagerFeedUrlKey";
  v14 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [a1 postNotificationName:@"MTBaseFeedManagerDidStartUpdatingFeed" userInfo:v9];

  v10 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didStartUpdatingFeedUrl: %@", &v11, 0xCu);
  }
}

- (void)_didFinishUpdatingFeedUrl:(id)a3 withError:(id)a4
{
  v5 = a4;
  v6 = a3;
  [objc_opt_class() didFinishUpdatingFeedUrl:v6 withError:v5];
}

+ (void)didFinishUpdatingFeedUrl:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100583CD0;
  objc_sync_enter(v8);
  if (v6)
  {
    if ([qword_100583CD0 containsObject:v6])
    {
      [qword_100583CD0 removeObject:v6];
      v9 = [qword_100583CD0 count] == 0;
      if (!v7)
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
  if (!v7)
  {
LABEL_4:
    v10 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v6;
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
    v13 = [v7 localizedDescription];
    *buf = 138412802;
    v19 = v6;
    v20 = 2112;
    v21 = v13;
    v22 = 1024;
    v23 = [qword_100583CD0 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "didFinishUpdatingFeedUrl: %@, with error: %@, remaining count = %d", buf, 0x1Cu);
  }

LABEL_10:

  objc_sync_exit(v8);
  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = &stru_1004F3018;
  }

  v16 = @"MTBaseFeedManagerFeedUrlKey";
  v17 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [a1 postNotificationName:@"MTBaseFeedManagerDidEndUpdatingFeed" userInfo:v15];

  if (v9)
  {
    [a1 didFinishUpdatingAllFeeds:1];
  }
}

+ (void)didFinishUpdatingAllFeeds:(BOOL)a3
{
  v3 = a3;
  if (![a1 updatingCount])
  {
    [a1 postNotificationName:@"MTBaseFeedManagerDidEndUpdatingAllFeeds" userInfo:0];
    if (v3)
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

+ (void)postNotificationName:(id)a3 userInfo:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100109580;
  v7[3] = &unk_1004D8798;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)standardDeviationForEpisodes:(id)a3 standardDeviation:(double *)a4 average:(double *)a5
{
  v33 = a3;
  *a4 = 0.0;
  *a5 = 0.0;
  v7 = objc_opt_new();
  v8 = [v33 count];
  if (v8 - 1 >= 1)
  {
    v9 = v8;
    v10 = 1;
    do
    {
      v11 = [v33 objectAtIndex:v10 - 1];
      v12 = [v11 pubDate];
      [v12 timeIntervalSinceReferenceDate];
      v14 = v13;

      v15 = [v33 objectAtIndex:v10];
      v16 = [v15 pubDate];
      [v16 timeIntervalSinceReferenceDate];
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
        *a5 = 0.0 / v20;
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
      *a5 = v23 / v21;
      if (v21 >= 1)
      {
        v26 = 0;
        v27 = 0.0;
        do
        {
          v28 = [v7 objectAtIndex:v26];
          [v28 doubleValue];
          v30 = v29 - *a5;
          v31 = [v7 objectAtIndex:v26];
          [v31 doubleValue];
          v27 = v27 + v30 * (v32 - *a5);

          ++v26;
        }

        while (v21 != v26);
        if (v21 != 1)
        {
          *a4 = sqrt(v27 / (v21 - 1));
        }
      }
    }
  }
}

@end