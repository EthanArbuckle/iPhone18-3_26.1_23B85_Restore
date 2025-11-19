@interface BKUbiquitousDocumentsOngoingMigrationObserver
- (BKUbiquitousDocumentsOngoingMigrationObserver)initWithAssetIDs:(id)a3 notify:(id)a4;
- (void)notify;
@end

@implementation BKUbiquitousDocumentsOngoingMigrationObserver

- (BKUbiquitousDocumentsOngoingMigrationObserver)initWithAssetIDs:(id)a3 notify:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKUbiquitousDocumentsOngoingMigrationObserver;
  v9 = [(BKUbiquitousDocumentsOngoingMigrationObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetIDs, a3);
    v11 = objc_retainBlock(v8);
    notifyBlock = v10->_notifyBlock;
    v10->_notifyBlock = v11;
  }

  return v10;
}

- (void)notify
{
  v2 = [(BKUbiquitousDocumentsOngoingMigrationObserver *)self notifyBlock];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

@end