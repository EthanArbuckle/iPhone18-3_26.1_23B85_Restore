@interface MTNMSDefaultsUpdater
- (MTNMSDefaultsUpdater)init;
- (void)_onWorkQueueUpdatePodcastSizeEstimation;
- (void)startObservingDownloadedPodcastsChanges;
- (void)stopObservingDownloadedPodcastsChanges;
- (void)updatePodcastSizeEstimation;
@end

@implementation MTNMSDefaultsUpdater

- (MTNMSDefaultsUpdater)init
{
  v7.receiver = self;
  v7.super_class = MTNMSDefaultsUpdater;
  v2 = [(MTNMSDefaultsUpdater *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MTNMSDefaultsUpdater", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;
  }

  return v2;
}

- (void)startObservingDownloadedPodcastsChanges
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001015D0;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)stopObservingDownloadedPodcastsChanges
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001018D0;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)updatePodcastSizeEstimation
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010199C;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_onWorkQueueUpdatePodcastSizeEstimation
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloadedQueryObserver = [(MTNMSDefaultsUpdater *)self downloadedQueryObserver];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100101B78;
  v4[3] = &unk_1004DAFB0;
  v4[4] = self;
  [downloadedQueryObserver results:v4];
}

@end