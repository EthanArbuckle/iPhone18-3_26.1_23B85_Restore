@interface AKAccountRecoveryStepVerifyAppleID
- (BOOL)canProcessResponse:(id)response;
- (id)_promptForUsernameWithModel:(id)model;
- (void)_beginVerifyAppleIDWithResponse:(id)response model:(id)model completion:(id)completion;
- (void)_verifyAppleIDWithModel:(id)model completion:(id)completion;
- (void)processResponse:(id)response model:(id)model withCompletion:(id)completion;
@end

@implementation AKAccountRecoveryStepVerifyAppleID

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
  [(AKAccountRecoveryStepVerifyAppleID *)selfCopy _beginVerifyAppleIDWithResponse:location[0] model:v8 completion:v7];
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
  v9 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"navigationBar" error:?];
  MEMORY[0x1E69E5920](data);
  firstObject = [v9 firstObject];
  v6 = [firstObject objectForKeyedSubscript:@"title"];
  lowercaseString = [v6 lowercaseString];
  v8 = [lowercaseString containsString:@"forgot password"];
  MEMORY[0x1E69E5920](lowercaseString);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](firstObject);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (void)_beginVerifyAppleIDWithResponse:(id)response model:(id)model completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v21 = 0;
  objc_storeStrong(&v21, model);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  data = [location[0] data];
  v19 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"multiChoice" error:?];
  MEMORY[0x1E69E5920](data);
  if ([v19 count] == 1)
  {
    cliUtilities = [v21 cliUtilities];
    configuration = [v21 configuration];
    firstObject = [v19 firstObject];
    httpResponse = [location[0] httpResponse];
    [cliUtilities updateConfiguration:configuration fromXMLAttributes:firstObject response:?];
    MEMORY[0x1E69E5920](httpResponse);
    MEMORY[0x1E69E5920](firstObject);
    MEMORY[0x1E69E5920](configuration);
    MEMORY[0x1E69E5920](cliUtilities);
    [(AKAccountRecoveryStepVerifyAppleID *)selfCopy _verifyAppleIDWithModel:v21 completion:v20];
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

- (void)_verifyAppleIDWithModel:(id)model completion:(id)completion
{
  v30[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  v25 = [(AKAccountRecoveryStepVerifyAppleID *)selfCopy _promptForUsernameWithModel:location[0]];
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
  configuration = [location[0] configuration];
  request = [configuration request];
  v20 = [request mutableCopy];
  MEMORY[0x1E69E5920](request);
  cliUtilities = [location[0] cliUtilities];
  v5 = v20;
  v29 = @"id";
  v30[0] = v25;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [cliUtilities signXMLRequest:v5 withPostbackDictionary:?];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](cliUtilities);
  resourceLoadDelegate = [configuration resourceLoadDelegate];
  [resourceLoadDelegate signRequest:v20];
  MEMORY[0x1E69E5920](resourceLoadDelegate);
  cliUtilities2 = [location[0] cliUtilities];
  v9 = v20;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __73__AKAccountRecoveryStepVerifyAppleID__verifyAppleIDWithModel_completion___block_invoke;
  v18 = &unk_1E73D41D8;
  v19 = MEMORY[0x1E69E5928](v26);
  [cliUtilities2 beginDataTaskWithRequest:v9 completionHandler:&v14];
  MEMORY[0x1E69E5920](cliUtilities2);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&configuration, 0);
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

- (id)_promptForUsernameWithModel:(id)model
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  context = [location[0] context];
  username = [context username];
  MEMORY[0x1E69E5920](context);
  if (![username length])
  {
    AKPrint(@"Enter your email address or phone number: ");
    v3 = AKReadLine(1024);
    v4 = username;
    username = v3;
    MEMORY[0x1E69E5920](v4);
    if (username)
    {
      context2 = [location[0] context];
      [context2 setUsername:username];
      MEMORY[0x1E69E5920](context2);
    }
  }

  v6 = MEMORY[0x1E69E5928](username);
  objc_storeStrong(&username, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end