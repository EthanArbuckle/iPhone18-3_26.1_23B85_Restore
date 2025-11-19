@interface SafariSettingsFeatureManager
+ (id)sharedFeatureManager;
@end

@implementation SafariSettingsFeatureManager

+ (id)sharedFeatureManager
{
  if (sharedFeatureManager_onceToken != -1)
  {
    +[SafariSettingsFeatureManager sharedFeatureManager];
  }

  v3 = sharedFeatureManager_sharedFeatureManagerObject;

  return v3;
}

void __52__SafariSettingsFeatureManager_sharedFeatureManager__block_invoke(id a1)
{
  sharedFeatureManager_sharedFeatureManagerObject = objc_alloc_init(SafariSettingsFeatureManager);

  _objc_release_x1();
}

@end