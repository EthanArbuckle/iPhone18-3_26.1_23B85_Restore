@interface BLSRequestUnrestrictedFramerateAttribute
+ (id)requestUnrestrictedFramerate;
+ (id)requestUnrestrictedFramerateForFBSScene:(id)a3;
+ (id)requestUnrestrictedFramerateForFBSSceneIdentityToken:(id)a3;
@end

@implementation BLSRequestUnrestrictedFramerateAttribute

+ (id)requestUnrestrictedFramerateForFBSScene:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFBSScene:v4];

  return v5;
}

+ (id)requestUnrestrictedFramerateForFBSSceneIdentityToken:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSceneIdentityToken:v4];

  return v5;
}

+ (id)requestUnrestrictedFramerate
{
  v2 = objc_alloc_init(BLSRequestGlobalUnrestrictedFramerateAttribute);

  return v2;
}

@end