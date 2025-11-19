@interface SeriesListModeManager
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
@end

@implementation SeriesListModeManager

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10040E954(v7);
}

@end