@interface MTListenNowManager
- (MTListenNowManager)init;
- (void)_beginBackgroundTask;
- (void)_endBackgroundTask:(BOOL)task;
- (void)dealloc;
- (void)processListenNowEpisodes:(id)episodes completion:(id)completion;
- (void)results:(id)results;
- (void)startObservingChanges;
- (void)stopObservingChanges;
- (void)update;
@end

@implementation MTListenNowManager

- (MTListenNowManager)init
{
  v21.receiver = self;
  v21.super_class = MTListenNowManager;
  v2 = [(MTListenNowManager *)&v21 init];
  v3 = v2;
  if (v2)
  {
    [(MTListenNowManager *)v2 setAutomaticallySuggestsEpisodes:1];
    objc_initWeak(&location, v3);
    v4 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
    _predicate = [(MTListenNowManager *)v3 _predicate];
    [v4 setPredicate:_predicate];

    v6 = +[MTEpisode sortDescriptorsForListenNow];
    [v4 setSortDescriptors:v6];

    v7 = [MTPropertyChangeQueryObserver alloc];
    v8 = +[MTDB sharedInstance];
    privateQueueContext = [v8 privateQueueContext];
    v10 = [v7 initWithFetchRequest:v4 managedObjectContext:privateQueueContext];
    [(MTListenNowManager *)v3 setListenNowQueryObserver:v10];

    v22[0] = kEpisodeListenNowEpisode;
    v22[1] = kEpisodePodcastUuid;
    v11 = [NSArray arrayWithObjects:v22 count:2];
    listenNowQueryObserver = [(MTListenNowManager *)v3 listenNowQueryObserver];
    [listenNowQueryObserver setPropertyKeys:v11];

    listenNowQueryObserver2 = [(MTListenNowManager *)v3 listenNowQueryObserver];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100030490;
    v18[3] = &unk_1004DC608;
    objc_copyWeak(&v19, &location);
    v14 = [listenNowQueryObserver2 addResultsChangedHandler:v18];

    v3->_backgroundTaskIdentifier = UIBackgroundTaskInvalid;
    v15 = dispatch_queue_create("MTListenNowManager", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)startObservingChanges
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AE7C;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)update
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isUpdating)
  {
    v3 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MTListenNowManager update task already running. Will wait until current taks finishes", buf, 2u);
    }

    selfCopy->_isPendingUpdate = 1;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MTListenNowManager update task starting", buf, 2u);
    }

    selfCopy->_isPendingUpdate = 0;
    selfCopy->_isUpdating = 1;
    [(MTListenNowManager *)selfCopy _beginBackgroundTask];
    objc_sync_exit(selfCopy);

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100031650;
    v5[3] = &unk_1004DAFB0;
    v5[4] = selfCopy;
    [(MTListenNowManager *)selfCopy results:v5];
  }
}

- (void)_beginBackgroundTask
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTListenNowManager *)selfCopy backgroundTaskIdentifier]== UIBackgroundTaskInvalid)
  {
    v3 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MTListenNowManager starting background task", buf, 2u);
    }

    v4 = +[UIApplication sharedApplication];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001026EC;
    v5[3] = &unk_1004D8358;
    v5[4] = selfCopy;
    -[MTListenNowManager setBackgroundTaskIdentifier:](selfCopy, "setBackgroundTaskIdentifier:", [v4 beginBackgroundTaskWithName:@"Listen now manager" expirationHandler:v5]);
  }

  objc_sync_exit(selfCopy);
}

- (void)dealloc
{
  [(MTListenNowManager *)self stopObservingChanges];
  v3.receiver = self;
  v3.super_class = MTListenNowManager;
  [(MTListenNowManager *)&v3 dealloc];
}

- (void)stopObservingChanges
{
  listenNowQueryObserver = [(MTListenNowManager *)self listenNowQueryObserver];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010218C;
  block[3] = &unk_1004D8358;
  v7 = listenNowQueryObserver;
  v5 = listenNowQueryObserver;
  dispatch_async(workQueue, block);
}

- (void)processListenNowEpisodes:(id)episodes completion:(id)completion
{
  episodesCopy = episodes;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10010247C;
  v29[3] = &unk_1004D84D0;
  completionCopy = completion;
  v30 = completionCopy;
  v8 = objc_retainBlock(v29);
  if ([(MTListenNowManager *)self automaticallySuggestsEpisodes])
  {
    if (os_feature_enabled_podcasts_better_media_suggestions())
    {
      v9 = episodesCopy;
      if ([v9 count] >= 0xB)
      {
        v10 = [v9 subarrayWithRange:{0, 10}];

        v9 = v10;
      }

      v11 = [v9 mt_compactMap:&stru_1004DC698];
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001024F8;
      block[3] = &unk_1004D8520;
      v18 = v11;
      v19 = v8;
      v13 = v11;
      dispatch_async(workQueue, block);
    }

    else
    {
      v14 = +[MTDB sharedInstance];
      mainOrPrivateContext = [v14 mainOrPrivateContext];

      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = sub_100008AFC;
      v27 = sub_10003B554;
      v28 = 0;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100102494;
      v20[3] = &unk_1004D9068;
      v22 = &v23;
      v21 = episodesCopy;
      [mainOrPrivateContext performBlockAndWait:v20];
      v16 = +[MTUpcomingMediaController sharedInstance];
      [v16 setSuggestedEpisodeUuids:v24[5]];

      (v8[2])(v8);
      _Block_object_dispose(&v23, 8);
    }
  }

  else
  {
    (v8[2])(v8);
  }
}

- (void)results:(id)results
{
  resultsCopy = results;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010263C;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = resultsCopy;
  v6 = resultsCopy;
  dispatch_async(workQueue, v7);
}

- (void)_endBackgroundTask:(BOOL)task
{
  taskCopy = task;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTListenNowManager *)selfCopy backgroundTaskIdentifier]!= UIBackgroundTaskInvalid)
  {
    v5 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = &stru_1004F3018;
      if (taskCopy)
      {
        v6 = @"(expired)";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MTListenNowManager ending background task %@", &v8, 0xCu);
    }

    v7 = +[UIApplication sharedApplication];
    [v7 endBackgroundTask:{-[MTListenNowManager backgroundTaskIdentifier](selfCopy, "backgroundTaskIdentifier")}];

    [(MTListenNowManager *)selfCopy setBackgroundTaskIdentifier:UIBackgroundTaskInvalid];
  }

  objc_sync_exit(selfCopy);
}

@end