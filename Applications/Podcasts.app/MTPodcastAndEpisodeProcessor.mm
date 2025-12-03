@interface MTPodcastAndEpisodeProcessor
- (MTPodcastAndEpisodeProcessor)init;
- (id)createEpisodeObserverForPodcastUuid:(id)uuid predicate:(id)predicate sortDescriptors:(id)descriptors;
- (id)episodeObserverForPodcastUuid:(id)uuid;
- (id)episodePredicateForPodcast:(id)podcast;
- (id)episodeUuids;
- (id)podcastPredicate;
- (id)podcastUuids;
- (void)addEpisodeObserverForPodcast:(id)podcast;
- (void)episodeUuidObserver:(id)observer resultsChangedForPodcast:(id)podcast withDeletedIds:(id)ids andInsertIds:(id)insertIds;
- (void)removeEpisodeObserverForPodcast:(id)podcast;
- (void)removeEpisodeObserverForPodcasts:(id)podcasts;
- (void)stop;
- (void)updateEpisodeObserverForPodcast:(id)podcast;
- (void)updateEpisodePredicatesWithDeletedIds:(id)ids andInsertIds:(id)insertIds andUpdatedIds:(id)updatedIds;
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
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  allValues = [episodeObservers allValues];
  [allValues enumerateObjectsUsingBlock:&stru_1004DC250];
}

- (id)podcastPredicate
{
  v2 = [NSException exceptionWithName:NSGenericException reason:@"podcastPredicate must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (id)episodePredicateForPodcast:(id)podcast
{
  podcastCopy = podcast;
  v4 = [NSException exceptionWithName:NSGenericException reason:@"episodePredicateForPodcast must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v4);
}

- (void)updateEpisodePredicatesWithDeletedIds:(id)ids andInsertIds:(id)insertIds andUpdatedIds:(id)updatedIds
{
  idsCopy = ids;
  insertIdsCopy = insertIds;
  updatedIdsCopy = updatedIds;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F43FC;
  v14[3] = &unk_1004DB9B8;
  objc_copyWeak(&v18, &location);
  v11 = idsCopy;
  v15 = v11;
  v12 = updatedIdsCopy;
  v16 = v12;
  v13 = insertIdsCopy;
  v17 = v13;
  [(MTBaseProcessor *)self enqueueWorkBlock:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)addEpisodeObserverForPodcast:(id)podcast
{
  podcastCopy = podcast;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MTPodcastAndEpisodeProcessor *)self episodePredicateForPodcast:podcastCopy];
  if (!v5)
  {
    v5 = +[NSPredicate falsePredicate];
  }

  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeSortDescriptorsForPodcast:podcastCopy];
  v7 = [(MTPodcastAndEpisodeProcessor *)self createEpisodeObserverForPodcastUuid:podcastCopy predicate:v5 sortDescriptors:v6];
  [v7 setIdentifier:podcastCopy];
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(episodeObservers);
  episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  [episodeObservers2 setObject:v7 forKeyedSubscript:podcastCopy];

  objc_sync_exit(episodeObservers);
  [v7 startObserving];

  objc_autoreleasePoolPop(v4);
}

- (void)updateEpisodeObserverForPodcast:(id)podcast
{
  podcastCopy = podcast;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MTPodcastAndEpisodeProcessor *)self episodePredicateForPodcast:podcastCopy];
  if (!v5)
  {
    v5 = +[NSPredicate falsePredicate];
  }

  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeObserverForPodcastUuid:podcastCopy];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  predicate = [v6 predicate];
  v9 = predicate;
  if (!predicate || ([predicate isEqual:v5] & 1) == 0)
  {
    [v7 stop];

LABEL_7:
    v9 = [(MTPodcastAndEpisodeProcessor *)self episodeSortDescriptorsForPodcast:podcastCopy];
    v10 = [(MTPodcastAndEpisodeProcessor *)self createEpisodeObserverForPodcastUuid:podcastCopy predicate:v5 sortDescriptors:v9];
    [v10 setIdentifier:podcastCopy];
    episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    objc_sync_enter(episodeObservers);
    episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    [episodeObservers2 setObject:v10 forKeyedSubscript:podcastCopy];

    objc_sync_exit(episodeObservers);
    [v10 startObserving];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)removeEpisodeObserverForPodcast:(id)podcast
{
  podcastCopy = podcast;
  podcastCopy2 = podcast;
  v5 = [NSArray arrayWithObjects:&podcastCopy count:1];
  podcastCopy = [NSSet setWithArray:v5, podcastCopy];

  [(MTPodcastAndEpisodeProcessor *)self removeEpisodeObserverForPodcasts:podcastCopy];
}

- (void)removeEpisodeObserverForPodcasts:(id)podcasts
{
  podcastsCopy = podcasts;
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(episodeObservers);
  if ([podcastsCopy count])
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = podcastsCopy;
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
          episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
          v12 = [episodeObservers2 objectForKeyedSubscript:v10];

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

    episodeObservers3 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    [episodeObservers3 removeObjectsForKeys:v5];
  }

  objc_sync_exit(episodeObservers);
}

- (id)createEpisodeObserverForPodcastUuid:(id)uuid predicate:(id)predicate sortDescriptors:(id)descriptors
{
  uuidCopy = uuid;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v11 = [MTUuidQueryObserver alloc];
  v12 = [(MTUuidQueryObserver *)v11 initWithEntityName:kMTEpisodeEntityName predicate:predicateCopy sortDescriptors:descriptorsCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v12);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F4C88;
  v16[3] = &unk_1004DC2A0;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  v13 = uuidCopy;
  v17 = v13;
  v14 = [(MTUuidQueryObserver *)v12 addResultsChangedHandler:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v12;
}

- (void)episodeUuidObserver:(id)observer resultsChangedForPodcast:(id)podcast withDeletedIds:(id)ids andInsertIds:(id)insertIds
{
  observerCopy = observer;
  podcastCopy = podcast;
  idsCopy = ids;
  insertIdsCopy = insertIds;
  v14 = NSStringFromSelector(a2);
  v15 = [NSString stringWithFormat:@"%@ must be implemented by subclasses", v14];

  v16 = [NSException exceptionWithName:NSGenericException reason:v15 userInfo:0];
  objc_exception_throw(v16);
}

- (id)episodeObserverForPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(episodeObservers);
  episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v7 = [episodeObservers2 objectForKeyedSubscript:uuidCopy];

  objc_sync_exit(episodeObservers);

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
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(episodeObservers);
  episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F5214;
  v7[3] = &unk_1004DC2C8;
  v7[4] = &v8;
  [episodeObservers2 enumerateKeysAndObjectsUsingBlock:v7];

  objc_sync_exit(episodeObservers);
  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end