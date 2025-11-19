@interface AMSStorage
+ (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4 domain:(id)a5;
+ (BOOL)_BOOLFromCFPreferencesForKey:(id)a3 defaultValue:(BOOL)a4 domain:(__CFString *)a5;
+ (BOOL)_BOOLFromDatabaseForKey:(id)a3 defaultValue:(BOOL)a4 domain:(id)a5 error:(id *)a6;
+ (BOOL)_setBoolWithDatabase:(BOOL)a3 forKey:(id)a4 domain:(id)a5 error:(id *)a6;
+ (BOOL)_setIntegerWithDatabase:(int64_t)a3 forKey:(id)a4 domain:(id)a5 error:(id *)a6;
+ (BOOL)_setValueWithDatabase:(id)a3 forKey:(id)a4 domain:(id)a5 error:(id *)a6;
+ (id)_allKeysWithDomain:(id)a3;
+ (id)_valueForKey:(id)a3 domain:(id)a4;
+ (id)_valueFromCFPreferencesForKey:(id)a3 domain:(__CFString *)a4;
+ (id)_valueFromDatabaseForKey:(id)a3 domain:(id)a4 error:(id *)a5;
+ (id)sharedStoreReviewMetricsForProcess:(id)a3;
+ (int64_t)_integerForKey:(id)a3 defaultValue:(int64_t)a4 domain:(id)a5;
+ (int64_t)_integerFromCFPreferencesForKey:(id)a3 defaultValue:(int64_t)a4 domain:(__CFString *)a5;
+ (int64_t)_integerFromDatabaseForKey:(id)a3 defaultValue:(int64_t)a4 domain:(id)a5 error:(id *)a6;
+ (void)_migrateBoolToDatabase:(BOOL)a3 forKey:(id)a4 domain:(id)a5;
+ (void)_migrateIntegerToDatabase:(int64_t)a3 forKey:(id)a4 domain:(id)a5;
+ (void)_migrateValueToDatabase:(id)a3 forKey:(id)a4 domain:(id)a5;
+ (void)_setBool:(BOOL)a3 forKey:(id)a4 domain:(id)a5;
+ (void)_setBoolWithCFPreferences:(BOOL)a3 forKey:(id)a4 domain:(__CFString *)a5;
+ (void)_setInteger:(int64_t)a3 forKey:(id)a4 domain:(id)a5;
+ (void)_setIntegerWithCFPreferences:(int64_t)a3 forKey:(id)a4 domain:(__CFString *)a5;
+ (void)_setValue:(id)a3 forKey:(id)a4 domain:(id)a5;
+ (void)_setValueWithCFPreferences:(id)a3 forKey:(id)a4 domain:(id)a5;
+ (void)setSharedStoreReviewMetrics:(id)a3 forProcess:(id)a4;
@end

@implementation AMSStorage

+ (id)sharedStoreReviewMetricsForProcess:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"AMSSharedStoreReviewMetrics", a3];
  v5 = [a1 _valueForKey:v4];

  return v5;
}

+ (void)setSharedStoreReviewMetrics:(id)a3 forProcess:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"%@-%@", @"AMSSharedStoreReviewMetrics", a4];
  [a1 _setValue:v7 forKey:v8 domain:@"com.apple.AppleMediaServices"];
}

+ (id)_allKeysWithDomain:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v4 = [[AMSStorageDatabase alloc] initWithDomain:v3];
    v14 = 0;
    v5 = [(AMSStorageDatabase *)v4 allKeysForDomain:v3 withError:&v14];
    v6 = v14;
    if (v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed fetching all keys for database with error: %{public}@", buf, 0x20u);
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

    v4 = [v6 OSLogObject];
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_192869000, &v4->super, OS_LOG_TYPE_DEFAULT, "AMSStorage database unsupported. The AMSStorage database feature flag is turned off.", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

+ (int64_t)_integerForKey:(id)a3 defaultValue:(int64_t)a4 domain:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13 = 0;
  v10 = [a1 _integerFromDatabaseForKey:v8 defaultValue:a4 domain:v9 error:&v13];
  if (v13)
  {
    v10 = [a1 _integerFromCFPreferencesForKey:v8 defaultValue:a4 domain:v9];
  }

  v11 = v10;

  return v11;
}

+ (int64_t)_integerFromDatabaseForKey:(id)a3 defaultValue:(int64_t)a4 domain:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v16 = [[AMSStorageDatabase alloc] initWithDomain:v10];
    v24 = 0;
    a4 = [(AMSStorageDatabase *)v16 integerForKey:v9 error:&v24];
    v17 = v24;
    v18 = v17;
    if (a6 && v17)
    {
      v19 = v17;
      *a6 = v18;
    }
  }

  else
  {
    v20 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v11, v12, v13, v14, v15, v23);
    v18 = v20;
    if (a6)
    {
      v21 = v20;
      *a6 = v18;
    }
  }

  return a4;
}

+ (int64_t)_integerFromCFPreferencesForKey:(id)a3 defaultValue:(int64_t)a4 domain:(__CFString *)a5
{
  v8 = a3;
  CFPreferencesAppSynchronize(a5);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v8, a5, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v10 = AppIntegerValue;
    [a1 _migrateIntegerToDatabase:AppIntegerValue forKey:v8 domain:a5];

    a4 = v10;
  }

  return a4;
}

+ (void)_setInteger:(int64_t)a3 forKey:(id)a4 domain:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = 0;
  if (![a1 _setIntegerWithDatabase:a3 forKey:v8 domain:v9 error:&v10] || v10)
  {
    [a1 _setIntegerWithCFPreferences:a3 forKey:v8 domain:v9];
  }
}

+ (BOOL)_setIntegerWithDatabase:(int64_t)a3 forKey:(id)a4 domain:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v16 = [[AMSStorageDatabase alloc] initWithDomain:v10];
    v25 = 0;
    v17 = [(AMSStorageDatabase *)v16 setInteger:a3 forKey:v9 error:&v25];
    v18 = v25;
    v19 = v18;
    if (a6 && v18)
    {
      v20 = v18;
      *a6 = v19;
    }
  }

  else
  {
    v21 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v11, v12, v13, v14, v15, v24);
    v19 = v21;
    if (a6)
    {
      v22 = v21;
      v17 = 0;
      *a6 = v19;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

+ (void)_setIntegerWithCFPreferences:(int64_t)a3 forKey:(id)a4 domain:(__CFString *)a5
{
  v7 = MEMORY[0x1E696AD98];
  v8 = a4;
  CFPreferencesSetAppValue(v8, [v7 numberWithInteger:a3], a5);

  CFPreferencesAppSynchronize(a5);
}

+ (void)_migrateIntegerToDatabase:(int64_t)a3 forKey:(id)a4 domain:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v10 = [[AMSStorageDatabase alloc] initWithDomain:v9];
    v12 = 0;
    [(AMSStorageDatabase *)v10 setInteger:a3 forKey:v8 error:&v12];
    v11 = v12;
    if (!v11)
    {
      [a1 _setValueWithCFPreferences:0 forKey:v8 domain:v9];
    }
  }
}

+ (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4 domain:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v13 = 0;
  v10 = [a1 _BOOLFromDatabaseForKey:v8 defaultValue:v6 domain:v9 error:&v13];
  if (v13)
  {
    v10 = [a1 _BOOLFromCFPreferencesForKey:v8 defaultValue:v6 domain:v9];
  }

  v11 = v10;

  return v11;
}

+ (BOOL)_BOOLFromDatabaseForKey:(id)a3 defaultValue:(BOOL)a4 domain:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v16 = [[AMSStorageDatabase alloc] initWithDomain:v10];
    v24 = 0;
    a4 = [(AMSStorageDatabase *)v16 BOOLeanForKey:v9 error:&v24];
    v17 = v24;
    v18 = v17;
    if (a6 && v17)
    {
      v19 = v17;
      *a6 = v18;
    }
  }

  else
  {
    v20 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v11, v12, v13, v14, v15, v23);
    v18 = v20;
    if (a6)
    {
      v21 = v20;
      *a6 = v18;
    }
  }

  return a4;
}

+ (BOOL)_BOOLFromCFPreferencesForKey:(id)a3 defaultValue:(BOOL)a4 domain:(__CFString *)a5
{
  LOBYTE(v6) = a4;
  v8 = a3;
  CFPreferencesAppSynchronize(a5);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v8, a5, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue != 0;
    [a1 _migrateBoolToDatabase:v6 forKey:v8 domain:a5];
  }

  return v6;
}

+ (void)_setBool:(BOOL)a3 forKey:(id)a4 domain:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = 0;
  if (![a1 _setBoolWithDatabase:v6 forKey:v8 domain:v9 error:&v10] || v10)
  {
    [a1 _setBoolWithCFPreferences:v6 forKey:v8 domain:v9];
  }
}

+ (BOOL)_setBoolWithDatabase:(BOOL)a3 forKey:(id)a4 domain:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v16 = [[AMSStorageDatabase alloc] initWithDomain:v10];
    v25 = 0;
    v17 = [(AMSStorageDatabase *)v16 setBoolean:v8 forKey:v9 error:&v25];
    v18 = v25;
    v19 = v18;
    if (a6 && v18)
    {
      v20 = v18;
      *a6 = v19;
    }
  }

  else
  {
    v21 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v11, v12, v13, v14, v15, v24);
    v19 = v21;
    if (a6)
    {
      v22 = v21;
      v17 = 0;
      *a6 = v19;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

+ (void)_setBoolWithCFPreferences:(BOOL)a3 forKey:(id)a4 domain:(__CFString *)a5
{
  v6 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(a4, *v6, a5);

  CFPreferencesAppSynchronize(a5);
}

+ (void)_migrateBoolToDatabase:(BOOL)a3 forKey:(id)a4 domain:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v10 = [[AMSStorageDatabase alloc] initWithDomain:v9];
    v12 = 0;
    [(AMSStorageDatabase *)v10 setBoolean:v6 forKey:v8 error:&v12];
    v11 = v12;
    if (!v11)
    {
      [a1 _setValueWithCFPreferences:0 forKey:v8 domain:v9];
    }
  }
}

+ (id)_valueForKey:(id)a3 domain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [a1 _valueFromDatabaseForKey:v6 domain:v7 error:&v11];
  if (v11)
  {
    v9 = [a1 _valueFromCFPreferencesForKey:v6 domain:v7];

    if (v9)
    {
      [a1 _migrateValueToDatabase:v9 forKey:v6 domain:v7];
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)_valueFromDatabaseForKey:(id)a3 domain:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v14 = [[AMSStorageDatabase alloc] initWithDomain:v8];
    v24 = 0;
    v15 = [(AMSStorageDatabase *)v14 valueForKey:v7 error:&v24];
    v16 = v24;
    v17 = v16;
    if (a5 && v16)
    {
      v18 = v16;
      *a5 = v17;
    }

    v19 = v15;
  }

  else
  {
    v20 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v9, v10, v11, v12, v13, v23);
    v17 = v20;
    if (a5)
    {
      v21 = v20;
      v19 = 0;
      *a5 = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

+ (id)_valueFromCFPreferencesForKey:(id)a3 domain:(__CFString *)a4
{
  v5 = a3;
  CFPreferencesAppSynchronize(a4);
  v6 = CFPreferencesCopyAppValue(v5, a4);

  return v6;
}

+ (void)_setValue:(id)a3 forKey:(id)a4 domain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  if (![a1 _setValueWithDatabase:v8 forKey:v9 domain:v10 error:&v11] || v11)
  {
    [a1 _setValueWithCFPreferences:v8 forKey:v9 domain:v10];
  }
}

+ (BOOL)_setValueWithDatabase:(id)a3 forKey:(id)a4 domain:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v17 = [[AMSStorageDatabase alloc] initWithDomain:v11];
    v18 = v17;
    if (v9)
    {
      v27 = 0;
      v19 = [(AMSStorageDatabase *)v17 setValue:v9 forKey:v10 error:&v27];
      v20 = v27;
    }

    else
    {
      v28 = 0;
      v19 = [(AMSStorageDatabase *)v17 deleteForKey:v10 error:&v28];
      v20 = v28;
    }

    v24 = v20;
    v22 = v24;
    if (a6 && v24)
    {
      v25 = v24;
      *a6 = v22;
    }
  }

  else
  {
    v21 = AMSErrorWithFormat(12, @"AMSStorage database unsupported.", @"The AMSStorage database feature flag is turned off.", v12, v13, v14, v15, v16, v27);
    v22 = v21;
    if (a6)
    {
      v23 = v21;
      v19 = 0;
      *a6 = v22;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

+ (void)_migrateValueToDatabase:(id)a3 forKey:(id)a4 domain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[AMSStorageDatabase isFeatureSupported])
  {
    v11 = [[AMSStorageDatabase alloc] initWithDomain:v10];
    v13 = 0;
    [(AMSStorageDatabase *)v11 setValue:v8 forKey:v9 error:&v13];
    v12 = v13;
    if (!v12)
    {
      [a1 _setValueWithCFPreferences:0 forKey:v9 domain:v10];
    }
  }
}

+ (void)_setValueWithCFPreferences:(id)a3 forKey:(id)a4 domain:(id)a5
{
  applicationID = a5;
  CFPreferencesSetAppValue(a4, a3, applicationID);
  CFPreferencesAppSynchronize(applicationID);
}

@end