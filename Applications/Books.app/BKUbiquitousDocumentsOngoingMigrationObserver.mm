@interface BKUbiquitousDocumentsOngoingMigrationObserver
- (BKUbiquitousDocumentsOngoingMigrationObserver)initWithAssetIDs:(id)ds notify:(id)notify;
- (void)notify;
@end

@implementation BKUbiquitousDocumentsOngoingMigrationObserver

- (BKUbiquitousDocumentsOngoingMigrationObserver)initWithAssetIDs:(id)ds notify:(id)notify
{
  dsCopy = ds;
  notifyCopy = notify;
  v14.receiver = self;
  v14.super_class = BKUbiquitousDocumentsOngoingMigrationObserver;
  v9 = [(BKUbiquitousDocumentsOngoingMigrationObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetIDs, ds);
    v11 = objc_retainBlock(notifyCopy);
    notifyBlock = v10->_notifyBlock;
    v10->_notifyBlock = v11;
  }

  return v10;
}

- (void)notify
{
  notifyBlock = [(BKUbiquitousDocumentsOngoingMigrationObserver *)self notifyBlock];
  if (notifyBlock)
  {
    v3 = notifyBlock;
    notifyBlock[2]();
    notifyBlock = v3;
  }
}

@end