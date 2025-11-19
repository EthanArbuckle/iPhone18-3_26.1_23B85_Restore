@interface LSDAppProtectionAccessManager
@end

@implementation LSDAppProtectionAccessManager

void __48___LSDAppProtectionAccessManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_LSDAppProtectionAccessManager);
  v1 = +[_LSDAppProtectionAccessManager sharedInstance]::sharedInstance;
  +[_LSDAppProtectionAccessManager sharedInstance]::sharedInstance = v0;
}

@end