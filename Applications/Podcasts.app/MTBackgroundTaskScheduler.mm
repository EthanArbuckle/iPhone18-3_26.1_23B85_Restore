@interface MTBackgroundTaskScheduler
+ (void)registerBackgroundTaskClass:(Class)class;
- (MTBackgroundTaskScheduler)init;
- (void)_takeAssertionAndSchedule;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillTerminate:(id)terminate;
- (void)registerLaunchHandlers;
- (void)rescheduleTasksIfNotScheduledWithIdentifier:(id)identifier completion:(id)completion;
- (void)rescheduleTasksWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation MTBackgroundTaskScheduler

- (MTBackgroundTaskScheduler)init
{
  v10.receiver = self;
  v10.super_class = MTBackgroundTaskScheduler;
  v2 = [(MTBackgroundTaskScheduler *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(MTBackgroundTaskScheduler *)v2 setBackgroundTaskId:UIBackgroundTaskInvalid];
    v4 = dispatch_queue_create("MTBackgroundTaskScheduler.bgSchedulerQueue", 0);
    bgSchedulerQueue = v3->_bgSchedulerQueue;
    v3->_bgSchedulerQueue = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"applicationWillEnterForeground:" name:MTApplicationWillEnterForegroundNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"applicationDidEnterBackground:" name:MTApplicationDidEnterBackgroundNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"applicationWillTerminate:" name:MTApplicationWillTerminateNotification object:0];

    [(MTBackgroundTaskScheduler *)v3 registerLaunchHandlers];
  }

  return v3;
}

- (void)registerLaunchHandlers
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = qword_100583B38;
  v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        v10[0] = 0;
        v10[1] = v10;
        v10[2] = 0x3032000000;
        v10[3] = sub_100008A0C;
        v10[4] = sub_10003B4DC;
        [qword_100583B38 objectForKey:v6];
        v11 = objc_opt_new();
        v7 = +[BGTaskScheduler sharedScheduler];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1000A67FC;
        v9[3] = &unk_1004DAB58;
        v9[4] = v6;
        v9[5] = self;
        v9[6] = v10;
        [v7 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v9];

        _Block_object_dispose(v10, 8);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

+ (void)registerBackgroundTaskClass:(Class)class
{
  v4 = qword_100583B38;
  objc_sync_enter(v4);
  if (!qword_100583B38)
  {
    v5 = objc_opt_new();
    v6 = qword_100583B38;
    qword_100583B38 = v5;
  }

  if (([(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___MTBackgroundTask]& 1) != 0)
  {
    identifier = [(objc_class *)class identifier];
    [qword_100583B38 setObject:class forKey:identifier];
  }

  else
  {
    v8 = _MTLogCategoryBackgroundFetching();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid class registered in MTBackgroundTaskScheduler, must be an MTBackgroundTask", v9, 2u);
    }
  }

  objc_sync_exit(v4);
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v4 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App will enter foreground", v5, 2u);
  }

  dispatch_async(self->_bgSchedulerQueue, &stru_1004DAB78);
}

- (void)applicationDidEnterBackground:(id)background
{
  v4 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App did enter background", v5, 2u);
  }

  [(MTBackgroundTaskScheduler *)self _takeAssertionAndSchedule];
}

- (void)applicationWillTerminate:(id)terminate
{
  v4 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App will terminate", v5, 2u);
  }

  [(MTBackgroundTaskScheduler *)self _takeAssertionAndSchedule];
}

- (void)_takeAssertionAndSchedule
{
  v3 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Take assertion and schedule", buf, 2u);
  }

  if ([(MTBackgroundTaskScheduler *)self backgroundTaskId]!= UIBackgroundTaskInvalid)
  {
    v4 = +[UIApplication sharedApplication];
    [v4 endBackgroundTask:{-[MTBackgroundTaskScheduler backgroundTaskId](self, "backgroundTaskId")}];

    [(MTBackgroundTaskScheduler *)self setBackgroundTaskId:UIBackgroundTaskInvalid];
  }

  objc_initWeak(buf, self);
  v5 = +[NSUUID UUID];
  v13 = [NSString stringWithFormat:@"MTBackgroundTaskScheduler-%@", v5];

  v6 = +[UIApplication sharedApplication];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000A7238;
  v21[3] = &unk_1004D9E80;
  objc_copyWeak(&v22, buf);
  -[MTBackgroundTaskScheduler setBackgroundTaskId:](self, "setBackgroundTaskId:", [v6 beginBackgroundTaskWithName:v13 expirationHandler:v21]);

  v7 = dispatch_group_create();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = qword_100583B38;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        dispatch_group_enter(v7);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000A7308;
        v15[3] = &unk_1004D8358;
        v16 = v7;
        [(MTBackgroundTaskScheduler *)self rescheduleTasksIfNotScheduledWithIdentifier:v12 completion:v15];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v9);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7310;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_group_notify(v7, &_dispatch_main_q, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (void)rescheduleTasksIfNotScheduledWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  bgSchedulerQueue = self->_bgSchedulerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7440;
  block[3] = &unk_1004DABC8;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(bgSchedulerQueue, block);
}

- (void)rescheduleTasksWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = [qword_100583B38 objectForKey:identifierCopy];
  bgSchedulerQueue = self->_bgSchedulerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7714;
  block[3] = &unk_1004DABF0;
  v14 = completionCopy;
  v15 = v8;
  v13 = identifierCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(bgSchedulerQueue, block);
}

@end