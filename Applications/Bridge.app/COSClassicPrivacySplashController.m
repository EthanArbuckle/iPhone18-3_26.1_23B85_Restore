@interface COSClassicPrivacySplashController
+ (BOOL)controllerNeedsToRun;
@end

@implementation COSClassicPrivacySplashController

+ (BOOL)controllerNeedsToRun
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 sf_isChinaRegionCellularDevice];

  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = @"Skip for non-GT";
    if (v3)
    {
      v8 = @"Show for GT";
    }

    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ ~ Privacy Splash: %@ Device", &v10, 0x16u);
  }

  return v3;
}

@end