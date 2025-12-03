@interface CLSAssetUploadObserver
- (BOOL)isUploaded;
- (CLSAssetUploadObserver)initWithAsset:(id)asset;
- (NSError)uploadError;
- (double)uploadProgress;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation CLSAssetUploadObserver

- (CLSAssetUploadObserver)initWithAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = CLSAssetUploadObserver;
  v6 = [(CLSAssetUploadObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
  }

  return v7;
}

- (BOOL)isUploaded
{
  v3 = objc_msgSend_asset(self, a2, v2);
  isUploaded = objc_msgSend_isUploaded(v3, v4, v5);

  return isUploaded;
}

- (double)uploadProgress
{
  v3 = objc_msgSend_asset(self, a2, v2);
  objc_msgSend_fractionUploaded(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (NSError)uploadError
{
  v3 = objc_msgSend_asset(self, a2, v2);
  v6 = objc_msgSend_uploadError(v3, v4, v5);

  return v6;
}

- (void)startObserving
{
  v5 = objc_msgSend_asset(self, a2, v2);
  objc_msgSend_addUploadObserver_(v5, v4, self);
}

- (void)stopObserving
{
  v5 = objc_msgSend_asset(self, a2, v2);
  objc_msgSend_removeUploadObserver_(v5, v4, self);
}

@end