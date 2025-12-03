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
  _currentSplashScreenVersion = [self _currentSplashScreenVersion];
  v3 = +[EKPreferences shared];
  [v3 setLastConfirmedSplashScreenVersion:_currentSplashScreenVersion];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"EKFeatureSetDidChangeNotification", 0, 0, 1u);
}

@end