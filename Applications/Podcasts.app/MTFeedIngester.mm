@interface MTFeedIngester
+ (unint64_t)_offerTypesAsFlagBits:(id)bits;
+ (void)_markEpisodeAsFirstSeen:(id)seen;
+ (void)_markLatestEpisodeAsUnplayedIfNeeded:(id)needed latestEpisodeInPodcast:(id)podcast;
+ (void)_recalculateEpisodeLevel:(id)level episodeLevelCalculator:(id)calculator ctx:(id)ctx;
+ (void)_sendNotificationForNewlyEntitledEpisodesIfNeeded:(id)needed latestEpisodeInPodcast:(id)podcast newlyEntitledEpisodeUUIDs:(id)ds ctx:(id)ctx;
+ (void)_unsafeFinalizeIngestion:(id)ingestion episodeLevelCalculator:(id)calculator storeInfoUpdater:(id)updater updateAverageCalculator:(id)averageCalculator ctx:(id)ctx didUpdateAnyEpisodes:(BOOL)episodes newlyEntitledEpisodeUUIDs:(id)ds;
- (BOOL)_localPodcastExists;
- (BOOL)unsafeIngestShow:(id)show;
- (MTFeedIngester)initWithPodcast:(id)podcast ctx:(id)ctx storeInfoUpdater:(id)updater imageDownloader:(id)downloader imageStore:(id)store syncController:(id)controller library:(id)library downloadManager:(id)self0 episodeLevelCalculator:(id)self1 categoryIngester:(id)self2 chapterIngester:(id)self3 feedUpdateSource:(int64_t)self4 updaterJobUUID:(id)self5 canSendNotifications:(BOOL)self6;
- (id)_unsafeIngestEpisode:(id)episode localEpisode:(id)localEpisode isNew:(BOOL)new;
- (id)unsafeIngestNewEpisode:(id)episode;
- (void)_handleAttributesAndRedownloadOnPriceTypeChangeIfNeeded:(id)needed isNewEpisodeToCurrentDevice:(BOOL)device oldIsEntitled:(BOOL)entitled oldEnclosureURL:(id)l oldPriceType:(id)type;
- (void)_reportMetrics;
- (void)_setAttributesOfLocalEpisode:(id)episode feedEpisode:(id)feedEpisode;
- (void)_setPodcastArtwork:(id)artwork;
- (void)_updatePodcastArtworksIfNeeded;
- (void)_updatePodcastArtworksIfNeeded_ImageProvider;
- (void)_updatePodcastArtworksIfNeeded_ImageStore;
- (void)unsafeDeleteChaptersForEpisode:(id)episode;
- (void)unsafeDeleteFeedDeletedEpisode:(id)episode;
- (void)unsafeFinalizeIngestion;
- (void)unsafeIngestPage;
@end

@implementation MTFeedIngester

- (MTFeedIngester)initWithPodcast:(id)podcast ctx:(id)ctx storeInfoUpdater:(id)updater imageDownloader:(id)downloader imageStore:(id)store syncController:(id)controller library:(id)library downloadManager:(id)self0 episodeLevelCalculator:(id)self1 categoryIngester:(id)self2 chapterIngester:(id)self3 feedUpdateSource:(int64_t)self4 updaterJobUUID:(id)self5 canSendNotifications:(BOOL)self6
{
  podcastCopy = podcast;
  obj = ctx;
  ctxCopy = ctx;
  updaterCopy = updater;
  downloaderCopy = downloader;
  storeCopy = store;
  controllerCopy = controller;
  libraryCopy = library;
  managerCopy = manager;
  calculatorCopy = calculator;
  ingesterCopy = ingester;
  chapterIngesterCopy = chapterIngester;
  dCopy = d;
  v45.receiver = self;
  v45.super_class = MTFeedIngester;
  v25 = [(MTFeedIngester *)&v45 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_ctx, obj);
    objc_storeStrong(&v26->_localPodcast, podcast);
    v27 = +[NSMutableSet set];
    newlyEntitledEpisodeUUIDs = v26->_newlyEntitledEpisodeUUIDs;
    v26->_newlyEntitledEpisodeUUIDs = v27;

    v29 = +[NSMutableSet set];
    updatedEpisodeUUIDs = v26->_updatedEpisodeUUIDs;
    v26->_updatedEpisodeUUIDs = v29;

    v26->_latestEpisodeDate = 0.0;
    v26->_shouldMarkPlaylistsForUpdate = 0;
    objc_storeStrong(&v26->_storeInfoUpdater, updater);
    objc_storeStrong(&v26->_imageDownloader, downloader);
    objc_storeStrong(&v26->_imageStore, store);
    objc_storeStrong(&v26->_syncController, controller);
    objc_storeStrong(&v26->_library, library);
    objc_storeStrong(&v26->_downloadManager, manager);
    objc_storeStrong(&v26->_episodeLevelCalculator, calculator);
    objc_storeStrong(&v26->_categoryIngester, ingester);
    objc_storeStrong(&v26->_chapterIngester, chapterIngester);
    v26->_feedUpdateSource = source;
    objc_storeStrong(&v26->_updaterJobUUID, d);
    v26->_itemsInserted = 0;
    v26->_itemsIngested = 0;
    v26->_itemsDeleted = 0;
    v26->_canSendNotifications = notifications;
    v31 = +[_TtC18PodcastsFoundation29FeedManagerLocalConfiguration platformSpecificConfiguration];
    configuration = v26->_configuration;
    v26->_configuration = v31;
  }

  return v26;
}

- (id)unsafeIngestNewEpisode:(id)episode
{
  episodeCopy = episode;
  if ([(MTFeedIngester *)self _localPodcastExists])
  {
    [(MTSyncControllerProtocol *)self->_syncController setUppSyncDirtyFlag:1];
    v5 = [MTEpisode insertNewEpisodeInManagedObjectContext:self->_ctx canSendNotifications:self->_canSendNotifications];
    [v5 setPodcast:self->_localPodcast];
    [v5 setImportSource:2];
    pubDate = [episodeCopy pubDate];
    [pubDate timeIntervalSinceReferenceDate];
    v8 = v7;
    [(MTPodcast *)self->_localPodcast addedDate];
    v10 = v9;

    importing = [(MTPodcast *)self->_localPodcast importing];
    if (v8 < v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = importing;
    }

    if ((v12 & 1) != 0 || ([(MTPodcast *)self->_localPodcast subscribed]& 1) == 0)
    {
      [v5 metadataTimestamp];
      v14 = v13;
      v15 = _MTLogCategoryFeedUpdateIngester();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14 == 0.0)
      {
        if (v16)
        {
          uuid = [(MTPodcast *)self->_localPodcast uuid];
          title = [(MTPodcast *)self->_localPodcast title];
          uuid2 = [v5 uuid];
          sentNotification = [v5 sentNotification];
          importing2 = [(MTPodcast *)self->_localPodcast importing];
          v38 = 138544642;
          v39 = uuid;
          v40 = 2112;
          v41 = title;
          v42 = 2114;
          v43 = uuid2;
          v44 = 1024;
          v45 = sentNotification;
          v46 = 1024;
          v47 = v12;
          v48 = 1024;
          v49 = importing2;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Marking new feed episode as backCatalog. %{public}@, sentNotification: %d, isEpisodePublishedBeforeAddedDate: %d, podcastIsImporting: %d", &v38, 0x32u);
        }

        [v5 setPlayState:0 manually:1 source:6];
        [v5 setBackCatalog:1];
        [v5 setMetadataTimestamp:0.0];
        [v5 setMetadataFirstSyncEligible:0];
      }

      else
      {
        if (v16)
        {
          uuid3 = [(MTPodcast *)self->_localPodcast uuid];
          title2 = [(MTPodcast *)self->_localPodcast title];
          uuid4 = [v5 uuid];
          sentNotification2 = [v5 sentNotification];
          importing3 = [(MTPodcast *)self->_localPodcast importing];
          [v5 metadataTimestamp];
          v38 = 138544898;
          v39 = uuid3;
          v40 = 2112;
          v41 = title2;
          v42 = 2114;
          v43 = uuid4;
          v44 = 1024;
          v45 = sentNotification2;
          v46 = 1024;
          v47 = v12;
          v48 = 1024;
          v49 = importing3;
          v50 = 2048;
          v51 = v31;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ New feed episode already has a metadataTimestamp. Setting isNew to false. %{public}@, sentNotification: %d, isEpisodePublishedBeforeAddedDate: %d, podcastIsImporting: %d, metadataTimestamp: %f", &v38, 0x3Cu);
        }

        [v5 setIsNew:0];
      }

      [v5 suppressAutomaticDownloadsIfNeeded];
    }

    [v5 setEpisodeLevel:+[MTEpisodeLevelCalculator uncalculatedLevel]];
    v32 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      uuid5 = [(MTPodcast *)self->_localPodcast uuid];
      title3 = [(MTPodcast *)self->_localPodcast title];
      uuid6 = [v5 uuid];
      sentNotification3 = [v5 sentNotification];
      v38 = 138544130;
      v39 = uuid5;
      v40 = 2112;
      v41 = title3;
      v42 = 2114;
      v43 = uuid6;
      v44 = 1024;
      v45 = sentNotification3;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ new episode %{public}@, sentNotification: %d", &v38, 0x26u);
    }

    ++self->_itemsInserted;
    v25 = [(MTFeedIngester *)self _unsafeIngestEpisode:episodeCopy localEpisode:v5 isNew:1];
  }

  else
  {
    episodeStoreId = [episodeCopy episodeStoreId];
    longLongValue = [episodeStoreId longLongValue];

    v5 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v24 = [NSNumber numberWithLongLong:longLongValue];
      v38 = 138412290;
      v39 = v24;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ - could not ingest new feed episode because ingester local podcast does not exist", &v38, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

- (id)_unsafeIngestEpisode:(id)episode localEpisode:(id)localEpisode isNew:(BOOL)new
{
  newCopy = new;
  episodeCopy = episode;
  localEpisodeCopy = localEpisode;
  v10 = _MTLogCategoryFeedUpdateIngester();
  v121 = localEpisodeCopy;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    podcast = [localEpisodeCopy podcast];
    uuid = [podcast uuid];
    podcast2 = [localEpisodeCopy podcast];
    title = [podcast2 title];
    uuid2 = [v121 uuid];
    [v121 title];
    v17 = v16 = newCopy;
    *buf = 138544130;
    v128 = uuid;
    v129 = 2112;
    v130 = title;
    v131 = 2114;
    v132 = uuid2;
    v133 = 2112;
    v134 = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ updating episode %{public}@ - %@", buf, 0x2Au);

    newCopy = v16;
    localEpisodeCopy = v121;
  }

  podcast3 = [localEpisodeCopy podcast];
  uuid3 = [podcast3 uuid];
  uuid4 = [(MTPodcast *)self->_localPodcast uuid];
  v21 = [uuid3 isEqualToString:uuid4];

  if (v21)
  {
    [(MTFeedIngester *)self _setAttributesOfLocalEpisode:localEpisodeCopy feedEpisode:episodeCopy];
    channel = [(MTPodcast *)self->_localPodcast channel];

    v23 = localEpisodeCopy;
    if (channel)
    {
      channel2 = [(MTPodcast *)self->_localPodcast channel];
      subscriptionActive = [channel2 subscriptionActive];
    }

    else
    {
      subscriptionActive = 0;
    }

    isEntitled = [localEpisodeCopy isEntitled];
    priceType = [localEpisodeCopy priceType];
    enclosureURL = [localEpisodeCopy enclosureURL];
    [episodeCopy entitledDuration];
    if (v37 > 0.0)
    {
      [episodeCopy entitledDuration];
      [v23 setEntitledDuration:?];
    }

    [episodeCopy duration];
    if (v38 > 0.0)
    {
      [episodeCopy duration];
      [v23 setFreeDuration:?];
    }

    entitledEnclosureURL = [episodeCopy entitledEnclosureURL];
    [v23 setEntitledEnclosureURL:entitledEnclosureURL];

    resolvedEnclosureUrl = [episodeCopy resolvedEnclosureUrl];
    [v23 setFreeEnclosureURL:resolvedEnclosureUrl];

    priceType2 = [episodeCopy priceType];
    [v23 setFreePriceType:priceType2];

    entitledPriceType = [episodeCopy entitledPriceType];
    [v23 setEntitledPriceType:entitledPriceType];

    entitledTranscriptIdentifier = [episodeCopy entitledTranscriptIdentifier];
    [v23 setEntitledTranscriptIdentifier:entitledTranscriptIdentifier];

    freeTranscriptIdentifier = [episodeCopy freeTranscriptIdentifier];
    [v23 setFreeTranscriptIdentifier:freeTranscriptIdentifier];

    entitledTranscriptSnippet = [episodeCopy entitledTranscriptSnippet];
    [v23 setEntitledTranscriptSnippet:entitledTranscriptSnippet];

    freeTranscriptSnippet = [episodeCopy freeTranscriptSnippet];
    [v23 setFreeTranscriptSnippet:freeTranscriptSnippet];

    entitledTranscriptProvider = [episodeCopy entitledTranscriptProvider];
    [v23 setEntitledTranscriptProvider:entitledTranscriptProvider];

    freeTranscriptProvider = [episodeCopy freeTranscriptProvider];
    [v23 setFreeTranscriptProvider:freeTranscriptProvider];

    if (os_feature_enabled_pando_chapters())
    {
      v120 = subscriptionActive;
      chapters = [episodeCopy chapters];
      if (chapters && (v50 = chapters, [episodeCopy chapters], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "count"), v51, v23 = v121, v50, v52))
      {
        v115 = isEntitled;
        v116 = enclosureURL;
        v117 = priceType;
        v118 = newCopy;
        v53 = _MTLogCategoryFeedUpdateIngester();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          uuid5 = [v121 uuid];
          chapters2 = [episodeCopy chapters];
          v56 = [chapters2 count];
          *buf = 138543618;
          v128 = uuid5;
          v129 = 2048;
          v130 = v56;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ - Ingesting %lu chapters.", buf, 0x16u);

          v23 = v121;
        }

        [(MTFeedIngester *)self unsafeDeleteChaptersForEpisode:v23];
        v57 = objc_opt_new();
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v119 = episodeCopy;
        chapters3 = [episodeCopy chapters];
        v59 = [chapters3 countByEnumeratingWithState:&v122 objects:v126 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v123;
          do
          {
            for (i = 0; i != v60; i = i + 1)
            {
              if (*v123 != v61)
              {
                objc_enumerationMutation(chapters3);
              }

              v63 = *(*(&v122 + 1) + 8 * i);
              v64 = [(PFChapterIngester *)self->_chapterIngester unsafeIngestFeedChapter:v63 withManagedObjectContext:self->_ctx];
              v65 = v64;
              if (v64)
              {
                [v64 setEpisode:v23];
                [v57 addObject:v65];
                v66 = _MTLogCategoryFeedUpdateIngester();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  uuid6 = [v23 uuid];
                  v68 = [v65 id];
                  *buf = 138543618;
                  v128 = uuid6;
                  v129 = 2112;
                  v130 = v68;
                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ - Related chapter (%@) to episode.", buf, 0x16u);

                  v23 = v121;
                }
              }

              else
              {
                v66 = _MTLogCategoryFeedUpdateIngester();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  uuid7 = [v23 uuid];
                  v70 = [v63 id];
                  *buf = 138543618;
                  v128 = uuid7;
                  v129 = 2112;
                  v130 = v70;
                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ - Could not ingest chapter (%@) for episode.", buf, 0x16u);

                  v23 = v121;
                }
              }
            }

            v60 = [chapters3 countByEnumeratingWithState:&v122 objects:v126 count:16];
          }

          while (v60);
        }

        v71 = _MTLogCategoryFeedUpdateIngester();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          uuid8 = [v23 uuid];
          v73 = [v57 count];
          *buf = 138543618;
          v128 = uuid8;
          v129 = 2048;
          v130 = v73;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished ingesting %lu chapters.", buf, 0x16u);

          v23 = v121;
        }

        v74 = [v57 copy];
        [v23 setChapters:v74];

        episodeCopy = v119;
        chapterSource = [v119 chapterSource];
        [v23 setChapterSource:chapterSource];

        newCopy = v118;
        enclosureURL = v116;
        priceType = v117;
        isEntitled = v115;
      }

      else
      {
        v76 = _MTLogCategoryFeedUpdateIngester();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          uuid9 = [v23 uuid];
          *buf = 138543362;
          v128 = uuid9;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ - Show has no chapters.", buf, 0xCu);

          v23 = v121;
        }

        [(MTFeedIngester *)self unsafeDeleteChaptersForEpisode:v23];
        v78 = objc_opt_new();
        [v23 setChapters:v78];

        [v23 setChapterSource:0];
      }

      subscriptionActive = v120;
    }

    if (subscriptionActive)
    {
      [episodeCopy entitledDuration];
      if (v79 > 0.0)
      {
        [episodeCopy entitledDuration];
        [v23 setDuration:?];
      }

      entitledEnclosureURL2 = [episodeCopy entitledEnclosureURL];

      if (entitledEnclosureURL2)
      {
        entitledEnclosureURL3 = [episodeCopy entitledEnclosureURL];
        [v23 setEnclosureURL:entitledEnclosureURL3];
      }

      entitledPriceType2 = [episodeCopy entitledPriceType];
      [v23 setPriceType:entitledPriceType2];

      entitledTranscriptIdentifier2 = [episodeCopy entitledTranscriptIdentifier];
    }

    else
    {
      [v23 freeDuration];
      if (v84 > 0.0 && [v23 allowsDurationUpdateFromSource:6])
      {
        [v23 freeDuration];
        [v23 setDuration:?];
      }

      freeEnclosureURL = [v23 freeEnclosureURL];
      [v23 setEnclosureURL:freeEnclosureURL];

      freePriceType = [v23 freePriceType];
      [v23 setPriceType:freePriceType];

      entitledTranscriptIdentifier2 = [v23 freeTranscriptIdentifier];
    }

    v87 = entitledTranscriptIdentifier2;
    [v23 setTranscriptIdentifier:entitledTranscriptIdentifier2];

    [(MTFeedIngester *)self _handleAttributesAndRedownloadOnPriceTypeChangeIfNeeded:v23 isNewEpisodeToCurrentDevice:newCopy oldIsEntitled:isEntitled oldEnclosureURL:enclosureURL oldPriceType:priceType];
    if (newCopy)
    {
      [v23 updateEntitlementState];
      v88 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        uuid10 = [v23 uuid];
        entitlementState = [v121 entitlementState];
        *buf = 138543618;
        v128 = uuid10;
        v129 = 2048;
        v130 = entitlementState;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%{public}@ - set entitlement state for inserted episode to %lld for new episode from unsafeIngestEpisode", buf, 0x16u);

        v23 = v121;
      }
    }

    pubDate = [episodeCopy pubDate];
    [pubDate timeIntervalSinceReferenceDate];
    v93 = v92;
    [(MTPodcast *)self->_localPodcast addedDate];
    v95 = v94;

    if (newCopy)
    {
      if (v93 >= v95)
      {
        if ([v23 isEntitled])
        {
          isDark = [(MTPodcast *)self->_localPodcast isDark];
          darkCount = [(MTPodcast *)self->_localPodcast darkCount];
          [(MTPodcast *)self->_localPodcast setDarkCount:darkCount + 1];
          v98 = darkCount + 1;
          v23 = v121;
          [(MTPodcast *)self->_localPodcast setDarkCountLocal:v98];
          [(MTPodcast *)self->_localPodcast markPlaylistsForUpdate];
          if (isDark != [(MTPodcast *)self->_localPodcast isDark])
          {
            isDark2 = [(MTPodcast *)self->_localPodcast isDark];
            latestExitFromDarkDownloads = [(MTPodcast *)self->_localPodcast latestExitFromDarkDownloads];
            if (latestExitFromDarkDownloads)
            {
              v101 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:isDark isDark:isDark2 reason:2 previousExit:latestExitFromDarkDownloads];
            }

            else
            {
              +[NSDate now];
              v103 = v102 = enclosureURL;
              v101 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:isDark isDark:isDark2 reason:2 previousExit:v103];

              enclosureURL = v102;
            }

            v104 = objc_opt_new();
            [v104 sendEvent:v101];

            v23 = v121;
          }
        }
      }
    }

    [v23 resolveAvailabilityDate];
    [v23 firstTimeAvailable];
    v106 = v105;
    [(MTFeedIngester *)self latestEpisodeDate];
    if (v106 > v107 && [v23 isMedia])
    {
      [v23 firstTimeAvailable];
      self->_latestEpisodeDate = v108;
    }

    updatedEpisodeUUIDs = self->_updatedEpisodeUUIDs;
    [v23 uuid];
    v110 = v33 = v23;
    [(NSMutableSet *)updatedEpisodeUUIDs addObject:v110];

    v111 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      uuid11 = [v33 uuid];
      title2 = [v33 title];
      *buf = 138543874;
      v128 = uuid11;
      v129 = 2112;
      v130 = title2;
      v131 = 1024;
      LODWORD(v132) = newCopy;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ updated episode from feed - isNew %x", buf, 0x1Cu);
    }

    ++self->_itemsIngested;
    v34 = v33;
  }

  else
  {
    priceType = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(priceType, OS_LOG_TYPE_ERROR))
    {
      podcast4 = [v121 podcast];
      uuid12 = [podcast4 uuid];
      podcast5 = [v121 podcast];
      title3 = [podcast5 title];
      uuid13 = [(MTPodcast *)self->_localPodcast uuid];
      title4 = [(MTPodcast *)self->_localPodcast title];
      *buf = 138544130;
      v128 = uuid12;
      v129 = 2112;
      v130 = title3;
      v131 = 2114;
      v132 = uuid13;
      v133 = 2112;
      v134 = title4;
      _os_log_impl(&_mh_execute_header, priceType, OS_LOG_TYPE_ERROR, "%{public}@ - %@ podcast for episode does not match podcast for ingester %{public}@ - %@", buf, 0x2Au);

      v33 = v121;
      v34 = 0;
    }

    else
    {
      v34 = 0;
      v33 = v121;
    }
  }

  return v34;
}

- (void)unsafeDeleteChaptersForEpisode:(id)episode
{
  episodeCopy = episode;
  chapters = [episodeCopy chapters];
  v6 = chapters;
  if (chapters && [chapters count])
  {
    v7 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [episodeCopy uuid];
      *buf = 138543618;
      v16 = uuid;
      v17 = 2048;
      v18 = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Deleted %lu chapters.", buf, 0x16u);
    }

    ctx = self->_ctx;
    v14 = 0;
    [(NSManagedObjectContext *)ctx unsafeDeleteChapters:v6 error:&v14];
    v10 = v14;
    if (v10)
    {
      v11 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [episodeCopy uuid];
        localizedDescription = [v10 localizedDescription];
        *buf = 138543618;
        v16 = uuid2;
        v17 = 2112;
        v18 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Unable to delete chapters with error %@.", buf, 0x16u);
      }
    }
  }
}

- (void)unsafeDeleteFeedDeletedEpisode:(id)episode
{
  episodeCopy = episode;
  v5 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(MTPodcast *)self->_localPodcast uuid];
    title = [(MTPodcast *)self->_localPodcast title];
    uuid2 = [episodeCopy uuid];
    title2 = [episodeCopy title];
    v10 = 138544130;
    v11 = uuid;
    v12 = 2112;
    v13 = title;
    v14 = 2114;
    v15 = uuid2;
    v16 = 2112;
    v17 = title2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ deleting episode removed from feed %{public}@ - %@", &v10, 0x2Au);
  }

  [episodeCopy setFeedDeleted:1];
  self->_shouldMarkPlaylistsForUpdate = 1;
  ++self->_itemsDeleted;
}

- (BOOL)unsafeIngestShow:(id)show
{
  showCopy = show;
  if (!showCopy)
  {
    updatedFeedURL = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(updatedFeedURL, OS_LOG_TYPE_ERROR))
    {
      uuid = [(MTPodcast *)self->_localPodcast uuid];
      *buf = 138543362;
      v114 = uuid;
      v41 = "%{public}@ failed to update because feed was nil";
LABEL_27:
      _os_log_impl(&_mh_execute_header, updatedFeedURL, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
    }

LABEL_28:
    v42 = 0;
    goto LABEL_73;
  }

  if (![(MTFeedIngester *)self _localPodcastExists])
  {
    updatedFeedURL = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(updatedFeedURL, OS_LOG_TYPE_ERROR))
    {
      uuid = [showCopy podcastStoreId];
      *buf = 138412290;
      v114 = uuid;
      v41 = "%@ - could not ingest feed podcast because ingester local podcast does not exist";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  podcastStoreId = [showCopy podcastStoreId];
  longLongValue = [podcastStoreId longLongValue];

  if ([MTStoreIdentifier isNotEmpty:longLongValue])
  {
    [(MTPodcast *)self->_localPodcast setStoreCollectionId:longLongValue];
  }

  updatedFeedURL = [showCopy updatedFeedURL];
  if ([MTDBUtil isSupportedUrlString:updatedFeedURL])
  {
    currentFeedURL = [(MTPodcast *)self->_localPodcast currentFeedURL];
    absoluteString = [currentFeedURL absoluteString];
    v10 = [updatedFeedURL isEqualToString:absoluteString];

    if ((v10 & 1) == 0)
    {
      v11 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        currentFeedURL2 = [(MTPodcast *)self->_localPodcast currentFeedURL];
        absoluteString2 = [currentFeedURL2 absoluteString];
        *buf = 134218498;
        v114 = longLongValue;
        v115 = 2112;
        v116 = updatedFeedURL;
        v117 = 2112;
        v118 = absoluteString2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%lld Found different updatedFeedURL %@ from %@", buf, 0x20u);
      }

      [(MTPodcast *)self->_localPodcast setUpdatedFeedURL:updatedFeedURL];
      self->_didUpdateFeedUrl = 1;
    }
  }

  resolvedFeedURL = [showCopy resolvedFeedURL];
  if ([resolvedFeedURL length])
  {
    currentFeedURL3 = [(MTPodcast *)self->_localPodcast currentFeedURL];
    absoluteString3 = [currentFeedURL3 absoluteString];
    v17 = [resolvedFeedURL isEqualToString:absoluteString3];

    if ((v17 & 1) == 0)
    {
      v18 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        currentFeedURL4 = [(MTPodcast *)self->_localPodcast currentFeedURL];
        absoluteString4 = [currentFeedURL4 absoluteString];
        *buf = 134218498;
        v114 = longLongValue;
        v115 = 2112;
        v116 = resolvedFeedURL;
        v117 = 2112;
        v118 = absoluteString4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%lld Found different feedURL %@ from %@", buf, 0x20u);
      }

      [(MTPodcast *)self->_localPodcast setUpdatedFeedURL:resolvedFeedURL];
      self->_didUpdateFeedUrl = 1;
    }
  }

  localPodcast = self->_localPodcast;
  title = [showCopy title];
  stringByStrippingHTML = [title stringByStrippingHTML];
  stringByRemovingNewlineCharacters = [stringByStrippingHTML stringByRemovingNewlineCharacters];
  [(MTPodcast *)localPodcast setTitle:stringByRemovingNewlineCharacters];

  v25 = self->_localPodcast;
  author = [showCopy author];
  stringByStrippingHTML2 = [author stringByStrippingHTML];
  [(MTPodcast *)v25 setAuthor:stringByStrippingHTML2];

  v28 = self->_localPodcast;
  provider = [showCopy provider];
  stringByStrippingHTML3 = [provider stringByStrippingHTML];
  [(MTPodcast *)v28 setProvider:stringByStrippingHTML3];

  -[MTPodcast setIsExplicit:](self->_localPodcast, "setIsExplicit:", [showCopy isExplicit]);
  v31 = self->_localPodcast;
  feedDescription = [showCopy feedDescription];
  [(MTPodcast *)v31 setItemDescription:feedDescription];

  showType = [showCopy showType];
  v34 = [MTPodcast showTypeFromString:showType];
  showTypeInFeed = [(MTPodcast *)self->_localPodcast showTypeInFeed];
  v36 = [MTPodcast showTypeFromString:showTypeInFeed];

  v38 = v34 == 2 && v36 != 2;
  v39 = v34 == 1 && [(MTPodcast *)self->_localPodcast showTypeSetting]== 2;
  subscribed = [(MTPodcast *)self->_localPodcast subscribed];
  [(MTPodcast *)self->_localPodcast setShowTypeInFeed:showType];
  if (v38 || (subscribed & 1) == 0 || v39)
  {
    [(MTPodcast *)self->_localPodcast setShowTypeSetting:v34];
  }

  v44 = self->_localPodcast;
  category = [showCopy category];
  [(MTPodcast *)v44 setCategory:category];

  v46 = self->_localPodcast;
  webpageURL = [showCopy webpageURL];
  [(MTPodcast *)v46 setWebpageURL:webpageURL];

  v48 = self->_localPodcast;
  shareURL = [showCopy shareURL];
  [(MTPodcast *)v48 setStoreCleanURL:shareURL];

  v50 = self->_localPodcast;
  showSpecificUpsellCopy = [showCopy showSpecificUpsellCopy];
  [(MTPodcast *)v50 setShowSpecificUpsellCopy:showSpecificUpsellCopy];

  -[MTPodcast setOfferTypes:](self->_localPodcast, "setOfferTypes:", [objc_opt_class() _offerTypesAsFlagBits:showCopy]);
  displayType = [showCopy displayType];
  if (displayType)
  {
    v53 = displayType;
    displayType2 = [showCopy displayType];
    isNotEmpty = [displayType2 isNotEmpty];

    if (isNotEmpty)
    {
      displayType3 = [showCopy displayType];
      [(MTPodcast *)self->_localPodcast setDisplayType:displayType3];
    }
  }

  channelItem = [showCopy channelItem];

  if (channelItem)
  {
    channelItem2 = [showCopy channelItem];
    v59 = [MTChannel createOrFindChannelFromFeedChannelItem:channelItem2 personalizedRequest:0 context:self->_ctx];

    [(MTPodcast *)self->_localPodcast setChannel:v59];
    v60 = -[NSManagedObjectContext unsafeInterestForAdamID:](self->_ctx, "unsafeInterestForAdamID:", [v59 storeId]);
    if (v60)
    {
      [v59 setInterest:v60];
      [v60 setChannel:v59];
    }
  }

  else
  {
    [(MTPodcast *)self->_localPodcast setChannel:0];
  }

  [(MTFeedIngester *)self _setPodcastArtwork:showCopy];
  categories = [showCopy categories];
  if (categories && (v62 = categories, [showCopy categories], v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "count"), v63, v62, v64))
  {
    v100 = showType;
    v101 = resolvedFeedURL;
    v102 = updatedFeedURL;
    v65 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(MTPodcast *)self->_localPodcast uuid];
      categories2 = [showCopy categories];
      v68 = [categories2 count];
      *buf = 138543618;
      v114 = uuid2;
      v115 = 2048;
      v116 = v68;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ - Ingesting %lu categories.", buf, 0x16u);
    }

    v69 = objc_opt_new();
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v99 = showCopy;
    categories3 = [showCopy categories];
    v71 = [categories3 countByEnumeratingWithState:&v107 objects:v112 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v108;
      do
      {
        for (i = 0; i != v72; i = i + 1)
        {
          if (*v108 != v73)
          {
            objc_enumerationMutation(categories3);
          }

          v75 = [(MTCategoryIngesterProtocol *)self->_categoryIngester unsafeIngestFeedCategory:*(*(&v107 + 1) + 8 * i) ctx:self->_ctx];
          if (v75)
          {
            [v69 addObject:v75];
            podcasts = [v75 podcasts];
            v77 = [podcasts setByAddingObject:self->_localPodcast];
            [v75 setPodcasts:v77];

            v78 = _MTLogCategoryFeedUpdateIngester();
            if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_56;
            }

            uuid3 = [(MTPodcast *)self->_localPodcast uuid];
            adamID = [v75 adamID];
            *buf = 138543618;
            v114 = uuid3;
            v115 = 2048;
            v116 = adamID;
            v81 = v78;
            v82 = "%{public}@ - Related category to show. Category ID: %llu";
          }

          else
          {
            v78 = _MTLogCategoryFeedUpdateIngester();
            if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_56;
            }

            uuid3 = [(MTPodcast *)self->_localPodcast uuid];
            adamID2 = [0 adamID];
            *buf = 138543618;
            v114 = uuid3;
            v115 = 2048;
            v116 = adamID2;
            v81 = v78;
            v82 = "%{public}@ - Could not ingest category for show. Category ID: %llu";
          }

          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, v82, buf, 0x16u);

LABEL_56:
        }

        v72 = [categories3 countByEnumeratingWithState:&v107 objects:v112 count:16];
      }

      while (v72);
    }

    [(MTPodcast *)self->_localPodcast setCategories:v69];
    firstObject = [v69 firstObject];
    [(MTPodcast *)self->_localPodcast setPrimaryCategory:firstObject];

    showCopy = v99;
  }

  else
  {
    v85 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      uuid4 = [(MTPodcast *)self->_localPodcast uuid];
      *buf = 138543362;
      v114 = uuid4;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%{public}@ - Show has no categories. Disassociating categories if needed.", buf, 0xCu);
    }

    v87 = objc_opt_new();
    [(MTPodcast *)self->_localPodcast setCategories:v87];

    [(MTPodcast *)self->_localPodcast setPrimaryCategory:0];
    v69 = [(NSManagedObjectContext *)self->_ctx unsafeCategoriesWithRelationshipToPodcastAdamID:[(MTPodcast *)self->_localPodcast storeCollectionId]];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v88 = [v69 countByEnumeratingWithState:&v103 objects:v111 count:16];
    if (!v88)
    {
      goto LABEL_70;
    }

    v89 = v88;
    v100 = showType;
    v101 = resolvedFeedURL;
    v102 = updatedFeedURL;
    v90 = showCopy;
    v91 = *v104;
    do
    {
      for (j = 0; j != v89; j = j + 1)
      {
        if (*v104 != v91)
        {
          objc_enumerationMutation(v69);
        }

        v93 = *(*(&v103 + 1) + 8 * j);
        podcasts2 = [v93 podcasts];
        v95 = [NSMutableSet setWithSet:podcasts2];

        [v95 removeObject:self->_localPodcast];
        [v93 setPodcasts:v95];
      }

      v89 = [v69 countByEnumeratingWithState:&v103 objects:v111 count:16];
    }

    while (v89);
    showCopy = v90;
  }

  resolvedFeedURL = v101;
  updatedFeedURL = v102;
  showType = v100;
LABEL_70:

  v96 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    uuid5 = [(MTPodcast *)self->_localPodcast uuid];
    *buf = 138543362;
    v114 = uuid5;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%{public}@ - updated podcast from feed", buf, 0xCu);
  }

  v42 = 1;
LABEL_73:

  return v42;
}

- (void)unsafeIngestPage
{
  [(MTFeedIngester *)self _reportMetrics];
  localPodcast = self->_localPodcast;
  +[NSDate timeIntervalSinceReferenceDate];
  [(MTPodcast *)localPodcast setUpdatedDate:?];
  [(MTPodcast *)self->_localPodcast setConsecutiveFeedFetchErrors:0];
  latestEpisodeDate = self->_latestEpisodeDate;
  [(MTPodcast *)self->_localPodcast feedChangedDate];
  if (latestEpisodeDate > v5)
  {
    [(MTPodcast *)self->_localPodcast setFeedChangedDate:self->_latestEpisodeDate];
  }

  [(MTFeedIngester *)self _updatePodcastArtworksIfNeeded];
  v6 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(MTPodcast *)self->_localPodcast uuid];
    v8 = 138543362;
    v9 = uuid;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - finished ingestion of page of podcast from feed", &v8, 0xCu);
  }
}

- (void)unsafeFinalizeIngestion
{
  [(MTFeedIngester *)self unsafeIngestPage];
  if (self->_shouldMarkPlaylistsForUpdate)
  {
    [(MTPodcast *)self->_localPodcast markPlaylistsForUpdate];
  }

  [MTFeedIngester _unsafeFinalizeIngestion:self->_localPodcast episodeLevelCalculator:self->_episodeLevelCalculator storeInfoUpdater:self->_storeInfoUpdater updateAverageCalculator:self->_updateAverageCalculator ctx:self->_ctx didUpdateAnyEpisodes:[(NSMutableSet *)self->_updatedEpisodeUUIDs count]!= 0 newlyEntitledEpisodeUUIDs:self->_newlyEntitledEpisodeUUIDs];
}

+ (void)_unsafeFinalizeIngestion:(id)ingestion episodeLevelCalculator:(id)calculator storeInfoUpdater:(id)updater updateAverageCalculator:(id)averageCalculator ctx:(id)ctx didUpdateAnyEpisodes:(BOOL)episodes newlyEntitledEpisodeUUIDs:(id)ds
{
  episodesCopy = episodes;
  ingestionCopy = ingestion;
  calculatorCopy = calculator;
  updaterCopy = updater;
  averageCalculatorCopy = averageCalculator;
  ctxCopy = ctx;
  dsCopy = ds;
  if (episodesCopy)
  {
    [MTFeedIngester _recalculateEpisodeLevel:ingestionCopy episodeLevelCalculator:calculatorCopy ctx:ctxCopy];
  }

  else
  {
    v20 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      uuid = [ingestionCopy uuid];
      *buf = 138543362;
      v39 = uuid;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@ - no episodes processed, skipping episode level recalculation", buf, 0xCu);
    }
  }

  newestEpisodeByAvailabiltyTime = [ingestionCopy newestEpisodeByAvailabiltyTime];
  v23 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    uuid2 = [ingestionCopy uuid];
    [ingestionCopy title];
    v36 = calculatorCopy;
    v25 = v37 = updaterCopy;
    [newestEpisodeByAvailabiltyTime uuid];
    v26 = dsCopy;
    v27 = ctxCopy;
    v29 = v28 = averageCalculatorCopy;
    title = [newestEpisodeByAvailabiltyTime title];
    storeTrackId = [newestEpisodeByAvailabiltyTime storeTrackId];
    *buf = 138544386;
    v39 = uuid2;
    v40 = 2112;
    v41 = v25;
    v42 = 2114;
    v43 = v29;
    v44 = 2112;
    v45 = title;
    v46 = 2048;
    v47 = storeTrackId;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ marking latest episode as unplayed if needed %{public}@ - %@ - %lld", buf, 0x34u);

    averageCalculatorCopy = v28;
    ctxCopy = v27;
    dsCopy = v26;

    calculatorCopy = v36;
    updaterCopy = v37;
  }

  [MTFeedIngester _markLatestEpisodeAsUnplayedIfNeeded:ingestionCopy latestEpisodeInPodcast:newestEpisodeByAvailabiltyTime];
  [MTFeedIngester _sendNotificationForNewlyEntitledEpisodesIfNeeded:ingestionCopy latestEpisodeInPodcast:newestEpisodeByAvailabiltyTime newlyEntitledEpisodeUUIDs:dsCopy ctx:ctxCopy];
  [newestEpisodeByAvailabiltyTime firstTimeAvailable];
  [ingestionCopy setLatestEpisodeAvailabilityTime:?];
  [ingestionCopy setAuthenticatedDark:0];
  [ingestionCopy setFeedUpdateNeedsRetry:0];
  if (+[MTStoreIdentifier isEmpty:](MTStoreIdentifier, "isEmpty:", [ingestionCopy storeCollectionId]))
  {
    uuid3 = [ingestionCopy uuid];
    [updaterCopy updateStoreInfoForPodcast:uuid3];
  }

  latestExitFromDarkDownloads = [ingestionCopy latestExitFromDarkDownloads];
  if (latestExitFromDarkDownloads)
  {
    [ingestionCopy suppressEpisodesWithBasisDate:latestExitFromDarkDownloads];
  }

  v34 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    uuid4 = [ingestionCopy uuid];
    *buf = 138543362;
    v39 = uuid4;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ - finished ingestion of podcast from feed", buf, 0xCu);
  }
}

- (BOOL)_localPodcastExists
{
  localPodcast = self->_localPodcast;
  if (localPodcast && ![(MTPodcast *)localPodcast isDeleted])
  {
    return 1;
  }

  v4 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    uuid = [(MTPodcast *)self->_localPodcast uuid];
    v7 = 138543362;
    v8 = uuid;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ - local podcast was deleted. Cannot ingest", &v7, 0xCu);
  }

  return 0;
}

- (void)_setAttributesOfLocalEpisode:(id)episode feedEpisode:(id)feedEpisode
{
  episodeCopy = episode;
  feedEpisodeCopy = feedEpisode;
  [episodeCopy setFeedDeleted:0];
  guid = [feedEpisodeCopy guid];
  [episodeCopy setGuid:guid];

  episodeStoreId = [feedEpisodeCopy episodeStoreId];
  longLongValue = [episodeStoreId longLongValue];

  if ([MTStoreIdentifier isNotEmpty:longLongValue])
  {
    [episodeCopy setStoreTrackId:longLongValue];
  }

  title = [feedEpisodeCopy title];
  stringByStrippingHTML = [title stringByStrippingHTML];

  [episodeCopy setTitle:stringByStrippingHTML];
  itunesTitle = [feedEpisodeCopy itunesTitle];
  [episodeCopy setItunesTitle:itunesTitle];

  configuration = [(MTFeedIngester *)self configuration];
  LODWORD(itunesTitle) = [configuration usesCleanEpisodeTitles];

  if (itunesTitle)
  {
    podcast = [episodeCopy podcast];
    title2 = [podcast title];
    v16 = [stringByStrippingHTML cleanedTitleStringWithPrefix:title2];
    [episodeCopy setCleanedTitle:v16];
  }

  itemDescription = [feedEpisodeCopy itemDescription];
  [episodeCopy setItemDescription:itemDescription];

  itemSummary = [feedEpisodeCopy itemSummary];
  [episodeCopy setItunesSubtitle:itemSummary];

  author = [feedEpisodeCopy author];
  [episodeCopy setAuthor:author];

  [episodeCopy setByteSize:{objc_msgSend(feedEpisodeCopy, "byteSize")}];
  v20 = [feedEpisodeCopy uti];
  [episodeCopy setUti:v20];

  pubDate = [feedEpisodeCopy pubDate];
  if (pubDate)
  {
    v22 = pubDate;
    [episodeCopy pubDate];
    v24 = v23;
    pubDate2 = [feedEpisodeCopy pubDate];
    [pubDate2 timeIntervalSinceReferenceDate];
    v27 = v26;

    if (v24 != v27)
    {
      pubDate3 = [feedEpisodeCopy pubDate];
      [pubDate3 timeIntervalSinceReferenceDate];
      [episodeCopy setPubDate:?];
    }
  }

  firstTimeAvailableAsPaid = [feedEpisodeCopy firstTimeAvailableAsPaid];
  if (firstTimeAvailableAsPaid)
  {
    v30 = firstTimeAvailableAsPaid;
    [episodeCopy firstTimeAvailableAsPaid];
    v32 = v31;
    firstTimeAvailableAsPaid2 = [feedEpisodeCopy firstTimeAvailableAsPaid];
    [firstTimeAvailableAsPaid2 timeIntervalSinceReferenceDate];
    v35 = v34;

    if (v32 != v35)
    {
      firstTimeAvailableAsPaid3 = [feedEpisodeCopy firstTimeAvailableAsPaid];
      [firstTimeAvailableAsPaid3 timeIntervalSinceReferenceDate];
      [episodeCopy setFirstTimeAvailableAsPaid:?];
    }
  }

  firstTimeAvailableAsFree = [feedEpisodeCopy firstTimeAvailableAsFree];
  if (firstTimeAvailableAsFree)
  {
    v38 = firstTimeAvailableAsFree;
    [episodeCopy firstTimeAvailableAsFree];
    v40 = v39;
    firstTimeAvailableAsFree2 = [feedEpisodeCopy firstTimeAvailableAsFree];
    [firstTimeAvailableAsFree2 timeIntervalSinceReferenceDate];
    v43 = v42;

    if (v40 != v43)
    {
      firstTimeAvailableAsFree3 = [feedEpisodeCopy firstTimeAvailableAsFree];
      [firstTimeAvailableAsFree3 timeIntervalSinceReferenceDate];
      [episodeCopy setFirstTimeAvailableAsFree:?];
    }
  }

  if ([feedEpisodeCopy trackNum])
  {
    [episodeCopy setTrackNum:{objc_msgSend(feedEpisodeCopy, "trackNum")}];
  }

  [episodeCopy setExplicit:{objc_msgSend(feedEpisodeCopy, "isExplicit")}];
  episodeType = [feedEpisodeCopy episodeType];
  [episodeCopy setEpisodeType:episodeType];

  episodeNumber = [episodeCopy episodeNumber];
  if (episodeNumber != [feedEpisodeCopy episodeNumber])
  {
    [episodeCopy setEpisodeNumber:{objc_msgSend(feedEpisodeCopy, "episodeNumber")}];
  }

  seasonNumber = [episodeCopy seasonNumber];
  if (seasonNumber != [feedEpisodeCopy seasonNumber])
  {
    [episodeCopy setSeasonNumber:{objc_msgSend(feedEpisodeCopy, "seasonNumber")}];
  }

  webpageURL = [feedEpisodeCopy webpageURL];
  [episodeCopy setWebpageURL:webpageURL];

  [episodeCopy setIsHidden:0];
  artworkTemplateURL = [feedEpisodeCopy artworkTemplateURL];
  [episodeCopy setArtworkTemplateURL:artworkTemplateURL];

  [feedEpisodeCopy artworkWidth];
  [episodeCopy setArtworkWidth:?];
  [feedEpisodeCopy artworkHeight];
  [episodeCopy setArtworkHeight:?];
  artworkBackgroundColor = [feedEpisodeCopy artworkBackgroundColor];
  [episodeCopy setArtworkBackgroundColor:artworkBackgroundColor];

  artworkTextPrimaryColor = [feedEpisodeCopy artworkTextPrimaryColor];
  [episodeCopy setArtworkTextPrimaryColor:artworkTextPrimaryColor];

  artworkTextSecondaryColor = [feedEpisodeCopy artworkTextSecondaryColor];
  [episodeCopy setArtworkTextSecondaryColor:artworkTextSecondaryColor];

  artworkTextTertiaryColor = [feedEpisodeCopy artworkTextTertiaryColor];
  [episodeCopy setArtworkTextTertiaryColor:artworkTextTertiaryColor];

  artworkTextQuaternaryColor = [feedEpisodeCopy artworkTextQuaternaryColor];
  [episodeCopy setArtworkTextQuaternaryColor:artworkTextQuaternaryColor];
}

- (void)_setPodcastArtwork:(id)artwork
{
  artworkCopy = artwork;
  imageURL = [artworkCopy imageURL];
  if ([imageURL length])
  {
    [artworkCopy imageURL];
  }

  else
  {
    [artworkCopy globalImageURL];
  }
  v6 = ;

  if ([objc_opt_class() _fetchSmallestPicturePossible])
  {
    v7 = +[MTResizedArtworkURLProvider sharedInstance];
    v8 = [v7 resizedArtworkURLString:v6 withDimension:{objc_msgSend(objc_opt_class(), "_maxArtworkSize")}];

    v6 = v8;
  }

  if (v6)
  {
    imageURL2 = [(MTPodcast *)self->_localPodcast imageURL];
    v10 = [imageURL2 isEqualToString:v6];

    if ((v10 & 1) == 0)
    {
      v11 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [(MTPodcast *)self->_localPodcast uuid];
        title = [(MTPodcast *)self->_localPodcast title];
        v27 = 138543874;
        v28 = uuid;
        v29 = 2112;
        v30 = title;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ artwork url did change %@", &v27, 0x20u);
      }

      [(MTPodcast *)self->_localPodcast setNeedsArtworkUpdate:1];
      v14 = +[PUIFeedManagerArtworkBridge shared];
      [v14 invalidateArtworkForPodcast:self->_localPodcast];
    }
  }

  [(MTPodcast *)self->_localPodcast setImageURL:v6];
  artworkTemplateURL = [artworkCopy artworkTemplateURL];
  [(MTPodcast *)self->_localPodcast setArtworkTemplateURL:artworkTemplateURL];

  artworkPrimaryColor = [artworkCopy artworkPrimaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkPrimaryColor:artworkPrimaryColor];

  artworkTextPrimaryColor = [artworkCopy artworkTextPrimaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkTextPrimaryColor:artworkTextPrimaryColor];

  artworkTextSecondaryColor = [artworkCopy artworkTextSecondaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkTextSecondaryColor:artworkTextSecondaryColor];

  artworkTextTertiaryColor = [artworkCopy artworkTextTertiaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkTextTertiaryColor:artworkTextTertiaryColor];

  artworkTextQuaternaryColor = [artworkCopy artworkTextQuaternaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkTextQuaternaryColor:artworkTextQuaternaryColor];

  uberBackgroundImageURL = [artworkCopy uberBackgroundImageURL];
  [(MTPodcast *)self->_localPodcast setUberBackgroundImageURL:uberBackgroundImageURL];

  uberBackgroundJoeColor = [artworkCopy uberBackgroundJoeColor];
  [(MTPodcast *)self->_localPodcast setUberBackgroundJoeColor:uberBackgroundJoeColor];

  uberArtworkTextPrimaryColor = [artworkCopy uberArtworkTextPrimaryColor];
  [(MTPodcast *)self->_localPodcast setUberArtworkTextPrimaryColor:uberArtworkTextPrimaryColor];

  uberArtworkTextSecondaryColor = [artworkCopy uberArtworkTextSecondaryColor];
  [(MTPodcast *)self->_localPodcast setUberArtworkTextSecondaryColor:uberArtworkTextSecondaryColor];

  uberArtworkTextTertiaryColor = [artworkCopy uberArtworkTextTertiaryColor];
  [(MTPodcast *)self->_localPodcast setUberArtworkTextTertiaryColor:uberArtworkTextTertiaryColor];

  uberArtworkTextQuaternaryColor = [artworkCopy uberArtworkTextQuaternaryColor];
  [(MTPodcast *)self->_localPodcast setUberArtworkTextQuaternaryColor:uberArtworkTextQuaternaryColor];
}

- (void)_reportMetrics
{
  v21 = +[MTFeedUpdateMetricsDataKey newEpisodeCount];
  v26[0] = v21;
  v20 = [NSNumber numberWithInteger:self->_itemsInserted];
  v27[0] = v20;
  v19 = +[MTFeedUpdateMetricsDataKey deletedEpisodeCount];
  v26[1] = v19;
  v18 = [NSNumber numberWithInteger:self->_itemsDeleted];
  v27[1] = v18;
  v17 = +[MTFeedUpdateMetricsDataKey updatedEpisodeCount];
  v26[2] = v17;
  v16 = [NSNumber numberWithInteger:self->_itemsIngested - self->_itemsInserted];
  v27[2] = v16;
  v15 = +[MTFeedUpdateMetricsDataKey totalEpisodeCount];
  v26[3] = v15;
  v3 = [NSNumber numberWithInteger:self->_itemsDeleted + self->_itemsIngested];
  v27[3] = v3;
  v4 = +[MTFeedUpdateMetricsDataKey podcastStoreId];
  v26[4] = v4;
  v5 = [NSNumber numberWithLongLong:[(MTPodcast *)self->_localPodcast storeCollectionId]];
  v27[4] = v5;
  v6 = +[MTFeedUpdateMetricsDataKey source];
  v26[5] = v6;
  v7 = [NSNumber numberWithInteger:self->_feedUpdateSource];
  v27[5] = v7;
  v8 = +[MTFeedUpdateMetricsDataKey eventId];
  v26[6] = v8;
  v27[6] = self->_updaterJobUUID;
  v9 = +[MTFeedUpdateMetricsDataKey updaterType];
  v26[7] = v9;
  v10 = +[MTFeedUpdateMetricsDataUpdaterValue sync];
  v27[7] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:8];

  v12 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(MTPodcast *)self->_localPodcast uuid];
    *buf = 138543618;
    v23 = uuid;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - processed feed page and found new episodes: %@", buf, 0x16u);
  }

  v14 = +[MTFeedUpdateMetricsAction pageParser];
  [IMMetrics recordUserAction:v14 dataSource:0 withData:v11];
}

+ (void)_recalculateEpisodeLevel:(id)level episodeLevelCalculator:(id)calculator ctx:(id)ctx
{
  levelCopy = level;
  calculatorCopy = calculator;
  ctxCopy = ctx;
  uuid = [levelCopy uuid];
  if (uuid)
  {
    v11 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      storeCollectionId = uuid;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@ - recalculating episode levels", &v13, 0xCu);
    }

    [calculatorCopy unsafeUpdateEpisodeLevelsWithShowUUID:uuid on:ctxCopy];
  }

  else
  {
    v12 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      storeCollectionId = [levelCopy storeCollectionId];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%lld - can't process episode levels, uuid missing", &v13, 0xCu);
    }
  }
}

+ (void)_markLatestEpisodeAsUnplayedIfNeeded:(id)needed latestEpisodeInPodcast:(id)podcast
{
  neededCopy = needed;
  podcastCopy = podcast;
  v7 = podcastCopy;
  if (podcastCopy)
  {
    [podcastCopy metadataTimestamp];
    if (fabs(v8) <= 2.22044605e-16 && [neededCopy subscribed])
    {
      v9 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [neededCopy uuid];
        title = [neededCopy title];
        uuid2 = [v7 uuid];
        title2 = [v7 title];
        v16 = 138544386;
        v17 = uuid;
        v18 = 2112;
        v19 = title;
        v20 = 2114;
        v21 = uuid2;
        v22 = 2112;
        v23 = title2;
        v24 = 2048;
        storeTrackId = [v7 storeTrackId];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ marking latest episode as unplayed %{public}@ - %@ - %lld", &v16, 0x34u);
      }

      [MTFeedIngester _markEpisodeAsFirstSeen:v7];
      [v7 setPlayState:2 manually:0 source:6];
      [v7 setMetadataTimestamp:0.0];
      [v7 setMetadataFirstSyncEligible:1];
    }
  }

  else
  {
    v14 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      uuid3 = [neededCopy uuid];
      v16 = 138543362;
      v17 = uuid3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@ - Could not get the latest episode. Not marking anything as unplayed.", &v16, 0xCu);
    }
  }
}

+ (void)_sendNotificationForNewlyEntitledEpisodesIfNeeded:(id)needed latestEpisodeInPodcast:(id)podcast newlyEntitledEpisodeUUIDs:(id)ds ctx:(id)ctx
{
  neededCopy = needed;
  podcastCopy = podcast;
  dsCopy = ds;
  ctxCopy = ctx;
  if ([dsCopy count])
  {
    uuid = [neededCopy uuid];
    managedObjectContext = [neededCopy managedObjectContext];
    v15 = [MTRecencyUtil upNextForPodcastUuid:uuid ctx:managedObjectContext];
    episodeUuid = [v15 episodeUuid];

    if (episodeUuid)
    {
      uuid2 = episodeUuid;
    }

    else
    {
      uuid2 = [podcastCopy uuid];
    }

    uuid6 = uuid2;
    v20 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [neededCopy uuid];
      title = [neededCopy title];
      uuid4 = [podcastCopy uuid];
      *buf = 138544130;
      v36 = uuid3;
      v37 = 2112;
      v38 = title;
      v39 = 2114;
      v40 = episodeUuid;
      v41 = 2114;
      v42 = uuid4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Up Next Episode: %{public}@. Latest Episode: %{public}@", buf, 0x2Au);
    }

    if ([dsCopy containsObject:uuid6])
    {
      title4 = [ctxCopy objectForUuid:episodeUuid entityName:kMTEpisodeEntityName];
      v24 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        [neededCopy uuid];
        v25 = v33 = podcastCopy;
        title2 = [neededCopy title];
        uuid5 = [title4 uuid];
        [title4 title];
        v28 = v34 = ctxCopy;
        isNew = [title4 isNew];
        *buf = 138544386;
        v36 = v25;
        v37 = 2112;
        v38 = title2;
        v39 = 2114;
        v40 = uuid5;
        v41 = 2112;
        v42 = v28;
        v43 = 1024;
        v44 = isNew;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Found new smart play episode from episode entitlement changed %{public}@ - %@. episode isNew: %d", buf, 0x30u);

        ctxCopy = v34;
        podcastCopy = v33;
      }

      [MTFeedIngester _markEpisodeAsFirstSeen:title4];
      [title4 setSentNotification:0];
    }

    else
    {
      title4 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(title4, OS_LOG_TYPE_DEFAULT))
      {
        [neededCopy uuid];
        v31 = v30 = ctxCopy;
        title3 = [neededCopy title];
        *buf = 138543874;
        v36 = v31;
        v37 = 2112;
        v38 = title3;
        v39 = 2114;
        v40 = uuid6;
        _os_log_impl(&_mh_execute_header, title4, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Smart Play Episode is not newly entitled. Not setting eligible for notifications: %{public}@.", buf, 0x20u);

        ctxCopy = v30;
      }
    }

    goto LABEL_15;
  }

  episodeUuid = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(episodeUuid, OS_LOG_TYPE_DEFAULT))
  {
    uuid6 = [neededCopy uuid];
    title4 = [neededCopy title];
    *buf = 138543618;
    v36 = uuid6;
    v37 = 2112;
    v38 = title4;
    _os_log_impl(&_mh_execute_header, episodeUuid, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ No newly entitled episodes. Not marking any episodes eligibile for notifications.", buf, 0x16u);
LABEL_15:
  }
}

- (void)_updatePodcastArtworksIfNeeded
{
  if (self->_imageStore && self->_imageDownloader)
  {
    if (+[PFClientUtil supportsImageStore])
    {

      [(MTFeedIngester *)self _updatePodcastArtworksIfNeeded_ImageStore];
    }

    else
    {

      [(MTFeedIngester *)self _updatePodcastArtworksIfNeeded_ImageProvider];
    }
  }

  else
  {
    v3 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Image downloader and image store are nil, artwork won't be downloaded", v4, 2u);
    }
  }
}

- (void)_updatePodcastArtworksIfNeeded_ImageProvider
{
  localPodcast = self->_localPodcast;
  if (localPodcast)
  {
    uuid = [(MTPodcast *)localPodcast uuid];
    v5 = kMTPreferredArtworkSize;
    v6 = +[PFObjCCachingImageContentProviderBridge extensionBridge];
    v7 = self->_localPodcast;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000AC390;
    v9[3] = &unk_1004DAC18;
    v10 = uuid;
    v8 = uuid;
    [v6 artworkForPodcast:v7 size:v9 completionHandler:{v5, v5}];
  }

  else
  {
    v8 = _MTLogCategoryArtworkDownload();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
    }
  }
}

- (void)_updatePodcastArtworksIfNeeded_ImageStore
{
  requestsAreNonAppInitiated = [(MTPodcast *)self->_localPodcast requestsAreNonAppInitiated];
  if (([(MTPodcast *)self->_localPodcast needsArtworkUpdate]& 1) != 0 || ([(MTPodcast *)self->_localPodcast uuid], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, imageStore = self->_imageStore, [(MTPodcast *)self->_localPodcast uuid], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(imageStore) = [(MTImageStoreProtocol *)imageStore hasItemForKey:v7], v7, v5, (imageStore & 1) == 0))
  {
    v8 = [_TtC18PodcastsFoundation22DownloadableURLOptions alloc];
    imageURL = [(MTPodcast *)self->_localPodcast imageURL];
    v10 = [v8 init:imageURL nonAppInitiated:requestsAreNonAppInitiated];

    imageDownloader = self->_imageDownloader;
    uuid = [(MTPodcast *)self->_localPodcast uuid];
    [(MTFeedIngesterImageDownloaderProtocol *)imageDownloader downloadImageForPodcastUuid:uuid urlOptions:v10 userInitiated:0 useBackgroundFetch:1];
  }

  uberBackgroundImageURL = [(MTPodcast *)self->_localPodcast uberBackgroundImageURL];
  if (uberBackgroundImageURL)
  {
    v14 = uberBackgroundImageURL;
    v15 = self->_imageStore;
    uberBackgroundImageURL2 = [(MTPodcast *)self->_localPodcast uberBackgroundImageURL];
    LOBYTE(v15) = [(MTImageStoreProtocol *)v15 hasItemForKey:uberBackgroundImageURL2];

    if ((v15 & 1) == 0)
    {
      uberBackgroundImageURL3 = [(MTPodcast *)self->_localPodcast uberBackgroundImageURL];
      kMTPreferredShowUberArtworkHeight = [PFArtworkFormatter formatArtworkUrlWithString:uberBackgroundImageURL3 for:@"sr" cropCode:@"png" fileExtension:kMTPreferredShowUberArtworkWidth, kMTPreferredShowUberArtworkHeight];

      v18 = [[_TtC18PodcastsFoundation22DownloadableURLOptions alloc] initWithUrl:kMTPreferredShowUberArtworkHeight nonAppInitiated:requestsAreNonAppInitiated];
      v19 = self->_imageDownloader;
      uberBackgroundImageURL4 = [(MTPodcast *)self->_localPodcast uberBackgroundImageURL];
      [(MTFeedIngesterImageDownloaderProtocol *)v19 downloadImageUrl:v18 cacheKey:uberBackgroundImageURL4 userInitiated:0 backgroundFetch:1];
    }
  }
}

+ (unint64_t)_offerTypesAsFlagBits:(id)bits
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  offers = [bits offers];
  v4 = [offers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(offers);
        }

        v6 |= [*(*(&v10 + 1) + 8 * i) offerTypeAsFlagBit];
      }

      v5 = [offers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_markEpisodeAsFirstSeen:(id)seen
{
  seenCopy = seen;
  [seenCopy unsuppressAutomaticDownloadsIfNeeded];
  [seenCopy setIsNew:1];
}

- (void)_handleAttributesAndRedownloadOnPriceTypeChangeIfNeeded:(id)needed isNewEpisodeToCurrentDevice:(BOOL)device oldIsEntitled:(BOOL)entitled oldEnclosureURL:(id)l oldPriceType:(id)type
{
  entitledCopy = entitled;
  deviceCopy = device;
  neededCopy = needed;
  lCopy = l;
  typeCopy = type;
  priceType = [neededCopy priceType];
  if (!priceType || (v16 = priceType, [neededCopy enclosureURL], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
  {
    enclosureURL2 = _MTLogCategoryFeedUpdateIngester();
    if (!os_log_type_enabled(enclosureURL2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    uuid = [neededCopy uuid];
    priceType2 = [neededCopy priceType];
    enclosureURL = [neededCopy enclosureURL];
    *buf = 138413314;
    v70 = uuid;
    v71 = 2112;
    *v72 = priceType2;
    *&v72[8] = 2112;
    v73 = typeCopy;
    v74 = 2112;
    v75 = enclosureURL;
    v76 = 2112;
    v77 = lCopy;
    _os_log_impl(&_mh_execute_header, enclosureURL2, OS_LOG_TYPE_ERROR, "Nil attribute detected for episode %@. Not handling priceType change. priceType: %@, oldPriceType: %@, enclosureUrl: %@, oldEnclosureUrl: %@", buf, 0x34u);

    goto LABEL_27;
  }

  v64 = typeCopy;
  v18 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    uuid2 = [neededCopy uuid];
    priceType3 = [neededCopy priceType];
    [neededCopy enclosureURL];
    v21 = v63 = self;
    entitlementState = [neededCopy entitlementState];
    podcast = [neededCopy podcast];
    [podcast channel];
    v60 = v62 = entitledCopy;
    v22 = deviceCopy;
    storeId = [v60 storeId];
    podcast2 = [neededCopy podcast];
    channel = [podcast2 channel];
    *buf = 138414082;
    v70 = uuid2;
    v71 = 2112;
    *v72 = priceType3;
    *&v72[8] = 2112;
    v73 = v64;
    v74 = 2112;
    v75 = v21;
    v76 = 2112;
    v77 = lCopy;
    v78 = 2048;
    v79 = entitlementState;
    v80 = 2048;
    v81 = storeId;
    deviceCopy = v22;
    v82 = 1024;
    subscriptionActive = [channel subscriptionActive];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Handling attributes and redownload on priceType change if needed for episode: %@. priceType: %@, oldPriceType: %@, enclosureUrl: %@, oldEnclosureUrl: %@, oldEntitlementState: %lld, channel: %lld, subscriptionActive: %d", buf, 0x4Eu);

    entitledCopy = v62;
    self = v63;
  }

  [neededCopy updateEntitlementState];
  v26 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    entitlementState2 = [neededCopy entitlementState];
    uuid3 = [neededCopy uuid];
    *buf = 134218242;
    v70 = entitlementState2;
    v71 = 2112;
    *v72 = uuid3;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Updated entitlementState to: %lld for episode %@", buf, 0x16u);
  }

  v29 = 0;
  typeCopy = v64;
  if (!v64 && deviceCopy)
  {
    priceType4 = [neededCopy priceType];
    v29 = priceType4 != 0;
  }

  priceType5 = [neededCopy priceType];
  v32 = [priceType5 isEqualToString:v64];

  enclosureURL2 = _MTLogCategoryFeedUpdateIngester();
  v34 = os_log_type_enabled(enclosureURL2, OS_LOG_TYPE_DEFAULT);
  if ((v32 & 1) != 0 || v29)
  {
    if (v34)
    {
      uuid4 = [neededCopy uuid];
      *buf = 138412802;
      v70 = uuid4;
      v71 = 1024;
      *v72 = v32;
      *&v72[4] = 1024;
      *&v72[6] = v29;
      _os_log_impl(&_mh_execute_header, enclosureURL2, OS_LOG_TYPE_DEFAULT, "priceType did not actually change for episode %@. priceTypeValueDidNotChange: %d - isNewEpisodeAndPriceTypeDidNotChange: %d", buf, 0x18u);
    }

    goto LABEL_30;
  }

  if (v34)
  {
    uuid5 = [neededCopy uuid];
    priceType6 = [neededCopy priceType];
    *buf = 138412802;
    v70 = uuid5;
    v71 = 2112;
    *v72 = v64;
    *&v72[8] = 2112;
    v73 = priceType6;
    _os_log_impl(&_mh_execute_header, enclosureURL2, OS_LOG_TYPE_DEFAULT, "PriceType changed for episode uuid %@ from priceType: %@ to %@", buf, 0x20u);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [neededCopy setPriceTypeChangedDate:?];
  if ([neededCopy isEntitled] && objc_msgSend(neededCopy, "isEntitled") != entitledCopy)
  {
    v37 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      uuid6 = [neededCopy uuid];
      *buf = 138412290;
      v70 = uuid6;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Episode %@ is newly entitled.", buf, 0xCu);
    }

    newlyEntitledEpisodeUUIDs = [(MTFeedIngester *)self newlyEntitledEpisodeUUIDs];
    uuid7 = [neededCopy uuid];
    [newlyEntitledEpisodeUUIDs addObject:uuid7];
  }

  enclosureURL2 = [neededCopy enclosureURL];
  if (([enclosureURL2 isEqualToString:lCopy]& 1) != 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  assetURL = [neededCopy assetURL];
  v42 = [assetURL length];

  if (v42)
  {
    v43 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      enclosureURL3 = [neededCopy enclosureURL];
      uuid8 = [neededCopy uuid];
      *buf = 138412546;
      v70 = enclosureURL3;
      v71 = 2112;
      *v72 = uuid8;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found new enclosureURL %@ for downloaded asset for episode %@", buf, 0x16u);
    }

    if (self->_downloadManager)
    {
      library = self->_library;
      uuid9 = [neededCopy uuid];
      v68 = uuid9;
      v48 = [NSArray arrayWithObjects:&v68 count:1];
      v49 = [NSSet setWithArray:v48];
      [(MTFeedIngesterLibraryProtocol *)library removeDownloadAssetsForEpisodeUuids:v49];

      uuid10 = [neededCopy uuid];
      downloadManager = self->_downloadManager;
      uuid11 = [neededCopy uuid];
      v67 = uuid11;
      v53 = [NSArray arrayWithObjects:&v67 count:1];
      v54 = [NSSet setWithArray:v53];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_1000AD000;
      v65[3] = &unk_1004DAC40;
      v66 = uuid10;
      enclosureURL2 = uuid10;
      [(MTFeedIngesterDownloadManagerProtocol *)downloadManager restoreDownloadedEpisodes:v54 completion:v65];

      goto LABEL_30;
    }

    enclosureURL2 = _MTLogCategoryFeedUpdateIngester();
    if (!os_log_type_enabled(enclosureURL2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    uuid = [neededCopy uuid];
    *buf = 138412290;
    v70 = uuid;
    _os_log_impl(&_mh_execute_header, enclosureURL2, OS_LOG_TYPE_ERROR, "Missing Download Manager. Failed to re-download %@", buf, 0xCu);
LABEL_27:

    goto LABEL_30;
  }

LABEL_31:
}

@end