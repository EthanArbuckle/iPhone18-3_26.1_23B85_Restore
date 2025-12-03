@interface MTPlaybackQueueFactory
+ (BOOL)_isContinuousPlaybackEnabledForLimit:(int64_t)limit;
+ (id)_episodeToPlayForPodcastUuid:(id)uuid playbackOrder:(int64_t)order excludeExplicit:(int64_t)explicit ctx:(id)ctx;
+ (id)_latestOrOldestEpisodeForPodcastUuid:(id)uuid restrictToUserEpisodes:(BOOL)episodes excludeExplicit:(int64_t)explicit latest:(BOOL)latest ctx:(id)ctx;
+ (id)_manifestForPlayMyLatestPodcasts;
+ (id)_manifestForPlayMyOldestPodcasts;
+ (id)_manifestForPlayMyPodcasts;
+ (id)_uuidForEpisode:(id)episode;
+ (id)playEpisodeUuid:(id)uuid context:(int64_t)context sortType:(int64_t)type limit:(int64_t)limit pubDateLimit:(int64_t)dateLimit;
+ (id)playListenNow;
+ (id)playMyPodcastsWithOrder:(int64_t)order;
+ (id)playPodcastUuid:(id)uuid order:(int64_t)order limit:(int64_t)limit error:(int64_t *)error;
+ (id)playStationUuid:(id)uuid episodeUuid:(id)episodeUuid limit:(int64_t)limit;
@end

@implementation MTPlaybackQueueFactory

+ (id)playListenNow
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100008BDC;
  v18 = sub_10003B5C4;
  v19 = 0;
  v3 = +[MTEpisode sortDescriptorsForListenNow];
  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148628;
  v10[3] = &unk_1004D87E8;
  v6 = mainOrPrivateContext;
  v11 = v6;
  v7 = v3;
  v12 = v7;
  v13 = &v14;
  [v6 performBlockAndWait:v10];
  v8 = [self playEpisodeUuid:v15[5]];

  _Block_object_dispose(&v14, 8);

  return v8;
}

+ (id)playMyPodcastsWithOrder:(int64_t)order
{
  if (order == 2)
  {
    _manifestForPlayMyOldestPodcasts = [self _manifestForPlayMyOldestPodcasts];
  }

  else
  {
    if (order == 1)
    {
      [self _manifestForPlayMyLatestPodcasts];
    }

    else
    {
      [self _manifestForPlayMyPodcasts];
    }
    _manifestForPlayMyOldestPodcasts = ;
  }

  return _manifestForPlayMyOldestPodcasts;
}

+ (id)playPodcastUuid:(id)uuid order:(int64_t)order limit:(int64_t)limit error:(int64_t *)error
{
  uuidCopy = uuid;
  v11 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v11 mainOrPrivateContext];

  v13 = [self _episodeToPlayForPodcastUuid:uuidCopy playbackOrder:order excludeExplicit:0 ctx:mainOrPrivateContext];
  v14 = v13;
  if (!order && !v13)
  {
    v14 = [self _episodeToPlayForPodcastUuid:uuidCopy playbackOrder:1 excludeExplicit:0 ctx:mainOrPrivateContext];
  }

  if (v14)
  {
    error = [self playEpisodeUuid:v14 limit:limit];
    goto LABEL_17;
  }

  if (error)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    if ([uuidCopy length])
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100148994;
      v20[3] = &unk_1004D87E8;
      v15 = mainOrPrivateContext;
      v21 = v15;
      v16 = uuidCopy;
      v22 = v16;
      v23 = &v24;
      [v15 performBlockAndWait:v20];

      if ((v25[3] & 1) == 0)
      {
        if ((+[PFRestrictionsController isExplicitContentAllowed]& 1) == 0)
        {
          v17 = [self _episodeToPlayForPodcastUuid:v16 playbackOrder:order excludeExplicit:2 ctx:v15];
          if (v17)
          {
            *error = 3;

LABEL_16:
            _Block_object_dispose(&v24, 8);
            error = 0;
            goto LABEL_17;
          }
        }

        v18 = 2;
LABEL_15:
        *error = v18;
        goto LABEL_16;
      }
    }

    else
    {
      *(v25 + 24) = 1;
    }

    v18 = 1;
    goto LABEL_15;
  }

LABEL_17:

  return error;
}

+ (id)playStationUuid:(id)uuid episodeUuid:(id)episodeUuid limit:(int64_t)limit
{
  uuidCopy = uuid;
  episodeUuidCopy = episodeUuid;
  if ([uuidCopy length] && objc_msgSend(self, "_isContinuousPlaybackEnabledForLimit:", limit))
  {
    v10 = [[MTPlaylistManifest alloc] initWithPlaylistUuid:uuidCopy initialEpisodeUuid:episodeUuidCopy];
  }

  else
  {
    if (![episodeUuidCopy length])
    {
      if ([uuidCopy length])
      {
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = sub_100008BDC;
        v25 = sub_10003B5C4;
        v26 = 0;
        v13 = +[MTDB sharedInstance];
        mainOrPrivateContext = [v13 mainOrPrivateContext];

        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100148C40;
        v17[3] = &unk_1004D87E8;
        v15 = mainOrPrivateContext;
        v18 = v15;
        v19 = uuidCopy;
        v20 = &v21;
        [v15 performBlockAndWait:v17];
        if ([v22[5] length])
        {
          v16 = [MTEpisodeManifest alloc];
          v11 = [(MTEpisodeManifest *)v16 initWithEpisodeUuid:v22[5]];
        }

        else
        {
          v11 = 0;
        }

        _Block_object_dispose(&v21, 8);
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_7;
    }

    v10 = [[MTEpisodeManifest alloc] initWithEpisodeUuid:episodeUuidCopy];
  }

  v11 = v10;
LABEL_7:

  return v11;
}

+ (id)playEpisodeUuid:(id)uuid context:(int64_t)context sortType:(int64_t)type limit:(int64_t)limit pubDateLimit:(int64_t)dateLimit
{
  uuidCopy = uuid;
  if (![uuidCopy length])
  {
    v15 = 0;
    goto LABEL_48;
  }

  if (![self _isContinuousPlaybackEnabledForLimit:limit])
  {
    v15 = [[MTEpisodeManifest alloc] initWithEpisodeUuid:uuidCopy];
    goto LABEL_48;
  }

  v13 = 0;
  if (type > 4)
  {
    if (type > 7)
    {
      if (type != 8)
      {
        if (type != 9)
        {
          goto LABEL_29;
        }

        v17 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid sort type enum MTEpisodeContextSortType_ENUM_COUNT, using default", buf, 2u);
        }

        goto LABEL_19;
      }

      v16 = 0;
    }

    else
    {
      if (type == 5)
      {
        v19 = 1;
LABEL_24:
        v18 = [MTEpisode sortDescriptorsForLastBookmarkedDateAscending:v19];
        goto LABEL_28;
      }

      if (type != 7)
      {
        goto LABEL_29;
      }

      v16 = 1;
    }

    v18 = [MTEpisode sortDescriptorsForDownloadedDateAscending:v16];
    goto LABEL_28;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      v18 = +[MTEpisode sortDescriptorsForTitle];
      goto LABEL_28;
    }

    v19 = 0;
    goto LABEL_24;
  }

  if (type >= 2)
  {
    if (type != 2)
    {
      goto LABEL_29;
    }

    v14 = 1;
    goto LABEL_20;
  }

LABEL_19:
  v14 = 0;
LABEL_20:
  v18 = [MTEpisode sortDescriptorsForPubDateAscending:v14];
LABEL_28:
  v13 = v18;
LABEL_29:
  if (context > 7)
  {
    if (context != 8)
    {
      if (context == 9)
      {
        v38 = +[MTDB sharedInstance];
        mainOrPrivateContext = [v38 mainOrPrivateContext];

        *buf = 0;
        v55 = buf;
        v56 = 0x3032000000;
        v57 = sub_100008BDC;
        v58 = sub_10003B5C4;
        v59 = 0;
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100149324;
        v50[3] = &unk_1004D87E8;
        v20 = mainOrPrivateContext;
        v51 = v20;
        v40 = uuidCopy;
        v52 = v40;
        v53 = buf;
        [v20 performBlockAndWait:v50];
        v41 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:*(v55 + 5) includeNonAudioEpisodes:1];
        v42 = [MTEpisode predicateForDownloaded:1 excludeHidden:1];
        v43 = [v41 AND:v42];

        v15 = [[MTPredicateManifest alloc] initWithInitialEpisodeUuid:v40 predicateToTrack:v43 sortDescriptors:v13];
        _Block_object_dispose(buf, 8);

        goto LABEL_46;
      }

      if (context != 10)
      {
        goto LABEL_39;
      }

      v27 = [NSFetchRequest alloc];
      v20 = [v27 initWithEntityName:kMTEpisodeEntityName];
      v28 = +[MTEpisode predicateForPreviouslyPlayedHidingFutureTimestamps];
      [v20 setPredicate:v28];

      v29 = +[MTEpisode sortDescriptorsForRecentlyPlayed];
      [v20 setSortDescriptors:v29];

      v30 = [[MTPredicateManifest alloc] initWithInitialEpisodeUuid:uuidCopy fetchRequest:v20];
LABEL_44:
      v15 = v30;
      goto LABEL_46;
    }

    v31 = +[MTEpisode predicateForBookmarkedEpisodes];
LABEL_43:
    v20 = v31;
    v30 = [[MTPredicateManifest alloc] initWithInitialEpisodeUuid:uuidCopy predicateToTrack:v31 sortDescriptors:v13];
    goto LABEL_44;
  }

  if (context != 2)
  {
    if (context != 3)
    {
      if (context == 7)
      {
        goto LABEL_33;
      }

LABEL_39:
      *buf = 0;
      v55 = buf;
      v56 = 0x2020000000;
      v57 = 9;
      v32 = +[MTDB sharedInstance];
      mainOrPrivateContext2 = [v32 mainOrPrivateContext];

      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100149390;
      v45[3] = &unk_1004DC790;
      v34 = mainOrPrivateContext2;
      v46 = v34;
      v35 = uuidCopy;
      v47 = v35;
      v48 = buf;
      contextCopy = context;
      [v34 performBlockAndWait:v45];
      v36 = off_1004D1B00;
      if (context != 6)
      {
        v36 = off_1004D1B50;
      }

      v37 = objc_alloc(*v36);
      v15 = [v37 initWithInitialEpisodeUuid:v35 sectionType:*(v55 + 3)];

      _Block_object_dispose(buf, 8);
      goto LABEL_47;
    }

    v31 = [MTEpisode predicateForDownloaded:1 excludeHidden:1];
    goto LABEL_43;
  }

LABEL_33:
  v20 = [MTEpisode predicateForPubDateLimit:dateLimit];
  v21 = +[MTEpisode predicateForListenNowLatestEpisodes];
  v22 = [MTEpisode predicateForVisuallyPlayed:0];
  v23 = [v21 AND:v22];
  v24 = [v23 AND:v20];

  v25 = [NSFetchRequest alloc];
  v26 = [v25 initWithEntityName:kMTEpisodeEntityName];
  [v26 setPredicate:v24];
  [v26 setSortDescriptors:v13];
  v15 = [[MTPredicateManifest alloc] initWithInitialEpisodeUuid:uuidCopy fetchRequest:v26];

LABEL_46:
LABEL_47:

LABEL_48:

  return v15;
}

+ (id)_manifestForPlayMyPodcasts
{
  playListenNow = [self playListenNow];
  v3 = playListenNow;
  if (playListenNow)
  {
    v4 = playListenNow;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if (+[MTPodcast totalUnplayedCount])
  {
    v4 = [[MTUnplayedManifest alloc] initWithInitialEpisodeUuid:0];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

+ (id)_manifestForPlayMyLatestPodcasts
{
  v2 = +[MTPodcast totalUnplayedCount];
  if (v2)
  {
    v2 = [[MTUnplayedManifest alloc] initWithInitialEpisodeUuid:0 newestToOldest:1];
  }

  return v2;
}

+ (id)_manifestForPlayMyOldestPodcasts
{
  v2 = +[MTPodcast totalUnplayedCount];
  if (v2)
  {
    v2 = [[MTUnplayedManifest alloc] initWithInitialEpisodeUuid:0 newestToOldest:0];
  }

  return v2;
}

+ (BOOL)_isContinuousPlaybackEnabledForLimit:(int64_t)limit
{
  if (limit == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (limit == 1)
  {
    return 0;
  }

  return _MTPlaybackContinuousPlaybackEnabled(self, a2);
}

+ (id)_episodeToPlayForPodcastUuid:(id)uuid playbackOrder:(int64_t)order excludeExplicit:(int64_t)explicit ctx:(id)ctx
{
  uuidCopy = uuid;
  ctxCopy = ctx;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100008BDC;
  v27 = sub_10003B5C4;
  v28 = 0;
  if (order == 2)
  {
    v12 = [self _oldestEpisodeForPodcastUuid:uuidCopy restrictToUserEpisodes:1 excludeExplicit:explicit ctx:ctxCopy];
    uuid = [v12 uuid];
  }

  else
  {
    if (order == 1)
    {
      v12 = [self _latestEpisodeForPodcastUuid:uuidCopy restrictToUserEpisodes:0 excludeExplicit:explicit ctx:ctxCopy];
      [v12 uuid];
    }

    else
    {
      v12 = [MTRecencyUtil upNextForPodcastUuid:uuidCopy excludeExplicit:explicit ctx:ctxCopy];
      [v12 episodeUuid];
    }
    uuid = ;
  }

  v14 = v24[5];
  v24[5] = uuid;

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001497DC;
  v19[3] = &unk_1004D87E8;
  v15 = ctxCopy;
  v20 = v15;
  v16 = uuidCopy;
  v21 = v16;
  v22 = &v23;
  [v15 performBlockAndWait:v19];
  v17 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v17;
}

+ (id)_latestOrOldestEpisodeForPodcastUuid:(id)uuid restrictToUserEpisodes:(BOOL)episodes excludeExplicit:(int64_t)explicit latest:(BOOL)latest ctx:(id)ctx
{
  uuidCopy = uuid;
  ctxCopy = ctx;
  if ([uuidCopy length])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_100008BDC;
    v26 = sub_10003B5C4;
    v27 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001499E4;
    v15[3] = &unk_1004DDC18;
    v16 = ctxCopy;
    episodesCopy = episodes;
    v17 = uuidCopy;
    v18 = &v22;
    latestCopy = latest;
    explicitCopy = explicit;
    [v16 performBlockAndWait:v15];
    v13 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_uuidForEpisode:(id)episode
{
  episodeCopy = episode;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100008BDC;
  v15 = sub_10003B5C4;
  v16 = 0;
  managedObjectContext = [episodeCopy managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100149BE0;
  v8[3] = &unk_1004D9068;
  v10 = &v11;
  v5 = episodeCopy;
  v9 = v5;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

@end