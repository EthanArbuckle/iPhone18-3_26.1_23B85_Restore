@interface BLS1HzFlipbookAttribute
+ (id)set1HzFlipbooForFBSSceneIdentityToken:(id)a3;
+ (id)set1HzFlipbook;
+ (id)set1HzFlipbookForFBSScene:(id)a3;
@end

@implementation BLS1HzFlipbookAttribute

+ (id)set1HzFlipbookForFBSScene:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFBSScene:v4];

  return v5;
}

+ (id)set1HzFlipbooForFBSSceneIdentityToken:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSceneIdentityToken:v4];

  return v5;
}

+ (id)set1HzFlipbook
{
  v2 = objc_alloc_init(BLSGlobal1HzFlipbookAttribute);

  return v2;
}

@end