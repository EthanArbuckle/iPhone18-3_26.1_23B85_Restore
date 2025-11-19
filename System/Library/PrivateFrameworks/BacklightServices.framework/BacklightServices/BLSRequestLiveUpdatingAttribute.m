@interface BLSRequestLiveUpdatingAttribute
+ (id)requestLiveUpdatingForFBSScene:(id)a3;
+ (id)requestLiveUpdatingForFBSSceneIdentityToken:(id)a3;
@end

@implementation BLSRequestLiveUpdatingAttribute

+ (id)requestLiveUpdatingForFBSScene:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFBSScene:v4];

  return v5;
}

+ (id)requestLiveUpdatingForFBSSceneIdentityToken:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSceneIdentityToken:v4];

  return v5;
}

@end