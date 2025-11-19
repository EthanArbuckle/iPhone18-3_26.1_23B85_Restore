@interface _SFSettingsAuthentication
+ (BOOL)authenticationRequiresPasscode;
+ (id)_localAuthenticationOptionsWithAuthenticationContext:(id)a3;
+ (int64_t)biometryTypeCurrentlyAvailableForDevice;
+ (void)authenticateForSettings:(id)a3 allowAuthenticationReuse:(BOOL)a4 completionHandler:(id)a5;
+ (void)pushSettingsAfterAuthentication:(id)a3 onBehalfOfViewController:(id)a4 resourceDictionary:(id)a5 completionHandler:(id)a6;
@end

@implementation _SFSettingsAuthentication

+ (BOOL)authenticationRequiresPasscode
{
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v8 = 0;
  v3 = [v2 canEvaluatePolicy:2 error:&v8];
  v4 = v8;
  v5 = v4;
  v6 = (v3 & 1) != 0 || [v4 code] != -5;

  return v6;
}

+ (int64_t)biometryTypeCurrentlyAvailableForDevice
{
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v7 = 0;
  [v2 canEvaluatePolicy:1 error:&v7];
  v3 = v7;
  v4 = v3;
  if (v3 && ([v3 code] + 7) < 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 biometryType];
  }

  return v5;
}

+ (void)authenticateForSettings:(id)a3 allowAuthenticationReuse:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v11 = v10;
  if (v6)
  {
    [v10 setTouchIDAuthenticationAllowableReuseDuration:10.0];
  }

  v12 = [v8 authenticationPolicy];
  v28 = 0;
  v13 = [v11 canEvaluatePolicy:v12 error:&v28];
  v14 = v28;
  v15 = v14;
  if (v13)
  {
    v16 = [a1 _localAuthenticationOptionsWithAuthenticationContext:v8];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __96___SFSettingsAuthentication_authenticateForSettings_allowAuthenticationReuse_completionHandler___block_invoke_2;
    v21[3] = &unk_1E8490F80;
    v22 = v8;
    v23 = v9;
    v17 = v9;
    v18 = v8;
    [v11 evaluatePolicy:v12 options:v16 reply:v21];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96___SFSettingsAuthentication_authenticateForSettings_allowAuthenticationReuse_completionHandler___block_invoke;
    block[3] = &unk_1E84949D0;
    v25 = v8;
    v26 = v14;
    v27 = v9;
    v19 = v9;
    v20 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v16 = v25;
  }
}

+ (void)pushSettingsAfterAuthentication:(id)a3 onBehalfOfViewController:(id)a4 resourceDictionary:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 safari_stringForKey:*MEMORY[0x1E69C8CA0]];
  v15 = [v14 isEqualToString:*MEMORY[0x1E69C8CB0]];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __123___SFSettingsAuthentication_pushSettingsAfterAuthentication_onBehalfOfViewController_resourceDictionary_completionHandler___block_invoke;
  v20[3] = &unk_1E84949F8;
  v21 = v11;
  v22 = v10;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v10;
  v19 = v11;
  [a1 authenticateForSettings:v18 allowAuthenticationReuse:v15 completionHandler:v20];
}

+ (id)_localAuthenticationOptionsWithAuthenticationContext:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 customLocalAuthenticationOptions];
  }

  else
  {
    if ([v3 showsAuthenticationPromptAsTitle])
    {
      v10[0] = &unk_1F50234A0;
      v5 = +[SFAutoFillAuthenticationUtilities passcodePromptForViewingSavedAccounts];
      v10[1] = &unk_1F50234B8;
      v11[0] = v5;
      v6 = [v3 authenticationPrompt];
      v11[1] = v6;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    }

    else
    {
      v8 = &unk_1F50234D0;
      v5 = [v3 authenticationPrompt];
      v9 = v5;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    }
  }

  return v4;
}

@end