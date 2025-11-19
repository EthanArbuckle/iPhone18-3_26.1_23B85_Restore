@interface BKLibraryDataSourceIdentifierAndStateObserver
- (BKLibraryDataSourceIdentifierAndStateObserver)initWithAssetID:(id)a3 notify:(id)a4;
- (void)notify;
@end

@implementation BKLibraryDataSourceIdentifierAndStateObserver

- (BKLibraryDataSourceIdentifierAndStateObserver)initWithAssetID:(id)a3 notify:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKLibraryDataSourceIdentifierAndStateObserver;
  v9 = [(BKLibraryDataSourceIdentifierAndStateObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetID, a3);
    v11 = objc_retainBlock(v8);
    notifyBlock = v10->_notifyBlock;
    v10->_notifyBlock = v11;
  }

  return v10;
}

- (void)notify
{
  v3 = [(BKLibraryDataSourceIdentifierAndStateObserver *)self notifyBlock];
  if (v3)
  {
    v4 = v3;
    (v3)[2](v3, self);
    v3 = v4;
  }
}

@end