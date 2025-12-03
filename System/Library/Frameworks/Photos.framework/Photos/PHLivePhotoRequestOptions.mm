@interface PHLivePhotoRequestOptions
- (PHLivePhotoRequestOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PHLivePhotoRequestOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDeliveryMode:{-[PHLivePhotoRequestOptions deliveryMode](self, "deliveryMode")}];
  [v4 setNetworkAccessAllowed:{-[PHLivePhotoRequestOptions isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  progressHandler = [(PHLivePhotoRequestOptions *)self progressHandler];
  [v4 setProgressHandler:progressHandler];

  [v4 setDownloadIntent:{-[PHLivePhotoRequestOptions downloadIntent](self, "downloadIntent")}];
  [v4 setDownloadPriority:{-[PHLivePhotoRequestOptions downloadPriority](self, "downloadPriority")}];
  [v4 setIncludeImage:{-[PHLivePhotoRequestOptions includeImage](self, "includeImage")}];
  [v4 setPreferHDR:{-[PHLivePhotoRequestOptions preferHDR](self, "preferHDR")}];
  return v4;
}

- (PHLivePhotoRequestOptions)init
{
  v3.receiver = self;
  v3.super_class = PHLivePhotoRequestOptions;
  result = [(PHLivePhotoRequestOptions *)&v3 init];
  if (result)
  {
    result->_includeImage = 1;
  }

  return result;
}

@end