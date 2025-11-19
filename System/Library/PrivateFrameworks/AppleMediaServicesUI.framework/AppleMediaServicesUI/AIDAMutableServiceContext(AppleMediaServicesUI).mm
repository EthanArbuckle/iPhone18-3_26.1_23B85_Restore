@interface AIDAMutableServiceContext(AppleMediaServicesUI)
- (id)ams_installCDPUIWithPresentingViewController:()AppleMediaServicesUI;
- (void)_ams_installCDPUIWithCDPUIController:()AppleMediaServicesUI flowControllerDelegate:;
@end

@implementation AIDAMutableServiceContext(AppleMediaServicesUI)

- (id)ams_installCDPUIWithPresentingViewController:()AppleMediaServicesUI
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v4 = getCDPUIControllerClass_softClass;
  v36 = getCDPUIControllerClass_softClass;
  if (!getCDPUIControllerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCDPUIControllerClass_block_invoke;
    v38 = &unk_1E7F241B0;
    v39 = &v33;
    __getCDPUIControllerClass_block_invoke(buf);
    v4 = v34[3];
  }

  v5 = v4;
  _Block_object_dispose(&v33, 8);
  v32 = [[v4 alloc] initWithPresentingViewController:v3];
  v6 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v12 = AMSLogKey();
      v13 = [v9 stringWithFormat:@"%@: [%@] ", v11, v12];
    }

    else
    {
      v13 = [v9 stringWithFormat:@"%@: ", v10];
      v12 = v13;
    }

    v14 = AMSHashIfNeeded();
    v15 = AMSHashIfNeeded();
    *buf = 138543874;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v38 = v15;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_INFO, "%{public}@Created CDP UI controller: %{public}@ for view controller: %{public}@", buf, 0x20u);
    if (v8)
    {
    }
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v16 = getAAUISignInFlowControllerDelegateClass_softClass;
  v36 = getAAUISignInFlowControllerDelegateClass_softClass;
  if (!getAAUISignInFlowControllerDelegateClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAAUISignInFlowControllerDelegateClass_block_invoke;
    v38 = &unk_1E7F241B0;
    v39 = &v33;
    __getAAUISignInFlowControllerDelegateClass_block_invoke(buf);
    v16 = v34[3];
  }

  v17 = v16;
  _Block_object_dispose(&v33, 8);
  v18 = [[v16 alloc] initWithPresentingViewController:v3];
  v19 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v19)
  {
    v19 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = AMSLogKey();
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v24 = v23;
    if (v21)
    {
      v25 = AMSLogKey();
      v26 = [v22 stringWithFormat:@"%@: [%@] ", v24, v25];
    }

    else
    {
      v26 = [v22 stringWithFormat:@"%@: ", v23];
      v25 = v26;
    }

    v27 = AMSHashIfNeeded();
    v28 = AMSHashIfNeeded();
    *buf = 138543874;
    *&buf[4] = v26;
    *&buf[12] = 2114;
    *&buf[14] = v27;
    *&buf[22] = 2114;
    v38 = v28;
    _os_log_impl(&dword_1BB036000, v20, OS_LOG_TYPE_INFO, "%{public}@Created sign in flow controller delegate: %{public}@ for view controller: %{public}@", buf, 0x20u);
    if (v21)
    {
    }
  }

  [a1 _ams_installCDPUIWithCDPUIController:v32 flowControllerDelegate:v18];
  v29 = *MEMORY[0x1E69E9840];

  return v32;
}

- (void)_ams_installCDPUIWithCDPUIController:()AppleMediaServicesUI flowControllerDelegate:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      v14 = AMSLogKey();
      v15 = [v11 stringWithFormat:@"%@: [%@] ", v13, v14];
    }

    else
    {
      v15 = [v11 stringWithFormat:@"%@: ", v12];
      v14 = v15;
    }

    v16 = AMSHashIfNeeded();
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v16;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Installing CDP UI Provider: %{public}@", buf, 0x16u);
    if (v10)
    {
    }
  }

  [a1 setCdpUiProvider:v6];
  v17 = [a1 signInContexts];
  v18 = [v17 mutableCopy];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v19 = getAIDAServiceTypeCloudSymbolLoc_ptr;
  v25 = getAIDAServiceTypeCloudSymbolLoc_ptr;
  if (!getAIDAServiceTypeCloudSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAIDAServiceTypeCloudSymbolLoc_block_invoke;
    v27 = &unk_1E7F241B0;
    v28 = &v22;
    __getAIDAServiceTypeCloudSymbolLoc_block_invoke(buf);
    v19 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v19)
  {
    [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
    __break(1u);
  }

  [v18 setObject:v7 forKeyedSubscript:*v19];
  v20 = [v18 copy];
  [a1 setSignInContexts:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_ams_installCDPUIWithCDPUIController:()AppleMediaServicesUI flowControllerDelegate:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getCDPUIControllerClass_block_invoke_cold_1();
}

@end