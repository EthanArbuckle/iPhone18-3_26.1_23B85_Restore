@interface SeriesListModeManager
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
@end

@implementation SeriesListModeManager

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  monitorCopy = monitor;
  notifyCopy = notify;
  selfCopy = self;
  sub_10040E954(notifyCopy);
}

@end