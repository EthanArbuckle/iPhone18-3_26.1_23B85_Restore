@interface APDefaults
+ (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4 domain:(__CFString *)a5;
+ (id)_valueForKey:(id)a3 domain:(__CFString *)a4;
+ (int64_t)_integerForKey:(id)a3 defaultValue:(int64_t)a4 domain:(__CFString *)a5;
+ (void)_setBool:(BOOL)a3 forKey:(id)a4 domain:(__CFString *)a5;
+ (void)_setInteger:(int64_t)a3 forKey:(id)a4;
+ (void)_setValue:(id)a3 forKey:(id)a4 domain:(__CFString *)a5;
+ (void)setAPSDevelopmentEnvironment:(BOOL)a3;
@end

@implementation APDefaults

+ (void)setAPSDevelopmentEnvironment:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [a1 _setInteger:v3 forKey:@"notificationEnvironment"];
}

+ (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4 domain:(__CFString *)a5
{
  v7 = a3;
  CFPreferencesAppSynchronize(a5);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v7, a5, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return a4;
  }
}

+ (int64_t)_integerForKey:(id)a3 defaultValue:(int64_t)a4 domain:(__CFString *)a5
{
  v7 = a3;
  CFPreferencesAppSynchronize(a5);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v7, a5, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppIntegerValue;
  }

  else
  {
    return a4;
  }
}

+ (void)_setBool:(BOOL)a3 forKey:(id)a4 domain:(__CFString *)a5
{
  v6 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v6 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(a4, *v6, a5);

  CFPreferencesAppSynchronize(a5);
}

+ (void)_setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [a1 _setValue:v8 forKey:v7];
}

+ (void)_setValue:(id)a3 forKey:(id)a4 domain:(__CFString *)a5
{
  CFPreferencesSetAppValue(a4, a3, a5);

  CFPreferencesAppSynchronize(a5);
}

+ (id)_valueForKey:(id)a3 domain:(__CFString *)a4
{
  v5 = a3;
  CFPreferencesAppSynchronize(a4);
  v6 = CFPreferencesCopyAppValue(v5, a4);

  return v6;
}

@end