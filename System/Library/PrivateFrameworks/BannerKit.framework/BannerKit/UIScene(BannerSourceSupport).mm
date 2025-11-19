@interface UIScene(BannerSourceSupport)
- (id)bn_presentableUniqueIdentifier;
@end

@implementation UIScene(BannerSourceSupport)

- (id)bn_presentableUniqueIdentifier
{
  v1 = [a1 _FBSScene];
  v2 = [v1 bn_presentableUniqueIdentifier];

  return v2;
}

@end