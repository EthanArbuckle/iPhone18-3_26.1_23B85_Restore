@interface CLSAssetDownloadObserver
- (BOOL)isDownloaded;
- (CLSAssetDownloadObserver)initWithAsset:(id)asset;
- (NSError)downloadError;
- (double)downloadProgress;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation CLSAssetDownloadObserver

- (CLSAssetDownloadObserver)initWithAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = CLSAssetDownloadObserver;
  v6 = [(CLSAssetDownloadObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
  }

  return v7;
}

- (BOOL)isDownloaded
{
  v3 = objc_msgSend_asset(self, a2, v2);
  isDownloaded = objc_msgSend_isDownloaded(v3, v4, v5);

  return isDownloaded;
}

- (double)downloadProgress
{
  v3 = objc_msgSend_asset(self, a2, v2);
  objc_msgSend_fractionDownloaded(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (NSError)downloadError
{
  v3 = objc_msgSend_asset(self, a2, v2);
  v6 = objc_msgSend_downloadError(v3, v4, v5);

  return v6;
}

- (void)startObserving
{
  v5 = objc_msgSend_asset(self, a2, v2);
  objc_msgSend_addDownloadObserver_(v5, v4, self);
}

- (void)stopObserving
{
  v5 = objc_msgSend_asset(self, a2, v2);
  objc_msgSend_removeDownloadObserver_(v5, v4, self);
}

@end