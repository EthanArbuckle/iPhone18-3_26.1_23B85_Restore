@interface ATKeychainStore
+ (id)_keychainQuery:(id)query;
+ (id)_readDataFromKeychain:(id)keychain error:(id *)error;
+ (id)objectForKey:(id)key error:(id *)error;
+ (void)_removeObjectForKey:(id)key;
+ (void)_writeDataToKeychain:(id)keychain andData:(id)data;
+ (void)setObject:(id)object forKey:(id)key;
@end

@implementation ATKeychainStore

+ (id)objectForKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (!error)
  {
    sub_1000022A4(a2, self);
  }

  v28 = 0;
  v8 = [self _readDataFromKeychain:keyCopy error:&v28];
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
      v32 = keyCopy;
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

      if (error)
      {
        v25 = v18;
        v19 = 0;
        *error = v18;
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
      v32 = keyCopy;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Unable to find key: %@", buf, 0x16u);
    }

    if (error)
    {
      v22 = v9;
      v19 = 0;
      *error = v9;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

+ (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy)
  {
    v14 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v14];
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
        v18 = keyCopy;
        v19 = 2112;
        v20 = objectCopy;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Error archiving data for key: %@ and value: %@. Error: %@", buf, 0x2Au);
      }
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [ATKeychainStore _writeDataToKeychain:keyCopy andData:v8];
      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    [ATKeychainStore _removeObjectForKey:keyCopy];
  }
}

+ (void)_removeObjectForKey:(id)key
{
  query = [self _keychainQuery:key];
  [(__CFDictionary *)query removeObjectForKey:kSecAttrAccessible];
  SecItemDelete(query);
}

+ (id)_readDataFromKeychain:(id)keychain error:(id *)error
{
  keychainCopy = keychain;
  v7 = [self _keychainQuery:keychainCopy];
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
      v16 = keychainCopy;
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
      v18 = keychainCopy;
      v11 = "Error %ld retrieving secure data for key %@";
      v12 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
LABEL_9:
    if (error)
    {
      [NSError errorWithDomain:@"ATKeychainStoreErrorDomain" code:v8 userInfo:0];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (void)_writeDataToKeychain:(id)keychain andData:(id)data
{
  keychainCopy = keychain;
  dataCopy = data;
  v8 = [self _keychainQuery:keychainCopy];
  [v8 removeObjectForKey:kSecAttrAccessible];
  SecItemDelete(v8);
  if (dataCopy)
  {
    v9 = [self _keychainQuery:keychainCopy];
    [v9 setObject:dataCopy forKeyedSubscript:kSecValueData];
    v10 = SecItemAdd(v9, 0);
    if (v10)
    {
      v11 = v10;
      if (v10 == -25299)
      {
        v12 = [self _keychainQuery:keychainCopy];
        [v12 removeObjectForKey:kSecClass];
        [v12 setObject:dataCopy forKeyedSubscript:kSecValueData];
        v13 = [self _keychainQuery:keychainCopy];

        v14 = SecItemUpdate(v13, v12);
        if (v14)
        {
          v15 = v14;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138412546;
            *v17 = keychainCopy;
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
        *&v17[6] = keychainCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error %d checking for existence of keychain item %@", &v16, 0x12u);
      }
    }
  }
}

+ (id)_keychainQuery:(id)query
{
  queryCopy = query;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:@"apple" forKeyedSubscript:kSecAttrAccessGroup];
  [v4 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v4 setObject:@"com.apple.AppTrackingTransparencyService" forKeyedSubscript:kSecAttrService];
  [v4 setObject:kSecAttrAccessibleAfterFirstUnlock forKeyedSubscript:kSecAttrAccessible];
  v5 = [queryCopy dataUsingEncoding:4];

  [v4 setObject:v5 forKeyedSubscript:kSecAttrGeneric];
  [v4 setObject:v5 forKeyedSubscript:kSecAttrAccount];

  return v4;
}

@end