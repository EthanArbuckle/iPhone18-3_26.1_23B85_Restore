@interface MapsCarPlayServicesShim
+ (void)openMapsCarPlayApplicationSuspended;
+ (void)openMapsCarPlayApplicationWithCompletion:(id)a3;
@end

@implementation MapsCarPlayServicesShim

+ (void)openMapsCarPlayApplicationSuspended
{
  v5 = FBSOpenApplicationOptionKeyActivateSuspended;
  v6 = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [FBSOpenApplicationOptions optionsWithDictionary:v2];

  v4 = +[FBSOpenApplicationService dashboardService];
  [v4 openApplication:@"com.apple.Maps" withOptions:v3 completion:&stru_10162F040];
}

+ (void)openMapsCarPlayApplicationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "openMapsCarPlayApplicationWithCompletion", buf, 2u);
  }

  v5 = +[FBSOpenApplicationService dashboardService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100934F88;
  v7[3] = &unk_10163C108;
  v8 = v3;
  v6 = v3;
  [v5 openApplication:@"com.apple.Maps" withOptions:0 completion:v7];
}

@end