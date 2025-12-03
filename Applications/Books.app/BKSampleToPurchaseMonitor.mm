@interface BKSampleToPurchaseMonitor
- (BKSampleToPurchaseMonitor)initWithAssetID:(id)d notify:(id)notify;
- (void)dealloc;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
@end

@implementation BKSampleToPurchaseMonitor

- (BKSampleToPurchaseMonitor)initWithAssetID:(id)d notify:(id)notify
{
  dCopy = d;
  notifyCopy = notify;
  v9 = +[BKLibraryManager defaultManager];
  persistentStoreCoordinator = [v9 persistentStoreCoordinator];
  v11 = +[BKLibraryManager predicateForAllStoreLibraryAssetsExcludingUnpurchasedSeriesAssets];
  v12 = [NSSet setWithObjects:@"state", @"dataSourceIdentifier", 0];
  v17.receiver = self;
  v17.super_class = BKSampleToPurchaseMonitor;
  v13 = [(BKSampleToPurchaseMonitor *)&v17 initWithContext:0 coordinator:persistentStoreCoordinator entityName:@"BKLibraryAsset" predicate:v11 mapProperty:@"assetID" propertiesOfInterest:v12 observer:self];

  if (v13)
  {
    objc_storeStrong(&v13->_assetID, d);
    v14 = [notifyCopy copy];
    notifyBlock = v13->_notifyBlock;
    v13->_notifyBlock = v14;
  }

  return v13;
}

- (void)dealloc
{
  notifyBlock = self->_notifyBlock;
  self->_notifyBlock = 0;

  v4.receiver = self;
  v4.super_class = BKSampleToPurchaseMonitor;
  [(BKSampleToPurchaseMonitor *)&v4 dealloc];
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  notifyCopy = notify;
  updatedObjects = [notifyCopy updatedObjects];
  if ([updatedObjects count])
  {
    [notifyCopy updatedObjects];
  }

  else
  {
    [notifyCopy addedObjects];
  }
  v7 = ;

  firstObject = [v7 firstObject];

  if ([firstObject length] && self->_notifyBlock && -[NSString isEqualToString:](self->_assetID, "isEqualToString:", firstObject))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001549F4;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end