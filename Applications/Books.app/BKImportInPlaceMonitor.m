@interface BKImportInPlaceMonitor
- (BKImportInPlaceMonitor)initWithAssetID:(id)a3 notify:(id)a4;
- (void)dealloc;
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
@end

@implementation BKImportInPlaceMonitor

- (BKImportInPlaceMonitor)initWithAssetID:(id)a3 notify:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[BKLibraryManager defaultManager];
  v10 = [v9 persistentStoreCoordinator];
  v11 = +[BKLibraryManager defaultManager];
  v12 = [v11 predicateForLocalLibraryAssets];
  v13 = [NSSet setWithObjects:@"state", @"dataSourceIdentifier", 0];
  v18.receiver = self;
  v18.super_class = BKImportInPlaceMonitor;
  v14 = [(BKImportInPlaceMonitor *)&v18 initWithContext:0 coordinator:v10 entityName:@"BKLibraryAsset" predicate:v12 mapProperty:@"assetID" propertiesOfInterest:v13 observer:self];

  if (v14)
  {
    objc_storeStrong(&v14->_assetID, a3);
    v15 = [v8 copy];
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

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v5 = a4;
  v6 = [v5 updatedObjects];
  if ([v6 count] && self->_notifyBlock)
  {
    assetID = self->_assetID;
    v8 = [v5 updatedObjects];
    v9 = [v8 firstObject];
    LODWORD(assetID) = [(NSString *)assetID isEqualToString:v9];

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