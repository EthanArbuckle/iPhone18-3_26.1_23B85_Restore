@interface BLS1HzFlipbookAttribute
+ (id)set1HzFlipbooForFBSSceneIdentityToken:(id)token;
+ (id)set1HzFlipbook;
+ (id)set1HzFlipbookForFBSScene:(id)scene;
@end

@implementation BLS1HzFlipbookAttribute

+ (id)set1HzFlipbookForFBSScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[self alloc] initWithFBSScene:sceneCopy];

  return v5;
}

+ (id)set1HzFlipbooForFBSSceneIdentityToken:(id)token
{
  tokenCopy = token;
  v5 = [[self alloc] initWithSceneIdentityToken:tokenCopy];

  return v5;
}

+ (id)set1HzFlipbook
{
  v2 = objc_alloc_init(BLSGlobal1HzFlipbookAttribute);

  return v2;
}

@end