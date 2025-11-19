@interface FBSScene(BannerSourceSupport)
- (id)bn_presentableUniqueIdentifier;
@end

@implementation FBSScene(BannerSourceSupport)

- (id)bn_presentableUniqueIdentifier
{
  v1 = [a1 identifier];
  v2 = BNUniqueIdentifierForSceneIdentifier(v1);

  return v2;
}

@end