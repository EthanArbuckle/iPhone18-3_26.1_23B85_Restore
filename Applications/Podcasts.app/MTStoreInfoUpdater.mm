@interface MTStoreInfoUpdater
+ (id)sharedInstance;
- (BOOL)updateAdamId:(id)id forEpisode:(id)episode;
- (MTStoreInfoUpdater)init;
- (id)_fetchRequestForEpisodesWithMissingAdamIdsForPodcastUuid:(id)uuid;
- (id)episodesWithMissingAdamIdsForPodcast:(id)podcast withContext:(id)context;
- (void)getStoreInfoForEpisodesWithAdamIds:(id)ids callback:(id)callback;
- (void)getStoreInfoForPodcastWithAdamId:(int64_t)id callback:(id)callback;
- (void)updateStoreInfoForEpisodesAndPodcast:(id)podcast skipPodcastLastCheckDate:(BOOL)date;
- (void)updateStoreInfoForEpisodesInPodcast:(id)podcast withEpisodeIds:(id)ids andEpisodesWithGuid:(id)guid;
- (void)updateStoreInfoForPodcast:(id)podcast;
@end

@implementation MTStoreInfoUpdater

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E784;
  block[3] = &unk_1004D86F8;
  block[4] = self;
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

    updateOperationQueue = [(MTStoreInfoUpdater *)v2 updateOperationQueue];
    [updateOperationQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)updateStoreInfoForPodcast:(id)podcast
{
  podcastCopy = podcast;
  updateOperationQueue = [(MTStoreInfoUpdater *)self updateOperationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015B894;
  v7[3] = &unk_1004D8798;
  v8 = podcastCopy;
  selfCopy = self;
  v6 = podcastCopy;
  [updateOperationQueue addOperationWithBlock:v7];
}

- (void)updateStoreInfoForEpisodesAndPodcast:(id)podcast skipPodcastLastCheckDate:(BOOL)date
{
  podcastCopy = podcast;
  v7 = +[MTDB sharedInstance];
  importContext = [v7 importContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015BC20;
  v11[3] = &unk_1004D9668;
  v12 = importContext;
  v13 = podcastCopy;
  dateCopy = date;
  selfCopy = self;
  v9 = podcastCopy;
  v10 = importContext;
  [v10 performBlockAndWait:v11];
}

- (void)updateStoreInfoForEpisodesInPodcast:(id)podcast withEpisodeIds:(id)ids andEpisodesWithGuid:(id)guid
{
  podcastCopy = podcast;
  idsCopy = ids;
  guidCopy = guid;
  v11 = +[MTDB sharedInstance];
  importContext = [v11 importContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10015C218;
  v17[3] = &unk_1004DAA70;
  v18 = importContext;
  v19 = podcastCopy;
  selfCopy = self;
  v21 = guidCopy;
  v22 = idsCopy;
  v13 = idsCopy;
  v14 = guidCopy;
  v15 = podcastCopy;
  v16 = importContext;
  [v16 performBlockAndWait:v17];
}

- (BOOL)updateAdamId:(id)id forEpisode:(id)episode
{
  idCopy = id;
  episodeCopy = episode;
  if (idCopy && [idCopy longLongValue] >= 1 && (v7 = objc_msgSend(idCopy, "longLongValue"), objc_msgSend(episodeCopy, "storeTrackId") != v7))
  {
    v10 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      title = [episodeCopy title];
      v12 = 134218242;
      v13 = v7;
      v14 = 2112;
      v15 = title;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating store track id %lld for episode %@", &v12, 0x16u);
    }

    [episodeCopy setStoreTrackId:v7];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fetchRequestForEpisodesWithMissingAdamIdsForPodcastUuid:(id)uuid
{
  v3 = kMTEpisodeEntityName;
  uuidCopy = uuid;
  v5 = [NSFetchRequest fetchRequestWithEntityName:v3];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setFetchBatchSize:200];
  v6 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuidCopy includeNonAudioEpisodes:1];

  v7 = kEpisodeStoreTrackId;
  v8 = [NSNumber numberWithLongLong:kMTSerpentAdamIdOffset];
  v9 = [NSPredicate predicateWithFormat:@"(%K = 0 OR %K = %@)", v7, v7, v8];
  v10 = [v6 AND:v9];

  [v5 setPredicate:v10];

  return v5;
}

- (id)episodesWithMissingAdamIdsForPodcast:(id)podcast withContext:(id)context
{
  contextCopy = context;
  v7 = [(MTStoreInfoUpdater *)self _fetchRequestForEpisodesWithMissingAdamIdsForPodcastUuid:podcast];
  v12 = 0;
  v8 = [contextCopy executeFetchRequest:v7 error:&v12];

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

- (void)getStoreInfoForPodcastWithAdamId:(int64_t)id callback:(id)callback
{
  callbackCopy = callback;
  v6 = [NSNumber numberWithLongLong:id];
  v7 = [IMContentLookupService alloc];
  stringValue = [v6 stringValue];
  v16 = stringValue;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = [v7 initWithIds:v9];

  [v10 setProfile:kProductProfile];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10015CD38;
  v13[3] = &unk_1004DDF58;
  v14 = v6;
  v15 = callbackCopy;
  v11 = callbackCopy;
  v12 = v6;
  [v10 request:v13];
}

- (void)getStoreInfoForEpisodesWithAdamIds:(id)ids callback:(id)callback
{
  idsCopy = ids;
  callbackCopy = callback;
  v7 = [[IMContentLookupService alloc] initWithIds:idsCopy];
  [v7 setProfile:kMTStoreLookupPodcastProductProfile];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015D280;
  v10[3] = &unk_1004DDF58;
  v11 = idsCopy;
  v12 = callbackCopy;
  v8 = callbackCopy;
  v9 = idsCopy;
  [v7 request:v10];
}

@end