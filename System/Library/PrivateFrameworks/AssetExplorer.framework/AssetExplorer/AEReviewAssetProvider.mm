@interface AEReviewAssetProvider
- (id)reviewAssetProviderRequestForDisplayAsset:(id)asset;
@end

@implementation AEReviewAssetProvider

- (id)reviewAssetProviderRequestForDisplayAsset:(id)asset
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = assetCopy;
    v5 = [[AEPhotosAssetPackageGenerator alloc] initWithAsset:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end