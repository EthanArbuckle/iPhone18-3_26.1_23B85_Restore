@interface AMSUIWebOpenFamilyCircleAction
- (AMSUIWebOpenFamilyCircleAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebOpenFamilyCircleAction

- (AMSUIWebOpenFamilyCircleAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebOpenFamilyCircleAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"clientName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    clientName = v7->_clientName;
    v7->_clientName = v9;
  }

  return v7;
}

- (id)runAction
{
  v49 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = AMSUIWebOpenFamilyCircleAction;
  runAction = [(AMSUIWebAction *)&v35 runAction];
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting to open family circle", buf, 0x16u);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v9 = getFACircleContextClass_softClass_0;
  v39 = getFACircleContextClass_softClass_0;
  if (!getFACircleContextClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFACircleContextClass_block_invoke_0;
    v46 = &unk_1E7F241B0;
    v47 = &v36;
    __getFACircleContextClass_block_invoke_0(buf);
    v9 = *(v37 + 24);
  }

  v10 = v9;
  _Block_object_dispose(&v36, 8);
  v11 = [v9 alloc];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v12 = getFACircleEventTypeInitiateSymbolLoc_ptr_0;
  v39 = getFACircleEventTypeInitiateSymbolLoc_ptr_0;
  if (!getFACircleEventTypeInitiateSymbolLoc_ptr_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFACircleEventTypeInitiateSymbolLoc_block_invoke_0;
    v46 = &unk_1E7F241B0;
    v47 = &v36;
    v13 = FamilyCircleUILibrary_0();
    v14 = dlsym(v13, "FACircleEventTypeInitiate");
    *(*(v47 + 1) + 24) = v14;
    getFACircleEventTypeInitiateSymbolLoc_ptr_0 = *(*(v47 + 1) + 24);
    v12 = *(v37 + 24);
  }

  _Block_object_dispose(&v36, 8);
  if (!v12)
  {
    [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
    __break(1u);
  }

  v15 = [v11 initWithEventType:*v12];
  clientName = [(AMSUIWebOpenFamilyCircleAction *)self clientName];
  [v15 setClientName:clientName];

  context = [(AMSUIWebAction *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = __Block_byref_object_copy__8;
  v47 = __Block_byref_object_dispose__8;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v20 = getFACircleStateControllerClass_softClass_0;
  v44 = getFACircleStateControllerClass_softClass_0;
  if (!getFACircleStateControllerClass_softClass_0)
  {
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __getFACircleStateControllerClass_block_invoke_0;
    v39 = &unk_1E7F241B0;
    v40 = &v41;
    __getFACircleStateControllerClass_block_invoke_0(&v36);
    v20 = v42[3];
  }

  v21 = v20;
  _Block_object_dispose(&v41, 8);
  v48 = [[v20 alloc] initWithPresenter:currentContainer];
  v22 = AMSLogKey();
  v23 = *(*&buf[8] + 40);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __43__AMSUIWebOpenFamilyCircleAction_runAction__block_invoke;
  v30[3] = &unk_1E7F26968;
  v24 = v22;
  v34 = buf;
  v31 = v24;
  selfCopy = self;
  v25 = v4;
  v33 = v25;
  [v23 performWithContext:v15 completion:v30];
  v26 = v33;
  v27 = v25;

  _Block_object_dispose(buf, 8);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __43__AMSUIWebOpenFamilyCircleAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = AMSSetLogKey();
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = [v3 error];

  v9 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v15 = [v3 error];
      v23 = 138543874;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to open family circle. %{public}@", &v23, 0x20u);
    }

    v16 = *(a1 + 48);
    v17 = [v3 error];
    [v16 finishWithError:v17];
  }

  else
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v18 = [v10 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v23 = 138543618;
      v24 = v20;
      v25 = 2114;
      v26 = v21;
      _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successully opened family circle", &v23, 0x16u);
    }

    [*(a1 + 48) finishWithResult:MEMORY[0x1E695E118]];
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end