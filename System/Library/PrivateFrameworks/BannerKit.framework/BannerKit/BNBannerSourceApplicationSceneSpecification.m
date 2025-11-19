@interface BNBannerSourceApplicationSceneSpecification
+ (id)specificationAffectingAppLifecycleIfInternal:(BOOL)a3;
- (id)baseSceneComponentClassDictionary;
@end

@implementation BNBannerSourceApplicationSceneSpecification

+ (id)specificationAffectingAppLifecycleIfInternal:(BOOL)a3
{
  if (!a3)
  {
    a1 = BNBannerSourceApplicationNonAffectingAppLifecycleSceneSpecification;
  }

  v3 = [a1 specification];

  return v3;
}

- (id)baseSceneComponentClassDictionary
{
  v9.receiver = self;
  v9.super_class = BNBannerSourceApplicationSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v9 baseSceneComponentClassDictionary];
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