@interface MTFeedUpdateIdleCoordinator
+ (id)sharedInstance;
- (BOOL)_shouldDeferWork;
- (id)_dequeueAllDeferredWorkBlocks;
- (id)_initShared;
- (void)_appendDeferredWorkBlock:(id)a3;
- (void)_attemptToPerformDeferredWork;
- (void)scheduleFeedUpdateIdleBlock:(id)a3;
@end

@implementation MTFeedUpdateIdleCoordinator

+ (id)sharedInstance
{
  if (qword_100583AB0 != -1)
  {
    sub_1003B2B20();
  }

  v3 = qword_100583AB8;

  return v3;
}

- (id)_initShared
{
  v9.receiver = self;
  v9.super_class = MTFeedUpdateIdleCoordinator;
  v2 = [(MTFeedUpdateIdleCoordinator *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    deferredWorkBlocks = v2->_deferredWorkBlocks;
    v2->_deferredWorkBlocks = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_attemptToPerformDeferredWork" name:@"MTSyncControllerDidStartRunningNotification" object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_attemptToPerformDeferredWork" name:@"MTSyncControllerOperationCompleted" object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_attemptToPerformDeferredWork" name:@"MTFeedUpdateDidEndUpdatingAllFeeds" object:0];
  }

  return v2;
}

- (void)scheduleFeedUpdateIdleBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([(MTFeedUpdateIdleCoordinator *)self _shouldDeferWork])
    {
      [(MTFeedUpdateIdleCoordinator *)self _appendDeferredWorkBlock:v5];
    }

    else
    {
      v5[2]();
    }

    v4 = v5;
  }
}

- (void)_attemptToPerformDeferredWork
{
  if (![(MTFeedUpdateIdleCoordinator *)self _shouldDeferWork])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(MTFeedUpdateIdleCoordinator *)self _dequeueAllDeferredWorkBlocks];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v8 + 1) + 8 * v7) + 16))();
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_appendDeferredWorkBlock:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  deferredWorkBlocks = v4->_deferredWorkBlocks;
  v6 = objc_retainBlock(v7);
  [(NSMutableArray *)deferredWorkBlocks addObject:v6];

  objc_sync_exit(v4);
}

- (id)_dequeueAllDeferredWorkBlocks
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTFeedUpdateIdleCoordinator *)v2 deferredWorkBlocks];
  v4 = [v3 copy];

  v5 = [(MTFeedUpdateIdleCoordinator *)v2 deferredWorkBlocks];
  [v5 removeAllObjects];

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)_shouldDeferWork
{
  v2 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  v3 = [v2 isRunning];

  if (!v3)
  {
    return 1;
  }

  v4 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  v5 = [v4 isSyncing];

  if (v5)
  {
    return 1;
  }

  v7 = +[MTFeedUpdateManager sharedInstance];
  v8 = [v7 statusManager];
  v9 = [v8 isUpdating];

  return v9;
}

@end