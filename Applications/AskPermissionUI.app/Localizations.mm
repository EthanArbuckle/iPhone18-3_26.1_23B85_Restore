@interface Localizations
+ (BOOL)_useROWKeyForCountryCode:(id)code;
+ (id)_countryCodes;
+ (id)_stringWithKey:(id)key localeIdentifier:(id)identifier;
+ (id)stringWithKey:(id)key;
+ (id)stringWithKey:(id)key bag:(id)bag;
+ (id)stringWithKey:(id)key countryCode:(id)code localeIdentifier:(id)identifier;
@end

@implementation Localizations

+ (id)stringWithKey:(id)key
{
  keyCopy = key;
  v5 = +[AMSBag sharedBag];
  v6 = [self stringWithKey:keyCopy bag:v5];

  return v6;
}

+ (id)stringWithKey:(id)key bag:(id)bag
{
  keyCopy = key;
  bagCopy = bag;
  countryCode = [bagCopy countryCode];
  v27 = 0;
  v9 = [countryCode valueWithError:&v27];
  v10 = v27;

  if (v10)
  {
    v11 = +[APLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v29 = v13;
      v30 = 2114;
      v31 = v10;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive country code bag key. Error: %{public}@", buf, 0x16u);
    }
  }

  localeIdentifier = [bagCopy localeIdentifier];
  v26 = v10;
  v16 = [localeIdentifier valueWithError:&v26];
  v17 = v26;

  if (v17)
  {
    v18 = +[APLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      *buf = 138543618;
      v29 = v20;
      v30 = 2114;
      v31 = v17;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive language bag key. Error: %{public}@", buf, 0x16u);
    }

    v22 = +[NSLocale currentLocale];
    localeIdentifier2 = [v22 localeIdentifier];

    v16 = localeIdentifier2;
  }

  v24 = [self stringWithKey:keyCopy countryCode:v9 localeIdentifier:v16];

  return v24;
}

+ (id)stringWithKey:(id)key countryCode:(id)code localeIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  codeCopy = code;
  v11 = [keyCopy stringByAppendingString:@"_ROW"];
  v12 = [self _useROWKeyForCountryCode:codeCopy];

  if (v12)
  {
    v13 = [self _stringWithKey:v11 localeIdentifier:identifierCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      if (![v13 isEqualToString:v11])
      {
LABEL_7:
        if (![v15 isEqualToString:keyCopy])
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

  v15 = [self _stringWithKey:keyCopy localeIdentifier:identifierCopy];

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

  oSLogObject = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v20 = 138543362;
    v21 = objc_opt_class();
    v18 = v21;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive localized string", &v20, 0xCu);
  }

LABEL_13:

  return v15;
}

+ (id)_countryCodes
{
  if (qword_10001F4D0 != -1)
  {
    sub_10000AD34();
  }

  v3 = qword_10001F4D8;

  return v3;
}

+ (id)_stringWithKey:(id)key localeIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  localizations = [v7 localizations];
  v23 = identifierCopy;
  v9 = [NSArray arrayWithObjects:&v23 count:1];
  v10 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v9];
  firstObject = [v10 firstObject];

  if (!firstObject)
  {
    v17 = +[APLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543362;
      v22 = objc_opt_class();
      v19 = v22;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive language from bundle", &v21, 0xCu);
    }

    v18 = 0;
    goto LABEL_14;
  }

  v12 = [v7 localizedStringForKey:keyCopy value:0 table:@"Localizable" localization:firstObject];
  oSLogObject = v12;
  if (!v12 || [v12 isEqualToString:keyCopy])
  {
    v14 = +[APLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543362;
      v22 = objc_opt_class();
      v16 = v22;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find localized string in bundle.", &v21, 0xCu);
    }

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:keyCopy value:&stru_100019208 table:@"Localizable"];
LABEL_14:

    oSLogObject = v18;
  }

  return oSLogObject;
}

+ (BOOL)_useROWKeyForCountryCode:(id)code
{
  if (code)
  {
    codeCopy = code;
    _countryCodes = [self _countryCodes];
    uppercaseString = [codeCopy uppercaseString];

    v7 = [_countryCodes containsObject:uppercaseString] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

@end