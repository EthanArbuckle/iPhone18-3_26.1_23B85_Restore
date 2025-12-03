@interface AMSUIWebDiagnosticsWrapperViewController
- (AMSUIWebDiagnosticsWrapperViewController)initWithContext:(id)context;
- (DADiagnosticsRemoteViewController)diagnosticsViewController;
- (unint64_t)_destinationForValue:(id)value;
- (void)reportFinishWithReason:(unint64_t)reason;
- (void)viewDidLayoutSubviews;
- (void)willPresentPageModel:(id)model appearance:(id)appearance;
@end

@implementation AMSUIWebDiagnosticsWrapperViewController

- (AMSUIWebDiagnosticsWrapperViewController)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AMSUIWebDiagnosticsWrapperViewController;
  v6 = [(AMSUICommonViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (unint64_t)_destinationForValue:(id)value
{
  valueCopy = value;
  v4 = valueCopy;
  if (valueCopy)
  {
    integerValue = [valueCopy integerValue];
    if ((integerValue - 1) >= 6)
    {
      v6 = 0;
    }

    else
    {
      v6 = integerValue;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)reportFinishWithReason:(unint64_t)reason
{
  v16[1] = *MEMORY[0x1E69E9840];
  context = [(AMSUIWebDiagnosticsWrapperViewController *)self context];
  logKey = [context logKey];
  v7 = AMSUIWebSetSubLogKey(logKey, 0);

  v8 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"DeviceDiagnostics" logKey:v7];
  v15 = @"finishReason";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
  v16[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(AMSUIWebJSRequest *)v8 setOptions:v10];

  context2 = [(AMSUIWebDiagnosticsWrapperViewController *)self context];
  dataProvider = [context2 dataProvider];
  v13 = [dataProvider runJSRequest:v8];

  v14 = *MEMORY[0x1E69E9840];
}

void __59__AMSUIWebDiagnosticsWrapperViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E698CBB0] isRunningUnitTests];
    v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v9 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v12 = objc_opt_class();
        v13 = AMSLogKey();
        v14 = AMSHashIfNeeded();
        *buf = 138543874;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        *&buf[22] = 2114;
        v66 = v14;
        _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No Diagnostics view controller set (error: %{public}@)", buf, 0x20u);
      }

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      v15 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      [v9 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v15 userInfo:0];
    }

    else
    {
      if (!v8)
      {
        v9 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v53 = [v9 OSLogObject];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        v54 = *(a1 + 32);
        v55 = objc_opt_class();
        v56 = AMSLogKey();
        v57 = AMSHashIfNeeded();
        *buf = 138543874;
        *&buf[4] = v55;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        *&buf[22] = 2114;
        v66 = v57;
        _os_log_impl(&dword_1BB036000, v53, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] No Diagnostics view controller set (error: %{public}@)", buf, 0x20u);
      }
    }

    goto LABEL_33;
  }

  v9 = v5;
  [v9 setDelegate:*(a1 + 32)];
  v16 = [*(a1 + 32) model];
  v17 = [v16 destination];
  if (v17)
  {
    goto LABEL_11;
  }

  v17 = [*(a1 + 32) model];
  v18 = [v17 flowSessionID];
  if (v18)
  {

LABEL_11:
LABEL_12:
    v61 = 0;
    v62 = &v61;
    v63 = 0x2050000000;
    v19 = getDADiagnosticFlowClass_softClass;
    v64 = getDADiagnosticFlowClass_softClass;
    if (!getDADiagnosticFlowClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getDADiagnosticFlowClass_block_invoke;
      v66 = &unk_1E7F241B0;
      v67 = &v61;
      __getDADiagnosticFlowClass_block_invoke(buf);
      v19 = v62[3];
    }

    v20 = v19;
    _Block_object_dispose(&v61, 8);
    v21 = [v19 defaultFlow];
    v22 = [*(a1 + 32) model];
    v23 = [v22 destination];
    v24 = v23 == 0;

    if (!v24)
    {
      v25 = *(a1 + 32);
      v26 = [v25 model];
      v27 = [v26 destination];
      [v21 setDestination:{objc_msgSend(v25, "_destinationForValue:", v27)}];
    }

    v28 = [*(a1 + 32) model];
    v29 = [v28 flowSessionID];
    v30 = v29 == 0;

    if (!v30)
    {
      v31 = [*(a1 + 32) model];
      v32 = [v31 flowSessionID];
      [v21 setSessionID:v32];
    }

    v33 = [*(a1 + 32) model];
    v34 = [v33 flowSerialNumber];
    v35 = v34 == 0;

    if (!v35)
    {
      v36 = [*(a1 + 32) model];
      v37 = [v36 flowSerialNumber];
      [v21 setSerialNumber:v37];
    }

    [v9 setStartingFlow:v21];

    goto LABEL_21;
  }

  v59 = [*(a1 + 32) model];
  v60 = [v59 flowSerialNumber];

  if (v60)
  {
    goto LABEL_12;
  }

LABEL_21:
  v38 = [*(a1 + 32) model];
  v39 = [v38 sessionToken];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v41 = [*(a1 + 32) model];
    v42 = [v41 sessionToken];
    [v9 sessionToken:v42];
  }

  v43 = [*(a1 + 32) model];
  v44 = [v43 requiredSerialNumbers];
  objc_opt_class();
  v45 = objc_opt_isKindOfClass();

  if (v45)
  {
    v46 = [*(a1 + 32) model];
    v47 = [v46 requiredSerialNumbers];
    [v9 requiredSerialNumbers:v47];
  }

  v48 = [*(a1 + 32) model];
  v49 = [v48 selectableSerialNumbers];
  objc_opt_class();
  v50 = objc_opt_isKindOfClass();

  if (v50)
  {
    v51 = [*(a1 + 32) model];
    v52 = [v51 selectableSerialNumbers];
    [v9 selectableSerialNumbers:v52];
  }

  [*(a1 + 32) setDiagnosticsViewController:v9];
  [*(a1 + 32) ams_setChildViewController:v9];
LABEL_33:

  v58 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIWebDiagnosticsWrapperViewController;
  [(AMSUIWebDiagnosticsWrapperViewController *)&v14 viewDidLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  diagnosticsViewController = [(AMSUIWebDiagnosticsWrapperViewController *)self diagnosticsViewController];
  view2 = [diagnosticsViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)willPresentPageModel:(id)model appearance:(id)appearance
{
  v19 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = modelCopy;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [(AMSUIWebDiagnosticsWrapperViewController *)self setModel:v6];
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      context = [(AMSUIWebDiagnosticsWrapperViewController *)self context];
      logKey = [context logKey];
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = logKey;
      v17 = 2114;
      v18 = modelCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid model: %{public}@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (DADiagnosticsRemoteViewController)diagnosticsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_diagnosticsViewController);

  return WeakRetained;
}

@end