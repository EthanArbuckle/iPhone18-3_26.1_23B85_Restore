@interface CRLWelcomeController
+ (BOOL)didShowForAnyVersion:(int64_t)version;
+ (BOOL)shouldShow:(int64_t)show forVersion:(unsigned int)version userDefaultsVersion:(unsigned int *)defaultsVersion;
+ (id)keyForWelcomeType:(int64_t)type;
+ (int64_t)firstLaunchActionForVersion:(unsigned int)version userDefaultsVersion:(unsigned int *)defaultsVersion;
+ (void)deleteUserDefaultsVersion:(int64_t)version;
+ (void)setUserDefaultsVersion:(unsigned int)version forType:(int64_t)type;
@end

@implementation CRLWelcomeController

+ (id)keyForWelcomeType:(int64_t)type
{
  if (type)
  {
    return 0;
  }

  else
  {
    return @"CRLWelcomeVersion";
  }
}

+ (BOOL)didShowForAnyVersion:(int64_t)version
{
  v4 = [self keyForWelcomeType:version];
  userDefaults = [self userDefaults];
  v6 = [userDefaults objectForKey:v4];

  return v6 != 0;
}

+ (int64_t)firstLaunchActionForVersion:(unsigned int)version userDefaultsVersion:(unsigned int *)defaultsVersion
{
  v8 = 0;
  v6 = [self shouldShow:0 forVersion:*&version userDefaultsVersion:&v8];
  result = 0;
  if (v6)
  {
    if (HIWORD(v8) < HIWORD(version))
    {
      result = 1;
    }

    else
    {
      result = 2;
    }
  }

  if (defaultsVersion)
  {
    *defaultsVersion = v8;
  }

  return result;
}

+ (BOOL)shouldShow:(int64_t)show forVersion:(unsigned int)version userDefaultsVersion:(unsigned int *)defaultsVersion
{
  v8 = [self keyForWelcomeType:show];
  userDefaults = [self userDefaults];
  v10 = [userDefaults objectForKey:v8];
  unsignedIntValue = [v10 unsignedIntValue];

  if (defaultsVersion)
  {
    *defaultsVersion = unsignedIntValue;
  }

  v12 = unsignedIntValue < version;
  if (unsignedIntValue < version && version == 65539 && unsignedIntValue == 65538)
  {
    v12 = +[_TtC8Freeform19CRLFeatureFlagGroup isGenerativePlaygroundEnabled];
  }

  return v12;
}

+ (void)setUserDefaultsVersion:(unsigned int)version forType:(int64_t)type
{
  v4 = *&version;
  v8 = [self keyForWelcomeType:type];
  userDefaults = [self userDefaults];
  v7 = [NSNumber numberWithUnsignedInt:v4];
  [userDefaults setObject:v7 forKey:v8];
}

+ (void)deleteUserDefaultsVersion:(int64_t)version
{
  v5 = [self keyForWelcomeType:version];
  userDefaults = [self userDefaults];
  [userDefaults removeObjectForKey:v5];
}

@end