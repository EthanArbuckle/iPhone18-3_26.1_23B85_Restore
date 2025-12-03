@interface AKBeneficiaryUpdater
+ (id)_beneficiaryWrappedKeyKeychainDescriptor;
+ (id)removeWrappedKeyFrom:(id)from;
+ (id)saveWrappedKeyInKeychain:(id)keychain;
@end

@implementation AKBeneficiaryUpdater

+ (id)removeWrappedKeyFrom:(id)from
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v7 = objc_alloc_init(NSMutableArray);
  v4 = location[0];
  v6 = _objc_retain(v7);
  [v4 enumerateObjectsUsingBlock:?];
  v5 = _objc_retain(v7);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)saveWrappedKeyInKeychain:(id)keychain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keychain);
  v42 = objc_alloc_init(NSMutableArray);
  v41 = objc_alloc_init(NSMutableDictionary);
  v15 = location[0];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100102734;
  v38[3] = &unk_100322FA0;
  v39 = _objc_retain(v41);
  v40 = _objc_retain(v42);
  [v15 enumerateObjectsUsingBlock:v38];
  v37 = _AKLogSystem();
  v36 = 2;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    log = v37;
    type = v36;
    sub_10001CEEC(v35);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Storing beneficiaryUUIDWrappedKeyDictionary in keychain", v35, 2u);
  }

  objc_storeStrong(&v37, 0);
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = objc_alloc_init(AAFKeychainManager);
  _beneficiaryWrappedKeyKeychainDescriptor = [selfCopy _beneficiaryWrappedKeyKeychainDescriptor];
  v30 = v34;
  [v31 deleteKeychainItemsForDescriptor:? error:?];
  objc_storeStrong(&v34, v30);
  _objc_release(_beneficiaryWrappedKeyKeychainDescriptor);
  v29 = _AKLogSystem();
  v28 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v47, v34);
    _os_log_error_impl(&_mh_execute_header, v29, v28, "Failed to delete Keychain item: %@", v47, 0xCu);
  }

  objc_storeStrong(&v29, 0);
  obj = v33;
  v11 = [NSKeyedArchiver archivedDataWithRootObject:v41 requiringSecureCoding:1 error:&obj];
  objc_storeStrong(&v33, obj);
  v27 = v11;
  if (v11)
  {
    v7 = [AAFKeychainItem alloc];
    _beneficiaryWrappedKeyKeychainDescriptor2 = [selfCopy _beneficiaryWrappedKeyKeychainDescriptor];
    v23 = [v7 initWithDescriptor:? value:?];
    _objc_release(_beneficiaryWrappedKeyKeychainDescriptor2);
    v9 = v31;
    descriptor = [v23 descriptor];
    v22 = v32;
    [v9 deleteKeychainItemsForDescriptor:? error:?];
    objc_storeStrong(&v32, v22);
    _objc_release(descriptor);
    v21 = v32;
    [v31 addOrUpdateKeychainItem:v23 error:&v21];
    objc_storeStrong(&v32, v21);
    if (v32)
    {
      v20 = _AKLogSystem();
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v45, v32);
        _os_log_error_impl(&_mh_execute_header, v20, v19, "Failed to add wrapped keys to keychain: %@", v45, 0xCu);
      }

      objc_storeStrong(&v20, 0);
    }

    else
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v5 = v18;
        v6 = v17;
        sub_10001CEEC(v16);
        _os_log_debug_impl(&_mh_execute_header, v5, v6, "Beneficiary wrapped keys added to keychain.", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v23, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v46, v33);
      _os_log_error_impl(&_mh_execute_header, oslog, v24, "Failed to save wrapped key in keychain with error:  %@", v46, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = _objc_retain(v42);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)_beneficiaryWrappedKeyKeychainDescriptor
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(AAFKeychainItemDescriptor);
  [v4[0] setItemClass:3];
  [v4[0] setUseDataProtection:?];
  [v4[0] setAccessGroup:AKBeneficiaryInfoKeychainAccessGroup];
  [v4[0] setItemAccessible:2];
  v3 = _objc_retain(v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

@end