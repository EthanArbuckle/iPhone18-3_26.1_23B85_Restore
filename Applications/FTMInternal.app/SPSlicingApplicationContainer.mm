@interface SPSlicingApplicationContainer
+ (id)_coreTelephonyAppInfoContainer:(id)a3;
@end

@implementation SPSlicingApplicationContainer

+ (id)_coreTelephonyAppInfoContainer:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 appsInfo];

  v6 = [SPSlicingApplicationInfo _coreTelephonyAppInfoList:v5];
  [v4 setAppsInfo:v6];

  return v4;
}

@end