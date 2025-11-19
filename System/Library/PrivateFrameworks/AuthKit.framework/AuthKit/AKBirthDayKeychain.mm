@interface AKBirthDayKeychain
- (AKBirthDayKeychain)init;
- (BOOL)deleteBirthdayForAltDSID:(id)a3 error:(id *)a4;
- (BOOL)updateBirthdayForAltDSID:(id)a3 userInformation:(id)a4 error:(id *)a5;
- (id)_birthDayKeychainDescriptorForAltDSID:(id)a3;
- (id)fetchBirthDayForAltDSID:(id)a3 error:(id *)a4;
@end

@implementation AKBirthDayKeychain

- (AKBirthDayKeychain)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKBirthDayKeychain;
  v6 = [(AKBirthDayKeychain *)&v7 init];
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

- (id)fetchBirthDayForAltDSID:(id)a3 error:(id *)a4
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = a4;
  v29 = _AKLogSystem();
  v28 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v36, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v29, v28, "AKBirthdayKeychain - attempting to fetch birthday day for altdsid: %@", v36, 0xCu);
  }

  objc_storeStrong(&v29, 0);
  v27 = [(AKBirthDayKeychain *)v32 _birthDayKeychainDescriptorForAltDSID:location[0]];
  v26 = 0;
  keychainManager = v32->_keychainManager;
  v24 = 0;
  v11 = [(AAFKeychainManager *)keychainManager keychainItemForDescriptor:v27 error:&v24];
  objc_storeStrong(&v26, v24);
  v25 = v11;
  v23 = [v11 value];
  v21 = 0;
  v12 = 0;
  if ([v26 code] == -25300)
  {
    v22 = [v26 domain];
    v21 = 1;
    v12 = [v22 isEqualToString:NSOSStatusErrorDomain];
  }

  if (v21)
  {
    _objc_release(v22);
  }

  if (v12)
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v35, v26);
      _os_log_error_impl(&_mh_execute_header, v20, v19, "Birthday keychain fetch failed with keychain error: %@", v35, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    v33 = 0;
    v18 = 1;
  }

  else
  {
    v17 = 0;
    v5 = objc_opt_class();
    obj = v17;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:v5 fromData:v23 error:&obj];
    objc_storeStrong(&v17, obj);
    v16 = v10;
    if (v23)
    {
      v33 = _objc_retain(v16);
      v18 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v34, v17);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Birthday keychain fetch failed - unable to unarchive token data with error: %@", v34, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (v30)
      {
        v9 = v17;
        v6 = v17;
        *v30 = v9;
      }

      v33 = 0;
      v18 = 1;
    }

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  v7 = v33;

  return v7;
}

- (BOOL)updateBirthdayForAltDSID:(id)a3 userInformation:(id)a4 error:(id *)a5
{
  v51 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = 0;
  objc_storeStrong(&v49, a4);
  v48 = a5;
  v47 = 0;
  v46 = 0;
  v23 = +[AKAccountManager sharedInstance];
  v44 = v46;
  v22 = [(AKAccountManager *)v23 authKitAccountWithAltDSID:location[0] error:&v44];
  objc_storeStrong(&v46, v44);
  v45 = v22;
  _objc_release(v23);
  if (v45)
  {
    v18 = [v49 birthMonth];
    v17 = [v49 birthDay];
    v16 = +[AKAccountManager sharedInstance];
    v15 = [(AKAccountManager *)v16 birthYearForAccount:v45];
    v43 = [NSString stringWithFormat:@"%@-%@-%@", v18, v17, v15];
    _objc_release(v15);
    _objc_release(v16);
    _objc_release(v17);
    _objc_release(v18);
    v42 = objc_alloc_init(NSDateFormatter);
    [v42 setDateFormat:@"MM-dd-yyyy"];
    v41 = [v42 dateFromString:v43];
    v39 = v47;
    v19 = [NSKeyedArchiver archivedDataWithRootObject:v41 requiringSecureCoding:1 error:&v39];
    objc_storeStrong(&v47, v39);
    v40 = v19;
    if (v19)
    {
      v35 = [(AKBirthDayKeychain *)v51 _birthDayKeychainDescriptorForAltDSID:location[0]];
      v6 = [AAFKeychainItem alloc];
      v34 = [v6 initWithDescriptor:v35 value:v40];
      v33 = 0;
      keychainManager = v51->_keychainManager;
      v32 = 0;
      [(AAFKeychainManager *)keychainManager addOrUpdateKeychainItem:v34 error:&v32];
      objc_storeStrong(&v33, v32);
      if (v33)
      {
        oslog = _AKLogSystem();
        v30 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          sub_1000194D4(v55, v33);
          _os_log_debug_impl(&_mh_execute_header, oslog, v30, "Birthday keychain update failed with error: %@.", v55, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        if (v48)
        {
          v13 = v33;
          v8 = v33;
          *v48 = v13;
        }

        v52 = 0;
        v36 = 1;
      }

      else
      {
        v29 = +[AKAccountManager sharedInstance];
        v28 = [v29 altDSIDforPrimaryiCloudAccount];
        if ([location[0] isEqualToString:v28])
        {
          [v41 timeIntervalSince1970];
          v11 = xpc_date_create((v9 * 1000000000.0));
          v12 = os_eligibility_set_input();
          _objc_release(v11);
          v27 = v12;
          if (v12)
          {
            v26 = _objc_retain(&_os_log_default);
            v25 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_10006A654(v54, v27);
              _os_log_error_impl(&_mh_execute_header, v26, v25, "Failed to set birthday eligibility input: %d", v54, 8u);
            }

            objc_storeStrong(&v26, 0);
          }
        }

        v52 = 1;
        v36 = 1;
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v29, 0);
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    else
    {
      v38 = _AKLogSystem();
      v37 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v56, v47);
        _os_log_error_impl(&_mh_execute_header, v38, v37, "Birthday keychain update failed - unable to generate archived data from token with error: %@", v56, 0xCu);
      }

      objc_storeStrong(&v38, 0);
      if (v48)
      {
        v14 = v47;
        v5 = v47;
        *v48 = v14;
      }

      v52 = 0;
      v36 = 1;
    }

    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v43, 0);
  }

  else if (v46)
  {
    v24 = _AKLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v53, v46);
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Failed to fetch accounts, unable to update birthday: %@.", v53, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    v52 = 0;
    v36 = 1;
  }

  else
  {
    v52 = 0;
    v36 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  return v52 & 1;
}

- (BOOL)deleteBirthdayForAltDSID:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = [(AKBirthDayKeychain *)v10 _birthDayKeychainDescriptorForAltDSID:location[0]];
  [(AAFKeychainManager *)v10->_keychainManager deleteKeychainItemsForDescriptor:v7 error:a4];
  if (a4)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v12, *v8);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Birthday keychain delete failed with error: %@", v12, 0xCu);
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

- (id)_birthDayKeychainDescriptorForAltDSID:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = objc_alloc_init(AAFKeychainItemDescriptor);
  [v6 setItemClass:?];
  [v6 setInvisible:?];
  [v6 setSynchronizable:1];
  [v6 setUseDataProtection:2];
  [v6 setItemAccessible:0];
  v5 = [NSString stringWithFormat:@"%@.%@", @"com.apple.authkit.birthDay", location[0]];
  [v6 setService:v5];
  [v6 setLabel:location[0]];
  v4 = _objc_retain(v6);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end