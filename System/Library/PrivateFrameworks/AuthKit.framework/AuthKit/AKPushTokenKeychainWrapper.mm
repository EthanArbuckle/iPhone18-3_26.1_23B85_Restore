@interface AKPushTokenKeychainWrapper
- (AKPushTokenKeychainWrapper)init;
- (id)_descriptor;
- (id)fetchToken;
- (void)updateToken:(id)a3;
@end

@implementation AKPushTokenKeychainWrapper

- (AKPushTokenKeychainWrapper)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKPushTokenKeychainWrapper;
  v6 = [(AKPushTokenKeychainWrapper *)&v7 init];
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

- (id)fetchToken
{
  v17[2] = self;
  v17[1] = a2;
  v17[0] = 0;
  keychainManager = self->_keychainManager;
  v9 = [(AKPushTokenKeychainWrapper *)self _descriptor];
  v15 = v17[0];
  v8 = [AAFKeychainManager keychainItemForDescriptor:"keychainItemForDescriptor:error:" error:?];
  objc_storeStrong(v17, v15);
  v16 = v8;
  _objc_release(v9);
  if (v17[0])
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v18, v17[0]);
      _os_log_debug_impl(&_mh_execute_header, v14, v13, "Failed to read push token from keychain, returning nil. Error: %@", v18, 0xCu);
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = 2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v5 = v12;
      v6 = v11;
      sub_10001CEEC(v10);
      _os_log_debug_impl(&_mh_execute_header, v5, v6, "Successfully read push token from keychain.", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
  }

  v4 = [v16 value];
  objc_storeStrong(v3, 0);
  objc_storeStrong(v17, 0);

  return v4;
}

- (void)updateToken:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [AAFKeychainItem alloc];
  v7 = [(AKPushTokenKeychainWrapper *)v17 _descriptor];
  v15 = [v6 initWithDescriptor:? value:?];
  _objc_release(v7);
  v14 = 0;
  keychainManager = v17->_keychainManager;
  v13 = 0;
  [(AAFKeychainManager *)keychainManager addOrUpdateKeychainItem:v15 error:&v13];
  objc_storeStrong(&v14, v13);
  if (v14)
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v18, v14);
      _os_log_debug_impl(&_mh_execute_header, v12, v11, "Failed to write push token to keychain. Error: %@", v18, 0xCu);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v4 = oslog;
      v5 = v9;
      sub_10001CEEC(v8);
      _os_log_debug_impl(&_mh_execute_header, v4, v5, "Successfully wrote push token to keychain.", v8, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)_descriptor
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(AAFKeychainItemDescriptor);
  [v4[0] setItemClass:?];
  [v4[0] setItemAccessible:0];
  [v4[0] setInvisible:?];
  [v4[0] setSynchronizable:1];
  [v4[0] setUseDataProtection:2];
  [v4[0] setService:@"com.apple.authkit.pushToken.svc"];
  [v4[0] setLabel:@"com.apple.authkit.lastKnownPushToken"];
  v3 = _objc_retain(v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

@end