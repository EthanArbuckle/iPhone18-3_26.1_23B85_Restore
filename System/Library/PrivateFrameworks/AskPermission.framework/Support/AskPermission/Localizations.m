@interface Localizations
+ (BOOL)_useROWKeyForCountryCode:(id)a3;
+ (id)_countryCodes;
+ (id)_stringWithKey:(id)a3 localeIdentifier:(id)a4;
+ (id)stringWithKey:(id)a3;
+ (id)stringWithKey:(id)a3 bag:(id)a4;
+ (id)stringWithKey:(id)a3 countryCode:(id)a4 localeIdentifier:(id)a5;
@end

@implementation Localizations

+ (id)stringWithKey:(id)a3
{
  v4 = a3;
  v5 = +[AMSBag sharedBag];
  v6 = [a1 stringWithKey:v4 bag:v5];

  return v6;
}

+ (id)stringWithKey:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 countryCode];
  v27 = 0;
  v9 = [v8 valueWithError:&v27];
  v10 = v27;

  if (v10)
  {
    v11 = +[APLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v29 = v13;
      v30 = 2114;
      v31 = v10;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive country code bag key. Error: %{public}@", buf, 0x16u);
    }
  }

  v15 = [v7 localeIdentifier];
  v26 = v10;
  v16 = [v15 valueWithError:&v26];
  v17 = v26;

  if (v17)
  {
    v18 = +[APLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[APLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      *buf = 138543618;
      v29 = v20;
      v30 = 2114;
      v31 = v17;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive language bag key. Error: %{public}@", buf, 0x16u);
    }

    v22 = +[NSLocale currentLocale];
    v23 = [v22 localeIdentifier];

    v16 = v23;
  }

  v24 = [a1 stringWithKey:v6 countryCode:v9 localeIdentifier:v16];

  return v24;
}

+ (id)stringWithKey:(id)a3 countryCode:(id)a4 localeIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 stringByAppendingString:@"_ROW"];
  v12 = [a1 _useROWKeyForCountryCode:v10];

  if (v12)
  {
    v13 = [a1 _stringWithKey:v11 localeIdentifier:v9];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      if (![v13 isEqualToString:v11])
      {
LABEL_7:
        if (![v15 isEqualToString:v8])
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 _stringWithKey:v8 localeIdentifier:v9];

  if (v15)
  {
    goto LABEL_7;
  }

LABEL_8:
  v16 = +[APLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[APLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 138543362;
    v21 = objc_opt_class();
    v18 = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive localized string", &v20, 0xCu);
  }

LABEL_13:

  return v15;
}

+ (id)_countryCodes
{
  if (qword_100063E28 != -1)
  {
    sub_100038C0C();
  }

  v3 = qword_100063E30;

  return v3;
}

+ (id)_stringWithKey:(id)a3 localeIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizations];
  v23 = v6;
  v9 = [NSArray arrayWithObjects:&v23 count:1];
  v10 = [NSBundle preferredLocalizationsFromArray:v8 forPreferences:v9];
  v11 = [v10 firstObject];

  if (!v11)
  {
    v17 = +[APLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v13 = [v17 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543362;
      v22 = objc_opt_class();
      v19 = v22;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive language from bundle", &v21, 0xCu);
    }

    v18 = 0;
    goto LABEL_14;
  }

  v12 = [v7 localizedStringForKey:v5 value:0 table:@"Localizable" localization:v11];
  v13 = v12;
  if (!v12 || [v12 isEqualToString:v5])
  {
    v14 = +[APLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543362;
      v22 = objc_opt_class();
      v16 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find localized string in bundle.", &v21, 0xCu);
    }

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:v5 value:&stru_100057158 table:@"Localizable"];
LABEL_14:

    v13 = v18;
  }

  return v13;
}

+ (BOOL)_useROWKeyForCountryCode:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 _countryCodes];
    v6 = [v4 uppercaseString];

    v7 = [v5 containsObject:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

@end