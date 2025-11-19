@interface _PHCropInfo
- (_PHCropInfo)initWithAsset:(id)a3 cropScore:(double)a4;
@end

@implementation _PHCropInfo

- (_PHCropInfo)initWithAsset:(id)a3 cropScore:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _PHCropInfo;
  v8 = [(_PHCropInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_asset, a3);
    v9->_cropScore = a4;
  }

  return v9;
}

@end