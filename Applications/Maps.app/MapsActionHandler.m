@interface MapsActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation MapsActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%@Handler", objc_opt_class()];
  v8 = NSClassFromString(v7);
  if (v8 != objc_opt_class())
  {
    v9 = [v5 analyticsLaunchActionType];
    v10 = +[GEOAPSharedStateData sharedData];
    [v10 setMapLaunchAction:v9];

    [GEOAPPortal captureUserAction:2090 target:0 value:0];
    v11 = sub_100005610();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "MapsActionHandler : perform Action %@ with class %@", buf, 0x16u);
    }

    [(objc_class *)v8 performSelector:"performAction:inContext:" withObject:v5 withObject:v6];
  }
}

@end