@interface THMainThreadQueue
+ (id)queue;
- (THMainThreadQueue)init;
- (void)cancel;
- (void)dealloc;
- (void)enqueueMainThreadBlock:(id)block;
- (void)enqueueMainThreadBlock:(id)block afterDelay:(double)delay;
- (void)p_dispatchTimedMainThreadBlock:(id)block;
@end

@implementation THMainThreadQueue

- (THMainThreadQueue)init
{
  v4.receiver = self;
  v4.super_class = THMainThreadQueue;
  v2 = [(THMainThreadQueue *)&v4 init];
  if (v2)
  {
    [(THMainThreadQueue *)v2 setWaitingBlockTimers:+[NSMutableSet set]];
    [(THMainThreadQueue *)v2 setQueuedOperations:+[NSMutableSet set]];
  }

  return v2;
}

+ (id)queue
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  [(THMainThreadQueue *)self cancel];
  [(THMainThreadQueue *)self setQueuedOperations:0];
  [(THMainThreadQueue *)self setWaitingBlockTimers:0];
  v3.receiver = self;
  v3.super_class = THMainThreadQueue;
  [(THMainThreadQueue *)&v3 dealloc];
}

- (void)cancel
{
  objc_sync_enter(self);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  waitingBlockTimers = [(THMainThreadQueue *)self waitingBlockTimers];
  v4 = [(NSMutableSet *)waitingBlockTimers countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(waitingBlockTimers);
        }

        [*(*(&v15 + 1) + 8 * v6) invalidate];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)waitingBlockTimers countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v4);
  }

  [(NSMutableSet *)[(THMainThreadQueue *)self waitingBlockTimers] removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  queuedOperations = [(THMainThreadQueue *)self queuedOperations];
  v8 = [(NSMutableSet *)queuedOperations countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(queuedOperations);
        }

        [*(*(&v11 + 1) + 8 * v10) cancel];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)queuedOperations countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v8);
  }

  [(NSMutableSet *)[(THMainThreadQueue *)self queuedOperations] removeAllObjects];
  objc_sync_exit(self);
}

- (void)enqueueMainThreadBlock:(id)block
{
  if (!block)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3052000000;
  v15[3] = sub_689DC;
  v15[4] = sub_689EC;
  v15[5] = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_689DC;
  v13 = sub_689EC;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_689F8;
  v8[3] = &unk_45BFB8;
  v8[5] = v15;
  v8[6] = &v9;
  v8[4] = block;
  v5 = [NSBlockOperation blockOperationWithBlock:v8];
  v10[5] = v5;
  objc_sync_enter(self);
  v6 = +[NSOperationQueue mainQueue];
  [(NSOperationQueue *)v6 addOperation:v10[5]];
  queuedOperations = [(THMainThreadQueue *)self queuedOperations];
  [(NSMutableSet *)queuedOperations addObject:v10[5]];
  objc_sync_exit(self);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v15, 8);
}

- (void)p_dispatchTimedMainThreadBlock:(id)block
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3052000000;
  v7[3] = sub_689DC;
  v7[4] = sub_689EC;
  v7[5] = self;
  userInfo = [block userInfo];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_68B9C;
  v6[3] = &unk_45BFE0;
  v6[5] = userInfo;
  v6[6] = v7;
  v6[4] = block;
  [(THMainThreadQueue *)self enqueueMainThreadBlock:v6];

  _Block_object_dispose(v7, 8);
}

- (void)enqueueMainThreadBlock:(id)block afterDelay:(double)delay
{
  if (!block)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_sync_enter(self);
  v7 = [block copy];
  [(NSMutableSet *)[(THMainThreadQueue *)self waitingBlockTimers] addObject:[NSTimer scheduledTimerWithTimeInterval:self target:"p_dispatchTimedMainThreadBlock:" selector:v7 userInfo:0 repeats:delay]];

  objc_sync_exit(self);
}

@end