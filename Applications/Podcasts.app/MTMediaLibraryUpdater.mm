@interface MTMediaLibraryUpdater
+ (id)numberFormatter;
+ (id)sharedInstance;
- (BOOL)haveMediaLibraryPropertiesChangedForEpisode:(id)a3;
- (MTMediaLibraryUpdater)init;
- (id)_findOrAddPodcastForMediaItem:(id)a3 updaterCache:(id)a4;
- (id)propertiesForMediaLibrary;
- (unint64_t)importPlaylist:(id)a3 intoContext:(id)a4 mediaLibraryCache:(id)a5 knownPlaylistIds:(id)a6;
- (void)_addEpisodeInCtx:(id)a3 mediaItem:(id)a4 episodeCache:(id)a5 podcastUuid:(id)a6 isRestoreDownloadCandidate:(BOOL)a7 canSendNotifications:(BOOL)a8 outEpisodeUUID:(id *)a9;
- (void)_printMediaItemPropertiesForItem:(id)a3;
- (void)_updateDatabaseFromMediaLibrary;
- (void)forceUpdateDatabaseFromMediaLibraryWithCompletion:(id)a3;
- (void)importPlaylists:(id)a3 knownPlaylistIds:(id)a4 mediaLibraryCache:(id)a5 playlists:(id)a6;
- (void)libraryDidChange:(id)a3;
- (void)startObservingMediaLibrary;
- (void)stopObservingMediaLibrary;
- (void)updateMediaLibraryFromNotification:(id)a3;
@end

@implementation MTMediaLibraryUpdater

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F648;
  block[3] = &unk_1004D86F8;
  block[4] = a1;
  if (qword_100583AA0 != -1)
  {
    dispatch_once(&qword_100583AA0, block);
  }

  v2 = qword_100583A98;

  return v2;
}

- (MTMediaLibraryUpdater)init
{
  if (+[MTApplication localLibraryUpdatesDisabled])
  {
    v3 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = MTMediaLibraryUpdater;
    v4 = [(MTMediaLibraryUpdater *)&v20 init];
    if (v4)
    {
      v5 = +[NSMutableArray array];
      v6 = *(v4 + 2);
      *(v4 + 2) = v5;

      v7 = dispatch_get_global_queue(0, 0);
      v8 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v7);
      v9 = *(v4 + 3);
      *(v4 + 3) = v8;

      v10 = *(v4 + 3);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10006F81C;
      handler[3] = &unk_1004D8358;
      v11 = v4;
      v19 = v11;
      dispatch_source_set_event_handler(v10, handler);
      dispatch_resume(*(v4 + 3));
      v12 = objc_alloc_init(NSObject);
      v13 = v11[4];
      v11[4] = v12;

      v14 = +[NSMutableDictionary dictionary];
      v15 = v11[5];
      v11[5] = v14;

      v16 = +[MTDB sharedInstance];
      [v16 addChangeNotifier:v11];
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

- (void)_updateDatabaseFromMediaLibrary
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTMediaLibraryUpdater *)v2 didUpdateCompletionBlocks];
  v62 = [v3 copy];

  v4 = [(MTMediaLibraryUpdater *)v2 didUpdateCompletionBlocks];
  [v4 removeAllObjects];

  objc_sync_exit(v2);
  v59 = v2;

  v5 = +[MPMediaLibrary defaultMediaLibrary];
  v6 = [v5 lastModifiedDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = +[MPMediaQuery mt_allItemsForPodcastsApp];
  v10 = +[MTMediaLibraryRestorePostflightUtil downloadCandidateMediaItems];
  v60 = [v10 mt_compactMap:&stru_1004D92F0];
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = kMTHasImportedMediaLibrary;
  v13 = [v11 BOOLForKey:kMTHasImportedMediaLibrary];

  v14 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = v13;
    LOWORD(v89) = 2112;
    *(&v89 + 2) = v60;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "update-from-MusicLibrary started. hasUpdated = %d, postflightPIDs = %@", buf, 0x12u);
  }

  if ((v13 & 1) == 0)
  {
    if ([v10 count])
    {
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_100070134;
      v83[3] = &unk_1004D9318;
      v84 = v9;
      v15 = v9;
      v16 = [v10 objectsPassingTest:v83];
      v17 = [v16 allObjects];
      v9 = [v15 arrayByAddingObjectsFromArray:v17];
    }

    v18 = [v9 sortedArrayUsingComparator:&stru_1004D9358];

    v19 = +[NSUserDefaults standardUserDefaults];
    [v19 setBool:1 forKey:v12];

    v9 = v18;
  }

  v20 = objc_opt_new();
  v21 = +[MTDB sharedInstance];
  v22 = [v21 importContext];

  v23 = [MTEpisode predicateForDownloaded:1 excludeHidden:0];
  v24 = [MTEpisodeUpdaterCache episodeCacheWithPredicate:v23 inCtx:v22];

  *buf = 0;
  *&v89 = buf;
  *(&v89 + 1) = 0x3032000000;
  v90 = sub_100008910;
  v91 = sub_10003B46C;
  v92 = 0;
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_1000701F4;
  v80[3] = &unk_1004D9068;
  v82 = buf;
  v25 = v22;
  v81 = v25;
  [v25 performBlockAndWait:v80];
  v26 = [MTEntityUpdaterCache alloc];
  v27 = +[MTPodcast predicateForNotHiddenPodcasts];
  v87[0] = kPodcastFeedUrl;
  v87[1] = kPodcastUpdatedFeedUrl;
  v87[2] = kPodcastTitle;
  v28 = [NSArray arrayWithObjects:v87 count:3];
  v86 = kPodcastUuid;
  v29 = [NSArray arrayWithObjects:&v86 count:1];
  v30 = [(MTEntityUpdaterCache *)v26 initWithPredicate:v27 entityName:kMTPodcastEntityName ctx:v25 properties:v28 fetchProperties:v29];

  v31 = +[NSMutableDictionary dictionary];
  v32 = +[NSMutableArray array];
  LOBYTE(v28) = +[PFNotificationSettings canSendNotification];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1000702DC;
  v68[3] = &unk_1004D9380;
  v52 = v9;
  v69 = v52;
  v53 = v10;
  v70 = v53;
  v58 = v20;
  v71 = v58;
  v72 = v2;
  v56 = v30;
  v73 = v56;
  v74 = v25;
  v55 = v24;
  v75 = v55;
  v79 = v28;
  v57 = v31;
  v76 = v57;
  v33 = v32;
  v77 = v33;
  v54 = v60;
  v78 = v54;
  v61 = v74;
  [v74 performBlockAndWaitWithSave:v68];
  v34 = +[MTMediaContentSourceiOSMusicLibrary sharedInstance];
  v35 = [v34 iTunesMatchEnabled];

  if ((v35 & 1) == 0)
  {
    v51 = +[MPMediaQuery mt_podcastsQuery];
    v36 = [v51 collections];
    v37 = objc_alloc_init(NSMutableArray);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v38 = v36;
    v39 = 0;
    v40 = [v38 countByEnumeratingWithState:&v64 objects:v85 count:16];
    if (v40)
    {
      v41 = *v65;
      v42 = MPMediaPlaylistPropertyIsITunesSynced;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v65 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v44 = *(*(&v64 + 1) + 8 * i);
          v45 = [v44 valueForProperty:v42];

          v39 = v45;
          if ([v45 BOOLValue])
          {
            [v37 addObject:v44];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v64 objects:v85 count:16];
      }

      while (v40);
    }

    v46 = [*(v89 + 40) valueForKey:kPlaylistMediaLibraryId];
    v47 = [NSMutableSet setWithArray:v46];

    [(MTMediaLibraryUpdater *)v59 importPlaylists:v61 knownPlaylistIds:v47 mediaLibraryCache:v58 playlists:v37];
  }

  if ([v33 count])
  {
    [MTMediaLibraryUtil deleteMediaItems:v33 completion:0];
  }

  v48 = +[NSUserDefaults standardUserDefaults];
  [v48 setDouble:@"MTMediaLibraryLastUpdate" forKey:v8];

  v49 = +[PUIMediaLibraryStorageController shared];
  [v49 mediaLibraryDidChange];

  [v62 enumerateObjectsUsingBlock:&stru_1004D93C0];
  v50 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "update-from-MusicLibrary finished.", v63, 2u);
  }

  _Block_object_dispose(buf, 8);
}

- (void)forceUpdateDatabaseFromMediaLibraryWithCompletion:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(MTMediaLibraryUpdater *)v4 didUpdateCompletionBlocks];
    v6 = objc_retainBlock(v7);
    [v5 addObject:v6];

    objc_sync_exit(v4);
  }

  dispatch_source_merge_data(self->_updateDatabaseDispatchSource, 1uLL);
}

- (void)startObservingMediaLibrary
{
  v3 = +[MTMediaLibraryTransactionManager sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100070CA8;
  v4[3] = &unk_1004D8358;
  v4[4] = self;
  [v3 beginGeneratingLibraryChangeNotifications:v4];
}

- (void)stopObservingMediaLibrary
{
  v3 = +[MTMediaLibraryTransactionManager sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100070F28;
  v4[3] = &unk_1004D8358;
  v4[4] = self;
  [v3 endGeneratingLibraryChangeNotifications:v4];
}

- (unint64_t)importPlaylist:(id)a3 intoContext:(id)a4 mediaLibraryCache:(id)a5 knownPlaylistIds:(id)a6
{
  v9 = a3;
  v33 = a4;
  v37 = a5;
  v34 = a6;
  v36 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v35 = v9;
  v10 = [v9 playlist];
  v11 = [v10 items];

  v12 = [v11 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v12)
  {
    v13 = *v56;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v55 + 1) + 8 * i) valueForProperty:MPMediaEntityPropertyPersistentID];
        v16 = [v37 objectForKey:v15];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 assetUrl];
          v19 = [v18 length] == 0;

          if (!v19)
          {
            v20 = [v17 assetUrl];
            [v36 addObject:v20];
            v21 = _MTLogCategoryMediaLibrary();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = [v17 title];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
            }
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v12);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v60 = 0x2020000000;
  v61 = 0;
  if (![v36 count])
  {
    goto LABEL_22;
  }

  v23 = [v35 mediaLibraryId];
  if (([v35 isGenius] & 1) == 0 && (objc_msgSend(v35, "isOnTheGo") & 1) == 0 && (objc_msgSend(v35, "isHidden") & 1) == 0)
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100071574;
    v53[3] = &unk_1004D8E18;
    v25 = v36;
    v54 = v25;
    v26 = objc_retainBlock(v53);
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v52[3] = 0;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100071600;
    v49[3] = &unk_1004D9068;
    v51 = v52;
    v27 = v33;
    v50 = v27;
    [v27 performBlockAndWait:v49];
    if ([v34 containsObject:v23])
    {
      [v34 removeObject:v23];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000718D4;
      v38[3] = &unk_1004D9438;
      v39 = v27;
      v40 = v23;
      v41 = v25;
      v43[0] = v26;
      v42 = v35;
      v43[1] = &buf;
      [v39 performBlockAndWaitWithSave:v38];

      v28 = &v39;
      v29 = &v40;
      v30 = &v41;
      v31 = v43;
    }

    else
    {
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10007167C;
      v44[3] = &unk_1004D9410;
      v45 = v27;
      v46 = v35;
      v47 = v25;
      v48[0] = v26;
      v48[1] = &buf;
      v48[2] = v52;
      [v45 performBlockAndWaitWithSave:v44];
      v28 = &v45;
      v29 = &v46;
      v30 = &v47;
      v31 = v48;
    }

    _Block_object_dispose(v52, 8);
LABEL_22:
    v24 = *(*(&buf + 1) + 24);
    goto LABEL_23;
  }

  v24 = 0;
LABEL_23:
  _Block_object_dispose(&buf, 8);

  return v24;
}

- (void)importPlaylists:(id)a3 knownPlaylistIds:(id)a4 mediaLibraryCache:(id)a5 playlists:(id)a6
{
  v28 = self;
  v30 = a3;
  v31 = a4;
  v29 = a5;
  v9 = a6;
  v10 = +[NSMutableDictionary dictionary];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v11)
  {
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [MTMLPlaylist playlistWithMPPlaylist:*(*(&v41 + 1) + 8 * i), v28];
        v15 = [v14 mediaLibraryId];
        [v10 setObject:v14 forKey:v15];
      }

      v11 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v11);
  }

  v16 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = [v10 allValues];
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v18)
  {
    v19 = *v38;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v37 + 1) + 8 * j);
        v22 = [v21 parentMediaLibraryId];
        if ([v22 isEqualToNumber:&off_100500B98])
        {
          [v16 addObject:v21];
        }

        else
        {
          v23 = [v10 objectForKeyedSubscript:v22];
          [v23 addChild:v21];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v18);
  }

  while (1)
  {

    if (![v16 count])
    {
      break;
    }

    v17 = [v16 objectAtIndex:0];
    if (([v17 isEmpty] & 1) == 0)
    {
      v24 = [(MTMediaLibraryUpdater *)v28 importPlaylist:v17 intoContext:v30 mediaLibraryCache:v29 knownPlaylistIds:v31];
      v46[3] += v24;
      v25 = [v17 children];
      [v16 addObjectsFromArray:v25];
    }

    [v16 removeObjectAtIndex:{0, v28}];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100072070;
  v33[3] = &unk_1004D92B0;
  v26 = v30;
  v34 = v26;
  v36 = &v45;
  v27 = v31;
  v35 = v27;
  [v26 performBlockAndWaitWithSave:v33];

  _Block_object_dispose(&v45, 8);
}

- (void)updateMediaLibraryFromNotification:(id)a3
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"doLibraryUpdateFromNotification" object:0];

  [(MTMediaLibraryUpdater *)self performSelector:"doLibraryUpdateFromNotification" withObject:0 afterDelay:1.5];
}

- (void)_printMediaItemPropertiesForItem:(id)a3
{
  v11 = MPMediaItemPropertyPodcastGUID;
  v10 = MPMediaItemPropertyFilePath;
  v8 = MPMediaItemPropertyPodcastURL;
  v7 = MPMediaItemPropertyStoreID;
  v6 = MPMediaItemPropertyHasBeenPlayed;
  v5 = MPMediaItemPropertyDescriptionInfo;
  v9 = a3;
  v3 = [NSSet setWithObjects:MPMediaItemPropertyTitle, MPMediaItemPropertyArtist, MPMediaItemPropertyPodcastTitle, MPMediaItemPropertyPodcastPersistentID, v11, v10, MPMediaItemPropertyPersistentID, MPMediaItemPropertyLastPlayedDate, MPMediaItemPropertyRating, MPMediaItemPropertyComments, MPMediaItemPropertyReleaseDate, MPMediaItemPropertyArtwork, MPMediaItemPropertyAlbumArtist, v8, v7, MPMediaItemPropertyBookmarkTime, v6, MPMediaItemPropertyPlaybackDuration, v5, MPMediaItemPropertyAlbumTitle, MPMediaItemPropertyPersistentID, MPMediaItemPropertyMediaType, MPMediaItemPropertyAlbumPersistentID, MPMediaItemPropertyArtistPersistentID, MPMediaItemPropertyAlbumArtistPersistentID, MPMediaItemPropertyGenre, MPMediaItemPropertyGenrePersistentID, MPMediaItemPropertyComposer, MPMediaItemPropertyComposerPersistentID, MPMediaItemPropertyPlaybackDuration, MPMediaItemPropertyAlbumTrackNumber, MPMediaItemPropertyAlbumTrackCount, MPMediaItemPropertyDiscNumber, MPMediaItemPropertyDiscCount, MPMediaItemPropertyLyrics, MPMediaItemPropertyIsCompilation, MPMediaItemPropertyBeatsPerMinute, MPMediaItemPropertyPlayCount, MPMediaItemPropertySkipCount, MPMediaItemPropertyUserGrouping, 0];
  v4 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "----------------------------------------------------------------", buf, 2u);
  }

  [v9 enumerateValuesForProperties:v3 usingBlock:&stru_1004D94A0];
}

- (id)_findOrAddPodcastForMediaItem:(id)a3 updaterCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 feedUrl];
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = v8;
  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:kPodcastFeedUrl];
    [v9 setObject:v7 forKeyedSubscript:kPodcastUpdatedFeedUrl];
  }

  if ([v9 count])
  {
    v10 = [v6 propertyDictionaryForSearchItem:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 podcastTitle];
  v12 = [v11 stringByStrippingHTML];

  if (!v10)
  {
    if ([(__CFString *)v12 length])
    {
      if (!v12)
      {
        v13 = 0;
        goto LABEL_27;
      }
    }

    else
    {

      v12 = @"Untitled";
    }

    [v9 setObject:v12 forKeyedSubscript:kPodcastTitle];
    v10 = [v6 propertyDictionaryForSearchItem:v9];
  }

  v14 = +[MTDB sharedInstance];
  v15 = [v14 importContext];

  if (v10)
  {
    v16 = [v10 objectForKey:kPodcastUuid];
    v13 = [v15 podcastForUuid:v16];

    if (v13)
    {
      if ([v13 hidden])
      {
        [v13 setHidden:0];
        [v13 setNeedsArtworkUpdate:1];
      }

      v17 = [v5 podcastPersistentId];
      v18 = [v17 longLongValue];

      [v13 setPodcastPID:v18];
    }
  }

  else
  {
    v19 = [v5 artist];
    v29 = [v19 stringByStrippingHTML];

    v20 = _MTLogCategoryMediaLibrary();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Adding Podcast from Feed: %@", buf, 0xCu);
    }

    v13 = +[MTPodcast insertNewPodcastInManagedObjectContext:subscribed:feedUrl:showType:title:author:provider:imageUrl:description:](MTPodcast, "insertNewPodcastInManagedObjectContext:subscribed:feedUrl:showType:title:author:provider:imageUrl:description:", v15, 0, v7, +[MTPodcast defaultShowType], v12, v29, 0, 0, 0);
    if (v13)
    {
      v21 = [v5 storeCollectionId];
      v22 = [v5 podcastPersistentId];
      [v13 setPodcastPID:{objc_msgSend(v22, "longLongValue")}];

      v28 = v21;
      [v13 setStoreCollectionId:{objc_msgSend(v21, "longLongValue")}];
      if ([v5 isItunesU])
      {
        [v13 setDeletePlayedEpisodes:0];
        [v13 setShowTypeSetting:2];
        [v13 setEpisodeLimit:&_mh_execute_header];
      }

      [v6 addEntityToCache:v13];
      v23 = _MTLogCategoryMediaLibrary();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v13 uuid];
        v24 = [v13 title];
        *buf = 138412546;
        v31 = v27;
        v32 = 2112;
        v33 = v24;
        v25 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Inserting new podcast:%@ (%@)", buf, 0x16u);
      }
    }
  }

LABEL_27:

  return v13;
}

- (void)_addEpisodeInCtx:(id)a3 mediaItem:(id)a4 episodeCache:(id)a5 podcastUuid:(id)a6 isRestoreDownloadCandidate:(BOOL)a7 canSendNotifications:(BOOL)a8 outEpisodeUUID:(id *)a9
{
  v9 = a8;
  v10 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [v15 assetUrl];
  v19 = [v15 downloadIdentifier];
  v20 = _MTLogCategoryMediaLibrary();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  v135 = v19;
  v136 = v18;
  if (v19 && !v18 && !v10)
  {
    if (v21)
    {
      *buf = 138412290;
      v142 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "addEpisodeInCtx will skip item with nil assetURL, download id: %@", buf, 0xCu);
    }

    goto LABEL_101;
  }

  if (v21)
  {
    v22 = [v15 title];
    v23 = [v15 assetUrl];
    *buf = 138543874;
    v142 = v22;
    v143 = 2114;
    v144 = v23;
    v145 = 1024;
    LODWORD(v146) = v10;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "addEpisodeInCtx will add item '%{public}@' with assetUrl %{public}@, isRestoreDownloadCandidate = %d", buf, 0x1Cu);
  }

  v131 = v9;
  v133 = v10;

  v20 = [v16 searchCacheForEpisodeMatchingMediaItem:v15];
  v24 = [v20 podcastUuid];
  v25 = [v24 isEqualToString:v17];

  v134 = v17;
  if (v25)
  {
    if (v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v26 = [v15 guid];
  v27 = [v15 title];
  v28 = [v27 stringByStrippingHTML];

  if (v26)
  {
    v29 = kMTEpisodeEntityName;
    v30 = [MTEpisode predicateForEpisodeGuid:v26 onPodcastUuid:v17];
    v31 = +[MTEpisodeUpdaterCache defaultPropertiesToFetch];
    v32 = [v14 objectsInEntity:v29 predicate:v30 propertiesToFetch:v31 batchSize:0];
    v20 = [v32 firstObject];
  }

  else
  {
    if (!v28)
    {
      goto LABEL_35;
    }

    v42 = kMTEpisodeEntityName;
    v43 = [MTEpisode predicateForEpisodeTitle:v28 onPodcastUuid:v17];
    v44 = +[MTEpisodeUpdaterCache defaultPropertiesToFetch];
    v45 = [v14 objectsInEntity:v42 predicate:v43 propertiesToFetch:v44 batchSize:0];

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v31 = v45;
    v46 = [v31 countByEnumeratingWithState:&v137 objects:v147 count:16];
    if (v46)
    {
      v47 = v46;
      v129 = v16;
      v130 = v14;
      v20 = 0;
      v48 = *v138;
      v49 = 1.79769313e308;
      do
      {
        for (i = 0; i != v47; i = i + 1)
        {
          if (*v138 != v48)
          {
            objc_enumerationMutation(v31);
          }

          v51 = *(*(&v137 + 1) + 8 * i);
          [v20 pubDate];
          v53 = v52;
          v54 = [v15 pubDate];
          [v54 timeIntervalSinceReferenceDate];
          v56 = vabdd_f64(v53, v55);

          if (v56 < v49)
          {
            v57 = v51;

            v49 = v56;
            v20 = v57;
          }
        }

        v47 = [v31 countByEnumeratingWithState:&v137 objects:v147 count:16];
      }

      while (v47);
      v30 = v31;
      v16 = v129;
      v14 = v130;
    }

    else
    {
      v20 = 0;
      v30 = v31;
    }
  }

  v17 = v134;
  if (v20)
  {
    goto LABEL_15;
  }

LABEL_35:
  v58 = [v14 podcastForUuid:v17];
  v59 = v58;
  if (!v58 || ([v58 isDeleted]& 1) != 0)
  {
    v20 = v59;
LABEL_101:

    goto LABEL_102;
  }

  v20 = [MTEpisode insertNewEpisodeInManagedObjectContext:v14 canSendNotifications:v131];
  [v20 setPodcast:v59];
  v123 = [v15 title];
  v124 = [v123 stringByStrippingHTML];

  [v20 setTitle:v124];
  v125 = [v59 title];
  v126 = [v124 cleanedTitleStringWithPrefix:v125];
  [v20 setCleanedTitle:v126];

  v127 = [v15 uti];
  [v20 setUti:v127];

  v128 = [v15 guid];
  [v20 setGuid:v128];

  [v20 setImportSource:1];
  [v20 setEpisodeLevel:0x7FFFFFFFFFFFFFFFLL];
  if (v133)
  {
    [v20 suppressAutomaticDownloadsIfNeeded];
  }

  [v20 setFeedDeleted:1];
  [IMMetrics recordUserAction:@"media_library_import_new_episode" dataSource:v20];

  v17 = v134;
  if (v20)
  {
LABEL_15:
    v33 = [v15 persistentId];
    v34 = [v33 unsignedLongLongValue];

    if ([v20 persistentID]!= v34)
    {
      [v20 setPersistentID:v34];
    }

    v132 = v34;
    v35 = [v20 assetURL];
    if (v35 == v136)
    {
      goto LABEL_23;
    }

    v36 = [v20 assetURL];
    v37 = [v36 isEqualToString:v136];

    if (v37)
    {
      goto LABEL_42;
    }

    v38 = [v20 assetURL];
    v39 = [NSURL URLWithString:v38];
    if ([v39 isFileURL])
    {
      v40 = [v136 hasPrefix:@"ipod-library"];

      if (v40)
      {
        v35 = _MTLogCategoryMediaLibrary();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v20 assetURL];
          *buf = 138543618;
          v142 = v136;
          v143 = 2114;
          v144 = v41;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Ignoring Media Library asset url %{public}@. Keep using podcasts asset url %{public}@", buf, 0x16u);
        }

LABEL_23:

        goto LABEL_42;
      }
    }

    else
    {
    }

    v60 = _MTLogCategoryMediaLibrary();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = [v20 uuid];
      v62 = [v20 assetURL];
      *buf = 138543874;
      v142 = v61;
      v143 = 2112;
      v144 = v62;
      v145 = 2112;
      v146 = *&v136;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Episode %{public}@ updated assetURL from %@ to %@", buf, 0x20u);
    }

    [v20 setAssetURL:v136];
LABEL_42:
    v63 = [v20 isFromITunesSync];
    if (v63 != [v15 isFromITunesSync])
    {
      -[NSObject setIsFromITunesSync:](v20, "setIsFromITunesSync:", [v15 isFromITunesSync]);
    }

    v64 = [v20 byteSize];
    v65 = [v15 byteSize];
    v66 = [v65 unsignedLongLongValue];

    if (v64 != v66)
    {
      v67 = [v15 byteSize];
      -[NSObject setByteSize:](v20, "setByteSize:", [v67 unsignedLongLongValue]);
    }

    v68 = [v15 duration];
    [v68 doubleValue];
    v70 = v69;

    if ([v20 allowsDurationUpdateFromSource:7])
    {
      if (v70 > 0.0)
      {
        [v20 duration];
        if (v70 != v71)
        {
          [v20 setDuration:v70];
        }
      }
    }

    v72 = [v15 category];
    v73 = [v20 category];
    v74 = v73;
    if (v72 == v73)
    {
    }

    else
    {
      v75 = [v20 category];
      v76 = [v75 isEqual:v72];

      if ((v76 & 1) == 0)
      {
        [v20 setCategory:v72];
      }
    }

    v77 = v16;
    v78 = [v20 author];
    v79 = [v15 artist];
    v80 = v79;
    if (v78 == v79)
    {
    }

    else
    {
      v81 = [v20 author];
      v82 = [v15 artist];
      v83 = [v81 isEqual:v82];

      v17 = v134;
      if (v83)
      {
LABEL_59:
        v84 = [v15 pubDate];
        [v84 timeIntervalSinceReferenceDate];
        v86 = v85;

        [v20 pubDate];
        if (v87 == 0.0)
        {
          [v20 setPubDate:v86];
        }

        v88 = [v20 explicit];
        v16 = v77;
        if (v88 != [v15 isExplicit])
        {
          v89 = _MTLogCategoryMediaLibrary();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            if ([v15 isExplicit])
            {
              v90 = @"ON";
            }

            else
            {
              v90 = @"OFF";
            }

            v91 = [v20 title];
            v92 = [v20 podcast];
            v93 = [v92 title];
            *buf = 138412802;
            v142 = v90;
            v143 = 2112;
            v144 = v91;
            v145 = 2112;
            v146 = *&v93;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "Ignoring: ML has different explict flag (%@) for %@ by %@", buf, 0x20u);

            v17 = v134;
          }
        }

        if ([v15 isFromITunesSync])
        {
          v94 = [v15 playhead];
          [v94 floatValue];
          v96 = v95;

          [v20 playhead];
          if (v96 > *&v97)
          {
            *&v97 = v96;
            [v20 setPlayhead:v97];
          }

          v98 = [v15 playCount];
          v99 = [v98 integerValue];

          if ([v20 playCount]!= v99)
          {
            [v20 setPlayCount:v99];
          }

          v100 = [v15 lastPlayedDate];
          [v100 timeIntervalSinceReferenceDate];
          v102 = v101;

          [v20 lastDatePlayed];
          if (v103 != v102)
          {
            v104 = +[_TtC18PodcastsFoundation17FutureDateChecker sharedInstance];
            [v104 timestampBoundByNow:v102];
            v106 = v105;

            v107 = _MTLogCategoryMediaLibrary();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
            {
              v108 = [v20 uuid];
              [v20 lastDatePlayed];
              *buf = 138412802;
              v142 = v108;
              v143 = 2048;
              v144 = v109;
              v145 = 2048;
              v146 = v102;
              _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEBUG, "Changing last date played for %@ from %lf to %lf", buf, 0x20u);
            }

            [v20 setLastDatePlayed:v106];
          }

          v110 = +[MTLibraryLegacyUtil playStateFromHasBeenPlayed:andPlayCount:](MTLibraryLegacyUtil, "playStateFromHasBeenPlayed:andPlayCount:", [v15 hasBeenPlayed], v99);
          v112 = fabs(v102) > 2.22044605e-16 && v110 == 2;
          [v20 setPlayState:v110 manually:v112 source:7];
          v113 = [v20 explicit];
          if (v113 != [v15 isExplicit])
          {
            v114 = _MTLogCategoryMediaLibrary();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
            {
              if ([v15 isExplicit])
              {
                v115 = @"ON";
              }

              else
              {
                v115 = @"OFF";
              }

              v116 = [v20 title];
              v117 = [v20 podcast];
              v118 = [v117 title];
              *buf = 138412802;
              v142 = v115;
              v143 = 2112;
              v144 = v116;
              v145 = 2112;
              v146 = *&v118;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEBUG, "Importing: ML has different explict flag (%@) for %@ by %@", buf, 0x20u);

              v17 = v134;
            }

            -[NSObject setExplicit:](v20, "setExplicit:", [v15 isExplicit]);
          }

          [IMMetrics recordUserAction:@"media_library_import_from_itunes" dataSource:v20];
        }

        v119 = [v15 storeTrackId];
        v120 = [v119 longLongValue];

        if (v120 >= 1 && [v20 storeTrackId]!= v120)
        {
          [v20 setStoreTrackId:v120];
        }

        if (v133)
        {
          v121 = _MTLogCategoryMediaLibrary();
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
          {
            v122 = [NSNumber numberWithUnsignedLongLong:v132];
            *buf = 138543362;
            v142 = v122;
            _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Setting persistent id for item that is being retored: %{public}@", buf, 0xCu);
          }

          [v20 setPersistentID:v132];
        }

        if (a9)
        {
          *a9 = [v20 uuid];
        }

        goto LABEL_101;
      }

      v78 = [v15 artist];
      [v20 setAuthor:v78];
    }

    goto LABEL_59;
  }

LABEL_102:
}

+ (id)numberFormatter
{
  v2 = qword_100583AA8;
  if (!qword_100583AA8)
  {
    v3 = objc_alloc_init(NSNumberFormatter);
    v4 = qword_100583AA8;
    qword_100583AA8 = v3;

    [qword_100583AA8 setNumberStyle:1];
    v2 = qword_100583AA8;
  }

  return v2;
}

- (void)libraryDidChange:(id)a3
{
  v4 = a3;
  v5 = kMTEpisodeEntityName;
  v6 = [v4 changesForEntityName:kMTEpisodeEntityName];
  v7 = [v6 hasChanges];

  if (v7)
  {
    v8 = [v4 changesForEntityName:v5];
    if ([v8 hasUpdates])
    {
      v9 = +[MTDB sharedInstance];
      v10 = [v9 importContext];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100073A5C;
      v12[3] = &unk_1004D94C8;
      v13 = v8;
      v14 = v10;
      v15 = self;
      v11 = v10;
      v8 = v8;
      [v11 performBlock:v12];
    }
  }
}

- (BOOL)haveMediaLibraryPropertiesChangedForEpisode:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 length];

  if (v6)
  {
    episodeCache = self->_episodeCache;
    v8 = [v4 uuid];
    v9 = [(NSMutableDictionary *)episodeCache objectForKeyedSubscript:v8];

    v6 = [(MTMediaLibraryUpdater *)self propertiesForMediaLibrary];
    v10 = [v4 dictionaryWithValuesForKeys:v6];

    v11 = [v10 isEqualToDictionary:v9];
    LOBYTE(v6) = v11 ^ 1;
    if ((v11 & 1) == 0)
    {
      v12 = self->_episodeCache;
      v13 = [v4 uuid];
      [(NSMutableDictionary *)v12 setObject:v10 forKeyedSubscript:v13];
    }
  }

  return v6;
}

- (id)propertiesForMediaLibrary
{
  v4[0] = kEpisodePersistentID;
  v4[1] = kEpisodePlayhead;
  v4[2] = kEpisodePlayState;
  v4[3] = kEpisodePlayCount;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

@end