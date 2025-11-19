@interface MPStoreFileAssetFairPlayInfo
- (MPStoreFileAssetFairPlayInfo)initWithResponseSinfDictionary:(id)a3;
- (MPStoreFileAssetFairPlayInfo)initWithiTunesCloudStoreFileAssetFairPlayInfo:(id)a3;
@end

@implementation MPStoreFileAssetFairPlayInfo

- (MPStoreFileAssetFairPlayInfo)initWithiTunesCloudStoreFileAssetFairPlayInfo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPStoreFileAssetFairPlayInfo;
  v5 = [(MPStoreFileAssetFairPlayInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    internalInfo = v5->_internalInfo;
    v5->_internalInfo = v6;
  }

  return v5;
}

- (MPStoreFileAssetFairPlayInfo)initWithResponseSinfDictionary:(id)a3
{
  v4 = MEMORY[0x1E69E45F0];
  v5 = a3;
  v6 = [[v4 alloc] initWithResponseSinfDictionary:v5];

  v7 = [(MPStoreFileAssetFairPlayInfo *)self initWithiTunesCloudStoreFileAssetFairPlayInfo:v6];
  return v7;
}

@end