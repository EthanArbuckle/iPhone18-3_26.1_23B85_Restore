@interface AKAppleIDAuthenticationCommandLineContext
+ (id)_findMatchingElementWithName:(id)name inElement:(id)element;
+ (id)ruiElementsAttributesWithName:(id)name data:(id)data error:(id *)error;
- (AKAppleIDAuthenticationCommandLineContext)init;
- (AKAppleIDAuthenticationCommandLineContext)initWithVerificationType:(int64_t)type;
- (id)_accountCreationRequestBodyFromResponseDictionary:(id)dictionary shouldIncludePhoneNumber:(BOOL)number shouldIncludeForSecurityCode:(BOOL)code;
- (id)_accountDictionary;
- (id)_createContextDictionaryFromResponse:(id)response;
- (id)_jsonPostbackDictionaryForCode:(id)code numberId:(id)id;
- (id)_parseHeaderTitleForPasscodeView:(id)view;
- (id)_parseTrustedPhoneNumberFromResponseDictionary:(id)dictionary;
- (id)_promptForBirthday;
- (id)_promptForCountryCode;
- (id)_promptForFirstName;
- (id)_promptForLastName;
- (id)_promptForPassword;
- (id)_promptForPhoneNumber;
- (id)_promptForUsername;
- (id)_promptForVerificationCodeWithSecureEntry:(BOOL)entry forTrustedNumber:(id)number;
- (id)_promptUserForSelectionWithTrustedNumbers:(id)numbers;
- (id)_promptUserForTermsWithResponseDictionary:(id)dictionary;
- (id)_rootPath;
- (id)_xmlUIRequestForURL:(id)l withPostbackDictionary:(id)dictionary;
- (id)_xmlUIRequestForURL:(id)l withServerInfo:(id)info;
- (void)_beginDataTaskWithRequest:(id)request configuration:(id)configuration completion:(id)completion;
- (void)_collectAndHandleTermsAndConditionsWithResponseDictionary:(id)dictionary configuration:(id)configuration completion:(id)completion;
- (void)_collectAndPostSecondFactorCodeWithRequestBody:(id)body configuration:(id)configuration completion:(id)completion;
- (void)_handleServerUIBirthdayVerificationWithResponseDictionary:(id)dictionary configuration:(id)configuration completion:(id)completion;
- (void)_handleServerUIPasswordVerificationWithResponseDictionary:(id)dictionary configuration:(id)configuration completion:(id)completion;
- (void)_handleServerUIPhoneVerificationWithResponseDictionary:(id)dictionary configuration:(id)configuration completion:(id)completion;
- (void)_handleServerUISMSVerificationWithResponseDictionary:(id)dictionary statusCode:(int64_t)code configuration:(id)configuration completion:(id)completion;
- (void)_handleServerUISecondFactorWithObjectModel:(id)model configuration:(id)configuration completion:(id)completion;
- (void)_handleServerUIWithDictionary:(id)dictionary statusCode:(int64_t)code configuration:(id)configuration completion:(id)completion;
- (void)_presentServerUIWithConfiguration:(id)configuration completion:(id)completion;
- (void)_verifySecondFactorCodeWithRequest:(id)request completion:(id)completion;
- (void)dismissBasicLoginUIWithCompletion:(id)completion;
- (void)dismissSecondFactorUIWithCompletion:(id)completion;
- (void)dismissServerProvidedUIWithCompletion:(id)completion;
- (void)presentBasicLoginUIWithCompletion:(id)completion;
- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentSecondFactorAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentSecondFactorUIWithCompletion:(id)completion;
- (void)presentServerProvidedUIWithConfiguration:(id)configuration completion:(id)completion;
- (void)setNeedsNewAppleID:(BOOL)d;
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

- (AKAppleIDAuthenticationCommandLineContext)initWithVerificationType:(int64_t)type
{
  v11 = a2;
  typeCopy = type;
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
    v12->_verificationType = typeCopy;
    _rootPath = [(AKAppleIDAuthenticationCommandLineContext *)v12 _rootPath];
    rootPath = v12->_rootPath;
    v12->_rootPath = _rootPath;
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

- (void)setNeedsNewAppleID:(BOOL)d
{
  selfCopy = self;
  v7 = a2;
  dCopy = d;
  v5.receiver = self;
  v5.super_class = AKAppleIDAuthenticationCommandLineContext;
  [(AKAppleIDAuthenticationContext *)&v5 setNeedsNewAppleID:d];
  _rootPath = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _rootPath];
  rootPath = selfCopy->_rootPath;
  selfCopy->_rootPath = _rootPath;
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

- (void)presentBasicLoginUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _promptForUsername = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _promptForUsername];
  _promptForPassword = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _promptForPassword];
  (*(location[0] + 2))(location[0], _promptForUsername, _promptForPassword, 0);
  objc_storeStrong(&_promptForPassword, 0);
  objc_storeStrong(&_promptForUsername, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissBasicLoginUIWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  obj = title;
  messageCopy = message;
  completionCopy = completion;
  selfCopy = self;
  location[1] = a2;
  v13 = location;
  v14 = 0;
  location[0] = 0;
  objc_storeStrong(location, error);
  v12 = &v17;
  v17 = 0;
  objc_storeStrong(&v17, obj);
  v11 = &v16;
  v16 = 0;
  objc_storeStrong(&v16, messageCopy);
  v10 = &v15;
  v15 = 0;
  objc_storeStrong(&v15, completionCopy);
  localizedDescription = [location[0] localizedDescription];
  AKPrintLine(@"Failed to validate username and password combination: %@", localizedDescription);
  MEMORY[0x1E69E5920](localizedDescription);
  [(AKAppleIDAuthenticationContext *)selfCopy _setPassword:v14];
  [(AKAppleIDAuthenticationCommandLineContext *)selfCopy presentBasicLoginUIWithCompletion:v15];
  objc_storeStrong(v10, v14);
  objc_storeStrong(v11, v14);
  objc_storeStrong(v12, v14);
  objc_storeStrong(v13, v14);
}

- (void)presentSecondFactorUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  secondFactorCode = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy secondFactorCode];
  if (secondFactorCode)
  {
    (*(location[0] + 2))(location[0], secondFactorCode, 0);
    v9 = 1;
  }

  else
  {
    AKPrint(@"Enter 6 digit code: ");
    v8 = AKReadLine(10);
    if (v8)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
      [(AKAppleIDAuthenticationCommandLineContext *)selfCopy setSecondFactorCode:?];
      MEMORY[0x1E69E5920](v5);
      v6 = location[0];
      secondFactorCode2 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy secondFactorCode];
      v6[2]();
      MEMORY[0x1E69E5920](secondFactorCode2);
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

  objc_storeStrong(&secondFactorCode, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissSecondFactorUIWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  obj = title;
  messageCopy = message;
  completionCopy = completion;
  selfCopy = self;
  location[1] = a2;
  v13 = location;
  v14 = 0;
  location[0] = 0;
  objc_storeStrong(location, error);
  v12 = &v17;
  v17 = 0;
  objc_storeStrong(&v17, obj);
  v11 = &v16;
  v16 = 0;
  objc_storeStrong(&v16, messageCopy);
  v10 = &v15;
  v15 = 0;
  objc_storeStrong(&v15, completionCopy);
  localizedDescription = [location[0] localizedDescription];
  AKPrintLine(@"Failed to validate code: %@", localizedDescription);
  MEMORY[0x1E69E5920](localizedDescription);
  [(AKAppleIDAuthenticationCommandLineContext *)selfCopy presentSecondFactorUIWithCompletion:v15];
  objc_storeStrong(v10, v14);
  objc_storeStrong(v11, v14);
  objc_storeStrong(v12, v14);
  objc_storeStrong(v13, v14);
}

- (void)presentServerProvidedUIWithConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  requestType = [location[0] requestType];
  if (requestType)
  {
    if (requestType == 1)
    {
      AKPrintLine(@"IDP second factor-authentication is not supported!");
      v7 = v11;
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v7[2](v7, 0);
      MEMORY[0x1E69E5920](v8);
    }

    else
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:requestType];
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
    [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _presentServerUIWithConfiguration:location[0] completion:v11];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissServerProvidedUIWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentServerUIWithConfiguration:(id)configuration completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  if ([(AKAppleIDAuthenticationContext *)selfCopy needsCredentialRecovery])
  {
    AKPrintLine(@"Begin iForgot password flow");
    if (!selfCopy->_forgotPasswordController)
    {
      v4 = objc_alloc_init(AKForgotPasswordController);
      forgotPasswordController = selfCopy->_forgotPasswordController;
      selfCopy->_forgotPasswordController = v4;
      MEMORY[0x1E69E5920](forgotPasswordController);
    }

    v6 = [AKAccountRecoveryModel alloc];
    v25 = [(AKAccountRecoveryModel *)v6 initWithContext:selfCopy configuration:location[0] utilities:selfCopy->_utility];
    [(AKAppleIDRecoveryController *)selfCopy->_forgotPasswordController beginAccountRecoveryWithModel:v25 completion:v26];
    v24 = 1;
    objc_storeStrong(&v25, 0);
  }

  else if ([(AKAppleIDAuthenticationContext *)selfCopy needsPasswordChange])
  {
    AKPrintLine(@"Begin change password flow");
    if (!selfCopy->_changePasswordController)
    {
      v7 = objc_alloc_init(AKChangePasswordController);
      changePasswordController = selfCopy->_changePasswordController;
      selfCopy->_changePasswordController = v7;
      MEMORY[0x1E69E5920](changePasswordController);
    }

    v9 = [AKAccountRecoveryModel alloc];
    v23 = [(AKAccountRecoveryModel *)v9 initWithContext:selfCopy configuration:location[0] utilities:selfCopy->_utility];
    [(AKAppleIDRecoveryController *)selfCopy->_changePasswordController beginAccountRecoveryWithModel:v23 completion:v26];
    v24 = 1;
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v22 = 0;
    verificationType = selfCopy->_verificationType;
    if (verificationType)
    {
      if (verificationType == 1)
      {
        utility = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
        rootPath = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy rootPath];
        v10 = [(AKCommandLineUtilities *)utility mutableJSONRequestForPath:?];
        v11 = v22;
        v22 = v10;
        MEMORY[0x1E69E5920](v11);
        MEMORY[0x1E69E5920](rootPath);
        MEMORY[0x1E69E5920](utility);
        v21 = _AKLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          request = [location[0] request];
          __os_log_helper_16_2_1_8_64(v29, request);
          _os_log_error_impl(&dword_193225000, v21, OS_LOG_TYPE_ERROR, "request: %@", v29, 0xCu);
          MEMORY[0x1E69E5920](request);
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
      request2 = [location[0] request];
      v12 = [request2 mutableCopy];
      v13 = v22;
      v22 = v12;
      MEMORY[0x1E69E5920](v13);
      MEMORY[0x1E69E5920](request2);
    }

    resourceLoadDelegate = [location[0] resourceLoadDelegate];
    [resourceLoadDelegate signRequest:v22];
    MEMORY[0x1E69E5920](resourceLoadDelegate);
    [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _beginDataTaskWithRequest:v22 configuration:location[0] completion:v26];
    objc_storeStrong(&v22, 0);
    v24 = 0;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_handleServerUISecondFactorWithObjectModel:(id)model configuration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v39 = 0;
  objc_storeStrong(&v39, configuration);
  v38 = 0;
  objc_storeStrong(&v38, completion);
  v31 = MEMORY[0x1E69E9820];
  v32 = -1073741824;
  v33 = 0;
  v34 = __113__AKAppleIDAuthenticationCommandLineContext__handleServerUISecondFactorWithObjectModel_configuration_completion___block_invoke;
  v35 = &unk_1E73D92F8;
  v36 = MEMORY[0x1E69E5928](v38);
  v37 = MEMORY[0x193B165F0](&v31);
  allPages = [location[0] allPages];
  firstObject = [allPages firstObject];
  MEMORY[0x1E69E5920](allPages);
  if (firstObject)
  {
    passcodeViewOM = [firstObject passcodeViewOM];
    if (passcodeViewOM)
    {
      identifier = [passcodeViewOM identifier];
      if (identifier)
      {
        attributes = [passcodeViewOM attributes];
        v26 = [attributes objectForKeyedSubscript:@"url"];
        MEMORY[0x1E69E5920](attributes);
        if (v26)
        {
          attributes2 = [passcodeViewOM attributes];
          v25 = [attributes2 objectForKeyedSubscript:@"httpMethod"];
          MEMORY[0x1E69E5920](attributes2);
          if (v25)
          {
            navTitle = [firstObject navTitle];
            if (navTitle)
            {
              AKPrintLine(@"%@", navTitle);
            }

            v23 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _parseHeaderTitleForPasscodeView:passcodeViewOM];
            if (v23)
            {
              AKPrint(v23);
            }

            attributes3 = [passcodeViewOM attributes];
            v5 = [attributes3 objectForKeyedSubscript:@"secure"];
            bOOLValue = [v5 BOOLValue];
            MEMORY[0x1E69E5920](v5);
            MEMORY[0x1E69E5920](attributes3);
            v22 = bOOLValue;
            v21 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _promptForVerificationCodeWithSecureEntry:bOOLValue & 1 forTrustedNumber:?];
            v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v20 setObject:v21 forKeyedSubscript:identifier];
            serverInfo = [location[0] serverInfo];
            [v20 setObject:? forKeyedSubscript:?];
            MEMORY[0x1E69E5920](serverInfo);
            v19 = [location[0] absoluteURLWithString:v26];
            v18 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _xmlUIRequestForURL:v19 withPostbackDictionary:v20];
            [v18 setHTTPMethod:v25];
            resourceLoadDelegate = [v39 resourceLoadDelegate];
            [resourceLoadDelegate signRequest:v18];
            MEMORY[0x1E69E5920](resourceLoadDelegate);
            [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _verifySecondFactorCodeWithRequest:v18 completion:v38];
            objc_storeStrong(&v18, 0);
            objc_storeStrong(&v19, 0);
            objc_storeStrong(&v20, 0);
            objc_storeStrong(&v21, 0);
            objc_storeStrong(&v23, 0);
            objc_storeStrong(&navTitle, 0);
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

      objc_storeStrong(&identifier, 0);
    }

    else
    {
      (*(v37 + 2))(v37, @"missing passcode view");
      v29 = 1;
    }

    objc_storeStrong(&passcodeViewOM, 0);
  }

  else
  {
    primaryAlert = [location[0] primaryAlert];
    MEMORY[0x1E69E5920](primaryAlert);
    if (primaryAlert)
    {
      primaryAlert2 = [location[0] primaryAlert];
      message = [primaryAlert2 message];
      AKPrintLine(message);
      MEMORY[0x1E69E5920](message);
      MEMORY[0x1E69E5920](primaryAlert2);
    }

    (*(v37 + 2))(v37, @"missing page");
    v29 = 1;
  }

  objc_storeStrong(&firstObject, 0);
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

- (void)_handleServerUIWithDictionary:(id)dictionary statusCode:(int64_t)code configuration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  codeCopy = code;
  v18 = 0;
  objc_storeStrong(&v18, configuration);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  if ([(AKAppleIDAuthenticationContext *)selfCopy needsNewAppleID])
  {
    if (codeCopy < 200 || codeCopy >= 300)
    {
      utility = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
      v16 = [(AKCommandLineUtilities *)utility errorFromServerResponseBody:location[0]];
      MEMORY[0x1E69E5920](utility);
      if (v16)
      {
        userInfo = [v16 userInfo];
        v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];
        userInfo2 = [v16 userInfo];
        v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
        AKPrintError(@"Error creating an account: %@.\n%@", v10, v8);
        MEMORY[0x1E69E5920](v8);
        MEMORY[0x1E69E5920](userInfo2);
        MEMORY[0x1E69E5920](v10);
        MEMORY[0x1E69E5920](userInfo);
      }

      v6 = v17;
      v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7029 underlyingError:v16];
      v6[2]();
      MEMORY[0x1E69E5920](v7);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _handleServerUIBirthdayVerificationWithResponseDictionary:location[0] configuration:v18 completion:v17];
    }
  }

  else
  {
    [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _handleServerUISMSVerificationWithResponseDictionary:location[0] statusCode:codeCopy configuration:v18 completion:v17];
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_verifySecondFactorCodeWithRequest:(id)request completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v14 = 0;
  objc_storeStrong(&v14, completion);
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

- (void)_handleServerUIBirthdayVerificationWithResponseDictionary:(id)dictionary configuration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v29 = 0;
  objc_storeStrong(&v29, configuration);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v27 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _accountCreationRequestBodyFromResponseDictionary:location[0] shouldIncludePhoneNumber:0 shouldIncludeForSecurityCode:0];
  rootPath = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy rootPath];
  v26 = [(NSString *)rootPath stringByAppendingPathComponent:@"/birthday"];
  MEMORY[0x1E69E5920](rootPath);
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
  objc_initWeak(&from, selfCopy);
  utility = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
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
  [(AKCommandLineUtilities *)utility createAndExecuteRequestForPath:v5 requestBody:v6 httpMethod:@"POST" configuration:v7 completion:&v14];
  MEMORY[0x1E69E5920](utility);
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

- (void)_handleServerUIPasswordVerificationWithResponseDictionary:(id)dictionary configuration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v29 = 0;
  objc_storeStrong(&v29, configuration);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v27 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _accountCreationRequestBodyFromResponseDictionary:location[0] shouldIncludePhoneNumber:0 shouldIncludeForSecurityCode:0];
  rootPath = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy rootPath];
  v26 = [(NSString *)rootPath stringByAppendingPathComponent:@"/password"];
  MEMORY[0x1E69E5920](rootPath);
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
  objc_initWeak(&from, selfCopy);
  utility = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
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
  [(AKCommandLineUtilities *)utility createAndExecuteRequestForPath:v5 requestBody:v6 httpMethod:@"POST" configuration:v7 completion:&v14];
  MEMORY[0x1E69E5920](utility);
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

- (void)_handleServerUIPhoneVerificationWithResponseDictionary:(id)dictionary configuration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v27 = 0;
  objc_storeStrong(&v27, configuration);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  objc_initWeak(&v25, selfCopy);
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __125__AKAppleIDAuthenticationCommandLineContext__handleServerUIPhoneVerificationWithResponseDictionary_configuration_completion___block_invoke;
  v20 = &unk_1E73D9320;
  objc_copyWeak(&v23, &v25);
  v21 = MEMORY[0x1E69E5928](v27);
  v22 = MEMORY[0x1E69E5928](v26);
  v24 = MEMORY[0x193B165F0](&v16);
  v15 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _accountCreationRequestBodyFromResponseDictionary:location[0] shouldIncludePhoneNumber:1 shouldIncludeForSecurityCode:0];
  rootPath = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy rootPath];
  v14 = [(NSString *)rootPath stringByAppendingPathComponent:@"/verify/phone"];
  MEMORY[0x1E69E5920](rootPath);
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
  utility = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
  [(AKCommandLineUtilities *)utility createAndExecuteRequestForPath:v14 requestBody:v15 httpMethod:@"PUT" configuration:v27 completion:v24];
  MEMORY[0x1E69E5920](utility);
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

- (void)_collectAndHandleTermsAndConditionsWithResponseDictionary:(id)dictionary configuration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v28 = 0;
  objc_storeStrong(&v28, configuration);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  objc_initWeak(&v26, selfCopy);
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __128__AKAppleIDAuthenticationCommandLineContext__collectAndHandleTermsAndConditionsWithResponseDictionary_configuration_completion___block_invoke;
  v21 = &unk_1E73D9320;
  objc_copyWeak(&v24, &v26);
  v22 = MEMORY[0x1E69E5928](selfCopy);
  v23 = MEMORY[0x1E69E5928](v27);
  v25 = MEMORY[0x193B165F0](&v17);
  v10 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _accountCreationRequestBodyFromResponseDictionary:location[0] shouldIncludePhoneNumber:1 shouldIncludeForSecurityCode:1];
  v16 = [v10 mutableCopy];
  MEMORY[0x1E69E5920](v10);
  v9 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _promptUserForTermsWithResponseDictionary:location[0]];
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
  utility = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
  rootPath = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy rootPath];
  [AKCommandLineUtilities createAndExecuteRequestForPath:utility requestBody:"createAndExecuteRequestForPath:requestBody:httpMethod:configuration:completion:" httpMethod:? configuration:? completion:?];
  MEMORY[0x1E69E5920](rootPath);
  MEMORY[0x1E69E5920](utility);
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

- (void)_handleServerUISMSVerificationWithResponseDictionary:(id)dictionary statusCode:(int64_t)code configuration:(id)configuration completion:(id)completion
{
  v88 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  codeCopy = code;
  v83 = 0;
  objc_storeStrong(&v83, configuration);
  v82 = 0;
  objc_storeStrong(&v82, completion);
  v73 = MEMORY[0x1E69E9820];
  v74 = -1073741824;
  v75 = 0;
  v76 = __134__AKAppleIDAuthenticationCommandLineContext__handleServerUISMSVerificationWithResponseDictionary_statusCode_configuration_completion___block_invoke;
  v77 = &unk_1E73D9348;
  v80 = MEMORY[0x1E69E5928](v82);
  v78 = MEMORY[0x1E69E5928](selfCopy);
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
      identifier = [(AKTrustedPhoneNumber *)v66 identifier];
      [v31 setObject:v30 forKeyedSubscript:?];
      MEMORY[0x1E69E5920](identifier);
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
    v7 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _promptUserForSelectionWithTrustedNumbers:v69];
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
    allKeys = [v69 allKeys];
    firstObject = [allKeys firstObject];
    v9 = [v21 objectForKey:?];
    v10 = v64;
    v64 = v9;
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](firstObject);
    MEMORY[0x1E69E5920](allKeys);
  }

  if (v65 || codeCopy >= 200 && codeCopy < 300)
  {
    rootPath = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy rootPath];
    v56 = [(NSString *)rootPath stringByAppendingPathComponent:@"/verify/phone"];
    MEMORY[0x1E69E5920](rootPath);
    utility = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
    v55 = [(AKCommandLineUtilities *)utility mutableJSONRequestForPath:v56];
    MEMORY[0x1E69E5920](utility);
    v18 = selfCopy;
    identifier2 = [v64 identifier];
    v54 = [(AKAppleIDAuthenticationCommandLineContext *)v18 _jsonPostbackDictionaryForCode:0 numberId:?];
    MEMORY[0x1E69E5920](identifier2);
    [v55 ak_setJSONBodyWithParameters:v54];
    [v55 setHTTPMethod:@"PUT"];
    resourceLoadDelegate = [v83 resourceLoadDelegate];
    [resourceLoadDelegate signRequest:v55];
    MEMORY[0x1E69E5920](resourceLoadDelegate);
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

- (void)_collectAndPostSecondFactorCodeWithRequestBody:(id)body configuration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, body);
  v23 = 0;
  objc_storeStrong(&v23, configuration);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  objc_initWeak(&v21, selfCopy);
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __117__AKAppleIDAuthenticationCommandLineContext__collectAndPostSecondFactorCodeWithRequestBody_configuration_completion___block_invoke;
  v14 = &unk_1E73D9370;
  objc_copyWeak(&v19, &v21);
  v15 = MEMORY[0x1E69E5928](selfCopy);
  v16 = MEMORY[0x1E69E5928](location[0]);
  v17 = MEMORY[0x1E69E5928](v23);
  v18 = MEMORY[0x1E69E5928](v22);
  v20 = MEMORY[0x193B165F0](&v10);
  rootPath = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy rootPath];
  v9 = [(NSString *)rootPath stringByAppendingPathComponent:@"/verify/phone/securitycode"];
  MEMORY[0x1E69E5920](rootPath);
  AKPrintLine(@"Verifying code...");
  utility = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
  [(AKCommandLineUtilities *)utility createAndExecuteRequestForPath:v9 requestBody:location[0] httpMethod:@"POST" configuration:v23 completion:v20];
  MEMORY[0x1E69E5920](utility);
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

- (id)_promptUserForSelectionWithTrustedNumbers:(id)numbers
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, numbers);
  [location[0] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_53];
  AKPrintLine(@"Please select a trusted number: ");
  v5 = MEMORY[0x1E696AD98];
  v6 = AKReadLine(10);
  v11 = [v5 numberWithInt:{objc_msgSend(v6, "intValue")}];
  MEMORY[0x1E69E5920](v6);
  allKeys = [location[0] allKeys];
  v8 = [allKeys containsObject:v11];
  MEMORY[0x1E69E5920](allKeys);
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

- (id)_parseTrustedPhoneNumberFromResponseDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v11 = 0;
  v10 = [location[0] objectForKeyedSubscript:@"phoneNumberVerification"];
  v9 = [v10 objectForKeyedSubscript:@"phoneNumber"];
  if (v9)
  {
    v3 = [[AKTrustedPhoneNumber alloc] initWithJSONDictionary:v9];
    v4 = v11;
    v11 = v3;
    MEMORY[0x1E69E5920](v4);
    number = [(AKTrustedPhoneNumber *)v11 number];
    MEMORY[0x1E69E5920](number);
    if (number)
    {
      number2 = [(AKTrustedPhoneNumber *)v11 number];
      [(AKAppleIDAuthenticationCommandLineContext *)selfCopy setPhoneNumber:?];
      MEMORY[0x1E69E5920](number2);
    }
  }

  v6 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_accountCreationRequestBodyFromResponseDictionary:(id)dictionary shouldIncludePhoneNumber:(BOOL)number shouldIncludeForSecurityCode:(BOOL)code
{
  v40[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  numberCopy = number;
  codeCopy = code;
  _accountDictionary = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _accountDictionary];
  v23 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _createContextDictionaryFromResponse:location[0]];
  v39[0] = @"account";
  v40[0] = _accountDictionary;
  v39[1] = @"createContext";
  v40[1] = v23;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v22 = [v16 mutableCopy];
  MEMORY[0x1E69E5920](v16);
  if (number)
  {
    v37[0] = @"phoneNumber";
    v35[0] = @"number";
    _promptForPhoneNumber = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _promptForPhoneNumber];
    v36[0] = _promptForPhoneNumber;
    v35[1] = @"countryCode";
    _promptForCountryCode = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _promptForCountryCode];
    v36[1] = _promptForCountryCode;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:?];
    v38[0] = v13;
    v37[1] = @"mode";
    v38[1] = @"sms";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v21 = [v12 mutableCopy];
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](_promptForCountryCode);
    MEMORY[0x1E69E5920](_promptForPhoneNumber);
    if (codeCopy)
    {
      v20 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _parseTrustedPhoneNumberFromResponseDictionary:location[0]];
      v19 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _promptForVerificationCodeWithSecureEntry:0 forTrustedNumber:v20];
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
  objc_storeStrong(&_accountDictionary, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_createContextDictionaryFromResponse:(id)response
{
  v10[2] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
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

- (void)_beginDataTaskWithRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v20 = 0;
  objc_storeStrong(&v20, configuration);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v7 = +[AKURLSession sharedURLSession];
  v6 = location[0];
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __96__AKAppleIDAuthenticationCommandLineContext__beginDataTaskWithRequest_configuration_completion___block_invoke;
  v14 = &unk_1E73D93E0;
  v15 = MEMORY[0x1E69E5928](selfCopy);
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

- (id)_parseHeaderTitleForPasscodeView:(id)view
{
  v23[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
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
    string = [v16 string];
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
    string = 0;
  }

  objc_storeStrong(v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = string;

  return v3;
}

- (id)_xmlUIRequestForURL:(id)l withServerInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v8 = 0;
  objc_storeStrong(&v8, info);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"serverInfo"];
  }

  v5 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _xmlUIRequestForURL:location[0] withPostbackDictionary:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_xmlUIRequestForURL:(id)l withPostbackDictionary:(id)dictionary
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v9 = 0;
  objc_storeStrong(&v9, dictionary);
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

+ (id)ruiElementsAttributesWithName:(id)name data:(id)data error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v29 = 0;
  objc_storeStrong(&v29, data);
  v28[1] = error;
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
  xmlElement = [v27 xmlElement];
  v25 = [selfCopy _findMatchingElementWithName:location[0] inElement:xmlElement];
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
      attributtes = [v23 attributtes];
      v21 = [attributtes mutableCopy];
      MEMORY[0x1E69E5920](attributtes);
      stringValue = [v23 stringValue];
      MEMORY[0x1E69E5920](stringValue);
      if (stringValue)
      {
        v9 = v21;
        stringValue2 = [v23 stringValue];
        [v9 setObject:? forKey:?];
        MEMORY[0x1E69E5920](stringValue2);
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
  objc_storeStrong(&xmlElement, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_findMatchingElementWithName:(id)name inElement:(id)element
{
  v28[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v23 = 0;
  objc_storeStrong(&v23, element);
  if (location[0] && [location[0] length])
  {
    v14 = location[0];
    name = [v23 name];
    v16 = [v14 isEqualToString:?];
    MEMORY[0x1E69E5920](name);
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
      children = [v23 children];
      v13 = [children countByEnumeratingWithState:__b objects:v27 count:16];
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
            objc_enumerationMutation(children);
          }

          v20 = *(__b[1] + 8 * v10);
          v18 = [selfCopy _findMatchingElementWithName:location[0] inElement:v20];
          v4 = [v21 arrayByAddingObjectsFromArray:v18];
          v5 = v21;
          v21 = v4;
          MEMORY[0x1E69E5920](v5);
          objc_storeStrong(&v18, 0);
          ++v10;
          if (v8 + 1 >= v11)
          {
            v10 = 0;
            v11 = [children countByEnumeratingWithState:__b objects:v27 count:16];
            if (!v11)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x1E69E5920](children);
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

- (id)_promptForVerificationCodeWithSecureEntry:(BOOL)entry forTrustedNumber:(id)number
{
  selfCopy = self;
  v17 = a2;
  entryCopy = entry;
  location = 0;
  objc_storeStrong(&location, number);
  smsSecurityCode = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy smsSecurityCode];
  if (![smsSecurityCode length])
  {
    if (location)
    {
      v6 = MEMORY[0x1E696AEC0];
      numberWithDialCode = [location numberWithDialCode];
      pushMode = [location pushMode];
      v7 = [v6 stringWithFormat:@"A second factor code was send to %@ via %@", numberWithDialCode, pushMode];
      AKPrintLine(v7);
      MEMORY[0x1E69E5920](v7);
      MEMORY[0x1E69E5920](pushMode);
      MEMORY[0x1E69E5920](numberWithDialCode);
    }

    AKPrint(@"Enter second factor code: ");
    v12 = 0;
    v10 = 0;
    if (entryCopy)
    {
      v13 = AKReadLineSecure(10);
      v12 = 1;
      objc_storeStrong(&smsSecurityCode, v13);
    }

    else
    {
      v11 = AKReadLine(10);
      v10 = 1;
      objc_storeStrong(&smsSecurityCode, v11);
    }

    if (v10)
    {
      MEMORY[0x1E69E5920](v11);
    }

    if (v12)
    {
      MEMORY[0x1E69E5920](v13);
    }

    if (smsSecurityCode)
    {
      [(AKAppleIDAuthenticationCommandLineContext *)selfCopy setSmsSecurityCode:smsSecurityCode];
    }
  }

  v5 = MEMORY[0x1E69E5928](smsSecurityCode);
  objc_storeStrong(&smsSecurityCode, 0);
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)_promptForBirthday
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v23[1] = a2;
  v23[0] = 0;
  birthday = [(AKAppleIDAuthenticationCommandLineContext *)self birthday];
  MEMORY[0x1E69E5920](birthday);
  if (birthday)
  {
    utility = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
    dateFormatter = [(AKCommandLineUtilities *)utility dateFormatter];
    birthday2 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy birthday];
    v2 = [(NSDateFormatter *)dateFormatter stringFromDate:?];
    v3 = v23[0];
    v23[0] = v2;
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](birthday2);
    MEMORY[0x1E69E5920](dateFormatter);
    MEMORY[0x1E69E5920](utility);
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
    utility2 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
    dateFormatter2 = [(AKCommandLineUtilities *)utility2 dateFormatter];
    v20 = [(NSDateFormatter *)dateFormatter2 dateFromString:v23[0]];
    MEMORY[0x1E69E5920](dateFormatter2);
    MEMORY[0x1E69E5920](utility2);
    if (v20)
    {
      [(AKAppleIDAuthenticationCommandLineContext *)selfCopy setBirthday:v20];
    }

    else
    {
      utility3 = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy utility];
      dateFormatter3 = [(AKCommandLineUtilities *)utility3 dateFormatter];
      date = [MEMORY[0x1E695DF00] date];
      v10 = [(NSDateFormatter *)dateFormatter3 stringFromDate:?];
      AKPrintError(@"Please enter a valid birthday(%@)!", v10);
      MEMORY[0x1E69E5920](v10);
      MEMORY[0x1E69E5920](date);
      MEMORY[0x1E69E5920](dateFormatter3);
      MEMORY[0x1E69E5920](utility3);
      _promptForBirthday = [(AKAppleIDAuthenticationCommandLineContext *)selfCopy _promptForBirthday];
      v7 = v23[0];
      v23[0] = _promptForBirthday;
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
  selfCopy = self;
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
      [(AKAppleIDAuthenticationContext *)selfCopy _setPassword:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForUsername
{
  selfCopy = self;
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
      [(AKAppleIDAuthenticationContext *)selfCopy setUsername:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForPhoneNumber
{
  selfCopy = self;
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
      [(AKAppleIDAuthenticationCommandLineContext *)selfCopy setPhoneNumber:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForCountryCode
{
  selfCopy = self;
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
      [(AKAppleIDAuthenticationCommandLineContext *)selfCopy setCountryCode:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForFirstName
{
  selfCopy = self;
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
      [(AKAppleIDAuthenticationCommandLineContext *)selfCopy setFirstName:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptForLastName
{
  selfCopy = self;
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
      [(AKAppleIDAuthenticationCommandLineContext *)selfCopy setLastName:v6[0]];
    }
  }

  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_promptUserForTermsWithResponseDictionary:(id)dictionary
{
  v33[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v27 = MEMORY[0x1E69E5928](MEMORY[0x1E695E0F8]);
  v26 = [location[0] objectForKeyedSubscript:@"termsList"];
  firstObject = [v26 firstObject];
  if (firstObject)
  {
    if (![(AKAppleIDAuthenticationCommandLineContext *)selfCopy termsAccepted])
    {
      AKPrintLine(@"Do you agree to terms and conditions?");
      AKPrint(@"Y to agree / READ to print out the terms (please just say yess!): ");
      v24 = AKReadLine(10);
      if ([v24 isEqualToString:@"READ"])
      {
        AKPrintLine(@"OK here we go…");
        AKPrintLine(&stru_1F0781300);
        v23 = [firstObject objectForKeyedSubscript:@"termsPageDetails"];
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
        lowercaseString = [v24 lowercaseString];
        v5 = [lowercaseString substringToIndex:1];
        v6 = v24;
        v24 = v5;
        MEMORY[0x1E69E5920](v6);
        MEMORY[0x1E69E5920](lowercaseString);
        if ([v24 isEqualToString:@"y"])
        {
          [(AKAppleIDAuthenticationCommandLineContext *)selfCopy setTermsAccepted:1];
        }

        objc_storeStrong(&v23, 0);
      }

      objc_storeStrong(&v24, 0);
    }

    if ([(AKAppleIDAuthenticationCommandLineContext *)selfCopy termsAccepted])
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
      v13 = [firstObject objectForKeyedSubscript:@"versions"];
      v31[0] = v13;
      v30[1] = @"deviceVersions";
      v12 = [firstObject objectForKeyedSubscript:@"deviceVersions"];
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
  objc_storeStrong(&firstObject, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_jsonPostbackDictionaryForCode:(id)code numberId:(id)id
{
  v17[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v11 = 0;
  objc_storeStrong(&v11, id);
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