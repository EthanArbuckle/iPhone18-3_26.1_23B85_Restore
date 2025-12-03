@interface MPStoreHLSAssetInfo
- (MPStoreHLSAssetInfo)initWithiTunesCloudStoreHLSAssetInfo:(id)info;
@end

@implementation MPStoreHLSAssetInfo

- (MPStoreHLSAssetInfo)initWithiTunesCloudStoreHLSAssetInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = MPStoreHLSAssetInfo;
  v6 = [(MPStoreHLSAssetInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalInfo, info);
  }

  return v7;
}

@end