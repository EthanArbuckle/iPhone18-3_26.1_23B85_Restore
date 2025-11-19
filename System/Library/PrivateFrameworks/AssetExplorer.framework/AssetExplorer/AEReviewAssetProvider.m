@interface AEReviewAssetProvider
- (id)reviewAssetProviderRequestForDisplayAsset:(id)a3;
@end

@implementation AEReviewAssetProvider

- (id)reviewAssetProviderRequestForDisplayAsset:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [[AEPhotosAssetPackageGenerator alloc] initWithAsset:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end