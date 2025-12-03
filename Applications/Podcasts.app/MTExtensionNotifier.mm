@interface MTExtensionNotifier
- (MTExtensionNotifier)init;
- (void)libraryDidChange:(id)change;
- (void)setup;
@end

@implementation MTExtensionNotifier

- (MTExtensionNotifier)init
{
  v6.receiver = self;
  v6.super_class = MTExtensionNotifier;
  v2 = [(MTExtensionNotifier *)&v6 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;
  }

  return v2;
}

- (void)setup
{
  workQueue = [(MTExtensionNotifier *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A540;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)libraryDidChange:(id)change
{
  changeCopy = change;
  if (![changeCopy hasChanges])
  {
    goto LABEL_12;
  }

  v3 = kMTPodcastEntityName;
  v4 = [changeCopy changesForEntityName:kMTPodcastEntityName];
  if (([v4 hasInserts] & 1) == 0)
  {
    v5 = [changeCopy changesForEntityName:v3];
    if (([v5 hasDeletes] & 1) == 0)
    {
      v6 = kMTPlaylistEntityName;
      v7 = [changeCopy changesForEntityName:kMTPlaylistEntityName];
      if (![v7 hasInserts])
      {
        v10 = [changeCopy changesForEntityName:v6];
        hasDeletes = [v10 hasDeletes];

        if ((hasDeletes & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  if ((+[PFClientUtil isRunningOnHomepod]& 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, MTExtensionPodcastsDidUpdateNotification, 0, 0, 1u);
  }

  if ((+[PFClientUtil isRunningOnHomepod]& 1) == 0)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:MTExtensionPodcastsDidUpdateNotification object:0];
  }

LABEL_12:
}

@end