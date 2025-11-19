@interface AMSAuthenticationViewServiceLauncher
+ (id)launchWithClientInfo:(id)a3 action:(id)a4 xpcEndpoint:(id)a5;
@end

@implementation AMSAuthenticationViewServiceLauncher

+ (id)launchWithClientInfo:(id)a3 action:(id)a4 xpcEndpoint:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v32 = objc_alloc_init(AMSMutablePromise);
  v31 = [MEMORY[0x1E69C75F0] identityForApplicationJobLabel:@"com.apple.AMSUIAuthenticationViewService"];
  v10 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithSceneProvidingProcess:v31 configurationIdentifier:@"Default Configuration"];
  v11 = objc_alloc_init(MEMORY[0x1E69D4298]);
  [v11 setXpcEndpoint:v9];

  v34 = @"AuthenticationViewServiceAction";
  v35[0] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [v11 setUserInfo:v12];

  v13 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v10 configurationContext:v11];
  v14 = [MEMORY[0x1E698E740] processHandle];
  v15 = [v7 bundleIdentifier];
  if (v15)
  {
    v16 = v15;
    v30 = v8;
    v17 = [v7 bundleIdentifier];
    v18 = +[AMSProcessInfo currentProcess];
    v19 = [v18 bundleIdentifier];

    if (v17 != v19)
    {
      v20 = MEMORY[0x1E69C7610];
      v21 = [v7 bundleIdentifier];
      v22 = [v20 predicateMatchingBundleIdentifier:v21];

      v33 = 0;
      v23 = [MEMORY[0x1E69C75D0] handleForPredicate:v22 error:&v33];
      v24 = v23;
      if (!v33 && v23)
      {
        v25 = [MEMORY[0x1E698E740] processHandleForPID:{objc_msgSend(v23, "pid")}];

        v14 = v25;
      }
    }

    v8 = v30;
  }

  v26 = objc_alloc_init(MEMORY[0x1E69D4288]);
  v27 = [MEMORY[0x1E69D42D8] predicateForProcess:v14];
  v28 = [objc_alloc(MEMORY[0x1E69D42C0]) initWithTargetPredicate:v27];
  [v26 setPresentationTarget:v28];
  [v13 activateWithContext:v26];
  [(AMSMutablePromise *)v32 finishWithResult:v13];

  return v32;
}

@end