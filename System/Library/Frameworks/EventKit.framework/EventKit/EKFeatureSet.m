@interface EKFeatureSet
+ (BOOL)mustDisplaySplashScreenToUser;
+ (void)userAcknowledgedSplashScreen;
@end

@implementation EKFeatureSet

+ (BOOL)mustDisplaySplashScreenToUser
{
  v2 = +[EKPreferences shared];
  [v2 bypassSplashScreen];

  return 0;
}

+ (void)userAcknowledgedSplashScreen
{
  v2 = [a1 _currentSplashScreenVersion];
  v3 = +[EKPreferences shared];
  [v3 setLastConfirmedSplashScreenVersion:v2];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"EKFeatureSetDidChangeNotification", 0, 0, 1u);
}

@end