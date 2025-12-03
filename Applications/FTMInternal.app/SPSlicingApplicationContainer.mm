@interface SPSlicingApplicationContainer
+ (id)_coreTelephonyAppInfoContainer:(id)container;
@end

@implementation SPSlicingApplicationContainer

+ (id)_coreTelephonyAppInfoContainer:(id)container
{
  containerCopy = container;
  v4 = objc_opt_new();
  appsInfo = [containerCopy appsInfo];

  v6 = [SPSlicingApplicationInfo _coreTelephonyAppInfoList:appsInfo];
  [v4 setAppsInfo:v6];

  return v4;
}

@end