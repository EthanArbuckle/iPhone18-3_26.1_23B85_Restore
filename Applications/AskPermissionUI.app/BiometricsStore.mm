@interface BiometricsStore
+ (__CFDictionary)_copyKeychainQuery;
+ (id)retreiveTokenWithAction:(int64_t)action error:(id *)error;
+ (void)removeToken;
+ (void)storeToken:(id)token;
@end

@implementation BiometricsStore

+ (void)removeToken
{
  _copyKeychainQuery = [self _copyKeychainQuery];
  v3 = SecItemDelete(_copyKeychainQuery);
  if (v3 == -25303 || v3 == -25300 || v3 == 0)
  {
    v6 = +[APLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = objc_opt_class();
      v8 = v15;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed biometrics token data from keychain", &v14, 0xCu);
    }
  }

  else
  {
    v9 = v3;
    v10 = +[APLogConfig sharedDaemonConfig];
    v6 = v10;
    if (!v10)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [NSNumber numberWithInt:v9];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove biometrics token data from keychain. Status: %{public}@", &v14, 0x16u);
    }
  }

  CFRelease(_copyKeychainQuery);
}

+ (id)retreiveTokenWithAction:(int64_t)action error:(id *)error
{
  _copyKeychainQuery = [self _copyKeychainQuery];
  CFDictionaryAddValue(_copyKeychainQuery, kSecReturnData, kCFBooleanTrue);
  result = 0;
  v6 = SecItemCopyMatching(_copyKeychainQuery, &result);
  v7 = result;
  if (result)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v20 = [[NSString alloc] initWithData:result encoding:134217984];

    CFRelease(_copyKeychainQuery);
    if (v20)
    {
      v21 = +[APLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v28 = v23;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved biometrics token data from keychain", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = v6;
    v10 = SecCopyErrorMessageString(v6, 0);
    v31 = APKeychainErrorCodeUserInfoKey;
    v11 = [NSNumber numberWithInt:v9];
    v32 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v13 = APCustomError();

    v14 = +[APLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [NSNumber numberWithInt:v9];
      *buf = 138543618;
      v28 = v16;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve biometrics token data from keychain. Status: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v19 = v13;
      *error = v13;
    }

    CFRelease(_copyKeychainQuery);
    v20 = 0;
  }

  return v20;
}

+ (void)storeToken:(id)token
{
  tokenCopy = token;
  [self removeToken];
  v5 = [tokenCopy dataUsingEncoding:4];

  _copyKeychainQuery = [self _copyKeychainQuery];
  CFDictionaryAddValue(_copyKeychainQuery, kSecValueData, v5);
  v7 = SecItemAdd(_copyKeychainQuery, 0);
  v8 = +[APLogConfig sharedDaemonConfig];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [NSNumber numberWithInt:v7];
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save biometrics token data to keychain. Status: %{public}@", &v15, 0x16u);
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v14 = v16;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Saved biometrics token data to keychain", &v15, 0xCu);
    }
  }

  CFRelease(_copyKeychainQuery);
}

+ (__CFDictionary)_copyKeychainQuery
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecAttrService, @"com.apple.AskPermission.biometricsToken");
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  v3 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, 2uLL, 0);
  CFDictionaryAddValue(Mutable, kSecAttrAccessControl, v3);
  CFRelease(v3);
  return Mutable;
}

@end