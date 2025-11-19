@interface AKSecurityHelper
+ (id)signData:(id)a3 withKey:(__SecKey *)a4 error:(id *)a5;
+ (int)secItemAddWithQuery:(id)a3 result:(const void *)a4;
+ (int)secItemCopyMatchingWithQuery:(id)a3 result:(const void *)a4;
+ (int)secItemDeleteWithQuery:(id)a3;
@end

@implementation AKSecurityHelper

+ (id)signData:(id)a3 withKey:(__SecKey *)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v24 = a5;
  error = 0;
  v22 = SecKeyCreateSignature(a4, *MEMORY[0x1E697B128], location[0], &error);
  v21 = error;
  if (v22)
  {
    v27 = MEMORY[0x1E69E5928](v22);
    v20 = 1;
  }

  else
  {
    if (v21)
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v28, v21);
        _os_log_error_impl(&dword_193225000, oslog, type, "Failed to generate signature: %@", v28, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (v24)
      {
        v12 = v21;
        v5 = v21;
        *v24 = v12;
      }
    }

    else
    {
      v17 = _AKLogSystem();
      v16 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v10 = v17;
        v11 = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_error_impl(&dword_193225000, v10, v11, "Failed to generate signature: unknown error!", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      if (v24)
      {
        v9 = [MEMORY[0x1E696ABC0] ak_generalErrorWithCode:-17001 errorDomain:@"AKGenericError" underlyingError:0];
        v6 = v9;
        *v24 = v9;
      }
    }

    v27 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v7 = v27;

  return v7;
}

+ (int)secItemAddWithQuery:(id)a3 result:(const void *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v14, location[0]);
    _os_log_debug_impl(&dword_193225000, oslog, type, "SecItemAdd with query: %@", v14, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = SecItemAdd(location[0], v11);
  if (v8)
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v13, v8);
      _os_log_error_impl(&dword_193225000, v7, OS_LOG_TYPE_ERROR, "SecItemAdd failed with status: %d", v13, 8u);
    }

    objc_storeStrong(&v7, 0);
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v5;
}

+ (int)secItemCopyMatchingWithQuery:(id)a3 result:(const void *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v14, location[0]);
    _os_log_debug_impl(&dword_193225000, oslog, type, "SecItemCopyMatching with query: %@", v14, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = SecItemCopyMatching(location[0], v11);
  if (v8 && v8 != -25300)
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v13, v8);
      _os_log_error_impl(&dword_193225000, v7, OS_LOG_TYPE_ERROR, "SecItemCopyMatching failed with status: %d", v13, 8u);
    }

    objc_storeStrong(&v7, 0);
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v5;
}

+ (int)secItemDeleteWithQuery:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v11, location[0]);
    _os_log_debug_impl(&dword_193225000, oslog, type, "SecItemDelete with query: %@", v11, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = SecItemDelete(location[0]);
  if (v6 && v6 != -25300)
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v10, v6);
      _os_log_error_impl(&dword_193225000, v5, OS_LOG_TYPE_ERROR, "SecItemDelete failed with status: %d", v10, 8u);
    }

    objc_storeStrong(&v5, 0);
  }

  v4 = v6;
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v4;
}

@end