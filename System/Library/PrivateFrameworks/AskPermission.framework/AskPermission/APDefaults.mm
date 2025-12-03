@interface APDefaults
+ (BOOL)_BOOLForKey:(id)key defaultValue:(BOOL)value domain:(__CFString *)domain;
+ (id)_valueForKey:(id)key domain:(__CFString *)domain;
+ (int64_t)_integerForKey:(id)key defaultValue:(int64_t)value domain:(__CFString *)domain;
+ (void)_setBool:(BOOL)bool forKey:(id)key domain:(__CFString *)domain;
+ (void)_setInteger:(int64_t)integer forKey:(id)key;
+ (void)_setValue:(id)value forKey:(id)key domain:(__CFString *)domain;
+ (void)setAPSDevelopmentEnvironment:(BOOL)environment;
@end

@implementation APDefaults

+ (void)setAPSDevelopmentEnvironment:(BOOL)environment
{
  if (environment)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [self _setInteger:v3 forKey:@"notificationEnvironment"];
}

+ (BOOL)_BOOLForKey:(id)key defaultValue:(BOOL)value domain:(__CFString *)domain
{
  keyCopy = key;
  CFPreferencesAppSynchronize(domain);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(keyCopy, domain, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return value;
  }
}

+ (int64_t)_integerForKey:(id)key defaultValue:(int64_t)value domain:(__CFString *)domain
{
  keyCopy = key;
  CFPreferencesAppSynchronize(domain);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(keyCopy, domain, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppIntegerValue;
  }

  else
  {
    return value;
  }
}

+ (void)_setBool:(BOOL)bool forKey:(id)key domain:(__CFString *)domain
{
  v6 = MEMORY[0x277CBED28];
  if (!bool)
  {
    v6 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(key, *v6, domain);

  CFPreferencesAppSynchronize(domain);
}

+ (void)_setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [self _setValue:v8 forKey:keyCopy];
}

+ (void)_setValue:(id)value forKey:(id)key domain:(__CFString *)domain
{
  CFPreferencesSetAppValue(key, value, domain);

  CFPreferencesAppSynchronize(domain);
}

+ (id)_valueForKey:(id)key domain:(__CFString *)domain
{
  keyCopy = key;
  CFPreferencesAppSynchronize(domain);
  v6 = CFPreferencesCopyAppValue(keyCopy, domain);

  return v6;
}

@end