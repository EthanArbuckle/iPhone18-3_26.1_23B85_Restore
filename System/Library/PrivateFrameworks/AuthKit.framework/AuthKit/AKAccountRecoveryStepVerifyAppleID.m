@interface AKAccountRecoveryStepVerifyAppleID
- (BOOL)canProcessResponse:(id)a3;
- (id)_promptForUsernameWithModel:(id)a3;
- (void)_beginVerifyAppleIDWithResponse:(id)a3 model:(id)a4 completion:(id)a5;
- (void)_verifyAppleIDWithModel:(id)a3 completion:(id)a4;
- (void)processResponse:(id)a3 model:(id)a4 withCompletion:(id)a5;
@end

@implementation AKAccountRecoveryStepVerifyAppleID

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
  [(AKAccountRecoveryStepVerifyAppleID *)v10 _beginVerifyAppleIDWithResponse:location[0] model:v8 completion:v7];
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
  v8 = [v5 containsString:@"forgot password"];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (void)_beginVerifyAppleIDWithResponse:(id)a3 model:(id)a4 completion:(id)a5
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
    [(AKAccountRecoveryStepVerifyAppleID *)v23 _verifyAppleIDWithModel:v21 completion:v20];
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
      _os_log_debug_impl(&dword_193225000, log, type, "Failed AppleID verify step with unexpected data", v16, 2u);
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

- (void)_verifyAppleIDWithModel:(id)a3 completion:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = [(AKAccountRecoveryStepVerifyAppleID *)v28 _promptForUsernameWithModel:location[0]];
  v24 = _AKLogSystem();
  v23 = 2;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    log = v24;
    type = v23;
    __os_log_helper_16_0_0(v22);
    _os_log_debug_impl(&dword_193225000, log, type, "Verifying user entered Apple ID", v22, 2u);
  }

  objc_storeStrong(&v24, 0);
  v21 = [location[0] configuration];
  v4 = [v21 request];
  v20 = [v4 mutableCopy];
  MEMORY[0x1E69E5920](v4);
  v7 = [location[0] cliUtilities];
  v5 = v20;
  v29 = @"id";
  v30[0] = v25;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v7 signXMLRequest:v5 withPostbackDictionary:?];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  v8 = [v21 resourceLoadDelegate];
  [v8 signRequest:v20];
  MEMORY[0x1E69E5920](v8);
  v10 = [location[0] cliUtilities];
  v9 = v20;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __73__AKAccountRecoveryStepVerifyAppleID__verifyAppleIDWithModel_completion___block_invoke;
  v18 = &unk_1E73D41D8;
  v19 = MEMORY[0x1E69E5928](v26);
  [v10 beginDataTaskWithRequest:v9 completionHandler:&v14];
  MEMORY[0x1E69E5920](v10);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAccountRecoveryStepVerifyAppleID__verifyAppleIDWithModel_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
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

- (id)_promptForUsernameWithModel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] context];
  v9 = [v8 username];
  MEMORY[0x1E69E5920](v8);
  if (![v9 length])
  {
    AKPrint(@"Enter your email address or phone number: ");
    v3 = AKReadLine(1024);
    v4 = v9;
    v9 = v3;
    MEMORY[0x1E69E5920](v4);
    if (v9)
    {
      v7 = [location[0] context];
      [v7 setUsername:v9];
      MEMORY[0x1E69E5920](v7);
    }
  }

  v6 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end