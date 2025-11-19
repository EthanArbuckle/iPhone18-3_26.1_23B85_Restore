@interface PHASESoundAsset
- (PHASESoundAsset)init;
- (PHASESoundAsset)initWithData:(id)a3 uid:(id)a4 normalizationMode:(int64_t)a5 soundAssetInfo:()unique_ptr<Phase:(std:(id)a7 :(void *)a8 default_delete<Phase::Controller::SoundAssetInfo>>)a6 :Controller::SoundAssetInfo assetRegistry:weakStringPoolReference:;
- (PHASESoundAsset)initWithUID:(id)a3 assetRegistry:(id)a4;
- (PHASESoundAsset)initWithURL:(id)a3 uid:(id)a4 assetType:(int64_t)a5 normalizationMode:(int64_t)a6 soundAssetInfo:()unique_ptr<Phase:(std:(id)a8 :(void *)a9 default_delete<Phase::Controller::SoundAssetInfo>>)a7 :Controller::SoundAssetInfo assetRegistry:weakStringPoolReference:;
@end

@implementation PHASESoundAsset

- (PHASESoundAsset)init
{
  [(PHASESoundAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESoundAsset)initWithUID:(id)a3 assetRegistry:(id)a4
{
  [(PHASESoundAsset *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (PHASESoundAsset)initWithURL:(id)a3 uid:(id)a4 assetType:(int64_t)a5 normalizationMode:(int64_t)a6 soundAssetInfo:()unique_ptr<Phase:(std:(id)a8 :(void *)a9 default_delete<Phase::Controller::SoundAssetInfo>>)a7 :Controller::SoundAssetInfo assetRegistry:weakStringPoolReference:
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = PHASESoundAsset;
  v19 = [(PHASEAsset *)&v25 initWithUID:v17 assetRegistry:v18 weakStringPoolReference:a9];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_url, a3);
    data = v20->_data;
    v20->_data = 0;

    v20->_type = a5;
    v20->_normalizationMode = a6;
    var0 = a7.__ptr_->var0;
    a7.__ptr_->var0 = 0;
    ptr = v20->_soundAssetInfo.__ptr_;
    v20->_soundAssetInfo.__ptr_ = var0;
    if (ptr)
    {
      (*(ptr->var0 + 1))(ptr);
    }
  }

  return v20;
}

- (PHASESoundAsset)initWithData:(id)a3 uid:(id)a4 normalizationMode:(int64_t)a5 soundAssetInfo:()unique_ptr<Phase:(std:(id)a7 :(void *)a8 default_delete<Phase::Controller::SoundAssetInfo>>)a6 :Controller::SoundAssetInfo assetRegistry:weakStringPoolReference:
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = PHASESoundAsset;
  v18 = [(PHASEAsset *)&v24 initWithUID:v16 assetRegistry:v17 weakStringPoolReference:a8];
  v19 = v18;
  if (v18)
  {
    url = v18->_url;
    v18->_url = 0;

    objc_storeStrong(&v19->_data, a3);
    v19->_type = 0;
    v19->_normalizationMode = a5;
    var0 = a6.__ptr_->var0;
    a6.__ptr_->var0 = 0;
    ptr = v19->_soundAssetInfo.__ptr_;
    v19->_soundAssetInfo.__ptr_ = var0;
    if (ptr)
    {
      (*(ptr->var0 + 1))(ptr);
    }
  }

  return v19;
}

@end