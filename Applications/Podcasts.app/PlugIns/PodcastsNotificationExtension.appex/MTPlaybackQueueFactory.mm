@interface MTPlaybackQueueFactory
+ (BOOL)_isContinuousPlaybackEnabledForLimit:(int64_t)limit;
+ (id)_episodeToPlayForPodcastUuid:(id)uuid playbackOrder:(int64_t)order excludeExplicit:(int64_t)explicit ctx:(id)ctx;
+ (id)_latestOrOldestEpisodeForPodcastUuid:(id)uuid restrictToUserEpisodes:(BOOL)episodes excludeExplicit:(int64_t)explicit latest:(BOOL)latest ctx:(id)ctx;
+ (id)_uuidForEpisode:(id)episode;
@end

@implementation MTPlaybackQueueFactory

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
  v26 = sub_100010790;
  v27 = sub_1000107A0;
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
  v19[2] = sub_1000107A8;
  v19[3] = &unk_10002C770;
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
    v25 = sub_100010790;
    v26 = sub_1000107A0;
    v27 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000109B0;
    v15[3] = &unk_10002CE40;
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
  v14 = sub_100010790;
  v15 = sub_1000107A0;
  v16 = 0;
  managedObjectContext = [episodeCopy managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010BAC;
  v8[3] = &unk_10002CE68;
  v10 = &v11;
  v5 = episodeCopy;
  v9 = v5;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

@end