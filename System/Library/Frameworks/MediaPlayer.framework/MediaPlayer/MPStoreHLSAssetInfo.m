@interface MPStoreHLSAssetInfo
- (MPStoreHLSAssetInfo)initWithiTunesCloudStoreHLSAssetInfo:(id)a3;
@end

@implementation MPStoreHLSAssetInfo

- (MPStoreHLSAssetInfo)initWithiTunesCloudStoreHLSAssetInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPStoreHLSAssetInfo;
  v6 = [(MPStoreHLSAssetInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalInfo, a3);
  }

  return v7;
}

@end