@interface AKPrivateEmailValidator
+ (BOOL)canPerformRequestWithAccount:(id)a3 error:(id *)a4;
@end

@implementation AKPrivateEmailValidator

+ (BOOL)canPerformRequestWithAccount:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v24 = +[AKAccountManager sharedInstance];
  if ([v24 securityLevelForAccount:location[0]] == 4)
  {
    v10 = [v24 reachableEmailAddressesForAccount:location[0]];
    v11 = [v10 count] != 0;
    MEMORY[0x1E69E5920](v10);
    v19 = v11;
    if (([v24 phoneAsAppleIDForAccount:location[0]] & 1) == 0 || v19)
    {
      v27 = 1;
      v20 = 1;
    }

    else
    {
      v18 = _AKLogHme();
      v17 = 16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v8 = v18;
        v9 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_error_impl(&dword_193225000, v8, v9, "Cannot perform HME request - Phone as AppleID Account without reachable emails", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      if (v25)
      {
        v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKPrivateEmailError" code:-11007 userInfo:0];
        v5 = v7;
        *v25 = v7;
      }

      v27 = 0;
      v20 = 1;
    }
  }

  else
  {
    v23 = _AKLogHme();
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_error_impl(&dword_193225000, log, type, "Cannot perform HME request - Insufficient security level", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    if (v25)
    {
      v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7070];
      v4 = v12;
      *v25 = v12;
    }

    v27 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  return v27 & 1;
}

@end