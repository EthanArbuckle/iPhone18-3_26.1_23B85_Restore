@interface MTStoreInfoUpdater
+ (id)sharedInstance;
- (BOOL)updateAdamId:(id)a3 forEpisode:(id)a4;
- (MTStoreInfoUpdater)init;
- (id)_fetchRequestForEpisodesWithMissingAdamIdsForPodcastUuid:(id)a3;
- (id)episodesWithMissingAdamIdsForPodcast:(id)a3 withContext:(id)a4;
- (void)getStoreInfoForEpisodesWithAdamIds:(id)a3 callback:(id)a4;
- (void)getStoreInfoForPodcastWithAdamId:(int64_t)a3 callback:(id)a4;
- (void)updateStoreInfoForEpisodesAndPodcast:(id)a3 skipPodcastLastCheckDate:(BOOL)a4;
- (void)updateStoreInfoForEpisodesInPodcast:(id)a3 withEpisodeIds:(id)a4 andEpisodesWithGuid:(id)a5;
- (void)updateStoreInfoForPodcast:(id)a3;
@end

@implementation MTStoreInfoUpdater

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E784;
  block[3] = &unk_1004D86F8;
  block[4] = a1;
  if (qword_100583DC8 != -1)
  {
    dispatch_once(&qword_100583DC8, block);
  }

  v2 = qword_100583DC0;

  return v2;
}

- (MTStoreInfoUpdater)init
{
  v6.receiver = self;
  v6.super_class = MTStoreInfoUpdater;
  v2 = [(MTStoreInfoUpdater *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    [(MTStoreInfoUpdater *)v2 setUpdateOperationQueue:v3];

    v4 = [(MTStoreInfoUpdater *)v2 updateOperationQueue];
    [v4 setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)updateStoreInfoForPodcast:(id)a3
{
  v4 = a3;
  v5 = [(MTStoreInfoUpdater *)self updateOperationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015B894;
  v7[3] = &unk_1004D8798;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (void)updateStoreInfoForEpisodesAndPodcast:(id)a3 skipPodcastLastCheckDate:(BOOL)a4
{
  v6 = a3;
  v7 = +[MTDB sharedInstance];
  v8 = [v7 importContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015BC20;
  v11[3] = &unk_1004D9668;
  v12 = v8;
  v13 = v6;
  v15 = a4;
  v14 = self;
  v9 = v6;
  v10 = v8;
  [v10 performBlockAndWait:v11];
}

- (void)updateStoreInfoForEpisodesInPodcast:(id)a3 withEpisodeIds:(id)a4 andEpisodesWithGuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MTDB sharedInstance];
  v12 = [v11 importContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10015C218;
  v17[3] = &unk_1004DAA70;
  v18 = v12;
  v19 = v8;
  v20 = self;
  v21 = v10;
  v22 = v9;
  v13 = v9;
  v14 = v10;
  v15 = v8;
  v16 = v12;
  [v16 performBlockAndWait:v17];
}

- (BOOL)updateAdamId:(id)a3 forEpisode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 longLongValue] >= 1 && (v7 = objc_msgSend(v5, "longLongValue"), objc_msgSend(v6, "storeTrackId") != v7))
  {
    v10 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 title];
      v12 = 134218242;
      v13 = v7;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating store track id %lld for episode %@", &v12, 0x16u);
    }

    [v6 setStoreTrackId:v7];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fetchRequestForEpisodesWithMissingAdamIdsForPodcastUuid:(id)a3
{
  v3 = kMTEpisodeEntityName;
  v4 = a3;
  v5 = [NSFetchRequest fetchRequestWithEntityName:v3];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setFetchBatchSize:200];
  v6 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v4 includeNonAudioEpisodes:1];

  v7 = kEpisodeStoreTrackId;
  v8 = [NSNumber numberWithLongLong:kMTSerpentAdamIdOffset];
  v9 = [NSPredicate predicateWithFormat:@"(%K = 0 OR %K = %@)", v7, v7, v8];
  v10 = [v6 AND:v9];

  [v5 setPredicate:v10];

  return v5;
}

- (id)episodesWithMissingAdamIdsForPodcast:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [(MTStoreInfoUpdater *)self _fetchRequestForEpisodesWithMissingAdamIdsForPodcastUuid:a3];
  v12 = 0;
  v8 = [v6 executeFetchRequest:v7 error:&v12];

  v9 = v12;
  if (v9)
  {
    v10 = +[IMLogCategory defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch episodes for store info update - %@", buf, 0xCu);
    }
  }

  return v8;
}

- (void)getStoreInfoForPodcastWithAdamId:(int64_t)a3 callback:(id)a4
{
  v5 = a4;
  v6 = [NSNumber numberWithLongLong:a3];
  v7 = [IMContentLookupService alloc];
  v8 = [v6 stringValue];
  v16 = v8;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = [v7 initWithIds:v9];

  [v10 setProfile:kProductProfile];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10015CD38;
  v13[3] = &unk_1004DDF58;
  v14 = v6;
  v15 = v5;
  v11 = v5;
  v12 = v6;
  [v10 request:v13];
}

- (void)getStoreInfoForEpisodesWithAdamIds:(id)a3 callback:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[IMContentLookupService alloc] initWithIds:v5];
  [v7 setProfile:kMTStoreLookupPodcastProductProfile];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015D280;
  v10[3] = &unk_1004DDF58;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 request:v10];
}

@end