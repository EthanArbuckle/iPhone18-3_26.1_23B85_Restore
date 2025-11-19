@interface SFWebAppMediaCaptureStatusBarManager
@end

@implementation SFWebAppMediaCaptureStatusBarManager

void __54___SFWebAppMediaCaptureStatusBarManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(_SFWebAppMediaCaptureStatusBarManager);
  v1 = sharedManager_sharedInstance;
  sharedManager_sharedInstance = v0;
}

@end