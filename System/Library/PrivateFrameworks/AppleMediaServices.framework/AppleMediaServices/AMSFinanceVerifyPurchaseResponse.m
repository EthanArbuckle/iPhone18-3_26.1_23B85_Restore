@interface AMSFinanceVerifyPurchaseResponse
+ (id)_dialogRequestForCVVFromPayload:(id)a3 verifyType:(int64_t)a4;
+ (id)_dialogRequestForCarrierFromPayload:(id)a3 verifyType:(int64_t)a4;
+ (int64_t)_verifyTypeFromPayload:(id)a3;
- (AMSFinanceVerifyPurchaseResponse)initWithPayload:(id)a3 taskInfo:(id)a4;
- (id)_handleCVVDialogResult:(id)a3 shouldReattempt:(BOOL *)a4;
- (id)_handleCarrierDialogResult:(id)a3 shouldReattempt:(BOOL *)a4;
- (id)_runCVVRequestForCode:(id)a3 error:(id *)a4;
- (id)_runCarrierNewCodeWithError:(id *)a3;
- (id)_runCarrierVerifyCode:(id)a3 error:(id *)a4;
- (id)performWithTaskInfo:(id)a3;
@end

@implementation AMSFinanceVerifyPurchaseResponse

- (AMSFinanceVerifyPurchaseResponse)initWithPayload:(id)a3 taskInfo:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [AMSFinanceVerifyPurchaseResponse _verifyTypeFromPayload:v7];
  if (!v9)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v12 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543874;
      v22 = v17;
      v23 = 2114;
      v24 = v18;
      v25 = 2048;
      v26 = 0;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown verify purchase type: %ld", buf, 0x20u);
    }

    v15 = 0;
    goto LABEL_16;
  }

  v10 = v9;
  if (v9 == 2)
  {
    v11 = [AMSFinanceVerifyPurchaseResponse _dialogRequestForCarrierFromPayload:v7 verifyType:2];
  }

  else
  {
    if (v9 != 1)
    {
      goto LABEL_10;
    }

    v11 = [AMSFinanceVerifyPurchaseResponse _dialogRequestForCVVFromPayload:v7 verifyType:1];
  }

  v12 = v11;
  if (v11)
  {
    v20.receiver = self;
    v20.super_class = AMSFinanceVerifyPurchaseResponse;
    v13 = [(AMSFinanceVerifyPurchaseResponse *)&v20 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_dialogRequest, v12);
      objc_storeStrong(&v14->_responseDictionary, a3);
      objc_storeStrong(&v14->_taskInfo, a4);
      v14->_verifyType = v10;
    }

    self = v14;
    v15 = self;
LABEL_16:

    goto LABEL_17;
  }

LABEL_10:
  v15 = 0;
LABEL_17:

  return v15;
}

- (id)performWithTaskInfo:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543874;
    v54 = v6;
    v55 = 2114;
    v56 = v7;
    v57 = 2048;
    v58 = [(AMSFinanceVerifyPurchaseResponse *)self verifyType];
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing verification with type: %ld", buf, 0x20u);
  }

  v8 = [v48 session];
  v9 = [v48 session];
  v49 = [v9 delegate];

  v50 = [(AMSFinanceVerifyPurchaseResponse *)self dialogRequest];
  if ([(AMSFinanceVerifyPurchaseResponse *)self verifyType])
  {
    v10 = 0;
  }

  else
  {
    v10 = AMSError(2, @"Verify Dialog Error", @"Unknown verify type", 0);
  }

  v11 = [v48 properties];
  v12 = [v11 dialogOptions];

  if (v12)
  {
    v13 = AMSError(2, @"Finance Dialog Error", @"Dialogs were suppressed by the caller", 0);

    v10 = v13;
  }

  v14 = objc_opt_respondsToSelector();
  v15 = objc_opt_respondsToSelector();
  if ((v14 & 1) == 0 && (v15 & 1) == 0)
  {
    v17 = AMSError(2, @"Verify Dialog Error", @"No delegate to present the dialog", 0);

    v10 = v17;
  }

  v52 = 1;
  if (v10)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_50;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  *&v16 = 138543618;
  v46 = v16;
  v47 = v8;
  while (1)
  {
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543874;
      v54 = v24;
      v55 = 2114;
      v56 = v25;
      v57 = 2114;
      v58 = v50;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting dialog: %{public}@", buf, 0x20u);
    }

    v26 = objc_alloc_init(AMSPromise);
    if (v14)
    {
      v27 = [v48 task];
      v28 = [(AMSPromise *)v26 completionHandlerAdapter];
      [v49 AMSURLSession:v8 task:v27 handleDialogRequest:v50 completion:v28];
    }

    else
    {
      v29 = +[AMSLogConfig sharedConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v29 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = AMSLogKey();
        *buf = v46;
        v54 = v31;
        v55 = 2114;
        v56 = v32;
        _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Calling legacy delegate for dialog handling", buf, 0x16u);

        v8 = v47;
      }

      v27 = [(AMSPromise *)v26 completionHandlerAdapter];
      [v49 AMSURLSession:v8 handleDialogRequest:v50 completion:v27];
    }

    v51 = 0;
    v18 = [(AMSPromise *)v26 resultWithTimeout:&v51 error:300.0];
    v10 = v51;

    if (v10)
    {
      break;
    }

    v33 = [(AMSFinanceVerifyPurchaseResponse *)self verifyType];
    if (v33)
    {
      if (v33 == 2)
      {
        v34 = [(AMSFinanceVerifyPurchaseResponse *)self _handleCarrierDialogResult:v18 shouldReattempt:&v52];
      }

      else
      {
        if (v33 != 1)
        {
          goto LABEL_35;
        }

        v34 = [(AMSFinanceVerifyPurchaseResponse *)self _handleCVVDialogResult:v18 shouldReattempt:&v52];
      }

      v35 = v34;

      v19 = v35;
    }

    else
    {
      v52 = 0;
    }

LABEL_35:
    v10 = 0;
    if (v52 == 1 && v21 >= 2)
    {
      v36 = +[AMSLogConfig sharedConfig];
      if (!v36)
      {
        v36 = +[AMSLogConfig sharedConfig];
      }

      v37 = [v36 OSLogObject];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = AMSLogKey();
        *buf = v46;
        v54 = v38;
        v8 = v47;
        v55 = 2114;
        v56 = v39;
        _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Max attempts reached", buf, 0x16u);
      }

      v10 = AMSError(6, @"Verify Dialog Error", @"Max attempts reached, cancelling dialog", 0);
      v52 = 0;
    }

    if (!v10)
    {
      ++v21;
      v20 = v18;
      if (v52)
      {
        continue;
      }
    }

    goto LABEL_50;
  }

  v40 = +[AMSLogConfig sharedConfig];
  if (!v40)
  {
    v40 = +[AMSLogConfig sharedConfig];
  }

  v41 = [v40 OSLogObject];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = objc_opt_class();
    v43 = AMSLogKey();
    v44 = AMSLogableError(v10);
    *buf = 138543874;
    v54 = v42;
    v55 = 2114;
    v56 = v43;
    v57 = 2114;
    v58 = v44;
    _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to present dialog. Error: %{public}@", buf, 0x20u);

    v8 = v47;
  }

LABEL_50:
  if (v10 && !v19)
  {
    v19 = [AMSURLAction actionWithError:v10];
  }

  [v19 setDialogResult:v18];

  return v19;
}

+ (id)_dialogRequestForCarrierFromPayload:(id)a3 verifyType:(int64_t)a4
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"customerTitleMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"customerMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v27 = v8;
  v28 = v6;
  v9 = [AMSDialogRequest requestWithTitle:v6 message:v8];
  v10 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  v11 = [v10 localizedStringForKey:@"VERIFY_PAYMENT_ENTER_CODE" value:&stru_1F071BA78 table:0];
  v12 = [AMSDialogTextField textFieldWithPlaceholder:v11 secure:0];

  [v12 setKeyboardType:2];
  [v9 addTextField:v12];
  v13 = [v4 objectForKeyedSubscript:@"failureClientInfo"];
  objc_opt_class();
  v14 = 0;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  v15 = [v14 objectForKeyedSubscript:@"localization"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v16 objectForKeyedSubscript:@"customerSubmitButtonMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if ([v18 length])
  {
    v19 = [AMSDialogAction actionWithTitle:v18];
    [v19 setIdentifier:@"customerSubmitButtonMessage"];
    [v9 addButtonAction:v19];
    [v9 setDefaultAction:v19];
  }

  v20 = [v16 objectForKeyedSubscript:@"customerSendNewCodeButtonMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if ([v21 length])
  {
    v22 = [AMSDialogAction actionWithTitle:v21];
    [v22 setIdentifier:@"customerSendNewCodeButtonMessage"];
    [v9 addButtonAction:v22];
  }

  v23 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  v24 = [v23 localizedStringForKey:@"CANCEL" value:&stru_1F071BA78 table:0];
  v25 = [AMSDialogAction actionWithTitle:v24];

  [v25 setStyle:2];
  [v9 addButtonAction:v25];

  return v9;
}

+ (id)_dialogRequestForCVVFromPayload:(id)a3 verifyType:(int64_t)a4
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"customerTitleMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"customerMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [AMSDialogRequest requestWithTitle:v6 message:v8];
  v10 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  v11 = [v10 localizedStringForKey:@"VERIFY_PAYMENT_ENTER_CVV" value:&stru_1F071BA78 table:0];
  v12 = [AMSDialogTextField textFieldWithPlaceholder:v11 secure:0];

  [v12 setKeyboardType:2];
  [v9 addTextField:v12];
  v13 = [v4 objectForKeyedSubscript:@"dialog"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;

    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = [v14 objectForKeyedSubscript:@"okButtonString"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v13 = v15;

    if (v13)
    {
      v15 = [AMSDialogAction actionWithTitle:v13];
      [v9 addButtonAction:v15];
LABEL_14:
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_16:
  v16 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_1F071BA78 table:0];
  v18 = [AMSDialogAction actionWithTitle:v17];

  [v18 setStyle:2];
  [v9 addButtonAction:v18];

  return v9;
}

- (id)_handleCarrierDialogResult:(id)a3 shouldReattempt:(BOOL *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543874;
    v62 = v9;
    v63 = 2114;
    v64 = v10;
    v65 = 2114;
    v66 = v6;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling CVV dialog result: %{public}@", buf, 0x20u);
  }

  v11 = [v6 originalRequest];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(AMSFinanceVerifyPurchaseResponse *)self dialogRequest];
  }

  v14 = v13;

  v15 = [v6 selectedActionIdentifier];
  v16 = [v14 locateActionWithIdentifier:v15];

  v17 = [v16 identifier];
  v18 = [v17 isEqualToString:@"customerSendNewCodeButtonMessage"];

  if (v18)
  {
    v60 = 0;
    v19 = [(AMSFinanceVerifyPurchaseResponse *)self _runCarrierNewCodeWithError:&v60];
    v20 = v60;
    if (!v20)
    {
      v25 = 0;
      v26 = 1;
      goto LABEL_55;
    }

    v21 = +[AMSLogConfig sharedConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *buf = 138543874;
      v62 = v23;
      v63 = 2114;
      v64 = v24;
      v65 = 2114;
      v66 = v20;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to send new code. %{public}@", buf, 0x20u);
    }

    v25 = 0;
    v26 = 1;
LABEL_54:

LABEL_55:
    if (!a4)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v27 = [v16 identifier];
  v28 = [v27 isEqualToString:@"customerSubmitButtonMessage"];

  if (v28)
  {
    v29 = [v6 textfieldValues];
    v20 = [v29 firstObject];

    if (![v20 length])
    {
      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = AMSLogKey();
        *buf = 138543618;
        v62 = v35;
        v63 = 2114;
        v64 = v36;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No code provided, cancelling verification", buf, 0x16u);
      }

      v26 = 0;
      v25 = 0;
      goto LABEL_54;
    }

    v59 = 0;
    v30 = [(AMSFinanceVerifyPurchaseResponse *)self _runCarrierVerifyCode:v20 error:&v59];
    v21 = v59;
    v56 = v30;
    v31 = [v30 object];
    objc_opt_class();
    v32 = 0;
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    v58 = v32;
    v33 = [v32 objectForKeyedSubscript:@"failureType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v57 = a4;
    v37 = v34;
    if (!v34 && v21)
    {
      v38 = [v21 userInfo];
      v39 = [v38 objectForKeyedSubscript:@"AMSServerErrorCode"];

      v37 = [v39 stringValue];
    }

    v40 = [v58 objectForKeyedSubscript:@"success"];
    v55 = v40;
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v40 BOOLValue])
    {
      v41 = v37;
      v42 = +[AMSLogConfig sharedConfig];
      if (!v42)
      {
        v42 = +[AMSLogConfig sharedConfig];
      }

      v43 = [v42 OSLogObject];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = objc_opt_class();
        v45 = AMSLogKey();
        *buf = 138543618;
        v62 = v44;
        v63 = 2114;
        v64 = v45;
        _os_log_impl(&dword_192869000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Carrier verification succeeded", buf, 0x16u);
      }

      v25 = +[AMSURLAction retryAction];
      [v25 setRetryIdentifier:0x1F073A1D8];
    }

    else
    {
      if (!v21 || [v37 length])
      {
        v41 = v37;
        v46 = +[AMSLogConfig sharedConfig];
        if (!v46)
        {
          v46 = +[AMSLogConfig sharedConfig];
        }

        v47 = [v46 OSLogObject];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = objc_opt_class();
          v49 = AMSLogKey();
          *buf = 138543874;
          v62 = v48;
          v63 = 2114;
          v64 = v49;
          v65 = 2112;
          v66 = v41;
          _os_log_impl(&dword_192869000, v47, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] User entered incorrect SMS code. (failureType: %@)", buf, 0x20u);
        }

        v25 = 0;
        v26 = 1;
        goto LABEL_53;
      }

      v41 = v37;
      v50 = +[AMSLogConfig sharedConfig];
      if (!v50)
      {
        v50 = +[AMSLogConfig sharedConfig];
      }

      v51 = [v50 OSLogObject];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = AMSLogKey();
        *buf = 138543874;
        v62 = v52;
        v63 = 2114;
        v64 = v53;
        v65 = 2114;
        v66 = v21;
        _os_log_impl(&dword_192869000, v51, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Carrier verification failed. %{public}@", buf, 0x20u);
      }

      v25 = [AMSURLAction actionWithError:v21];
    }

    v26 = 0;
LABEL_53:

    v22 = v56;
    a4 = v57;
    goto LABEL_54;
  }

  v26 = 0;
  v25 = 0;
  if (a4)
  {
LABEL_56:
    *a4 = v26;
  }

LABEL_57:

  return v25;
}

- (id)_handleCVVDialogResult:(id)a3 shouldReattempt:(BOOL *)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543874;
    v57 = v9;
    v58 = 2114;
    v59 = v10;
    v60 = 2114;
    v61 = v6;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling CVV dialog result: %{public}@", buf, 0x20u);
  }

  v11 = [v6 originalRequest];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(AMSFinanceVerifyPurchaseResponse *)self dialogRequest];
  }

  v14 = v13;

  v15 = [v6 selectedActionIdentifier];
  v16 = [v14 locateActionWithIdentifier:v15];

  v17 = [v6 textfieldValues];
  v18 = [v17 firstObject];

  if ([v18 length] && objc_msgSend(v16, "style") != 2)
  {
    v52 = v14;
    v55 = 0;
    v20 = [(AMSFinanceVerifyPurchaseResponse *)self _runCVVRequestForCode:v18 error:&v55];
    v19 = v55;
    v26 = [v20 object];
    objc_opt_class();
    v27 = 0;
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    v53 = v27;
    v28 = [v27 objectForKeyedSubscript:@"failureType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v54 = a4;
    v14 = v52;
    v30 = v29;
    if (v29)
    {
      v31 = 0x1E73B0000uLL;
    }

    else
    {
      v31 = 0x1E73B0000;
      if (v19)
      {
        v32 = [v19 userInfo];
        v33 = [v32 objectForKeyedSubscript:@"AMSServerErrorCode"];

        v30 = [v33 stringValue];
      }
    }

    v51 = v30;
    if (([v30 isEqualToString:@"5202"] & 1) != 0 || objc_msgSend(v30, "isEqualToString:", @"2025"))
    {
      v34 = [*(v31 + 3552) sharedConfig];
      if (!v34)
      {
        v34 = [*(v31 + 3552) sharedConfig];
      }

      v35 = [v34 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        AMSLogKey();
        v38 = v37 = v16;
        *buf = 138543618;
        v57 = v36;
        v58 = 2114;
        v59 = v38;
        _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid verification code", buf, 0x16u);

        v16 = v37;
      }

      v25 = 0;
      v24 = 1;
    }

    else
    {
      v39 = [*(v31 + 3552) sharedConfig];
      if (v19)
      {
        if (!v39)
        {
          v39 = [*(v31 + 3552) sharedConfig];
        }

        v40 = v39;
        v41 = [v39 OSLogObject];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_opt_class();
          AMSLogKey();
          v44 = v43 = v16;
          *buf = 138543874;
          v57 = v42;
          v58 = 2114;
          v59 = v44;
          v60 = 2114;
          v61 = v19;
          _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] CVV verification failed. %{public}@", buf, 0x20u);

          v16 = v43;
        }

        v25 = [AMSURLAction actionWithError:v19];
      }

      else
      {
        if (!v39)
        {
          v39 = [*(v31 + 3552) sharedConfig];
        }

        v45 = v39;
        v46 = [v39 OSLogObject];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = objc_opt_class();
          AMSLogKey();
          v49 = v48 = v16;
          *buf = 138543618;
          v57 = v47;
          v58 = 2114;
          v59 = v49;
          _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Verification succeeded", buf, 0x16u);

          v16 = v48;
        }

        v25 = +[AMSURLAction retryAction];
        [v25 setRetryIdentifier:0x1F073A1B8];
      }

      v24 = 0;
    }

    a4 = v54;
  }

  else
  {
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      AMSLogKey();
      v23 = v22 = v16;
      *buf = 138543618;
      v57 = v21;
      v58 = 2114;
      v59 = v23;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dialog cancelled", buf, 0x16u);

      v16 = v22;
    }

    v24 = 0;
    v25 = 0;
  }

  if (a4)
  {
    *a4 = v24;
  }

  return v25;
}

- (id)_runCarrierNewCodeWithError:(id *)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v5 = [(AMSFinanceVerifyPurchaseResponse *)self responseDictionary];
  v6 = [v5 objectForKeyedSubscript:@"failureClientInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 objectForKeyedSubscript:@"carrierBillingUrls"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 objectForKeyedSubscript:@"sendCodeUrl"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
    goto LABEL_12;
  }

  v11 = v10;

  if (!v11 || ([MEMORY[0x1E695DFF8] URLWithString:v11], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_12:
    v13 = AMSError(2, @"Verify Purchase Failed", @"No new code URL found", 0);
    v12 = 0;
    v14 = 0;
    v15 = 0;
    if (v13)
    {
      goto LABEL_19;
    }
  }

  v43 = v7;
  v44 = a3;
  v47 = @"guid";
  v16 = +[AMSDevice deviceGUID];
  v17 = v16;
  v18 = &stru_1F071BA78;
  if (v16)
  {
    v18 = v16;
  }

  v48[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];

  v20 = [AMSURLRequestEncoder alloc];
  v21 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  v22 = [v21 properties];
  v23 = [v22 bag];
  v24 = [(AMSURLRequestEncoder *)v20 initWithBag:v23];

  [(AMSURLRequestEncoder *)v24 setRequestEncoding:2];
  v25 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  v26 = [v25 properties];
  v27 = [v26 account];
  [(AMSURLRequestEncoder *)v24 setAccount:v27];

  [(AMSURLRequestEncoder *)v24 setDialogOptions:1];
  v28 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  v29 = [v28 properties];
  [(AMSURLRequestEncoder *)v24 setParentProperties:v29];

  v30 = [(AMSURLRequestEncoder *)v24 requestWithMethod:4 URL:v12 parameters:v19];
  v46 = 0;
  v14 = [v30 resultWithError:&v46];
  v13 = v46;

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v41 = [AMSURLSession alloc];
    v42 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    v31 = [v42 session];
    v32 = [v31 configuration];
    v33 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    v34 = [v33 session];
    [v34 delegate];
    v36 = v35 = v9;
    v37 = [(AMSURLSession *)v41 initWithConfiguration:v32 delegate:v36 delegateQueue:0];

    v9 = v35;
    v38 = [(AMSURLSession *)v37 dataTaskPromiseWithRequest:v14];
    v45 = 0;
    v15 = [v38 resultWithError:&v45];
    v13 = v45;
  }

  v7 = v43;
  a3 = v44;
LABEL_19:
  if (a3)
  {
    v39 = v13;
    *a3 = v13;
  }

  return v15;
}

- (id)_runCarrierVerifyCode:(id)a3 error:(id *)a4
{
  v51[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AMSFinanceVerifyPurchaseResponse *)self responseDictionary];
  v8 = [v7 objectForKeyedSubscript:@"failureClientInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 objectForKeyedSubscript:@"carrierBillingUrls"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v47 = v11;
  v12 = [v11 objectForKeyedSubscript:@"verifyCodeUrl"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v13 = 0;
    goto LABEL_12;
  }

  v13 = v12;

  if (!v13 || ([MEMORY[0x1E695DFF8] URLWithString:v13], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_12:
    v15 = AMSError(2, @"Verify Purchase Failed", @"No verify URL found", 0);
    v14 = 0;
    v16 = 0;
    v17 = 0;
    if (v15)
    {
      goto LABEL_19;
    }
  }

  v45 = v9;
  v46 = a4;
  v50[0] = @"guid";
  v18 = +[AMSDevice deviceGUID];
  v19 = v18;
  v20 = &stru_1F071BA78;
  if (v18)
  {
    v20 = v18;
  }

  v50[1] = @"verificationCode";
  v51[0] = v20;
  v51[1] = v6;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];

  v22 = [AMSURLRequestEncoder alloc];
  v23 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  v24 = [v23 properties];
  v25 = [v24 bag];
  v26 = [(AMSURLRequestEncoder *)v22 initWithBag:v25];

  [(AMSURLRequestEncoder *)v26 setRequestEncoding:2];
  v27 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  v28 = [v27 properties];
  v29 = [v28 account];
  [(AMSURLRequestEncoder *)v26 setAccount:v29];

  v30 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  v31 = [v30 properties];
  [(AMSURLRequestEncoder *)v26 setParentProperties:v31];

  v32 = [(AMSURLRequestEncoder *)v26 requestWithMethod:4 URL:v14 parameters:v21];
  v49 = 0;
  v16 = [v32 resultWithError:&v49];
  v15 = v49;

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v43 = [AMSURLSession alloc];
    v44 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    v33 = [v44 session];
    v34 = [v33 configuration];
    v35 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    v36 = [v35 session];
    [v36 delegate];
    v38 = v37 = v6;
    v39 = [(AMSURLSession *)v43 initWithConfiguration:v34 delegate:v38 delegateQueue:0];

    v6 = v37;
    v40 = [(AMSURLSession *)v39 dataTaskPromiseWithRequest:v16];
    v48 = 0;
    v17 = [v40 resultWithError:&v48];
    v15 = v48;
  }

  v9 = v45;
  a4 = v46;
LABEL_19:
  if (a4)
  {
    v41 = v15;
    *a4 = v15;
  }

  return v17;
}

- (id)_runCVVRequestForCode:(id)a3 error:(id *)a4
{
  v45[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AMSFinanceVerifyPurchaseResponse *)self responseDictionary];
  v8 = [v7 objectForKeyedSubscript:@"nextActionUrl"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
    goto LABEL_6;
  }

  v9 = v8;

  if (!v9 || ([MEMORY[0x1E695DFF8] URLWithString:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_6:
    v11 = AMSError(2, @"Verify Purchase Failed", @"No verify URL", 0);
    v10 = 0;
    v12 = 0;
    v13 = 0;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  v41 = a4;
  v44[0] = @"guid";
  v14 = +[AMSDevice deviceGUID];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F071BA78;
  }

  v45[0] = v16;
  v45[1] = v6;
  v44[1] = @"cvm";
  v44[2] = @"machineName";
  v45[2] = &stru_1F071BA78;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

  v18 = [AMSURLRequestEncoder alloc];
  v19 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  v20 = [v19 properties];
  v21 = [v20 bag];
  v22 = [(AMSURLRequestEncoder *)v18 initWithBag:v21];

  [(AMSURLRequestEncoder *)v22 setRequestEncoding:2];
  v23 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  v24 = [v23 properties];
  v25 = [v24 account];
  [(AMSURLRequestEncoder *)v22 setAccount:v25];

  v26 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  v27 = [v26 properties];
  [(AMSURLRequestEncoder *)v22 setParentProperties:v27];

  v28 = [(AMSURLRequestEncoder *)v22 requestWithMethod:4 URL:v10 parameters:v17];
  v43 = 0;
  v12 = [v28 resultWithError:&v43];
  v11 = v43;

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v39 = [AMSURLSession alloc];
    v40 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    v29 = [v40 session];
    v30 = [v29 configuration];
    v31 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    [v31 session];
    v33 = v32 = v6;
    v34 = [v33 delegate];
    v35 = [(AMSURLSession *)v39 initWithConfiguration:v30 delegate:v34 delegateQueue:0];

    v6 = v32;
    v36 = [(AMSURLSession *)v35 dataTaskPromiseWithRequest:v12];
    v42 = 0;
    v13 = [v36 resultWithError:&v42];
    v11 = v42;
  }

  a4 = v41;
LABEL_14:
  if (a4)
  {
    v37 = v11;
    *a4 = v11;
  }

  return v13;
}

+ (int64_t)_verifyTypeFromPayload:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"failureType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if ([v4 isEqualToString:@"machineVerificationFailed"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"carrierBillingVerificationFailed"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end