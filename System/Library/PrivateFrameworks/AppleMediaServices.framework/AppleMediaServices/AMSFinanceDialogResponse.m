@interface AMSFinanceDialogResponse
+ (BOOL)_credentialSource:(unint64_t)a3 satisfiesAuthenticationType:(unint64_t)a4;
+ (id)_handleAskPermissionRequestWithURL:(id)a3 account:(id)a4;
+ (id)_presentDialog:(id)a3 taskInfo:(id)a4;
+ (id)_presentIDSDialog:(id)a3 taskInfo:(id)a4;
+ (id)_serviceActionFromButton:(id)a3 taskInfo:(id)a4;
+ (id)handleDialogResult:(id)a3 taskInfo:(id)a4;
+ (id)performFinanceDialog:(id)a3 taskInfo:(id)a4;
+ (int64_t)dialogKindForTaskInfo:(id)a3 withResponseDictionary:(id)a4;
- (AMSDialogRequest)dialogRequest;
- (AMSFinanceDialogResponse)initWithResponseDictionary:(id)a3 kind:(int64_t)a4 taskInfo:(id)a5;
- (BOOL)_isCommerceUIURL:(id)a3 actionType:(int64_t)a4 URLType:(int64_t)a5;
- (id)_createActionFromButtonDictionary:(id)a3 title:(id)a4;
- (id)_createDialogRequest;
- (id)_createRequestButtonsFromDialogDictionary:(id)a3;
- (id)_enrichedMetricsDictionaryWithFinanceDictionary:(id)a3;
- (id)performWithTaskInfo:(id)a3;
- (int64_t)_actionTypeFromButtonDictionary:(id)a3;
@end

@implementation AMSFinanceDialogResponse

- (AMSFinanceDialogResponse)initWithResponseDictionary:(id)a3 kind:(int64_t)a4 taskInfo:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [AMSFinanceResponse valueForProtocolKey:@"dialog" inResponse:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;

    if (v12)
    {
      v22.receiver = self;
      v22.super_class = AMSFinanceDialogResponse;
      v13 = [(AMSFinanceDialogResponse *)&v22 init];
      v14 = v13;
      if (v13)
      {
        objc_storeStrong(&v13->_responseDictionary, a3);
        objc_storeStrong(&v14->_dialogDictionary, v11);
        v14->_kind = a4;
        objc_storeStrong(&v14->_taskInfo, a5);
      }

      self = v14;
      v15 = self;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = +[AMSLogConfig sharedConfig];
  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v19 = v18;
    v20 = AMSLogKey();
    *buf = 138543618;
    v24 = v18;
    v25 = 2114;
    v26 = v20;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempting to initialize a finance dialog without a dictionary", buf, 0x16u);
  }

  v12 = 0;
  v15 = 0;
LABEL_10:

  return v15;
}

- (AMSDialogRequest)dialogRequest
{
  dialogRequest = self->_dialogRequest;
  if (!dialogRequest)
  {
    v4 = [(AMSFinanceDialogResponse *)self _createDialogRequest];
    v5 = self->_dialogRequest;
    self->_dialogRequest = v4;

    dialogRequest = self->_dialogRequest;
  }

  return dialogRequest;
}

+ (int64_t)dialogKindForTaskInfo:(id)a3 withResponseDictionary:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"dialog"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 objectForKeyedSubscript:@"paymentSheetInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 objectForKeyedSubscript:@"kind"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (([v13 isEqualToString:@"authorization"] & 1) == 0)
  {
    v15 = [v7 objectForKeyedSubscript:@"failureType"];
    if (objc_opt_respondsToSelector())
    {
      v16 = [v7 objectForKeyedSubscript:@"failureType"];
      v17 = [v16 longLongValue];

      if (v17 == 2002)
      {
        goto LABEL_11;
      }

      if (v11)
      {
LABEL_17:
        v14 = 4;
        goto LABEL_32;
      }
    }

    else
    {

      if (v11)
      {
        goto LABEL_17;
      }
    }

    if ([AMSFinanceVerifyPurchaseResponse isVerifyPurchasePayload:v7])
    {
      v14 = 5;
    }

    else
    {
      v14 = v9 != 0;
    }

    goto LABEL_32;
  }

LABEL_11:
  if (v11)
  {
    if ([AMSFinanceExpressCheckoutResponse isExpressCheckoutPayload:v7])
    {
      v14 = 7;
    }

    else if ([AMSFinanceDelegateAuthenticateChallengeResponse isDelegateAuthChallengeForTaskInfo:v6])
    {
      v14 = 6;
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v18 = [v6 previousAuthorizationCredentialSource];
    v19 = [v6 response];
    LODWORD(v18) = [a1 _credentialSource:v18 satisfiesAuthenticationType:{+[AMSFinanceAuthenticateResponse authenticationTypeForResponse:responseDictionary:](AMSFinanceAuthenticateResponse, "authenticationTypeForResponse:responseDictionary:", v19, v7)}];

    if (v18)
    {
      v20 = +[AMSLogConfig sharedAccountsConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = AMSLogKey();
        v24 = AMSHashIfNeeded(v9);
        v26 = 138543874;
        v27 = v22;
        v28 = 2114;
        v29 = v23;
        v30 = 2114;
        v31 = v24;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Encountered a redundant authorization dialog. dialogDictionary = %{public}@", &v26, 0x20u);
      }

      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

LABEL_32:

  return v14;
}

+ (id)handleDialogResult:(id)a3 taskInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 originalRequest];
  v9 = [v6 selectedActionIdentifier];
  v10 = [v8 locateActionWithIdentifier:v9];

  v11 = [v10 deepLink];
  if ([v10 ams_actionType] == 11)
  {
    v12 = [a1 _serviceActionFromButton:v10 taskInfo:v7];
  }

  else
  {
    if (!v11)
    {
      v12 = 0;
      goto LABEL_15;
    }

    if ([v10 ams_actionType] == 12)
    {
      v13 = [v10 ams_metricsDictionary];
      v14 = [v13 mutableCopy];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [MEMORY[0x1E695DF90] dictionary];
      }

      v21 = v16;

      v22 = [MEMORY[0x1E696AFB0] UUID];
      v23 = [v22 UUIDString];

      [v21 setObject:v23 forKeyedSubscript:@"purchaseAuthorizationId"];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v21];
      [v10 ams_setMetricsDictionary:v24];

      v25 = [v11 ams_URLByAppendingQueryParameter:v23 name:@"purchaseAuthorizationId"];

      v26 = [v7 properties];
      v27 = [v26 account];
      v28 = [a1 _handleAskPermissionRequestWithURL:v25 account:v27];

      v12 = [AMSURLAction actionWithError:v28];

      v17 = 0;
      v18 = 0;
      v11 = v25;
    }

    else if ([v10 ams_actionType] == 5)
    {
      [AMSFinanceActionResponse handleExternalGotoURL:v11];
      v17 = 0;
      v18 = 0;
      v12 = 0;
    }

    else
    {
      v19 = +[AMSFinanceActionResponse handleGotoURL:taskInfo:gotoType:accountURL:tidContinue:retryOnSuccess:](AMSFinanceActionResponse, "handleGotoURL:taskInfo:gotoType:accountURL:tidContinue:retryOnSuccess:", v11, v7, [v10 ams_actionType], objc_msgSend(v10, "ams_commerceUIURL"), objc_msgSend(v10, "ams_tidContinue"), objc_msgSend(v10, "ams_shouldRetry"));
      v17 = [v19 interruptionResult];
      v20 = [v19 action];
      v18 = [v20 updatedBuyParams];

      v12 = [v19 action];
    }

    [v10 setDeepLink:0];
    [v10 ams_setResolvedInterruption:v17];
    [v10 ams_setBuyParams:v18];
    v29 = [v6 originalRequest];
    [v29 replaceAction:v10];
  }

LABEL_15:
  v30 = [AMSHandleDialogResultTask alloc];
  v31 = [v7 properties];
  v32 = [v31 bag];
  v33 = [(AMSHandleDialogResultTask *)v30 initWithResult:v6 bag:v32];

  [(AMSTask *)v33 setRunMode:1];
  v34 = [v7 properties];
  v35 = [v34 account];
  [(AMSHandleDialogResultTask *)v33 setAccount:v35];

  v36 = [v7 properties];
  v37 = [v36 clientInfo];
  v38 = [v37 proxyAppBundleID];
  [(AMSHandleDialogResultTask *)v33 setProxyBundleId:v38];

  v39 = [v7 properties];
  v40 = [v39 clientInfo];
  [(AMSHandleDialogResultTask *)v33 setClientInfo:v40];

  v41 = [(AMSHandleDialogResultTask *)v33 perform];
  v43 = 0;
  [v41 resultWithError:&v43];

  if (!v12)
  {
    v12 = +[AMSURLAction proceedAction];
  }

  [v12 setDialogResult:v6];

  return v12;
}

+ (id)performFinanceDialog:(id)a3 taskInfo:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 properties];
  v9 = [v8 dialogOptions];

  if (v9)
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v41 = v13;
    v42 = 2114;
    v43 = v14;
    v15 = "%{public}@: [%{public}@] Dialogs were suppressed by the caller";
    v16 = v12;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

  v10 = [v6 title];
  if (![v10 length])
  {
    v19 = [v6 message];
    v20 = [v19 length];

    if (v20)
    {
      goto LABEL_12;
    }

    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

LABEL_10:
      v18 = +[AMSURLAction proceedAction];
      goto LABEL_25;
    }

    v37 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v41 = v37;
    v42 = 2114;
    v43 = v14;
    v15 = "%{public}@: [%{public}@] Suppressing blank dialog (no title & no message)";
    v16 = v12;
    v17 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
    _os_log_impl(&dword_192869000, v16, v17, v15, buf, 0x16u);

    goto LABEL_9;
  }

LABEL_12:
  if ([a1 _shouldSendOverIDS:v6 taskInfo:v7])
  {
    v21 = [a1 _presentIDSDialog:v6 taskInfo:v7];
    v22 = [v21 resultWithError:0];

    if (v22)
    {
      goto LABEL_10;
    }
  }

  v23 = [v7 properties];
  v24 = [v23 purchaseInfo];
  v25 = [v24 activePurchaseTask];
  v26 = [v25 performPreActionRequestForTaskInfo:v7 requiresAuthorization:0];
  v39 = 0;
  v27 = [v26 resultWithError:&v39];
  v28 = v39;

  if ((v27 & 1) != 0 || !v28)
  {
    v29 = [a1 _presentDialog:v6 taskInfo:v7];
    v38 = 0;
    v30 = [v29 resultWithError:&v38];
    v31 = v38;

    if (v31)
    {
      v32 = +[AMSLogConfig sharedConfig];
      if (!v32)
      {
        v32 = +[AMSLogConfig sharedConfig];
      }

      v33 = [v32 OSLogObject];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        v35 = AMSLogKey();
        *buf = 138543874;
        v41 = v34;
        v42 = 2114;
        v43 = v35;
        v44 = 2114;
        v45 = v31;
        _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] An error occurred during dialog presentation %{public}@", buf, 0x20u);
      }
    }

    v18 = [a1 handleDialogResult:v30 taskInfo:v7];
  }

  else
  {
    v18 = [AMSURLAction actionWithError:v28];
  }

LABEL_25:

  return v18;
}

- (id)performWithTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [(AMSFinanceDialogResponse *)self dialogRequest];
  v6 = [AMSFinanceDialogResponse performFinanceDialog:v5 taskInfo:v4];

  return v6;
}

- (int64_t)_actionTypeFromButtonDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"kind"];
  if (!v4)
  {
    v4 = [v3 objectForKey:@"action"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 isEqualToString:@"Buy"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"OpenURL"])
    {
      v6 = 5;
    }

    else if ([v5 caseInsensitiveCompare:@"goback"])
    {
      if ([v5 isEqualToString:@"QRCode"])
      {
        v6 = 7;
      }

      else if ([v5 isEqualToString:@"redeem-code"])
      {
        v6 = 8;
      }

      else if ([v5 isEqualToString:@"RetryRestoreAll"])
      {
        v6 = 10;
      }

      else if ([v5 isEqualToString:@"Review"])
      {
        v6 = 9;
      }

      else if ([v5 isEqualToString:@"Goto"])
      {
        v6 = 1;
      }

      else if ([v5 isEqualToString:@"GotoFinance"])
      {
        v6 = 2;
      }

      else if ([v5 isEqualToString:@"GotoFinanceV2"])
      {
        v6 = 3;
      }

      else if ([v5 isEqualToString:@"ServiceAction"])
      {
        v6 = 11;
      }

      else if ([v5 isEqualToString:@"FamilyPermissionAction"])
      {
        v6 = 12;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 6;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_createActionFromButtonDictionary:(id)a3 title:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [AMSDialogAction actionWithTitle:a4];
  [v7 ams_setButtonDictionary:v6];
  [v7 ams_setActionType:{-[AMSFinanceDialogResponse _actionTypeFromButtonDictionary:](self, "_actionTypeFromButtonDictionary:", v6)}];
  v8 = [v6 objectForKeyedSubscript:@"retry"];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 objectForKeyedSubscript:@"retry"];
    [v7 ams_setShouldRetry:{objc_msgSend(v9, "BOOLValue")}];
  }

  else
  {
    [v7 ams_setShouldRetry:0];
  }

  v10 = [v6 objectForKeyedSubscript:@"subtarget"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [v7 ams_setSubtarget:v11];
  v12 = [v6 objectForKeyedSubscript:@"tidContinue"];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v6 objectForKeyedSubscript:@"tidContinue"];
    [v7 ams_setTidContinue:{objc_msgSend(v13, "BOOLValue")}];
  }

  else
  {
    [v7 ams_setTidContinue:0];
  }

  if ([v7 ams_tidContinue])
  {
    v14 = 1;
  }

  else
  {
    v15 = [v7 ams_subtarget];
    if ([v15 hasPrefix:@"account"])
    {
      v14 = 1;
    }

    else if ([v15 hasPrefix:@"background"])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = [v6 objectForKeyedSubscript:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;

    if (v17)
    {
      v18 = [MEMORY[0x1E695DFF8] URLWithString:v17];
      goto LABEL_23;
    }
  }

  else
  {

    v17 = 0;
  }

  v18 = 0;
LABEL_23:
  [v7 ams_setURLType:v14];
  v19 = [v7 ams_actionType];
  if (v19 <= 4)
  {
    if ((v19 - 1) >= 3)
    {
      goto LABEL_47;
    }

    if (v14 == 2)
    {
      if (v18)
      {
        v20 = [MEMORY[0x1E695AC68] requestWithURL:v18];
        [v7 setRequest:v20];
      }

      else
      {
        [v7 setRequest:0];
      }

      goto LABEL_47;
    }

    if (-[AMSFinanceDialogResponse _isCommerceUIURL:actionType:URLType:](self, "_isCommerceUIURL:actionType:URLType:", v18, [v7 ams_actionType], v14))
    {
      [v7 ams_setCommerceUIURL:1];
    }

LABEL_34:
    [v7 setDeepLink:v18];
    goto LABEL_47;
  }

  if (v19 == 5)
  {
    [v7 setDeepLink:v18];
    [v7 setInferLinkDestination:0];
    goto LABEL_47;
  }

  if (v19 != 7)
  {
    if (v19 != 12)
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  v21 = [v6 objectForKeyedSubscript:@"message"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v6 objectForKeyedSubscript:@"explanation"];
  objc_opt_class();
  v24 = v18;
  if (objc_opt_isKindOfClass())
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = v22;
  v27 = [[AMSDialogRequest alloc] initWithTitle:v22 message:v25];
  v28 = AMSLogKey();
  [(AMSDialogRequest *)v27 setLogKey:v28];

  v29 = [(AMSDialogRequest *)v27 userInfo];
  v30 = [v29 mutableCopy];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v33 = v32;

  [v33 setObject:v6 forKeyedSubscript:@"AMSDialogRequestUserInfoKeyServerPayload"];
  [(AMSDialogRequest *)v27 setUserInfo:v33];
  [v7 setDialogRequest:v27];

  v18 = v24;
LABEL_47:
  v34 = [v7 deepLink];

  if (v34)
  {
    v35 = +[AMSLogConfig sharedConfig];
    if (!v35)
    {
      v35 = +[AMSLogConfig sharedConfig];
    }

    v36 = [v35 OSLogObject];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v6;
      v38 = v18;
      v39 = objc_opt_class();
      v52 = v39;
      v40 = AMSSetLogKeyIfNeeded();
      v41 = [v7 deepLink];
      AMSHashIfNeeded(v41);
      v42 = v53 = v17;
      *buf = 138543874;
      v57 = v39;
      v18 = v38;
      v6 = v37;
      v58 = 2114;
      v59 = v40;
      v60 = 2114;
      v61 = v42;
      _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Button Deep-Link URL: %{public}@", buf, 0x20u);

      v17 = v53;
    }
  }

  v43 = +[AMSLogConfig sharedConfig];
  if (!v43)
  {
    v43 = +[AMSLogConfig sharedConfig];
  }

  v44 = [v43 OSLogObject];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v17;
    v46 = objc_opt_class();
    v54 = v46;
    v47 = AMSSetLogKeyIfNeeded();
    v55 = v6;
    v48 = v18;
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "ams_commerceUIURL")}];
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "ams_resolvedInterruption")}];
    *buf = 138544130;
    v57 = v46;
    v17 = v45;
    v58 = 2114;
    v59 = v47;
    v60 = 2114;
    v61 = v49;
    v62 = 2114;
    v63 = v50;
    _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Button CommerceUIURL: %{public}@, ResolvedInterruption: %{public}@", buf, 0x2Au);

    v18 = v48;
    v6 = v55;
  }

  return v7;
}

- (id)_createDialogRequest
{
  v3 = [(AMSFinanceDialogResponse *)self taskInfo];
  v4 = [v3 properties];
  v5 = [v4 account];

  v6 = [(AMSFinanceDialogResponse *)self dialogDictionary];
  v7 = [v6 objectForKeyedSubscript:@"message"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 username];
  v10 = [v8 ams_replaceAccountPatternWithUsername:v9];

  v11 = [(AMSFinanceDialogResponse *)self dialogDictionary];
  v12 = [v11 objectForKeyedSubscript:@"explanation"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v5 username];
  v15 = [v13 ams_replaceAccountPatternWithUsername:v14];

  v16 = [[AMSDialogRequest alloc] initWithTitle:v10 message:v15];
  v17 = AMSLogKey();
  [(AMSDialogRequest *)v16 setLogKey:v17];

  v18 = [(AMSDialogRequest *)v16 userInfo];
  v19 = [v18 mutableCopy];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v22 = v21;

  v23 = [(AMSFinanceDialogResponse *)self dialogDictionary];
  [v22 setObject:v23 forKeyedSubscript:@"AMSDialogRequestUserInfoKeyServerPayload"];

  [(AMSDialogRequest *)v16 setUserInfo:v22];
  v24 = [(AMSFinanceDialogResponse *)self responseDictionary];
  v25 = [v24 objectForKeyedSubscript:@"metrics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;

    if (!v26)
    {
      goto LABEL_15;
    }

    v25 = [(AMSFinanceDialogResponse *)self _enrichedMetricsDictionaryWithFinanceDictionary:v26];
    v27 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v25];
    [(AMSDialogRequest *)v16 setMetricsEvent:v27];
  }

  else
  {
    v26 = 0;
  }

LABEL_15:
  v28 = [v26 objectForKeyedSubscript:@"dialogId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;

    if (v29)
    {
      [(AMSDialogRequest *)v16 setIdentifier:v29];
    }
  }

  else
  {

    v29 = 0;
  }

  v30 = [(AMSFinanceDialogResponse *)self dialogDictionary];
  v31 = [(AMSFinanceDialogResponse *)self _createRequestButtonsFromDialogDictionary:v30];
  [(AMSDialogRequest *)v16 setButtonActions:v31];

  v32 = [(AMSFinanceDialogResponse *)self dialogDictionary];
  v33 = [v32 objectForKeyedSubscript:@"preventsCancelButtonStyle"];
  if (objc_opt_respondsToSelector())
  {
    v34 = [(AMSFinanceDialogResponse *)self dialogDictionary];
    [v34 objectForKeyedSubscript:@"preventsCancelButtonStyle"];
    v42 = v29;
    v35 = v26;
    v36 = v22;
    v37 = v15;
    v38 = v5;
    v40 = v39 = v10;
    -[AMSDialogRequest setPreventsCancelButtonStyle:](v16, "setPreventsCancelButtonStyle:", [v40 BOOLValue]);

    v10 = v39;
    v5 = v38;
    v15 = v37;
    v22 = v36;
    v26 = v35;
    v29 = v42;
  }

  else
  {
    [(AMSDialogRequest *)v16 setPreventsCancelButtonStyle:0];
  }

  return v16;
}

- (id)_enrichedMetricsDictionaryWithFinanceDictionary:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 setObject:&unk_1F0779568 forKeyedSubscript:@"eventVersion"];
  v4 = +[AMSDevice screenScale];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"pixelRatio"];
  }

  v5 = +[AMSDevice screenWidth];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"screenWidth"];
  }

  v6 = +[AMSDevice screenHeight];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"screenHeight"];
  }

  v7 = [v3 copy];

  return v7;
}

- (id)_createRequestButtonsFromDialogDictionary:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 objectForKeyedSubscript:@"okButtonString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;

    if (v7)
    {
LABEL_7:
      v8 = [v4 objectForKeyedSubscript:@"okButtonAction"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = [(AMSFinanceDialogResponse *)self _createActionFromButtonDictionary:v9 title:v7];
      v32 = @"targetId";
      v33[0] = @"OK";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      [v10 ams_setMetricsDictionary:v11];

      [v5 addObject:v10];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v7 = [v4 objectForKeyedSubscript:@"okButton"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v7;

    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

LABEL_11:

LABEL_12:
  v12 = [v4 objectForKeyedSubscript:@"cancelButtonString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;

    if (v13)
    {
LABEL_18:
      v15 = v5;
      v16 = @"cancelButtonAction";
      v17 = 1;
      goto LABEL_23;
    }
  }

  else
  {
  }

  v14 = [v4 objectForKeyedSubscript:@"cancelButton"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v14;

    if (v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v18 = [v4 objectForKeyedSubscript:@"otherButtonString"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_38;
  }

  v13 = v18;

  if (!v13)
  {
    goto LABEL_39;
  }

  v15 = v5;
  v17 = 0;
  v16 = @"otherButtonAction";
LABEL_23:
  v19 = [v4 objectForKeyedSubscript:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(AMSFinanceDialogResponse *)self _createActionFromButtonDictionary:v20 title:v13];
  [v21 setStyle:2];
  v30 = @"targetId";
  v31 = @"Cancel";
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [v21 ams_setMetricsDictionary:v22];

  [v15 addObject:v21];
  if (!v17)
  {
    v5 = v15;
    goto LABEL_39;
  }

  v23 = [v4 objectForKeyedSubscript:@"otherButtonString"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    v5 = v15;
LABEL_37:

    goto LABEL_38;
  }

  v18 = v23;

  if (v18)
  {
    v24 = [v4 objectForKeyedSubscript:@"otherButtonAction"];
    objc_opt_class();
    v5 = v15;
    if (objc_opt_isKindOfClass())
    {
      v23 = v24;
    }

    else
    {
      v23 = 0;
    }

    v25 = [(AMSFinanceDialogResponse *)self _createActionFromButtonDictionary:v23 title:v18];
    v28 = @"targetId";
    v29 = @"Other";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [v25 ams_setMetricsDictionary:v26];

    [v5 addObject:v25];
    goto LABEL_37;
  }

  v5 = v15;
LABEL_38:

LABEL_39:

  return v5;
}

+ (BOOL)_credentialSource:(unint64_t)a3 satisfiesAuthenticationType:(unint64_t)a4
{
  v4 = a4 < 2;
  if (a3 != 5)
  {
    v4 = 0;
  }

  return a3 == 2 || v4;
}

+ (id)_handleAskPermissionRequestWithURL:(id)a3 account:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(AMSMutableBinaryPromise);
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = AMSLogKey();
    v13 = AMSLogableURL(v5);
    *buf = 138543874;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v27 = v13;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting ask permission request: %@", buf, 0x20u);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v14 = _MergedGlobals_112;
  v25 = _MergedGlobals_112;
  if (!_MergedGlobals_112)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAPRequestHandlerClass_block_invoke;
    v27 = &unk_1E73B3880;
    v28 = &v22;
    __getAPRequestHandlerClass_block_invoke(buf);
    v14 = v23[3];
  }

  v15 = v14;
  _Block_object_dispose(&v22, 8);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__AMSFinanceDialogResponse__handleAskPermissionRequestWithURL_account___block_invoke;
  v20[3] = &unk_1E73B34B8;
  v16 = v7;
  v21 = v16;
  [v14 addRequestWithURL:v5 account:v6 completion:v20];
  v19 = 0;
  [(AMSBinaryPromise *)v16 resultWithError:&v19];
  v17 = v19;
  if (!v17)
  {
    v17 = AMSError(512, @"Family permission unknown error", &stru_1F071BA78, 0);
  }

  return v17;
}

void __71__AMSFinanceDialogResponse__handleAskPermissionRequestWithURL_account___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = @"Family permission failed";
    v4 = 512;
  }

  else
  {
    v3 = @"Family permission required";
    v4 = 511;
  }

  v5 = AMSError(v4, v3, 0, 0);
  [*(a1 + 32) finishWithError:v5];
}

- (BOOL)_isCommerceUIURL:(id)a3 actionType:(int64_t)a4 URLType:(int64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8)
  {
    goto LABEL_13;
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
LABEL_3:
    v9 = 1;
    goto LABEL_14;
  }

  if (a4 != 1)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (a5 == 1)
  {
    goto LABEL_3;
  }

  v10 = [AMSURLParser alloc];
  v11 = [(AMSFinanceDialogResponse *)self taskInfo];
  v12 = [v11 properties];
  v13 = [v12 bag];
  v14 = [(AMSURLParser *)v10 initWithBag:v13];

  v15 = [(AMSURLParser *)v14 isCommerceUIURL:v8];
  v22 = 0;
  v9 = [v15 resultWithError:&v22];
  v16 = v22;

  if (v16)
  {
    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      *buf = 138543874;
      v24 = v19;
      v25 = 2114;
      v26 = v20;
      v27 = 2114;
      v28 = v16;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Provided URL is not identified as Commerce UI URL. %{public}@", buf, 0x20u);
    }
  }

LABEL_14:
  return v9;
}

+ (id)_presentDialog:(id)a3 taskInfo:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 session];
  v9 = [v8 delegate];

  v10 = objc_opt_respondsToSelector();
  v11 = objc_opt_respondsToSelector();
  if ((v10 & 1) == 0 && (v11 & 1) == 0)
  {
    v12 = AMSError(2, @"Finance Dialog Error", @"No delegate to present the dialog", 0);
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v15 = objc_opt_class();
    v16 = AMSLogKey();
    *buf = 138543874;
    v41 = v15;
    v42 = 2114;
    v43 = v16;
    v44 = 2114;
    v45 = v12;
    v17 = "%{public}@: [%{public}@] Failed to present dialog (no delegate). %{public}@";
LABEL_16:
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, v17, buf, 0x20u);

LABEL_17:
    v23 = [AMSPromise promiseWithError:v12];

    goto LABEL_27;
  }

  if (!v6)
  {
    v12 = AMSError(2, @"Finance Dialog Failed", @"No dialog request", 0);
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v27 = objc_opt_class();
    v16 = AMSLogKey();
    *buf = 138543874;
    v41 = v27;
    v42 = 2114;
    v43 = v16;
    v44 = 2114;
    v45 = v12;
    v17 = "%{public}@: [%{public}@] Failed to present dialog (no request). %{public}@";
    goto LABEL_16;
  }

  v18 = +[AMSLogConfig sharedConfig];
  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = AMSLogKey();
    *buf = 138543874;
    v41 = v20;
    v42 = 2114;
    v43 = v22;
    v44 = 2114;
    v45 = v6;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting dialog: %{public}@", buf, 0x20u);
  }

  v23 = [[AMSPromise alloc] initWithTimeout:300.0];
  if (v10)
  {
    v24 = [v7 session];
    v25 = [v7 task];
    v26 = [(AMSPromise *)v23 completionHandlerAdapter];
    [v9 AMSURLSession:v24 task:v25 handleDialogRequest:v6 completion:v26];
  }

  else
  {
    v28 = +[AMSUnitTests isRunningUnitTests];
    v29 = +[AMSLogConfig sharedConfig];
    v30 = [v29 OSLogObject];
    v31 = v30;
    if (v28)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = v32;
        v34 = AMSLogKey();
        *buf = 138543618;
        v41 = v32;
        v42 = 2114;
        v43 = v34;
        _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Calling legacy delegate for dialog handling", buf, 0x16u);
      }

      v29 = [MEMORY[0x1E696AD88] defaultCenter];
      [v29 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:0 userInfo:0];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v35 = objc_opt_class();
        v36 = v35;
        v37 = AMSLogKey();
        *buf = 138543618;
        v41 = v35;
        v42 = 2114;
        v43 = v37;
        _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Calling legacy delegate for dialog handling", buf, 0x16u);
      }
    }

    v24 = [v7 session];
    v25 = [(AMSPromise *)v23 completionHandlerAdapter];
    [v9 AMSURLSession:v24 handleDialogRequest:v6 completion:v25];
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __52__AMSFinanceDialogResponse__presentDialog_taskInfo___block_invoke;
  v39[3] = &__block_descriptor_40_e37_v24__0__AMSDialogResult_8__NSError_16l;
  v39[4] = a1;
  [(AMSPromise *)v23 addFinishBlock:v39];
LABEL_27:

  return v23;
}

void __52__AMSFinanceDialogResponse__presentDialog_taskInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@: [%{public}@] Dialog succeeded.";
      v11 = v7;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_10:
      _os_log_impl(&dword_192869000, v11, v12, v10, &v15, v13);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v9 = AMSLogKey();
      v15 = 138543874;
      v16 = v14;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v4;
      v10 = "%{public}@: [%{public}@] Dialog failed. %{public}@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
      goto LABEL_10;
    }
  }
}

+ (id)_presentIDSDialog:(id)a3 taskInfo:(id)a4
{
  v4 = AMSError(11, @"IDS Not Supported", @"Invalid platform", 0);
  v5 = [AMSBinaryPromise promiseWithError:v4];

  return v5;
}

+ (id)_serviceActionFromButton:(id)a3 taskInfo:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = [a3 ams_buttonDictionary];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;

      if (v7)
      {
        v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
        if (v8)
        {
          v9 = v8;
          v10 = [v5 objectForKeyedSubscript:@"dialogData"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;

            if (v11)
            {
              if ([MEMORY[0x1E696ACB0] isValidJSONObject:v11])
              {
                v28 = 0;
                v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v11 options:0 error:&v28];
                v13 = v28;
                if (!v13)
                {
LABEL_37:

                  goto LABEL_38;
                }

                v14 = +[AMSLogConfig sharedConfig];
                if (!v14)
                {
                  v14 = +[AMSLogConfig sharedConfig];
                }

                v15 = [v14 OSLogObject];
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  v16 = objc_opt_class();
                  v17 = AMSLogKey();
                  *buf = 138543874;
                  v32 = v16;
                  v33 = 2114;
                  v34 = v17;
                  v18 = v17;
                  v35 = 2114;
                  v36 = v13;
                  _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Service action dialog data encountered JSON error: %{public}@", buf, 0x20u);
                }
              }

              else
              {
                v13 = +[AMSLogConfig sharedConfig];
                if (!v13)
                {
                  v13 = +[AMSLogConfig sharedConfig];
                }

                v14 = [v13 OSLogObject];
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  v25 = objc_opt_class();
                  v26 = AMSLogKey();
                  *buf = 138543618;
                  v32 = v25;
                  v33 = 2114;
                  v34 = v26;
                  _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Service action dialog data not JSON compatible", buf, 0x16u);
                }

                v12 = 0;
              }

              goto LABEL_37;
            }
          }

          else
          {

            v11 = 0;
          }

          v12 = 0;
LABEL_38:
          v21 = [AMSURLAction redirectActionWithURL:v9];
          [v21 setUpdatedMethod:@"POST"];
          [v21 setUpdatedBody:v12];
          v29 = @"Content-Type";
          v30 = @"application/json";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          [v21 setUpdatedHeaders:v27];

LABEL_25:
          goto LABEL_26;
        }
      }
    }

    else
    {

      v7 = 0;
    }

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      *buf = 138543618;
      v32 = v22;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to locate URL for service action", buf, 0x16u);
    }

    v21 = 0;
    goto LABEL_25;
  }

  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v7 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v19 = objc_opt_class();
    v20 = AMSLogKey();
    *buf = 138543618;
    v32 = v19;
    v33 = 2114;
    v34 = v20;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to locate button dictionary for service action", buf, 0x16u);
  }

  v21 = 0;
LABEL_26:

  return v21;
}

@end