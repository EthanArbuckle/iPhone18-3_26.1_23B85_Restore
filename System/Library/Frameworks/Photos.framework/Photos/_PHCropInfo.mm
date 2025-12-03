@interface _PHCropInfo
- (_PHCropInfo)initWithAsset:(id)asset cropScore:(double)score;
@end

@implementation _PHCropInfo

- (_PHCropInfo)initWithAsset:(id)asset cropScore:(double)score
{
  assetCopy = asset;
  v11.receiver = self;
  v11.super_class = _PHCropInfo;
  v8 = [(_PHCropInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_asset, asset);
    v9->_cropScore = score;
  }

  return v9;
}

@end