@interface HWSharedRenderQueueApplicationObserver
- (HWSharedRenderQueueApplicationObserver)init;
- (NSOperationQueue)operationQueue;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)dealloc;
@end

@implementation HWSharedRenderQueueApplicationObserver

- (HWSharedRenderQueueApplicationObserver)init
{
  v7.receiver = self;
  v7.super_class = HWSharedRenderQueueApplicationObserver;
  v2 = [(HWSharedRenderQueueApplicationObserver *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HWSharedRenderQueueApplicationObserver;
  [(HWSharedRenderQueueApplicationObserver *)&v4 dealloc];
}

- (void)_applicationDidEnterBackground:(id)background
{
  operationQueue = [(HWSharedRenderQueueApplicationObserver *)self operationQueue];
  [operationQueue setSuspended:1];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  operationQueue = [(HWSharedRenderQueueApplicationObserver *)self operationQueue];
  [operationQueue setSuspended:0];
}

- (void)_applicationDidBecomeActive:(id)active
{
  operationQueue = [(HWSharedRenderQueueApplicationObserver *)self operationQueue];
  [operationQueue setSuspended:0];
}

- (NSOperationQueue)operationQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_operationQueue);

  return WeakRetained;
}

@end