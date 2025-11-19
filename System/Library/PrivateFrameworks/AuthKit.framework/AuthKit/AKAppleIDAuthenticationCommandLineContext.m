@interface AKAppleIDAuthenticationCommandLineContext
+ (id)_findMatchingElementWithName:(id)a3 inElement:(id)a4;
+ (id)ruiElementsAttributesWithName:(id)a3 data:(id)a4 error:(id *)a5;
- (AKAppleIDAuthenticationCommandLineContext)init;
- (AKAppleIDAuthenticationCommandLineContext)initWithVerificationType:(int64_t)a3;
- (id)_accountCreationRequestBodyFromResponseDictionary:(id)a3 shouldIncludePhoneNumber:(BOOL)a4 shouldIncludeForSecurityCode:(BOOL)a5;
- (id)_accountDictionary;
- (id)_createContextDictionaryFromResponse:(id)a3;
- (id)_jsonPostbackDictionaryForCode:(id)a3 numberId:(id)a4;
- (id)_parseHeaderTitleForPasscodeView:(id)a3;
- (id)_parseTrustedPhoneNumberFromResponseDictionary:(id)a3;
- (id)_promptForBirthday;
- (id)_promptForCountryCode;
- (id)_promptForFirstName;
- (id)_promptForLastName;
- (id)_promptForPassword;
- (id)_promptForPhoneNumber;
- (id)_promptForUsername;
- (id)_promptForVerificationCodeWithSecureEntry:(BOOL)a3 forTrustedNumber:(id)a4;
- (id)_promptUserForSelectionWithTrustedNumbers:(id)a3;
- (id)_promptUserForTermsWithResponseDictionary:(id)a3;
- (id)_rootPath;
- (id)_xmlUIRequestForURL:(id)a3 withPostbackDictionary:(id)a4;
- (id)_xmlUIRequestForURL:(id)a3 withServerInfo:(id)a4;
- (void)_beginDataTaskWithRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)_collectAndHandleTermsAndConditionsWithResponseDictionary:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)_collectAndPostSecondFactorCodeWithRequestBody:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)_handleServerUIBirthdayVerificationWithResponseDictionary:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)_handleServerUIPasswordVerificationWithResponseDictionary:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)_handleServerUIPhoneVerificationWithResponseDictionary:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)_handleServerUISMSVerificationWithResponseDictionary:(id)a3 statusCode:(int64_t)a4 configuration:(id)a5 completion:(id)a6;
- (void)_handleServerUISecondFactorWithObjectModel:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)_handleServerUIWithDictionary:(id)a3 statusCode:(int64_t)a4 configuration:(id)a5 completion:(id)a6;
- (void)_presentServerUIWithConfiguration:(id)a3 completion:(id)a4;
- (void)_verifySecondFactorCodeWithRequest:(id)a3 completion:(id)a4;
- (void)dismissBasicLoginUIWithCompletion:(id)a3;
- (void)dismissSecondFactorUIWithCompletion:(id)a3;
- (void)dismissServerProvidedUIWithCompletion:(id)a3;
- (void)presentBasicLoginUIWithCompletion:(id)a3;
- (void)presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6;
- (void)presentSecondFactorAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6;
- (void)presentSecondFactorUIWithCompletion:(id)a3;
- (void)presentServerProvidedUIWithConfiguration:(id)a3 completion:(id)a4;
- (void)setNeedsNewAppleID:(BOOL)a3;
@end

@implementation AKAppleIDAuthenticationCommandLineContext

- (AKAppleIDAuthenticationCommandLineContext)init
{
  v4 = 0;
  v4 = [(AKAppleIDAuthenticationCommandLineContext *)self initWithVerificationType:0];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAppleIDAuthenticationCommandLineContext)initWithVerificationType:(int64_t)a3
{
  v11 = a2;
  v10 = a3;
  v12 = 0;
  v9.receiver = self;
  v9.super_class = AKAppleIDAuthenticationCommandLineContext;
  v12 = [(AKAppleIDAuthenticationContext *)&v9 init];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    v3 = objc_alloc_init(AKCommandLineUtilities);
    utility = v12->_utility;
    v12->_utility = v3;
    MEMORY[0x1E69E5920](utility);
    v12->_verificationType = v10;
    v5 = [(AKAppleIDAuthenticationCommandLineContext *)v12 _rootPath];
    rootPath = v12->_rootPath;
    v12->_rootPath = v5;
    MEMORY[0x1E69E5920](rootPath);
    if (!v12->_verificationType)
    {
      [(AKAppleIDAuthenticationContext *)v12 setSupportsPiggybacking:1];
    }
  }

  v8 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (void)setNeedsNewAppleID:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = AKAppleIDAuthenticationCommandLineContext;
  [(AKAppleIDAuthenticationContext *)&v5 setNeedsNewAppleID:a3];
  v3 = [(AKAppleIDAuthenticationCommandLineContext *)v8 _rootPath];
  rootPath = v8->_rootPath;
  v8->_rootPath = v3;
  MEMORY[0x1E69E5920](rootPath);
}

- (id)_rootPath
{
  if ([(AKAppleIDAuthenticationContext *)self needsNewAppleID])
  {
    v3 = @"/appleid/account";
  }

  else
  {
    v3 = @"/auth";
  }

  return v3;
}

- (void)presentBasicLoginUIWithCompletion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKAppleIDAuthenticationCommandLineContext *)v6 _promptForUsername];
  v3 = [(AKAppleIDAuthenticationCommandLineContext *)v6 _promptForPassword];
  (*(location[0] + 2))(location[0], v4, v3, 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissBasicLoginUIWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6
{
  obj = a4;
  v7 = a5;
  v8 = a6;
  v19 = self;
  location[1] = a2;
  v13 = location;
  v14 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = &v17;
  v17 = 0;
  objc_storeStrong(&v17, obj);
  v11 = &v16;
  v16 = 0;
  objc_storeStrong(&v16, v7);
  v10 = &v15;
  v15 = 0;
  objc_storeStrong(&v15, v8);
  v9 = [location[0] localizedDescription];
  AKPrintLine(@"Failed to validate username and password combination: %@", v9);
  MEMORY[0x1E69E5920](v9);
  [(AKAppleIDAuthenticationContext *)v19 _setPassword:v14];
  [(AKAppleIDAuthenticationCommandLineContext *)v19 presentBasicLoginUIWithCompletion:v15];
  objc_storeStrong(v10, v14);
  objc_storeStrong(v11, v14);
  objc_storeStrong(v12, v14);
  objc_storeStrong(v13, v14);
}

- (void)presentSecondFactorUIWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(AKAppleIDAuthenticationCommandLineContext *)v12 secondFactorCode];
  if (v10)
  {
    (*(location[0] + 2))(location[0], v10, 0);
    v9 = 1;
  }

  else
  {
    AKPrint(@"Enter 6 digit code: ");
    v8 = AKReadLine(10);
    if (v8)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
      [(AKAppleIDAuthenticationCommandLineContext *)v12 setSecondFactorCode:?];
      MEMORY[0x1E69E5920](v5);
      v6 = location[0];
      v7 = [(AKAppleIDAuthenticationCommandLineContext *)v12 secondFactorCode];
      v6[2]();
      MEMORY[0x1E69E5920](v7);
    }

    else
    {
      AKPrintLine(@"Failed to read code!");
      v3 = location[0];
      v4 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7012];
      v3[2](v3, 0);
      MEMORY[0x1E69E5920](v4);
    }

    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissSecondFactorUIWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6
{
  obj = a4;
  v7 = a5;
  v8 = a6;
  v19 = self;
  location[1] = a2;
  v13 = location;
  v14 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = &v17;
  v17 = 0;
  objc_storeStrong(&v17, obj);
  v11 = &v16;
  v16 = 0;
  objc_storeStrong(&v16, v7);
  v10 = &v15;
  v15 = 0;
  objc_storeStrong(&v15, v8);
  v9 = [location[0] localizedDescription];
  AKPrintLine(@"Failed to validate code: %@", v9);
  MEMORY[0x1E69E5920](v9);
  [(AKAppleIDAuthenticationCommandLineContext *)v19 presentSecondFactorUIWithCompletion:v15];
  objc_storeStrong(v10, v14);
  objc_storeStrong(v11, v14);
  objc_storeStrong(v12, v14);
  objc_storeStrong(v13, v14);
}

- (void)presentServerProvidedUIWithConfiguration:(id)a3 completion:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [location[0] requestType];
  if (v10)
  {
    if (v10 == 1)
    {
      AKPrintLine(@"IDP second factor-authentication is not supported!");
      v7 = v11;
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v7[2](v7, 0);
      MEMORY[0x1E69E5920](v8);
    }

    else
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      AKPrintLine(@"Unexpected second-factor authentication (%@)!", v4);
      MEMORY[0x1E69E5920](v4);
      v5 = v11;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v6);
    }
  }

  else
  {
    AKPrintLine(@"Requesting second-factor ServerUI...");
    [(AKAppleIDAuthenticationCommandLineContext *)v13 _presentServerUIWithConfiguration:location[0] completion:v11];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissServerProvidedUIWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentServerUIWithConfiguration:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  if ([(AKAppleIDAuthenticationContext *)v28 needsCredentialRecovery])
  {
    AKPrintLine(@"Begin iForgot password flow");
    if (!v28->_forgotPasswordController)
    {
      v4 = objc_alloc_init(AKForgotPasswordController);
      forgotPasswordController = v28->_forgotPasswordController;
      v28->_forgotPasswordController = v4;
      MEMORY[0x1E69E5920](forgotPasswordController);
    }

    v6 = [AKAccountRecoveryModel alloc];
    v25 = [(AKAccountRecoveryModel *)v6 initWithContext:v28 configuration:location[0] utilities:v28->_utility];
    [(AKAppleIDRecoveryController *)v28->_forgotPasswordController beginAccountRecoveryWithModel:v25 completion:v26];
    v24 = 1;
    objc_storeStrong(&v25, 0);
  }

  else if ([(AKAppleIDAuthenticationContext *)v28 needsPasswordChange])
  {
    AKPrintLine(@"Begin change password flow");
    if (!v28->_changePasswordController)
    {
      v7 = objc_alloc_init(AKChangePasswordController);
      changePasswordController = v28->_changePasswordController;
      v28->_changePasswordController = v7;
      MEMORY[0x1E69E5920](changePasswordController);
    }

    v9 = [AKAccountRecoveryModel alloc];
    v23 = [(AKAccountRecoveryModel *)v9 initWithContext:v28 configuration:location[0] utilities:v28->_utility];
    [(AKAppleIDRecoveryController *)v28->_changePasswordController beginAccountRecoveryWithModel:v23 completion:v26];
    v24 = 1;
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v22 = 0;
    verificationType = v28->_verificationType;
    if (verificationType)
    {
      if (verificationType == 1)
      {
        v18 = [(AKAppleIDAuthenticationCommandLineContext *)v28 utility];
        v17 = [(AKAppleIDAuthenticationCommandLineContext *)v28 rootPath];
        v10 = [(AKCommandLineUtilities *)v18 mutableJSONRequestForPath:?];
        v11 = v22;
        v22 = v10;
        MEMORY[0x1E69E5920](v11);
        MEMORY[0x1E69E5920](v17);
        MEMORY[0x1E69E5920](v18);
        v21 = _AKLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v16 = [location[0] request];
          __os_log_helper_16_2_1_8_64(v29, v16);
          _os_log_error_impl(&dword_193225000, v21, OS_LOG_TYPE_ERROR, "request: %@", v29, 0xCu);
          MEMORY[0x1E69E5920](v16);
        }

        objc_storeStrong(&v21, 0);
      }

      else
      {
        AKPrintLine(@"Unknown verification type");
      }
    }

    else
    {
      v15 = [location[0] request];
      v12 = [v15 mutableCopy];
      v13 = v22;
      v22 = v12;
      MEMORY[0x1E69E5920](v13);
      MEMORY[0x1E69E5920](v15);
    }

    v14 = [location[0] resourceLoadDelegate];
    [v14 signRequest:v22];
    MEMORY[0x1E69E5920](v14);
    [(AKAppleIDAuthenticationCommandLineContext *)v28 _beginDataTaskWithRequest:v22 configuration:location[0] completion:v26];
    objc_storeStrong(&v22, 0);
    v24 = 0;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_handleServerUISecondFactorWithObjectModel:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38 = 0;
  objc_storeStrong(&v38, a5);
  v31 = MEMORY[0x1E69E9820];
  v32 = -1073741824;
  v33 = 0;
  v34 = __113__AKAppleIDAuthenticationCommandLineContext__handleServerUISecondFactorWithObjectModel_configuration_completion___block_invoke;
  v35 = &unk_1E73D92F8;
  v36 = MEMORY[0x1E69E5928](v38);
  v37 = MEMORY[0x193B165F0](&v31);
  v15 = [location[0] allPages];
  v30 = [v15 firstObject];
  MEMORY[0x1E69E5920](v15);
  if (v30)
  {
    v28 = [v30 passcodeViewOM];
    if (v28)
    {
      v27 = [v28 identifier];
      if (v27)
      {
        v11 = [v28 attributes];
        v26 = [v11 objectForKeyedSubscript:@"url"];
        MEMORY[0x1E69E5920](v11);
        if (v26)
        {
          v10 = [v28 attributes];
          v25 = [v10 objectForKeyedSubscript:@"httpMethod"];
          MEMORY[0x1E69E5920](v10);
          if (v25)
          {
            v24 = [v30 navTitle];
            if (v24)
            {
              AKPrintLine(@"%@", v24);
            }

            v23 = [(AKAppleIDAuthenticationCommandLineContext *)v41 _parseHeaderTitleForPasscodeView:v28];
            if (v23)
            {
              AKPrint(v23);
            }

            v6 = [v28 attributes];
            v5 = [v6 objectForKeyedSubscript:@"secure"];
            v7 = [v5 BOOLValue];
            MEMORY[0x1E69E5920](v5);
            MEMORY[0x1E69E5920](v6);
            v22 = v7;
            v21 = [(AKAppleIDAuthenticationCommandLineContext *)v41 _promptForVerificationCodeWithSecureEntry:v7 & 1 forTrustedNumber:?];
            v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v20 setObject:v21 forKeyedSubscript:v27];
            v8 = [location[0] serverInfo];
            [v20 setObject:? forKeyedSubscript:?];
            MEMORY[0x1E69E5920](v8);
            v19 = [location[0] absoluteURLWithString:v26];
            v18 = [(AKAppleIDAuthenticationCommandLineContext *)v41 _xmlUIRequestForURL:v19 withPostbackDictionary:v20];
            [v18 setHTTPMethod:v25];
            v9 = [v39 resourceLoadDelegate];
            [v9 signRequest:v18];
            MEMORY[0x1E69E5920](v9);
            [(AKAppleIDAuthenticationCommandLineContext *)v41 _verifySecondFactorCodeWithRequest:v18 completion:v38];
            objc_storeStrong(&v18, 0);
            objc_storeStrong(&v19, 0);
            objc_storeStrong(&v20, 0);
            objc_storeStrong(&v21, 0);
            objc_storeStrong(&v23, 0);
            objc_storeStrong(&v24, 0);
            v29 = 0;
          }

          else
          {
            (*(v37 + 2))(v37, @"missing HTTP method");
            v29 = 1;
          }

          objc_storeStrong(&v25, 0);
        }

        else
        {
          (*(v37 + 2))(v37, @"missing response URL");
          v29 = 1;
        }

        objc_storeStrong(&v26, 0);
      }

      else
      {
        (*(v37 + 2))(v37, @"missing passcode identifier");
        v29 = 1;
      }

      objc_storeStrong(&v27, 0);
    }

    else
    {
      (*(v37 + 2))(v37, @"missing passcode view");
      v29 = 1;
    }

    objc_storeStrong(&v28, 0);
  }

  else
  {
    v14 = [location[0] primaryAlert];
    MEMORY[0x1E69E5920](v14);
    if (v14)
    {
      v13 = [location[0] primaryAlert];
      v12 = [v13 message];
      AKPrintLine(v12);
      MEMORY[0x1E69E5920](v12);
      MEMORY[0x1E69E5920](v13);
    }

    (*(v37 + 2))(v37, @"missing page");
    v29 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

void __113__AKAppleIDAuthenticationCommandLineContext__handleServerUISecondFactorWithObjectModel_configuration_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  AKPrintLine(@"Unsupported object model found: %@", location[0]);
  v3 = a1[4];
  v4 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
  (*(v3 + 16))(v3, 0);
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
}

- (void)_handleServerUIWithDictionary:(id)a3 statusCode:(int64_t)a4 configuration:(id)a5 completion:(id)a6
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  if ([(AKAppleIDAuthenticationContext *)v21 needsNewAppleID])
  {
    if (v19 < 200 || v19 >= 300)
    {
      v12 = [(AKAppleIDAuthenticationCommandLineContext *)v21 utility];
      v16 = [(AKCommandLineUtilities *)v12 errorFromServerResponseBody:location[0]];
      MEMORY[0x1E69E5920](v12);
      if (v16)
      {
        v11 = [v16 userInfo];
        v10 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
        v9 = [v16 userInfo];
        v8 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
        AKPrintError(@"Error creating an account: %@.\n%@", v10, v8);
        MEMORY[0x1E69E5920](v8);
        MEMORY[0x1E69E5920](v9);
        MEMORY[0x1E69E5920](v10);
        MEMORY[0x1E69E5920](v11);
      }

      v6 = v17;
      v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7029 underlyingError:v16];
      v6[2]();
      MEMORY[0x1E69E5920](v7);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      [(AKAppleIDAuthenticationCommandLineContext *)v21 _handleServerUIBirthdayVerificationWithResponseDictionary:location[0] configuration:v18 completion:v17];
    }
  }

  else
  {
    [(AKAppleIDAuthenticationCommandLineContext *)v21 _handleServerUISMSVerificationWithResponseDictionary:location[0] statusCode:v19 configuration:v18 completion:v17];
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_verifySecondFactorCodeWithRequest:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  AKPrintLine(@"Verifying code…");
  v6 = +[AKURLSession sharedURLSession];
  v5 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __91__AKAppleIDAuthenticationCommandLineContext__verifySecondFactorCodeWithRequest_completion___block_invoke;
  v12 = &unk_1E73D41D8;
  v13 = MEMORY[0x1E69E5928](v14);
  v4 = [v6 beginDataTaskWithRequest:v5 completionHandler:&v8];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __91__AKAppleIDAuthenticationCommandLineContext__verifySecondFactorCodeWithRequest_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10[1] = a1;
  v4 = objc_opt_class();
  v10[0] = _AKSafeCast_26(v4, v12);
  if (v10[0] || v11)
  {
    (*(a1[4] + 16))();
  }

  else
  {
    v5 = a1[4];
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
    (*(v5 + 16))(v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleServerUIBirthdayVerificationWithResponseDictionary:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = [(AKAppleIDAuthenticationCommandLineContext *)v31 _accountCreationRequestBodyFromResponseDictionary:location[0] shouldIncludePhoneNumber:0 shouldIncludeForSecurityCode:0];
  v11 = [(AKAppleIDAuthenticationCommandLineContext *)v31 rootPath];
  v26 = [(NSString *)v11 stringByAppendingPathComponent:@"/birthday"];
  MEMORY[0x1E69E5920](v11);
  v25 = _AKLogSystem();
  v24 = 2;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    log = v25;
    type = v24;
    __os_log_helper_16_0_0(v23);
    _os_log_debug_impl(&dword_193225000, log, type, "Providing birthday info.", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  AKPrintLine(@"☾ Verifying Birthday with server…");
  objc_initWeak(&from, v31);
  v8 = [(AKAppleIDAuthenticationCommandLineContext *)v31 utility];
  v5 = v26;
  v6 = v27;
  v7 = v29;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __128__AKAppleIDAuthenticationCommandLineContext__handleServerUIBirthdayVerificationWithResponseDictionary_configuration_completion___block_invoke;
  v18 = &unk_1E73D9320;
  objc_copyWeak(v21, &from);
  v19 = MEMORY[0x1E69E5928](v29);
  v20 = MEMORY[0x1E69E5928](v28);
  [(AKCommandLineUtilities *)v8 createAndExecuteRequestForPath:v5 requestBody:v6 httpMethod:@"POST" configuration:v7 completion:&v14];
  MEMORY[0x1E69E5920](v8);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __128__AKAppleIDAuthenticationCommandLineContext__handleServerUIBirthdayVerificationWithResponseDictionary_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  if (v8 || !v9)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _handleServerUIPasswordVerificationWithResponseDictionary:v9 configuration:*(a1 + 32) completion:*(a1 + 40)];
    MEMORY[0x1E69E5920](WeakRetained);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleServerUIPasswordVerificationWithResponseDictionary:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = [(AKAppleIDAuthenticationCommandLineContext *)v31 _accountCreationRequestBodyFromResponseDictionary:location[0] shouldIncludePhoneNumber:0 shouldIncludeForSecurityCode:0];
  v11 = [(AKAppleIDAuthenticationCommandLineContext *)v31 rootPath];
  v26 = [(NSString *)v11 stringByAppendingPathComponent:@"/password"];
  MEMORY[0x1E69E5920](v11);
  v25 = _AKLogSystem();
  v24 = 2;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    log = v25;
    type = v24;
    __os_log_helper_16_0_0(v23);
    _os_log_debug_impl(&dword_193225000, log, type, "Providing password info.", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  AKPrintLine(@"⊛ Verifying Password with server…");
  objc_initWeak(&from, v31);
  v8 = [(AKAppleIDAuthenticationCommandLineContext *)v31 utility];
  v5 = v26;
  v6 = v27;
  v7 = v29;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __128__AKAppleIDAuthenticationCommandLineContext__handleServerUIPasswordVerificationWithResponseDictionary_configuration_completion___block_invoke;
  v18 = &unk_1E73D9320;
  objc_copyWeak(v21, &from);
  v19 = MEMORY[0x1E69E5928](v29);
  v20 = MEMORY[0x1E69E5928](v28);
  [(AKCommandLineUtilities *)v8 createAndExecuteRequestForPath:v5 requestBody:v6 httpMethod:@"POST" configuration:v7 completion:&v14];
  MEMORY[0x1E69E5920](v8);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __128__AKAppleIDAuthenticationCommandLineContext__handleServerUIPasswordVerificationWithResponseDictionary_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  if (v8 || !v9)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _handleServerUIPhoneVerificationWithResponseDictionary:v9 configuration:*(a1 + 32) completion:*(a1 + 40)];
    MEMORY[0x1E69E5920](WeakRetained);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleServerUIPhoneVerificationWithResponseDictionary:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  objc_initWeak(&v25, v29);
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __125__AKAppleIDAuthenticationCommandLineContext__handleServerUIPhoneVerificationWithResponseDictionary_configuration_completion___block_invoke;
  v20 = &unk_1E73D9320;
  objc_copyWeak(&v23, &v25);
  v21 = MEMORY[0x1E69E5928](v27);
  v22 = MEMORY[0x1E69E5928](v26);
  v24 = MEMORY[0x193B165F0](&v16);
  v15 = [(AKAppleIDAuthenticationCommandLineContext *)v29 _accountCreationRequestBodyFromResponseDictionary:location[0] shouldIncludePhoneNumber:1 shouldIncludeForSecurityCode:0];
  v8 = [(AKAppleIDAuthenticationCommandLineContext *)v29 rootPath];
  v14 = [(NSString *)v8 stringByAppendingPathComponent:@"/verify/phone"];
  MEMORY[0x1E69E5920](v8);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    log = oslog;
    v7 = type;
    __os_log_helper_16_0_0(v11);
    _os_log_debug_impl(&dword_193225000, log, v7, "Providing Phone number info.", v11, 2u);
  }

  objc_storeStrong(&oslog, 0);
  AKPrintLine(@"☏ Verifying Phone Number with server…");
  v5 = [(AKAppleIDAuthenticationCommandLineContext *)v29 utility];
  [(AKCommandLineUtilities *)v5 createAndExecuteRequestForPath:v14 requestBody:v15 httpMethod:@"PUT" configuration:v27 completion:v24];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

void __125__AKAppleIDAuthenticationCommandLineContext__handleServerUIPhoneVerificationWithResponseDictionary_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained((a1 + 48));
  if (!v12[0] || v13)
  {
    v7 = [v13 userInfo];
    v6 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
    v5 = [v13 userInfo];
    v4 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
    AKPrintError(@"Error Validating phone number: %@\n%@", v6, v4);
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [v12[0] _accountCreationRequestBodyFromResponseDictionary:v14 shouldIncludePhoneNumber:1 shouldIncludeForSecurityCode:1];
    [v12[0] _collectAndPostSecondFactorCodeWithRequestBody:v11 configuration:*(a1 + 32) completion:*(a1 + 40)];
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_collectAndHandleTermsAndConditionsWithResponseDictionary:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  objc_initWeak(&v26, v30);
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __128__AKAppleIDAuthenticationCommandLineContext__collectAndHandleTermsAndConditionsWithResponseDictionary_configuration_completion___block_invoke;
  v21 = &unk_1E73D9320;
  objc_copyWeak(&v24, &v26);
  v22 = MEMORY[0x1E69E5928](v30);
  v23 = MEMORY[0x1E69E5928](v27);
  v25 = MEMORY[0x193B165F0](&v17);
  v10 = [(AKAppleIDAuthenticationCommandLineContext *)v30 _accountCreationRequestBodyFromResponseDictionary:location[0] shouldIncludePhoneNumber:1 shouldIncludeForSecurityCode:1];
  v16 = [v10 mutableCopy];
  MEMORY[0x1E69E5920](v10);
  v9 = [(AKAppleIDAuthenticationCommandLineContext *)v30 _promptUserForTermsWithResponseDictionary:location[0]];
  [v16 addEntriesFromDictionary:?];
  MEMORY[0x1E69E5920](v9);
  v15 = _AKLogSystem();
  v14 = 2;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    log = v15;
    type = v14;
    __os_log_helper_16_0_0(v13);
    _os_log_debug_impl(&dword_193225000, log, type, "Finishing up Apple ID creation flow.", v13, 2u);
  }

  objc_storeStrong(&v15, 0);
  AKPrintLine(@"✓ Final verification with server…");
  v6 = [(AKAppleIDAuthenticationCommandLineContext *)v30 utility];
  v5 = [(AKAppleIDAuthenticationCommandLineContext *)v30 rootPath];
  [AKCommandLineUtilities createAndExecuteRequestForPath:v6 requestBody:"createAndExecuteRequestForPath:requestBody:httpMethod:configuration:completion:" httpMethod:? configuration:? completion:?];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void __128__AKAppleIDAuthenticationCommandLineContext__collectAndHandleTermsAndConditionsWithResponseDictionary_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 48));
  if (!v15[0] || v16)
  {
    if (v16)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v4 = *(a1 + 40);
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      (*(v4 + 16))(v4, 0);
      MEMORY[0x1E69E5920](v5);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v17];
    v6 = [*(a1 + 32) _password];
    [v14 setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v6);
    v7 = [*(a1 + 32) username];
    [v14 setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v7);
    v9 = *(a1 + 40);
    v8 = location[0];
    v10 = [v14 copy];
    (*(v9 + 16))(v9, v8);
    MEMORY[0x1E69E5920](v10);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleServerUISMSVerificationWithResponseDictionary:(id)a3 statusCode:(int64_t)a4 configuration:(id)a5 completion:(id)a6
{
  v88 = *MEMORY[0x1E69E9840];
  v86 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v84 = a4;
  v83 = 0;
  objc_storeStrong(&v83, a5);
  v82 = 0;
  objc_storeStrong(&v82, a6);
  v73 = MEMORY[0x1E69E9820];
  v74 = -1073741824;
  v75 = 0;
  v76 = __134__AKAppleIDAuthenticationCommandLineContext__handleServerUISMSVerificationWithResponseDictionary_statusCode_configuration_completion___block_invoke;
  v77 = &unk_1E73D9348;
  v80 = MEMORY[0x1E69E5928](v82);
  v78 = MEMORY[0x1E69E5928](v86);
  v79 = MEMORY[0x1E69E5928](v83);
  v81 = MEMORY[0x193B165F0](&v73);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    log = oslog;
    v40 = type;
    __os_log_helper_16_0_0(v70);
    _os_log_debug_impl(&dword_193225000, log, v40, "Selecting trusted numbers", v70, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
  memset(__b, 0, sizeof(__b));
  v37 = [location[0] objectForKeyedSubscript:@"trustedPhoneNumbers"];
  v38 = [v37 countByEnumeratingWithState:__b objects:v87 count:16];
  if (v38)
  {
    v34 = *__b[2];
    v35 = 0;
    v36 = v38;
    while (1)
    {
      v33 = v35;
      if (*__b[2] != v34)
      {
        objc_enumerationMutation(v37);
      }

      v68 = *(__b[1] + 8 * v35);
      v6 = [AKTrustedPhoneNumber alloc];
      v66 = [(AKTrustedPhoneNumber *)v6 initWithJSONDictionary:v68];
      v30 = v66;
      v31 = v69;
      v32 = [(AKTrustedPhoneNumber *)v66 identifier];
      [v31 setObject:v30 forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v32);
      objc_storeStrong(&v66, 0);
      ++v35;
      if (v33 + 1 >= v36)
      {
        v35 = 0;
        v36 = [v37 countByEnumeratingWithState:__b objects:v87 count:16];
        if (!v36)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v37);
  v65 = [v69 count] > 1;
  v64 = 0;
  if (v65)
  {
    AKPrintLine(@"Multiple trusted numbers found!\n");
    v7 = [(AKAppleIDAuthenticationCommandLineContext *)v86 _promptUserForSelectionWithTrustedNumbers:v69];
    v8 = v64;
    v64 = v7;
    MEMORY[0x1E69E5920](v8);
    if (!v64)
    {
      v63 = _AKLogSystem();
      v62 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v28 = v63;
        v29 = v62;
        __os_log_helper_16_0_0(v61);
        _os_log_error_impl(&dword_193225000, v28, v29, "No trusted number selected", v61, 2u);
      }

      objc_storeStrong(&v63, 0);
      v26 = v82;
      v27 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7012];
      v26[2](v26, 0);
      MEMORY[0x1E69E5920](v27);
      v60 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v59 = _AKLogSystem();
    v58 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v59;
      v25 = v58;
      __os_log_helper_16_0_0(v57);
      _os_log_impl(&dword_193225000, v24, v25, "Server indicates we only have one trusted number, lets use that.", v57, 2u);
    }

    objc_storeStrong(&v59, 0);
    v21 = v69;
    v23 = [v69 allKeys];
    v22 = [v23 firstObject];
    v9 = [v21 objectForKey:?];
    v10 = v64;
    v64 = v9;
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v23);
  }

  if (v65 || v84 >= 200 && v84 < 300)
  {
    v16 = [(AKAppleIDAuthenticationCommandLineContext *)v86 rootPath];
    v56 = [(NSString *)v16 stringByAppendingPathComponent:@"/verify/phone"];
    MEMORY[0x1E69E5920](v16);
    v17 = [(AKAppleIDAuthenticationCommandLineContext *)v86 utility];
    v55 = [(AKCommandLineUtilities *)v17 mutableJSONRequestForPath:v56];
    MEMORY[0x1E69E5920](v17);
    v18 = v86;
    v19 = [v64 identifier];
    v54 = [(AKAppleIDAuthenticationCommandLineContext *)v18 _jsonPostbackDictionaryForCode:0 numberId:?];
    MEMORY[0x1E69E5920](v19);
    [v55 ak_setJSONBodyWithParameters:v54];
    [v55 setHTTPMethod:@"PUT"];
    v20 = [v83 resourceLoadDelegate];
    [v20 signRequest:v55];
    MEMORY[0x1E69E5920](v20);
    v53 = _AKLogSystem();
    v52 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v14 = v53;
      v15 = v52;
      __os_log_helper_16_0_0(v51);
      _os_log_debug_impl(&dword_193225000, v14, v15, "Sending selected trusted number", v51, 2u);
    }

    objc_storeStrong(&v53, 0);
    v13 = +[AKURLSession sharedURLSession];
    v12 = v55;
    v44 = MEMORY[0x1E69E9820];
    v45 = -1073741824;
    v46 = 0;
    v47 = __134__AKAppleIDAuthenticationCommandLineContext__handleServerUISMSVerificationWithResponseDictionary_statusCode_configuration_completion___block_invoke_137;
    v48 = &unk_1E73D8140;
    v50 = MEMORY[0x1E69E5928](v81);
    v49 = MEMORY[0x1E69E5928](v64);
    v11 = [v13 beginDataTaskWithRequest:v12 completionHandler:&v44];
    MEMORY[0x1E69E5920](v13);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v50, 0);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v56, 0);
  }

  else
  {
    (*(v81 + 2))(v81, v64, 0);
  }

  v60 = 0;
LABEL_26:
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __134__AKAppleIDAuthenticationCommandLineContext__handleServerUISMSVerificationWithResponseDictionary_statusCode_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19[1] = a1;
  if (v20)
  {
    v19[0] = _AKLogSystem();
    v18 = 16;
    if (os_log_type_enabled(v19[0], OS_LOG_TYPE_ERROR))
    {
      log = v19[0];
      v9 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_error_impl(&dword_193225000, log, v9, "Error, not attempting to collect second factor code", v17, 2u);
    }

    objc_storeStrong(v19, 0);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_193225000, v6, type, "Prompting for second factor code", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v13 = [*(a1 + 32) _promptForVerificationCodeWithSecureEntry:0 forTrustedNumber:location[0]];
    v4 = *(a1 + 32);
    v3 = v13;
    v5 = [location[0] identifier];
    v12 = [v4 _jsonPostbackDictionaryForCode:v3 numberId:?];
    MEMORY[0x1E69E5920](v5);
    [*(a1 + 32) _collectAndPostSecondFactorCodeWithRequestBody:v12 configuration:*(a1 + 40) completion:*(a1 + 48)];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __134__AKAppleIDAuthenticationCommandLineContext__handleServerUISMSVerificationWithResponseDictionary_statusCode_configuration_completion___block_invoke_137(NSObject *a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v12, v10);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Selected trusted number response %@", v12, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  isa = a1[4].isa;
  (*(a1[5].isa + 2))();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_collectAndPostSecondFactorCodeWithRequestBody:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  objc_initWeak(&v21, v25);
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __117__AKAppleIDAuthenticationCommandLineContext__collectAndPostSecondFactorCodeWithRequestBody_configuration_completion___block_invoke;
  v14 = &unk_1E73D9370;
  objc_copyWeak(&v19, &v21);
  v15 = MEMORY[0x1E69E5928](v25);
  v16 = MEMORY[0x1E69E5928](location[0]);
  v17 = MEMORY[0x1E69E5928](v23);
  v18 = MEMORY[0x1E69E5928](v22);
  v20 = MEMORY[0x193B165F0](&v10);
  v6 = [(AKAppleIDAuthenticationCommandLineContext *)v25 rootPath];
  v9 = [(NSString *)v6 stringByAppendingPathComponent:@"/verify/phone/securitycode"];
  MEMORY[0x1E69E5920](v6);
  AKPrintLine(@"Verifying code...");
  v5 = [(AKAppleIDAuthenticationCommandLineContext *)v25 utility];
  [(AKCommandLineUtilities *)v5 createAndExecuteRequestForPath:v9 requestBody:location[0] httpMethod:@"POST" configuration:v23 completion:v20];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void __117__AKAppleIDAuthenticationCommandLineContext__collectAndPostSecondFactorCodeWithRequestBody_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 64));
  if (v13[0] && ([*(a1 + 32) needsNewAppleID] & 1) != 0)
  {
    if ([v14 ak_isServiceError])
    {
      v9 = [v14 userInfo];
      v8 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
      v7 = [v14 userInfo];
      v6 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
      AKPrintError(@"ᐞᐞᐞ %@\n%@", v8, v6);
      MEMORY[0x1E69E5920](v6);
      MEMORY[0x1E69E5920](v7);
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v9);
      [v13[0] setSmsSecurityCode:0];
      [v13[0] _handleServerUIPhoneVerificationWithResponseDictionary:*(a1 + 40) configuration:*(a1 + 48) completion:*(a1 + 56)];
    }

    else
    {
      [v13[0] _collectAndHandleTermsAndConditionsWithResponseDictionary:v15 configuration:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  else if (location[0] || v14)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
    (*(v4 + 16))(v4, 0);
    MEMORY[0x1E69E5920](v5);
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)_promptUserForSelectionWithTrustedNumbers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_53];
  AKPrintLine(@"Please select a trusted number: ");
  v5 = MEMORY[0x1E696AD98];
  v6 = AKReadLine(10);
  v11 = [v5 numberWithInt:{objc_msgSend(v6, "intValue")}];
  MEMORY[0x1E69E5920](v6);
  v7 = [location[0] allKeys];
  v8 = [v7 containsObject:v11];
  MEMORY[0x1E69E5920](v7);
  if (v8)
  {
    v13 = [location[0] objectForKey:v11];
    v10 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v14, v11, location[0]);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Invalid trusted number selection %@ - %@", v14, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v13 = 0;
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v13;

  return v3;
}

void __87__AKAppleIDAuthenticationCommandLineContext__promptUserForSelectionWithTrustedNumbers___block_invoke(void *a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a1;
  obj = a3;
  v5 = a4;
  location[1] = a1;
  v11 = location;
  v12 = 0;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = &v15;
  v15 = 0;
  objc_storeStrong(&v15, obj);
  v14 = v5;
  v13 = v6;
  v9 = [v15 identifier];
  v8 = [v15 numberWithDialCode];
  v7 = [v15 pushMode];
  AKPrintLine(@"%@. %@ via %@", v9, v8, v7);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  objc_storeStrong(v10, v12);
  objc_storeStrong(v11, v12);
}

- (id)_parseTrustedPhoneNumberFromResponseDictionary:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  v10 = [location[0] objectForKeyedSubscript:@"phoneNumberVerification"];
  v9 = [v10 objectForKeyedSubscript:@"phoneNumber"];
  if (v9)
  {
    v3 = [[AKTrustedPhoneNumber alloc] initWithJSONDictionary:v9];
    v4 = v11;
    v11 = v3;
    MEMORY[0x1E69E5920](v4);
    v8 = [(AKTrustedPhoneNumber *)v11 number];
    MEMORY[0x1E69E5920](v8);
    if (v8)
    {
      v7 = [(AKTrustedPhoneNumber *)v11 number];
      [(AKAppleIDAuthenticationCommandLineContext *)v13 setPhoneNumber:?];
      MEMORY[0x1E69E5920](v7);
    }
  }

  v6 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_accountCreationRequestBodyFromResponseDictionary:(id)a3 shouldIncludePhoneNumber:(BOOL)a4 shouldIncludeForSecurityCode:(BOOL)a5
{
  v40[2] = *MEMORY[0x1E69E9840];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = a4;
  v25 = a5;
  v24 = [(AKAppleIDAuthenticationCommandLineContext *)v28 _accountDictionary];
  v23 = [(AKAppleIDAuthenticationCommandLineContext *)v28 _createContextDictionaryFromResponse:location[0]];
  v39[0] = @"account";
  v40[0] = v24;
  v39[1] = @"createContext";
  v40[1] = v23;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v22 = [v16 mutableCopy];
  MEMORY[0x1E69E5920](v16);
  if (a4)
  {
    v37[0] = @"phoneNumber";
    v35[0] = @"number";
    v15 = [(AKAppleIDAuthenticationCommandLineContext *)v28 _promptForPhoneNumber];
    v36[0] = v15;
    v35[1] = @"countryCode";
    v14 = [(AKAppleIDAuthenticationCommandLineContext *)v28 _promptForCountryCode];
    v36[1] = v14;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:?];
    v38[0] = v13;
    v37[1] = @"mode";
    v38[1] = @"sms";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v21 = [v12 mutableCopy];
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v14);
    MEMORY[0x1E69E5920](v15);
    if (v25)
    {
      v20 = [(AKAppleIDAuthenticationCommandLineContext *)v28 _parseTrustedPhoneNumberFromResponseDictionary:location[0]];
      v19 = [(AKAppleIDAuthenticationCommandLineContext *)v28 _promptForVerificationCodeWithSecureEntry:0 forTrustedNumber:v20];
      v33 = @"securityCode";
      v31 = @"code";
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        v11 = &stru_1F0781300;
      }

      v32 = v11;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:?];
      v34 = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      [v21 addEntriesFromDictionary:?];
      MEMORY[0x1E69E5920](v9);
      MEMORY[0x1E69E5920](v10);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
    }

    v7 = v22;
    v29 = @"phoneNumberVerification";
    v30 = v21;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v7 addEntriesFromDictionary:?];
    MEMORY[0x1E69E5920](v8);
    objc_storeStrong(&v21, 0);
  }

  v6 = MEMORY[0x1E69E5928](v22);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_createContextDictionaryFromResponse:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] objectForKeyedSubscript:@"createContext"];
  v9[0] = @"token";
  v6 = [v7 objectForKeyedSubscript:@"token"];
  v10[0] = v6;
  v9[1] = @"type";
  v4 = [v7 objectForKeyedSubscript:@"type"];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_accountDictionary
{
  v9[2] = self;
  v9[1] = a2;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __63__AKAppleIDAuthenticationCommandLineContext__accountDictionary__block_invoke;
  v8 = &unk_1E73D34C0;
  v9[0] = MEMORY[0x1E69E5928](self);
  v11 = &_accountDictionary_onceToken;
  location = 0;
  objc_storeStrong(&location, &v4);
  if (*v11 != -1)
  {
    dispatch_once(v11, location);
  }

  objc_storeStrong(&location, 0);
  v3 = MEMORY[0x1E69E5928](_accountDictionary_accountDictionary);
  objc_storeStrong(v9, 0);

  return v3;
}

void __63__AKAppleIDAuthenticationCommandLineContext__accountDictionary__block_invoke(id *a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = [a1[4] _promptForUsername];
  v9 = [a1[4] _promptForPassword];
  v8 = [a1[4] _promptForFirstName];
  v7 = [a1[4] _promptForLastName];
  v6 = [a1[4] _promptForBirthday];
  v15[0] = @"name";
  v16[0] = v10[0];
  v15[1] = @"password";
  v16[1] = v9;
  v15[2] = @"person";
  v13[0] = @"birthday";
  v14[0] = v6;
  v13[1] = @"name";
  v11[0] = @"firstName";
  v12[0] = v8;
  v11[1] = @"lastName";
  v12[1] = v7;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:?];
  v14[1] = v5;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[2] = v4;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v2 = _accountDictionary_accountDictionary;
  _accountDictionary_accountDictionary = v1;
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_beginDataTaskWithRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v7 = +[AKURLSession sharedURLSession];
  v6 = location[0];
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __96__AKAppleIDAuthenticationCommandLineContext__beginDataTaskWithRequest_configuration_completion___block_invoke;
  v14 = &unk_1E73D93E0;
  v15 = MEMORY[0x1E69E5928](v22);
  v16 = MEMORY[0x1E69E5928](v20);
  v18 = MEMORY[0x1E69E5928](v19);
  v17 = MEMORY[0x1E69E5928](location[0]);
  v5 = [v7 beginDataTaskWithRequest:v6 completionHandler:&v10];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __96__AKAppleIDAuthenticationCommandLineContext__beginDataTaskWithRequest_configuration_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24[1] = a1;
  v24[0] = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v24[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v28, v26);
    _os_log_debug_impl(&dword_193225000, v24[0], v23, "Received response %@", v28, 0xCu);
  }

  objc_storeStrong(v24, 0);
  if (location[0])
  {
    v7 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
    queue = v7;
    v12 = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __96__AKAppleIDAuthenticationCommandLineContext__beginDataTaskWithRequest_configuration_completion___block_invoke_155;
    v16 = &unk_1E73D93B8;
    v17 = MEMORY[0x1E69E5928](a1[4]);
    v18 = MEMORY[0x1E69E5928](location[0]);
    v19 = MEMORY[0x1E69E5928](v26);
    v20 = MEMORY[0x1E69E5928](a1[5]);
    v22 = MEMORY[0x1E69E5928](a1[7]);
    v21 = MEMORY[0x1E69E5928](a1[6]);
    dispatch_async(queue, &v12);
    MEMORY[0x1E69E5920](queue);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  else if (v25)
  {
    (*(a1[7] + 16))();
  }

  else
  {
    v5 = a1[7];
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
    (*(v5 + 16))(v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __96__AKAppleIDAuthenticationCommandLineContext__beginDataTaskWithRequest_configuration_completion___block_invoke_155(uint64_t a1)
{
  v23[2] = a1;
  v23[1] = a1;
  if ([*(a1 + 32) verificationType] == 1)
  {
    v23[0] = 0;
    v13 = [*(a1 + 32) utility];
    location = [v13 jsonDictionaryForData:*(a1 + 40) error:0];
    MEMORY[0x1E69E5920](v13);
    if (location)
    {
      v21 = MEMORY[0x1E69E5928](*(a1 + 48));
      [*(a1 + 32) _handleServerUIWithDictionary:location statusCode:objc_msgSend(v21 configuration:"statusCode") completion:{*(a1 + 56), *(a1 + 72)}];
      objc_storeStrong(&v21, 0);
    }

    else
    {
      v11 = *(a1 + 72);
      v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      (*(v11 + 16))(v11, 0);
      MEMORY[0x1E69E5920](v12);
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(v23, 0);
  }

  else if ([*(a1 + 32) verificationType])
  {
    v17 = _AKLogSystem();
    v16 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_193225000, log, type, "Attempt to show server UI with unsupported configuration (still in the works)", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v2 = *(a1 + 72);
    v3 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
    (*(v2 + 16))(v2, 0);
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    if (RemoteUILibraryCore(0))
    {
      v1 = objc_alloc(getRUIParserClass());
    }

    else
    {
      v1 = [0 alloc];
    }

    v9 = v1;
    v8 = *(a1 + 40);
    v10 = [*(a1 + 64) URL];
    v20 = [v9 initWithXML:v8 baseURL:? delegate:?];
    MEMORY[0x1E69E5920](v10);
    v19 = [v20 error];
    v18 = [v20 uiObjectModel];
    if (v18)
    {
      [*(a1 + 32) _handleServerUISecondFactorWithObjectModel:v18 configuration:*(a1 + 56) completion:*(a1 + 72)];
    }

    else if (v19)
    {
      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v6 = *(a1 + 72);
      v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      (*(v6 + 16))(v6, 0);
      MEMORY[0x1E69E5920](v7);
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }
}

- (id)_parseHeaderTitleForPasscodeView:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19[1] = NSSelectorFromString(&cfstr_Htmlcontent.isa);
  v19[0] = [location[0] HTMLHeader];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = objc_opt_class();
  v10 = [v19[0] valueForKey:@"HTMLContent"];
  v18 = _AKSafeCast_26(v9, v10);
  MEMORY[0x1E69E5920](v10);
  if (!v18)
  {
    goto LABEL_17;
  }

  v17 = [v18 dataUsingEncoding:4];
  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = 0;
  if (UIKitLibraryCore(0))
  {
    v15 = getNSDocumentTypeDocumentAttribute();
    v14 = 1;
    v7 = v15;
  }

  else
  {
    v7 = 0;
  }

  v22 = v7;
  v12 = 0;
  if (UIKitLibraryCore(0))
  {
    v13 = getNSHTMLTextDocumentType();
    v12 = 1;
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  v23[0] = v6;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v16 = [v8 initWithData:v17 options:? documentAttributes:? error:?];
  MEMORY[0x1E69E5920](v5);
  if (v12)
  {
    MEMORY[0x1E69E5920](v13);
  }

  if (v14)
  {
    MEMORY[0x1E69E5920](v15);
  }

  if (v16)
  {
    v21 = [v16 string];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  if (!v11)
  {
LABEL_17:
    v11 = 0;
  }

  objc_storeStrong(&v18, 0);
  if (!v11)
  {
LABEL_19:
    v21 = 0;
  }

  objc_storeStrong(v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v21;

  return v3;
}

- (id)_xmlUIRequestForURL:(id)a3 withServerInfo:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"serverInfo"];
  }

  v5 = [(AKAppleIDAuthenticationCommandLineContext *)v10 _xmlUIRequestForURL:location[0] withPostbackDictionary:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_xmlUIRequestForURL:(id)a3 withPostbackDictionary:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = objc_alloc(MEMORY[0x1E695AC18]);
  v8 = [v4 initWithURL:location[0]];
  [v8 ak_setBodyWithParameters:v9];
  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/x-buddyml" forHTTPHeaderField:@"Accept"];
  [v8 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  v7 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)ruiElementsAttributesWithName:(id)a3 data:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28[1] = a5;
  v5 = objc_alloc(MEMORY[0x1E696B0A8]);
  v28[0] = [v5 initWithData:v29];
  if (RemoteUILibraryCore(0))
  {
    v6 = objc_alloc_init(getRUIXMLParserDelegateClass());
  }

  else
  {
    v6 = objc_alloc_init(0);
  }

  v27 = v6;
  [v28[0] setDelegate:v6];
  [v28[0] parse];
  v26 = [v27 xmlElement];
  v25 = [v31 _findMatchingElementWithName:location[0] inElement:v26];
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
  memset(__b, 0, sizeof(__b));
  v17 = MEMORY[0x1E69E5928](v25);
  v18 = [v17 countByEnumeratingWithState:__b objects:v32 count:16];
  if (v18)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(__b[1] + 8 * v15);
      v11 = [v23 attributtes];
      v21 = [v11 mutableCopy];
      MEMORY[0x1E69E5920](v11);
      v12 = [v23 stringValue];
      MEMORY[0x1E69E5920](v12);
      if (v12)
      {
        v9 = v21;
        v10 = [v23 stringValue];
        [v9 setObject:? forKey:?];
        MEMORY[0x1E69E5920](v10);
      }

      [v24 addObject:v21];
      objc_storeStrong(&v21, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [v17 countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v17);
  v8 = MEMORY[0x1E69E5928](v24);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_findMatchingElementWithName:(id)a3 inElement:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v25 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  if (location[0] && [location[0] length])
  {
    v14 = location[0];
    v15 = [v23 name];
    v16 = [v14 isEqualToString:?];
    MEMORY[0x1E69E5920](v15);
    if (v16)
    {
      v28[0] = v23;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v22 = 1;
    }

    else
    {
      v21 = MEMORY[0x1E69E5928](MEMORY[0x1E695E0F0]);
      memset(__b, 0, sizeof(__b));
      v12 = [v23 children];
      v13 = [v12 countByEnumeratingWithState:__b objects:v27 count:16];
      if (v13)
      {
        v9 = *__b[2];
        v10 = 0;
        v11 = v13;
        while (1)
        {
          v8 = v10;
          if (*__b[2] != v9)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(__b[1] + 8 * v10);
          v18 = [v25 _findMatchingElementWithName:location[0] inElement:v20];
          v4 = [v21 arrayByAddingObjectsFromArray:v18];
          v5 = v21;
          v21 = v4;
          MEMORY[0x1E69E5920](v5);
          objc_storeStrong(&v18, 0);
          ++v10;
          if (v8 + 1 >= v11)
          {
            v10 = 0;
            v11 = [v12 countByEnumeratingWithState:__b objects:v27 count:16];
            if (!v11)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x1E69E5920](v12);
      v26 = MEMORY[0x1E69E5928](v21);
      v22 = 1;
      objc_storeStrong(&v21, 0);
    }
  }

  else
  {
    v26 = 0;
    v22 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v6 = v26;

  return v6;
}

- (id)_promptForVerificationCodeWithSecureEntry:(BOOL)a3 forTrustedNumber:(id)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v14 = [(AKAppleIDAuthenticationCommandLineContext *)v18 smsSecurityCode];
  if (![v14 length])
  {
    if (location)
    {
      v6 = MEMORY[0x1E696AEC0];
      v9 = [location numberWithDialCode];
      v8 = [location pushMode];
      v7 = [v6 stringWithFormat:@"A second factor code was send to %@ via %@", v9, v8];
      AKPrintLine(v7);
      MEMORY[0x1E69E5920](v7);
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v9);
    }

    AKPrint(@"Enter second factor code: ");
    v12 = 0;
    v10 = 0;
    if (v16)
    {
      v13 = AKReadLineSecure(10);
      v12 = 1;
      objc_storeStrong(&v14, v13);
    }

    else
    {
      v11 = AKReadLine(10);
      v10 = 1;
      objc_storeStrong(&v14, v11);
    }

    if (v10)
    {
      MEMORY[0x1E69E5920](v11);
    }

    if (v12)
    {
      MEMORY[0x1E69E5920](v13);
    }

    if (v14)
    {
      [(AKAppleIDAuthenticationCommandLineContext *)v18 setSmsSecurityCode:v14];
    }
  }

  v5 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)_promptForBirthday
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = self;
  v23[1] = a2;
  v23[0] = 0;
  v19 = [(AKAppleIDAuthenticationCommandLineContext *)self birthday];
  MEMORY[0x1E69E5920](v19);
  if (v19)
  {
    v18 = [(AKAppleIDAuthenticationCommandLineContext *)v24 utility];
    v17 = [(AKCommandLineUtilities *)v18 dateFormatter];
    v16 = [(AKAppleIDAuthenticationCommandLineContext *)v24 birthday];
    v2 = [(NSDateFormatter *)v17 stringFromDate:?];
    v3 = v23[0];
    v23[0] = v2;
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](v17);
    MEMORY[0x1E69E5920](v18);
  }

  if (![v23[0] length])
  {
    AKPrint(@"Enter your birthday(YYYY-MM-DD): ");
    v4 = AKReadLine(12);
    v5 = v23[0];
    v23[0] = v4;
    MEMORY[0x1E69E5920](v5);
    location = _AKLogSystem();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v25, v23[0]);
      _os_log_error_impl(&dword_193225000, location, v21, "(%@)", v25, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v15 = [(AKAppleIDAuthenticationCommandLineContext *)v24 utility];
    v14 = [(AKCommandLineUtilities *)v15 dateFormatter];
    v20 = [(NSDateFormatter *)v14 dateFromString:v23[0]];
    MEMORY[0x1E69E5920](v14);
    MEMORY[0x1E69E5920](v15);
    if (v20)
    {
      [(AKAppleIDAuthenticationCommandLineContext *)v24 setBirthday:v20];
    }

    else
    {
      v13 = [(AKAppleIDAuthenticationCommandLineContext *)v24 utility];
      v12 = [(AKCommandLineUtilities *)v13 dateFormatter];
      v11 = [MEMORY[0x1E695DF00] date];
      v10 = [(NSDateFormatter *)v12 stringFromDate:?];
      AKPrintError(@"Please enter a valid birthday(%@)!", v10);
      MEMORY[0x1E69E5920](v10);
      MEMORY[0x1E69E5920](v11);
      MEMORY[0x1E69E5920](v12);
      MEMORY[0x1E69E5920](v13);
      v6 = [(AKAppleIDAuthenticationCommandLineContext *)v24 _promptForBirthday];
      v7 = v23[0];
      v23[0] = v6;
      MEMORY[0x1E69E5920](v7);
    }

    objc_storeStrong(&v20, 0);
  }

  v9 = MEMORY[0x1E69E5928](v23[0]);
  objc_storeStrong(v23, 0);
  *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_promptForPassword
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [(AKAppleIDAuthenticationContext *)self _password];
  if (![v6[0] length])
  {
    AKPrint(@"Enter password: ");
    v2 = AKReadLineSecure(1024);
    v3 = v6[0];
    v6[0] = v2;
    MEMORY[0x1E69E5920](v3);
    if (v6[0])
    {
      [(AKAppleIDAuthenticationContext *)v7 _setPassword:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForUsername
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [(AKAppleIDAuthenticationContext *)self username];
  if (![v6[0] length])
  {
    AKPrint(@"Enter username: ");
    v2 = AKReadLine(1024);
    v3 = v6[0];
    v6[0] = v2;
    MEMORY[0x1E69E5920](v3);
    if (v6[0])
    {
      [(AKAppleIDAuthenticationContext *)v7 setUsername:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForPhoneNumber
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [(AKAppleIDAuthenticationCommandLineContext *)self phoneNumber];
  if (![v6[0] length])
  {
    AKPrint(@"Phone Number for this account: ");
    v2 = AKReadLine(1024);
    v3 = v6[0];
    v6[0] = v2;
    MEMORY[0x1E69E5920](v3);
    if (v6[0])
    {
      [(AKAppleIDAuthenticationCommandLineContext *)v7 setPhoneNumber:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForCountryCode
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [(AKAppleIDAuthenticationCommandLineContext *)self countryCode];
  if (![v6[0] length])
  {
    AKPrint(@"Country code for this account: ");
    v2 = AKReadLine(1024);
    v3 = v6[0];
    v6[0] = v2;
    MEMORY[0x1E69E5920](v3);
    if (v6[0])
    {
      [(AKAppleIDAuthenticationCommandLineContext *)v7 setCountryCode:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForFirstName
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [(AKAppleIDAuthenticationCommandLineContext *)self firstName];
  if (![v6[0] length])
  {
    AKPrint(@"Enter first name for the account: ");
    v2 = AKReadLine(1024);
    v3 = v6[0];
    v6[0] = v2;
    MEMORY[0x1E69E5920](v3);
    if (v6[0])
    {
      [(AKAppleIDAuthenticationCommandLineContext *)v7 setFirstName:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForLastName
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [(AKAppleIDAuthenticationCommandLineContext *)self lastName];
  if (![v6[0] length])
  {
    AKPrint(@"Enter last name for the account: ");
    v2 = AKReadLine(1024);
    v3 = v6[0];
    v6[0] = v2;
    MEMORY[0x1E69E5920](v3);
    if (v6[0])
    {
      [(AKAppleIDAuthenticationCommandLineContext *)v7 setLastName:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptUserForTermsWithResponseDictionary:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = MEMORY[0x1E69E5928](MEMORY[0x1E695E0F8]);
  v26 = [location[0] objectForKeyedSubscript:@"termsList"];
  v25 = [v26 firstObject];
  if (v25)
  {
    if (![(AKAppleIDAuthenticationCommandLineContext *)v29 termsAccepted])
    {
      AKPrintLine(@"Do you agree to terms and conditions?");
      AKPrint(@"Y to agree / READ to print out the terms (please just say yess!): ");
      v24 = AKReadLine(10);
      if ([v24 isEqualToString:@"READ"])
      {
        AKPrintLine(@"OK here we go…");
        AKPrintLine(&stru_1F0781300);
        v23 = [v25 objectForKeyedSubscript:@"termsPageDetails"];
        v16 = [v23 objectForKeyedSubscript:@"title"];
        AKPrintLine(v16);
        MEMORY[0x1E69E5920](v16);
        AKPrintLine(&stru_1F0781300);
        v17 = [v23 objectForKeyedSubscript:@"prologue"];
        AKPrintLine(v17);
        MEMORY[0x1E69E5920](v17);
        AKPrintLine(&stru_1F0781300);
        v18 = [v23 objectForKeyedSubscript:@"agree"];
        AKPrintLine(v18);
        MEMORY[0x1E69E5920](v18);
        AKPrint(@"Y to agree: ");
        v3 = AKReadLine(10);
        v4 = v24;
        v24 = v3;
        MEMORY[0x1E69E5920](v4);
        v19 = [v24 lowercaseString];
        v5 = [v19 substringToIndex:1];
        v6 = v24;
        v24 = v5;
        MEMORY[0x1E69E5920](v6);
        MEMORY[0x1E69E5920](v19);
        if ([v24 isEqualToString:@"y"])
        {
          [(AKAppleIDAuthenticationCommandLineContext *)v29 setTermsAccepted:1];
        }

        objc_storeStrong(&v23, 0);
      }

      objc_storeStrong(&v24, 0);
    }

    if ([(AKAppleIDAuthenticationCommandLineContext *)v29 termsAccepted])
    {
      v22 = _AKLogSystem();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        log = v22;
        type = v21;
        __os_log_helper_16_0_0(v20);
        _os_log_impl(&dword_193225000, log, type, "User agreed to terms and conditions", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      AKPrintLine(@"⚖ Terms and Conditions Accepted…");
      v32 = @"acceptedTerms";
      v30[0] = @"versions";
      v13 = [v25 objectForKeyedSubscript:@"versions"];
      v31[0] = v13;
      v30[1] = @"deviceVersions";
      v12 = [v25 objectForKeyedSubscript:@"deviceVersions"];
      v31[1] = v12;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v33[0] = v11;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v8 = v27;
      v27 = v7;
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v11);
      MEMORY[0x1E69E5920](v12);
      MEMORY[0x1E69E5920](v13);
    }
  }

  v10 = MEMORY[0x1E69E5928](v27);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_jsonPostbackDictionaryForCode:(id)a3 numberId:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v11)
  {
    v16 = @"id";
    v17[0] = v11;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v10 setObject:v9 forKey:@"phoneNumber"];
    objc_storeStrong(&v9, 0);
  }

  if (location[0])
  {
    v14 = @"code";
    v15 = location[0];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v10 setObject:v8 forKey:@"securityCode"];
    objc_storeStrong(&v8, 0);
  }

  [v10 setObject:@"sms" forKey:@"mode"];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v13, v10);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Constructed SMS postback dictionary - %@", v13, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v5;
}

@end