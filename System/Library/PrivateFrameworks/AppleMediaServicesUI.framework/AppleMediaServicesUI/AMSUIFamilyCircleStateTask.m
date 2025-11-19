@interface AMSUIFamilyCircleStateTask
- (AMSUIFamilyCircleStateTask)initWithJSONDictionary:(id)a3 presentingViewController:(id)a4;
- (id)present;
@end

@implementation AMSUIFamilyCircleStateTask

- (AMSUIFamilyCircleStateTask)initWithJSONDictionary:(id)a3 presentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = AMSUIFamilyCircleStateTask;
  v8 = [(AMSTask *)&v30 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_19;
  }

  [(AMSUIFamilyCircleStateTask *)v8 setPresentingViewController:v7];
  v10 = [v6 objectForKeyedSubscript:@"eventType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 objectForKeyedSubscript:@"clientBundleID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 objectForKeyedSubscript:@"clientName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v6 objectForKeyedSubscript:@"additionalParameters"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v11)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v25 = getFACircleEventTypeInitiateSymbolLoc_ptr;
    v39 = getFACircleEventTypeInitiateSymbolLoc_ptr;
    if (!getFACircleEventTypeInitiateSymbolLoc_ptr)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getFACircleEventTypeInitiateSymbolLoc_block_invoke;
      v34 = &unk_1E7F241B0;
      v35 = &v36;
      v26 = FamilyCircleUILibrary();
      v27 = dlsym(v26, "FACircleEventTypeInitiate");
      *(v35[1] + 24) = v27;
      getFACircleEventTypeInitiateSymbolLoc_ptr = *(v35[1] + 24);
      v25 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v25)
    {
      v29 = [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
      _Block_object_dispose(&v36, 8);
      _Unwind_Resume(v29);
    }

    v11 = *v25;
    if (v13)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!v13)
  {
LABEL_24:
    v28 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v28 bundleIdentifier];
  }

LABEL_16:
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v18 = getFACircleContextClass_softClass;
  v39 = getFACircleContextClass_softClass;
  if (!getFACircleContextClass_softClass)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __getFACircleContextClass_block_invoke;
    v34 = &unk_1E7F241B0;
    v35 = &v36;
    __getFACircleContextClass_block_invoke(&v31);
    v18 = v37[3];
  }

  v19 = v18;
  _Block_object_dispose(&v36, 8);
  v20 = [[v18 alloc] initWithEventType:v11];
  [(AMSUIFamilyCircleStateTask *)v9 setFaContext:v20];

  v21 = [(AMSUIFamilyCircleStateTask *)v9 faContext];
  [v21 setClientBundleID:v13];

  v22 = [(AMSUIFamilyCircleStateTask *)v9 faContext];
  [v22 setClientName:v15];

  v23 = [(AMSUIFamilyCircleStateTask *)v9 faContext];
  [v23 setAdditionalParameters:v17];

LABEL_19:
  return v9;
}

- (id)present
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__1;
  v11[4] = __Block_byref_object_dispose__1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v3 = getFACircleStateControllerClass_softClass;
  v17 = getFACircleStateControllerClass_softClass;
  if (!getFACircleStateControllerClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getFACircleStateControllerClass_block_invoke;
    v13[3] = &unk_1E7F241B0;
    v13[4] = &v14;
    __getFACircleStateControllerClass_block_invoke(v13);
    v3 = v15[3];
  }

  v4 = v3;
  _Block_object_dispose(&v14, 8);
  v5 = [v3 alloc];
  v6 = [(AMSUIFamilyCircleStateTask *)self presentingViewController];
  v12 = [v5 initWithPresenter:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__AMSUIFamilyCircleStateTask_present__block_invoke;
  v10[3] = &unk_1E7F24DF0;
  v10[4] = self;
  v10[5] = v11;
  v7 = [(AMSTask *)self performTaskWithPromiseBlock:v10];
  v8 = [v7 binaryPromiseAdapter];

  _Block_object_dispose(v11, 8);

  return v8;
}

id __37__AMSUIFamilyCircleStateTask_present__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [*(a1 + 32) faContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__AMSUIFamilyCircleStateTask_present__block_invoke_2;
  v10[3] = &unk_1E7F24DC8;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v2;
  v12 = v5;
  v10[4] = v6;
  v7 = v2;
  [v3 performWithContext:v4 completion:v10];

  v8 = [v7 promiseAdapter];

  return v8;
}

void __37__AMSUIFamilyCircleStateTask_present__block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [v3 error];

  v7 = [MEMORY[0x1E698C968] sharedActionConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = [v3 error];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to open family circle. %{public}@", &v21, 0x20u);
    }

    v14 = *(a1 + 40);
    v15 = [v3 error];
    [v14 finishWithError:v15];
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v8 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v21 = 138543618;
      v22 = v18;
      v23 = 2114;
      v24 = v19;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully opened family circle", &v21, 0x16u);
    }

    [*(a1 + 40) finishWithSuccess];
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end