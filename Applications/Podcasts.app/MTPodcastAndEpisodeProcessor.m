@interface MTPodcastAndEpisodeProcessor
- (MTPodcastAndEpisodeProcessor)init;
- (id)createEpisodeObserverForPodcastUuid:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5;
- (id)episodeObserverForPodcastUuid:(id)a3;
- (id)episodePredicateForPodcast:(id)a3;
- (id)episodeUuids;
- (id)podcastPredicate;
- (id)podcastUuids;
- (void)addEpisodeObserverForPodcast:(id)a3;
- (void)episodeUuidObserver:(id)a3 resultsChangedForPodcast:(id)a4 withDeletedIds:(id)a5 andInsertIds:(id)a6;
- (void)removeEpisodeObserverForPodcast:(id)a3;
- (void)removeEpisodeObserverForPodcasts:(id)a3;
- (void)stop;
- (void)updateEpisodeObserverForPodcast:(id)a3;
- (void)updateEpisodePredicatesWithDeletedIds:(id)a3 andInsertIds:(id)a4 andUpdatedIds:(id)a5;
@end

@implementation MTPodcastAndEpisodeProcessor

- (MTPodcastAndEpisodeProcessor)init
{
  v6.receiver = self;
  v6.super_class = MTPodcastAndEpisodeProcessor;
  v2 = [(MTBaseProcessor *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    episodeObservers = v2->_episodeObservers;
    v2->_episodeObservers = v3;
  }

  return v2;
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = MTPodcastAndEpisodeProcessor;
  [(MTBaseProcessor *)&v5 stop];
  v3 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v4 = [v3 allValues];
  [v4 enumerateObjectsUsingBlock:&stru_1004DC250];
}

- (id)podcastPredicate
{
  v2 = [NSException exceptionWithName:NSGenericException reason:@"podcastPredicate must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (id)episodePredicateForPodcast:(id)a3
{
  v3 = a3;
  v4 = [NSException exceptionWithName:NSGenericException reason:@"episodePredicateForPodcast must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v4);
}

- (void)updateEpisodePredicatesWithDeletedIds:(id)a3 andInsertIds:(id)a4 andUpdatedIds:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F43FC;
  v14[3] = &unk_1004DB9B8;
  objc_copyWeak(&v18, &location);
  v11 = v8;
  v15 = v11;
  v12 = v10;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  [(MTBaseProcessor *)self enqueueWorkBlock:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)addEpisodeObserverForPodcast:(id)a3
{
  v10 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MTPodcastAndEpisodeProcessor *)self episodePredicateForPodcast:v10];
  if (!v5)
  {
    v5 = +[NSPredicate falsePredicate];
  }

  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeSortDescriptorsForPodcast:v10];
  v7 = [(MTPodcastAndEpisodeProcessor *)self createEpisodeObserverForPodcastUuid:v10 predicate:v5 sortDescriptors:v6];
  [v7 setIdentifier:v10];
  v8 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(v8);
  v9 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  [v9 setObject:v7 forKeyedSubscript:v10];

  objc_sync_exit(v8);
  [v7 startObserving];

  objc_autoreleasePoolPop(v4);
}

- (void)updateEpisodeObserverForPodcast:(id)a3
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MTPodcastAndEpisodeProcessor *)self episodePredicateForPodcast:v13];
  if (!v5)
  {
    v5 = +[NSPredicate falsePredicate];
  }

  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeObserverForPodcastUuid:v13];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = [v6 predicate];
  v9 = v8;
  if (!v8 || ([v8 isEqual:v5] & 1) == 0)
  {
    [v7 stop];

LABEL_7:
    v9 = [(MTPodcastAndEpisodeProcessor *)self episodeSortDescriptorsForPodcast:v13];
    v10 = [(MTPodcastAndEpisodeProcessor *)self createEpisodeObserverForPodcastUuid:v13 predicate:v5 sortDescriptors:v9];
    [v10 setIdentifier:v13];
    v11 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    objc_sync_enter(v11);
    v12 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    [v12 setObject:v10 forKeyedSubscript:v13];

    objc_sync_exit(v11);
    [v10 startObserving];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)removeEpisodeObserverForPodcast:(id)a3
{
  v7 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [NSSet setWithArray:v5, v7];

  [(MTPodcastAndEpisodeProcessor *)self removeEpisodeObserverForPodcasts:v6];
}

- (void)removeEpisodeObserverForPodcasts:(id)a3
{
  v14 = a3;
  v4 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(v4);
  if ([v14 count])
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v14;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
          v12 = [v11 objectForKeyedSubscript:v10];

          if (v12)
          {
            [v12 stop];
            [v5 addObject:v10];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    [v13 removeObjectsForKeys:v5];
  }

  objc_sync_exit(v4);
}

- (id)createEpisodeObserverForPodcastUuid:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MTUuidQueryObserver alloc];
  v12 = [(MTUuidQueryObserver *)v11 initWithEntityName:kMTEpisodeEntityName predicate:v9 sortDescriptors:v10];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v12);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F4C88;
  v16[3] = &unk_1004DC2A0;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  v13 = v8;
  v17 = v13;
  v14 = [(MTUuidQueryObserver *)v12 addResultsChangedHandler:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v12;
}

- (void)episodeUuidObserver:(id)a3 resultsChangedForPodcast:(id)a4 withDeletedIds:(id)a5 andInsertIds:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = NSStringFromSelector(a2);
  v15 = [NSString stringWithFormat:@"%@ must be implemented by subclasses", v14];

  v16 = [NSException exceptionWithName:NSGenericException reason:v15 userInfo:0];
  objc_exception_throw(v16);
}

- (id)episodeObserverForPodcastUuid:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(v5);
  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);

  return v7;
}

- (id)podcastUuids
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100008ACC;
  v9 = sub_10003B53C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F5060;
  v4[3] = &unk_1004DB750;
  v4[4] = &v5;
  [(MTBaseProcessor *)self results:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)episodeUuids
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100008ACC;
  v12 = sub_10003B53C;
  v13 = objc_alloc_init(NSMutableSet);
  v3 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(v3);
  v4 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F5214;
  v7[3] = &unk_1004DC2C8;
  v7[4] = &v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  objc_sync_exit(v3);
  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end