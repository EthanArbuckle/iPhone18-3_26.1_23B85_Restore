@interface PHAlertHandleConfiguration
+ (id)carPlayAlertActivationOptionsWithReason:(id)a3;
+ (id)carPlayAlertConfiguration;
@end

@implementation PHAlertHandleConfiguration

+ (id)carPlayAlertConfiguration
{
  v2 = [SBSRemoteAlertConfiguration alloc];
  v3 = [v2 initWithServiceName:TUBundleIdentifierInCallServiceApplication viewControllerClassName:@"PHCarPlayInCallViewController"];
  [v3 setForCarPlay:1];
  [v3 setImpersonatedCarPlayAppIdentifier:TUBundleIdentifierMobilePhoneApplication];

  return v3;
}

+ (id)carPlayAlertActivationOptionsWithReason:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SBSRemoteAlertActivationOptions);
  [v4 setReason:v3];

  return v4;
}

@end