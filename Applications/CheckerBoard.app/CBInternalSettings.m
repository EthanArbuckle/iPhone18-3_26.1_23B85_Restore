@interface CBInternalSettings
+ (id)overrideBootIntentLocale;
+ (id)overrideBootIntentPassword;
+ (id)overrideBootIntentReason;
+ (id)overrideBootIntentSSID;
+ (id)overrideOSEnvironment;
+ (id)persistedBootIntentReason;
+ (id)preferencesValueforKey:(__CFString *)a3 domain:(__CFString *)a4;
+ (id)remoteSetupClientAuthDirection;
+ (id)remoteSetupClientAuthType;
+ (void)setOverrideBootIntentLocale:(id)a3;
+ (void)setOverrideBootIntentPassword:(id)a3;
+ (void)setOverrideBootIntentReason:(id)a3;
+ (void)setOverrideBootIntentSSID:(id)a3;
+ (void)setOverrideOSEnvironment:(id)a3;
+ (void)setPersistedBootIntentReason:(id)a3;
+ (void)setPreferencesValue:(id)a3 key:(__CFString *)a4 domain:(__CFString *)a5;
+ (void)setRemoteSetupClientAuthDirection:(id)a3;
+ (void)setRemoteSetupClientAuthType:(id)a3;
@end

@implementation CBInternalSettings

+ (void)setPreferencesValue:(id)a3 key:(__CFString *)a4 domain:(__CFString *)a5
{
  CFPreferencesSetValue(a4, a3, a5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  CFPreferencesSynchronize(a5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

+ (id)preferencesValueforKey:(__CFString *)a3 domain:(__CFString *)a4
{
  CFPreferencesAppSynchronize(a4);
  v6 = CFPreferencesCopyAppValue(a3, a4);

  return v6;
}

+ (void)setRemoteSetupClientAuthDirection:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToNumber:&off_1000810F0])
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  [CBInternalSettings setPreferencesValue:v3 key:@"PreferClientSideAuth" domain:@"com.apple.CheckerBoard"];
}

+ (id)remoteSetupClientAuthDirection
{
  v2 = [CBInternalSettings preferencesValueforKey:@"PreferClientSideAuth" domain:@"com.apple.CheckerBoard"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1000810F0;
  }

  return v4;
}

+ (void)setRemoteSetupClientAuthType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToNumber:&off_1000810F0])
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  [CBInternalSettings setPreferencesValue:v3 key:@"PreferredClientSideAuthType" domain:@"com.apple.CheckerBoard"];
}

+ (id)remoteSetupClientAuthType
{
  v2 = [CBInternalSettings preferencesValueforKey:@"PreferredClientSideAuthType" domain:@"com.apple.CheckerBoard"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1000810F0;
  }

  return v4;
}

+ (void)setPersistedBootIntentReason:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToNumber:&off_1000810F0])
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  [CBInternalSettings setPreferencesValue:v3 key:@"persistedBootIntentReason" domain:@"com.apple.CheckerBoard"];
}

+ (id)persistedBootIntentReason
{
  v2 = [CBInternalSettings preferencesValueforKey:@"persistedBootIntentReason" domain:@"com.apple.CheckerBoard"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1000810F0;
  }

  return v4;
}

+ (void)setOverrideBootIntentReason:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToNumber:&off_1000810F0])
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  [CBInternalSettings setPreferencesValue:v3 key:@"overrideBootIntentReason" domain:@"com.apple.CheckerBoard"];
}

+ (id)overrideBootIntentReason
{
  v2 = [CBInternalSettings preferencesValueforKey:@"overrideBootIntentReason" domain:@"com.apple.CheckerBoard"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1000810F0;
  }

  return v4;
}

+ (void)setOverrideBootIntentLocale:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:&stru_10007EAB0])
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  [CBInternalSettings setPreferencesValue:v3 key:@"overrideBootIntentLocale" domain:@"com.apple.CheckerBoard"];
}

+ (id)overrideBootIntentLocale
{
  v2 = [CBInternalSettings preferencesValueforKey:@"overrideBootIntentLocale" domain:@"com.apple.CheckerBoard"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_10007EAB0;
  }

  return v4;
}

+ (void)setOverrideBootIntentSSID:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:&stru_10007EAB0])
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  [CBInternalSettings setPreferencesValue:v3 key:@"overrideBootIntentSSID" domain:@"com.apple.CheckerBoard"];
}

+ (id)overrideBootIntentSSID
{
  v2 = [CBInternalSettings preferencesValueforKey:@"overrideBootIntentSSID" domain:@"com.apple.CheckerBoard"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_10007EAB0;
  }

  return v4;
}

+ (void)setOverrideBootIntentPassword:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:&stru_10007EAB0])
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  [CBInternalSettings setPreferencesValue:v3 key:@"overrideBootIntentPassword" domain:@"com.apple.CheckerBoard"];
}

+ (id)overrideBootIntentPassword
{
  v2 = [CBInternalSettings preferencesValueforKey:@"overrideBootIntentPassword" domain:@"com.apple.CheckerBoard"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_10007EAB0;
  }

  return v4;
}

+ (void)setOverrideOSEnvironment:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:&stru_10007EAB0])
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  [CBInternalSettings setPreferencesValue:v3 key:@"overrideOSEnvironment" domain:@"com.apple.CheckerBoard"];
}

+ (id)overrideOSEnvironment
{
  v2 = [CBInternalSettings preferencesValueforKey:@"overrideOSEnvironment" domain:@"com.apple.CheckerBoard"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_10007EAB0;
  }

  return v4;
}

@end