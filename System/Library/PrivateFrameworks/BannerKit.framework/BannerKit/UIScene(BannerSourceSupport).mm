@interface UIScene(BannerSourceSupport)
- (id)bn_presentableUniqueIdentifier;
@end

@implementation UIScene(BannerSourceSupport)

- (id)bn_presentableUniqueIdentifier
{
  _FBSScene = [self _FBSScene];
  bn_presentableUniqueIdentifier = [_FBSScene bn_presentableUniqueIdentifier];

  return bn_presentableUniqueIdentifier;
}

@end