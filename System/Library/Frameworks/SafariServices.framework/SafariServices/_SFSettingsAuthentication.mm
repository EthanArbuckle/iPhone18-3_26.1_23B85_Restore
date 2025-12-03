@interface _SFSettingsAuthentication
+ (BOOL)authenticationRequiresPasscode;
+ (id)_localAuthenticationOptionsWithAuthenticationContext:(id)context;
+ (int64_t)biometryTypeCurrentlyAvailableForDevice;
+ (void)authenticateForSettings:(id)settings allowAuthenticationReuse:(BOOL)reuse completionHandler:(id)handler;
+ (void)pushSettingsAfterAuthentication:(id)authentication onBehalfOfViewController:(id)controller resourceDictionary:(id)dictionary completionHandler:(id)handler;
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
    biometryType = 0;
  }

  else
  {
    biometryType = [v2 biometryType];
  }

  return biometryType;
}

+ (void)authenticateForSettings:(id)settings allowAuthenticationReuse:(BOOL)reuse completionHandler:(id)handler
{
  reuseCopy = reuse;
  settingsCopy = settings;
  handlerCopy = handler;
  v10 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v11 = v10;
  if (reuseCopy)
  {
    [v10 setTouchIDAuthenticationAllowableReuseDuration:10.0];
  }

  authenticationPolicy = [settingsCopy authenticationPolicy];
  v28 = 0;
  v13 = [v11 canEvaluatePolicy:authenticationPolicy error:&v28];
  v14 = v28;
  v15 = v14;
  if (v13)
  {
    v16 = [self _localAuthenticationOptionsWithAuthenticationContext:settingsCopy];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __96___SFSettingsAuthentication_authenticateForSettings_allowAuthenticationReuse_completionHandler___block_invoke_2;
    v21[3] = &unk_1E8490F80;
    v22 = settingsCopy;
    v23 = handlerCopy;
    v17 = handlerCopy;
    v18 = settingsCopy;
    [v11 evaluatePolicy:authenticationPolicy options:v16 reply:v21];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96___SFSettingsAuthentication_authenticateForSettings_allowAuthenticationReuse_completionHandler___block_invoke;
    block[3] = &unk_1E84949D0;
    v25 = settingsCopy;
    v26 = v14;
    v27 = handlerCopy;
    v19 = handlerCopy;
    v20 = settingsCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v16 = v25;
  }
}

+ (void)pushSettingsAfterAuthentication:(id)authentication onBehalfOfViewController:(id)controller resourceDictionary:(id)dictionary completionHandler:(id)handler
{
  authenticationCopy = authentication;
  controllerCopy = controller;
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  v14 = [dictionaryCopy safari_stringForKey:*MEMORY[0x1E69C8CA0]];
  v15 = [v14 isEqualToString:*MEMORY[0x1E69C8CB0]];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __123___SFSettingsAuthentication_pushSettingsAfterAuthentication_onBehalfOfViewController_resourceDictionary_completionHandler___block_invoke;
  v20[3] = &unk_1E84949F8;
  v21 = controllerCopy;
  v22 = authenticationCopy;
  v23 = dictionaryCopy;
  v24 = handlerCopy;
  v16 = handlerCopy;
  v17 = dictionaryCopy;
  v18 = authenticationCopy;
  v19 = controllerCopy;
  [self authenticateForSettings:v18 allowAuthenticationReuse:v15 completionHandler:v20];
}

+ (id)_localAuthenticationOptionsWithAuthenticationContext:(id)context
{
  v11[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    customLocalAuthenticationOptions = [contextCopy customLocalAuthenticationOptions];
  }

  else
  {
    if ([contextCopy showsAuthenticationPromptAsTitle])
    {
      v10[0] = &unk_1F50234A0;
      authenticationPrompt2 = +[SFAutoFillAuthenticationUtilities passcodePromptForViewingSavedAccounts];
      v10[1] = &unk_1F50234B8;
      v11[0] = authenticationPrompt2;
      authenticationPrompt = [contextCopy authenticationPrompt];
      v11[1] = authenticationPrompt;
      customLocalAuthenticationOptions = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    }

    else
    {
      v8 = &unk_1F50234D0;
      authenticationPrompt2 = [contextCopy authenticationPrompt];
      v9 = authenticationPrompt2;
      customLocalAuthenticationOptions = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    }
  }

  return customLocalAuthenticationOptions;
}

@end