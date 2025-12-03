@interface AKAccountRecoveryStepSMSVerificationCode
- (BOOL)_isSMSVerificationErrorForData:(id)data;
- (BOOL)_isValidSMSCodeFormat:(id)format;
- (BOOL)canProcessResponse:(id)response;
- (id)_promptForSMSCode;
- (void)_beginSMSCodeVerificationWithResponse:(id)response model:(id)model completion:(id)completion;
- (void)_verifySMSCodeWithData:(id)data model:(id)model response:(id)response completion:(id)completion;
- (void)processResponse:(id)response model:(id)model withCompletion:(id)completion;
@end

@implementation AKAccountRecoveryStepSMSVerificationCode

- (void)processResponse:(id)response model:(id)model withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v8 = 0;
  objc_storeStrong(&v8, model);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  [(AKAccountRecoveryStepSMSVerificationCode *)selfCopy _beginSMSCodeVerificationWithResponse:location[0] model:v8 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canProcessResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  data = [location[0] data];
  v12 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"navigationBar" error:?];
  MEMORY[0x1E69E5920](data);
  firstObject = [v12 firstObject];
  v11 = [firstObject objectForKeyedSubscript:@"title"];
  MEMORY[0x1E69E5920](firstObject);
  lowercaseString = [v11 lowercaseString];
  v7 = [lowercaseString containsString:@"verification code"];
  MEMORY[0x1E69E5920](lowercaseString);
  lowercaseString2 = [v11 lowercaseString];
  v9 = [lowercaseString2 containsString:@"two-factor authentication"];
  MEMORY[0x1E69E5920](lowercaseString2);
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

- (void)_beginSMSCodeVerificationWithResponse:(id)response model:(id)model completion:(id)completion
{
  v38[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v32 = 0;
  objc_storeStrong(&v32, model);
  v31 = 0;
  objc_storeStrong(&v31, completion);
  data = [location[0] data];
  v30 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"pinView" error:?];
  MEMORY[0x1E69E5920](data);
  data2 = [location[0] data];
  v29 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"serverInfo" error:?];
  MEMORY[0x1E69E5920](data2);
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

  firstObject = [v30 firstObject];
  firstObject2 = [v29 firstObject];
  v26 = [firstObject objectForKey:@"id"];
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

  cliUtilities = [v32 cliUtilities];
  configuration = [v32 configuration];
  httpResponse = [location[0] httpResponse];
  [cliUtilities updateConfiguration:configuration fromXMLAttributes:firstObject response:?];
  MEMORY[0x1E69E5920](httpResponse);
  MEMORY[0x1E69E5920](configuration);
  MEMORY[0x1E69E5920](cliUtilities);
  configuration2 = [v32 configuration];
  MEMORY[0x1E69E5920](configuration2);
  if (configuration2)
  {
    _promptForSMSCode = [(AKAccountRecoveryStepSMSVerificationCode *)selfCopy _promptForSMSCode];
    if ([(AKAccountRecoveryStepSMSVerificationCode *)selfCopy _isValidSMSCodeFormat:_promptForSMSCode])
    {
      v37[0] = @"serverInfo";
      v38[0] = firstObject2;
      v37[1] = v26;
      v38[1] = _promptForSMSCode;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
      [(AKAccountRecoveryStepSMSVerificationCode *)selfCopy _verifySMSCodeWithData:v23 model:v32 response:location[0] completion:v31];
      objc_storeStrong(&v23, 0);
      v25 = 0;
    }

    else
    {
      AKPrintError(@"Invalid code format. Please enter a 6-digit verification code");
      [(AKAccountRecoveryStepSMSVerificationCode *)selfCopy _beginSMSCodeVerificationWithResponse:location[0] model:v32 completion:v31];
      v25 = 1;
    }

    objc_storeStrong(&_promptForSMSCode, 0);
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
  objc_storeStrong(&firstObject2, 0);
  objc_storeStrong(&firstObject, 0);
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

- (void)_verifySMSCodeWithData:(id)data model:(id)model response:(id)response completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v26 = 0;
  objc_storeStrong(&v26, model);
  v25 = 0;
  objc_storeStrong(&v25, response);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  configuration = [v26 configuration];
  request = [configuration request];
  v22 = [request mutableCopy];
  MEMORY[0x1E69E5920](request);
  cliUtilities = [v26 cliUtilities];
  [cliUtilities signXMLRequest:v22 withPostbackDictionary:location[0]];
  MEMORY[0x1E69E5920](cliUtilities);
  resourceLoadDelegate = [configuration resourceLoadDelegate];
  [resourceLoadDelegate signRequest:v22];
  MEMORY[0x1E69E5920](resourceLoadDelegate);
  cliUtilities2 = [v26 cliUtilities];
  v12 = v22;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __93__AKAccountRecoveryStepSMSVerificationCode__verifySMSCodeWithData_model_response_completion___block_invoke;
  v17 = &unk_1E73D4158;
  v21 = MEMORY[0x1E69E5928](v24);
  v18 = MEMORY[0x1E69E5928](selfCopy);
  v19 = MEMORY[0x1E69E5928](v25);
  v20 = MEMORY[0x1E69E5928](v26);
  [cliUtilities2 beginDataTaskWithRequest:v12 completionHandler:?];
  MEMORY[0x1E69E5920](cliUtilities2);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&configuration, 0);
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

- (BOOL)_isSMSVerificationErrorForData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v13 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:@"alert" data:location[0] error:0];
  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [firstObject objectForKeyedSubscript:@"title"];
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = &stru_1F0781300;
    }

    v7 = [firstObject objectForKeyedSubscript:@"message"];
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = &stru_1F0781300;
    }

    v4 = [v9 stringWithFormat:@"%@ %@", v8, v6];
    lowercaseString = [v4 lowercaseString];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v10);
    v5 = 1;
    if (([lowercaseString containsString:@"incorrect"] & 1) == 0)
    {
      v5 = 1;
      if (([lowercaseString containsString:@"invalid"] & 1) == 0)
      {
        v5 = 1;
        if (([lowercaseString containsString:@"wrong"] & 1) == 0)
        {
          v5 = 1;
          if (([lowercaseString containsString:@"verification"] & 1) == 0)
          {
            v5 = 1;
            if (([lowercaseString containsString:@"authentication failed"] & 1) == 0)
            {
              v5 = 1;
              if (([lowercaseString containsString:@"expired"] & 1) == 0)
              {
                v5 = [lowercaseString containsString:@"failed"];
              }
            }
          }
        }
      }
    }

    v15 = v5 & 1;
    objc_storeStrong(&lowercaseString, 0);
    objc_storeStrong(&firstObject, 0);
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (BOOL)_isValidSMSCodeFormat:(id)format
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, format);
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