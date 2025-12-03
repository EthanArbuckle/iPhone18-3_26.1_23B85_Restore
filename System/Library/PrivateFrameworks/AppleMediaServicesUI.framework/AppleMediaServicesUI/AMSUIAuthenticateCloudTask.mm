@interface AMSUIAuthenticateCloudTask
- (AMSUIAuthenticateCloudTask)initWithAuthRequest:(id)request presentingViewController:(id)controller;
- (id)_serviceContextWithResults:(id)results parentViewController:(id)controller;
- (id)performAuthenticate;
@end

@implementation AMSUIAuthenticateCloudTask

- (AMSUIAuthenticateCloudTask)initWithAuthRequest:(id)request presentingViewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = AMSUIAuthenticateCloudTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authRequest, request);
    objc_storeStrong(&v10->_presentingViewController, controller);
  }

  return v10;
}

- (id)performAuthenticate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AMSUIAuthenticateCloudTask_performAuthenticate__block_invoke;
  v4[3] = &unk_1E7F24488;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __49__AMSUIAuthenticateCloudTask_performAuthenticate__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v3 = [AMSUIAuthKitUpdateTask alloc];
  v4 = [*(a1 + 32) authRequest];
  v5 = [v4 account];
  v6 = [*(a1 + 32) presentingViewController];
  v7 = [*(a1 + 32) authRequest];
  v8 = [v7 options];
  v9 = [(AMSUIAuthKitUpdateTask *)v3 initWithAccount:v5 presentingViewController:v6 options:v8];

  v10 = [(AMSAuthKitUpdateTask *)v9 performAuthKitUpdate];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__AMSUIAuthenticateCloudTask_performAuthenticate__block_invoke_2;
  v15[3] = &unk_1E7F245B8;
  v11 = v2;
  v12 = *(a1 + 32);
  v16 = v11;
  v17 = v12;
  [v10 addFinishBlock:v15];
  v13 = v11;

  return v11;
}

void __49__AMSUIAuthenticateCloudTask_performAuthenticate__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__AMSUIAuthenticateCloudTask_performAuthenticate__block_invoke_3;
    v10[3] = &unk_1E7F24590;
    v10[4] = *(a1 + 40);
    v11 = v5;
    v12 = *(a1 + 32);
    v7 = v10;
    v8 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke;
    block[3] = &unk_1E7F245E0;
    v14 = v8;
    v15 = v7;
    v9 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __49__AMSUIAuthenticateCloudTask_performAuthenticate__block_invoke_3(id *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = [a1[5] authenticationResults];
  v5 = [a1[4] presentingViewController];
  v6 = [v3 _serviceContextWithResults:v4 parentViewController:v5];

  v7 = [MEMORY[0x1E698C968] sharedConfigOversize];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning service owners manager sign in", buf, 0x16u);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v12 = getAIDAServiceOwnersManagerClass_softClass;
  v25 = getAIDAServiceOwnersManagerClass_softClass;
  if (!getAIDAServiceOwnersManagerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAIDAServiceOwnersManagerClass_block_invoke;
    v27 = &unk_1E7F241B0;
    v28 = &v22;
    __getAIDAServiceOwnersManagerClass_block_invoke(buf);
    v12 = v23[3];
  }

  v13 = v12;
  _Block_object_dispose(&v22, 8);
  v14 = [v12 alloc];
  v15 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v16 = [v14 initWithAccountStore:v15];

  v17 = getAIDAServiceTypeCloud();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__AMSUIAuthenticateCloudTask_performAuthenticate__block_invoke_37;
  v19[3] = &unk_1E7F24568;
  v19[4] = a1[4];
  v20 = a1[6];
  v21 = a1[5];
  [v16 signInService:v17 withContext:v6 completion:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __49__AMSUIAuthenticateCloudTask_performAuthenticate__block_invoke_37(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setCdpUIController:0];
  v4 = *(a1 + 40);
  if (v5)
  {
    [v4 finishWithError:v5];
  }

  else
  {
    [v4 finishWithResult:*(a1 + 48)];
  }
}

- (id)_serviceContextWithResults:(id)results parentViewController:(id)controller
{
  resultsCopy = results;
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v8 = getCDPUIControllerClass_softClass_0;
  v32 = getCDPUIControllerClass_softClass_0;
  if (!getCDPUIControllerClass_softClass_0)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCDPUIControllerClass_block_invoke_0;
    v27 = &unk_1E7F241B0;
    v28 = &v29;
    __getCDPUIControllerClass_block_invoke_0(&v24);
    v8 = v30[3];
  }

  v9 = v8;
  _Block_object_dispose(&v29, 8);
  v10 = [[v8 alloc] initWithPresentingViewController:controllerCopy];
  [(AMSUIAuthenticateCloudTask *)self setCdpUIController:v10];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v11 = getAAUISignInFlowControllerDelegateClass_softClass_0;
  v32 = getAAUISignInFlowControllerDelegateClass_softClass_0;
  if (!getAAUISignInFlowControllerDelegateClass_softClass_0)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getAAUISignInFlowControllerDelegateClass_block_invoke_0;
    v27 = &unk_1E7F241B0;
    v28 = &v29;
    __getAAUISignInFlowControllerDelegateClass_block_invoke_0(&v24);
    v11 = v30[3];
  }

  v12 = v11;
  _Block_object_dispose(&v29, 8);
  v13 = [[v11 alloc] initWithPresentingViewController:controllerCopy];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v14 = getAIDAMutableServiceContextClass_softClass;
  v32 = getAIDAMutableServiceContextClass_softClass;
  if (!getAIDAMutableServiceContextClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getAIDAMutableServiceContextClass_block_invoke;
    v27 = &unk_1E7F241B0;
    v28 = &v29;
    __getAIDAMutableServiceContextClass_block_invoke(&v24);
    v14 = v30[3];
  }

  v15 = v14;
  _Block_object_dispose(&v29, 8);
  v16 = objc_alloc_init(v14);
  [v16 setAuthenticationResults:resultsCopy];
  [v16 setShouldForceOperation:0];
  [v16 setOperationUIPermissions:1];
  [v16 setViewController:controllerCopy];
  cdpUIController = [(AMSUIAuthenticateCloudTask *)self cdpUIController];
  [v16 setCdpUiProvider:cdpUIController];

  signInContexts = [v16 signInContexts];
  v19 = [signInContexts mutableCopy];

  v20 = getAIDAServiceTypeCloud();
  [v19 setObject:v13 forKeyedSubscript:v20];

  v21 = [v19 copy];
  [v16 setSignInContexts:v21];

  v22 = [v16 copy];

  return v22;
}

@end