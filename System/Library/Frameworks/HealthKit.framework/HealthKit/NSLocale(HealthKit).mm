@interface NSLocale(HealthKit)
+ (id)hk_testableAutoupdatingCurrentLocale;
+ (id)hk_testableCurrentLocale;
+ (id)hk_testablePreferredLanguages;
+ (uint64_t)hk_isUSLocale;
+ (void)hk_setTestLocale:()HealthKit;
+ (void)hk_setTestPreferredLanguages:()HealthKit;
- (BOOL)hk_isIn24HourTime;
- (uint64_t)hk_isEquivalent:()HealthKit;
- (uint64_t)hk_isUSLocale;
@end

@implementation NSLocale(HealthKit)

+ (void)hk_setTestLocale:()HealthKit
{
  v3 = a3;
  os_unfair_lock_lock(&_LocaleLock);
  v4 = _TestLocale;
  _TestLocale = v3;

  os_unfair_lock_unlock(&_LocaleLock);
}

+ (id)hk_testableCurrentLocale
{
  os_unfair_lock_lock(&_LocaleLock);
  v2 = _TestLocale;
  os_unfair_lock_unlock(&_LocaleLock);
  if (v2)
  {
    currentLocale = v2;
  }

  else
  {
    currentLocale = [self currentLocale];
  }

  v4 = currentLocale;

  return v4;
}

+ (id)hk_testableAutoupdatingCurrentLocale
{
  os_unfair_lock_lock(&_LocaleLock);
  v2 = _TestLocale;
  os_unfair_lock_unlock(&_LocaleLock);
  if (v2)
  {
    autoupdatingCurrentLocale = v2;
  }

  else
  {
    autoupdatingCurrentLocale = [self autoupdatingCurrentLocale];
  }

  v4 = autoupdatingCurrentLocale;

  return v4;
}

+ (void)hk_setTestPreferredLanguages:()HealthKit
{
  v3 = a3;
  os_unfair_lock_lock(&_LocaleLock);
  v4 = [v3 copy];

  v5 = _TestPreferredLanguages;
  _TestPreferredLanguages = v4;

  os_unfair_lock_unlock(&_LocaleLock);
}

+ (id)hk_testablePreferredLanguages
{
  os_unfair_lock_lock(&_LocaleLock);
  v2 = _TestPreferredLanguages;
  os_unfair_lock_unlock(&_LocaleLock);
  if (v2)
  {
    preferredLanguages = v2;
  }

  else
  {
    preferredLanguages = [self preferredLanguages];
  }

  v4 = preferredLanguages;

  return v4;
}

+ (uint64_t)hk_isUSLocale
{
  hk_testableAutoupdatingCurrentLocale = [self hk_testableAutoupdatingCurrentLocale];
  hk_isUSLocale = [hk_testableAutoupdatingCurrentLocale hk_isUSLocale];

  return hk_isUSLocale;
}

- (uint64_t)hk_isUSLocale
{
  localeIdentifier = [self localeIdentifier];
  v2 = [localeIdentifier containsString:@"US"];

  return v2;
}

- (uint64_t)hk_isEquivalent:()HealthKit
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      languageCode = [self languageCode];
      languageCode2 = [v5 languageCode];
      v8 = languageCode2;
      if (languageCode == languageCode2)
      {
      }

      else
      {
        languageCode3 = [v5 languageCode];
        if (!languageCode3)
        {
          goto LABEL_14;
        }

        v10 = languageCode3;
        languageCode4 = [self languageCode];
        languageCode5 = [v5 languageCode];
        v13 = [languageCode4 isEqualToString:languageCode5];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      languageCode = [self countryCode];
      countryCode = [v5 countryCode];
      v8 = countryCode;
      if (languageCode == countryCode)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      countryCode2 = [v5 countryCode];
      if (countryCode2)
      {
        v17 = countryCode2;
        countryCode3 = [self countryCode];
        countryCode4 = [v5 countryCode];
        v20 = [countryCode3 isEqualToString:countryCode4];

        if (v20)
        {
          goto LABEL_17;
        }

LABEL_15:
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (BOOL)hk_isIn24HourTime
{
  v1 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:self];
  v2 = [v1 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"k") != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

@end