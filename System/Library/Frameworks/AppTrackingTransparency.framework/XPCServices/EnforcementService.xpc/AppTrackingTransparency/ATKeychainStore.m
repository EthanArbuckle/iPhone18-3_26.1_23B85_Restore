@interface ATKeychainStore
+ (id)_keychainQuery:(id)a3;
+ (id)_readDataFromKeychain:(id)a3 error:(id *)a4;
+ (id)objectForKey:(id)a3 error:(id *)a4;
+ (void)_removeObjectForKey:(id)a3;
+ (void)_writeDataToKeychain:(id)a3 andData:(id)a4;
+ (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation ATKeychainStore

+ (id)objectForKey:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!a4)
  {
    sub_1000022A4(a2, a1);
  }

  v28 = 0;
  v8 = [a1 _readDataFromKeychain:v7 error:&v28];
  v9 = v28;
  v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      *buf = 138412546;
      v30 = v11;
      v31 = 2112;
      v32 = v7;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Successfully read key: %@", buf, 0x16u);
    }

    v13 = [NSSet alloc];
    v14 = objc_opt_class();
    v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
    v27 = 0;
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v15 fromData:v8 error:&v27];
    v17 = v27;
    v18 = v17;
    if (!v16 || v17)
    {
      v23 = objc_opt_class();
      v24 = [v18 description];
      NSLog(@"[%@]: Error unarchiving data: %@. Error: %@", v23, v8, v24);

      if (a4)
      {
        v25 = v18;
        v19 = 0;
        *a4 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = v16;
    }
  }

  else
  {
    if (v10)
    {
      v20 = objc_opt_class();
      *buf = 138412546;
      v30 = v20;
      v31 = 2112;
      v32 = v7;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Unable to find key: %@", buf, 0x16u);
    }

    if (a4)
    {
      v22 = v9;
      v19 = 0;
      *a4 = v9;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

+ (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v14 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];
    v9 = v14;
    if (v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = v10;
        v12 = [v9 description];
        *buf = 138413058;
        v16 = v10;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Error archiving data for key: %@ and value: %@. Error: %@", buf, 0x2Au);
      }
    }

    else
    {
      v13 = a1;
      objc_sync_enter(v13);
      [ATKeychainStore _writeDataToKeychain:v7 andData:v8];
      objc_sync_exit(v13);
    }
  }

  else
  {
    [ATKeychainStore _removeObjectForKey:v7];
  }
}

+ (void)_removeObjectForKey:(id)a3
{
  query = [a1 _keychainQuery:a3];
  [(__CFDictionary *)query removeObjectForKey:kSecAttrAccessible];
  SecItemDelete(query);
}

+ (id)_readDataFromKeychain:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 _keychainQuery:v6];
  [v7 setObject:kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  result = 0;
  v8 = SecItemCopyMatching(v7, &result);
  if (v8 || (v9 = result) == 0)
  {
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v8 == -25300)
    {
      if (!v10)
      {
        goto LABEL_9;
      }

      *buf = 138412290;
      v16 = v6;
      v11 = "No previous keychain records found for key %@.";
      v12 = 12;
    }

    else
    {
      if (!v10)
      {
        goto LABEL_9;
      }

      *buf = 134218242;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      v11 = "Error %ld retrieving secure data for key %@";
      v12 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
LABEL_9:
    if (a4)
    {
      [NSError errorWithDomain:@"ATKeychainStoreErrorDomain" code:v8 userInfo:0];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (void)_writeDataToKeychain:(id)a3 andData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _keychainQuery:v6];
  [v8 removeObjectForKey:kSecAttrAccessible];
  SecItemDelete(v8);
  if (v7)
  {
    v9 = [a1 _keychainQuery:v6];
    [v9 setObject:v7 forKeyedSubscript:kSecValueData];
    v10 = SecItemAdd(v9, 0);
    if (v10)
    {
      v11 = v10;
      if (v10 == -25299)
      {
        v12 = [a1 _keychainQuery:v6];
        [v12 removeObjectForKey:kSecClass];
        [v12 setObject:v7 forKeyedSubscript:kSecValueData];
        v13 = [a1 _keychainQuery:v6];

        v14 = SecItemUpdate(v13, v12);
        if (v14)
        {
          v15 = v14;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138412546;
            *v17 = v6;
            *&v17[8] = 1024;
            *&v17[10] = v15;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to update keychain item %@. Error %d", &v16, 0x12u);
          }
        }

        v8 = v13;
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109378;
        *v17 = v11;
        *&v17[4] = 2112;
        *&v17[6] = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error %d checking for existence of keychain item %@", &v16, 0x12u);
      }
    }
  }
}

+ (id)_keychainQuery:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:@"apple" forKeyedSubscript:kSecAttrAccessGroup];
  [v4 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v4 setObject:@"com.apple.AppTrackingTransparencyService" forKeyedSubscript:kSecAttrService];
  [v4 setObject:kSecAttrAccessibleAfterFirstUnlock forKeyedSubscript:kSecAttrAccessible];
  v5 = [v3 dataUsingEncoding:4];

  [v4 setObject:v5 forKeyedSubscript:kSecAttrGeneric];
  [v4 setObject:v5 forKeyedSubscript:kSecAttrAccount];

  return v4;
}

@end