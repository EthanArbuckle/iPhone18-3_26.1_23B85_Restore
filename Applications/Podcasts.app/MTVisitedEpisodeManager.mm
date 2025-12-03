@interface MTVisitedEpisodeManager
- (BOOL)hasEndedVisitingEpisode:(id)episode;
- (MTVisitedEpisodeManager)init;
- (unint64_t)countOfEndedEpisodes;
- (unint64_t)countOfStartedEpisodes;
- (void)endVisitingEpisode:(id)episode;
- (void)flushVisitedEpisodes;
- (void)startVisitingEpisode:(id)episode;
@end

@implementation MTVisitedEpisodeManager

- (MTVisitedEpisodeManager)init
{
  v7.receiver = self;
  v7.super_class = MTVisitedEpisodeManager;
  v2 = [(MTVisitedEpisodeManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    [(MTVisitedEpisodeManager *)v2 setStartedEpisodeUuids:v3];

    v4 = objc_alloc_init(NSMutableSet);
    [(MTVisitedEpisodeManager *)v2 setEndedEpisodeUuids:v4];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"flushVisitedEpisodes" name:MTApplicationWillResignActiveNotification object:0];
  }

  return v2;
}

- (void)endVisitingEpisode:(id)episode
{
  episodeCopy = episode;
  if ([episodeCopy isNew])
  {
    endedEpisodeUuids = [(MTVisitedEpisodeManager *)self endedEpisodeUuids];
    uuid = [episodeCopy uuid];
    [endedEpisodeUuids addObject:uuid];
  }
}

- (void)startVisitingEpisode:(id)episode
{
  episodeCopy = episode;
  if ([episodeCopy isNew])
  {
    startedEpisodeUuids = [(MTVisitedEpisodeManager *)self startedEpisodeUuids];
    uuid = [episodeCopy uuid];
    [startedEpisodeUuids addObject:uuid];

    v6 = +[MTApplication appController];
    [v6 updateUnplayedBadgeCount];
  }
}

- (BOOL)hasEndedVisitingEpisode:(id)episode
{
  episodeCopy = episode;
  endedEpisodeUuids = [(MTVisitedEpisodeManager *)self endedEpisodeUuids];
  uuid = [episodeCopy uuid];

  LOBYTE(episodeCopy) = [endedEpisodeUuids containsObject:uuid];
  return episodeCopy;
}

- (unint64_t)countOfStartedEpisodes
{
  startedEpisodeUuids = [(MTVisitedEpisodeManager *)self startedEpisodeUuids];
  v3 = [startedEpisodeUuids count];

  return v3;
}

- (unint64_t)countOfEndedEpisodes
{
  endedEpisodeUuids = [(MTVisitedEpisodeManager *)self endedEpisodeUuids];
  v3 = [endedEpisodeUuids count];

  return v3;
}

- (void)flushVisitedEpisodes
{
  startedEpisodeUuids = [(MTVisitedEpisodeManager *)self startedEpisodeUuids];
  v4 = [startedEpisodeUuids count];

  if (v4)
  {
    startedEpisodeUuids2 = [(MTVisitedEpisodeManager *)self startedEpisodeUuids];
    v6 = [startedEpisodeUuids2 copy];

    v7 = +[MTDB sharedInstance];
    privateQueueContext = [v7 privateQueueContext];

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000EE780;
    v16 = &unk_1004D8798;
    v17 = v6;
    v18 = privateQueueContext;
    v9 = privateQueueContext;
    v10 = v6;
    [v9 performBlock:&v13];
    v11 = [(MTVisitedEpisodeManager *)self startedEpisodeUuids:v13];
    [v11 removeAllObjects];

    endedEpisodeUuids = [(MTVisitedEpisodeManager *)self endedEpisodeUuids];
    [endedEpisodeUuids removeAllObjects];
  }
}

@end