@interface APSKeychainTopicSaltStore
- (APSKeychainTopicSaltStore)initWithEnvironment:(id)environment multiUserMode:(id)mode;
- (BOOL)_saveIdentifiersToSalts:(id)salts toKeychainForUser:(id)user;
- (BOOL)_saveKeychainData:(id)data forUser:(id)user;
- (BOOL)_useSystemSaltStoreForUser:(id)user;
- (BOOL)saveSalt:(id)salt forIdentifier:(id)identifier user:(id)user;
- (id)_deserializeKeychainData:(id)data;
- (id)_keychainService;
- (id)_loadIdentifiersToSaltsFromKeychainForUser:(id)user;
- (id)_loadKeychainDataForUser:(id)user;
- (id)_saltStoreForUser:(id)user;
- (id)_serializeKeychainDict:(id)dict;
- (id)loadIdentifiersToSaltsForUser:(id)user;
- (id)loadSaltForIdentifier:(id)identifier user:(id)user;
- (void)_setSaltStore:(id)store forUser:(id)user;
@end

@implementation APSKeychainTopicSaltStore

- (APSKeychainTopicSaltStore)initWithEnvironment:(id)environment multiUserMode:(id)mode
{
  environmentCopy = environment;
  modeCopy = mode;
  v12.receiver = self;
  v12.super_class = APSKeychainTopicSaltStore;
  v9 = [(APSKeychainTopicSaltStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, environment);
    objc_storeStrong(&v10->_multiUser, mode);
  }

  return v10;
}

- (id)loadSaltForIdentifier:(id)identifier user:(id)user
{
  identifierCopy = identifier;
  userCopy = user;
  v8 = [(APSKeychainTopicSaltStore *)self _saltStoreForUser:userCopy];
  if (!v8)
  {
    v8 = [(APSKeychainTopicSaltStore *)self _loadIdentifiersToSaltsFromKeychainForUser:userCopy];
  }

  v9 = [v8 objectForKeyedSubscript:identifierCopy];
  if (v9)
  {
    v10 = +[APSLog courier];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = userCopy;
      v14 = 2112;
      v15 = identifierCopy;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ loadSaltForIdentifier found salt %@ %@", &v12, 0x20u);
    }
  }

  return v9;
}

- (BOOL)saveSalt:(id)salt forIdentifier:(id)identifier user:(id)user
{
  saltCopy = salt;
  identifierCopy = identifier;
  userCopy = user;
  v11 = [(APSKeychainTopicSaltStore *)self _saltStoreForUser:userCopy];
  if (!v11)
  {
    v11 = [(APSKeychainTopicSaltStore *)self _loadIdentifiersToSaltsFromKeychainForUser:userCopy];
  }

  v12 = [v11 objectForKeyedSubscript:identifierCopy];
  v13 = v12;
  if (saltCopy || !v12) && ([saltCopy isEqualToData:v12])
  {
    v14 = 1;
  }

  else
  {
    [v11 setObject:saltCopy forKeyedSubscript:identifierCopy];
    v14 = [(APSKeychainTopicSaltStore *)self _saveIdentifiersToSalts:v11 toKeychainForUser:userCopy];
    if (v14)
    {
      v15 = +[APSLog courier];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412802;
        v18 = userCopy;
        v19 = 2112;
        v20 = saltCopy;
        v21 = 2112;
        v22 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ saveSalt success %@ %@", &v17, 0x20u);
      }
    }

    else
    {
      [v11 setObject:v13 forKeyedSubscript:identifierCopy];
      v15 = +[APSLog courier];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412802;
        v18 = userCopy;
        v19 = 2112;
        v20 = saltCopy;
        v21 = 2112;
        v22 = identifierCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ saveSalt failed %@ %@", &v17, 0x20u);
      }
    }
  }

  return v14;
}

- (id)loadIdentifiersToSaltsForUser:(id)user
{
  userCopy = user;
  v5 = [(APSKeychainTopicSaltStore *)self _saltStoreForUser:userCopy];
  if (!v5)
  {
    v5 = [(APSKeychainTopicSaltStore *)self _loadIdentifiersToSaltsFromKeychainForUser:userCopy];
  }

  return v5;
}

- (BOOL)_useSystemSaltStoreForUser:(id)user
{
  isDefaultUser = [user isDefaultUser];
  if (isDefaultUser)
  {
    multiUser = [(APSKeychainTopicSaltStore *)self multiUser];
    isMultiUser = [multiUser isMultiUser];

    LOBYTE(isDefaultUser) = isMultiUser;
  }

  return isDefaultUser;
}

- (id)_saltStoreForUser:(id)user
{
  if ([(APSKeychainTopicSaltStore *)self _useSystemSaltStoreForUser:user])
  {
    [(APSKeychainTopicSaltStore *)self identifiersToSaltsSystem];
  }

  else
  {
    [(APSKeychainTopicSaltStore *)self identifiersToSaltsUser];
  }
  v4 = ;

  return v4;
}

- (void)_setSaltStore:(id)store forUser:(id)user
{
  storeCopy = store;
  if ([(APSKeychainTopicSaltStore *)self _useSystemSaltStoreForUser:user])
  {
    [(APSKeychainTopicSaltStore *)self setIdentifiersToSaltsSystem:storeCopy];
  }

  else
  {
    [(APSKeychainTopicSaltStore *)self setIdentifiersToSaltsUser:storeCopy];
  }
}

- (id)_loadIdentifiersToSaltsFromKeychainForUser:(id)user
{
  userCopy = user;
  v5 = [(APSKeychainTopicSaltStore *)self _loadKeychainDataForUser:userCopy];
  if (v5 || ([(APSKeychainTopicSaltStore *)self _loadKeychainDataForUser:userCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [(APSKeychainTopicSaltStore *)self _deserializeKeychainData:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(NSMutableDictionary);
    }

    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(NSMutableDictionary);
  }

  v11 = +[APSLog courier];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = userCopy;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Loaded salt store from keychain %@", &v13, 0x16u);
  }

  [(APSKeychainTopicSaltStore *)self _setSaltStore:v10 forUser:userCopy];

  return v10;
}

- (BOOL)_saveIdentifiersToSalts:(id)salts toKeychainForUser:(id)user
{
  saltsCopy = salts;
  userCopy = user;
  [(APSKeychainTopicSaltStore *)self _setSaltStore:saltsCopy forUser:userCopy];
  if ([saltsCopy count])
  {
    v8 = [(APSKeychainTopicSaltStore *)self _serializeKeychainDict:saltsCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(APSKeychainTopicSaltStore *)self _saveKeychainData:v8 forUser:userCopy];

  return v9;
}

- (id)_deserializeKeychainData:(id)data
{
  dataCopy = data;
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = dataCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_deserializeKeychainData %@", buf, 0xCu);
  }

  v26 = 0;
  v5 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:0 error:&v26];
  v6 = v26;
  if (v6)
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001089E0();
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[APSLog courier];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100108A54();
    }

LABEL_25:

    v16 = 0;
    goto LABEL_26;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *v23;
  v20 = v6;
  v21 = dataCopy;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v22 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = +[APSLog courier];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          dataCopy = v21;
          sub_100108AC8();
LABEL_24:
          v6 = v20;

          goto LABEL_25;
        }

LABEL_23:
        dataCopy = v21;
        goto LABEL_24;
      }

      v14 = [v8 objectForKeyedSubscript:v13];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v17 = +[APSLog courier];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v19 = [v8 objectForKeyedSubscript:v13];
          *buf = 138412546;
          v28 = v19;
          v29 = 2112;
          dataCopy = v21;
          v30 = v21;
          _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "KeychainDict value not a data %@ - _deserializeSaltStoreKeychainData %@", buf, 0x16u);

          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
    v6 = v20;
    dataCopy = v21;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v16 = [v8 mutableCopy];
LABEL_26:

  return v16;
}

- (id)_serializeKeychainDict:(id)dict
{
  dictCopy = dict;
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dictCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_serializeKeychainDict %@", buf, 0xCu);
  }

  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:dictCopy format:200 options:0 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100108B3C();
    }
  }

  return v5;
}

- (id)_keychainService
{
  environment = [(APSKeychainTopicSaltStore *)self environment];
  domain = [environment domain];
  v4 = [NSString stringWithFormat:@"%@%@", domain, @", TopicSalt.v1"];

  return v4;
}

- (id)_loadKeychainDataForUser:(id)user
{
  userCopy = user;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 138412290;
    *&v12[4] = userCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ _loadSaltStoreKeychainData", v12, 0xCu);
  }

  _keychainService = [(APSKeychainTopicSaltStore *)self _keychainService];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  if ([(APSKeychainTopicSaltStore *)self _useSystemSaltStoreForUser:userCopy])
  {
    CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
  }

  CFDictionaryAddValue(Mutable, kSecAttrService, _keychainService);
  CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
  *v12 = 0;
  v8 = SecItemCopyMatching(Mutable, v12);
  if (v8 != -25300 && v8)
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100108BB0();
    }
  }

  CFRelease(Mutable);
  v10 = *v12;

  return v10;
}

- (BOOL)_saveKeychainData:(id)data forUser:(id)user
{
  dataCopy = data;
  userCopy = user;
  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = userCopy;
    v19 = 2112;
    v20 = dataCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ _saveSaltStoreKeychainData %@", &v17, 0x16u);
  }

  _keychainService = [(APSKeychainTopicSaltStore *)self _keychainService];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  if ([(APSKeychainTopicSaltStore *)self _useSystemSaltStoreForUser:userCopy])
  {
    CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
  }

  CFDictionaryAddValue(Mutable, kSecAttrService, _keychainService);
  if (!dataCopy)
  {
    if (SecItemDelete(Mutable))
    {
      v14 = +[APSLog courier];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100108C80();
      }

      goto LABEL_16;
    }

LABEL_17:
    v15 = 1;
    goto LABEL_18;
  }

  CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAlwaysThisDeviceOnly);
  CFDictionaryAddValue(Mutable, kSecValueData, dataCopy);
  v11 = SecItemAdd(Mutable, 0);
  if (v11 == -25299)
  {
    v12 = +[APSLog courier];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = dataCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecResult shows duplicate item, trying to update it. _saveSaltStoreKeychainData %@", &v17, 0xCu);
    }

    CFDictionaryRemoveValue(Mutable, kSecValueData);
    v13 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(v13, kSecValueData, dataCopy);
    v11 = SecItemUpdate(Mutable, v13);
    CFRelease(v13);
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v14 = +[APSLog courier];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100108C18();
  }

LABEL_16:

  v15 = 0;
LABEL_18:
  CFRelease(Mutable);

  return v15;
}

@end