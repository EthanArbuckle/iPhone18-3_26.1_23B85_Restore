@interface PHAlertHandleConfiguration
+ (id)carPlayAlertActivationOptionsWithReason:(id)reason;
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

+ (id)carPlayAlertActivationOptionsWithReason:(id)reason
{
  reasonCopy = reason;
  v4 = objc_alloc_init(SBSRemoteAlertActivationOptions);
  [v4 setReason:reasonCopy];

  return v4;
}

@end