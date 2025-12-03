@interface BKLibraryDataSourceIdentifierAndStateObserver
- (BKLibraryDataSourceIdentifierAndStateObserver)initWithAssetID:(id)d notify:(id)notify;
- (void)notify;
@end

@implementation BKLibraryDataSourceIdentifierAndStateObserver

- (BKLibraryDataSourceIdentifierAndStateObserver)initWithAssetID:(id)d notify:(id)notify
{
  dCopy = d;
  notifyCopy = notify;
  v14.receiver = self;
  v14.super_class = BKLibraryDataSourceIdentifierAndStateObserver;
  v9 = [(BKLibraryDataSourceIdentifierAndStateObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetID, d);
    v11 = objc_retainBlock(notifyCopy);
    notifyBlock = v10->_notifyBlock;
    v10->_notifyBlock = v11;
  }

  return v10;
}

- (void)notify
{
  notifyBlock = [(BKLibraryDataSourceIdentifierAndStateObserver *)self notifyBlock];
  if (notifyBlock)
  {
    v4 = notifyBlock;
    (notifyBlock)[2](notifyBlock, self);
    notifyBlock = v4;
  }
}

@end