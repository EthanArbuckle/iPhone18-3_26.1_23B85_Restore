@interface VSFeatureManager
+ (id)sharedFeatureManager;
- (BOOL)featureIsEnabled:(id)enabled;
- (VSFeatureManager)init;
- (void)disableFeature:(id)feature;
- (void)enableFeature:(id)feature;
- (void)resetFeature:(id)feature;
@end

@implementation VSFeatureManager

+ (id)sharedFeatureManager
{
  if (sharedFeatureManager___vs_lazy_init_predicate != -1)
  {
    +[VSFeatureManager sharedFeatureManager];
  }

  v3 = sharedFeatureManager___vs_lazy_init_variable;

  return v3;
}

uint64_t __40__VSFeatureManager_sharedFeatureManager__block_invoke()
{
  sharedFeatureManager___vs_lazy_init_variable = objc_alloc_init(VSFeatureManager);

  return MEMORY[0x2821F96F8]();
}

- (VSFeatureManager)init
{
  v6.receiver = self;
  v6.super_class = VSFeatureManager;
  v2 = [(VSFeatureManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSPreferences);
    preferences = v2->_preferences;
    v2->_preferences = v3;
  }

  return v2;
}

- (BOOL)featureIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v8 = 0;
  preferences = [(VSFeatureManager *)self preferences];
  v6 = [preferences featureIsEnabled:enabledCopy present:&v8];

  if ((v8 & 1) == 0)
  {
    [enabledCopy UTF8String];
    v6 = _os_feature_enabled_impl();
  }

  return v6;
}

- (void)enableFeature:(id)feature
{
  featureCopy = feature;
  preferences = [(VSFeatureManager *)self preferences];
  [preferences enableFeature:featureCopy];
}

- (void)disableFeature:(id)feature
{
  featureCopy = feature;
  preferences = [(VSFeatureManager *)self preferences];
  [preferences disableFeature:featureCopy];
}

- (void)resetFeature:(id)feature
{
  featureCopy = feature;
  preferences = [(VSFeatureManager *)self preferences];
  [preferences clearFeature:featureCopy];
}

@end