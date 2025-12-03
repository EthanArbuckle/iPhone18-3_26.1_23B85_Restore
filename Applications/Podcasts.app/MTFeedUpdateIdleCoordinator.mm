@interface MTFeedUpdateIdleCoordinator
+ (id)sharedInstance;
- (BOOL)_shouldDeferWork;
- (id)_dequeueAllDeferredWorkBlocks;
- (id)_initShared;
- (void)_appendDeferredWorkBlock:(id)block;
- (void)_attemptToPerformDeferredWork;
- (void)scheduleFeedUpdateIdleBlock:(id)block;
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

- (void)scheduleFeedUpdateIdleBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = blockCopy;
    if ([(MTFeedUpdateIdleCoordinator *)self _shouldDeferWork])
    {
      [(MTFeedUpdateIdleCoordinator *)self _appendDeferredWorkBlock:v5];
    }

    else
    {
      v5[2]();
    }

    blockCopy = v5;
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
    _dequeueAllDeferredWorkBlocks = [(MTFeedUpdateIdleCoordinator *)self _dequeueAllDeferredWorkBlocks];
    v4 = [_dequeueAllDeferredWorkBlocks countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(_dequeueAllDeferredWorkBlocks);
          }

          (*(*(*(&v8 + 1) + 8 * v7) + 16))();
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [_dequeueAllDeferredWorkBlocks countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_appendDeferredWorkBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deferredWorkBlocks = selfCopy->_deferredWorkBlocks;
  v6 = objc_retainBlock(blockCopy);
  [(NSMutableArray *)deferredWorkBlocks addObject:v6];

  objc_sync_exit(selfCopy);
}

- (id)_dequeueAllDeferredWorkBlocks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deferredWorkBlocks = [(MTFeedUpdateIdleCoordinator *)selfCopy deferredWorkBlocks];
  v4 = [deferredWorkBlocks copy];

  deferredWorkBlocks2 = [(MTFeedUpdateIdleCoordinator *)selfCopy deferredWorkBlocks];
  [deferredWorkBlocks2 removeAllObjects];

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)_shouldDeferWork
{
  v2 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  isRunning = [v2 isRunning];

  if (!isRunning)
  {
    return 1;
  }

  v4 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  isSyncing = [v4 isSyncing];

  if (isSyncing)
  {
    return 1;
  }

  v7 = +[MTFeedUpdateManager sharedInstance];
  statusManager = [v7 statusManager];
  isUpdating = [statusManager isUpdating];

  return isUpdating;
}

@end