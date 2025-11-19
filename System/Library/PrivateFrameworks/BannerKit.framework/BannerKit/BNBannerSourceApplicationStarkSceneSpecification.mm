@interface BNBannerSourceApplicationStarkSceneSpecification
- (id)baseSceneComponentClassDictionary;
@end

@implementation BNBannerSourceApplicationStarkSceneSpecification

- (id)baseSceneComponentClassDictionary
{
  v9.receiver = self;
  v9.super_class = BNBannerSourceApplicationStarkSceneSpecification;
  v2 = [(UIApplicationStarkSceneSpecification *)&v9 baseSceneComponentClassDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableCopy];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = v4;
  v6 = objc_opt_class();
  v7 = BNBundleIdentifier();
  [v5 setObject:v6 forKey:v7];

  return v5;
}

@end