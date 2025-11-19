@interface AKTokenKeychain
- (AKTokenKeychain)init;
- (BOOL)clearAllTokensForAltDSID:(id)a3 error:(id *)a4;
- (BOOL)deleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)updateWithContext:(id)a3 error:(id *)a4;
- (id)_tokenKeychainDescriptorForContext:(id)a3;
- (id)_tokenKeychainDescriptorWithIdentifier:(id)a3 altDSID:(id)a4;
- (id)fetchWithContext:(id)a3 error:(id *)a4;
@end

@implementation AKTokenKeychain

- (AKTokenKeychain)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKTokenKeychain;
  v6 = [(AKTokenKeychain *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = objc_opt_new();
    keychainManager = v9->_keychainManager;
    v9->_keychainManager = v2;
    _objc_release(keychainManager);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)fetchWithContext:(id)a3 error:(id *)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = a4;
  v25 = [(AKTokenKeychain *)v28 _tokenKeychainDescriptorForContext:location[0]];
  v24 = 0;
  keychainManager = v28->_keychainManager;
  v22 = 0;
  v12 = [(AAFKeychainManager *)keychainManager keychainItemForDescriptor:v25 error:&v22];
  objc_storeStrong(&v24, v22);
  v23 = v12;
  v21 = [v12 value];
  v19 = 0;
  v13 = 0;
  if ([v24 code] == -25300)
  {
    v20 = [v24 domain];
    v19 = 1;
    v13 = [v20 isEqualToString:NSOSStatusErrorDomain];
  }

  if (v19)
  {
    _objc_release(v20);
  }

  if (v13)
  {
    v29 = 0;
    v18 = 1;
  }

  else
  {
    v17 = 0;
    v5 = objc_opt_class();
    obj = v17;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:v5 fromData:v21 error:&obj];
    objc_storeStrong(&v17, obj);
    v16 = v10;
    if (v21)
    {
      v29 = _objc_retain(v16);
      v18 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v30, v17);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Token keychain fetch failed - unable to unarchive token data with error: %@", v30, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (v26)
      {
        v9 = v17;
        v6 = v17;
        *v26 = v9;
      }

      v29 = 0;
      v18 = 1;
    }

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  v7 = v29;

  return v7;
}

- (BOOL)updateWithContext:(id)a3 error:(id *)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v24 = 0;
  v13 = [location[0] token];
  v22 = v24;
  v12 = [NSKeyedArchiver archivedDataWithRootObject:"archivedDataWithRootObject:requiringSecureCoding:error:" requiringSecureCoding:? error:?];
  objc_storeStrong(&v24, v22);
  v23 = v12;
  _objc_release(v13);
  if (v12)
  {
    v18 = [(AKTokenKeychain *)v27 _tokenKeychainDescriptorForContext:location[0]];
    v5 = [AAFKeychainItem alloc];
    v17 = [v5 initWithDescriptor:v18 value:v23];
    v16 = 0;
    keychainManager = v27->_keychainManager;
    obj = 0;
    [(AAFKeychainManager *)keychainManager addOrUpdateKeychainItem:v17 error:&obj];
    objc_storeStrong(&v16, obj);
    if (v16)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v29, v16);
        _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Token keychain update failed with error: %@.", v29, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (v25)
      {
        v9 = v16;
        v7 = v16;
        *v25 = v9;
      }

      v28 = 0;
      v19 = 1;
    }

    else
    {
      v28 = 1;
      v19 = 1;
    }

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v30, v24);
      _os_log_error_impl(&_mh_execute_header, v21, v20, "Token keychain update failed - unable to generate archived data from token with error: %@", v30, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    if (v25)
    {
      v10 = v24;
      v4 = v24;
      *v25 = v10;
    }

    v28 = 0;
    v19 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  return v28 & 1;
}

- (BOOL)deleteWithContext:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = [(AKTokenKeychain *)v10 _tokenKeychainDescriptorForContext:location[0]];
  [(AAFKeychainManager *)v10->_keychainManager deleteKeychainItemsForDescriptor:v7 error:a4];
  if (a4)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v12, *v8);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Token keychain delete failed with error: %@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (BOOL)clearAllTokensForAltDSID:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = [(AKTokenKeychain *)v10 _tokenKeychainDescriptorWithIdentifier:0 altDSID:location[0]];
  [(AAFKeychainManager *)v10->_keychainManager deleteKeychainItemsForDescriptor:v7 error:a4];
  if (a4)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v12, *v8);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Token keychain failed to clear all tokens with error: %@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (id)_tokenKeychainDescriptorForContext:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v9;
  v6 = [location[0] tokenIdentifier];
  v5 = [location[0] altDSID];
  v7 = [(AKTokenKeychain *)v4 _tokenKeychainDescriptorWithIdentifier:v6 altDSID:?];
  _objc_release(v5);
  _objc_release(v6);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_tokenKeychainDescriptorWithIdentifier:(id)a3 altDSID:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = objc_alloc_init(AAFKeychainItemDescriptor);
  [v11 setItemClass:?];
  [v11 setItemAccessible:?];
  [v11 setInvisible:2];
  [v11 setSynchronizable:1];
  [v11 setUseDataProtection:2];
  v10 = _objc_retain(@"com.apple.authkit.tokenManager");
  if ([v12 length])
  {
    v4 = [NSString stringWithFormat:@"%@.%@", @"com.apple.authkit.tokenManager", v12];
    v5 = v10;
    v10 = v4;
    _objc_release(v5);
  }

  [v11 setService:v10];
  [v11 setAccount:location[0]];
  [v11 setLabel:v12];
  v9 = _AKLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v14, v10);
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "AKTokenManager keychainDescriptorService:%@", v14, 0xCu);
  }

  objc_storeStrong(&v9, 0);
  v7 = _objc_retain(v11);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end