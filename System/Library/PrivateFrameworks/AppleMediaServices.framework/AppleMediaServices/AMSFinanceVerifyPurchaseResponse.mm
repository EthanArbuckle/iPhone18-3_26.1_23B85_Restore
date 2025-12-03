@interface AMSFinanceVerifyPurchaseResponse
+ (id)_dialogRequestForCVVFromPayload:(id)payload verifyType:(int64_t)type;
+ (id)_dialogRequestForCarrierFromPayload:(id)payload verifyType:(int64_t)type;
+ (int64_t)_verifyTypeFromPayload:(id)payload;
- (AMSFinanceVerifyPurchaseResponse)initWithPayload:(id)payload taskInfo:(id)info;
- (id)_handleCVVDialogResult:(id)result shouldReattempt:(BOOL *)reattempt;
- (id)_handleCarrierDialogResult:(id)result shouldReattempt:(BOOL *)reattempt;
- (id)_runCVVRequestForCode:(id)code error:(id *)error;
- (id)_runCarrierNewCodeWithError:(id *)error;
- (id)_runCarrierVerifyCode:(id)code error:(id *)error;
- (id)performWithTaskInfo:(id)info;
@end

@implementation AMSFinanceVerifyPurchaseResponse

- (AMSFinanceVerifyPurchaseResponse)initWithPayload:(id)payload taskInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  infoCopy = info;
  v9 = [AMSFinanceVerifyPurchaseResponse _verifyTypeFromPayload:payloadCopy];
  if (!v9)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543874;
      v22 = v17;
      v23 = 2114;
      v24 = v18;
      v25 = 2048;
      v26 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown verify purchase type: %ld", buf, 0x20u);
    }

    selfCopy = 0;
    goto LABEL_16;
  }

  v10 = v9;
  if (v9 == 2)
  {
    v11 = [AMSFinanceVerifyPurchaseResponse _dialogRequestForCarrierFromPayload:payloadCopy verifyType:2];
  }

  else
  {
    if (v9 != 1)
    {
      goto LABEL_10;
    }

    v11 = [AMSFinanceVerifyPurchaseResponse _dialogRequestForCVVFromPayload:payloadCopy verifyType:1];
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
      objc_storeStrong(&v14->_responseDictionary, payload);
      objc_storeStrong(&v14->_taskInfo, info);
      v14->_verifyType = v10;
    }

    self = v14;
    selfCopy = self;
LABEL_16:

    goto LABEL_17;
  }

LABEL_10:
  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

- (id)performWithTaskInfo:(id)info
{
  v59 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543874;
    v54 = v6;
    v55 = 2114;
    v56 = v7;
    v57 = 2048;
    verifyType = [(AMSFinanceVerifyPurchaseResponse *)self verifyType];
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing verification with type: %ld", buf, 0x20u);
  }

  session = [infoCopy session];
  session2 = [infoCopy session];
  delegate = [session2 delegate];

  dialogRequest = [(AMSFinanceVerifyPurchaseResponse *)self dialogRequest];
  if ([(AMSFinanceVerifyPurchaseResponse *)self verifyType])
  {
    v10 = 0;
  }

  else
  {
    v10 = AMSError(2, @"Verify Dialog Error", @"Unknown verify type", 0);
  }

  properties = [infoCopy properties];
  dialogOptions = [properties dialogOptions];

  if (dialogOptions)
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
  v47 = session;
  while (1)
  {
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543874;
      v54 = v24;
      v55 = 2114;
      v56 = v25;
      v57 = 2114;
      verifyType = dialogRequest;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting dialog: %{public}@", buf, 0x20u);
    }

    v26 = objc_alloc_init(AMSPromise);
    if (v14)
    {
      task = [infoCopy task];
      completionHandlerAdapter = [(AMSPromise *)v26 completionHandlerAdapter];
      [delegate AMSURLSession:session task:task handleDialogRequest:dialogRequest completion:completionHandlerAdapter];
    }

    else
    {
      v29 = +[AMSLogConfig sharedConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v29 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = AMSLogKey();
        *buf = v46;
        v54 = v31;
        v55 = 2114;
        v56 = v32;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Calling legacy delegate for dialog handling", buf, 0x16u);

        session = v47;
      }

      task = [(AMSPromise *)v26 completionHandlerAdapter];
      [delegate AMSURLSession:session handleDialogRequest:dialogRequest completion:task];
    }

    v51 = 0;
    v18 = [(AMSPromise *)v26 resultWithTimeout:&v51 error:300.0];
    v10 = v51;

    if (v10)
    {
      break;
    }

    verifyType2 = [(AMSFinanceVerifyPurchaseResponse *)self verifyType];
    if (verifyType2)
    {
      if (verifyType2 == 2)
      {
        v34 = [(AMSFinanceVerifyPurchaseResponse *)self _handleCarrierDialogResult:v18 shouldReattempt:&v52];
      }

      else
      {
        if (verifyType2 != 1)
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

      oSLogObject4 = [v36 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = AMSLogKey();
        *buf = v46;
        v54 = v38;
        session = v47;
        v55 = 2114;
        v56 = v39;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Max attempts reached", buf, 0x16u);
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

  oSLogObject5 = [v40 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
  {
    v42 = objc_opt_class();
    v43 = AMSLogKey();
    v44 = AMSLogableError(v10);
    *buf = 138543874;
    v54 = v42;
    v55 = 2114;
    v56 = v43;
    v57 = 2114;
    verifyType = v44;
    _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to present dialog. Error: %{public}@", buf, 0x20u);

    session = v47;
  }

LABEL_50:
  if (v10 && !v19)
  {
    v19 = [AMSURLAction actionWithError:v10];
  }

  [v19 setDialogResult:v18];

  return v19;
}

+ (id)_dialogRequestForCarrierFromPayload:(id)payload verifyType:(int64_t)type
{
  payloadCopy = payload;
  v5 = [payloadCopy objectForKeyedSubscript:@"customerTitleMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [payloadCopy objectForKeyedSubscript:@"customerMessage"];
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
  ams_AppleMediaServicesBundle = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  v11 = [ams_AppleMediaServicesBundle localizedStringForKey:@"VERIFY_PAYMENT_ENTER_CODE" value:&stru_1F071BA78 table:0];
  v12 = [AMSDialogTextField textFieldWithPlaceholder:v11 secure:0];

  [v12 setKeyboardType:2];
  [v9 addTextField:v12];
  v13 = [payloadCopy objectForKeyedSubscript:@"failureClientInfo"];
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

  ams_AppleMediaServicesBundle2 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  v24 = [ams_AppleMediaServicesBundle2 localizedStringForKey:@"CANCEL" value:&stru_1F071BA78 table:0];
  v25 = [AMSDialogAction actionWithTitle:v24];

  [v25 setStyle:2];
  [v9 addButtonAction:v25];

  return v9;
}

+ (id)_dialogRequestForCVVFromPayload:(id)payload verifyType:(int64_t)type
{
  payloadCopy = payload;
  v5 = [payloadCopy objectForKeyedSubscript:@"customerTitleMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [payloadCopy objectForKeyedSubscript:@"customerMessage"];
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
  ams_AppleMediaServicesBundle = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  v11 = [ams_AppleMediaServicesBundle localizedStringForKey:@"VERIFY_PAYMENT_ENTER_CVV" value:&stru_1F071BA78 table:0];
  v12 = [AMSDialogTextField textFieldWithPlaceholder:v11 secure:0];

  [v12 setKeyboardType:2];
  [v9 addTextField:v12];
  v13 = [payloadCopy objectForKeyedSubscript:@"dialog"];
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
  ams_AppleMediaServicesBundle2 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  v17 = [ams_AppleMediaServicesBundle2 localizedStringForKey:@"CANCEL" value:&stru_1F071BA78 table:0];
  v18 = [AMSDialogAction actionWithTitle:v17];

  [v18 setStyle:2];
  [v9 addButtonAction:v18];

  return v9;
}

- (id)_handleCarrierDialogResult:(id)result shouldReattempt:(BOOL *)reattempt
{
  v67 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543874;
    v62 = v9;
    v63 = 2114;
    v64 = v10;
    v65 = 2114;
    v66 = resultCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling CVV dialog result: %{public}@", buf, 0x20u);
  }

  originalRequest = [resultCopy originalRequest];
  v12 = originalRequest;
  if (originalRequest)
  {
    dialogRequest = originalRequest;
  }

  else
  {
    dialogRequest = [(AMSFinanceVerifyPurchaseResponse *)self dialogRequest];
  }

  v14 = dialogRequest;

  selectedActionIdentifier = [resultCopy selectedActionIdentifier];
  v16 = [v14 locateActionWithIdentifier:selectedActionIdentifier];

  identifier = [v16 identifier];
  v18 = [identifier isEqualToString:@"customerSendNewCodeButtonMessage"];

  if (v18)
  {
    v60 = 0;
    v19 = [(AMSFinanceVerifyPurchaseResponse *)self _runCarrierNewCodeWithError:&v60];
    firstObject = v60;
    if (!firstObject)
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

    oSLogObject2 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *buf = 138543874;
      v62 = v23;
      v63 = 2114;
      v64 = v24;
      v65 = 2114;
      v66 = firstObject;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to send new code. %{public}@", buf, 0x20u);
    }

    v25 = 0;
    v26 = 1;
LABEL_54:

LABEL_55:
    if (!reattempt)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  identifier2 = [v16 identifier];
  v28 = [identifier2 isEqualToString:@"customerSubmitButtonMessage"];

  if (v28)
  {
    textfieldValues = [resultCopy textfieldValues];
    firstObject = [textfieldValues firstObject];

    if (![firstObject length])
    {
      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = AMSLogKey();
        *buf = 138543618;
        v62 = v35;
        v63 = 2114;
        v64 = v36;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No code provided, cancelling verification", buf, 0x16u);
      }

      v26 = 0;
      v25 = 0;
      goto LABEL_54;
    }

    v59 = 0;
    v30 = [(AMSFinanceVerifyPurchaseResponse *)self _runCarrierVerifyCode:firstObject error:&v59];
    v21 = v59;
    v56 = v30;
    object = [v30 object];
    objc_opt_class();
    v32 = 0;
    if (objc_opt_isKindOfClass())
    {
      v32 = object;
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

    reattemptCopy = reattempt;
    stringValue = v34;
    if (!v34 && v21)
    {
      userInfo = [v21 userInfo];
      v39 = [userInfo objectForKeyedSubscript:@"AMSServerErrorCode"];

      stringValue = [v39 stringValue];
    }

    v40 = [v58 objectForKeyedSubscript:@"success"];
    v55 = v40;
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v40 BOOLValue])
    {
      v41 = stringValue;
      v42 = +[AMSLogConfig sharedConfig];
      if (!v42)
      {
        v42 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v42 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v44 = objc_opt_class();
        v45 = AMSLogKey();
        *buf = 138543618;
        v62 = v44;
        v63 = 2114;
        v64 = v45;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Carrier verification succeeded", buf, 0x16u);
      }

      v25 = +[AMSURLAction retryAction];
      [v25 setRetryIdentifier:0x1F073A1D8];
    }

    else
    {
      if (!v21 || [stringValue length])
      {
        v41 = stringValue;
        v46 = +[AMSLogConfig sharedConfig];
        if (!v46)
        {
          v46 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject4 = [v46 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
        {
          v48 = objc_opt_class();
          v49 = AMSLogKey();
          *buf = 138543874;
          v62 = v48;
          v63 = 2114;
          v64 = v49;
          v65 = 2112;
          v66 = v41;
          _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] User entered incorrect SMS code. (failureType: %@)", buf, 0x20u);
        }

        v25 = 0;
        v26 = 1;
        goto LABEL_53;
      }

      v41 = stringValue;
      v50 = +[AMSLogConfig sharedConfig];
      if (!v50)
      {
        v50 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [v50 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = AMSLogKey();
        *buf = 138543874;
        v62 = v52;
        v63 = 2114;
        v64 = v53;
        v65 = 2114;
        v66 = v21;
        _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Carrier verification failed. %{public}@", buf, 0x20u);
      }

      v25 = [AMSURLAction actionWithError:v21];
    }

    v26 = 0;
LABEL_53:

    oSLogObject2 = v56;
    reattempt = reattemptCopy;
    goto LABEL_54;
  }

  v26 = 0;
  v25 = 0;
  if (reattempt)
  {
LABEL_56:
    *reattempt = v26;
  }

LABEL_57:

  return v25;
}

- (id)_handleCVVDialogResult:(id)result shouldReattempt:(BOOL *)reattempt
{
  v62 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543874;
    v57 = v9;
    v58 = 2114;
    v59 = v10;
    v60 = 2114;
    v61 = resultCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling CVV dialog result: %{public}@", buf, 0x20u);
  }

  originalRequest = [resultCopy originalRequest];
  v12 = originalRequest;
  if (originalRequest)
  {
    dialogRequest = originalRequest;
  }

  else
  {
    dialogRequest = [(AMSFinanceVerifyPurchaseResponse *)self dialogRequest];
  }

  v14 = dialogRequest;

  selectedActionIdentifier = [resultCopy selectedActionIdentifier];
  v16 = [v14 locateActionWithIdentifier:selectedActionIdentifier];

  textfieldValues = [resultCopy textfieldValues];
  firstObject = [textfieldValues firstObject];

  if ([firstObject length] && objc_msgSend(v16, "style") != 2)
  {
    v52 = v14;
    v55 = 0;
    oSLogObject5 = [(AMSFinanceVerifyPurchaseResponse *)self _runCVVRequestForCode:firstObject error:&v55];
    v19 = v55;
    object = [oSLogObject5 object];
    objc_opt_class();
    v27 = 0;
    if (objc_opt_isKindOfClass())
    {
      v27 = object;
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

    reattemptCopy = reattempt;
    v14 = v52;
    stringValue = v29;
    if (v29)
    {
      v31 = 0x1E73B0000uLL;
    }

    else
    {
      v31 = 0x1E73B0000;
      if (v19)
      {
        userInfo = [v19 userInfo];
        v33 = [userInfo objectForKeyedSubscript:@"AMSServerErrorCode"];

        stringValue = [v33 stringValue];
      }
    }

    v51 = stringValue;
    if (([stringValue isEqualToString:@"5202"] & 1) != 0 || objc_msgSend(stringValue, "isEqualToString:", @"2025"))
    {
      sharedConfig = [*(v31 + 3552) sharedConfig];
      if (!sharedConfig)
      {
        sharedConfig = [*(v31 + 3552) sharedConfig];
      }

      oSLogObject2 = [sharedConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        AMSLogKey();
        v38 = v37 = v16;
        *buf = 138543618;
        v57 = v36;
        v58 = 2114;
        v59 = v38;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid verification code", buf, 0x16u);

        v16 = v37;
      }

      v25 = 0;
      v24 = 1;
    }

    else
    {
      sharedConfig2 = [*(v31 + 3552) sharedConfig];
      if (v19)
      {
        if (!sharedConfig2)
        {
          sharedConfig2 = [*(v31 + 3552) sharedConfig];
        }

        v40 = sharedConfig2;
        oSLogObject3 = [sharedConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
          _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] CVV verification failed. %{public}@", buf, 0x20u);

          v16 = v43;
        }

        v25 = [AMSURLAction actionWithError:v19];
      }

      else
      {
        if (!sharedConfig2)
        {
          sharedConfig2 = [*(v31 + 3552) sharedConfig];
        }

        v45 = sharedConfig2;
        oSLogObject4 = [sharedConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v47 = objc_opt_class();
          AMSLogKey();
          v49 = v48 = v16;
          *buf = 138543618;
          v57 = v47;
          v58 = 2114;
          v59 = v49;
          _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Verification succeeded", buf, 0x16u);

          v16 = v48;
        }

        v25 = +[AMSURLAction retryAction];
        [v25 setRetryIdentifier:0x1F073A1B8];
      }

      v24 = 0;
    }

    reattempt = reattemptCopy;
  }

  else
  {
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      AMSLogKey();
      v23 = v22 = v16;
      *buf = 138543618;
      v57 = v21;
      v58 = 2114;
      v59 = v23;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dialog cancelled", buf, 0x16u);

      v16 = v22;
    }

    v24 = 0;
    v25 = 0;
  }

  if (reattempt)
  {
    *reattempt = v24;
  }

  return v25;
}

- (id)_runCarrierNewCodeWithError:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  responseDictionary = [(AMSFinanceVerifyPurchaseResponse *)self responseDictionary];
  v6 = [responseDictionary objectForKeyedSubscript:@"failureClientInfo"];

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
  errorCopy = error;
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
  taskInfo = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  properties = [taskInfo properties];
  v23 = [properties bag];
  v24 = [(AMSURLRequestEncoder *)v20 initWithBag:v23];

  [(AMSURLRequestEncoder *)v24 setRequestEncoding:2];
  taskInfo2 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  properties2 = [taskInfo2 properties];
  account = [properties2 account];
  [(AMSURLRequestEncoder *)v24 setAccount:account];

  [(AMSURLRequestEncoder *)v24 setDialogOptions:1];
  taskInfo3 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  properties3 = [taskInfo3 properties];
  [(AMSURLRequestEncoder *)v24 setParentProperties:properties3];

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
    taskInfo4 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    session = [taskInfo4 session];
    configuration = [session configuration];
    taskInfo5 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    session2 = [taskInfo5 session];
    [session2 delegate];
    v36 = v35 = v9;
    v37 = [(AMSURLSession *)v41 initWithConfiguration:configuration delegate:v36 delegateQueue:0];

    v9 = v35;
    v38 = [(AMSURLSession *)v37 dataTaskPromiseWithRequest:v14];
    v45 = 0;
    v15 = [v38 resultWithError:&v45];
    v13 = v45;
  }

  v7 = v43;
  error = errorCopy;
LABEL_19:
  if (error)
  {
    v39 = v13;
    *error = v13;
  }

  return v15;
}

- (id)_runCarrierVerifyCode:(id)code error:(id *)error
{
  v51[2] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  responseDictionary = [(AMSFinanceVerifyPurchaseResponse *)self responseDictionary];
  v8 = [responseDictionary objectForKeyedSubscript:@"failureClientInfo"];

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
  errorCopy = error;
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
  v51[1] = codeCopy;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];

  v22 = [AMSURLRequestEncoder alloc];
  taskInfo = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  properties = [taskInfo properties];
  v25 = [properties bag];
  v26 = [(AMSURLRequestEncoder *)v22 initWithBag:v25];

  [(AMSURLRequestEncoder *)v26 setRequestEncoding:2];
  taskInfo2 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  properties2 = [taskInfo2 properties];
  account = [properties2 account];
  [(AMSURLRequestEncoder *)v26 setAccount:account];

  taskInfo3 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  properties3 = [taskInfo3 properties];
  [(AMSURLRequestEncoder *)v26 setParentProperties:properties3];

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
    taskInfo4 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    session = [taskInfo4 session];
    configuration = [session configuration];
    taskInfo5 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    session2 = [taskInfo5 session];
    [session2 delegate];
    v38 = v37 = codeCopy;
    v39 = [(AMSURLSession *)v43 initWithConfiguration:configuration delegate:v38 delegateQueue:0];

    codeCopy = v37;
    v40 = [(AMSURLSession *)v39 dataTaskPromiseWithRequest:v16];
    v48 = 0;
    v17 = [v40 resultWithError:&v48];
    v15 = v48;
  }

  v9 = v45;
  error = errorCopy;
LABEL_19:
  if (error)
  {
    v41 = v15;
    *error = v15;
  }

  return v17;
}

- (id)_runCVVRequestForCode:(id)code error:(id *)error
{
  v45[3] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  responseDictionary = [(AMSFinanceVerifyPurchaseResponse *)self responseDictionary];
  v8 = [responseDictionary objectForKeyedSubscript:@"nextActionUrl"];

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

  errorCopy = error;
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
  v45[1] = codeCopy;
  v44[1] = @"cvm";
  v44[2] = @"machineName";
  v45[2] = &stru_1F071BA78;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

  v18 = [AMSURLRequestEncoder alloc];
  taskInfo = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  properties = [taskInfo properties];
  v21 = [properties bag];
  v22 = [(AMSURLRequestEncoder *)v18 initWithBag:v21];

  [(AMSURLRequestEncoder *)v22 setRequestEncoding:2];
  taskInfo2 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  properties2 = [taskInfo2 properties];
  account = [properties2 account];
  [(AMSURLRequestEncoder *)v22 setAccount:account];

  taskInfo3 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
  properties3 = [taskInfo3 properties];
  [(AMSURLRequestEncoder *)v22 setParentProperties:properties3];

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
    taskInfo4 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    session = [taskInfo4 session];
    configuration = [session configuration];
    taskInfo5 = [(AMSFinanceVerifyPurchaseResponse *)self taskInfo];
    [taskInfo5 session];
    v33 = v32 = codeCopy;
    delegate = [v33 delegate];
    v35 = [(AMSURLSession *)v39 initWithConfiguration:configuration delegate:delegate delegateQueue:0];

    codeCopy = v32;
    v36 = [(AMSURLSession *)v35 dataTaskPromiseWithRequest:v12];
    v42 = 0;
    v13 = [v36 resultWithError:&v42];
    v11 = v42;
  }

  error = errorCopy;
LABEL_14:
  if (error)
  {
    v37 = v11;
    *error = v11;
  }

  return v13;
}

+ (int64_t)_verifyTypeFromPayload:(id)payload
{
  v3 = [payload objectForKeyedSubscript:@"failureType"];
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