@interface BKSampleToPurchaseMonitor
- (BKSampleToPurchaseMonitor)initWithAssetID:(id)a3 notify:(id)a4;
- (void)dealloc;
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
@end

@implementation BKSampleToPurchaseMonitor

- (BKSampleToPurchaseMonitor)initWithAssetID:(id)a3 notify:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[BKLibraryManager defaultManager];
  v10 = [v9 persistentStoreCoordinator];
  v11 = +[BKLibraryManager predicateForAllStoreLibraryAssetsExcludingUnpurchasedSeriesAssets];
  v12 = [NSSet setWithObjects:@"state", @"dataSourceIdentifier", 0];
  v17.receiver = self;
  v17.super_class = BKSampleToPurchaseMonitor;
  v13 = [(BKSampleToPurchaseMonitor *)&v17 initWithContext:0 coordinator:v10 entityName:@"BKLibraryAsset" predicate:v11 mapProperty:@"assetID" propertiesOfInterest:v12 observer:self];

  if (v13)
  {
    objc_storeStrong(&v13->_assetID, a3);
    v14 = [v8 copy];
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

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v5 = a4;
  v6 = [v5 updatedObjects];
  if ([v6 count])
  {
    [v5 updatedObjects];
  }

  else
  {
    [v5 addedObjects];
  }
  v7 = ;

  v8 = [v7 firstObject];

  if ([v8 length] && self->_notifyBlock && -[NSString isEqualToString:](self->_assetID, "isEqualToString:", v8))
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