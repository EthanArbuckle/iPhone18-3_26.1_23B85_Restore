@interface MTVisitedEpisodeManager
- (BOOL)hasEndedVisitingEpisode:(id)a3;
- (MTVisitedEpisodeManager)init;
- (unint64_t)countOfEndedEpisodes;
- (unint64_t)countOfStartedEpisodes;
- (void)endVisitingEpisode:(id)a3;
- (void)flushVisitedEpisodes;
- (void)startVisitingEpisode:(id)a3;
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

- (void)endVisitingEpisode:(id)a3
{
  v6 = a3;
  if ([v6 isNew])
  {
    v4 = [(MTVisitedEpisodeManager *)self endedEpisodeUuids];
    v5 = [v6 uuid];
    [v4 addObject:v5];
  }
}

- (void)startVisitingEpisode:(id)a3
{
  v7 = a3;
  if ([v7 isNew])
  {
    v4 = [(MTVisitedEpisodeManager *)self startedEpisodeUuids];
    v5 = [v7 uuid];
    [v4 addObject:v5];

    v6 = +[MTApplication appController];
    [v6 updateUnplayedBadgeCount];
  }
}

- (BOOL)hasEndedVisitingEpisode:(id)a3
{
  v4 = a3;
  v5 = [(MTVisitedEpisodeManager *)self endedEpisodeUuids];
  v6 = [v4 uuid];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (unint64_t)countOfStartedEpisodes
{
  v2 = [(MTVisitedEpisodeManager *)self startedEpisodeUuids];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)countOfEndedEpisodes
{
  v2 = [(MTVisitedEpisodeManager *)self endedEpisodeUuids];
  v3 = [v2 count];

  return v3;
}

- (void)flushVisitedEpisodes
{
  v3 = [(MTVisitedEpisodeManager *)self startedEpisodeUuids];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MTVisitedEpisodeManager *)self startedEpisodeUuids];
    v6 = [v5 copy];

    v7 = +[MTDB sharedInstance];
    v8 = [v7 privateQueueContext];

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000EE780;
    v16 = &unk_1004D8798;
    v17 = v6;
    v18 = v8;
    v9 = v8;
    v10 = v6;
    [v9 performBlock:&v13];
    v11 = [(MTVisitedEpisodeManager *)self startedEpisodeUuids:v13];
    [v11 removeAllObjects];

    v12 = [(MTVisitedEpisodeManager *)self endedEpisodeUuids];
    [v12 removeAllObjects];
  }
}

@end