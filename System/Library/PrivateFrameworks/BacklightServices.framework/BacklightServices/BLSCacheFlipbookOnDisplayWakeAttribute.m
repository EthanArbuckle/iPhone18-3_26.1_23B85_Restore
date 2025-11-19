@interface BLSCacheFlipbookOnDisplayWakeAttribute
+ (id)cacheFlipbook;
+ (id)cacheFlipbookForFBSScene:(id)a3;
+ (id)cacheFlipbookForFBSSceneIdentityToken:(id)a3;
@end

@implementation BLSCacheFlipbookOnDisplayWakeAttribute

+ (id)cacheFlipbookForFBSScene:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFBSScene:v4];

  return v5;
}

+ (id)cacheFlipbookForFBSSceneIdentityToken:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSceneIdentityToken:v4];

  return v5;
}

+ (id)cacheFlipbook
{
  v2 = objc_alloc_init(BLSGlobalCacheFlipbookOnDisplayWakeAttribute);

  return v2;
}

@end