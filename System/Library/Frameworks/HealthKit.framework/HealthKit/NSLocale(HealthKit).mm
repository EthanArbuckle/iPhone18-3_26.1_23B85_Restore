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
    v3 = v2;
  }

  else
  {
    v3 = [a1 currentLocale];
  }

  v4 = v3;

  return v4;
}

+ (id)hk_testableAutoupdatingCurrentLocale
{
  os_unfair_lock_lock(&_LocaleLock);
  v2 = _TestLocale;
  os_unfair_lock_unlock(&_LocaleLock);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [a1 autoupdatingCurrentLocale];
  }

  v4 = v3;

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
    v3 = v2;
  }

  else
  {
    v3 = [a1 preferredLanguages];
  }

  v4 = v3;

  return v4;
}

+ (uint64_t)hk_isUSLocale
{
  v1 = [a1 hk_testableAutoupdatingCurrentLocale];
  v2 = [v1 hk_isUSLocale];

  return v2;
}

- (uint64_t)hk_isUSLocale
{
  v1 = [a1 localeIdentifier];
  v2 = [v1 containsString:@"US"];

  return v2;
}

- (uint64_t)hk_isEquivalent:()HealthKit
{
  v4 = a3;
  if (a1 == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [a1 languageCode];
      v7 = [v5 languageCode];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [v5 languageCode];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = [a1 languageCode];
        v12 = [v5 languageCode];
        v13 = [v11 isEqualToString:v12];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v6 = [a1 countryCode];
      v15 = [v5 countryCode];
      v8 = v15;
      if (v6 == v15)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      v16 = [v5 countryCode];
      if (v16)
      {
        v17 = v16;
        v18 = [a1 countryCode];
        v19 = [v5 countryCode];
        v20 = [v18 isEqualToString:v19];

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
  v1 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:a1];
  v2 = [v1 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"k") != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

@end