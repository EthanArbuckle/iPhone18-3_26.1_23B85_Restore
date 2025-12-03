@interface CBInternalSettings
+ (id)overrideBootIntentLocale;
+ (id)overrideBootIntentPassword;
+ (id)overrideBootIntentReason;
+ (id)overrideBootIntentSSID;
+ (id)overrideOSEnvironment;
+ (id)persistedBootIntentReason;
+ (id)preferencesValueforKey:(__CFString *)key domain:(__CFString *)domain;
+ (id)remoteSetupClientAuthDirection;
+ (id)remoteSetupClientAuthType;
+ (void)setOverrideBootIntentLocale:(id)locale;
+ (void)setOverrideBootIntentPassword:(id)password;
+ (void)setOverrideBootIntentReason:(id)reason;
+ (void)setOverrideBootIntentSSID:(id)d;
+ (void)setOverrideOSEnvironment:(id)environment;
+ (void)setPersistedBootIntentReason:(id)reason;
+ (void)setPreferencesValue:(id)value key:(__CFString *)key domain:(__CFString *)domain;
+ (void)setRemoteSetupClientAuthDirection:(id)direction;
+ (void)setRemoteSetupClientAuthType:(id)type;
@end

@implementation CBInternalSettings

+ (void)setPreferencesValue:(id)value key:(__CFString *)key domain:(__CFString *)domain
{
  CFPreferencesSetValue(key, value, domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  CFPreferencesSynchronize(domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

+ (id)preferencesValueforKey:(__CFString *)key domain:(__CFString *)domain
{
  CFPreferencesAppSynchronize(domain);
  v6 = CFPreferencesCopyAppValue(key, domain);

  return v6;
}

+ (void)setRemoteSetupClientAuthDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToNumber:&off_1000810F0])
  {
    v3 = 0;
  }

  else
  {
    v3 = directionCopy;
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

+ (void)setRemoteSetupClientAuthType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToNumber:&off_1000810F0])
  {
    v3 = 0;
  }

  else
  {
    v3 = typeCopy;
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

+ (void)setPersistedBootIntentReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToNumber:&off_1000810F0])
  {
    v3 = 0;
  }

  else
  {
    v3 = reasonCopy;
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

+ (void)setOverrideBootIntentReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToNumber:&off_1000810F0])
  {
    v3 = 0;
  }

  else
  {
    v3 = reasonCopy;
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

+ (void)setOverrideBootIntentLocale:(id)locale
{
  localeCopy = locale;
  if ([localeCopy isEqualToString:&stru_10007EAB0])
  {
    v3 = 0;
  }

  else
  {
    v3 = localeCopy;
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

+ (void)setOverrideBootIntentSSID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:&stru_10007EAB0])
  {
    v3 = 0;
  }

  else
  {
    v3 = dCopy;
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

+ (void)setOverrideBootIntentPassword:(id)password
{
  passwordCopy = password;
  if ([passwordCopy isEqualToString:&stru_10007EAB0])
  {
    v3 = 0;
  }

  else
  {
    v3 = passwordCopy;
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

+ (void)setOverrideOSEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([environmentCopy isEqualToString:&stru_10007EAB0])
  {
    v3 = 0;
  }

  else
  {
    v3 = environmentCopy;
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