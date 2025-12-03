@interface AMSStorage
+ (BOOL)_BOOLForKey:(id)key defaultValue:(BOOL)value domain:(id)domain;
+ (BOOL)_BOOLFromCFPreferencesForKey:(id)key defaultValue:(BOOL)value domain:(__CFString *)domain;
+ (BOOL)_BOOLFromDatabaseForKey:(id)key defaultValue:(BOOL)value domain:(id)domain error:(id *)error;
+ (BOOL)_setBoolWithDatabase:(BOOL)database forKey:(id)key domain:(id)domain error:(id *)error;
+ (BOOL)_setIntegerWithDatabase:(int64_t)database forKey:(id)key domain:(id)domain error:(id *)error;
+ (BOOL)_setValueWithDatabase:(id)database forKey:(id)key domain:(id)domain error:(id *)error;
+ (id)_allKeysWithDomain:(id)domain;
+ (id)_valueForKey:(id)key domain:(id)domain;
+ (id)_valueFromCFPreferencesForKey:(id)key domain:(__CFString *)domain;
+ (id)_valueFromDatabaseForKey:(id)key domain:(id)domain error:(id *)error;
+ (id)sharedStoreReviewMetricsForProcess:(id)process;
+ (int64_t)_integerForKey:(id)key defaultValue:(int64_t)value domain:(id)domain;
+ (int64_t)_integerFromCFPreferencesForKey:(id)key defaultValue:(int64_t)value domain:(__CFString *)domain;
+ (int64_t)_integerFromDatabaseForKey:(id)key defaultValue:(int64_t)value domain:(id)domain error:(id *)error;
+ (void)_migrateBoolToDatabase:(BOOL)database forKey:(id)key domain:(id)domain;
+ (void)_migrateIntegerToDatabase:(int64_t)database forKey:(id)key domain:(id)domain;
+ (void)_migrateValueToDatabase:(id)database forKey:(id)key domain:(id)domain;
+ (void)_setBool:(BOOL)bool forKey:(id)key domain:(id)domain;
+ (void)_setBoolWithCFPreferences:(BOOL)preferences forKey:(id)key domain:(__CFString *)domain;
+ (void)_setInteger:(int64_t)integer forKey:(id)key domain:(id)domain;
+ (void)_setIntegerWithCFPreferences:(int64_t)preferences forKey:(id)key domain:(__CFString *)domain;
+ (void)_setValue:(id)value forKey:(id)key domain:(id)domain;
+ (void)_setValueWithCFPreferences:(id)preferences forKey:(id)key domain:(id)domain;
+ (void)setSharedStoreReviewMetrics:(id)metrics forProcess:(id)process;
@end

@implementation AMSStorage

+ (id)sharedStoreReviewMetricsForProcess:(id)process
{
  process = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"AMSSharedStoreReviewMetrics", process];
  v5 = [self _valueForKey:process];

  return v5;
}

+ (void)setSharedStoreReviewMetrics:(id)metrics forProcess:(id)process
{
  v6 = MEMORY[0x1E696AEC0];
  metricsCopy = metrics;
  process = [v6 stringWithFormat:@"%@-%@", @"AMSSharedStoreReviewMetrics", process];
  [self _setValue:metricsCopy forKey:process domain:@"com.apple.AppleMediaServices"];
}

+ (id)_allKeysWithDomain:(id)domain
{
  v21 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    oSLogObject2 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v14 = 0;
    v5 = [(AMSStorageDatabase *)oSLogObject2 allKeysForDomain:domainCopy withError:&v14];
    v6 = v14;
    if (v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = AMSLogKey();
        v11 = AMSLogableError(v6);
        *buf = 138543874;
        v16 = v9;
        v17 = 2114;
        v18 = v10;
        v19 = 2114;
        v20 = v11;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed fetching all keys for database with error: %{public}@", buf, 0x20u);
      }

      v12 = 0;
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v6 OSLogObject];
    if (os_log_type_enabled(&oSLogObject2->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_192869000, &oSLogObject2->super, OS_LOG_TYPE_DEFAULT, "AMSStorage database unsupported. The AMSStorage database feature flag is turned off.", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

+ (int64_t)_integerForKey:(id)key defaultValue:(int64_t)value domain:(id)domain
{
  keyCopy = key;
  domainCopy = domain;
  v13 = 0;
  v10 = [self _integerFromDatabaseForKey:keyCopy defaultValue:value domain:domainCopy error:&v13];
  if (v13)
  {
    v10 = [self _integerFromCFPreferencesForKey:keyCopy defaultValue:value domain:domainCopy];
  }

  v11 = v10;

  return v11;
}

+ (int64_t)_integerFromDatabaseForKey:(id)key defaultValue:(int64_t)value domain:(id)domain error:(id *)error
{
  keyCopy = key;
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v16 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v24 = 0;
    value = [(AMSStorageDatabase *)v16 integerForKey:keyCopy error:&v24];
    v17 = v24;
    v18 = v17;
    if (error && v17)
    {
      v19 = v17;
      *error = v18;
    }
  }

  else
  {
    v20 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v11, v12, v13, v14, v15, v23);
    v18 = v20;
    if (error)
    {
      v21 = v20;
      *error = v18;
    }
  }

  return value;
}

+ (int64_t)_integerFromCFPreferencesForKey:(id)key defaultValue:(int64_t)value domain:(__CFString *)domain
{
  keyCopy = key;
  CFPreferencesAppSynchronize(domain);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(keyCopy, domain, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v10 = AppIntegerValue;
    [self _migrateIntegerToDatabase:AppIntegerValue forKey:keyCopy domain:domain];

    value = v10;
  }

  return value;
}

+ (void)_setInteger:(int64_t)integer forKey:(id)key domain:(id)domain
{
  keyCopy = key;
  domainCopy = domain;
  v10 = 0;
  if (![self _setIntegerWithDatabase:integer forKey:keyCopy domain:domainCopy error:&v10] || v10)
  {
    [self _setIntegerWithCFPreferences:integer forKey:keyCopy domain:domainCopy];
  }
}

+ (BOOL)_setIntegerWithDatabase:(int64_t)database forKey:(id)key domain:(id)domain error:(id *)error
{
  keyCopy = key;
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v16 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v25 = 0;
    v17 = [(AMSStorageDatabase *)v16 setInteger:database forKey:keyCopy error:&v25];
    v18 = v25;
    v19 = v18;
    if (error && v18)
    {
      v20 = v18;
      *error = v19;
    }
  }

  else
  {
    v21 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v11, v12, v13, v14, v15, v24);
    v19 = v21;
    if (error)
    {
      v22 = v21;
      v17 = 0;
      *error = v19;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

+ (void)_setIntegerWithCFPreferences:(int64_t)preferences forKey:(id)key domain:(__CFString *)domain
{
  v7 = MEMORY[0x1E696AD98];
  keyCopy = key;
  CFPreferencesSetAppValue(keyCopy, [v7 numberWithInteger:preferences], domain);

  CFPreferencesAppSynchronize(domain);
}

+ (void)_migrateIntegerToDatabase:(int64_t)database forKey:(id)key domain:(id)domain
{
  keyCopy = key;
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v10 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v12 = 0;
    [(AMSStorageDatabase *)v10 setInteger:database forKey:keyCopy error:&v12];
    v11 = v12;
    if (!v11)
    {
      [self _setValueWithCFPreferences:0 forKey:keyCopy domain:domainCopy];
    }
  }
}

+ (BOOL)_BOOLForKey:(id)key defaultValue:(BOOL)value domain:(id)domain
{
  valueCopy = value;
  keyCopy = key;
  domainCopy = domain;
  v13 = 0;
  v10 = [self _BOOLFromDatabaseForKey:keyCopy defaultValue:valueCopy domain:domainCopy error:&v13];
  if (v13)
  {
    v10 = [self _BOOLFromCFPreferencesForKey:keyCopy defaultValue:valueCopy domain:domainCopy];
  }

  v11 = v10;

  return v11;
}

+ (BOOL)_BOOLFromDatabaseForKey:(id)key defaultValue:(BOOL)value domain:(id)domain error:(id *)error
{
  keyCopy = key;
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v16 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v24 = 0;
    value = [(AMSStorageDatabase *)v16 BOOLeanForKey:keyCopy error:&v24];
    v17 = v24;
    v18 = v17;
    if (error && v17)
    {
      v19 = v17;
      *error = v18;
    }
  }

  else
  {
    v20 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v11, v12, v13, v14, v15, v23);
    v18 = v20;
    if (error)
    {
      v21 = v20;
      *error = v18;
    }
  }

  return value;
}

+ (BOOL)_BOOLFromCFPreferencesForKey:(id)key defaultValue:(BOOL)value domain:(__CFString *)domain
{
  LOBYTE(v6) = value;
  keyCopy = key;
  CFPreferencesAppSynchronize(domain);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(keyCopy, domain, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue != 0;
    [self _migrateBoolToDatabase:v6 forKey:keyCopy domain:domain];
  }

  return v6;
}

+ (void)_setBool:(BOOL)bool forKey:(id)key domain:(id)domain
{
  boolCopy = bool;
  keyCopy = key;
  domainCopy = domain;
  v10 = 0;
  if (![self _setBoolWithDatabase:boolCopy forKey:keyCopy domain:domainCopy error:&v10] || v10)
  {
    [self _setBoolWithCFPreferences:boolCopy forKey:keyCopy domain:domainCopy];
  }
}

+ (BOOL)_setBoolWithDatabase:(BOOL)database forKey:(id)key domain:(id)domain error:(id *)error
{
  databaseCopy = database;
  keyCopy = key;
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v16 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v25 = 0;
    v17 = [(AMSStorageDatabase *)v16 setBoolean:databaseCopy forKey:keyCopy error:&v25];
    v18 = v25;
    v19 = v18;
    if (error && v18)
    {
      v20 = v18;
      *error = v19;
    }
  }

  else
  {
    v21 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v11, v12, v13, v14, v15, v24);
    v19 = v21;
    if (error)
    {
      v22 = v21;
      v17 = 0;
      *error = v19;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

+ (void)_setBoolWithCFPreferences:(BOOL)preferences forKey:(id)key domain:(__CFString *)domain
{
  v6 = MEMORY[0x1E695E4D0];
  if (!preferences)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(key, *v6, domain);

  CFPreferencesAppSynchronize(domain);
}

+ (void)_migrateBoolToDatabase:(BOOL)database forKey:(id)key domain:(id)domain
{
  databaseCopy = database;
  keyCopy = key;
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v10 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v12 = 0;
    [(AMSStorageDatabase *)v10 setBoolean:databaseCopy forKey:keyCopy error:&v12];
    v11 = v12;
    if (!v11)
    {
      [self _setValueWithCFPreferences:0 forKey:keyCopy domain:domainCopy];
    }
  }
}

+ (id)_valueForKey:(id)key domain:(id)domain
{
  keyCopy = key;
  domainCopy = domain;
  v11 = 0;
  v8 = [self _valueFromDatabaseForKey:keyCopy domain:domainCopy error:&v11];
  if (v11)
  {
    v9 = [self _valueFromCFPreferencesForKey:keyCopy domain:domainCopy];

    if (v9)
    {
      [self _migrateValueToDatabase:v9 forKey:keyCopy domain:domainCopy];
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)_valueFromDatabaseForKey:(id)key domain:(id)domain error:(id *)error
{
  keyCopy = key;
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v14 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v24 = 0;
    v15 = [(AMSStorageDatabase *)v14 valueForKey:keyCopy error:&v24];
    v16 = v24;
    v17 = v16;
    if (error && v16)
    {
      v18 = v16;
      *error = v17;
    }

    v19 = v15;
  }

  else
  {
    v20 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v9, v10, v11, v12, v13, v23);
    v17 = v20;
    if (error)
    {
      v21 = v20;
      v19 = 0;
      *error = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

+ (id)_valueFromCFPreferencesForKey:(id)key domain:(__CFString *)domain
{
  keyCopy = key;
  CFPreferencesAppSynchronize(domain);
  v6 = CFPreferencesCopyAppValue(keyCopy, domain);

  return v6;
}

+ (void)_setValue:(id)value forKey:(id)key domain:(id)domain
{
  valueCopy = value;
  keyCopy = key;
  domainCopy = domain;
  v11 = 0;
  if (![self _setValueWithDatabase:valueCopy forKey:keyCopy domain:domainCopy error:&v11] || v11)
  {
    [self _setValueWithCFPreferences:valueCopy forKey:keyCopy domain:domainCopy];
  }
}

+ (BOOL)_setValueWithDatabase:(id)database forKey:(id)key domain:(id)domain error:(id *)error
{
  databaseCopy = database;
  keyCopy = key;
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v17 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v18 = v17;
    if (databaseCopy)
    {
      v27 = 0;
      v19 = [(AMSStorageDatabase *)v17 setValue:databaseCopy forKey:keyCopy error:&v27];
      v20 = v27;
    }

    else
    {
      v28 = 0;
      v19 = [(AMSStorageDatabase *)v17 deleteForKey:keyCopy error:&v28];
      v20 = v28;
    }

    v24 = v20;
    v22 = v24;
    if (error && v24)
    {
      v25 = v24;
      *error = v22;
    }
  }

  else
  {
    v21 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v12, v13, v14, v15, v16, v27);
    v22 = v21;
    if (error)
    {
      v23 = v21;
      v19 = 0;
      *error = v22;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

+ (void)_migrateValueToDatabase:(id)database forKey:(id)key domain:(id)domain
{
  databaseCopy = database;
  keyCopy = key;
  domainCopy = domain;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v11 = [[AMSStorageDatabase alloc] initWithDomain:domainCopy];
    v13 = 0;
    [(AMSStorageDatabase *)v11 setValue:databaseCopy forKey:keyCopy error:&v13];
    v12 = v13;
    if (!v12)
    {
      [self _setValueWithCFPreferences:0 forKey:keyCopy domain:domainCopy];
    }
  }
}

+ (void)_setValueWithCFPreferences:(id)preferences forKey:(id)key domain:(id)domain
{
  applicationID = domain;
  CFPreferencesSetAppValue(key, preferences, applicationID);
  CFPreferencesAppSynchronize(applicationID);
}

@end