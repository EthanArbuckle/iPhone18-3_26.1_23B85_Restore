@interface PHASESoundAsset
- (PHASESoundAsset)init;
- (PHASESoundAsset)initWithData:(id)data uid:(id)uid normalizationMode:(int64_t)mode soundAssetInfo:()unique_ptr<Phase:(std:(id)phase :(void *)a8 default_delete<Phase::Controller::SoundAssetInfo>>)a6 :Controller::SoundAssetInfo assetRegistry:weakStringPoolReference:;
- (PHASESoundAsset)initWithUID:(id)d assetRegistry:(id)registry;
- (PHASESoundAsset)initWithURL:(id)l uid:(id)uid assetType:(int64_t)type normalizationMode:(int64_t)mode soundAssetInfo:()unique_ptr<Phase:(std:(id)phase :(void *)a9 default_delete<Phase::Controller::SoundAssetInfo>>)a7 :Controller::SoundAssetInfo assetRegistry:weakStringPoolReference:;
@end

@implementation PHASESoundAsset

- (PHASESoundAsset)init
{
  [(PHASESoundAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESoundAsset)initWithUID:(id)d assetRegistry:(id)registry
{
  [(PHASESoundAsset *)self doesNotRecognizeSelector:a2, registry];

  return 0;
}

- (PHASESoundAsset)initWithURL:(id)l uid:(id)uid assetType:(int64_t)type normalizationMode:(int64_t)mode soundAssetInfo:()unique_ptr<Phase:(std:(id)phase :(void *)a9 default_delete<Phase::Controller::SoundAssetInfo>>)a7 :Controller::SoundAssetInfo assetRegistry:weakStringPoolReference:
{
  lCopy = l;
  uidCopy = uid;
  phaseCopy = phase;
  v25.receiver = self;
  v25.super_class = PHASESoundAsset;
  v19 = [(PHASEAsset *)&v25 initWithUID:uidCopy assetRegistry:phaseCopy weakStringPoolReference:a9];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_url, l);
    data = v20->_data;
    v20->_data = 0;

    v20->_type = type;
    v20->_normalizationMode = mode;
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

- (PHASESoundAsset)initWithData:(id)data uid:(id)uid normalizationMode:(int64_t)mode soundAssetInfo:()unique_ptr<Phase:(std:(id)phase :(void *)a8 default_delete<Phase::Controller::SoundAssetInfo>>)a6 :Controller::SoundAssetInfo assetRegistry:weakStringPoolReference:
{
  dataCopy = data;
  uidCopy = uid;
  phaseCopy = phase;
  v24.receiver = self;
  v24.super_class = PHASESoundAsset;
  v18 = [(PHASEAsset *)&v24 initWithUID:uidCopy assetRegistry:phaseCopy weakStringPoolReference:a8];
  v19 = v18;
  if (v18)
  {
    url = v18->_url;
    v18->_url = 0;

    objc_storeStrong(&v19->_data, data);
    v19->_type = 0;
    v19->_normalizationMode = mode;
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