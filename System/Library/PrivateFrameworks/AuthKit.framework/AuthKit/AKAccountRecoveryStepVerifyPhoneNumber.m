@interface AKAccountRecoveryStepVerifyPhoneNumber
- (BOOL)canProcessResponse:(id)a3;
- (id)_matchingAttributesWithPhoneNumber:(id)a3 linkRowElements:(id)a4;
- (id)_promptForPhoneNumberWithModel:(id)a3;
- (void)_beginVerifyPhoneNumberWithResponse:(id)a3 model:(id)a4 completion:(id)a5;
- (void)_processPhoneNumber:(id)a3 response:(id)a4 model:(id)a5 completion:(id)a6;
- (void)_sendSMSCodeWithModel:(id)a3 completion:(id)a4;
- (void)_verifyPhoneNumberWithModel:(id)a3 completion:(id)a4;
- (void)processResponse:(id)a3 model:(id)a4 withCompletion:(id)a5;
@end

@implementation AKAccountRecoveryStepVerifyPhoneNumber

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
  [(AKAccountRecoveryStepVerifyPhoneNumber *)v10 _beginVerifyPhoneNumberWithResponse:location[0] model:v8 completion:v7];
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
  v9 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"navigationBar" error:?];
  MEMORY[0x1E69E5920](v4);
  v7 = [v9 firstObject];
  v6 = [v7 objectForKeyedSubscript:@"title"];
  v5 = [v6 lowercaseString];
  v8 = [v5 containsString:@"phone number"];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (void)_beginVerifyPhoneNumberWithResponse:(id)a3 model:(id)a4 completion:(id)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v15 = [location[0] data];
  v19 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"multiChoice" error:?];
  MEMORY[0x1E69E5920](v15);
  if ([v19 count] == 1)
  {
    v12 = [v21 cliUtilities];
    v11 = [v21 configuration];
    v10 = [v19 firstObject];
    v9 = [location[0] httpResponse];
    [v12 updateConfiguration:v11 fromXMLAttributes:v10 response:?];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
    [(AKAccountRecoveryStepVerifyPhoneNumber *)v23 _verifyPhoneNumberWithModel:v21 completion:v20];
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = 2;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      log = v18;
      type = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_debug_impl(&dword_193225000, log, type, "Failed phone number verification step with unexpected data", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    if (v20)
    {
      v5 = v20;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
      (*(v5 + 2))(v5, 0, 0, 0);
      MEMORY[0x1E69E5920](v6);
    }
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_verifyPhoneNumberWithModel:(id)a3 completion:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v31 = [(AKAccountRecoveryStepVerifyPhoneNumber *)v34 _promptForPhoneNumberWithModel:location[0]];
  v30 = [location[0] configuration];
  if (v30)
  {
    v4 = [v30 request];
    v25 = [v4 mutableCopy];
    MEMORY[0x1E69E5920](v4);
    v7 = [location[0] cliUtilities];
    v5 = v25;
    v35 = @"number";
    v36[0] = v31;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [v7 signXMLRequest:v5 withPostbackDictionary:?];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
    v8 = [v30 resourceLoadDelegate];
    [v8 signRequest:v25];
    MEMORY[0x1E69E5920](v8);
    v10 = [location[0] cliUtilities];
    v9 = v25;
    v16 = MEMORY[0x1E69E9820];
    v17 = -1073741824;
    v18 = 0;
    v19 = __81__AKAccountRecoveryStepVerifyPhoneNumber__verifyPhoneNumberWithModel_completion___block_invoke;
    v20 = &unk_1E73D41B0;
    v21 = MEMORY[0x1E69E5928](v34);
    v22 = MEMORY[0x1E69E5928](v31);
    v23 = MEMORY[0x1E69E5928](location[0]);
    v24 = MEMORY[0x1E69E5928](v32);
    [v10 beginDataTaskWithRequest:v9 completionHandler:&v16];
    MEMORY[0x1E69E5920](v10);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v25, 0);
    v26 = 0;
  }

  else
  {
    v29 = _AKLogSystem();
    v28 = 2;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      log = v29;
      type = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_debug_impl(&dword_193225000, log, type, "requestConfiguration is nil", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    if (v32)
    {
      v11 = v32;
      v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      (*(v11 + 2))(v11, 0, 0, 0);
      MEMORY[0x1E69E5920](v12);
    }

    v26 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __81__AKAccountRecoveryStepVerifyPhoneNumber__verifyPhoneNumberWithModel_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8[1] = a1;
  v4 = [AKAccountRecoveryResponse alloc];
  v8[0] = [(AKAccountRecoveryResponse *)v4 initWithData:location[0] httpResponse:v10];
  [*(a1 + 32) _processPhoneNumber:*(a1 + 40) response:v8[0] model:*(a1 + 48) completion:*(a1 + 56)];
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_processPhoneNumber:(id)a3 response:(id)a4 model:(id)a5 completion:(id)a6
{
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  v35 = 0;
  objc_storeStrong(&v35, a6);
  v24 = [v37 data];
  v34 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"multiChoice" error:?];
  MEMORY[0x1E69E5920](v24);
  v25 = [v37 data];
  v33 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"linkRow" error:?];
  MEMORY[0x1E69E5920](v25);
  if ([v34 count])
  {
    v20 = [v36 cliUtilities];
    v19 = [v36 configuration];
    v18 = [v34 firstObject];
    v17 = [v37 httpResponse];
    [v20 updateConfiguration:v19 fromXMLAttributes:v18 response:?];
    MEMORY[0x1E69E5920](v17);
    MEMORY[0x1E69E5920](v18);
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v20);
    [(AKAccountRecoveryStepVerifyPhoneNumber *)v39 _sendSMSCodeWithModel:v36 completion:v35];
  }

  else if ([v33 count])
  {
    v32 = [(AKAccountRecoveryStepVerifyPhoneNumber *)v39 _matchingAttributesWithPhoneNumber:location[0] linkRowElements:v33];
    if (v32)
    {
      v16 = [v36 cliUtilities];
      v15 = [v36 configuration];
      v14 = [v37 httpResponse];
      [v16 updateConfiguration:v15 fromXMLAttributes:v32 response:?];
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](v15);
      MEMORY[0x1E69E5920](v16);
      [(AKAccountRecoveryStepVerifyPhoneNumber *)v39 _sendSMSCodeWithModel:v36 completion:v35];
    }

    else
    {
      v31 = _AKLogSystem();
      v30 = 2;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        log = v31;
        type = v30;
        __os_log_helper_16_0_0(v29);
        _os_log_debug_impl(&dword_193225000, log, type, "Failed phone number verification step with unexpected data", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
      if (v35)
      {
        v10 = v35;
        v11 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
        (*(v10 + 2))(v10, 0, 0, 0);
        MEMORY[0x1E69E5920](v11);
      }
    }

    objc_storeStrong(&v32, 0);
  }

  else
  {
    v28 = _AKLogSystem();
    v27 = 2;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v8 = v28;
      v9 = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_debug_impl(&dword_193225000, v8, v9, "Failed phone number verification step with unexpected data", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    if (v35)
    {
      v6 = v35;
      v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
      (*(v6 + 2))(v6, 0, 0, 0);
      MEMORY[0x1E69E5920](v7);
    }
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

- (id)_matchingAttributesWithPhoneNumber:(id)a3 linkRowElements:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  memset(__b, 0, sizeof(__b));
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [v11 countByEnumeratingWithState:__b objects:v21 count:16];
  if (v12)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v12;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(__b[1] + 8 * v8);
      v15 = [v17 objectForKey:@"label"];
      v14 = [location[0] substringFromIndex:{objc_msgSend(location[0], "length") - 4}];
      if ([v15 containsString:v14])
      {
        objc_storeStrong(&v18, v17);
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      if (v13)
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v11 countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v11);
  v5 = MEMORY[0x1E69E5928](v18);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_sendSMSCodeWithModel:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = [location[0] configuration];
  v5 = [v16 request];
  v15 = [v5 mutableCopy];
  MEMORY[0x1E69E5920](v5);
  v6 = [location[0] cliUtilities];
  [v6 signXMLRequest:v15];
  MEMORY[0x1E69E5920](v6);
  v7 = [v16 resourceLoadDelegate];
  [v7 signRequest:v15];
  MEMORY[0x1E69E5920](v7);
  v9 = [location[0] cliUtilities];
  v8 = v15;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __75__AKAccountRecoveryStepVerifyPhoneNumber__sendSMSCodeWithModel_completion___block_invoke;
  v13 = &unk_1E73D41D8;
  v14 = MEMORY[0x1E69E5928](v17);
  [v9 beginDataTaskWithRequest:v8 completionHandler:?];
  MEMORY[0x1E69E5920](v9);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __75__AKAccountRecoveryStepVerifyPhoneNumber__sendSMSCodeWithModel_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_promptForPhoneNumberWithModel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] context];
  v8 = [v7 phoneNumber];
  MEMORY[0x1E69E5920](v7);
  if (![v8 length])
  {
    AKPrint(@"Enter one of your trusted phone numbers to continue: ");
    v3 = AKReadLine(1024);
    v4 = v8;
    v8 = v3;
    MEMORY[0x1E69E5920](v4);
  }

  v6 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end