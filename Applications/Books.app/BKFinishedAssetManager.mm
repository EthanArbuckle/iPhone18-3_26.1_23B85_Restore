@interface BKFinishedAssetManager
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
- (void)removeFinishedDownloadsWithThreshhold:(double)threshhold;
@end

@implementation BKFinishedAssetManager

- (void)removeFinishedDownloadsWithThreshhold:(double)threshhold
{
  selfCopy = self;
  FinishedAssetManager.removeFinishedDownloads(threshhold:)(threshhold);
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  monitorCopy = monitor;
  notifyCopy = notify;
  selfCopy = self;
  sub_10070360C(notifyCopy);
}

@end