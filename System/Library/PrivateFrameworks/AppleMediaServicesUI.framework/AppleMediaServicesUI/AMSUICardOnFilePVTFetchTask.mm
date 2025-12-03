@interface AMSUICardOnFilePVTFetchTask
+ (id)_accountToUseFromGivenAccount:(id)account accountParameters:(id)parameters activeiTunesAccount:(id)tunesAccount;
- (AMSUICardOnFilePVTFetchTask)initWithAccount:(id)account accountParameters:(id)parameters bag:(id)bag displayName:(id)name metrics:(id)metrics viewController:(id)controller;
- (id)_promiseToFetchCardOnStackBooleanURL:(id)l;
- (id)_promiseToFetchCardOnStackTokenURL:(id)l;
- (id)_promiseToLoadBooleanURL;
- (id)_promiseToLoadPVTURL;
- (id)_promiseToPromptAfterCancel;
- (id)_promiseToPromptBeforeBiometricAuth;
- (id)performTask;
@end

@implementation AMSUICardOnFilePVTFetchTask

- (AMSUICardOnFilePVTFetchTask)initWithAccount:(id)account accountParameters:(id)parameters bag:(id)bag displayName:(id)name metrics:(id)metrics viewController:(id)controller
{
  accountCopy = account;
  parametersCopy = parameters;
  bagCopy = bag;
  nameCopy = name;
  metricsCopy = metrics;
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = AMSUICardOnFilePVTFetchTask;
  v18 = [(AMSTask *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_originalAccount, account);
    objc_storeStrong(&v19->_accountParameters, parameters);
    objc_storeStrong(&v19->_bag, bag);
    objc_storeStrong(&v19->_displayName, name);
    objc_storeStrong(&v19->_metrics, metrics);
    objc_storeStrong(&v19->_viewController, controller);
  }

  return v19;
}

- (id)performTask
{
  v38[1] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v32 = v5;
    v33 = 2114;
    v34 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running AMSUICardOnFilePVTFetchTask", buf, 0x16u);
  }

  v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C0]];
  v8 = objc_opt_class();
  originalAccount = [(AMSUICardOnFilePVTFetchTask *)self originalAccount];
  accountParameters = [(AMSUICardOnFilePVTFetchTask *)self accountParameters];
  ams_activeiTunesAccount = [v7 ams_activeiTunesAccount];
  v12 = [v8 _accountToUseFromGivenAccount:originalAccount accountParameters:accountParameters activeiTunesAccount:ams_activeiTunesAccount];

  v37 = @"AMSUICardOnFilePVTPreconditionsNotMet";
  v38[0] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  if (v12)
  {
    v14 = [objc_alloc(MEMORY[0x1E698C800]) initWithAccount:v12 forSignaturePurpose:1];
    perform = [v14 perform];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __42__AMSUICardOnFilePVTFetchTask_performTask__block_invoke;
    v27[3] = &unk_1E7F248A0;
    v28 = v13;
    selfCopy = self;
    v30 = v12;
    v16 = [perform continueWithPromiseBlock:v27];

    metrics = v28;
  }

  else
  {
    v18 = *MEMORY[0x1E698C548];
    v14 = AMSCustomError();
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = AMSLogKey();
      *buf = 138543874;
      v32 = v21;
      v33 = 2114;
      v34 = v22;
      v35 = 2114;
      v36 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
    }

    v16 = [MEMORY[0x1E698CAD0] promiseWithError:v14];
    metrics = [(AMSUICardOnFilePVTFetchTask *)self metrics];
    [metrics setDisplayReason:@"Active iTunes account mismatch"];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __42__AMSUICardOnFilePVTFetchTask_performTask__block_invoke_27;
  v26[3] = &unk_1E7F248C8;
  v26[4] = self;
  v23 = [v16 continueWithBlock:v26];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

id __42__AMSUICardOnFilePVTFetchTask_performTask__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *MEMORY[0x1E698C548];
    v5 = *(a1 + 32);
    v6 = AMSCustomError();
    v7 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v16 = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", &v16, 0x20u);
    }

    v12 = [*(a1 + 40) metrics];
    [v12 setDisplayReason:@"Biometrics for iTunes & App Store not enabled"];

    v13 = [MEMORY[0x1E698CAD0] promiseWithError:v6];
  }

  else
  {
    [*(a1 + 40) setAccount:*(a1 + 48)];
    v13 = [*(a1 + 40) _promiseToLoadBooleanURL];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __42__AMSUICardOnFilePVTFetchTask_performTask__block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [MEMORY[0x1E698CAD0] promiseWithResult:a2];
    goto LABEL_12;
  }

  v8 = [v5 domain];
  v9 = v8;
  if (v8 != *MEMORY[0x1E698C548])
  {

LABEL_11:
    v7 = [MEMORY[0x1E698CAD0] promiseWithError:v6];
    goto LABEL_12;
  }

  v10 = [v6 code];

  if (v10 != 6)
  {
    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v11)
  {
    v11 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v19 = 138543618;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] User cancelled biometric auth", &v19, 0x16u);
  }

  v7 = [*(a1 + 32) _promiseToPromptAfterCancel];
LABEL_12:
  v16 = v7;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_promiseToLoadBooleanURL
{
  v3 = [(AMSUICardOnFilePVTFetchTask *)self bag];
  v4 = [v3 URLForKey:@"verifyPaymentApplePayAurumOnStackBoolean"];

  valuePromise = [v4 valuePromise];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__AMSUICardOnFilePVTFetchTask__promiseToLoadBooleanURL__block_invoke;
  v8[3] = &unk_1E7F248F0;
  v8[4] = self;
  v6 = [valuePromise thenWithBlock:v8];

  return v6;
}

- (id)_promiseToFetchCardOnStackBooleanURL:(id)l
{
  lCopy = l;
  account = [(AMSUICardOnFilePVTFetchTask *)self account];
  accountParameters = [(AMSUICardOnFilePVTFetchTask *)self accountParameters];
  v7 = [(AMSUICardOnFilePVTFetchTask *)self bag];
  v8 = [AMSUIPaymentVerificationProtocolHandler _promiseToFetchURLResponseForAccount:account accountParameters:accountParameters url:lCopy bag:v7 requestBody:0 bodyEncoding:0 contentType:0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__AMSUICardOnFilePVTFetchTask__promiseToFetchCardOnStackBooleanURL___block_invoke;
  v12[3] = &unk_1E7F24918;
  v12[4] = self;
  v9 = [v8 thenWithBlock:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__AMSUICardOnFilePVTFetchTask__promiseToFetchCardOnStackBooleanURL___block_invoke_39;
  v11[3] = &unk_1E7F24410;
  v11[4] = self;
  [v9 addErrorBlock:v11];

  return v9;
}

id __68__AMSUICardOnFilePVTFetchTask__promiseToFetchCardOnStackBooleanURL___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = [v3 object];
    *buf = 138543874;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetched BOOLean url object: %{public}@", buf, 0x20u);
  }

  v10 = [v3 object];
  v11 = [AMSUIParentalVerificationCore _isCardOnFileOnStack:v10];

  if (v11)
  {
    v12 = [*(a1 + 32) _promiseToPromptBeforeBiometricAuth];
  }

  else
  {
    v19 = @"AMSUICardOnFilePVTPreconditionsNotMet";
    v20 = MEMORY[0x1E695E118];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = *MEMORY[0x1E698C548];
    v15 = AMSCustomError();
    v16 = [*(a1 + 32) metrics];
    [v16 setDisplayReason:@"No Aurum card on file"];

    v12 = [MEMORY[0x1E698CAD0] promiseWithError:v15];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

void __68__AMSUICardOnFilePVTFetchTask__promiseToFetchCardOnStackBooleanURL___block_invoke_39(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Finding card on file failed: %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_promiseToPromptBeforeBiometricAuth
{
  v3 = objc_alloc_init(MEMORY[0x1E698CA48]);
  [v3 finishWithSuccess];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__AMSUICardOnFilePVTFetchTask__promiseToPromptBeforeBiometricAuth__block_invoke;
  v6[3] = &unk_1E7F24488;
  v6[4] = self;
  v4 = [v3 thenWithPromiseBlock:v6];

  return v4;
}

- (id)_promiseToLoadPVTURL
{
  metrics = [(AMSUICardOnFilePVTFetchTask *)self metrics];
  [metrics enqueueEventWithPageId:@"ParentBiometric" displayReason:0];

  v4 = [(AMSUICardOnFilePVTFetchTask *)self bag];
  v5 = [v4 URLForKey:@"verifyPaymentApplePayAurumOnStackPVT"];

  valuePromise = [v5 valuePromise];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AMSUICardOnFilePVTFetchTask__promiseToLoadPVTURL__block_invoke;
  v9[3] = &unk_1E7F248F0;
  v9[4] = self;
  v7 = [valuePromise thenWithBlock:v9];

  return v7;
}

- (id)_promiseToFetchCardOnStackTokenURL:(id)l
{
  lCopy = l;
  account = [(AMSUICardOnFilePVTFetchTask *)self account];
  accountParameters = [(AMSUICardOnFilePVTFetchTask *)self accountParameters];
  v7 = [(AMSUICardOnFilePVTFetchTask *)self bag];
  v8 = [AMSUIPaymentVerificationProtocolHandler _promiseToFetchURLResponseForAccount:account accountParameters:accountParameters url:lCopy bag:v7 requestBody:0 bodyEncoding:0 contentType:0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__AMSUICardOnFilePVTFetchTask__promiseToFetchCardOnStackTokenURL___block_invoke;
  v12[3] = &unk_1E7F24918;
  v12[4] = self;
  v9 = [v8 thenWithBlock:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__AMSUICardOnFilePVTFetchTask__promiseToFetchCardOnStackTokenURL___block_invoke_2;
  v11[3] = &unk_1E7F24410;
  v11[4] = self;
  [v9 addErrorBlock:v11];

  return v9;
}

id __66__AMSUICardOnFilePVTFetchTask__promiseToFetchCardOnStackTokenURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [AMSUIParentalVerificationCore _tokenFromObject:v3];

  v5 = [AMSUIParentalVerificationCore _tokenResultFromTokenString:v4];
  if (v5)
  {
    v6 = [*(a1 + 32) metrics];
    [v6 enqueueEventWithPageId:@"ParentVerified" displayReason:@"CardOnFile"];

    v7 = [*(a1 + 32) metrics];
    [v7 flushEvents];

    v8 = [MEMORY[0x1E698CAD0] promiseWithResult:v5];
  }

  else
  {
    v9 = AMSError();
    v10 = [*(a1 + 32) metrics];
    [v10 setDisplayReason:@"Biometric scan failed"];

    v8 = [MEMORY[0x1E698CAD0] promiseWithError:v9];
  }

  return v8;
}

void __66__AMSUICardOnFilePVTFetchTask__promiseToFetchCardOnStackTokenURL___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fetch card on file failed: %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_promiseToPromptAfterCancel
{
  type = [MEMORY[0x1E698C7F8] type];
  v4 = [(AMSUICardOnFilePVTFetchTask *)self bag];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  if (type == 3)
  {
    v6 = @"FACE_ID";
  }

  else
  {
    v6 = @"TOUCH_ID";
  }

  v7 = AMSUILocalizedStringFromBundle(v6, v4, v5);

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(AMSUICardOnFilePVTFetchTask *)self bag];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v11 = AMSUILocalizedStringFromBundle(@"PAYMENT_VERIFICATION_BIOMETRIC_CANCEL_TITLE", v9, v10);
  v39 = [v8 stringWithFormat:v11, v7];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(AMSUICardOnFilePVTFetchTask *)self bag];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v15 = AMSUILocalizedStringFromBundle(@"PAYMENT_VERIFICATION_BIOMETRIC_CANCEL_MESSAGE", v13, v14);
  v38 = [v12 stringWithFormat:v15, v7];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(AMSUICardOnFilePVTFetchTask *)self bag];
  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v19 = AMSUILocalizedStringFromBundle(@"PAYMENT_VERIFICATION_BIOMETRIC_CANCEL_RETRACT_BUTTON", v17, v18);
  v20 = [v16 stringWithFormat:v19, v7];

  v21 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v22 = [objc_alloc(MEMORY[0x1E698C8C0]) initWithTitle:v39 message:v38];
  v23 = MEMORY[0x1E698C8B8];
  v24 = [(AMSUICardOnFilePVTFetchTask *)self bag];
  v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v26 = AMSUILocalizedStringFromBundle(@"PAYMENT_VERIFICATION_BIOMETRIC_CANCEL_CONFIRM_BUTTON", v24, v25);
  v27 = [v23 actionWithTitle:v26 identifier:@"cancelConfirmId"];
  [v22 addButtonAction:v27];

  v28 = [MEMORY[0x1E698C8B8] actionWithTitle:v20 identifier:@"cancelRetractId"];
  [v22 addButtonAction:v28];

  v29 = [AMSUIAlertDialogTask alloc];
  viewController = [(AMSUICardOnFilePVTFetchTask *)self viewController];
  v31 = [(AMSUIAlertDialogTask *)v29 initWithRequest:v22 presentingViewController:viewController];

  metrics = [(AMSUICardOnFilePVTFetchTask *)self metrics];
  [metrics enqueueEventWithPageId:@"ContinueNoBiometric" displayReason:0];

  present = [(AMSUIAlertDialogTask *)v31 present];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __58__AMSUICardOnFilePVTFetchTask__promiseToPromptAfterCancel__block_invoke;
  v41[3] = &unk_1E7F24940;
  v42 = v22;
  v43 = @"cancelConfirmId";
  v44 = v21;
  selfCopy = self;
  v34 = v21;
  v35 = v22;
  [present addFinishBlock:v41];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __58__AMSUICardOnFilePVTFetchTask__promiseToPromptAfterCancel__block_invoke_2;
  v40[3] = &unk_1E7F248F0;
  v40[4] = self;
  v36 = [v34 thenWithBlock:v40];

  return v36;
}

void __58__AMSUICardOnFilePVTFetchTask__promiseToPromptAfterCancel__block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [a2 selectedActionIdentifier];
  v5 = [v3 locateActionWithIdentifier:v4];

  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    v8 = *MEMORY[0x1E698C548];
    v14 = @"biometricsDenied";
    v15[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = AMSCustomError();

    [*(a1 + 48) finishWithError:v10];
    v11 = [*(a1 + 56) metrics];
    [v11 enqueueEventWithTargetId:@"Payment" pageId:@"ContinueNoBiometric" displayReason:0];
  }

  else
  {
    [*(a1 + 48) finishWithResult:@"User opted to not cancel biometric auth"];
    v12 = [*(a1 + 56) metrics];
    [v12 enqueueEventWithTargetId:@"Biometric" pageId:@"ContinueNoBiometric" displayReason:0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_accountToUseFromGivenAccount:(id)account accountParameters:(id)parameters activeiTunesAccount:(id)tunesAccount
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  tunesAccountCopy = tunesAccount;
  parametersCopy = parameters;
  ams_altDSID = [tunesAccountCopy ams_altDSID];
  ams_altDSID2 = [accountCopy ams_altDSID];
  v12 = [ams_altDSID2 isEqualToString:ams_altDSID];

  v13 = [parametersCopy objectForKeyedSubscript:@"altDsId"];

  v14 = [v13 isEqualToString:ams_altDSID];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    AMSLogKey();
    v18 = v23 = v12;
    ams_altDSID3 = [accountCopy ams_altDSID];
    *buf = 138544386;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = ams_altDSID;
    v30 = 2114;
    v31 = ams_altDSID3;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Active iTunes: %{public}@, provided account: %{public}@, provided parameters: %{public}@", buf, 0x34u);

    v12 = v23;
  }

  if ((v12 | v14))
  {
    v20 = tunesAccountCopy;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end