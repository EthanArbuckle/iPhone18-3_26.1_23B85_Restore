@interface DTODeviceInfoProvider
- (BOOL)hasBiometricEnrollmentsForCurrentUser;
- (BOOL)hasCompletedSetup;
- (BOOL)hasPasscodeSetForCurrentUser;
- (id)serialNumber;
@end

@implementation DTODeviceInfoProvider

- (BOOL)hasCompletedSetup
{
  v2 = +[LACSetUpStateProvider sharedInstance];
  v3 = [v2 hasCompletedSetup];

  return v3;
}

- (BOOL)hasPasscodeSetForCurrentUser
{
  v3 = geteuid();

  return [(DTODeviceInfoProvider *)self hasPasscodeSetForUser:v3];
}

- (BOOL)hasBiometricEnrollmentsForCurrentUser
{
  v3 = geteuid();

  return [(DTODeviceInfoProvider *)self hasBiometricEnrollmentsForUser:v3];
}

- (id)serialNumber
{
  v2 = +[LACMobileGestalt serialNumber];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1000571B0;
  }

  v5 = v4;

  return v4;
}

@end