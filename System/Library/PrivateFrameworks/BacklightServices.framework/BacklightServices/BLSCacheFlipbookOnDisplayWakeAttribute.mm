@interface BLSCacheFlipbookOnDisplayWakeAttribute
+ (id)cacheFlipbook;
+ (id)cacheFlipbookForFBSScene:(id)scene;
+ (id)cacheFlipbookForFBSSceneIdentityToken:(id)token;
@end

@implementation BLSCacheFlipbookOnDisplayWakeAttribute

+ (id)cacheFlipbookForFBSScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[self alloc] initWithFBSScene:sceneCopy];

  return v5;
}

+ (id)cacheFlipbookForFBSSceneIdentityToken:(id)token
{
  tokenCopy = token;
  v5 = [[self alloc] initWithSceneIdentityToken:tokenCopy];

  return v5;
}

+ (id)cacheFlipbook
{
  v2 = objc_alloc_init(BLSGlobalCacheFlipbookOnDisplayWakeAttribute);

  return v2;
}

@end