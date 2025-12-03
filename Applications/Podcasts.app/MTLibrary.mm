@interface MTLibrary
+ (id)sharedInstance;
+ (void)initialize;
+ (void)setConfigurationForTests:(id)tests;
- (BOOL)setEpisodesOrder:(id)order forStation:(id)station;
- (BOOL)setPlayState:(int64_t)state fromContextActions:(BOOL)actions manually:(BOOL)manually forUserActionOnEpisode:(id)episode saveChanges:(BOOL)changes;
- (BOOL)setPlayState:(int64_t)state manually:(BOOL)manually forUserActionOnEpisodeUuid:(id)uuid;
- (BOOL)setPlayed:(BOOL)played manually:(BOOL)manually forUserActionOnEpisode:(id)episode saveChanges:(BOOL)changes;
- (BOOL)setPlayed:(BOOL)played manually:(BOOL)manually forUserActionOnEpisodeUuid:(id)uuid;
- (BOOL)setPodcastsOrder:(id)order;
- (BOOL)setStationShowGroupOrder:(id)order forStation:(id)station;
- (BOOL)setStationsOrder:(id)order;
- (MTLibrary)init;
- (MTLibrary)initWithConfiguration:(id)configuration;
- (id)_predicateForOpportunisticHiddenPodcastDeletion;
- (id)_updateUpNextDeleting:(id)deleting inContext:(id)context forced:(BOOL)forced podcastUuids:(id)uuids;
- (void)_cleanUpOldHiddenPodcasts;
- (void)_deleteEpisodeUuids:(id)uuids forced:(BOOL)forced;
- (void)_deleteEpisodes:(id)episodes forced:(BOOL)forced ctx:(id)ctx;
- (void)_deletePodcastForPredicate:(id)predicate;
- (void)_deleteSpotlightIdentifierForPlaylist:(id)playlist;
- (void)_deleteSpotlightIdentifiersForPodcast:(id)podcast;
- (void)_immediatelyDeleteAllHiddenPodcasts;
- (void)_markAsHiddenPodcast:(id)podcast inContext:(id)context;
- (void)_markAsHiddenPodcastsWithUuids:(id)uuids setSubscriptionsSyncDirty:(BOOL)dirty ctx:(id)ctx;
- (void)_markPlaylistsForUpdateForPodcastUuids:(id)uuids;
- (void)_removeDownloadAssetsForEpisodes:(id)episodes shouldKeep:(id)keep forced:(BOOL)forced;
- (void)_unsafeDeletePodcast:(id)podcast ctx:(id)ctx;
- (void)_userDefaultsDidChange:(id)change;
- (void)cleanUpNeutralInterests;
- (void)cleanUpOldHiddenPodcasts;
- (void)deleteAllInterestsBlockingCaller;
- (void)deleteAllTopLevelStationsExcludingFolders;
- (void)deleteEpisodes:(id)episodes;
- (void)deleteOrphanedEpisodes;
- (void)deletePlaylist:(id)playlist;
- (void)deletePodcastWithUuid:(id)uuid;
- (void)deleteStationWithUuid:(id)uuid;
- (void)removeAllHLSDownloadAssets;
- (void)removeDownloadAssetsForEpisodeAdamIds:(id)ids shouldKeep:(id)keep;
- (void)removeDownloadAssetsForEpisodeUuids:(id)uuids shouldKeep:(id)keep;
- (void)removeDownloadOf:(id)of;
- (void)removeEpisodesWith:(id)with;
- (void)synchronouslyMarkAsHiddenAllPodcastsWithoutResettingSyncVersions;
- (void)updateiTunesPlaylistForiTunesMatchState;
@end

@implementation MTLibrary

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___MTLibrary;
  objc_msgSendSuper2(&v3, "initialize");
  if (objc_opt_class() == self)
  {
    +[MTPreferences registerDefaults];
    +[MTPreferences copySettingsToSharedContainer];
  }
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000838C;
  block[3] = &unk_1004D86F8;
  block[4] = self;
  if (qword_100583A50 != -1)
  {
    dispatch_once(&qword_100583A50, block);
  }

  v2 = qword_100583A48;

  return v2;
}

- (MTLibrary)init
{
  v3 = +[MTLibraryConfiguration defaultConfiguration];
  v4 = [(MTLibrary *)self initWithConfiguration:v3];

  return v4;
}

+ (void)setConfigurationForTests:(id)tests
{
  testsCopy = tests;
  sharedInstance = [self sharedInstance];
  [sharedInstance setConfig:testsCopy];
}

- (MTLibrary)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = MTLibrary;
  v5 = [(MTLibrary *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(MTLibrary *)v5 setFairPlayInvalidationManager:v6];

    v7 = [[MTSecureDownloadRenewalManager alloc] initWithDelegate:v5];
    [(MTLibrary *)v5 setSecureDownloadRenewalManager:v7];

    v8 = +[MTMediaContentSourceiOSMusicLibrary sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005CF80;
    v12[3] = &unk_1004D8720;
    v9 = v5;
    v13 = v9;
    [v8 determineiTunesMatchEnabledWithCompletion:v12];

    +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v9 selector:"_userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:0];

    [(MTLibrary *)v9 setConfig:configurationCopy];
  }

  return v5;
}

- (void)updateiTunesPlaylistForiTunesMatchState
{
  v3 = +[MTDB sharedInstance];
  privateQueueContext = [v3 privateQueueContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005D0D0;
  v6[3] = &unk_1004D8748;
  v7 = privateQueueContext;
  iTunesMatchEnabled = [(MTLibrary *)self iTunesMatchEnabled];
  v5 = privateQueueContext;
  [v5 performBlockAndWait:v6];
}

- (void)_userDefaultsDidChange:(id)change
{
  object = [change object];
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];

  if (object != v4)
  {

    +[MTPreferences copySettingsToSharedContainer];
  }
}

- (void)removeDownloadAssetsForEpisodeUuids:(id)uuids shouldKeep:(id)keep
{
  uuidsCopy = uuids;
  keepCopy = keep;
  v8 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v8 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005D2CC;
  v13[3] = &unk_1004D8770;
  v14 = mainOrPrivateContext;
  v15 = uuidsCopy;
  selfCopy = self;
  v17 = keepCopy;
  v10 = keepCopy;
  v11 = uuidsCopy;
  v12 = mainOrPrivateContext;
  [v12 performBlockAndWaitWithSave:v13];
}

- (void)removeDownloadAssetsForEpisodeAdamIds:(id)ids shouldKeep:(id)keep
{
  idsCopy = ids;
  keepCopy = keep;
  v8 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v8 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005D480;
  v13[3] = &unk_1004D8770;
  v14 = mainOrPrivateContext;
  v15 = idsCopy;
  selfCopy = self;
  v17 = keepCopy;
  v10 = keepCopy;
  v11 = idsCopy;
  v12 = mainOrPrivateContext;
  [v12 performBlockAndWaitWithSave:v13];
}

- (void)removeAllHLSDownloadAssets
{
  v3 = _MTLogCategoryDownload();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Delete all HLS offline keys", buf, 2u);
  }

  v4 = +[MTDB sharedInstance];
  privateQueueContext = [v4 privateQueueContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005D630;
  v7[3] = &unk_1004D8798;
  v8 = privateQueueContext;
  selfCopy = self;
  v6 = privateQueueContext;
  [v6 performBlock:v7];
}

- (void)_removeDownloadAssetsForEpisodes:(id)episodes shouldKeep:(id)keep forced:(BOOL)forced
{
  episodesCopy = episodes;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10005DB54;
  v37[3] = &unk_1004D87C0;
  keepCopy = keep;
  v38 = keepCopy;
  forcedCopy = forced;
  v8 = objc_retainBlock(v37);
  v31 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = episodesCopy;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = _MTLogCategoryDownload();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          storeTrackId = [v13 storeTrackId];
          *buf = 134217984;
          v41 = storeTrackId;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting episode %lld", buf, 0xCu);
        }

        if ((v8[2])(v8, v13))
        {
          secureDownloadRenewalManager = _MTLogCategoryDownload();
          if (os_log_type_enabled(secureDownloadRenewalManager, OS_LOG_TYPE_DEFAULT))
          {
            storeTrackId2 = [v13 storeTrackId];
            *buf = 134217984;
            v41 = storeTrackId2;
            _os_log_impl(&_mh_execute_header, secureDownloadRenewalManager, OS_LOG_TYPE_DEFAULT, "Skip deleting episode %lld because we should keep", buf, 0xCu);
          }

          goto LABEL_16;
        }

        v18 = +[MTLegacyDownloadManagerProvider sharedInstance];
        downloadManagerIfSetup = [v18 downloadManagerIfSetup];
        uuid = [v13 uuid];
        [downloadManagerIfSetup cancelDownloadsForEpisodeUuid:uuid userInitiated:0];

        v21 = +[PFTranscriptProviderBridge shared];
        [v21 invalidateTranscriptAssetForAdamID:{objc_msgSend(v13, "storeTrackId")}];

        if ([v13 persistentID])
        {
          v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v13 persistentID]);
          [v31 addObject:v22];
        }

        [v13 setAssetURL:{0, keepCopy}];
        v23 = +[PFFairPlayRolloutController sharedInstance];
        isEnabled = [v23 isEnabled];

        if ((isEnabled & 1) == 0 && +[MTStoreIdentifier isNotEmpty:](MTStoreIdentifier, "isNotEmpty:", [v13 storeTrackId]))
        {
          secureDownloadRenewalManager = [(MTLibrary *)self secureDownloadRenewalManager];
          -[NSObject requestSecureDeletionOf:completionHandler:](secureDownloadRenewalManager, "requestSecureDeletionOf:completionHandler:", [v13 storeTrackId], 0);
LABEL_16:

          continue;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v10);
  }

  v25 = [v31 count];
  v26 = _MTLogCategoryDownload();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      v28 = [v31 count];
      *buf = 134217984;
      v41 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Delete %ld assets from Media Library", buf, 0xCu);
    }

    [MTMediaLibraryUtil deleteMediaItems:v31 completion:0];
    v26 = +[NSNotificationCenter defaultCenter];
    [v26 postNotificationName:PFMediaDownloadWasDeletedNotification object:0];
  }

  else if (v27)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No downloaded assets in Media Library. Nothing to delete.", buf, 2u);
  }
}

- (void)removeDownloadOf:(id)of
{
  v4 = [NSSet setWithObject:of];
  [(MTLibrary *)self removeDownloadAssetsForEpisodeAdamIds:v4];
}

- (void)_markPlaylistsForUpdateForPodcastUuids:(id)uuids
{
  uuidsCopy = uuids;
  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006629C;
  v8[3] = &unk_1004D8798;
  v9 = mainOrPrivateContext;
  v10 = uuidsCopy;
  v6 = uuidsCopy;
  v7 = mainOrPrivateContext;
  [v7 performBlock:v8];
}

- (BOOL)setStationsOrder:(id)order
{
  orderCopy = order;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006665C;
  v9[3] = &unk_1004D87E8;
  v6 = mainOrPrivateContext;
  v10 = v6;
  v7 = orderCopy;
  v11 = v7;
  v12 = &v13;
  [v6 performBlockAndWait:v9];
  LOBYTE(v4) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v4;
}

- (BOOL)setPodcastsOrder:(id)order
{
  orderCopy = order;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000669BC;
  v10[3] = &unk_1004D8DF0;
  v7 = mainOrPrivateContext;
  v11 = v7;
  v8 = orderCopy;
  selfCopy = self;
  v14 = &v15;
  v12 = v8;
  [v7 performBlockAndWait:v10];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

- (BOOL)setEpisodesOrder:(id)order forStation:(id)station
{
  orderCopy = order;
  stationCopy = station;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v7 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100066DF0;
  v13[3] = &unk_1004D8E40;
  v9 = mainOrPrivateContext;
  v14 = v9;
  v10 = stationCopy;
  v15 = v10;
  v11 = orderCopy;
  v16 = v11;
  v17 = &v18;
  [v9 performBlockAndWait:v13];
  LOBYTE(v7) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v7;
}

- (BOOL)setStationShowGroupOrder:(id)order forStation:(id)station
{
  orderCopy = order;
  stationCopy = station;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v7 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100067198;
  v13[3] = &unk_1004D8E40;
  v9 = mainOrPrivateContext;
  v14 = v9;
  v10 = stationCopy;
  v15 = v10;
  v11 = orderCopy;
  v16 = v11;
  v17 = &v18;
  [v9 performBlockAndWait:v13];
  LOBYTE(v7) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v7;
}

- (void)cleanUpOldHiddenPodcasts
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_cleanUpOldHiddenPodcastsWorkController)
  {
    v3 = [MTCoalescableWorkController controllerWithQosClass:9 identifier:@"MTLibrary.cleanUpOldHiddenPodcasts"];
    cleanUpOldHiddenPodcastsWorkController = selfCopy->_cleanUpOldHiddenPodcastsWorkController;
    selfCopy->_cleanUpOldHiddenPodcastsWorkController = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_cleanUpOldHiddenPodcastsWorkController;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100077868;
  v6[3] = &unk_1004D8358;
  v6[4] = selfCopy;
  [(MTCoalescableWorkController *)v5 schedule:v6];
}

- (void)synchronouslyMarkAsHiddenAllPodcastsWithoutResettingSyncVersions
{
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting (hiding) all Podcasts", buf, 2u);
  }

  v4 = +[MTDB sharedInstance];
  importContext = [v4 importContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077970;
  v7[3] = &unk_1004D8798;
  v8 = importContext;
  selfCopy = self;
  v6 = importContext;
  [v6 performBlockAndWaitWithSave:v7];
}

- (void)_immediatelyDeleteAllHiddenPodcasts
{
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Immediately deleting all hidden podcasts", v5, 2u);
  }

  v4 = +[MTPodcast predicateForHiddenPodcasts];
  [(MTLibrary *)self _deletePodcastForPredicate:v4];
}

- (void)_cleanUpOldHiddenPodcasts
{
  _predicateForOpportunisticHiddenPodcastDeletion = [(MTLibrary *)self _predicateForOpportunisticHiddenPodcastDeletion];
  [(MTLibrary *)self _deletePodcastForPredicate:_predicateForOpportunisticHiddenPodcastDeletion];
}

- (id)_predicateForOpportunisticHiddenPodcastDeletion
{
  v2 = +[NSDate now];
  v3 = [v2 dateByAddingTimeInterval:-60.0];
  v4 = +[MTPodcast predicateForHiddenPodcasts];
  v9[0] = v4;
  v5 = [NSPredicate predicateForDateKey:kPodcastAddedDate isLessThanDate:v3];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

- (void)_deletePodcastForPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = +[MTDB sharedInstance];
  importContext = [v5 importContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100077D8C;
  v9[3] = &unk_1004D94C8;
  v10 = importContext;
  v11 = predicateCopy;
  selfCopy = self;
  v7 = predicateCopy;
  v8 = importContext;
  [v8 performBlockAndWait:v9];
  +[MTBaseFeedManager saveSubscriptionMetadata];
}

- (void)_unsafeDeletePodcast:(id)podcast ctx:(id)ctx
{
  podcastCopy = podcast;
  ctxCopy = ctx;
  if (podcastCopy)
  {
    uuid = [podcastCopy uuid];
    if (!uuid)
    {
      v9 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error deleting podcast without uuid", &v16, 2u);
      }
    }

    v10 = +[MTImageStore defaultStore];
    [v10 removeItemsWithPrefx:uuid];

    v11 = +[PUIFeedManagerArtworkBridge shared];
    [v11 invalidateArtworkForPodcast:podcastCopy];

    v12 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = uuid;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deleting episodes for podcast %@ as part of podcast deletion", &v16, 0xCu);
    }

    v13 = [MTEpisode predicateForAllEpisodesIncludingHiddenOnPodcastUuid:uuid];
    [(MTLibrary *)self _deleteEpisodes:v13 forced:1 ctx:ctxCopy];

    v14 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = uuid;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting MTPodcast %@ from context", &v16, 0xCu);
    }

    [ctxCopy deleteObject:podcastCopy];
    [ctxCopy saveInCurrentBlock];
    v15 = +[MTIntentDonationUtil sharedInstance];
    [v15 removeDonationForPodcastUuid:uuid];
  }
}

- (void)_markAsHiddenPodcast:(id)podcast inContext:(id)context
{
  podcastCopy = podcast;
  contextCopy = context;
  v8 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [podcastCopy uuid];
    *buf = 138412290;
    v29 = uuid;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Marking podcast %@ for deletion by hiding it", buf, 0xCu);
  }

  [podcastCopy setHidden:1];
  config = [(MTLibrary *)self config];
  supportsLocalMedia = [config supportsLocalMedia];

  if (supportsLocalMedia)
  {
    episodes = [podcastCopy episodes];
    [(MTLibrary *)self _removeDownloadAssetsForEpisodes:episodes shouldKeep:0 forced:1];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  playlistSettings = [podcastCopy playlistSettings];
  v14 = [playlistSettings countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(playlistSettings);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        playlist = [v18 playlist];
        [playlist setNeedsUpdate:1];

        [contextCopy deleteObject:v18];
      }

      v15 = [playlistSettings countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  uuid2 = [podcastCopy uuid];
  [MTBaseFeedManager removeMetadataForPodcastUuid:uuid2];

  v21 = +[UNUserNotificationCenter currentNotificationCenter];
  uuid3 = [podcastCopy uuid];
  [v21 mt_removeAllNotificationsForPodcastUuid:uuid3];

  [(MTLibrary *)self _deleteSpotlightIdentifiersForPodcast:podcastCopy];
}

- (void)_deleteSpotlightIdentifiersForPodcast:(id)podcast
{
  podcastCopy = podcast;
  episodes = [podcastCopy episodes];
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [episodes count]);

  episodes2 = [podcastCopy episodes];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000784B8;
  v10[3] = &unk_1004D9640;
  v7 = v5;
  v11 = v7;
  [episodes2 enumerateObjectsUsingBlock:v10];

  v8 = [MTCoreSpotlightUtil uniqueIdentifierForObject:podcastCopy];

  if (v8)
  {
    [v7 addObject:v8];
  }

  v9 = +[MTCoreSpotlightController sharedInstance];
  [v9 deleteSearchableItemsWithIdentifiers:v7];
}

- (void)deletePodcastWithUuid:(id)uuid
{
  uuidCopy = uuid;
  v5 = +[MTDB sharedInstance];
  importContext = [v5 importContext];

  v8 = uuidCopy;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  [(MTLibrary *)self _markAsHiddenPodcastsWithUuids:v7 setSubscriptionsSyncDirty:1 ctx:importContext];
}

- (void)_markAsHiddenPodcastsWithUuids:(id)uuids setSubscriptionsSyncDirty:(BOOL)dirty ctx:(id)ctx
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000786DC;
  v14 = &unk_1004D9668;
  uuidsCopy = uuids;
  ctxCopy = ctx;
  v16 = ctxCopy;
  selfCopy = self;
  LOBYTE(v18) = dirty;
  v9 = uuidsCopy;
  v10 = objc_retainBlock(&v11);
  if (isRunningUnitTests())
  {
    [ctxCopy performBlockAndWait:{v10, v11, v12, v13, v14, uuidsCopy, v16, selfCopy, v18}];
  }

  else
  {
    [ctxCopy performBlock:{v10, v11, v12, v13, v14, uuidsCopy, v16, selfCopy, v18}];
  }
}

- (void)deletePlaylist:(id)playlist
{
  playlistCopy = playlist;
  v5 = playlistCopy;
  if (playlistCopy)
  {
    managedObjectContext = [playlistCopy managedObjectContext];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000D49E8;
    v7[3] = &unk_1004D8798;
    v8 = v5;
    selfCopy = self;
    [managedObjectContext performBlockAndWaitWithSave:v7];
  }
}

- (void)deleteStationWithUuid:(id)uuid
{
  uuidCopy = uuid;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v7 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = uuidCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deleting station with uuid: %@", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D4BC4;
  v10[3] = &unk_1004D94C8;
  v11 = mainOrPrivateContext;
  v12 = uuidCopy;
  selfCopy = self;
  v8 = uuidCopy;
  v9 = mainOrPrivateContext;
  [v9 performBlockAndWait:v10];
}

- (void)deleteAllTopLevelStationsExcludingFolders
{
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Deleting all Stations", buf, 2u);
  }

  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4D1C;
  v7[3] = &unk_1004D8798;
  v8 = mainOrPrivateContext;
  selfCopy = self;
  v6 = mainOrPrivateContext;
  [v6 performBlockAndWait:v7];
}

- (void)_deleteSpotlightIdentifierForPlaylist:(id)playlist
{
  v3 = [MTCoreSpotlightUtil uniqueIdentifierForObject:playlist];
  if (v3)
  {
    v4 = +[MTCoreSpotlightController sharedInstance];
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    v6 = [NSSet setWithArray:v5];
    [v4 deleteSearchableItemsWithIdentifiers:v6];
  }
}

- (void)_deleteEpisodes:(id)episodes forced:(BOOL)forced ctx:(id)ctx
{
  episodesCopy = episodes;
  ctxCopy = ctx;
  config = [(MTLibrary *)self config];
  if ([config supportsLocalMedia])
  {
  }

  else
  {
    config2 = [(MTLibrary *)self config];
    supportsPlayback = [config2 supportsPlayback];

    if (!supportsPlayback)
    {
      goto LABEL_14;
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100008A8C;
  v34 = sub_10003B51C;
  v35 = +[NSMutableSet set];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000E3B58;
  v24[3] = &unk_1004DBD78;
  v25 = episodesCopy;
  selfCopy = self;
  v13 = ctxCopy;
  forcedCopy = forced;
  v27 = v13;
  v28 = &v30;
  [v13 performBlockAndWait:v24];
  if ([v31[5] count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v31[5];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v36 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          v19 = +[UNUserNotificationCenter currentNotificationCenter];
          [v19 mt_removeAllNotificationsForDeletedEpisodesOnPodcastUuid:v18 ctx:v13];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v20 objects:v36 count:16];
      }

      while (v15);
    }
  }

  _Block_object_dispose(&v30, 8);
LABEL_14:
}

- (void)_deleteEpisodeUuids:(id)uuids forced:(BOOL)forced
{
  forcedCopy = forced;
  uuids = [NSPredicate predicateWithFormat:@"%K IN %@", kEpisodeUuid, uuids];
  v6 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v6 mainOrPrivateContext];
  [(MTLibrary *)self _deleteEpisodes:uuids forced:forcedCopy ctx:mainOrPrivateContext];
}

- (id)_updateUpNextDeleting:(id)deleting inContext:(id)context forced:(BOOL)forced podcastUuids:(id)uuids
{
  deletingCopy = deleting;
  contextCopy = context;
  uuidsCopy = uuids;
  config = [(MTLibrary *)self config];
  LODWORD(self) = [config supportsPlayback];

  if (self)
  {
    v13 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = deletingCopy;
    obj = deletingCopy;
    v14 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      p_cache = MTOptionsTableViewController.cache;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          if ([p_cache + 478 hasDefaultInstance])
          {
            defaultInstance = [p_cache + 478 defaultInstance];
            upNextController = [defaultInstance upNextController];
            uuid = [v19 uuid];
            [upNextController removeEpisodesForUuid:uuid];

            p_cache = (MTOptionsTableViewController + 16);
          }

          if ((![v19 feedDeleted] || objc_msgSend(v19, "isDownloaded")) && !forced)
          {
            v23 = _MTLogCategoryDefault();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              uuid2 = [v19 uuid];
              podcastUuid = [v19 podcastUuid];
              *buf = 138412546;
              v38 = uuid2;
              v39 = 2112;
              v40 = podcastUuid;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Do not delete a downloaded item! episode uuid %@ - podcast uuid %@", buf, 0x16u);

              p_cache = (MTOptionsTableViewController + 16);
            }
          }

          podcast = [v19 podcast];
          uuid3 = [podcast uuid];
          [uuidsCopy addObject:uuid3];

          uuid4 = [v19 uuid];
          [v13 addObject:uuid4];

          [contextCopy deleteObject:v19];
        }

        v15 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v15);
    }

    deletingCopy = v30;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)deleteEpisodes:(id)episodes
{
  episodesCopy = episodes;
  v6 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v6 mainOrPrivateContext];
  [(MTLibrary *)self _deleteEpisodes:episodesCopy forced:0 ctx:mainOrPrivateContext];
}

- (void)deleteOrphanedEpisodes
{
  v3 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v3 mainOrPrivateContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E43EC;
  v6[3] = &unk_1004D8798;
  v7 = mainOrPrivateContext;
  selfCopy = self;
  v5 = mainOrPrivateContext;
  [v5 performBlockAndWait:v6];
}

- (BOOL)setPlayed:(BOOL)played manually:(BOOL)manually forUserActionOnEpisodeUuid:(id)uuid
{
  uuidCopy = uuid;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v9 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v9 mainOrPrivateContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011AF24;
  v15[3] = &unk_1004DCEC8;
  v11 = mainOrPrivateContext;
  v16 = v11;
  v12 = uuidCopy;
  selfCopy = self;
  v19 = &v22;
  v17 = v12;
  playedCopy = played;
  manuallyCopy = manually;
  [v11 performBlockAndWait:v15];
  v13 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v13;
}

- (BOOL)setPlayed:(BOOL)played manually:(BOOL)manually forUserActionOnEpisode:(id)episode saveChanges:(BOOL)changes
{
  if (played)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  return [(MTLibrary *)self setPlayState:v6 manually:manually forUserActionOnEpisode:episode saveChanges:changes];
}

- (BOOL)setPlayState:(int64_t)state manually:(BOOL)manually forUserActionOnEpisodeUuid:(id)uuid
{
  uuidCopy = uuid;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v9 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v9 mainOrPrivateContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011B0E8;
  v15[3] = &unk_1004DCEF0;
  v11 = mainOrPrivateContext;
  v16 = v11;
  v12 = uuidCopy;
  v17 = v12;
  selfCopy = self;
  v19 = &v22;
  stateCopy = state;
  manuallyCopy = manually;
  [v11 performBlockAndWait:v15];
  v13 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v13;
}

- (BOOL)setPlayState:(int64_t)state fromContextActions:(BOOL)actions manually:(BOOL)manually forUserActionOnEpisode:(id)episode saveChanges:(BOOL)changes
{
  changesCopy = changes;
  manuallyCopy = manually;
  actionsCopy = actions;
  episodeCopy = episode;
  if (episodeCopy)
  {
    v12 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      playState = [episodeCopy playState];
      title = [episodeCopy title];
      uuid = [episodeCopy uuid];
      v21[0] = 67241730;
      v21[1] = actionsCopy;
      v22 = 2050;
      v23 = playState;
      v24 = 2050;
      stateCopy = state;
      v26 = 1026;
      v27 = manuallyCopy;
      v28 = 1026;
      v29 = changesCopy;
      v30 = 2114;
      v31 = title;
      v32 = 2114;
      v33 = uuid;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting Playstate from context actions %{public}d: playstate from %{public}lld to %{public}lld , Manual: %{public}d, saveChanges: %{public}u For: %{public}@, UUID: %{public}@", v21, 0x3Cu);
    }

    podcast = [episodeCopy podcast];
    [podcast resetGoDarkWithReason:4];
    if (actionsCopy)
    {
      playState2 = [episodeCopy playState];
      if (state == 2 && !playState2)
      {
        [episodeCopy setPlayhead:0.0];
      }

      if (state)
      {
        manuallyCopy = manuallyCopy;
      }

      else
      {
        manuallyCopy = 0;
      }
    }

    if (!state && (manuallyCopy & 1) == 0)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      [episodeCopy setLastDatePlayed:?];
    }

    saveInCurrentBlock = 1;
    [episodeCopy setPlayState:state manually:manuallyCopy source:1];
    if (changesCopy)
    {
      managedObjectContext = [episodeCopy managedObjectContext];
      saveInCurrentBlock = [managedObjectContext saveInCurrentBlock];
    }
  }

  else
  {
    saveInCurrentBlock = 0;
  }

  return saveInCurrentBlock;
}

- (void)cleanUpNeutralInterests
{
  selfCopy = self;
  MTLibrary.cleanUpNeutralInterests()();
}

- (void)deleteAllInterestsBlockingCaller
{
  selfCopy = self;
  MTLibrary.deleteAllInterestsBlockingCaller()();
}

- (void)removeEpisodesWith:(id)with
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MTLibrary.removeEpisodes(with:)(v4);
}

@end