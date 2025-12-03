@interface AMSAuthenticationViewServiceLauncher
+ (id)launchWithClientInfo:(id)info action:(id)action xpcEndpoint:(id)endpoint;
@end

@implementation AMSAuthenticationViewServiceLauncher

+ (id)launchWithClientInfo:(id)info action:(id)action xpcEndpoint:(id)endpoint
{
  v35[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  actionCopy = action;
  endpointCopy = endpoint;
  v32 = objc_alloc_init(AMSMutablePromise);
  v31 = [MEMORY[0x1E69C75F0] identityForApplicationJobLabel:@"com.apple.AMSUIAuthenticationViewService"];
  v10 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithSceneProvidingProcess:v31 configurationIdentifier:@"Default Configuration"];
  v11 = objc_alloc_init(MEMORY[0x1E69D4298]);
  [v11 setXpcEndpoint:endpointCopy];

  v34 = @"AuthenticationViewServiceAction";
  v35[0] = actionCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [v11 setUserInfo:v12];

  v13 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v10 configurationContext:v11];
  processHandle = [MEMORY[0x1E698E740] processHandle];
  bundleIdentifier = [infoCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    v16 = bundleIdentifier;
    v30 = actionCopy;
    bundleIdentifier2 = [infoCopy bundleIdentifier];
    v18 = +[AMSProcessInfo currentProcess];
    bundleIdentifier3 = [v18 bundleIdentifier];

    if (bundleIdentifier2 != bundleIdentifier3)
    {
      v20 = MEMORY[0x1E69C7610];
      bundleIdentifier4 = [infoCopy bundleIdentifier];
      v22 = [v20 predicateMatchingBundleIdentifier:bundleIdentifier4];

      v33 = 0;
      v23 = [MEMORY[0x1E69C75D0] handleForPredicate:v22 error:&v33];
      v24 = v23;
      if (!v33 && v23)
      {
        v25 = [MEMORY[0x1E698E740] processHandleForPID:{objc_msgSend(v23, "pid")}];

        processHandle = v25;
      }
    }

    actionCopy = v30;
  }

  v26 = objc_alloc_init(MEMORY[0x1E69D4288]);
  v27 = [MEMORY[0x1E69D42D8] predicateForProcess:processHandle];
  v28 = [objc_alloc(MEMORY[0x1E69D42C0]) initWithTargetPredicate:v27];
  [v26 setPresentationTarget:v28];
  [v13 activateWithContext:v26];
  [(AMSMutablePromise *)v32 finishWithResult:v13];

  return v32;
}

@end