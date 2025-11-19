@interface HMAccessoryCollectionSettingItemClassManager
@end

@implementation HMAccessoryCollectionSettingItemClassManager

uint64_t __62___HMAccessoryCollectionSettingItemClassManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(_HMAccessoryCollectionSettingItemClassManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end