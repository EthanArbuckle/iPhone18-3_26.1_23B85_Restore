@interface MPModelObject
- (NSString)shortDescription;
- (double)preferredArtworkAspectRatio;
@end

@implementation MPModelObject

- (double)preferredArtworkAspectRatio
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      return 1.0;
    }
  }

  [v2 preferredArtworkAspectRatio];
  return result;
}

- (NSString)shortDescription
{
  v2 = sub_1004BBE24();

  return v2;
}

@end