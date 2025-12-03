@interface BNBannerSourceApplicationSceneSpecification
+ (id)specificationAffectingAppLifecycleIfInternal:(BOOL)internal;
- (id)baseSceneComponentClassDictionary;
@end

@implementation BNBannerSourceApplicationSceneSpecification

+ (id)specificationAffectingAppLifecycleIfInternal:(BOOL)internal
{
  if (!internal)
  {
    self = BNBannerSourceApplicationNonAffectingAppLifecycleSceneSpecification;
  }

  specification = [self specification];

  return specification;
}

- (id)baseSceneComponentClassDictionary
{
  v9.receiver = self;
  v9.super_class = BNBannerSourceApplicationSceneSpecification;
  baseSceneComponentClassDictionary = [(UIApplicationSceneSpecification *)&v9 baseSceneComponentClassDictionary];
  v3 = baseSceneComponentClassDictionary;
  if (baseSceneComponentClassDictionary)
  {
    v4 = [baseSceneComponentClassDictionary mutableCopy];
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