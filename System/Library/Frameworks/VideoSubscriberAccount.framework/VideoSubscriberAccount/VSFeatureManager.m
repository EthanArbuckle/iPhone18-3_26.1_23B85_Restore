@interface VSFeatureManager
+ (id)sharedFeatureManager;
- (BOOL)featureIsEnabled:(id)a3;
- (VSFeatureManager)init;
- (void)disableFeature:(id)a3;
- (void)enableFeature:(id)a3;
- (void)resetFeature:(id)a3;
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

- (BOOL)featureIsEnabled:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(VSFeatureManager *)self preferences];
  v6 = [v5 featureIsEnabled:v4 present:&v8];

  if ((v8 & 1) == 0)
  {
    [v4 UTF8String];
    v6 = _os_feature_enabled_impl();
  }

  return v6;
}

- (void)enableFeature:(id)a3
{
  v4 = a3;
  v5 = [(VSFeatureManager *)self preferences];
  [v5 enableFeature:v4];
}

- (void)disableFeature:(id)a3
{
  v4 = a3;
  v5 = [(VSFeatureManager *)self preferences];
  [v5 disableFeature:v4];
}

- (void)resetFeature:(id)a3
{
  v4 = a3;
  v5 = [(VSFeatureManager *)self preferences];
  [v5 clearFeature:v4];
}

@end