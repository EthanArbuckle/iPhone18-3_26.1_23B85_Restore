@interface AMSHandleQRDialogResult
+ (id)_dismissalIdentifierFromDialogResult:(id)result;
+ (void)_observeQRDialogDismissalNotificationForIdentifier:(id)identifier dialog:(id)dialog;
+ (void)_removeQRDialogDismissalObserverForIdentifier:(id)identifier;
+ (void)handleQRDialogPresentationForRequest:(id)request result:(id)result logKey:(id)key;
@end

@implementation AMSHandleQRDialogResult

+ (void)handleQRDialogPresentationForRequest:(id)request result:(id)result logKey:(id)key
{
  v27 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  resultCopy = result;
  requestCopy = request;
  v11 = [(AMSSystemAlertDialogTask *)[AMSQRCodeDialogTask alloc] initWithRequest:requestCopy];

  v12 = [AMSHandleQRDialogResult _dismissalIdentifierFromDialogResult:resultCopy];

  if (+[AMSHandleQRDialogResult _isDismissQRDialogEnabled])
  {
    if (v12)
    {
      [(AMSSystemAlertDialogTask *)v11 setIsDialogDismissalEnabled:1];
      [AMSHandleQRDialogResult _observeQRDialogDismissalNotificationForIdentifier:v12 dialog:v11];
    }

    else
    {
      v13 = +[AMSLogConfig sharedConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v24 = objc_opt_class();
        v25 = 2114;
        v26 = keyCopy;
        v15 = v24;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error observing for QR code dialog dismissal. No dialog identifier or link code found on the dialog result.", buf, 0x16u);
      }
    }
  }

  present = [(AMSSystemAlertDialogTask *)v11 present];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__AMSHandleQRDialogResult_handleQRDialogPresentationForRequest_result_logKey___block_invoke;
  v19[3] = &unk_1E73B85C8;
  v21 = v12;
  selfCopy = self;
  v20 = keyCopy;
  v17 = v12;
  v18 = keyCopy;
  [present addFinishBlock:v19];
}

void __78__AMSHandleQRDialogResult_handleQRDialogPresentationForRequest_result_logKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v18 = 138543874;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v6;
      v12 = v10;
      v13 = "%{public}@: [%{public}@] Error presenting QR code dialog: %{public}@";
      v14 = v9;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_192869000, v14, v15, v13, &v18, 0x20u);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v18 = 138543874;
      v19 = v16;
      v20 = 2114;
      v21 = v17;
      v22 = 2112;
      v23 = v5;
      v12 = v16;
      v13 = "%{public}@: [%{public}@] QR code dialog presented: %@";
      v14 = v9;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  if (*(a1 + 40) && +[AMSHandleQRDialogResult _isDismissQRDialogEnabled])
  {
    [AMSHandleQRDialogResult _removeQRDialogDismissalObserverForIdentifier:*(a1 + 40)];
  }
}

+ (void)_observeQRDialogDismissalNotificationForIdentifier:(id)identifier dialog:(id)dialog
{
  identifierCopy = identifier;
  dialogCopy = dialog;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__34;
  v20 = __Block_byref_object_dispose__34;
  v21 = objc_alloc_init(AMSDaemonConnection);
  dismissQRDialogServiceProxy = [v17[5] dismissQRDialogServiceProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__AMSHandleQRDialogResult__observeQRDialogDismissalNotificationForIdentifier_dialog___block_invoke;
  v13[3] = &unk_1E73B85F0;
  v8 = identifierCopy;
  v14 = v8;
  v15 = &v16;
  v9 = [dismissQRDialogServiceProxy thenWithBlock:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__AMSHandleQRDialogResult__observeQRDialogDismissalNotificationForIdentifier_dialog___block_invoke_3;
  v11[3] = &unk_1E73B8618;
  v10 = dialogCopy;
  v12 = v10;
  [v9 addFinishBlock:v11];

  _Block_object_dispose(&v16, 8);
}

AMSMutablePromise *__85__AMSHandleQRDialogResult__observeQRDialogDismissalNotificationForIdentifier_dialog___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__AMSHandleQRDialogResult__observeQRDialogDismissalNotificationForIdentifier_dialog___block_invoke_2;
  v9[3] = &unk_1E73B82D0;
  v6 = v4;
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  [v3 observeQRDialogDismissalNotificationForIdentifier:v5 completion:v9];

  return v6;
}

void __85__AMSHandleQRDialogResult__observeQRDialogDismissalNotificationForIdentifier_dialog___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finishWithResult:MEMORY[0x1E695E118]];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

+ (void)_removeQRDialogDismissalObserverForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__34;
  v17 = __Block_byref_object_dispose__34;
  v18 = objc_alloc_init(AMSDaemonConnection);
  dismissQRDialogServiceProxy = [v14[5] dismissQRDialogServiceProxy];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __73__AMSHandleQRDialogResult__removeQRDialogDismissalObserverForIdentifier___block_invoke;
  v10 = &unk_1E73B85F0;
  v5 = identifierCopy;
  v11 = v5;
  v12 = &v13;
  v6 = [dismissQRDialogServiceProxy thenWithBlock:&v7];
  [v6 addFinishBlock:{&__block_literal_global_67, v7, v8, v9, v10}];

  _Block_object_dispose(&v13, 8);
}

AMSMutablePromise *__73__AMSHandleQRDialogResult__removeQRDialogDismissalObserverForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__AMSHandleQRDialogResult__removeQRDialogDismissalObserverForIdentifier___block_invoke_2;
  v9[3] = &unk_1E73B82D0;
  v6 = v4;
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  [v3 removeQRDialogDismissalObserverForIdentifier:v5 completion:v9];

  return v6;
}

void __73__AMSHandleQRDialogResult__removeQRDialogDismissalObserverForIdentifier___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finishWithResult:MEMORY[0x1E695E118]];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

+ (id)_dismissalIdentifierFromDialogResult:(id)result
{
  resultCopy = result;
  originalRequest = [resultCopy originalRequest];
  metricsEvent = [originalRequest metricsEvent];
  underlyingDictionary = [metricsEvent underlyingDictionary];

  originalRequest2 = [resultCopy originalRequest];

  userInfo = [originalRequest2 userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"AMSDialogRequestUserInfoKeyServerPayload"];

  v10 = [v9 objectForKeyedSubscript:@"okButtonAction"];
  v11 = [v10 objectForKeyedSubscript:@"PINCode"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [underlyingDictionary objectForKeyedSubscript:@"dialogId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;

    if (v12)
    {
      v15 = v12;
LABEL_10:
      v16 = v15;
      goto LABEL_11;
    }

    v15 = v14;
    if (v14)
    {
      goto LABEL_10;
    }

    v16 = 0;
  }

  else
  {

    v14 = 0;
    v16 = 0;
    v15 = v12;
    if (v12)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return v16;
}

@end