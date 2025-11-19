@interface MTPlaybackQueueFactory
+ (BOOL)_isContinuousPlaybackEnabledForLimit:(int64_t)a3;
+ (id)_episodeToPlayForPodcastUuid:(id)a3 playbackOrder:(int64_t)a4 excludeExplicit:(int64_t)a5 ctx:(id)a6;
+ (id)_latestOrOldestEpisodeForPodcastUuid:(id)a3 restrictToUserEpisodes:(BOOL)a4 excludeExplicit:(int64_t)a5 latest:(BOOL)a6 ctx:(id)a7;
+ (id)_manifestForPlayMyLatestPodcasts;
+ (id)_manifestForPlayMyOldestPodcasts;
+ (id)_manifestForPlayMyPodcasts;
+ (id)_uuidForEpisode:(id)a3;
+ (id)playEpisodeUuid:(id)a3 context:(int64_t)a4 sortType:(int64_t)a5 limit:(int64_t)a6 pubDateLimit:(int64_t)a7;
+ (id)playListenNow;
+ (id)playMyPodcastsWithOrder:(int64_t)a3;
+ (id)playPodcastUuid:(id)a3 order:(int64_t)a4 limit:(int64_t)a5 error:(int64_t *)a6;
+ (id)playStationUuid:(id)a3 episodeUuid:(id)a4 limit:(int64_t)a5;
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
  v5 = [v4 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148628;
  v10[3] = &unk_1004D87E8;
  v6 = v5;
  v11 = v6;
  v7 = v3;
  v12 = v7;
  v13 = &v14;
  [v6 performBlockAndWait:v10];
  v8 = [a1 playEpisodeUuid:v15[5]];

  _Block_object_dispose(&v14, 8);

  return v8;
}

+ (id)playMyPodcastsWithOrder:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [a1 _manifestForPlayMyOldestPodcasts];
  }

  else
  {
    if (a3 == 1)
    {
      [a1 _manifestForPlayMyLatestPodcasts];
    }

    else
    {
      [a1 _manifestForPlayMyPodcasts];
    }
    v3 = ;
  }

  return v3;
}

+ (id)playPodcastUuid:(id)a3 order:(int64_t)a4 limit:(int64_t)a5 error:(int64_t *)a6
{
  v10 = a3;
  v11 = +[MTDB sharedInstance];
  v12 = [v11 mainOrPrivateContext];

  v13 = [a1 _episodeToPlayForPodcastUuid:v10 playbackOrder:a4 excludeExplicit:0 ctx:v12];
  v14 = v13;
  if (!a4 && !v13)
  {
    v14 = [a1 _episodeToPlayForPodcastUuid:v10 playbackOrder:1 excludeExplicit:0 ctx:v12];
  }

  if (v14)
  {
    a6 = [a1 playEpisodeUuid:v14 limit:a5];
    goto LABEL_17;
  }

  if (a6)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    if ([v10 length])
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100148994;
      v20[3] = &unk_1004D87E8;
      v15 = v12;
      v21 = v15;
      v16 = v10;
      v22 = v16;
      v23 = &v24;
      [v15 performBlockAndWait:v20];

      if ((v25[3] & 1) == 0)
      {
        if ((+[PFRestrictionsController isExplicitContentAllowed]& 1) == 0)
        {
          v17 = [a1 _episodeToPlayForPodcastUuid:v16 playbackOrder:a4 excludeExplicit:2 ctx:v15];
          if (v17)
          {
            *a6 = 3;

LABEL_16:
            _Block_object_dispose(&v24, 8);
            a6 = 0;
            goto LABEL_17;
          }
        }

        v18 = 2;
LABEL_15:
        *a6 = v18;
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

  return a6;
}

+ (id)playStationUuid:(id)a3 episodeUuid:(id)a4 limit:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length] && objc_msgSend(a1, "_isContinuousPlaybackEnabledForLimit:", a5))
  {
    v10 = [[MTPlaylistManifest alloc] initWithPlaylistUuid:v8 initialEpisodeUuid:v9];
  }

  else
  {
    if (![v9 length])
    {
      if ([v8 length])
      {
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = sub_100008BDC;
        v25 = sub_10003B5C4;
        v26 = 0;
        v13 = +[MTDB sharedInstance];
        v14 = [v13 mainOrPrivateContext];

        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100148C40;
        v17[3] = &unk_1004D87E8;
        v15 = v14;
        v18 = v15;
        v19 = v8;
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

    v10 = [[MTEpisodeManifest alloc] initWithEpisodeUuid:v9];
  }

  v11 = v10;
LABEL_7:

  return v11;
}

+ (id)playEpisodeUuid:(id)a3 context:(int64_t)a4 sortType:(int64_t)a5 limit:(int64_t)a6 pubDateLimit:(int64_t)a7
{
  v12 = a3;
  if (![v12 length])
  {
    v15 = 0;
    goto LABEL_48;
  }

  if (![a1 _isContinuousPlaybackEnabledForLimit:a6])
  {
    v15 = [[MTEpisodeManifest alloc] initWithEpisodeUuid:v12];
    goto LABEL_48;
  }

  v13 = 0;
  if (a5 > 4)
  {
    if (a5 > 7)
    {
      if (a5 != 8)
      {
        if (a5 != 9)
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
      if (a5 == 5)
      {
        v19 = 1;
LABEL_24:
        v18 = [MTEpisode sortDescriptorsForLastBookmarkedDateAscending:v19];
        goto LABEL_28;
      }

      if (a5 != 7)
      {
        goto LABEL_29;
      }

      v16 = 1;
    }

    v18 = [MTEpisode sortDescriptorsForDownloadedDateAscending:v16];
    goto LABEL_28;
  }

  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v18 = +[MTEpisode sortDescriptorsForTitle];
      goto LABEL_28;
    }

    v19 = 0;
    goto LABEL_24;
  }

  if (a5 >= 2)
  {
    if (a5 != 2)
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
  if (a4 > 7)
  {
    if (a4 != 8)
    {
      if (a4 == 9)
      {
        v38 = +[MTDB sharedInstance];
        v39 = [v38 mainOrPrivateContext];

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
        v20 = v39;
        v51 = v20;
        v40 = v12;
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

      if (a4 != 10)
      {
        goto LABEL_39;
      }

      v27 = [NSFetchRequest alloc];
      v20 = [v27 initWithEntityName:kMTEpisodeEntityName];
      v28 = +[MTEpisode predicateForPreviouslyPlayedHidingFutureTimestamps];
      [v20 setPredicate:v28];

      v29 = +[MTEpisode sortDescriptorsForRecentlyPlayed];
      [v20 setSortDescriptors:v29];

      v30 = [[MTPredicateManifest alloc] initWithInitialEpisodeUuid:v12 fetchRequest:v20];
LABEL_44:
      v15 = v30;
      goto LABEL_46;
    }

    v31 = +[MTEpisode predicateForBookmarkedEpisodes];
LABEL_43:
    v20 = v31;
    v30 = [[MTPredicateManifest alloc] initWithInitialEpisodeUuid:v12 predicateToTrack:v31 sortDescriptors:v13];
    goto LABEL_44;
  }

  if (a4 != 2)
  {
    if (a4 != 3)
    {
      if (a4 == 7)
      {
        goto LABEL_33;
      }

LABEL_39:
      *buf = 0;
      v55 = buf;
      v56 = 0x2020000000;
      v57 = 9;
      v32 = +[MTDB sharedInstance];
      v33 = [v32 mainOrPrivateContext];

      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100149390;
      v45[3] = &unk_1004DC790;
      v34 = v33;
      v46 = v34;
      v35 = v12;
      v47 = v35;
      v48 = buf;
      v49 = a4;
      [v34 performBlockAndWait:v45];
      v36 = off_1004D1B00;
      if (a4 != 6)
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
  v20 = [MTEpisode predicateForPubDateLimit:a7];
  v21 = +[MTEpisode predicateForListenNowLatestEpisodes];
  v22 = [MTEpisode predicateForVisuallyPlayed:0];
  v23 = [v21 AND:v22];
  v24 = [v23 AND:v20];

  v25 = [NSFetchRequest alloc];
  v26 = [v25 initWithEntityName:kMTEpisodeEntityName];
  [v26 setPredicate:v24];
  [v26 setSortDescriptors:v13];
  v15 = [[MTPredicateManifest alloc] initWithInitialEpisodeUuid:v12 fetchRequest:v26];

LABEL_46:
LABEL_47:

LABEL_48:

  return v15;
}

+ (id)_manifestForPlayMyPodcasts
{
  v2 = [a1 playListenNow];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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

+ (BOOL)_isContinuousPlaybackEnabledForLimit:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  return _MTPlaybackContinuousPlaybackEnabled(a1, a2);
}

+ (id)_episodeToPlayForPodcastUuid:(id)a3 playbackOrder:(int64_t)a4 excludeExplicit:(int64_t)a5 ctx:(id)a6
{
  v10 = a3;
  v11 = a6;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100008BDC;
  v27 = sub_10003B5C4;
  v28 = 0;
  if (a4 == 2)
  {
    v12 = [a1 _oldestEpisodeForPodcastUuid:v10 restrictToUserEpisodes:1 excludeExplicit:a5 ctx:v11];
    v13 = [v12 uuid];
  }

  else
  {
    if (a4 == 1)
    {
      v12 = [a1 _latestEpisodeForPodcastUuid:v10 restrictToUserEpisodes:0 excludeExplicit:a5 ctx:v11];
      [v12 uuid];
    }

    else
    {
      v12 = [MTRecencyUtil upNextForPodcastUuid:v10 excludeExplicit:a5 ctx:v11];
      [v12 episodeUuid];
    }
    v13 = ;
  }

  v14 = v24[5];
  v24[5] = v13;

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001497DC;
  v19[3] = &unk_1004D87E8;
  v15 = v11;
  v20 = v15;
  v16 = v10;
  v21 = v16;
  v22 = &v23;
  [v15 performBlockAndWait:v19];
  v17 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v17;
}

+ (id)_latestOrOldestEpisodeForPodcastUuid:(id)a3 restrictToUserEpisodes:(BOOL)a4 excludeExplicit:(int64_t)a5 latest:(BOOL)a6 ctx:(id)a7
{
  v11 = a3;
  v12 = a7;
  if ([v11 length])
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
    v16 = v12;
    v20 = a4;
    v17 = v11;
    v18 = &v22;
    v21 = a6;
    v19 = a5;
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

+ (id)_uuidForEpisode:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100008BDC;
  v15 = sub_10003B5C4;
  v16 = 0;
  v4 = [v3 managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100149BE0;
  v8[3] = &unk_1004D9068;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 performBlockAndWait:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

@end