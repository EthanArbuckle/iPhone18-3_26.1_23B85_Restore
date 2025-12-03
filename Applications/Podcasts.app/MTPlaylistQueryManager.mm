@interface MTPlaylistQueryManager
+ (BOOL)updatePlaylist:(id)playlist inContext:(id)context;
+ (id)_allEligiblePodcastsForPlaylistInCtx:(id)ctx;
+ (void)_fixSortOrder:(id)order generated_p:(BOOL *)generated_p;
+ (void)_sortUngroupedList:(id)list inPlaylist:(id)playlist;
+ (void)updateEpisodesForSettings:(id)settings ctx:(id)ctx;
- (BOOL)updatePlaylistWithUuid:(id)uuid inContext:(id)context applyAdditionalChangesBlock:(id)block;
- (BOOL)updatePlaylistsWithUuids:(id)uuids;
- (BOOL)updatePlaylistsWithUuids:(id)uuids context:(id)context applyAdditionalChangesBlock:(id)block;
- (MTPlaylistQueryManager)init;
- (void)createDefaultPlaylists;
- (void)resultsChangedWithDeletedIds:(id)ids insertIds:(id)insertIds updatedIds:(id)updatedIds;
- (void)updateAllPlaylistsWithCompletion:(id)completion;
@end

@implementation MTPlaylistQueryManager

- (MTPlaylistQueryManager)init
{
  v5.receiver = self;
  v5.super_class = MTPlaylistQueryManager;
  v2 = [(MTBaseProcessor *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"feedUpdateDidComplete:" name:@"MTFeedUpdateDidEndUpdatingAllFeeds" object:0];
  }

  return v2;
}

- (void)resultsChangedWithDeletedIds:(id)ids insertIds:(id)insertIds updatedIds:(id)updatedIds
{
  insertIdsCopy = insertIds;
  if ([insertIdsCopy count])
  {
    v7 = dispatch_get_global_queue(-2, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000FF680;
    v8[3] = &unk_1004D8798;
    v8[4] = self;
    v9 = insertIdsCopy;
    dispatch_async(v7, v8);
  }
}

+ (void)_fixSortOrder:(id)order generated_p:(BOOL *)generated_p
{
  orderCopy = order;
  v6 = [orderCopy mutableOrderedSetValueForKey:kPlaylistSettings];
  containerOrder = [orderCopy containerOrder];
  if (containerOrder <= 2)
  {
    if (!containerOrder)
    {
      v8 = &stru_1004DC478;
      goto LABEL_12;
    }

    if (containerOrder == 1)
    {
      v8 = &stru_1004DC498;
      goto LABEL_12;
    }
  }

  else
  {
    switch(containerOrder)
    {
      case 3:
        v8 = &stru_1004DC4B8;
        goto LABEL_12;
      case 4:
        v8 = &stru_1004DC4D8;
        goto LABEL_12;
      case 5:
        v8 = &stru_1004DC4F8;
LABEL_12:
        [v6 sortUsingComparator:v8];
        goto LABEL_13;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v17;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 = v15 + 1;
        [*(*(&v16 + 1) + 8 * v14) setSortOrder:{v15, v16}];
        v14 = v14 + 1;
        ++v15;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  *generated_p = 1;
LABEL_13:
}

+ (BOOL)updatePlaylist:(id)playlist inContext:(id)context
{
  playlistCopy = playlist;
  contextCopy = context;
  v48 = playlistCopy;
  v53 = [contextCopy playlistForUuid:playlistCopy];
  if (!v53)
  {
    LOBYTE(needsUpdate) = 0;
    goto LABEL_58;
  }

  v6 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling refreshObject:mergeChanges: for playlist.", buf, 2u);
  }

  [contextCopy refreshObject:v53 mergeChanges:1];
  needsUpdate = [v53 needsUpdate];
  if (needsUpdate)
  {
    [v53 setNeedsUpdate:0];
  }

  if (([v53 hidden] & 1) == 0)
  {
    if ([v53 isItunesPlaylist])
    {
      if (needsUpdate)
      {
        LOBYTE(needsUpdate) = 1;
      }

      else
      {
        LOBYTE(needsUpdate) = [v53 updateUnplayedCount];
      }

      goto LABEL_58;
    }

    if ([v53 includesAllPodcasts])
    {
      array = [self _allEligiblePodcastsForPlaylistInCtx:contextCopy];
    }

    else
    {
      podcasts = [v53 podcasts];
      array = [podcasts array];
    }

    if ([array count])
    {
      buf[0] = 0;
      if (!needsUpdate)
      {
LABEL_56:
        [0 report];
        LOBYTE(needsUpdate) = needsUpdate | buf[0];
        goto LABEL_57;
      }

      [0 reportWithMarker:@"*** Update start ***"];
      settings = [v53 settings];
      v9 = [settings copy];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v11)
      {
        v12 = *v59;
        v50 = kEpisodeTitle;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v59 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v58 + 1) + 8 * i);
            podcast = [v14 podcast];
            if (podcast)
            {
              if ([v14 needsUpdate])
              {
                podcast2 = [v14 podcast];
                title = [podcast2 title];
                v18 = [NSString stringWithFormat:@"Settings needs update: %@", title];
                [0 reportWithMarker:v18];

                [self updateEpisodesForSettings:v14 ctx:contextCopy];
                [v14 setNeedsUpdate:0];
                episodes = [v14 episodes];
                v20 = [episodes valueForKey:v50];
                v21 = [NSString stringWithFormat:@"\n%@", v20];
                [0 reportWithMarker:v21];
              }
            }

            else
            {
              v22 = +[IMLogger sharedLogger];
              [v22 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Playlists/MTPlaylistQueryManager.m" lineNumber:225 format:@"Settings object with no podcast set"];

              [contextCopy deleteObject:v14];
              podcast = 0;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v11);
      }

      [self _fixSortOrder:v53 generated_p:buf];
      settings2 = [v53 settings];
      v24 = [settings2 copy];

      v25 = objc_opt_new();
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v26 = v24;
      v27 = [v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v27)
      {
        v28 = *v55;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v55 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v54 + 1) + 8 * j);
            episodes2 = [v30 episodes];
            v32 = [episodes2 mutableCopy];

            deletedEpisodes = [v53 deletedEpisodes];
            [v32 minusSet:deletedEpisodes];

            episodes3 = [v30 episodes];
            v35 = [v32 isEqualToOrderedSet:episodes3];

            if ((v35 & 1) == 0)
            {
              [v30 setEpisodes:v32];
              buf[0] = 1;
            }

            episodes4 = [v30 episodes];
            [v25 unionOrderedSet:episodes4];

            [v30 setEpisodeCount:{objc_msgSend(v32, "count")}];
          }

          v27 = [v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v27);
      }

      deletedEpisodes2 = [v53 deletedEpisodes];
      [v25 minusSet:deletedEpisodes2];

      episodes5 = [v53 episodes];
      if ([v25 isEqualToOrderedSet:episodes5])
      {
        isUngroupedList = [v53 isUngroupedList];

        if ((isUngroupedList & 1) == 0)
        {
LABEL_51:
          episodes6 = [v53 episodes];
          if ([episodes6 count])
          {
          }

          else
          {
            v44 = [v25 count] == 0;

            if (v44)
            {
              buf[0] = 1;
            }
          }

          +[NSDate timeIntervalSinceReferenceDate];
          [v53 setUpdatedDate:?];

          goto LABEL_56;
        }
      }

      else
      {
      }

      if ([v53 isUngroupedList])
      {
        [self _sortUngroupedList:v25 inPlaylist:v53];
      }

      [v53 setEpisodes:v25];
      [v53 updateUnplayedCount];
      buf[0] = 1;
      [0 reportWithMarker:@"Playlist generated"];
      goto LABEL_51;
    }

    podcasts2 = [v53 podcasts];
    if (![podcasts2 count])
    {
      deletedEpisodes3 = [v53 deletedEpisodes];
      if (![deletedEpisodes3 count])
      {
        episodes7 = [v53 episodes];
        if (![episodes7 count])
        {
          v46 = [v53 unplayedCount] == 0;

          if (v46)
          {
            goto LABEL_57;
          }

          goto LABEL_46;
        }
      }
    }

LABEL_46:
    [v53 setPodcasts:0];
    [v53 setDeletedEpisodes:0];
    [v53 setEpisodes:0];
    [v53 setUnplayedCount:0];
    LOBYTE(needsUpdate) = 1;
LABEL_57:
  }

LABEL_58:

  return needsUpdate & 1;
}

+ (void)_sortUngroupedList:(id)list inPlaylist:(id)playlist
{
  listCopy = list;
  playlistCopy = playlist;
  containerOrder = [playlistCopy containerOrder];
  if (containerOrder <= 1)
  {
    if (containerOrder)
    {
      if (containerOrder != 1)
      {
        goto LABEL_13;
      }

      v7 = &stru_1004DC558;
    }

    else
    {
      v7 = &stru_1004DC538;
    }
  }

  else
  {
    switch(containerOrder)
    {
      case 2:
        episodes = [playlistCopy episodes];
        v9 = [episodes mutableCopy];

        v10 = [listCopy mutableCopy];
        [v10 minusOrderedSet:v9];
        [v9 intersectOrderedSet:listCopy];
        [listCopy removeAllObjects];
        [listCopy unionOrderedSet:v10];
        [listCopy unionOrderedSet:v9];

        goto LABEL_13;
      case 3:
        v7 = &stru_1004DC578;
        break;
      case 4:
        v7 = &stru_1004DC598;
        break;
      default:
        goto LABEL_13;
    }
  }

  [listCopy sortUsingComparator:v7];
LABEL_13:
}

+ (void)updateEpisodesForSettings:(id)settings ctx:(id)ctx
{
  settingsCopy = settings;
  ctxCopy = ctx;
  predicateForSettings = [settingsCopy predicateForSettings];
  podcast = [settingsCopy podcast];
  sortDescriptorsForPlayOrderByPubDate = [podcast sortDescriptorsForPlayOrderByPubDate];

  integerForEpisodesToShow = [settingsCopy integerForEpisodesToShow];
  v30 = ctxCopy;
  if (integerForEpisodesToShow)
  {
    v11 = integerForEpisodesToShow;
    v12 = kEpisodeLevel;
    v13 = [NSPredicate predicateWithFormat:@"%K < %ld", kEpisodeLevel, integerForEpisodesToShow];
    v29 = [predicateForSettings AND:v13];

    v14 = kMTEpisodeEntityName;
    v15 = sortDescriptorsForPlayOrderByPubDate;
    v16 = ctxCopy;
    v17 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:0];
    v31[0] = v17;
    v18 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:0];
    v31[1] = v18;
    v19 = [NSSortDescriptor sortDescriptorWithKey:v12 ascending:1];
    v31[2] = v19;
    v20 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeTitle ascending:1 selector:"localizedStandardCompare:"];
    v31[3] = v20;
    v21 = [NSArray arrayWithObjects:v31 count:4];
    v22 = v16;
    sortDescriptorsForPlayOrderByPubDate = v15;
    v23 = [v22 objectsInEntity:v14 predicate:v29 sortDescriptors:v21 returnsObjectsAsFaults:1 limit:v11];

    v24 = [v23 sortedArrayUsingDescriptors:v15];

    predicateForSettings = v29;
  }

  else
  {
    v24 = [ctxCopy objectsInEntity:kMTEpisodeEntityName predicate:predicateForSettings sortDescriptors:sortDescriptorsForPlayOrderByPubDate returnsObjectsAsFaults:1 limit:0];
  }

  v25 = [NSOrderedSet orderedSetWithArray:v24];
  episodes = [settingsCopy episodes];
  v27 = [v25 isEqualToOrderedSet:episodes];

  if ((v27 & 1) == 0)
  {
    v28 = [NSOrderedSet orderedSetWithArray:v24];
    [settingsCopy setEpisodes:v28];
  }

  [settingsCopy setVisible:{objc_msgSend(v24, "count") != 0}];
  [settingsCopy latestEpisodeDate];
  [settingsCopy setLatestEpisodeAvailabilityDate:?];
  [settingsCopy oldestEpisodeDate];
  [settingsCopy setEarliestEpisodeAvailabilityDate:?];
}

- (BOOL)updatePlaylistWithUuid:(id)uuid inContext:(id)context applyAdditionalChangesBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  v10 = [NSSet setWithObject:uuid];
  LOBYTE(self) = [(MTPlaylistQueryManager *)self updatePlaylistsWithUuids:v10 context:contextCopy applyAdditionalChangesBlock:blockCopy];

  return self;
}

- (void)updateAllPlaylistsWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_updateAllPlaylistBackgroundWorkController)
  {
    v6 = [MTCoalescableWorkController controllerWithQosClass:21 identifier:@"MTPlaylistQueryManager.updateAllPlaylists"];
    updateAllPlaylistBackgroundWorkController = selfCopy->_updateAllPlaylistBackgroundWorkController;
    selfCopy->_updateAllPlaylistBackgroundWorkController = v6;
  }

  objc_sync_exit(selfCopy);

  v8 = selfCopy->_updateAllPlaylistBackgroundWorkController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100100ABC;
  v9[3] = &unk_1004D8358;
  v9[4] = selfCopy;
  [(MTCoalescableWorkController *)v8 schedule:v9 completion:completionCopy];
}

- (BOOL)updatePlaylistsWithUuids:(id)uuids
{
  uuidsCopy = uuids;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  LOBYTE(self) = [(MTPlaylistQueryManager *)self updatePlaylistsWithUuids:uuidsCopy context:mainOrPrivateContext applyAdditionalChangesBlock:0];
  return self;
}

- (BOOL)updatePlaylistsWithUuids:(id)uuids context:(id)context applyAdditionalChangesBlock:(id)block
{
  uuidsCopy = uuids;
  contextCopy = context;
  blockCopy = block;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100100F58;
  v14[3] = &unk_1004DC5E0;
  v10 = uuidsCopy;
  v15 = v10;
  v18 = &v19;
  v11 = contextCopy;
  v16 = v11;
  v12 = blockCopy;
  v17 = v12;
  [v11 performBlockAndWait:v14];
  LOBYTE(blockCopy) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return blockCopy;
}

- (void)createDefaultPlaylists
{
  v2 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001012C4;
  v5[3] = &unk_1004D8358;
  v6 = mainOrPrivateContext;
  v4 = mainOrPrivateContext;
  [v4 performBlockAndWait:v5];
}

+ (id)_allEligiblePodcastsForPlaylistInCtx:(id)ctx
{
  v3 = kMTPodcastEntityName;
  ctxCopy = ctx;
  v5 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v6 = +[MTPodcast sortDescriptorsForAllPodcasts];
  v7 = [ctxCopy objectsInEntity:v3 predicate:v5 sortDescriptors:v6];

  return v7;
}

@end