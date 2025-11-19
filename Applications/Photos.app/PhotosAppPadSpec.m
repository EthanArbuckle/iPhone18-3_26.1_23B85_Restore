@interface PhotosAppPadSpec
- (id)importViewControllerSpec;
@end

@implementation PhotosAppPadSpec

- (id)importViewControllerSpec
{
  v2 = objc_alloc_init(PUPhotosGridViewControllerPadSpec);

  return v2;
}

@end