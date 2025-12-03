@interface MPStoreFileAssetFairPlayInfo
- (MPStoreFileAssetFairPlayInfo)initWithResponseSinfDictionary:(id)dictionary;
- (MPStoreFileAssetFairPlayInfo)initWithiTunesCloudStoreFileAssetFairPlayInfo:(id)info;
@end

@implementation MPStoreFileAssetFairPlayInfo

- (MPStoreFileAssetFairPlayInfo)initWithiTunesCloudStoreFileAssetFairPlayInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = MPStoreFileAssetFairPlayInfo;
  v5 = [(MPStoreFileAssetFairPlayInfo *)&v9 init];
  if (v5)
  {
    v6 = [infoCopy copy];
    internalInfo = v5->_internalInfo;
    v5->_internalInfo = v6;
  }

  return v5;
}

- (MPStoreFileAssetFairPlayInfo)initWithResponseSinfDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E69E45F0];
  dictionaryCopy = dictionary;
  v6 = [[v4 alloc] initWithResponseSinfDictionary:dictionaryCopy];

  v7 = [(MPStoreFileAssetFairPlayInfo *)self initWithiTunesCloudStoreFileAssetFairPlayInfo:v6];
  return v7;
}

@end