@interface FBSScene(BannerSourceSupport)
- (id)bn_presentableUniqueIdentifier;
@end

@implementation FBSScene(BannerSourceSupport)

- (id)bn_presentableUniqueIdentifier
{
  identifier = [self identifier];
  v2 = BNUniqueIdentifierForSceneIdentifier(identifier);

  return v2;
}

@end