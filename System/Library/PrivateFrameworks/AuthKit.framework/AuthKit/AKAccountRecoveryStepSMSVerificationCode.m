@interface AKAccountRecoveryStepSMSVerificationCode
- (BOOL)_isSMSVerificationErrorForData:(id)a3;
- (BOOL)_isValidSMSCodeFormat:(id)a3;
- (BOOL)canProcessResponse:(id)a3;
- (id)_promptForSMSCode;
- (void)_beginSMSCodeVerificationWithResponse:(id)a3 model:(id)a4 completion:(id)a5;
- (void)_verifySMSCodeWithData:(id)a3 model:(id)a4 response:(id)a5 completion:(id)a6;
- (void)processResponse:(id)a3 model:(id)a4 withCompletion:(id)a5;
@end

@implementation AKAccountRecoveryStepSMSVerificationCode

- (void)processResponse:(id)a3 model:(id)a4 withCompletion:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(AKAccountRecoveryStepSMSVerificationCode *)v10 _beginSMSCodeVerificationWithResponse:location[0] model:v8 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canProcessResponse:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] data];
  v12 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"navigationBar" error:?];
  MEMORY[0x1E69E5920](v4);
  v5 = [v12 firstObject];
  v11 = [v5 objectForKeyedSubscript:@"title"];
  MEMORY[0x1E69E5920](v5);
  v6 = [v11 lowercaseString];
  v7 = [v6 containsString:@"verification code"];
  MEMORY[0x1E69E5920](v6);
  v8 = [v11 lowercaseString];
  v9 = [v8 containsString:@"two-factor authentication"];
  MEMORY[0x1E69E5920](v8);
  v10 = 1;
  if ((v7 & 1) == 0)
  {
    v10 = v9;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (void)_beginSMSCodeVerificationWithResponse:(id)a3 model:(id)a4 completion:(id)a5
{
  v38[2] = *MEMORY[0x1E69E9840];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v31 = 0;
  objc_storeStrong(&v31, a5);
  v18 = [location[0] data];
  v30 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"pinView" error:?];
  MEMORY[0x1E69E5920](v18);
  v19 = [location[0] data];
  v29 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"serverInfo" error:?];
  MEMORY[0x1E69E5920](v19);
  if (![v30 count] || !objc_msgSend(v29, "count"))
  {
    AKPrintError(@"SMS verification failed: unexpected server response format");
    v20 = _AKLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_8_0_8_0(v35, [v30 count], objc_msgSend(v29, "count"));
      _os_log_debug_impl(&dword_193225000, v20, OS_LOG_TYPE_DEBUG, "Missing required elements (pinViews: %lu, serverInfo: %lu)", v35, 0x16u);
    }

    objc_storeStrong(&v20, 0);
    if (v31)
    {
      v5 = v31;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
      (*(v5 + 2))(v5, 0, 0, 0);
      MEMORY[0x1E69E5920](v6);
    }

    goto LABEL_29;
  }

  v28 = [v30 firstObject];
  v27 = [v29 firstObject];
  v26 = [v28 objectForKey:@"id"];
  if (!v26 || ([v26 isEqualToString:@"code"] & 1) == 0 && (objc_msgSend(v26, "containsString:", @"securityCode") & 1) == 0)
  {
    AKPrintError(@"SMS verification failed: unsupported server response format");
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      if (v26)
      {
        v9 = v26;
      }

      else
      {
        v9 = @"nil";
      }

      __os_log_helper_16_2_1_8_64(v36, v9);
      _os_log_debug_impl(&dword_193225000, v22, v21, "Unsupported pinView format '%@'", v36, 0xCu);
    }

    objc_storeStrong(&v22, 0);
    if (v31)
    {
      v7 = v31;
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
      (*(v7 + 2))(v7, 0, 0, 0);
      MEMORY[0x1E69E5920](v8);
    }

    goto LABEL_22;
  }

  v14 = [v32 cliUtilities];
  v13 = [v32 configuration];
  v12 = [location[0] httpResponse];
  [v14 updateConfiguration:v13 fromXMLAttributes:v28 response:?];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v14);
  v15 = [v32 configuration];
  MEMORY[0x1E69E5920](v15);
  if (v15)
  {
    v24 = [(AKAccountRecoveryStepSMSVerificationCode *)v34 _promptForSMSCode];
    if ([(AKAccountRecoveryStepSMSVerificationCode *)v34 _isValidSMSCodeFormat:v24])
    {
      v37[0] = @"serverInfo";
      v38[0] = v27;
      v37[1] = v26;
      v38[1] = v24;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
      [(AKAccountRecoveryStepSMSVerificationCode *)v34 _verifySMSCodeWithData:v23 model:v32 response:location[0] completion:v31];
      objc_storeStrong(&v23, 0);
      v25 = 0;
    }

    else
    {
      AKPrintError(@"Invalid code format. Please enter a 6-digit verification code");
      [(AKAccountRecoveryStepSMSVerificationCode *)v34 _beginSMSCodeVerificationWithResponse:location[0] model:v32 completion:v31];
      v25 = 1;
    }

    objc_storeStrong(&v24, 0);
    if (v25)
    {
      goto LABEL_23;
    }

LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  AKPrintError(@"SMS verification failed: invalid request configuration");
  if (v31)
  {
    v10 = v31;
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKGenericError" code:-17003 userInfo:?];
    (*(v10 + 2))(v10, 0, 0, 0);
    MEMORY[0x1E69E5920](v11);
  }

  v25 = 1;
LABEL_23:
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  if (!v25)
  {
LABEL_29:
    v25 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_verifySMSCodeWithData:(id)a3 model:(id)a4 response:(id)a5 completion:(id)a6
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = 0;
  objc_storeStrong(&v24, a6);
  v23 = [v26 configuration];
  v9 = [v23 request];
  v22 = [v9 mutableCopy];
  MEMORY[0x1E69E5920](v9);
  v10 = [v26 cliUtilities];
  [v10 signXMLRequest:v22 withPostbackDictionary:location[0]];
  MEMORY[0x1E69E5920](v10);
  v11 = [v23 resourceLoadDelegate];
  [v11 signRequest:v22];
  MEMORY[0x1E69E5920](v11);
  v13 = [v26 cliUtilities];
  v12 = v22;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __93__AKAccountRecoveryStepSMSVerificationCode__verifySMSCodeWithData_model_response_completion___block_invoke;
  v17 = &unk_1E73D4158;
  v21 = MEMORY[0x1E69E5928](v24);
  v18 = MEMORY[0x1E69E5928](v28);
  v19 = MEMORY[0x1E69E5928](v25);
  v20 = MEMORY[0x1E69E5928](v26);
  [v13 beginDataTaskWithRequest:v12 completionHandler:?];
  MEMORY[0x1E69E5920](v13);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __93__AKAccountRecoveryStepSMSVerificationCode__verifySMSCodeWithData_model_response_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  if (v8)
  {
    v4 = [v8 localizedDescription];
    AKPrintError(@"SMS verification failed: %@", v4);
    MEMORY[0x1E69E5920](v4);
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else if ([*(a1 + 32) _isSMSVerificationErrorForData:location[0]])
  {
    AKPrintError(@"❌ Invalid verification code. Please try again.");
    [*(a1 + 32) _beginSMSCodeVerificationWithResponse:*(a1 + 40) model:*(a1 + 48) completion:*(a1 + 56)];
  }

  else if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isSMSVerificationErrorForData:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:@"alert" data:location[0] error:0];
  if ([v13 count])
  {
    v12 = [v13 firstObject];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v12 objectForKeyedSubscript:@"title"];
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = &stru_1F0781300;
    }

    v7 = [v12 objectForKeyedSubscript:@"message"];
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = &stru_1F0781300;
    }

    v4 = [v9 stringWithFormat:@"%@ %@", v8, v6];
    v11 = [v4 lowercaseString];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v10);
    v5 = 1;
    if (([v11 containsString:@"incorrect"] & 1) == 0)
    {
      v5 = 1;
      if (([v11 containsString:@"invalid"] & 1) == 0)
      {
        v5 = 1;
        if (([v11 containsString:@"wrong"] & 1) == 0)
        {
          v5 = 1;
          if (([v11 containsString:@"verification"] & 1) == 0)
          {
            v5 = 1;
            if (([v11 containsString:@"authentication failed"] & 1) == 0)
            {
              v5 = 1;
              if (([v11 containsString:@"expired"] & 1) == 0)
              {
                v5 = [v11 containsString:@"failed"];
              }
            }
          }
        }
      }
    }

    v15 = v5 & 1;
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (BOOL)_isValidSMSCodeFormat:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] rangeOfString:@"^[0-9]{6}$" options:1024];
  objc_storeStrong(location, 0);
  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_promptForSMSCode
{
  v4[2] = self;
  v4[1] = a2;
  AKPrint(@"Enter verification code: ");
  v4[0] = AKReadLine(1024);
  v3 = MEMORY[0x1E69E5928](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

@end