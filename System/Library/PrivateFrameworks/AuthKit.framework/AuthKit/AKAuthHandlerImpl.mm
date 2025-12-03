@interface AKAuthHandlerImpl
- (id)buildReauthenticationContextFromContext:(id)context error:(id *)error;
- (void)reauthenticateWithContext:(id)context completion:(id)completion;
- (void)reauthenticateWithContext:(id)context completionWithResults:(id)results;
@end

@implementation AKAuthHandlerImpl

- (id)buildReauthenticationContextFromContext:(id)context error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  v31 = objc_opt_new();
  [v31 _updateWithValuesFromContext:location[0]];
  [v31 setIsUsernameEditable:0];
  [v31 setShouldSkipSettingsLaunchAlert:1];
  [v31 setNeedsNewAppleID:0];
  [v31 setRequestedNewAccountAgeRange:0];
  username = [v31 username];
  MEMORY[0x1E69E5920](username);
  if (username)
  {
    goto LABEL_14;
  }

  v30 = _AKLogSystem();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    log = v30;
    type = v29;
    __os_log_helper_16_0_0(v28);
    _os_log_impl(&dword_193225000, log, type, "Missing username, trying to fetch one via idMS account", v28, 2u);
  }

  objc_storeStrong(&v30, 0);
  v14 = +[AKAccountManager sharedInstance];
  altDSID = [location[0] altDSID];
  v27 = [AKAccountManager authKitAccountWithAltDSID:v14 error:"authKitAccountWithAltDSID:error:"];
  MEMORY[0x1E69E5920](altDSID);
  MEMORY[0x1E69E5920](v14);
  username2 = [v27 username];
  MEMORY[0x1E69E5920](username2);
  if (username2)
  {
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v22;
      v9 = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_193225000, v8, v9, "Using idMS account username", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    username3 = [v27 username];
    [v31 setUsername:?];
    MEMORY[0x1E69E5920](username3);
    v23 = 0;
  }

  else
  {
    v26 = _AKLogSystem();
    v25 = 16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v11 = v26;
      v12 = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_error_impl(&dword_193225000, v11, v12, "Matching account missing, there be dragons ahead!", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    if (errorCopy)
    {
      v10 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7022];
      v4 = v10;
      *errorCopy = v10;
    }

    v35 = 0;
    v23 = 1;
  }

  objc_storeStrong(&v27, 0);
  if (!v23)
  {
LABEL_14:
    if ([(AKAuthHandlerImpl *)selfCopy forceSilentAuth])
    {
      [v31 setAuthenticationType:1];
    }

    v35 = MEMORY[0x1E69E5928](v31);
    v23 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  v5 = v35;

  return v5;
}

- (void)reauthenticateWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __58__AKAuthHandlerImpl_reauthenticateWithContext_completion___block_invoke;
  v11 = &unk_1E73D3538;
  v12 = MEMORY[0x1E69E5928](v13);
  [(AKAuthHandlerImpl *)v6 reauthenticateWithContext:v5 completionWithResults:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __58__AKAuthHandlerImpl_reauthenticateWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)reauthenticateWithContext:(id)context completionWithResults:(id)results
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v6 = 0;
  objc_storeStrong(&v6, results);
  v5 = objc_alloc_init(AKAppleIDAuthenticationController);
  [(AKAppleIDAuthenticationController *)v5 authenticateWithContext:location[0] completion:v6];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end