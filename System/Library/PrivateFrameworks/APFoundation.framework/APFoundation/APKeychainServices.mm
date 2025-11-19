@interface APKeychainServices
+ (id)_keychainQuery:(id)a3;
+ (id)_readDataFromKeychain:(id)a3 error:(id *)a4;
+ (id)_readDataFromKeychain:(id)a3 settings:(id)a4 error:(id *)a5;
+ (id)objectForKey:(id)a3 error:(id *)a4;
+ (id)objectForKey:(id)a3 settings:(id)a4 error:(id *)a5;
+ (id)objectForPropertyListKey:(id)a3 error:(id *)a4;
+ (void)_removeObjectForKey:(id)a3 error:(id *)a4;
+ (void)_removeObjectForKey:(id)a3 settings:(id)a4 error:(id *)a5;
+ (void)_writeDataToKeychain:(id)a3 andData:(id)a4 error:(id *)a5;
+ (void)_writeDataToKeychain:(id)a3 andData:(id)a4 settings:(id)a5 error:(id *)a6;
+ (void)setObject:(id)a3 forKey:(id)a4 error:(id *)a5;
+ (void)setObject:(id)a3 forKey:(id)a4 settings:(id)a5 error:(id *)a6;
+ (void)setPropertyListObject:(id)a3 forKey:(id)a4 error:(id *)a5;
@end

@implementation APKeychainServices

+ (id)objectForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend__keychainQuery_(a1, v7, v6, v8);
  v11 = objc_msgSend_objectForKey_settings_error_(a1, v10, v6, v9, a4);

  return v11;
}

+ (id)objectForKey:(id)a3 settings:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v39 = 0;
  v10 = objc_msgSend__readDataFromKeychain_settings_error_(a1, v9, v8, a4, &v39);
  v11 = v39;
  v12 = APLogForCategory(0x18uLL);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      *buf = 138478083;
      v41 = v14;
      v42 = 2114;
      v43 = v8;
      v15 = v14;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_INFO, "[%{private}@]: Successfully read key: %{public}@", buf, 0x16u);
    }

    v19 = objc_msgSend_classes(APSupportedSecureEncodedClass, v16, v17, v18);
    v38 = 0;
    v21 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v20, v19, v10, &v38);
    v22 = v38;
    v23 = v22;
    if (!v21 || v22)
    {
      v28 = APLogForCategory(0x18uLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v37 = v29;
        v33 = objc_msgSend_description(v23, v30, v31, v32);
        *buf = 138412802;
        v41 = v29;
        v42 = 2112;
        v43 = v10;
        v44 = 2112;
        v45 = v33;
        _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_ERROR, "[%@]: Error unarchiving data: %@. Error: %@", buf, 0x20u);
      }

      if (a5)
      {
        v34 = v23;
        v24 = 0;
        *a5 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = v21;
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      *buf = 138478083;
      v41 = v25;
      v42 = 2114;
      v43 = v8;
      v26 = v25;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "[%{private}@]: Unable to find key: %{public}@", buf, 0x16u);
    }

    if (a5)
    {
      v27 = v11;
      v24 = 0;
      *a5 = v11;
    }

    else
    {
      v24 = 0;
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (void)setObject:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v13 = objc_msgSend__keychainQuery_(a1, v10, v8, v11);
  objc_msgSend_setObject_forKey_settings_error_(APKeychainServices, v12, v9, v8, v13, a5);
}

+ (void)setObject:(id)a3 forKey:(id)a4 settings:(id)a5 error:(id *)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v13 = a5;
  if (v10)
  {
    v27 = 0;
    v14 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v12, v10, 1, &v27);
    v15 = v27;
    v16 = v15;
    if (v15)
    {
      if (a6)
      {
        v17 = v15;
        *a6 = v16;
      }

      v18 = APLogForCategory(0x18uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = v19;
        v24 = objc_msgSend_description(v16, v21, v22, v23);
        *buf = 138478595;
        v29 = v19;
        v30 = 2114;
        v31 = v11;
        v32 = 2113;
        v33 = v10;
        v34 = 2114;
        v35 = v24;
        _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_ERROR, "[%{private}@]: Error archiving data for key: %{public}@ and value: %{private}@. Error: %{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v18 = a1;
      objc_sync_enter(v18);
      objc_msgSend__writeDataToKeychain_andData_settings_error_(APKeychainServices, v25, v11, v14, v13, a6);
      objc_sync_exit(v18);
    }
  }

  else
  {
    objc_msgSend__removeObjectForKey_settings_error_(APKeychainServices, v12, v11, v13, a6);
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (void)setPropertyListObject:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v12 = a3;
  v9 = a4;
  if (v12)
  {
    v10 = a1;
    objc_sync_enter(v10);
    objc_msgSend__writeDataToKeychain_andData_error_(APKeychainServices, v11, v9, v12, a5);
    objc_sync_exit(v10);
  }

  else
  {
    objc_msgSend__removeObjectForKey_error_(APKeychainServices, v8, v9, a5);
  }
}

+ (id)objectForPropertyListKey:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = objc_msgSend__readDataFromKeychain_error_(a1, v7, v6, a4);
  v9 = APLogForCategory(0x18uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v16 = 138478083;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v6;
      v11 = v17;
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_INFO, "[%{private}@]: Successfully read key: %{public}@", &v16, 0x16u);
    }

    v12 = v8;
  }

  else
  {
    if (v10)
    {
      v16 = 138478083;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v6;
      v13 = v17;
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_INFO, "[%{private}@]: Unable to find key: %{public}@", &v16, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_readDataFromKeychain:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend__keychainQuery_(a1, v7, v6, v8);
  v11 = objc_msgSend__readDataFromKeychain_settings_error_(a1, v10, v6, v9, a4);

  return v11;
}

+ (id)_readDataFromKeychain:(id)a3 settings:(id)a4 error:(id *)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *MEMORY[0x1E695E4D0];
  v9 = *MEMORY[0x1E697B318];
  v10 = a4;
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, v8, v9);
  result = 0;
  v12 = SecItemCopyMatching(v10, &result);

  if (!v12 && result)
  {
    v13 = sub_1BADC4088();
    objc_msgSend_lock(v13, v14, v15, v16);

    ++dword_1EDBA4110;
    v17 = sub_1BADC4088();
    objc_msgSend_unlock(v17, v18, v19, v20);

    a5 = result;
    goto LABEL_13;
  }

  v21 = APLogForCategory(0x18uLL);
  v22 = v21;
  if (v12 == -25300)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v52 = v7;
      _os_log_impl(&dword_1BADC1000, v22, OS_LOG_TYPE_INFO, "No previous keychain records found for key %{public}@.", buf, 0xCu);
    }

    v23 = sub_1BADC4088();
    objc_msgSend_lock(v23, v24, v25, v26);

    ++dword_1EDBA4110;
    v27 = sub_1BADC4088();
    objc_msgSend_unlock(v27, v28, v29, v30);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v52 = v12;
    v53 = 2114;
    v54 = v7;
    _os_log_impl(&dword_1BADC1000, v22, OS_LOG_TYPE_ERROR, "Error %ld retrieving secure data for key %{public}@", buf, 0x16u);
  }

  if (a5)
  {
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v31, @"APPCControllerRequesterErrorDomain", v12, 0);
    v35 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v32, v33, v34);
    v27 = objc_msgSend_bundleIdentifier(v35, v36, v37, v38);

    objc_msgSend_sendKeychainAnalytics_keyName_readCount_writeCount_bundleID_(APKeychainAnalytics, v39, v12, v7, dword_1EDBA4110, dword_1EDBA40F4, v27);
    v40 = sub_1BADC4088();
    objc_msgSend_lock(v40, v41, v42, v43);

    dword_1EDBA4110 = 0;
    v44 = sub_1BADC4088();
    objc_msgSend_unlock(v44, v45, v46, v47);

LABEL_12:
    a5 = 0;
  }

LABEL_13:

  v48 = *MEMORY[0x1E69E9840];

  return a5;
}

+ (void)_writeDataToKeychain:(id)a3 andData:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v13 = objc_msgSend__keychainQuery_(a1, v10, v9, v11);
  objc_msgSend__writeDataToKeychain_andData_settings_error_(a1, v12, v9, v8, v13, a5);
}

+ (void)_writeDataToKeychain:(id)a3 andData:(id)a4 settings:(id)a5 error:(id *)a6
{
  v112[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v12, v11, v13);
  objc_msgSend_removeObjectForKey_(v14, v15, *MEMORY[0x1E697ABD8], v16);
  v17 = SecItemDelete(v14);
  if (v10)
  {
    v20 = v17;
    v21 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v18, v11, v19);
    v22 = *MEMORY[0x1E697B3C0];
    objc_msgSend_setObject_forKeyedSubscript_(v21, v23, v10, *MEMORY[0x1E697B3C0]);
    v24 = SecItemAdd(v21, 0);
    if (v24)
    {
      v27 = v24;
      if (v24 != -25299)
      {
        if (a6)
        {
          v46 = MEMORY[0x1E696ABC0];
          v103 = *MEMORY[0x1E696A578];
          v104 = @"Error adding to keychain in write";
          v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, &v104, &v103, 1);
          *a6 = objc_msgSend_errorWithDomain_code_userInfo_(v46, v48, @"APPCControllerRequesterErrorDomain", v27, v47);
        }

        v49 = APLogForCategory(0x18uLL);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v106 = v27;
          *&v106[4] = 2114;
          *&v106[6] = v9;
          _os_log_impl(&dword_1BADC1000, v49, OS_LOG_TYPE_ERROR, "Error %d checking for existence of keychain item %{public}@", buf, 0x12u);
        }

        v53 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v50, v51, v52);
        v57 = objc_msgSend_bundleIdentifier(v53, v54, v55, v56);

        objc_msgSend_sendKeychainAnalytics_keyName_readCount_writeCount_bundleID_(APKeychainAnalytics, v58, v27, v9, dword_1EDBA4110, dword_1EDBA40F4, v57);
        v59 = sub_1BADC4088();
        objc_msgSend_lock(v59, v60, v61, v62);

        dword_1EDBA40F4 = 0;
        v63 = sub_1BADC4088();
        objc_msgSend_unlock(v63, v64, v65, v66);

        goto LABEL_23;
      }

      v28 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v25, v11, v26);
      objc_msgSend_removeObjectForKey_(v28, v29, *MEMORY[0x1E697AFF8], v30);
      objc_msgSend_setObject_forKeyedSubscript_(v28, v31, v10, v22);
      v102 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v32, v11, v33);
      v34 = SecItemUpdate(v102, v28);
      if (v34)
      {
        v36 = v34;
        if (a6)
        {
          if (v20 != -25300 && v20)
          {
            v75 = MEMORY[0x1E696ABC0];
            v100 = v20;
            v111 = *MEMORY[0x1E696A578];
            v101 = v111;
            v112[0] = @"Error deleting keychain item";
            v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, v112, &v111, 1);
            v78 = objc_msgSend_errorWithDomain_code_userInfo_(v75, v77, @"APPCControllerRequesterErrorDomain", v100, v76);

            v79 = *MEMORY[0x1E696AA08];
            v109[0] = v101;
            v109[1] = v79;
            v110[0] = @"Error updating keychain in write";
            v110[1] = v78;
            v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v80, v110, v109, 2);

            objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v81, @"APPCControllerRequesterErrorDomain", v36, v37);
          }

          else
          {
            v107 = *MEMORY[0x1E696A578];
            v108 = @"Error updating keychain in write";
            v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, &v108, &v107, 1);
            objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v38, @"APPCControllerRequesterErrorDomain", v36, v37);
          }
          *a6 = ;
        }

        v82 = APLogForCategory(0x18uLL);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *v106 = v9;
          *&v106[8] = 1024;
          *&v106[10] = v36;
          _os_log_impl(&dword_1BADC1000, v82, OS_LOG_TYPE_ERROR, "Failed to update keychain item %{public}@. Error %d", buf, 0x12u);
        }

        v86 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v83, v84, v85);
        v71 = objc_msgSend_bundleIdentifier(v86, v87, v88, v89);

        objc_msgSend_sendKeychainAnalytics_keyName_readCount_writeCount_bundleID_(APKeychainAnalytics, v90, v36, v9, dword_1EDBA4110, dword_1EDBA40F4, v71);
        v91 = sub_1BADC4088();
        objc_msgSend_lock(v91, v92, v93, v94);

        dword_1EDBA40F4 = 0;
        v95 = sub_1BADC4088();
        objc_msgSend_unlock(v95, v96, v97, v98);
      }

      else
      {
        v67 = sub_1BADC4088();
        objc_msgSend_lock(v67, v68, v69, v70);

        ++dword_1EDBA40F4;
        v71 = sub_1BADC4088();
        objc_msgSend_unlock(v71, v72, v73, v74);
      }
    }

    else
    {
      v39 = sub_1BADC4088();
      objc_msgSend_lock(v39, v40, v41, v42);

      ++dword_1EDBA40F4;
      v28 = sub_1BADC4088();
      objc_msgSend_unlock(v28, v43, v44, v45);
    }

LABEL_23:
  }

  v99 = *MEMORY[0x1E69E9840];
}

+ (void)_removeObjectForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10 = objc_msgSend__keychainQuery_(a1, v7, v6, v8);
  objc_msgSend__removeObjectForKey_settings_error_(a1, v9, v6, v10, a4);
}

+ (void)_removeObjectForKey:(id)a3 settings:(id)a4 error:(id *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *MEMORY[0x1E697ABD8];
  v9 = a4;
  objc_msgSend_removeObjectForKey_(v9, v10, v8, v11);
  v12 = SecItemDelete(v9);

  if (a5 && v12)
  {
    v13 = APLogForCategory(0x18uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 67109378;
      v16[1] = v12;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "Error %d removing object from keychain item %{public}@", v16, 0x12u);
    }

    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v14, @"APPCControllerRequesterErrorDomain", v12, 0);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)_keychainQuery:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v6, @"apple", *MEMORY[0x1E697ABD0]);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v7, *MEMORY[0x1E697B008], *MEMORY[0x1E697AFF8]);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v8, @"com.apple.iAdIDRecords", *MEMORY[0x1E697AE88]);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v9, *MEMORY[0x1E697ABE0], *MEMORY[0x1E697ABD8]);
  v12 = objc_msgSend_dataUsingEncoding_(v4, v10, 4, v11);

  objc_msgSend_setObject_forKeyedSubscript_(v5, v13, v12, *MEMORY[0x1E697ACF0]);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v14, v12, *MEMORY[0x1E697AC30]);

  return v5;
}

@end