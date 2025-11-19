@interface MTPlaylistQueryManager
+ (BOOL)updatePlaylist:(id)a3 inContext:(id)a4;
+ (id)_allEligiblePodcastsForPlaylistInCtx:(id)a3;
+ (void)_fixSortOrder:(id)a3 generated_p:(BOOL *)a4;
+ (void)_sortUngroupedList:(id)a3 inPlaylist:(id)a4;
+ (void)updateEpisodesForSettings:(id)a3 ctx:(id)a4;
- (BOOL)updatePlaylistWithUuid:(id)a3 inContext:(id)a4 applyAdditionalChangesBlock:(id)a5;
- (BOOL)updatePlaylistsWithUuids:(id)a3;
- (BOOL)updatePlaylistsWithUuids:(id)a3 context:(id)a4 applyAdditionalChangesBlock:(id)a5;
- (MTPlaylistQueryManager)init;
- (void)createDefaultPlaylists;
- (void)resultsChangedWithDeletedIds:(id)a3 insertIds:(id)a4 updatedIds:(id)a5;
- (void)updateAllPlaylistsWithCompletion:(id)a3;
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

- (void)resultsChangedWithDeletedIds:(id)a3 insertIds:(id)a4 updatedIds:(id)a5
{
  v6 = a4;
  if ([v6 count])
  {
    v7 = dispatch_get_global_queue(-2, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000FF680;
    v8[3] = &unk_1004D8798;
    v8[4] = self;
    v9 = v6;
    dispatch_async(v7, v8);
  }
}

+ (void)_fixSortOrder:(id)a3 generated_p:(BOOL *)a4
{
  v5 = a3;
  v6 = [v5 mutableOrderedSetValueForKey:kPlaylistSettings];
  v7 = [v5 containerOrder];
  if (v7 <= 2)
  {
    if (!v7)
    {
      v8 = &stru_1004DC478;
      goto LABEL_12;
    }

    if (v7 == 1)
    {
      v8 = &stru_1004DC498;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v7)
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

  *a4 = 1;
LABEL_13:
}

+ (BOOL)updatePlaylist:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v52 = a4;
  v48 = v5;
  v53 = [v52 playlistForUuid:v5];
  if (!v53)
  {
    LOBYTE(v49) = 0;
    goto LABEL_58;
  }

  v6 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling refreshObject:mergeChanges: for playlist.", buf, 2u);
  }

  [v52 refreshObject:v53 mergeChanges:1];
  v49 = [v53 needsUpdate];
  if (v49)
  {
    [v53 setNeedsUpdate:0];
  }

  if (([v53 hidden] & 1) == 0)
  {
    if ([v53 isItunesPlaylist])
    {
      if (v49)
      {
        LOBYTE(v49) = 1;
      }

      else
      {
        LOBYTE(v49) = [v53 updateUnplayedCount];
      }

      goto LABEL_58;
    }

    if ([v53 includesAllPodcasts])
    {
      v47 = [a1 _allEligiblePodcastsForPlaylistInCtx:v52];
    }

    else
    {
      v7 = [v53 podcasts];
      v47 = [v7 array];
    }

    if ([v47 count])
    {
      buf[0] = 0;
      if (!v49)
      {
LABEL_56:
        [0 report];
        LOBYTE(v49) = v49 | buf[0];
        goto LABEL_57;
      }

      [0 reportWithMarker:@"*** Update start ***"];
      v8 = [v53 settings];
      v9 = [v8 copy];

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
            v15 = [v14 podcast];
            if (v15)
            {
              if ([v14 needsUpdate])
              {
                v16 = [v14 podcast];
                v17 = [v16 title];
                v18 = [NSString stringWithFormat:@"Settings needs update: %@", v17];
                [0 reportWithMarker:v18];

                [a1 updateEpisodesForSettings:v14 ctx:v52];
                [v14 setNeedsUpdate:0];
                v19 = [v14 episodes];
                v20 = [v19 valueForKey:v50];
                v21 = [NSString stringWithFormat:@"\n%@", v20];
                [0 reportWithMarker:v21];
              }
            }

            else
            {
              v22 = +[IMLogger sharedLogger];
              [v22 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Playlists/MTPlaylistQueryManager.m" lineNumber:225 format:@"Settings object with no podcast set"];

              [v52 deleteObject:v14];
              v15 = 0;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v11);
      }

      [a1 _fixSortOrder:v53 generated_p:buf];
      v23 = [v53 settings];
      v24 = [v23 copy];

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
            v31 = [v30 episodes];
            v32 = [v31 mutableCopy];

            v33 = [v53 deletedEpisodes];
            [v32 minusSet:v33];

            v34 = [v30 episodes];
            v35 = [v32 isEqualToOrderedSet:v34];

            if ((v35 & 1) == 0)
            {
              [v30 setEpisodes:v32];
              buf[0] = 1;
            }

            v36 = [v30 episodes];
            [v25 unionOrderedSet:v36];

            [v30 setEpisodeCount:{objc_msgSend(v32, "count")}];
          }

          v27 = [v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v27);
      }

      v37 = [v53 deletedEpisodes];
      [v25 minusSet:v37];

      v38 = [v53 episodes];
      if ([v25 isEqualToOrderedSet:v38])
      {
        v39 = [v53 isUngroupedList];

        if ((v39 & 1) == 0)
        {
LABEL_51:
          v43 = [v53 episodes];
          if ([v43 count])
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
        [a1 _sortUngroupedList:v25 inPlaylist:v53];
      }

      [v53 setEpisodes:v25];
      [v53 updateUnplayedCount];
      buf[0] = 1;
      [0 reportWithMarker:@"Playlist generated"];
      goto LABEL_51;
    }

    v40 = [v53 podcasts];
    if (![v40 count])
    {
      v41 = [v53 deletedEpisodes];
      if (![v41 count])
      {
        v42 = [v53 episodes];
        if (![v42 count])
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
    LOBYTE(v49) = 1;
LABEL_57:
  }

LABEL_58:

  return v49 & 1;
}

+ (void)_sortUngroupedList:(id)a3 inPlaylist:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v5 containerOrder];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
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
    switch(v6)
    {
      case 2:
        v8 = [v5 episodes];
        v9 = [v8 mutableCopy];

        v10 = [v11 mutableCopy];
        [v10 minusOrderedSet:v9];
        [v9 intersectOrderedSet:v11];
        [v11 removeAllObjects];
        [v11 unionOrderedSet:v10];
        [v11 unionOrderedSet:v9];

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

  [v11 sortUsingComparator:v7];
LABEL_13:
}

+ (void)updateEpisodesForSettings:(id)a3 ctx:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 predicateForSettings];
  v8 = [v5 podcast];
  v9 = [v8 sortDescriptorsForPlayOrderByPubDate];

  v10 = [v5 integerForEpisodesToShow];
  v30 = v6;
  if (v10)
  {
    v11 = v10;
    v12 = kEpisodeLevel;
    v13 = [NSPredicate predicateWithFormat:@"%K < %ld", kEpisodeLevel, v10];
    v29 = [v7 AND:v13];

    v14 = kMTEpisodeEntityName;
    v15 = v9;
    v16 = v6;
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
    v9 = v15;
    v23 = [v22 objectsInEntity:v14 predicate:v29 sortDescriptors:v21 returnsObjectsAsFaults:1 limit:v11];

    v24 = [v23 sortedArrayUsingDescriptors:v15];

    v7 = v29;
  }

  else
  {
    v24 = [v6 objectsInEntity:kMTEpisodeEntityName predicate:v7 sortDescriptors:v9 returnsObjectsAsFaults:1 limit:0];
  }

  v25 = [NSOrderedSet orderedSetWithArray:v24];
  v26 = [v5 episodes];
  v27 = [v25 isEqualToOrderedSet:v26];

  if ((v27 & 1) == 0)
  {
    v28 = [NSOrderedSet orderedSetWithArray:v24];
    [v5 setEpisodes:v28];
  }

  [v5 setVisible:{objc_msgSend(v24, "count") != 0}];
  [v5 latestEpisodeDate];
  [v5 setLatestEpisodeAvailabilityDate:?];
  [v5 oldestEpisodeDate];
  [v5 setEarliestEpisodeAvailabilityDate:?];
}

- (BOOL)updatePlaylistWithUuid:(id)a3 inContext:(id)a4 applyAdditionalChangesBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [NSSet setWithObject:a3];
  LOBYTE(self) = [(MTPlaylistQueryManager *)self updatePlaylistsWithUuids:v10 context:v9 applyAdditionalChangesBlock:v8];

  return self;
}

- (void)updateAllPlaylistsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_updateAllPlaylistBackgroundWorkController)
  {
    v6 = [MTCoalescableWorkController controllerWithQosClass:21 identifier:@"MTPlaylistQueryManager.updateAllPlaylists"];
    updateAllPlaylistBackgroundWorkController = v5->_updateAllPlaylistBackgroundWorkController;
    v5->_updateAllPlaylistBackgroundWorkController = v6;
  }

  objc_sync_exit(v5);

  v8 = v5->_updateAllPlaylistBackgroundWorkController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100100ABC;
  v9[3] = &unk_1004D8358;
  v9[4] = v5;
  [(MTCoalescableWorkController *)v8 schedule:v9 completion:v4];
}

- (BOOL)updatePlaylistsWithUuids:(id)a3
{
  v4 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  LOBYTE(self) = [(MTPlaylistQueryManager *)self updatePlaylistsWithUuids:v4 context:v6 applyAdditionalChangesBlock:0];
  return self;
}

- (BOOL)updatePlaylistsWithUuids:(id)a3 context:(id)a4 applyAdditionalChangesBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100100F58;
  v14[3] = &unk_1004DC5E0;
  v10 = v7;
  v15 = v10;
  v18 = &v19;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  [v11 performBlockAndWait:v14];
  LOBYTE(v9) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v9;
}

- (void)createDefaultPlaylists
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001012C4;
  v5[3] = &unk_1004D8358;
  v6 = v3;
  v4 = v3;
  [v4 performBlockAndWait:v5];
}

+ (id)_allEligiblePodcastsForPlaylistInCtx:(id)a3
{
  v3 = kMTPodcastEntityName;
  v4 = a3;
  v5 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v6 = +[MTPodcast sortDescriptorsForAllPodcasts];
  v7 = [v4 objectsInEntity:v3 predicate:v5 sortDescriptors:v6];

  return v7;
}

@end