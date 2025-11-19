@interface MTFeedIngester
+ (unint64_t)_offerTypesAsFlagBits:(id)a3;
+ (void)_markEpisodeAsFirstSeen:(id)a3;
+ (void)_markLatestEpisodeAsUnplayedIfNeeded:(id)a3 latestEpisodeInPodcast:(id)a4;
+ (void)_recalculateEpisodeLevel:(id)a3 episodeLevelCalculator:(id)a4 ctx:(id)a5;
+ (void)_sendNotificationForNewlyEntitledEpisodesIfNeeded:(id)a3 latestEpisodeInPodcast:(id)a4 newlyEntitledEpisodeUUIDs:(id)a5 ctx:(id)a6;
+ (void)_unsafeFinalizeIngestion:(id)a3 episodeLevelCalculator:(id)a4 storeInfoUpdater:(id)a5 updateAverageCalculator:(id)a6 ctx:(id)a7 didUpdateAnyEpisodes:(BOOL)a8 newlyEntitledEpisodeUUIDs:(id)a9;
- (BOOL)_localPodcastExists;
- (BOOL)unsafeIngestShow:(id)a3;
- (MTFeedIngester)initWithPodcast:(id)a3 ctx:(id)a4 storeInfoUpdater:(id)a5 imageDownloader:(id)a6 imageStore:(id)a7 syncController:(id)a8 library:(id)a9 downloadManager:(id)a10 episodeLevelCalculator:(id)a11 categoryIngester:(id)a12 chapterIngester:(id)a13 feedUpdateSource:(int64_t)a14 updaterJobUUID:(id)a15 canSendNotifications:(BOOL)a16;
- (id)_unsafeIngestEpisode:(id)a3 localEpisode:(id)a4 isNew:(BOOL)a5;
- (id)unsafeIngestNewEpisode:(id)a3;
- (void)_handleAttributesAndRedownloadOnPriceTypeChangeIfNeeded:(id)a3 isNewEpisodeToCurrentDevice:(BOOL)a4 oldIsEntitled:(BOOL)a5 oldEnclosureURL:(id)a6 oldPriceType:(id)a7;
- (void)_reportMetrics;
- (void)_setAttributesOfLocalEpisode:(id)a3 feedEpisode:(id)a4;
- (void)_setPodcastArtwork:(id)a3;
- (void)_updatePodcastArtworksIfNeeded;
- (void)_updatePodcastArtworksIfNeeded_ImageProvider;
- (void)_updatePodcastArtworksIfNeeded_ImageStore;
- (void)unsafeDeleteChaptersForEpisode:(id)a3;
- (void)unsafeDeleteFeedDeletedEpisode:(id)a3;
- (void)unsafeFinalizeIngestion;
- (void)unsafeIngestPage;
@end

@implementation MTFeedIngester

- (MTFeedIngester)initWithPodcast:(id)a3 ctx:(id)a4 storeInfoUpdater:(id)a5 imageDownloader:(id)a6 imageStore:(id)a7 syncController:(id)a8 library:(id)a9 downloadManager:(id)a10 episodeLevelCalculator:(id)a11 categoryIngester:(id)a12 chapterIngester:(id)a13 feedUpdateSource:(int64_t)a14 updaterJobUUID:(id)a15 canSendNotifications:(BOOL)a16
{
  v44 = a3;
  obj = a4;
  v43 = a4;
  v42 = a5;
  v41 = a6;
  v40 = a7;
  v39 = a8;
  v38 = a9;
  v37 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a15;
  v45.receiver = self;
  v45.super_class = MTFeedIngester;
  v25 = [(MTFeedIngester *)&v45 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_ctx, obj);
    objc_storeStrong(&v26->_localPodcast, a3);
    v27 = +[NSMutableSet set];
    newlyEntitledEpisodeUUIDs = v26->_newlyEntitledEpisodeUUIDs;
    v26->_newlyEntitledEpisodeUUIDs = v27;

    v29 = +[NSMutableSet set];
    updatedEpisodeUUIDs = v26->_updatedEpisodeUUIDs;
    v26->_updatedEpisodeUUIDs = v29;

    v26->_latestEpisodeDate = 0.0;
    v26->_shouldMarkPlaylistsForUpdate = 0;
    objc_storeStrong(&v26->_storeInfoUpdater, a5);
    objc_storeStrong(&v26->_imageDownloader, a6);
    objc_storeStrong(&v26->_imageStore, a7);
    objc_storeStrong(&v26->_syncController, a8);
    objc_storeStrong(&v26->_library, a9);
    objc_storeStrong(&v26->_downloadManager, a10);
    objc_storeStrong(&v26->_episodeLevelCalculator, a11);
    objc_storeStrong(&v26->_categoryIngester, a12);
    objc_storeStrong(&v26->_chapterIngester, a13);
    v26->_feedUpdateSource = a14;
    objc_storeStrong(&v26->_updaterJobUUID, a15);
    v26->_itemsInserted = 0;
    v26->_itemsIngested = 0;
    v26->_itemsDeleted = 0;
    v26->_canSendNotifications = a16;
    v31 = +[_TtC18PodcastsFoundation29FeedManagerLocalConfiguration platformSpecificConfiguration];
    configuration = v26->_configuration;
    v26->_configuration = v31;
  }

  return v26;
}

- (id)unsafeIngestNewEpisode:(id)a3
{
  v4 = a3;
  if ([(MTFeedIngester *)self _localPodcastExists])
  {
    [(MTSyncControllerProtocol *)self->_syncController setUppSyncDirtyFlag:1];
    v5 = [MTEpisode insertNewEpisodeInManagedObjectContext:self->_ctx canSendNotifications:self->_canSendNotifications];
    [v5 setPodcast:self->_localPodcast];
    [v5 setImportSource:2];
    v6 = [v4 pubDate];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7;
    [(MTPodcast *)self->_localPodcast addedDate];
    v10 = v9;

    v11 = [(MTPodcast *)self->_localPodcast importing];
    if (v8 < v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
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
          v17 = [(MTPodcast *)self->_localPodcast uuid];
          v18 = [(MTPodcast *)self->_localPodcast title];
          v19 = [v5 uuid];
          v20 = [v5 sentNotification];
          v21 = [(MTPodcast *)self->_localPodcast importing];
          v38 = 138544642;
          v39 = v17;
          v40 = 2112;
          v41 = v18;
          v42 = 2114;
          v43 = v19;
          v44 = 1024;
          v45 = v20;
          v46 = 1024;
          v47 = v12;
          v48 = 1024;
          v49 = v21;
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
          v26 = [(MTPodcast *)self->_localPodcast uuid];
          v27 = [(MTPodcast *)self->_localPodcast title];
          v28 = [v5 uuid];
          v29 = [v5 sentNotification];
          v30 = [(MTPodcast *)self->_localPodcast importing];
          [v5 metadataTimestamp];
          v38 = 138544898;
          v39 = v26;
          v40 = 2112;
          v41 = v27;
          v42 = 2114;
          v43 = v28;
          v44 = 1024;
          v45 = v29;
          v46 = 1024;
          v47 = v12;
          v48 = 1024;
          v49 = v30;
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
      v33 = [(MTPodcast *)self->_localPodcast uuid];
      v34 = [(MTPodcast *)self->_localPodcast title];
      v35 = [v5 uuid];
      v36 = [v5 sentNotification];
      v38 = 138544130;
      v39 = v33;
      v40 = 2112;
      v41 = v34;
      v42 = 2114;
      v43 = v35;
      v44 = 1024;
      v45 = v36;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ new episode %{public}@, sentNotification: %d", &v38, 0x26u);
    }

    ++self->_itemsInserted;
    v25 = [(MTFeedIngester *)self _unsafeIngestEpisode:v4 localEpisode:v5 isNew:1];
  }

  else
  {
    v22 = [v4 episodeStoreId];
    v23 = [v22 longLongValue];

    v5 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v24 = [NSNumber numberWithLongLong:v23];
      v38 = 138412290;
      v39 = v24;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ - could not ingest new feed episode because ingester local podcast does not exist", &v38, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

- (id)_unsafeIngestEpisode:(id)a3 localEpisode:(id)a4 isNew:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = _MTLogCategoryFeedUpdateIngester();
  v121 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 podcast];
    v12 = [v11 uuid];
    v13 = [v9 podcast];
    v14 = [v13 title];
    v15 = [v121 uuid];
    [v121 title];
    v17 = v16 = v5;
    *buf = 138544130;
    v128 = v12;
    v129 = 2112;
    v130 = v14;
    v131 = 2114;
    v132 = v15;
    v133 = 2112;
    v134 = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ updating episode %{public}@ - %@", buf, 0x2Au);

    v5 = v16;
    v9 = v121;
  }

  v18 = [v9 podcast];
  v19 = [v18 uuid];
  v20 = [(MTPodcast *)self->_localPodcast uuid];
  v21 = [v19 isEqualToString:v20];

  if (v21)
  {
    [(MTFeedIngester *)self _setAttributesOfLocalEpisode:v9 feedEpisode:v8];
    v22 = [(MTPodcast *)self->_localPodcast channel];

    v23 = v9;
    if (v22)
    {
      v24 = [(MTPodcast *)self->_localPodcast channel];
      v25 = [v24 subscriptionActive];
    }

    else
    {
      v25 = 0;
    }

    v35 = [v9 isEntitled];
    v26 = [v9 priceType];
    v36 = [v9 enclosureURL];
    [v8 entitledDuration];
    if (v37 > 0.0)
    {
      [v8 entitledDuration];
      [v23 setEntitledDuration:?];
    }

    [v8 duration];
    if (v38 > 0.0)
    {
      [v8 duration];
      [v23 setFreeDuration:?];
    }

    v39 = [v8 entitledEnclosureURL];
    [v23 setEntitledEnclosureURL:v39];

    v40 = [v8 resolvedEnclosureUrl];
    [v23 setFreeEnclosureURL:v40];

    v41 = [v8 priceType];
    [v23 setFreePriceType:v41];

    v42 = [v8 entitledPriceType];
    [v23 setEntitledPriceType:v42];

    v43 = [v8 entitledTranscriptIdentifier];
    [v23 setEntitledTranscriptIdentifier:v43];

    v44 = [v8 freeTranscriptIdentifier];
    [v23 setFreeTranscriptIdentifier:v44];

    v45 = [v8 entitledTranscriptSnippet];
    [v23 setEntitledTranscriptSnippet:v45];

    v46 = [v8 freeTranscriptSnippet];
    [v23 setFreeTranscriptSnippet:v46];

    v47 = [v8 entitledTranscriptProvider];
    [v23 setEntitledTranscriptProvider:v47];

    v48 = [v8 freeTranscriptProvider];
    [v23 setFreeTranscriptProvider:v48];

    if (os_feature_enabled_pando_chapters())
    {
      v120 = v25;
      v49 = [v8 chapters];
      if (v49 && (v50 = v49, [v8 chapters], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "count"), v51, v23 = v121, v50, v52))
      {
        v115 = v35;
        v116 = v36;
        v117 = v26;
        v118 = v5;
        v53 = _MTLogCategoryFeedUpdateIngester();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = [v121 uuid];
          v55 = [v8 chapters];
          v56 = [v55 count];
          *buf = 138543618;
          v128 = v54;
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
        v119 = v8;
        v58 = [v8 chapters];
        v59 = [v58 countByEnumeratingWithState:&v122 objects:v126 count:16];
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
                objc_enumerationMutation(v58);
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
                  v67 = [v23 uuid];
                  v68 = [v65 id];
                  *buf = 138543618;
                  v128 = v67;
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
                  v69 = [v23 uuid];
                  v70 = [v63 id];
                  *buf = 138543618;
                  v128 = v69;
                  v129 = 2112;
                  v130 = v70;
                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ - Could not ingest chapter (%@) for episode.", buf, 0x16u);

                  v23 = v121;
                }
              }
            }

            v60 = [v58 countByEnumeratingWithState:&v122 objects:v126 count:16];
          }

          while (v60);
        }

        v71 = _MTLogCategoryFeedUpdateIngester();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = [v23 uuid];
          v73 = [v57 count];
          *buf = 138543618;
          v128 = v72;
          v129 = 2048;
          v130 = v73;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished ingesting %lu chapters.", buf, 0x16u);

          v23 = v121;
        }

        v74 = [v57 copy];
        [v23 setChapters:v74];

        v8 = v119;
        v75 = [v119 chapterSource];
        [v23 setChapterSource:v75];

        v5 = v118;
        v36 = v116;
        v26 = v117;
        v35 = v115;
      }

      else
      {
        v76 = _MTLogCategoryFeedUpdateIngester();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = [v23 uuid];
          *buf = 138543362;
          v128 = v77;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ - Show has no chapters.", buf, 0xCu);

          v23 = v121;
        }

        [(MTFeedIngester *)self unsafeDeleteChaptersForEpisode:v23];
        v78 = objc_opt_new();
        [v23 setChapters:v78];

        [v23 setChapterSource:0];
      }

      v25 = v120;
    }

    if (v25)
    {
      [v8 entitledDuration];
      if (v79 > 0.0)
      {
        [v8 entitledDuration];
        [v23 setDuration:?];
      }

      v80 = [v8 entitledEnclosureURL];

      if (v80)
      {
        v81 = [v8 entitledEnclosureURL];
        [v23 setEnclosureURL:v81];
      }

      v82 = [v8 entitledPriceType];
      [v23 setPriceType:v82];

      v83 = [v8 entitledTranscriptIdentifier];
    }

    else
    {
      [v23 freeDuration];
      if (v84 > 0.0 && [v23 allowsDurationUpdateFromSource:6])
      {
        [v23 freeDuration];
        [v23 setDuration:?];
      }

      v85 = [v23 freeEnclosureURL];
      [v23 setEnclosureURL:v85];

      v86 = [v23 freePriceType];
      [v23 setPriceType:v86];

      v83 = [v23 freeTranscriptIdentifier];
    }

    v87 = v83;
    [v23 setTranscriptIdentifier:v83];

    [(MTFeedIngester *)self _handleAttributesAndRedownloadOnPriceTypeChangeIfNeeded:v23 isNewEpisodeToCurrentDevice:v5 oldIsEntitled:v35 oldEnclosureURL:v36 oldPriceType:v26];
    if (v5)
    {
      [v23 updateEntitlementState];
      v88 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v89 = [v23 uuid];
        v90 = [v121 entitlementState];
        *buf = 138543618;
        v128 = v89;
        v129 = 2048;
        v130 = v90;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%{public}@ - set entitlement state for inserted episode to %lld for new episode from unsafeIngestEpisode", buf, 0x16u);

        v23 = v121;
      }
    }

    v91 = [v8 pubDate];
    [v91 timeIntervalSinceReferenceDate];
    v93 = v92;
    [(MTPodcast *)self->_localPodcast addedDate];
    v95 = v94;

    if (v5)
    {
      if (v93 >= v95)
      {
        if ([v23 isEntitled])
        {
          v96 = [(MTPodcast *)self->_localPodcast isDark];
          v97 = [(MTPodcast *)self->_localPodcast darkCount];
          [(MTPodcast *)self->_localPodcast setDarkCount:v97 + 1];
          v98 = v97 + 1;
          v23 = v121;
          [(MTPodcast *)self->_localPodcast setDarkCountLocal:v98];
          [(MTPodcast *)self->_localPodcast markPlaylistsForUpdate];
          if (v96 != [(MTPodcast *)self->_localPodcast isDark])
          {
            v99 = [(MTPodcast *)self->_localPodcast isDark];
            v100 = [(MTPodcast *)self->_localPodcast latestExitFromDarkDownloads];
            if (v100)
            {
              v101 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v96 isDark:v99 reason:2 previousExit:v100];
            }

            else
            {
              +[NSDate now];
              v103 = v102 = v36;
              v101 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v96 isDark:v99 reason:2 previousExit:v103];

              v36 = v102;
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
      v112 = [v33 uuid];
      v113 = [v33 title];
      *buf = 138543874;
      v128 = v112;
      v129 = 2112;
      v130 = v113;
      v131 = 1024;
      LODWORD(v132) = v5;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ updated episode from feed - isNew %x", buf, 0x1Cu);
    }

    ++self->_itemsIngested;
    v34 = v33;
  }

  else
  {
    v26 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v121 podcast];
      v28 = [v27 uuid];
      v29 = [v121 podcast];
      v30 = [v29 title];
      v31 = [(MTPodcast *)self->_localPodcast uuid];
      v32 = [(MTPodcast *)self->_localPodcast title];
      *buf = 138544130;
      v128 = v28;
      v129 = 2112;
      v130 = v30;
      v131 = 2114;
      v132 = v31;
      v133 = 2112;
      v134 = v32;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ - %@ podcast for episode does not match podcast for ingester %{public}@ - %@", buf, 0x2Au);

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

- (void)unsafeDeleteChaptersForEpisode:(id)a3
{
  v4 = a3;
  v5 = [v4 chapters];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 uuid];
      *buf = 138543618;
      v16 = v8;
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
        v12 = [v4 uuid];
        v13 = [v10 localizedDescription];
        *buf = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Unable to delete chapters with error %@.", buf, 0x16u);
      }
    }
  }
}

- (void)unsafeDeleteFeedDeletedEpisode:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTPodcast *)self->_localPodcast uuid];
    v7 = [(MTPodcast *)self->_localPodcast title];
    v8 = [v4 uuid];
    v9 = [v4 title];
    v10 = 138544130;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ deleting episode removed from feed %{public}@ - %@", &v10, 0x2Au);
  }

  [v4 setFeedDeleted:1];
  self->_shouldMarkPlaylistsForUpdate = 1;
  ++self->_itemsDeleted;
}

- (BOOL)unsafeIngestShow:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v40 = [(MTPodcast *)self->_localPodcast uuid];
      *buf = 138543362;
      v114 = v40;
      v41 = "%{public}@ failed to update because feed was nil";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
    }

LABEL_28:
    v42 = 0;
    goto LABEL_73;
  }

  if (![(MTFeedIngester *)self _localPodcastExists])
  {
    v7 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v40 = [v4 podcastStoreId];
      *buf = 138412290;
      v114 = v40;
      v41 = "%@ - could not ingest feed podcast because ingester local podcast does not exist";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v5 = [v4 podcastStoreId];
  v6 = [v5 longLongValue];

  if ([MTStoreIdentifier isNotEmpty:v6])
  {
    [(MTPodcast *)self->_localPodcast setStoreCollectionId:v6];
  }

  v7 = [v4 updatedFeedURL];
  if ([MTDBUtil isSupportedUrlString:v7])
  {
    v8 = [(MTPodcast *)self->_localPodcast currentFeedURL];
    v9 = [v8 absoluteString];
    v10 = [v7 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      v11 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(MTPodcast *)self->_localPodcast currentFeedURL];
        v13 = [v12 absoluteString];
        *buf = 134218498;
        v114 = v6;
        v115 = 2112;
        v116 = v7;
        v117 = 2112;
        v118 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%lld Found different updatedFeedURL %@ from %@", buf, 0x20u);
      }

      [(MTPodcast *)self->_localPodcast setUpdatedFeedURL:v7];
      self->_didUpdateFeedUrl = 1;
    }
  }

  v14 = [v4 resolvedFeedURL];
  if ([v14 length])
  {
    v15 = [(MTPodcast *)self->_localPodcast currentFeedURL];
    v16 = [v15 absoluteString];
    v17 = [v14 isEqualToString:v16];

    if ((v17 & 1) == 0)
    {
      v18 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(MTPodcast *)self->_localPodcast currentFeedURL];
        v20 = [v19 absoluteString];
        *buf = 134218498;
        v114 = v6;
        v115 = 2112;
        v116 = v14;
        v117 = 2112;
        v118 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%lld Found different feedURL %@ from %@", buf, 0x20u);
      }

      [(MTPodcast *)self->_localPodcast setUpdatedFeedURL:v14];
      self->_didUpdateFeedUrl = 1;
    }
  }

  localPodcast = self->_localPodcast;
  v22 = [v4 title];
  v23 = [v22 stringByStrippingHTML];
  v24 = [v23 stringByRemovingNewlineCharacters];
  [(MTPodcast *)localPodcast setTitle:v24];

  v25 = self->_localPodcast;
  v26 = [v4 author];
  v27 = [v26 stringByStrippingHTML];
  [(MTPodcast *)v25 setAuthor:v27];

  v28 = self->_localPodcast;
  v29 = [v4 provider];
  v30 = [v29 stringByStrippingHTML];
  [(MTPodcast *)v28 setProvider:v30];

  -[MTPodcast setIsExplicit:](self->_localPodcast, "setIsExplicit:", [v4 isExplicit]);
  v31 = self->_localPodcast;
  v32 = [v4 feedDescription];
  [(MTPodcast *)v31 setItemDescription:v32];

  v33 = [v4 showType];
  v34 = [MTPodcast showTypeFromString:v33];
  v35 = [(MTPodcast *)self->_localPodcast showTypeInFeed];
  v36 = [MTPodcast showTypeFromString:v35];

  v38 = v34 == 2 && v36 != 2;
  v39 = v34 == 1 && [(MTPodcast *)self->_localPodcast showTypeSetting]== 2;
  v43 = [(MTPodcast *)self->_localPodcast subscribed];
  [(MTPodcast *)self->_localPodcast setShowTypeInFeed:v33];
  if (v38 || (v43 & 1) == 0 || v39)
  {
    [(MTPodcast *)self->_localPodcast setShowTypeSetting:v34];
  }

  v44 = self->_localPodcast;
  v45 = [v4 category];
  [(MTPodcast *)v44 setCategory:v45];

  v46 = self->_localPodcast;
  v47 = [v4 webpageURL];
  [(MTPodcast *)v46 setWebpageURL:v47];

  v48 = self->_localPodcast;
  v49 = [v4 shareURL];
  [(MTPodcast *)v48 setStoreCleanURL:v49];

  v50 = self->_localPodcast;
  v51 = [v4 showSpecificUpsellCopy];
  [(MTPodcast *)v50 setShowSpecificUpsellCopy:v51];

  -[MTPodcast setOfferTypes:](self->_localPodcast, "setOfferTypes:", [objc_opt_class() _offerTypesAsFlagBits:v4]);
  v52 = [v4 displayType];
  if (v52)
  {
    v53 = v52;
    v54 = [v4 displayType];
    v55 = [v54 isNotEmpty];

    if (v55)
    {
      v56 = [v4 displayType];
      [(MTPodcast *)self->_localPodcast setDisplayType:v56];
    }
  }

  v57 = [v4 channelItem];

  if (v57)
  {
    v58 = [v4 channelItem];
    v59 = [MTChannel createOrFindChannelFromFeedChannelItem:v58 personalizedRequest:0 context:self->_ctx];

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

  [(MTFeedIngester *)self _setPodcastArtwork:v4];
  v61 = [v4 categories];
  if (v61 && (v62 = v61, [v4 categories], v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "count"), v63, v62, v64))
  {
    v100 = v33;
    v101 = v14;
    v102 = v7;
    v65 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [(MTPodcast *)self->_localPodcast uuid];
      v67 = [v4 categories];
      v68 = [v67 count];
      *buf = 138543618;
      v114 = v66;
      v115 = 2048;
      v116 = v68;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ - Ingesting %lu categories.", buf, 0x16u);
    }

    v69 = objc_opt_new();
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v99 = v4;
    v70 = [v4 categories];
    v71 = [v70 countByEnumeratingWithState:&v107 objects:v112 count:16];
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
            objc_enumerationMutation(v70);
          }

          v75 = [(MTCategoryIngesterProtocol *)self->_categoryIngester unsafeIngestFeedCategory:*(*(&v107 + 1) + 8 * i) ctx:self->_ctx];
          if (v75)
          {
            [v69 addObject:v75];
            v76 = [v75 podcasts];
            v77 = [v76 setByAddingObject:self->_localPodcast];
            [v75 setPodcasts:v77];

            v78 = _MTLogCategoryFeedUpdateIngester();
            if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_56;
            }

            v79 = [(MTPodcast *)self->_localPodcast uuid];
            v80 = [v75 adamID];
            *buf = 138543618;
            v114 = v79;
            v115 = 2048;
            v116 = v80;
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

            v79 = [(MTPodcast *)self->_localPodcast uuid];
            v83 = [0 adamID];
            *buf = 138543618;
            v114 = v79;
            v115 = 2048;
            v116 = v83;
            v81 = v78;
            v82 = "%{public}@ - Could not ingest category for show. Category ID: %llu";
          }

          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, v82, buf, 0x16u);

LABEL_56:
        }

        v72 = [v70 countByEnumeratingWithState:&v107 objects:v112 count:16];
      }

      while (v72);
    }

    [(MTPodcast *)self->_localPodcast setCategories:v69];
    v84 = [v69 firstObject];
    [(MTPodcast *)self->_localPodcast setPrimaryCategory:v84];

    v4 = v99;
  }

  else
  {
    v85 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = [(MTPodcast *)self->_localPodcast uuid];
      *buf = 138543362;
      v114 = v86;
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
    v100 = v33;
    v101 = v14;
    v102 = v7;
    v90 = v4;
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
        v94 = [v93 podcasts];
        v95 = [NSMutableSet setWithSet:v94];

        [v95 removeObject:self->_localPodcast];
        [v93 setPodcasts:v95];
      }

      v89 = [v69 countByEnumeratingWithState:&v103 objects:v111 count:16];
    }

    while (v89);
    v4 = v90;
  }

  v14 = v101;
  v7 = v102;
  v33 = v100;
LABEL_70:

  v96 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    v97 = [(MTPodcast *)self->_localPodcast uuid];
    *buf = 138543362;
    v114 = v97;
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
    v7 = [(MTPodcast *)self->_localPodcast uuid];
    v8 = 138543362;
    v9 = v7;
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

+ (void)_unsafeFinalizeIngestion:(id)a3 episodeLevelCalculator:(id)a4 storeInfoUpdater:(id)a5 updateAverageCalculator:(id)a6 ctx:(id)a7 didUpdateAnyEpisodes:(BOOL)a8 newlyEntitledEpisodeUUIDs:(id)a9
{
  v9 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  if (v9)
  {
    [MTFeedIngester _recalculateEpisodeLevel:v14 episodeLevelCalculator:v15 ctx:v18];
  }

  else
  {
    v20 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v14 uuid];
      *buf = 138543362;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@ - no episodes processed, skipping episode level recalculation", buf, 0xCu);
    }
  }

  v22 = [v14 newestEpisodeByAvailabiltyTime];
  v23 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v14 uuid];
    [v14 title];
    v36 = v15;
    v25 = v37 = v16;
    [v22 uuid];
    v26 = v19;
    v27 = v18;
    v29 = v28 = v17;
    v30 = [v22 title];
    v31 = [v22 storeTrackId];
    *buf = 138544386;
    v39 = v24;
    v40 = 2112;
    v41 = v25;
    v42 = 2114;
    v43 = v29;
    v44 = 2112;
    v45 = v30;
    v46 = 2048;
    v47 = v31;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ marking latest episode as unplayed if needed %{public}@ - %@ - %lld", buf, 0x34u);

    v17 = v28;
    v18 = v27;
    v19 = v26;

    v15 = v36;
    v16 = v37;
  }

  [MTFeedIngester _markLatestEpisodeAsUnplayedIfNeeded:v14 latestEpisodeInPodcast:v22];
  [MTFeedIngester _sendNotificationForNewlyEntitledEpisodesIfNeeded:v14 latestEpisodeInPodcast:v22 newlyEntitledEpisodeUUIDs:v19 ctx:v18];
  [v22 firstTimeAvailable];
  [v14 setLatestEpisodeAvailabilityTime:?];
  [v14 setAuthenticatedDark:0];
  [v14 setFeedUpdateNeedsRetry:0];
  if (+[MTStoreIdentifier isEmpty:](MTStoreIdentifier, "isEmpty:", [v14 storeCollectionId]))
  {
    v32 = [v14 uuid];
    [v16 updateStoreInfoForPodcast:v32];
  }

  v33 = [v14 latestExitFromDarkDownloads];
  if (v33)
  {
    [v14 suppressEpisodesWithBasisDate:v33];
  }

  v34 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v14 uuid];
    *buf = 138543362;
    v39 = v35;
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
    v5 = [(MTPodcast *)self->_localPodcast uuid];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ - local podcast was deleted. Cannot ingest", &v7, 0xCu);
  }

  return 0;
}

- (void)_setAttributesOfLocalEpisode:(id)a3 feedEpisode:(id)a4
{
  v55 = a3;
  v6 = a4;
  [v55 setFeedDeleted:0];
  v7 = [v6 guid];
  [v55 setGuid:v7];

  v8 = [v6 episodeStoreId];
  v9 = [v8 longLongValue];

  if ([MTStoreIdentifier isNotEmpty:v9])
  {
    [v55 setStoreTrackId:v9];
  }

  v10 = [v6 title];
  v11 = [v10 stringByStrippingHTML];

  [v55 setTitle:v11];
  v12 = [v6 itunesTitle];
  [v55 setItunesTitle:v12];

  v13 = [(MTFeedIngester *)self configuration];
  LODWORD(v12) = [v13 usesCleanEpisodeTitles];

  if (v12)
  {
    v14 = [v55 podcast];
    v15 = [v14 title];
    v16 = [v11 cleanedTitleStringWithPrefix:v15];
    [v55 setCleanedTitle:v16];
  }

  v17 = [v6 itemDescription];
  [v55 setItemDescription:v17];

  v18 = [v6 itemSummary];
  [v55 setItunesSubtitle:v18];

  v19 = [v6 author];
  [v55 setAuthor:v19];

  [v55 setByteSize:{objc_msgSend(v6, "byteSize")}];
  v20 = [v6 uti];
  [v55 setUti:v20];

  v21 = [v6 pubDate];
  if (v21)
  {
    v22 = v21;
    [v55 pubDate];
    v24 = v23;
    v25 = [v6 pubDate];
    [v25 timeIntervalSinceReferenceDate];
    v27 = v26;

    if (v24 != v27)
    {
      v28 = [v6 pubDate];
      [v28 timeIntervalSinceReferenceDate];
      [v55 setPubDate:?];
    }
  }

  v29 = [v6 firstTimeAvailableAsPaid];
  if (v29)
  {
    v30 = v29;
    [v55 firstTimeAvailableAsPaid];
    v32 = v31;
    v33 = [v6 firstTimeAvailableAsPaid];
    [v33 timeIntervalSinceReferenceDate];
    v35 = v34;

    if (v32 != v35)
    {
      v36 = [v6 firstTimeAvailableAsPaid];
      [v36 timeIntervalSinceReferenceDate];
      [v55 setFirstTimeAvailableAsPaid:?];
    }
  }

  v37 = [v6 firstTimeAvailableAsFree];
  if (v37)
  {
    v38 = v37;
    [v55 firstTimeAvailableAsFree];
    v40 = v39;
    v41 = [v6 firstTimeAvailableAsFree];
    [v41 timeIntervalSinceReferenceDate];
    v43 = v42;

    if (v40 != v43)
    {
      v44 = [v6 firstTimeAvailableAsFree];
      [v44 timeIntervalSinceReferenceDate];
      [v55 setFirstTimeAvailableAsFree:?];
    }
  }

  if ([v6 trackNum])
  {
    [v55 setTrackNum:{objc_msgSend(v6, "trackNum")}];
  }

  [v55 setExplicit:{objc_msgSend(v6, "isExplicit")}];
  v45 = [v6 episodeType];
  [v55 setEpisodeType:v45];

  v46 = [v55 episodeNumber];
  if (v46 != [v6 episodeNumber])
  {
    [v55 setEpisodeNumber:{objc_msgSend(v6, "episodeNumber")}];
  }

  v47 = [v55 seasonNumber];
  if (v47 != [v6 seasonNumber])
  {
    [v55 setSeasonNumber:{objc_msgSend(v6, "seasonNumber")}];
  }

  v48 = [v6 webpageURL];
  [v55 setWebpageURL:v48];

  [v55 setIsHidden:0];
  v49 = [v6 artworkTemplateURL];
  [v55 setArtworkTemplateURL:v49];

  [v6 artworkWidth];
  [v55 setArtworkWidth:?];
  [v6 artworkHeight];
  [v55 setArtworkHeight:?];
  v50 = [v6 artworkBackgroundColor];
  [v55 setArtworkBackgroundColor:v50];

  v51 = [v6 artworkTextPrimaryColor];
  [v55 setArtworkTextPrimaryColor:v51];

  v52 = [v6 artworkTextSecondaryColor];
  [v55 setArtworkTextSecondaryColor:v52];

  v53 = [v6 artworkTextTertiaryColor];
  [v55 setArtworkTextTertiaryColor:v53];

  v54 = [v6 artworkTextQuaternaryColor];
  [v55 setArtworkTextQuaternaryColor:v54];
}

- (void)_setPodcastArtwork:(id)a3
{
  v4 = a3;
  v5 = [v4 imageURL];
  if ([v5 length])
  {
    [v4 imageURL];
  }

  else
  {
    [v4 globalImageURL];
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
    v9 = [(MTPodcast *)self->_localPodcast imageURL];
    v10 = [v9 isEqualToString:v6];

    if ((v10 & 1) == 0)
    {
      v11 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(MTPodcast *)self->_localPodcast uuid];
        v13 = [(MTPodcast *)self->_localPodcast title];
        v27 = 138543874;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
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
  v15 = [v4 artworkTemplateURL];
  [(MTPodcast *)self->_localPodcast setArtworkTemplateURL:v15];

  v16 = [v4 artworkPrimaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkPrimaryColor:v16];

  v17 = [v4 artworkTextPrimaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkTextPrimaryColor:v17];

  v18 = [v4 artworkTextSecondaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkTextSecondaryColor:v18];

  v19 = [v4 artworkTextTertiaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkTextTertiaryColor:v19];

  v20 = [v4 artworkTextQuaternaryColor];
  [(MTPodcast *)self->_localPodcast setArtworkTextQuaternaryColor:v20];

  v21 = [v4 uberBackgroundImageURL];
  [(MTPodcast *)self->_localPodcast setUberBackgroundImageURL:v21];

  v22 = [v4 uberBackgroundJoeColor];
  [(MTPodcast *)self->_localPodcast setUberBackgroundJoeColor:v22];

  v23 = [v4 uberArtworkTextPrimaryColor];
  [(MTPodcast *)self->_localPodcast setUberArtworkTextPrimaryColor:v23];

  v24 = [v4 uberArtworkTextSecondaryColor];
  [(MTPodcast *)self->_localPodcast setUberArtworkTextSecondaryColor:v24];

  v25 = [v4 uberArtworkTextTertiaryColor];
  [(MTPodcast *)self->_localPodcast setUberArtworkTextTertiaryColor:v25];

  v26 = [v4 uberArtworkTextQuaternaryColor];
  [(MTPodcast *)self->_localPodcast setUberArtworkTextQuaternaryColor:v26];
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
    v13 = [(MTPodcast *)self->_localPodcast uuid];
    *buf = 138543618;
    v23 = v13;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - processed feed page and found new episodes: %@", buf, 0x16u);
  }

  v14 = +[MTFeedUpdateMetricsAction pageParser];
  [IMMetrics recordUserAction:v14 dataSource:0 withData:v11];
}

+ (void)_recalculateEpisodeLevel:(id)a3 episodeLevelCalculator:(id)a4 ctx:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 uuid];
  if (v10)
  {
    v11 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@ - recalculating episode levels", &v13, 0xCu);
    }

    [v8 unsafeUpdateEpisodeLevelsWithShowUUID:v10 on:v9];
  }

  else
  {
    v12 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      v14 = [v7 storeCollectionId];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%lld - can't process episode levels, uuid missing", &v13, 0xCu);
    }
  }
}

+ (void)_markLatestEpisodeAsUnplayedIfNeeded:(id)a3 latestEpisodeInPodcast:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 metadataTimestamp];
    if (fabs(v8) <= 2.22044605e-16 && [v5 subscribed])
    {
      v9 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v5 uuid];
        v11 = [v5 title];
        v12 = [v7 uuid];
        v13 = [v7 title];
        v16 = 138544386;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 2114;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        v24 = 2048;
        v25 = [v7 storeTrackId];
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
      v15 = [v5 uuid];
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@ - Could not get the latest episode. Not marking anything as unplayed.", &v16, 0xCu);
    }
  }
}

+ (void)_sendNotificationForNewlyEntitledEpisodesIfNeeded:(id)a3 latestEpisodeInPodcast:(id)a4 newlyEntitledEpisodeUUIDs:(id)a5 ctx:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 count])
  {
    v13 = [v9 uuid];
    v14 = [v9 managedObjectContext];
    v15 = [MTRecencyUtil upNextForPodcastUuid:v13 ctx:v14];
    v16 = [v15 episodeUuid];

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = [v10 uuid];
    }

    v18 = v17;
    v20 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v9 uuid];
      v22 = [v9 title];
      v23 = [v10 uuid];
      *buf = 138544130;
      v36 = v21;
      v37 = 2112;
      v38 = v22;
      v39 = 2114;
      v40 = v16;
      v41 = 2114;
      v42 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Up Next Episode: %{public}@. Latest Episode: %{public}@", buf, 0x2Au);
    }

    if ([v11 containsObject:v18])
    {
      v19 = [v12 objectForUuid:v16 entityName:kMTEpisodeEntityName];
      v24 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        [v9 uuid];
        v25 = v33 = v10;
        v26 = [v9 title];
        v27 = [v19 uuid];
        [v19 title];
        v28 = v34 = v12;
        v29 = [v19 isNew];
        *buf = 138544386;
        v36 = v25;
        v37 = 2112;
        v38 = v26;
        v39 = 2114;
        v40 = v27;
        v41 = 2112;
        v42 = v28;
        v43 = 1024;
        v44 = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Found new smart play episode from episode entitlement changed %{public}@ - %@. episode isNew: %d", buf, 0x30u);

        v12 = v34;
        v10 = v33;
      }

      [MTFeedIngester _markEpisodeAsFirstSeen:v19];
      [v19 setSentNotification:0];
    }

    else
    {
      v19 = _MTLogCategoryFeedUpdateIngester();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        [v9 uuid];
        v31 = v30 = v12;
        v32 = [v9 title];
        *buf = 138543874;
        v36 = v31;
        v37 = 2112;
        v38 = v32;
        v39 = 2114;
        v40 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Smart Play Episode is not newly entitled. Not setting eligible for notifications: %{public}@.", buf, 0x20u);

        v12 = v30;
      }
    }

    goto LABEL_15;
  }

  v16 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v9 uuid];
    v19 = [v9 title];
    *buf = 138543618;
    v36 = v18;
    v37 = 2112;
    v38 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ No newly entitled episodes. Not marking any episodes eligibile for notifications.", buf, 0x16u);
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
    v4 = [(MTPodcast *)localPodcast uuid];
    v5 = kMTPreferredArtworkSize;
    v6 = +[PFObjCCachingImageContentProviderBridge extensionBridge];
    v7 = self->_localPodcast;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000AC390;
    v9[3] = &unk_1004DAC18;
    v10 = v4;
    v8 = v4;
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
  v3 = [(MTPodcast *)self->_localPodcast requestsAreNonAppInitiated];
  if (([(MTPodcast *)self->_localPodcast needsArtworkUpdate]& 1) != 0 || ([(MTPodcast *)self->_localPodcast uuid], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, imageStore = self->_imageStore, [(MTPodcast *)self->_localPodcast uuid], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(imageStore) = [(MTImageStoreProtocol *)imageStore hasItemForKey:v7], v7, v5, (imageStore & 1) == 0))
  {
    v8 = [_TtC18PodcastsFoundation22DownloadableURLOptions alloc];
    v9 = [(MTPodcast *)self->_localPodcast imageURL];
    v10 = [v8 init:v9 nonAppInitiated:v3];

    imageDownloader = self->_imageDownloader;
    v12 = [(MTPodcast *)self->_localPodcast uuid];
    [(MTFeedIngesterImageDownloaderProtocol *)imageDownloader downloadImageForPodcastUuid:v12 urlOptions:v10 userInitiated:0 useBackgroundFetch:1];
  }

  v13 = [(MTPodcast *)self->_localPodcast uberBackgroundImageURL];
  if (v13)
  {
    v14 = v13;
    v15 = self->_imageStore;
    v16 = [(MTPodcast *)self->_localPodcast uberBackgroundImageURL];
    LOBYTE(v15) = [(MTImageStoreProtocol *)v15 hasItemForKey:v16];

    if ((v15 & 1) == 0)
    {
      v17 = [(MTPodcast *)self->_localPodcast uberBackgroundImageURL];
      v21 = [PFArtworkFormatter formatArtworkUrlWithString:v17 for:@"sr" cropCode:@"png" fileExtension:kMTPreferredShowUberArtworkWidth, kMTPreferredShowUberArtworkHeight];

      v18 = [[_TtC18PodcastsFoundation22DownloadableURLOptions alloc] initWithUrl:v21 nonAppInitiated:v3];
      v19 = self->_imageDownloader;
      v20 = [(MTPodcast *)self->_localPodcast uberBackgroundImageURL];
      [(MTFeedIngesterImageDownloaderProtocol *)v19 downloadImageUrl:v18 cacheKey:v20 userInitiated:0 backgroundFetch:1];
    }
  }
}

+ (unint64_t)_offerTypesAsFlagBits:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 offers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v10 + 1) + 8 * i) offerTypeAsFlagBit];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_markEpisodeAsFirstSeen:(id)a3
{
  v3 = a3;
  [v3 unsuppressAutomaticDownloadsIfNeeded];
  [v3 setIsNew:1];
}

- (void)_handleAttributesAndRedownloadOnPriceTypeChangeIfNeeded:(id)a3 isNewEpisodeToCurrentDevice:(BOOL)a4 oldIsEntitled:(BOOL)a5 oldEnclosureURL:(id)a6 oldPriceType:(id)a7
{
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [v12 priceType];
  if (!v15 || (v16 = v15, [v12 enclosureURL], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
  {
    v33 = _MTLogCategoryFeedUpdateIngester();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v55 = [v12 uuid];
    v56 = [v12 priceType];
    v57 = [v12 enclosureURL];
    *buf = 138413314;
    v70 = v55;
    v71 = 2112;
    *v72 = v56;
    *&v72[8] = 2112;
    v73 = v14;
    v74 = 2112;
    v75 = v57;
    v76 = 2112;
    v77 = v13;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Nil attribute detected for episode %@. Not handling priceType change. priceType: %@, oldPriceType: %@, enclosureUrl: %@, oldEnclosureUrl: %@", buf, 0x34u);

    goto LABEL_27;
  }

  v64 = v14;
  v18 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v12 uuid];
    v20 = [v12 priceType];
    [v12 enclosureURL];
    v21 = v63 = self;
    v59 = [v12 entitlementState];
    v61 = [v12 podcast];
    [v61 channel];
    v60 = v62 = v9;
    v22 = v10;
    v23 = [v60 storeId];
    v24 = [v12 podcast];
    v25 = [v24 channel];
    *buf = 138414082;
    v70 = v19;
    v71 = 2112;
    *v72 = v20;
    *&v72[8] = 2112;
    v73 = v64;
    v74 = 2112;
    v75 = v21;
    v76 = 2112;
    v77 = v13;
    v78 = 2048;
    v79 = v59;
    v80 = 2048;
    v81 = v23;
    v10 = v22;
    v82 = 1024;
    v83 = [v25 subscriptionActive];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Handling attributes and redownload on priceType change if needed for episode: %@. priceType: %@, oldPriceType: %@, enclosureUrl: %@, oldEnclosureUrl: %@, oldEntitlementState: %lld, channel: %lld, subscriptionActive: %d", buf, 0x4Eu);

    v9 = v62;
    self = v63;
  }

  [v12 updateEntitlementState];
  v26 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v12 entitlementState];
    v28 = [v12 uuid];
    *buf = 134218242;
    v70 = v27;
    v71 = 2112;
    *v72 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Updated entitlementState to: %lld for episode %@", buf, 0x16u);
  }

  v29 = 0;
  v14 = v64;
  if (!v64 && v10)
  {
    v30 = [v12 priceType];
    v29 = v30 != 0;
  }

  v31 = [v12 priceType];
  v32 = [v31 isEqualToString:v64];

  v33 = _MTLogCategoryFeedUpdateIngester();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
  if ((v32 & 1) != 0 || v29)
  {
    if (v34)
    {
      v58 = [v12 uuid];
      *buf = 138412802;
      v70 = v58;
      v71 = 1024;
      *v72 = v32;
      *&v72[4] = 1024;
      *&v72[6] = v29;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "priceType did not actually change for episode %@. priceTypeValueDidNotChange: %d - isNewEpisodeAndPriceTypeDidNotChange: %d", buf, 0x18u);
    }

    goto LABEL_30;
  }

  if (v34)
  {
    v35 = [v12 uuid];
    v36 = [v12 priceType];
    *buf = 138412802;
    v70 = v35;
    v71 = 2112;
    *v72 = v64;
    *&v72[8] = 2112;
    v73 = v36;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "PriceType changed for episode uuid %@ from priceType: %@ to %@", buf, 0x20u);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v12 setPriceTypeChangedDate:?];
  if ([v12 isEntitled] && objc_msgSend(v12, "isEntitled") != v9)
  {
    v37 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v12 uuid];
      *buf = 138412290;
      v70 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Episode %@ is newly entitled.", buf, 0xCu);
    }

    v39 = [(MTFeedIngester *)self newlyEntitledEpisodeUUIDs];
    v40 = [v12 uuid];
    [v39 addObject:v40];
  }

  v33 = [v12 enclosureURL];
  if (([v33 isEqualToString:v13]& 1) != 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  v41 = [v12 assetURL];
  v42 = [v41 length];

  if (v42)
  {
    v43 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v12 enclosureURL];
      v45 = [v12 uuid];
      *buf = 138412546;
      v70 = v44;
      v71 = 2112;
      *v72 = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found new enclosureURL %@ for downloaded asset for episode %@", buf, 0x16u);
    }

    if (self->_downloadManager)
    {
      library = self->_library;
      v47 = [v12 uuid];
      v68 = v47;
      v48 = [NSArray arrayWithObjects:&v68 count:1];
      v49 = [NSSet setWithArray:v48];
      [(MTFeedIngesterLibraryProtocol *)library removeDownloadAssetsForEpisodeUuids:v49];

      v50 = [v12 uuid];
      downloadManager = self->_downloadManager;
      v52 = [v12 uuid];
      v67 = v52;
      v53 = [NSArray arrayWithObjects:&v67 count:1];
      v54 = [NSSet setWithArray:v53];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_1000AD000;
      v65[3] = &unk_1004DAC40;
      v66 = v50;
      v33 = v50;
      [(MTFeedIngesterDownloadManagerProtocol *)downloadManager restoreDownloadedEpisodes:v54 completion:v65];

      goto LABEL_30;
    }

    v33 = _MTLogCategoryFeedUpdateIngester();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v55 = [v12 uuid];
    *buf = 138412290;
    v70 = v55;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Missing Download Manager. Failed to re-download %@", buf, 0xCu);
LABEL_27:

    goto LABEL_30;
  }

LABEL_31:
}

@end