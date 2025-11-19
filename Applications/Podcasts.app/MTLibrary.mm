@interface MTLibrary
+ (id)sharedInstance;
+ (void)initialize;
+ (void)setConfigurationForTests:(id)a3;
- (BOOL)setEpisodesOrder:(id)a3 forStation:(id)a4;
- (BOOL)setPlayState:(int64_t)a3 fromContextActions:(BOOL)a4 manually:(BOOL)a5 forUserActionOnEpisode:(id)a6 saveChanges:(BOOL)a7;
- (BOOL)setPlayState:(int64_t)a3 manually:(BOOL)a4 forUserActionOnEpisodeUuid:(id)a5;
- (BOOL)setPlayed:(BOOL)a3 manually:(BOOL)a4 forUserActionOnEpisode:(id)a5 saveChanges:(BOOL)a6;
- (BOOL)setPlayed:(BOOL)a3 manually:(BOOL)a4 forUserActionOnEpisodeUuid:(id)a5;
- (BOOL)setPodcastsOrder:(id)a3;
- (BOOL)setStationShowGroupOrder:(id)a3 forStation:(id)a4;
- (BOOL)setStationsOrder:(id)a3;
- (MTLibrary)init;
- (MTLibrary)initWithConfiguration:(id)a3;
- (id)_predicateForOpportunisticHiddenPodcastDeletion;
- (id)_updateUpNextDeleting:(id)a3 inContext:(id)a4 forced:(BOOL)a5 podcastUuids:(id)a6;
- (void)_cleanUpOldHiddenPodcasts;
- (void)_deleteEpisodeUuids:(id)a3 forced:(BOOL)a4;
- (void)_deleteEpisodes:(id)a3 forced:(BOOL)a4 ctx:(id)a5;
- (void)_deletePodcastForPredicate:(id)a3;
- (void)_deleteSpotlightIdentifierForPlaylist:(id)a3;
- (void)_deleteSpotlightIdentifiersForPodcast:(id)a3;
- (void)_immediatelyDeleteAllHiddenPodcasts;
- (void)_markAsHiddenPodcast:(id)a3 inContext:(id)a4;
- (void)_markAsHiddenPodcastsWithUuids:(id)a3 setSubscriptionsSyncDirty:(BOOL)a4 ctx:(id)a5;
- (void)_markPlaylistsForUpdateForPodcastUuids:(id)a3;
- (void)_removeDownloadAssetsForEpisodes:(id)a3 shouldKeep:(id)a4 forced:(BOOL)a5;
- (void)_unsafeDeletePodcast:(id)a3 ctx:(id)a4;
- (void)_userDefaultsDidChange:(id)a3;
- (void)cleanUpNeutralInterests;
- (void)cleanUpOldHiddenPodcasts;
- (void)deleteAllInterestsBlockingCaller;
- (void)deleteAllTopLevelStationsExcludingFolders;
- (void)deleteEpisodes:(id)a3;
- (void)deleteOrphanedEpisodes;
- (void)deletePlaylist:(id)a3;
- (void)deletePodcastWithUuid:(id)a3;
- (void)deleteStationWithUuid:(id)a3;
- (void)removeAllHLSDownloadAssets;
- (void)removeDownloadAssetsForEpisodeAdamIds:(id)a3 shouldKeep:(id)a4;
- (void)removeDownloadAssetsForEpisodeUuids:(id)a3 shouldKeep:(id)a4;
- (void)removeDownloadOf:(id)a3;
- (void)removeEpisodesWith:(id)a3;
- (void)synchronouslyMarkAsHiddenAllPodcastsWithoutResettingSyncVersions;
- (void)updateiTunesPlaylistForiTunesMatchState;
@end

@implementation MTLibrary

+ (void)initialize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___MTLibrary;
  objc_msgSendSuper2(&v3, "initialize");
  if (objc_opt_class() == a1)
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
  block[4] = a1;
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

+ (void)setConfigurationForTests:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedInstance];
  [v5 setConfig:v4];
}

- (MTLibrary)initWithConfiguration:(id)a3
{
  v4 = a3;
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

    [(MTLibrary *)v9 setConfig:v4];
  }

  return v5;
}

- (void)updateiTunesPlaylistForiTunesMatchState
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 privateQueueContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005D0D0;
  v6[3] = &unk_1004D8748;
  v7 = v4;
  v8 = [(MTLibrary *)self iTunesMatchEnabled];
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

- (void)_userDefaultsDidChange:(id)a3
{
  v3 = [a3 object];
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];

  if (v3 != v4)
  {

    +[MTPreferences copySettingsToSharedContainer];
  }
}

- (void)removeDownloadAssetsForEpisodeUuids:(id)a3 shouldKeep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MTDB sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005D2CC;
  v13[3] = &unk_1004D8770;
  v14 = v9;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v9;
  [v12 performBlockAndWaitWithSave:v13];
}

- (void)removeDownloadAssetsForEpisodeAdamIds:(id)a3 shouldKeep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MTDB sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005D480;
  v13[3] = &unk_1004D8770;
  v14 = v9;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v9;
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
  v5 = [v4 privateQueueContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005D630;
  v7[3] = &unk_1004D8798;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [v6 performBlock:v7];
}

- (void)_removeDownloadAssetsForEpisodes:(id)a3 shouldKeep:(id)a4 forced:(BOOL)a5
{
  v7 = a3;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10005DB54;
  v37[3] = &unk_1004D87C0;
  v29 = a4;
  v38 = v29;
  v39 = a5;
  v8 = objc_retainBlock(v37);
  v31 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
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
          v15 = [v13 storeTrackId];
          *buf = 134217984;
          v41 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting episode %lld", buf, 0xCu);
        }

        if ((v8[2])(v8, v13))
        {
          v16 = _MTLogCategoryDownload();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v13 storeTrackId];
            *buf = 134217984;
            v41 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skip deleting episode %lld because we should keep", buf, 0xCu);
          }

          goto LABEL_16;
        }

        v18 = +[MTLegacyDownloadManagerProvider sharedInstance];
        v19 = [v18 downloadManagerIfSetup];
        v20 = [v13 uuid];
        [v19 cancelDownloadsForEpisodeUuid:v20 userInitiated:0];

        v21 = +[PFTranscriptProviderBridge shared];
        [v21 invalidateTranscriptAssetForAdamID:{objc_msgSend(v13, "storeTrackId")}];

        if ([v13 persistentID])
        {
          v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v13 persistentID]);
          [v31 addObject:v22];
        }

        [v13 setAssetURL:{0, v29}];
        v23 = +[PFFairPlayRolloutController sharedInstance];
        v24 = [v23 isEnabled];

        if ((v24 & 1) == 0 && +[MTStoreIdentifier isNotEmpty:](MTStoreIdentifier, "isNotEmpty:", [v13 storeTrackId]))
        {
          v16 = [(MTLibrary *)self secureDownloadRenewalManager];
          -[NSObject requestSecureDeletionOf:completionHandler:](v16, "requestSecureDeletionOf:completionHandler:", [v13 storeTrackId], 0);
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

- (void)removeDownloadOf:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  [(MTLibrary *)self removeDownloadAssetsForEpisodeAdamIds:v4];
}

- (void)_markPlaylistsForUpdateForPodcastUuids:(id)a3
{
  v3 = a3;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006629C;
  v8[3] = &unk_1004D8798;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  v7 = v5;
  [v7 performBlock:v8];
}

- (BOOL)setStationsOrder:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006665C;
  v9[3] = &unk_1004D87E8;
  v6 = v5;
  v10 = v6;
  v7 = v3;
  v11 = v7;
  v12 = &v13;
  [v6 performBlockAndWait:v9];
  LOBYTE(v4) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v4;
}

- (BOOL)setPodcastsOrder:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000669BC;
  v10[3] = &unk_1004D8DF0;
  v7 = v6;
  v11 = v7;
  v8 = v4;
  v13 = self;
  v14 = &v15;
  v12 = v8;
  [v7 performBlockAndWait:v10];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

- (BOOL)setEpisodesOrder:(id)a3 forStation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = +[MTDB sharedInstance];
  v8 = [v7 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100066DF0;
  v13[3] = &unk_1004D8E40;
  v9 = v8;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v11 = v5;
  v16 = v11;
  v17 = &v18;
  [v9 performBlockAndWait:v13];
  LOBYTE(v7) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v7;
}

- (BOOL)setStationShowGroupOrder:(id)a3 forStation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = +[MTDB sharedInstance];
  v8 = [v7 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100067198;
  v13[3] = &unk_1004D8E40;
  v9 = v8;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v11 = v5;
  v16 = v11;
  v17 = &v18;
  [v9 performBlockAndWait:v13];
  LOBYTE(v7) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v7;
}

- (void)cleanUpOldHiddenPodcasts
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_cleanUpOldHiddenPodcastsWorkController)
  {
    v3 = [MTCoalescableWorkController controllerWithQosClass:9 identifier:@"MTLibrary.cleanUpOldHiddenPodcasts"];
    cleanUpOldHiddenPodcastsWorkController = v2->_cleanUpOldHiddenPodcastsWorkController;
    v2->_cleanUpOldHiddenPodcastsWorkController = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_cleanUpOldHiddenPodcastsWorkController;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100077868;
  v6[3] = &unk_1004D8358;
  v6[4] = v2;
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
  v5 = [v4 importContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077970;
  v7[3] = &unk_1004D8798;
  v8 = v5;
  v9 = self;
  v6 = v5;
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
  v3 = [(MTLibrary *)self _predicateForOpportunisticHiddenPodcastDeletion];
  [(MTLibrary *)self _deletePodcastForPredicate:v3];
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

- (void)_deletePodcastForPredicate:(id)a3
{
  v4 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 importContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100077D8C;
  v9[3] = &unk_1004D94C8;
  v10 = v6;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v6;
  [v8 performBlockAndWait:v9];
  +[MTBaseFeedManager saveSubscriptionMetadata];
}

- (void)_unsafeDeletePodcast:(id)a3 ctx:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 uuid];
    if (!v8)
    {
      v9 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error deleting podcast without uuid", &v16, 2u);
      }
    }

    v10 = +[MTImageStore defaultStore];
    [v10 removeItemsWithPrefx:v8];

    v11 = +[PUIFeedManagerArtworkBridge shared];
    [v11 invalidateArtworkForPodcast:v6];

    v12 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deleting episodes for podcast %@ as part of podcast deletion", &v16, 0xCu);
    }

    v13 = [MTEpisode predicateForAllEpisodesIncludingHiddenOnPodcastUuid:v8];
    [(MTLibrary *)self _deleteEpisodes:v13 forced:1 ctx:v7];

    v14 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting MTPodcast %@ from context", &v16, 0xCu);
    }

    [v7 deleteObject:v6];
    [v7 saveInCurrentBlock];
    v15 = +[MTIntentDonationUtil sharedInstance];
    [v15 removeDonationForPodcastUuid:v8];
  }
}

- (void)_markAsHiddenPodcast:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 uuid];
    *buf = 138412290;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Marking podcast %@ for deletion by hiding it", buf, 0xCu);
  }

  [v6 setHidden:1];
  v10 = [(MTLibrary *)self config];
  v11 = [v10 supportsLocalMedia];

  if (v11)
  {
    v12 = [v6 episodes];
    [(MTLibrary *)self _removeDownloadAssetsForEpisodes:v12 shouldKeep:0 forced:1];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v6 playlistSettings];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [v18 playlist];
        [v19 setNeedsUpdate:1];

        [v7 deleteObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v20 = [v6 uuid];
  [MTBaseFeedManager removeMetadataForPodcastUuid:v20];

  v21 = +[UNUserNotificationCenter currentNotificationCenter];
  v22 = [v6 uuid];
  [v21 mt_removeAllNotificationsForPodcastUuid:v22];

  [(MTLibrary *)self _deleteSpotlightIdentifiersForPodcast:v6];
}

- (void)_deleteSpotlightIdentifiersForPodcast:(id)a3
{
  v3 = a3;
  v4 = [v3 episodes];
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);

  v6 = [v3 episodes];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000784B8;
  v10[3] = &unk_1004D9640;
  v7 = v5;
  v11 = v7;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = [MTCoreSpotlightUtil uniqueIdentifierForObject:v3];

  if (v8)
  {
    [v7 addObject:v8];
  }

  v9 = +[MTCoreSpotlightController sharedInstance];
  [v9 deleteSearchableItemsWithIdentifiers:v7];
}

- (void)deletePodcastWithUuid:(id)a3
{
  v4 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 importContext];

  v8 = v4;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  [(MTLibrary *)self _markAsHiddenPodcastsWithUuids:v7 setSubscriptionsSyncDirty:1 ctx:v6];
}

- (void)_markAsHiddenPodcastsWithUuids:(id)a3 setSubscriptionsSyncDirty:(BOOL)a4 ctx:(id)a5
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000786DC;
  v14 = &unk_1004D9668;
  v15 = a3;
  v8 = a5;
  v16 = v8;
  v17 = self;
  LOBYTE(v18) = a4;
  v9 = v15;
  v10 = objc_retainBlock(&v11);
  if (isRunningUnitTests())
  {
    [v8 performBlockAndWait:{v10, v11, v12, v13, v14, v15, v16, v17, v18}];
  }

  else
  {
    [v8 performBlock:{v10, v11, v12, v13, v14, v15, v16, v17, v18}];
  }
}

- (void)deletePlaylist:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 managedObjectContext];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000D49E8;
    v7[3] = &unk_1004D8798;
    v8 = v5;
    v9 = self;
    [v6 performBlockAndWaitWithSave:v7];
  }
}

- (void)deleteStationWithUuid:(id)a3
{
  v4 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v7 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deleting station with uuid: %@", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D4BC4;
  v10[3] = &unk_1004D94C8;
  v11 = v6;
  v12 = v4;
  v13 = self;
  v8 = v4;
  v9 = v6;
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
  v5 = [v4 mainOrPrivateContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4D1C;
  v7[3] = &unk_1004D8798;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

- (void)_deleteSpotlightIdentifierForPlaylist:(id)a3
{
  v3 = [MTCoreSpotlightUtil uniqueIdentifierForObject:a3];
  if (v3)
  {
    v4 = +[MTCoreSpotlightController sharedInstance];
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    v6 = [NSSet setWithArray:v5];
    [v4 deleteSearchableItemsWithIdentifiers:v6];
  }
}

- (void)_deleteEpisodes:(id)a3 forced:(BOOL)a4 ctx:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MTLibrary *)self config];
  if ([v10 supportsLocalMedia])
  {
  }

  else
  {
    v11 = [(MTLibrary *)self config];
    v12 = [v11 supportsPlayback];

    if (!v12)
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
  v25 = v8;
  v26 = self;
  v13 = v9;
  v29 = a4;
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

- (void)_deleteEpisodeUuids:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v8 = [NSPredicate predicateWithFormat:@"%K IN %@", kEpisodeUuid, a3];
  v6 = +[MTDB sharedInstance];
  v7 = [v6 mainOrPrivateContext];
  [(MTLibrary *)self _deleteEpisodes:v8 forced:v4 ctx:v7];
}

- (id)_updateUpNextDeleting:(id)a3 inContext:(id)a4 forced:(BOOL)a5 podcastUuids:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MTLibrary *)self config];
  LODWORD(self) = [v12 supportsPlayback];

  if (self)
  {
    v13 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v9;
    obj = v9;
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
            v20 = [p_cache + 478 defaultInstance];
            v21 = [v20 upNextController];
            v22 = [v19 uuid];
            [v21 removeEpisodesForUuid:v22];

            p_cache = (MTOptionsTableViewController + 16);
          }

          if ((![v19 feedDeleted] || objc_msgSend(v19, "isDownloaded")) && !a5)
          {
            v23 = _MTLogCategoryDefault();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = [v19 uuid];
              v25 = [v19 podcastUuid];
              *buf = 138412546;
              v38 = v24;
              v39 = 2112;
              v40 = v25;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Do not delete a downloaded item! episode uuid %@ - podcast uuid %@", buf, 0x16u);

              p_cache = (MTOptionsTableViewController + 16);
            }
          }

          v26 = [v19 podcast];
          v27 = [v26 uuid];
          [v11 addObject:v27];

          v28 = [v19 uuid];
          [v13 addObject:v28];

          [v10 deleteObject:v19];
        }

        v15 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v15);
    }

    v9 = v30;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)deleteEpisodes:(id)a3
{
  v4 = a3;
  v6 = +[MTDB sharedInstance];
  v5 = [v6 mainOrPrivateContext];
  [(MTLibrary *)self _deleteEpisodes:v4 forced:0 ctx:v5];
}

- (void)deleteOrphanedEpisodes
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E43EC;
  v6[3] = &unk_1004D8798;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

- (BOOL)setPlayed:(BOOL)a3 manually:(BOOL)a4 forUserActionOnEpisodeUuid:(id)a5
{
  v8 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v9 = +[MTDB sharedInstance];
  v10 = [v9 mainOrPrivateContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011AF24;
  v15[3] = &unk_1004DCEC8;
  v11 = v10;
  v16 = v11;
  v12 = v8;
  v18 = self;
  v19 = &v22;
  v17 = v12;
  v20 = a3;
  v21 = a4;
  [v11 performBlockAndWait:v15];
  v13 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v13;
}

- (BOOL)setPlayed:(BOOL)a3 manually:(BOOL)a4 forUserActionOnEpisode:(id)a5 saveChanges:(BOOL)a6
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  return [(MTLibrary *)self setPlayState:v6 manually:a4 forUserActionOnEpisode:a5 saveChanges:a6];
}

- (BOOL)setPlayState:(int64_t)a3 manually:(BOOL)a4 forUserActionOnEpisodeUuid:(id)a5
{
  v8 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v9 = +[MTDB sharedInstance];
  v10 = [v9 mainOrPrivateContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011B0E8;
  v15[3] = &unk_1004DCEF0;
  v11 = v10;
  v16 = v11;
  v12 = v8;
  v17 = v12;
  v18 = self;
  v19 = &v22;
  v20 = a3;
  v21 = a4;
  [v11 performBlockAndWait:v15];
  v13 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v13;
}

- (BOOL)setPlayState:(int64_t)a3 fromContextActions:(BOOL)a4 manually:(BOOL)a5 forUserActionOnEpisode:(id)a6 saveChanges:(BOOL)a7
{
  v7 = a7;
  v8 = a5;
  v9 = a4;
  v11 = a6;
  if (v11)
  {
    v12 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 playState];
      v14 = [v11 title];
      v15 = [v11 uuid];
      v21[0] = 67241730;
      v21[1] = v9;
      v22 = 2050;
      v23 = v13;
      v24 = 2050;
      v25 = a3;
      v26 = 1026;
      v27 = v8;
      v28 = 1026;
      v29 = v7;
      v30 = 2114;
      v31 = v14;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting Playstate from context actions %{public}d: playstate from %{public}lld to %{public}lld , Manual: %{public}d, saveChanges: %{public}u For: %{public}@, UUID: %{public}@", v21, 0x3Cu);
    }

    v16 = [v11 podcast];
    [v16 resetGoDarkWithReason:4];
    if (v9)
    {
      v17 = [v11 playState];
      if (a3 == 2 && !v17)
      {
        [v11 setPlayhead:0.0];
      }

      if (a3)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }
    }

    if (!a3 && (v8 & 1) == 0)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      [v11 setLastDatePlayed:?];
    }

    v18 = 1;
    [v11 setPlayState:a3 manually:v8 source:1];
    if (v7)
    {
      v19 = [v11 managedObjectContext];
      v18 = [v19 saveInCurrentBlock];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)cleanUpNeutralInterests
{
  v2 = self;
  MTLibrary.cleanUpNeutralInterests()();
}

- (void)deleteAllInterestsBlockingCaller
{
  v2 = self;
  MTLibrary.deleteAllInterestsBlockingCaller()();
}

- (void)removeEpisodesWith:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  MTLibrary.removeEpisodes(with:)(v4);
}

@end