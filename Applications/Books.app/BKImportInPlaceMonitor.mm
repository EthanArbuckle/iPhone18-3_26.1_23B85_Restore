@interface BKImportInPlaceMonitor
- (BKImportInPlaceMonitor)initWithAssetID:(id)d notify:(id)notify;
- (void)dealloc;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
@end

@implementation BKImportInPlaceMonitor

- (BKImportInPlaceMonitor)initWithAssetID:(id)d notify:(id)notify
{
  dCopy = d;
  notifyCopy = notify;
  v9 = +[BKLibraryManager defaultManager];
  persistentStoreCoordinator = [v9 persistentStoreCoordinator];
  v11 = +[BKLibraryManager defaultManager];
  predicateForLocalLibraryAssets = [v11 predicateForLocalLibraryAssets];
  v13 = [NSSet setWithObjects:@"state", @"dataSourceIdentifier", 0];
  v18.receiver = self;
  v18.super_class = BKImportInPlaceMonitor;
  v14 = [(BKImportInPlaceMonitor *)&v18 initWithContext:0 coordinator:persistentStoreCoordinator entityName:@"BKLibraryAsset" predicate:predicateForLocalLibraryAssets mapProperty:@"assetID" propertiesOfInterest:v13 observer:self];

  if (v14)
  {
    objc_storeStrong(&v14->_assetID, d);
    v15 = [notifyCopy copy];
    notifyBlock = v14->_notifyBlock;
    v14->_notifyBlock = v15;
  }

  return v14;
}

- (void)dealloc
{
  notifyBlock = self->_notifyBlock;
  self->_notifyBlock = 0;

  v4.receiver = self;
  v4.super_class = BKImportInPlaceMonitor;
  [(BKImportInPlaceMonitor *)&v4 dealloc];
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  notifyCopy = notify;
  updatedObjects = [notifyCopy updatedObjects];
  if ([updatedObjects count] && self->_notifyBlock)
  {
    assetID = self->_assetID;
    updatedObjects2 = [notifyCopy updatedObjects];
    firstObject = [updatedObjects2 firstObject];
    LODWORD(assetID) = [(NSString *)assetID isEqualToString:firstObject];

    if (assetID)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001C1CCC;
      block[3] = &unk_100A033C8;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
  }
}

@end