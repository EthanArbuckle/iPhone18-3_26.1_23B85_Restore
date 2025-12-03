@interface MTMediaLibraryUpdater
+ (id)numberFormatter;
+ (id)sharedInstance;
- (BOOL)haveMediaLibraryPropertiesChangedForEpisode:(id)episode;
- (MTMediaLibraryUpdater)init;
- (id)_findOrAddPodcastForMediaItem:(id)item updaterCache:(id)cache;
- (id)propertiesForMediaLibrary;
- (unint64_t)importPlaylist:(id)playlist intoContext:(id)context mediaLibraryCache:(id)cache knownPlaylistIds:(id)ids;
- (void)_addEpisodeInCtx:(id)ctx mediaItem:(id)item episodeCache:(id)cache podcastUuid:(id)uuid isRestoreDownloadCandidate:(BOOL)candidate canSendNotifications:(BOOL)notifications outEpisodeUUID:(id *)d;
- (void)_printMediaItemPropertiesForItem:(id)item;
- (void)_updateDatabaseFromMediaLibrary;
- (void)forceUpdateDatabaseFromMediaLibraryWithCompletion:(id)completion;
- (void)importPlaylists:(id)playlists knownPlaylistIds:(id)ids mediaLibraryCache:(id)cache playlists:(id)a6;
- (void)libraryDidChange:(id)change;
- (void)startObservingMediaLibrary;
- (void)stopObservingMediaLibrary;
- (void)updateMediaLibraryFromNotification:(id)notification;
@end

@implementation MTMediaLibraryUpdater

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F648;
  block[3] = &unk_1004D86F8;
  block[4] = self;
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
    selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_updateDatabaseFromMediaLibrary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  didUpdateCompletionBlocks = [(MTMediaLibraryUpdater *)selfCopy didUpdateCompletionBlocks];
  v62 = [didUpdateCompletionBlocks copy];

  didUpdateCompletionBlocks2 = [(MTMediaLibraryUpdater *)selfCopy didUpdateCompletionBlocks];
  [didUpdateCompletionBlocks2 removeAllObjects];

  objc_sync_exit(selfCopy);
  v59 = selfCopy;

  v5 = +[MPMediaLibrary defaultMediaLibrary];
  lastModifiedDate = [v5 lastModifiedDate];
  [lastModifiedDate timeIntervalSinceReferenceDate];
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
      allObjects = [v16 allObjects];
      v9 = [v15 arrayByAddingObjectsFromArray:allObjects];
    }

    v18 = [v9 sortedArrayUsingComparator:&stru_1004D9358];

    v19 = +[NSUserDefaults standardUserDefaults];
    [v19 setBool:1 forKey:v12];

    v9 = v18;
  }

  v20 = objc_opt_new();
  v21 = +[MTDB sharedInstance];
  importContext = [v21 importContext];

  v23 = [MTEpisode predicateForDownloaded:1 excludeHidden:0];
  v24 = [MTEpisodeUpdaterCache episodeCacheWithPredicate:v23 inCtx:importContext];

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
  v25 = importContext;
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
  v72 = selfCopy;
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
  iTunesMatchEnabled = [v34 iTunesMatchEnabled];

  if ((iTunesMatchEnabled & 1) == 0)
  {
    v51 = +[MPMediaQuery mt_podcastsQuery];
    collections = [v51 collections];
    v37 = objc_alloc_init(NSMutableArray);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v38 = collections;
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

- (void)forceUpdateDatabaseFromMediaLibraryWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    didUpdateCompletionBlocks = [(MTMediaLibraryUpdater *)selfCopy didUpdateCompletionBlocks];
    v6 = objc_retainBlock(completionCopy);
    [didUpdateCompletionBlocks addObject:v6];

    objc_sync_exit(selfCopy);
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

- (unint64_t)importPlaylist:(id)playlist intoContext:(id)context mediaLibraryCache:(id)cache knownPlaylistIds:(id)ids
{
  playlistCopy = playlist;
  contextCopy = context;
  cacheCopy = cache;
  idsCopy = ids;
  v36 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v35 = playlistCopy;
  playlist = [playlistCopy playlist];
  items = [playlist items];

  v12 = [items countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v12)
  {
    v13 = *v56;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(items);
        }

        v15 = [*(*(&v55 + 1) + 8 * i) valueForProperty:MPMediaEntityPropertyPersistentID];
        v16 = [cacheCopy objectForKey:v15];
        v17 = v16;
        if (v16)
        {
          assetUrl = [v16 assetUrl];
          v19 = [assetUrl length] == 0;

          if (!v19)
          {
            assetUrl2 = [v17 assetUrl];
            [v36 addObject:assetUrl2];
            v21 = _MTLogCategoryMediaLibrary();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              title = [v17 title];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = title;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
            }
          }
        }
      }

      v12 = [items countByEnumeratingWithState:&v55 objects:v62 count:16];
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

  mediaLibraryId = [v35 mediaLibraryId];
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
    v27 = contextCopy;
    v50 = v27;
    [v27 performBlockAndWait:v49];
    if ([idsCopy containsObject:mediaLibraryId])
    {
      [idsCopy removeObject:mediaLibraryId];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000718D4;
      v38[3] = &unk_1004D9438;
      v39 = v27;
      v40 = mediaLibraryId;
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

- (void)importPlaylists:(id)playlists knownPlaylistIds:(id)ids mediaLibraryCache:(id)cache playlists:(id)a6
{
  selfCopy = self;
  playlistsCopy = playlists;
  idsCopy = ids;
  cacheCopy = cache;
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

        selfCopy = [MTMLPlaylist playlistWithMPPlaylist:*(*(&v41 + 1) + 8 * i), selfCopy];
        mediaLibraryId = [selfCopy mediaLibraryId];
        [v10 setObject:selfCopy forKey:mediaLibraryId];
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
  allValues = [v10 allValues];
  v18 = [allValues countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v18)
  {
    v19 = *v38;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(allValues);
        }

        v21 = *(*(&v37 + 1) + 8 * j);
        parentMediaLibraryId = [v21 parentMediaLibraryId];
        if ([parentMediaLibraryId isEqualToNumber:&off_100500B98])
        {
          [v16 addObject:v21];
        }

        else
        {
          v23 = [v10 objectForKeyedSubscript:parentMediaLibraryId];
          [v23 addChild:v21];
        }
      }

      v18 = [allValues countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v18);
  }

  while (1)
  {

    if (![v16 count])
    {
      break;
    }

    allValues = [v16 objectAtIndex:0];
    if (([allValues isEmpty] & 1) == 0)
    {
      v24 = [(MTMediaLibraryUpdater *)selfCopy importPlaylist:allValues intoContext:playlistsCopy mediaLibraryCache:cacheCopy knownPlaylistIds:idsCopy];
      v46[3] += v24;
      children = [allValues children];
      [v16 addObjectsFromArray:children];
    }

    [v16 removeObjectAtIndex:{0, selfCopy}];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100072070;
  v33[3] = &unk_1004D92B0;
  v26 = playlistsCopy;
  v34 = v26;
  v36 = &v45;
  v27 = idsCopy;
  v35 = v27;
  [v26 performBlockAndWaitWithSave:v33];

  _Block_object_dispose(&v45, 8);
}

- (void)updateMediaLibraryFromNotification:(id)notification
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"doLibraryUpdateFromNotification" object:0];

  [(MTMediaLibraryUpdater *)self performSelector:"doLibraryUpdateFromNotification" withObject:0 afterDelay:1.5];
}

- (void)_printMediaItemPropertiesForItem:(id)item
{
  v11 = MPMediaItemPropertyPodcastGUID;
  v10 = MPMediaItemPropertyFilePath;
  v8 = MPMediaItemPropertyPodcastURL;
  v7 = MPMediaItemPropertyStoreID;
  v6 = MPMediaItemPropertyHasBeenPlayed;
  v5 = MPMediaItemPropertyDescriptionInfo;
  itemCopy = item;
  v3 = [NSSet setWithObjects:MPMediaItemPropertyTitle, MPMediaItemPropertyArtist, MPMediaItemPropertyPodcastTitle, MPMediaItemPropertyPodcastPersistentID, v11, v10, MPMediaItemPropertyPersistentID, MPMediaItemPropertyLastPlayedDate, MPMediaItemPropertyRating, MPMediaItemPropertyComments, MPMediaItemPropertyReleaseDate, MPMediaItemPropertyArtwork, MPMediaItemPropertyAlbumArtist, v8, v7, MPMediaItemPropertyBookmarkTime, v6, MPMediaItemPropertyPlaybackDuration, v5, MPMediaItemPropertyAlbumTitle, MPMediaItemPropertyPersistentID, MPMediaItemPropertyMediaType, MPMediaItemPropertyAlbumPersistentID, MPMediaItemPropertyArtistPersistentID, MPMediaItemPropertyAlbumArtistPersistentID, MPMediaItemPropertyGenre, MPMediaItemPropertyGenrePersistentID, MPMediaItemPropertyComposer, MPMediaItemPropertyComposerPersistentID, MPMediaItemPropertyPlaybackDuration, MPMediaItemPropertyAlbumTrackNumber, MPMediaItemPropertyAlbumTrackCount, MPMediaItemPropertyDiscNumber, MPMediaItemPropertyDiscCount, MPMediaItemPropertyLyrics, MPMediaItemPropertyIsCompilation, MPMediaItemPropertyBeatsPerMinute, MPMediaItemPropertyPlayCount, MPMediaItemPropertySkipCount, MPMediaItemPropertyUserGrouping, 0];
  v4 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "----------------------------------------------------------------", buf, 2u);
  }

  [itemCopy enumerateValuesForProperties:v3 usingBlock:&stru_1004D94A0];
}

- (id)_findOrAddPodcastForMediaItem:(id)item updaterCache:(id)cache
{
  itemCopy = item;
  cacheCopy = cache;
  feedUrl = [itemCopy feedUrl];
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = v8;
  if (feedUrl)
  {
    [v8 setObject:feedUrl forKeyedSubscript:kPodcastFeedUrl];
    [v9 setObject:feedUrl forKeyedSubscript:kPodcastUpdatedFeedUrl];
  }

  if ([v9 count])
  {
    v10 = [cacheCopy propertyDictionaryForSearchItem:v9];
  }

  else
  {
    v10 = 0;
  }

  podcastTitle = [itemCopy podcastTitle];
  stringByStrippingHTML = [podcastTitle stringByStrippingHTML];

  if (!v10)
  {
    if ([(__CFString *)stringByStrippingHTML length])
    {
      if (!stringByStrippingHTML)
      {
        v13 = 0;
        goto LABEL_27;
      }
    }

    else
    {

      stringByStrippingHTML = @"Untitled";
    }

    [v9 setObject:stringByStrippingHTML forKeyedSubscript:kPodcastTitle];
    v10 = [cacheCopy propertyDictionaryForSearchItem:v9];
  }

  v14 = +[MTDB sharedInstance];
  importContext = [v14 importContext];

  if (v10)
  {
    v16 = [v10 objectForKey:kPodcastUuid];
    v13 = [importContext podcastForUuid:v16];

    if (v13)
    {
      if ([v13 hidden])
      {
        [v13 setHidden:0];
        [v13 setNeedsArtworkUpdate:1];
      }

      podcastPersistentId = [itemCopy podcastPersistentId];
      longLongValue = [podcastPersistentId longLongValue];

      [v13 setPodcastPID:longLongValue];
    }
  }

  else
  {
    artist = [itemCopy artist];
    stringByStrippingHTML2 = [artist stringByStrippingHTML];

    v20 = _MTLogCategoryMediaLibrary();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = stringByStrippingHTML;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Adding Podcast from Feed: %@", buf, 0xCu);
    }

    v13 = +[MTPodcast insertNewPodcastInManagedObjectContext:subscribed:feedUrl:showType:title:author:provider:imageUrl:description:](MTPodcast, "insertNewPodcastInManagedObjectContext:subscribed:feedUrl:showType:title:author:provider:imageUrl:description:", importContext, 0, feedUrl, +[MTPodcast defaultShowType], stringByStrippingHTML, stringByStrippingHTML2, 0, 0, 0);
    if (v13)
    {
      storeCollectionId = [itemCopy storeCollectionId];
      podcastPersistentId2 = [itemCopy podcastPersistentId];
      [v13 setPodcastPID:{objc_msgSend(podcastPersistentId2, "longLongValue")}];

      v28 = storeCollectionId;
      [v13 setStoreCollectionId:{objc_msgSend(storeCollectionId, "longLongValue")}];
      if ([itemCopy isItunesU])
      {
        [v13 setDeletePlayedEpisodes:0];
        [v13 setShowTypeSetting:2];
        [v13 setEpisodeLimit:&_mh_execute_header];
      }

      [cacheCopy addEntityToCache:v13];
      v23 = _MTLogCategoryMediaLibrary();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        uuid = [v13 uuid];
        title = [v13 title];
        *buf = 138412546;
        v31 = uuid;
        v32 = 2112;
        v33 = title;
        v25 = title;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Inserting new podcast:%@ (%@)", buf, 0x16u);
      }
    }
  }

LABEL_27:

  return v13;
}

- (void)_addEpisodeInCtx:(id)ctx mediaItem:(id)item episodeCache:(id)cache podcastUuid:(id)uuid isRestoreDownloadCandidate:(BOOL)candidate canSendNotifications:(BOOL)notifications outEpisodeUUID:(id *)d
{
  notificationsCopy = notifications;
  candidateCopy = candidate;
  ctxCopy = ctx;
  itemCopy = item;
  cacheCopy = cache;
  uuidCopy = uuid;
  assetUrl = [itemCopy assetUrl];
  downloadIdentifier = [itemCopy downloadIdentifier];
  firstObject = _MTLogCategoryMediaLibrary();
  v21 = os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT);
  v135 = downloadIdentifier;
  v136 = assetUrl;
  if (downloadIdentifier && !assetUrl && !candidateCopy)
  {
    if (v21)
    {
      *buf = 138412290;
      v142 = downloadIdentifier;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_DEFAULT, "addEpisodeInCtx will skip item with nil assetURL, download id: %@", buf, 0xCu);
    }

    goto LABEL_101;
  }

  if (v21)
  {
    title = [itemCopy title];
    assetUrl2 = [itemCopy assetUrl];
    *buf = 138543874;
    v142 = title;
    v143 = 2114;
    v144 = assetUrl2;
    v145 = 1024;
    LODWORD(v146) = candidateCopy;
    _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_DEFAULT, "addEpisodeInCtx will add item '%{public}@' with assetUrl %{public}@, isRestoreDownloadCandidate = %d", buf, 0x1Cu);
  }

  v131 = notificationsCopy;
  v133 = candidateCopy;

  firstObject = [cacheCopy searchCacheForEpisodeMatchingMediaItem:itemCopy];
  podcastUuid = [firstObject podcastUuid];
  v25 = [podcastUuid isEqualToString:uuidCopy];

  v134 = uuidCopy;
  if (v25)
  {
    if (firstObject)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  guid = [itemCopy guid];
  title2 = [itemCopy title];
  stringByStrippingHTML = [title2 stringByStrippingHTML];

  if (guid)
  {
    v29 = kMTEpisodeEntityName;
    v30 = [MTEpisode predicateForEpisodeGuid:guid onPodcastUuid:uuidCopy];
    v31 = +[MTEpisodeUpdaterCache defaultPropertiesToFetch];
    v32 = [ctxCopy objectsInEntity:v29 predicate:v30 propertiesToFetch:v31 batchSize:0];
    firstObject = [v32 firstObject];
  }

  else
  {
    if (!stringByStrippingHTML)
    {
      goto LABEL_35;
    }

    v42 = kMTEpisodeEntityName;
    v43 = [MTEpisode predicateForEpisodeTitle:stringByStrippingHTML onPodcastUuid:uuidCopy];
    v44 = +[MTEpisodeUpdaterCache defaultPropertiesToFetch];
    v45 = [ctxCopy objectsInEntity:v42 predicate:v43 propertiesToFetch:v44 batchSize:0];

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v31 = v45;
    v46 = [v31 countByEnumeratingWithState:&v137 objects:v147 count:16];
    if (v46)
    {
      v47 = v46;
      v129 = cacheCopy;
      v130 = ctxCopy;
      firstObject = 0;
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
          [firstObject pubDate];
          v53 = v52;
          pubDate = [itemCopy pubDate];
          [pubDate timeIntervalSinceReferenceDate];
          v56 = vabdd_f64(v53, v55);

          if (v56 < v49)
          {
            v57 = v51;

            v49 = v56;
            firstObject = v57;
          }
        }

        v47 = [v31 countByEnumeratingWithState:&v137 objects:v147 count:16];
      }

      while (v47);
      v30 = v31;
      cacheCopy = v129;
      ctxCopy = v130;
    }

    else
    {
      firstObject = 0;
      v30 = v31;
    }
  }

  uuidCopy = v134;
  if (firstObject)
  {
    goto LABEL_15;
  }

LABEL_35:
  v58 = [ctxCopy podcastForUuid:uuidCopy];
  v59 = v58;
  if (!v58 || ([v58 isDeleted]& 1) != 0)
  {
    firstObject = v59;
LABEL_101:

    goto LABEL_102;
  }

  firstObject = [MTEpisode insertNewEpisodeInManagedObjectContext:ctxCopy canSendNotifications:v131];
  [firstObject setPodcast:v59];
  title3 = [itemCopy title];
  stringByStrippingHTML2 = [title3 stringByStrippingHTML];

  [firstObject setTitle:stringByStrippingHTML2];
  title4 = [v59 title];
  v126 = [stringByStrippingHTML2 cleanedTitleStringWithPrefix:title4];
  [firstObject setCleanedTitle:v126];

  v127 = [itemCopy uti];
  [firstObject setUti:v127];

  guid2 = [itemCopy guid];
  [firstObject setGuid:guid2];

  [firstObject setImportSource:1];
  [firstObject setEpisodeLevel:0x7FFFFFFFFFFFFFFFLL];
  if (v133)
  {
    [firstObject suppressAutomaticDownloadsIfNeeded];
  }

  [firstObject setFeedDeleted:1];
  [IMMetrics recordUserAction:@"media_library_import_new_episode" dataSource:firstObject];

  uuidCopy = v134;
  if (firstObject)
  {
LABEL_15:
    persistentId = [itemCopy persistentId];
    unsignedLongLongValue = [persistentId unsignedLongLongValue];

    if ([firstObject persistentID]!= unsignedLongLongValue)
    {
      [firstObject setPersistentID:unsignedLongLongValue];
    }

    v132 = unsignedLongLongValue;
    assetURL = [firstObject assetURL];
    if (assetURL == v136)
    {
      goto LABEL_23;
    }

    assetURL2 = [firstObject assetURL];
    v37 = [assetURL2 isEqualToString:v136];

    if (v37)
    {
      goto LABEL_42;
    }

    assetURL3 = [firstObject assetURL];
    v39 = [NSURL URLWithString:assetURL3];
    if ([v39 isFileURL])
    {
      v40 = [v136 hasPrefix:@"ipod-library"];

      if (v40)
      {
        assetURL = _MTLogCategoryMediaLibrary();
        if (os_log_type_enabled(assetURL, OS_LOG_TYPE_DEFAULT))
        {
          assetURL4 = [firstObject assetURL];
          *buf = 138543618;
          v142 = v136;
          v143 = 2114;
          v144 = assetURL4;
          _os_log_impl(&_mh_execute_header, assetURL, OS_LOG_TYPE_DEFAULT, "Ignoring Media Library asset url %{public}@. Keep using podcasts asset url %{public}@", buf, 0x16u);
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
      uuid = [firstObject uuid];
      assetURL5 = [firstObject assetURL];
      *buf = 138543874;
      v142 = uuid;
      v143 = 2112;
      v144 = assetURL5;
      v145 = 2112;
      v146 = *&v136;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Episode %{public}@ updated assetURL from %@ to %@", buf, 0x20u);
    }

    [firstObject setAssetURL:v136];
LABEL_42:
    isFromITunesSync = [firstObject isFromITunesSync];
    if (isFromITunesSync != [itemCopy isFromITunesSync])
    {
      -[NSObject setIsFromITunesSync:](firstObject, "setIsFromITunesSync:", [itemCopy isFromITunesSync]);
    }

    byteSize = [firstObject byteSize];
    byteSize2 = [itemCopy byteSize];
    unsignedLongLongValue2 = [byteSize2 unsignedLongLongValue];

    if (byteSize != unsignedLongLongValue2)
    {
      byteSize3 = [itemCopy byteSize];
      -[NSObject setByteSize:](firstObject, "setByteSize:", [byteSize3 unsignedLongLongValue]);
    }

    duration = [itemCopy duration];
    [duration doubleValue];
    v70 = v69;

    if ([firstObject allowsDurationUpdateFromSource:7])
    {
      if (v70 > 0.0)
      {
        [firstObject duration];
        if (v70 != v71)
        {
          [firstObject setDuration:v70];
        }
      }
    }

    category = [itemCopy category];
    category2 = [firstObject category];
    v74 = category2;
    if (category == category2)
    {
    }

    else
    {
      category3 = [firstObject category];
      v76 = [category3 isEqual:category];

      if ((v76 & 1) == 0)
      {
        [firstObject setCategory:category];
      }
    }

    v77 = cacheCopy;
    author = [firstObject author];
    artist = [itemCopy artist];
    v80 = artist;
    if (author == artist)
    {
    }

    else
    {
      author2 = [firstObject author];
      artist2 = [itemCopy artist];
      v83 = [author2 isEqual:artist2];

      uuidCopy = v134;
      if (v83)
      {
LABEL_59:
        pubDate2 = [itemCopy pubDate];
        [pubDate2 timeIntervalSinceReferenceDate];
        v86 = v85;

        [firstObject pubDate];
        if (v87 == 0.0)
        {
          [firstObject setPubDate:v86];
        }

        explicit = [firstObject explicit];
        cacheCopy = v77;
        if (explicit != [itemCopy isExplicit])
        {
          v89 = _MTLogCategoryMediaLibrary();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            if ([itemCopy isExplicit])
            {
              v90 = @"ON";
            }

            else
            {
              v90 = @"OFF";
            }

            title5 = [firstObject title];
            podcast = [firstObject podcast];
            title6 = [podcast title];
            *buf = 138412802;
            v142 = v90;
            v143 = 2112;
            v144 = title5;
            v145 = 2112;
            v146 = *&title6;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "Ignoring: ML has different explict flag (%@) for %@ by %@", buf, 0x20u);

            uuidCopy = v134;
          }
        }

        if ([itemCopy isFromITunesSync])
        {
          playhead = [itemCopy playhead];
          [playhead floatValue];
          v96 = v95;

          [firstObject playhead];
          if (v96 > *&v97)
          {
            *&v97 = v96;
            [firstObject setPlayhead:v97];
          }

          playCount = [itemCopy playCount];
          integerValue = [playCount integerValue];

          if ([firstObject playCount]!= integerValue)
          {
            [firstObject setPlayCount:integerValue];
          }

          lastPlayedDate = [itemCopy lastPlayedDate];
          [lastPlayedDate timeIntervalSinceReferenceDate];
          v102 = v101;

          [firstObject lastDatePlayed];
          if (v103 != v102)
          {
            v104 = +[_TtC18PodcastsFoundation17FutureDateChecker sharedInstance];
            [v104 timestampBoundByNow:v102];
            v106 = v105;

            v107 = _MTLogCategoryMediaLibrary();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
            {
              uuid2 = [firstObject uuid];
              [firstObject lastDatePlayed];
              *buf = 138412802;
              v142 = uuid2;
              v143 = 2048;
              v144 = v109;
              v145 = 2048;
              v146 = v102;
              _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEBUG, "Changing last date played for %@ from %lf to %lf", buf, 0x20u);
            }

            [firstObject setLastDatePlayed:v106];
          }

          v110 = +[MTLibraryLegacyUtil playStateFromHasBeenPlayed:andPlayCount:](MTLibraryLegacyUtil, "playStateFromHasBeenPlayed:andPlayCount:", [itemCopy hasBeenPlayed], integerValue);
          v112 = fabs(v102) > 2.22044605e-16 && v110 == 2;
          [firstObject setPlayState:v110 manually:v112 source:7];
          explicit2 = [firstObject explicit];
          if (explicit2 != [itemCopy isExplicit])
          {
            v114 = _MTLogCategoryMediaLibrary();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
            {
              if ([itemCopy isExplicit])
              {
                v115 = @"ON";
              }

              else
              {
                v115 = @"OFF";
              }

              title7 = [firstObject title];
              podcast2 = [firstObject podcast];
              title8 = [podcast2 title];
              *buf = 138412802;
              v142 = v115;
              v143 = 2112;
              v144 = title7;
              v145 = 2112;
              v146 = *&title8;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEBUG, "Importing: ML has different explict flag (%@) for %@ by %@", buf, 0x20u);

              uuidCopy = v134;
            }

            -[NSObject setExplicit:](firstObject, "setExplicit:", [itemCopy isExplicit]);
          }

          [IMMetrics recordUserAction:@"media_library_import_from_itunes" dataSource:firstObject];
        }

        storeTrackId = [itemCopy storeTrackId];
        longLongValue = [storeTrackId longLongValue];

        if (longLongValue >= 1 && [firstObject storeTrackId]!= longLongValue)
        {
          [firstObject setStoreTrackId:longLongValue];
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

          [firstObject setPersistentID:v132];
        }

        if (d)
        {
          *d = [firstObject uuid];
        }

        goto LABEL_101;
      }

      author = [itemCopy artist];
      [firstObject setAuthor:author];
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

- (void)libraryDidChange:(id)change
{
  changeCopy = change;
  v5 = kMTEpisodeEntityName;
  v6 = [changeCopy changesForEntityName:kMTEpisodeEntityName];
  hasChanges = [v6 hasChanges];

  if (hasChanges)
  {
    v8 = [changeCopy changesForEntityName:v5];
    if ([v8 hasUpdates])
    {
      v9 = +[MTDB sharedInstance];
      importContext = [v9 importContext];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100073A5C;
      v12[3] = &unk_1004D94C8;
      v13 = v8;
      v14 = importContext;
      selfCopy = self;
      v11 = importContext;
      v8 = v8;
      [v11 performBlock:v12];
    }
  }
}

- (BOOL)haveMediaLibraryPropertiesChangedForEpisode:(id)episode
{
  episodeCopy = episode;
  uuid = [episodeCopy uuid];
  propertiesForMediaLibrary = [uuid length];

  if (propertiesForMediaLibrary)
  {
    episodeCache = self->_episodeCache;
    uuid2 = [episodeCopy uuid];
    v9 = [(NSMutableDictionary *)episodeCache objectForKeyedSubscript:uuid2];

    propertiesForMediaLibrary = [(MTMediaLibraryUpdater *)self propertiesForMediaLibrary];
    v10 = [episodeCopy dictionaryWithValuesForKeys:propertiesForMediaLibrary];

    v11 = [v10 isEqualToDictionary:v9];
    LOBYTE(propertiesForMediaLibrary) = v11 ^ 1;
    if ((v11 & 1) == 0)
    {
      v12 = self->_episodeCache;
      uuid3 = [episodeCopy uuid];
      [(NSMutableDictionary *)v12 setObject:v10 forKeyedSubscript:uuid3];
    }
  }

  return propertiesForMediaLibrary;
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