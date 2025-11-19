@interface BKFinishedAssetManager
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
- (void)removeFinishedDownloadsWithThreshhold:(double)a3;
@end

@implementation BKFinishedAssetManager

- (void)removeFinishedDownloadsWithThreshhold:(double)a3
{
  v4 = self;
  FinishedAssetManager.removeFinishedDownloads(threshhold:)(a3);
}

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10070360C(v7);
}

@end