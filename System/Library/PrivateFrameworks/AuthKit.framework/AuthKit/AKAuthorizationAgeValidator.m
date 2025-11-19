@interface AKAuthorizationAgeValidator
+ (BOOL)isValidAgeForRequest:(id)a3 account:(id)a4;
@end

@implementation AKAuthorizationAgeValidator

+ (BOOL)isValidAgeForRequest:(id)a3 account:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v42 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v14 = +[AKAccountManager sharedInstance];
  v15 = [(AKAccountManager *)v14 authorizationUsedForAccount:v40];
  MEMORY[0x1E69E5920](v14);
  v39 = v15;
  v16 = v42;
  v17 = [location[0] authorizationRequest];
  v18 = [v16 _isAuthorizedCredentialState:{objc_msgSend(v17, "existingStatus")}];
  MEMORY[0x1E69E5920](v17);
  v38 = v18;
  v19 = +[AKAccountManager sharedInstance];
  v20 = 0;
  if ([(AKAccountManager *)v19 userUnderAgeForAccount:v40])
  {
    v20 = [location[0] _isFirstPartyLogin] == 0;
  }

  MEMORY[0x1E69E5920](v19);
  if (v20)
  {
    v9 = +[AKFeatureManager sharedManager];
    v37 = [v9 isTiburonU13Enabled];
    MEMORY[0x1E69E5920](v9);
    v10 = +[AKURLBag sharedBag];
    v11 = [v10 isSIWAForPAAChildEnabled];
    MEMORY[0x1E69E5920](v10);
    v36 = v11;
    v12 = 0;
    if (v39)
    {
      v12 = 0;
      if (v36)
      {
        v12 = v38;
      }
    }

    v35 = v12 & 1;
    v34 = _AKLogSiwa();
    v33 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v48, v37 & 1, v39, v36 & 1, v38 & 1);
      _os_log_debug_impl(&dword_193225000, v34, v33, "allowUnderageRequest %d hasUsedAuthorization %d isSIWAForPAAChildEnabled %d hasAuthorizedCredential %d", v48, 0x1Au);
    }

    objc_storeStrong(&v34, 0);
    if (v37)
    {
      v32 = _AKLogSystem();
      v31 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_3_1_8_65(v47, @"Underage");
        _os_log_impl(&dword_193225000, v32, v31, "%{private}@ user allowed to perform request", v47, 0xCu);
      }

      objc_storeStrong(&v32, 0);
    }

    else
    {
      if ((v35 & 1) == 0)
      {
        v28 = _AKLogSiwa();
        v27 = 16;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v7 = v28;
          v8 = v27;
          __os_log_helper_16_0_0(v26);
          _os_log_error_impl(&dword_193225000, v7, v8, "Cannot perform request - Invalid age", v26, 2u);
        }

        objc_storeStrong(&v28, 0);
        v43 = 0;
        v25 = 1;
        goto LABEL_30;
      }

      v30 = _AKLogSystem();
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_3_1_8_65(v46, @"Underage");
        _os_log_impl(&dword_193225000, v30, v29, "%{private}@ user has a valid existing credential", v46, 0xCu);
      }

      objc_storeStrong(&v30, 0);
    }
  }

  v5 = +[AKAccountManager sharedInstance];
  v6 = [(AKAccountManager *)v5 primaryiCloudAccountHasPendingDOB];
  MEMORY[0x1E69E5920](v5);
  v24 = v6;
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!v39)
  {
    v23 = _AKLogSiwa();
    v22 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_3_1_8_65(v45, @"DOB");
      _os_log_debug_impl(&dword_193225000, v23, v22, "Account with pending %{private}@ has never used SIWA", v45, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    v43 = 0;
    v25 = 1;
    goto LABEL_30;
  }

  if (v38)
  {
LABEL_29:
    v43 = 1;
    v25 = 1;
    goto LABEL_30;
  }

  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_3_1_8_65(v44, @"DOB");
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Account with pending %{private}@ has not created an account with this developer before.", v44, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v43 = 0;
  v25 = 1;
LABEL_30:
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v43 & 1;
}

@end