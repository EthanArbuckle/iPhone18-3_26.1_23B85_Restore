@interface AMSFinanceExpressCheckoutResponse
+ (BOOL)_isExpressCheckoutEnabledForBag:(id)a3;
+ (BOOL)_isExpressCheckoutRecordUserChoiceEnabledForBag:(id)a3;
+ (BOOL)isEligibleForBag:(id)a3;
+ (BOOL)isExpressCheckoutPayload:(id)a3;
+ (BOOL)isExpressCheckoutShouldCheckForWalletBiometricsForBag:(id)a3;
- (AMSFinanceExpressCheckoutResponse)initWithResponseDictionary:(id)a3 taskInfo:(id)a4;
- (id)_buyParamFromPayload:(id)a3;
- (id)_createClientDataForPaymentChoices:(id)a3;
- (id)_createPageEventForPaymentChoices:(id)a3;
- (id)_fetchCardDataForMerchantIdentifier:(id)a3 countryCode:(id)a4;
- (id)_paymentChoicesBodyForCardData:(id)a3;
- (id)_paymentChoicesForCardData:(id)a3;
- (id)_paymentChoicesRequestForCardData:(id)a3;
- (id)_presentEngagementForPaymentChoices:(id)a3;
- (id)_recordUserChoiceForEngagementResult:(id)a3;
- (id)_recordUserChoiceRequest;
- (id)performWithTaskInfo:(id)a3;
- (int64_t)_expressCheckoutModeFromPayload:(id)a3;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
- (void)performWithTaskInfo:(id)a3 completionHandler:(id)a4;
- (void)removeExpressCheckoutSession;
@end

@implementation AMSFinanceExpressCheckoutResponse

- (AMSFinanceExpressCheckoutResponse)initWithResponseDictionary:(id)a3 taskInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = AMSFinanceExpressCheckoutResponse;
  v8 = [(AMSFinancePaymentSheetResponse *)&v24 initWithResponseDictionary:v6 confirmationOnly:0 delegateAuthenticationRequired:0 biometricSignatureRequired:1 taskInfo:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [(AMSFinanceExpressCheckoutResponse *)v8 _expressCheckoutModeFromPayload:v6];
    v9->_expressCheckoutMode = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    v12 = [v7 properties];
    v13 = [v12 purchaseInfo];
    [v13 setExpressCheckoutMode:v11];

    v14 = [(AMSFinanceExpressCheckoutResponse *)v9 _buyParamFromPayload:v6];
    buyParams = v9->_buyParams;
    v9->_buyParams = v14;

    v16 = MEMORY[0x1E695AC80];
    v17 = +[AMSProcessInfo currentProcess];
    v18 = [v16 ams_configurationWithProcessInfo:v17 bag:0];

    v19 = [[AMSURLSession alloc] initWithConfiguration:v18 delegate:v9 delegateQueue:0];
    session = v9->_session;
    v9->_session = v19;

    v21 = [v7 properties];
    parentProperties = v9->_parentProperties;
    v9->_parentProperties = v21;
  }

  return v9;
}

- (id)performWithTaskInfo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[AMSUnitTests isRunningUnitTests];
  v4 = +[AMSLogConfig sharedPurchaseConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = +[AMSLogConfig sharedPurchaseConfig];
    [v5 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v9 userInfo:0];
  }

  else
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v5 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
    }
  }

  return 0;
}

- (void)performWithTaskInfo:(id)a3 completionHandler:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v22 = a3;
  v6 = a4;
  v7 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v8 = [v7 bag];

  v9 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v23 = [v9 account];

  v10 = [v8 stringForKey:@"applepay-merchant-id"];
  v11 = [v10 valuePromise];

  v12 = [v8 stringForKey:@"countryCode"];
  v13 = [v12 valuePromise];

  v31[0] = v11;
  v31[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v15 = [AMSPromise promiseWithAll:v14];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __75__AMSFinanceExpressCheckoutResponse_performWithTaskInfo_completionHandler___block_invoke;
  v30[3] = &unk_1E73B3028;
  v30[4] = self;
  v16 = [v15 thenWithBlock:v30];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __75__AMSFinanceExpressCheckoutResponse_performWithTaskInfo_completionHandler___block_invoke_2;
  v29[3] = &unk_1E73B4E20;
  v29[4] = self;
  v17 = [v16 thenWithBlock:v29];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __75__AMSFinanceExpressCheckoutResponse_performWithTaskInfo_completionHandler___block_invoke_3;
  v28[3] = &unk_1E73B7CF8;
  v28[4] = self;
  v18 = [v17 thenWithBlock:v28];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __75__AMSFinanceExpressCheckoutResponse_performWithTaskInfo_completionHandler___block_invoke_4;
  v27[3] = &unk_1E73B7D20;
  v27[4] = self;
  v19 = [v18 thenWithBlock:v27];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__AMSFinanceExpressCheckoutResponse_performWithTaskInfo_completionHandler___block_invoke_5;
  v24[3] = &unk_1E73B7D48;
  v24[4] = self;
  v25 = v22;
  v26 = v6;
  v20 = v22;
  v21 = v6;
  [v19 addFinishBlock:v24];
}

id __75__AMSFinanceExpressCheckoutResponse_performWithTaskInfo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = [v3 lastObject];

  v6 = [v2 _fetchCardDataForMerchantIdentifier:v4 countryCode:v5];

  return v6;
}

void __75__AMSFinanceExpressCheckoutResponse_performWithTaskInfo_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"AMSEngagementPresented"];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 userInfo];
      v11 = [v10 objectForKeyedSubscript:@"AMSEngagementPresented"];
      v12 = [v11 BOOLValue];

      if (v12 && [v7 code] == 6)
      {
        v13 = +[AMSLogConfig sharedPurchaseOversizeConfig];
        if (!v13)
        {
          v13 = +[AMSLogConfig sharedConfig];
        }

        v14 = [v13 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = objc_opt_class();
          v16 = AMSLogKey();
          *buf = 138543874;
          v52 = v15;
          v53 = 2114;
          v54 = v16;
          v55 = 2114;
          v56 = v7;
          _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Express Checkout cancelled with: %{public}@", buf, 0x20u);
        }

        v17 = *(a1 + 48);
        v18 = [AMSURLAction actionWithError:v7];
        (*(v17 + 16))(v17, v18);
LABEL_33:

        goto LABEL_44;
      }
    }

    else
    {
    }

    v24 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v29 = objc_opt_class();
    v27 = AMSLogKey();
    *buf = 138543874;
    v52 = v29;
    v53 = 2114;
    v54 = v27;
    v55 = 2114;
    v56 = v7;
    v28 = "%{public}@: [%{public}@] Express Checkout failed and fallback to regular buy flow, error: %{public}@";
    v30 = v25;
    v31 = OS_LOG_TYPE_ERROR;
    v32 = 32;
    goto LABEL_39;
  }

  v19 = [v5 expressCheckoutPath];
  v20 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v20)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = AMSLogKey();
    *buf = 138543874;
    v52 = v22;
    v53 = 2114;
    v54 = v23;
    v55 = 2048;
    v56 = v19;
    _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Express Checkout successful with path: %ld", buf, 0x20u);
  }

  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v43 = [v5 expressCheckoutCardSelection];

      if (v43)
      {
        v44 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v44)
        {
          v44 = +[AMSLogConfig sharedConfig];
        }

        v45 = [v44 OSLogObject];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = objc_opt_class();
          v47 = AMSLogKey();
          *buf = 138543618;
          v52 = v46;
          v53 = 2114;
          v54 = v47;
          _os_log_impl(&dword_192869000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Card selection received and configured", buf, 0x16u);
        }

        v48 = [v5 expressCheckoutCardSelection];
        v49 = [*(a1 + 32) paymentSheetRequest];
        [v49 setSelectedCard:v48];
      }
    }

    else if (v19 == 4)
    {
      v18 = AMSError(2, @"Express Checkout Closed", @"User closed express checkout", 0);
      v33 = +[AMSLogConfig sharedPurchaseOversizeConfig];
      if (!v33)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      v34 = [v33 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = AMSLogKey();
        *buf = 138543874;
        v52 = v35;
        v53 = 2114;
        v54 = v36;
        v55 = 2114;
        v56 = 0;
        _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Express Checkout Closed with: %{public}@", buf, 0x20u);
      }

      v37 = *(a1 + 48);
      v38 = [AMSURLAction actionWithError:v18];
      (*(v37 + 16))(v37, v38);

      goto LABEL_33;
    }
  }

  else
  {
    if (!v19)
    {
      v24 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v39 = objc_opt_class();
      v27 = AMSLogKey();
      *buf = 138543618;
      v52 = v39;
      v53 = 2114;
      v54 = v27;
      v28 = "%{public}@: [%{public}@] Express checkout finished with ineligible path, remove merchantSession";
LABEL_38:
      v30 = v25;
      v31 = OS_LOG_TYPE_DEFAULT;
      v32 = 22;
LABEL_39:
      _os_log_impl(&dword_192869000, v30, v31, v28, buf, v32);

LABEL_40:
      [*(a1 + 32) removeExpressCheckoutSession];
      goto LABEL_41;
    }

    if (v19 == 1)
    {
      v24 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v26 = objc_opt_class();
      v27 = AMSLogKey();
      *buf = 138543618;
      v52 = v26;
      v53 = 2114;
      v54 = v27;
      v28 = "%{public}@: [%{public}@] Express checkout success with alternative payment, remove merchantSession";
      goto LABEL_38;
    }
  }

LABEL_41:
  if ([*(a1 + 32) expressCheckoutMode] == 1)
  {
    v40 = [*(a1 + 32) paymentSheetRequest];
    [v40 setApplePayClassic:1];
  }

  v41 = *(a1 + 40);
  v42 = *(a1 + 48);
  v50.receiver = *(a1 + 32);
  v50.super_class = AMSFinanceExpressCheckoutResponse;
  objc_msgSendSuper2(&v50, sel_performWithTaskInfo_completionHandler_, v41, v42);
LABEL_44:
}

- (id)_fetchCardDataForMerchantIdentifier:(id)a3 countryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AMSFinanceExpressCheckoutResponse *)self expressCheckoutMode]== 2)
  {
    v8 = [[AMSCardRegistrationTask alloc] initWithCountryCode:v7 merchantIdentifier:v6];
    [(AMSTask *)v8 setRunMode:1];
    v9 = [(AMSCardRegistrationTask *)v8 performCardRegistration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__AMSFinanceExpressCheckoutResponse__fetchCardDataForMerchantIdentifier_countryCode___block_invoke;
    v12[3] = &unk_1E73B7D70;
    v12[4] = self;
    v10 = [v9 thenWithBlock:v12];
  }

  else
  {
    v10 = [AMSPromise promiseWithResult:&stru_1F071BA78];
  }

  return v10;
}

id __85__AMSFinanceExpressCheckoutResponse__fetchCardDataForMerchantIdentifier_countryCode___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a2 cardData];
  v3 = v2;
  if (v2 && [v2 length])
  {
    v4 = [v3 base64EncodedStringWithOptions:0];
    v5 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v6 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Card data fetch failed during Express Checkout, continuing with regular buy", &v12, 0x16u);
    }

    v4 = AMSError(7, @"Card registration data not available", @"Fetching card data failed during Express Checkout, continuing with regular buy", 0);
    v5 = [AMSPromise promiseWithError:v4];
  }

  v10 = v5;

  return v10;
}

- (id)_paymentChoicesForCardData:(id)a3
{
  v4 = [(AMSFinanceExpressCheckoutResponse *)self _paymentChoicesRequestForCardData:a3];
  v5 = [(AMSFinanceExpressCheckoutResponse *)self session];
  v6 = [v5 dataTaskPromiseWithRequestPromise:v4];
  v7 = [v6 thenWithBlock:&__block_literal_global_62];

  return v7;
}

id __64__AMSFinanceExpressCheckoutResponse__paymentChoicesForCardData___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 object];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

- (id)_paymentChoicesRequestForCardData:(id)a3
{
  v4 = a3;
  v5 = [AMSURLRequestEncoder alloc];
  v6 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v7 = [v6 bag];
  v8 = [(AMSURLRequestEncoder *)v5 initWithBag:v7];

  [(AMSURLRequestEncoder *)v8 setRequestEncoding:3];
  v9 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v10 = [v9 account];
  [(AMSURLRequestEncoder *)v8 setAccount:v10];

  v11 = [[AMSCodableResponseDecoder alloc] initWithRootClass:objc_opt_class()];
  [(AMSURLRequestEncoder *)v8 setResponseDecoder:v11];

  v12 = [(AMSFinanceExpressCheckoutResponse *)self _paymentChoicesBodyForCardData:v4];

  v13 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v14 = [v13 bag];
  v15 = [v14 BOOLForKey:@"applePayExpressCheckoutPaymentChoicesUsePost"];
  v16 = [v15 valuePromise];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__AMSFinanceExpressCheckoutResponse__paymentChoicesRequestForCardData___block_invoke;
  v21[3] = &unk_1E73B7D98;
  v21[4] = self;
  v22 = v8;
  v23 = v12;
  v17 = v12;
  v18 = v8;
  v19 = [v16 continueWithBlock:v21];

  return v19;
}

id __71__AMSFinanceExpressCheckoutResponse__paymentChoicesRequestForCardData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v17 = 138543874;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v6;
    }
  }

  if ([v5 BOOLValue])
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  v12 = [*(a1 + 32) parentProperties];
  v13 = [v12 bag];
  v14 = [v13 URLForKey:@"applePayExpressCheckoutPaymentChoicesUrl"];

  v15 = [*(a1 + 40) requestWithMethod:v11 bagURL:v14 parameters:*(a1 + 48)];

  return v15;
}

- (id)_paymentChoicesBodyForCardData:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  buyParams = self->_buyParams;
  if (buyParams)
  {
    v7 = [(AMSBuyParams *)buyParams dictionary];
  }

  else
  {
    v8 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
    v9 = [v8 purchaseInfo];
    v10 = [v9 buyParams];
    v7 = [v10 dictionary];
  }

  v20 = 0;
  v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:&v20];
  v12 = v20;
  v13 = 0x1E696A000uLL;
  if (v12)
  {
    v14 = +[AMSLogConfig sharedPurchaseOversizeConfig];
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
      v22 = v16;
      v13 = 0x1E696A000;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode buyParams. %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
    [v5 setObject:v14 forKeyedSubscript:@"buyParams"];
  }

LABEL_13:
  if ([v4 length])
  {
    [v5 setObject:v4 forKeyedSubscript:@"cardData"];
  }

  v18 = [*(v13 + 3776) stringWithFormat:@"%lu", -[AMSFinanceExpressCheckoutResponse expressCheckoutMode](self, "expressCheckoutMode")];
  [v5 setObject:v18 forKeyedSubscript:@"expressCheckoutMode"];

  return v5;
}

- (id)_presentEngagementForPaymentChoices:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEmpty] && -[AMSFinanceExpressCheckoutResponse expressCheckoutMode](self, "expressCheckoutMode") == 2)
  {
    v5 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v34 = 138543618;
      v35 = v7;
      v36 = 2114;
      v37 = v8;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Payment choices is empty & expressCheckout mode is AURUM, so marking the Express Checkout path as ineligible", &v34, 0x16u);
    }

    v9 = [[AMSEngagementResult alloc] initWithPath:0];
    v10 = [AMSPromise promiseWithResult:v9];
  }

  else
  {
    v11 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v34 = 138543618;
      v35 = v13;
      v36 = 2114;
      v37 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting Express Checkout engagement", &v34, 0x16u);
    }

    v15 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
    v16 = [v15 purchaseInfo];
    v9 = [v16 delegate];

    if (objc_opt_respondsToSelector())
    {
      v17 = [[AMSExpressCheckoutModel alloc] initWithMode:[(AMSFinanceExpressCheckoutResponse *)self expressCheckoutMode] paymentChoices:v4];
      v18 = [[AMSEngagementRequest alloc] initWithModel:v17 destinationStyle:3];
      v19 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
      v20 = [v19 account];
      [(AMSEngagementRequest *)v18 setAccount:v20];

      v21 = AMSLogKey();
      [(AMSEngagementRequest *)v18 setLogKey:v21];

      [(AMSEngagementRequest *)v18 setFailOnDismiss:1];
      v22 = [MEMORY[0x1E695DFF8] URLWithString:@"https://amsui.apple.com/dynamic/marketing#route=expressCheckout"];
      [(AMSEngagementRequest *)v18 setURL:v22];

      v23 = [(AMSFinanceExpressCheckoutResponse *)self _createPageEventForPaymentChoices:v4];
      [(AMSEngagementRequest *)v18 setMetricsOverlay:v23];

      v24 = [(AMSFinanceExpressCheckoutResponse *)self _createClientDataForPaymentChoices:v4];
      [(AMSEngagementRequest *)v18 setClientData:v24];

      v10 = objc_alloc_init(AMSPromise);
      v25 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
      v26 = [v25 purchaseInfo];
      v27 = [v26 purchase];
      v28 = [(AMSPromise *)v10 completionHandlerAdapter];
      [(AMSEngagementResult *)v9 purchase:v27 handleEngagementRequest:v18 completion:v28];
    }

    else
    {
      v17 = AMSError(2, @"Finance Engagement Error", @"No delegate to present the engagement", 0);
      v29 = +[AMSLogConfig sharedPurchaseOversizeConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v29 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = AMSLogKey();
        v34 = 138543874;
        v35 = v31;
        v36 = 2114;
        v37 = v32;
        v38 = 2114;
        v39 = v17;
        _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to present engagement (no delegate). %{public}@", &v34, 0x20u);
      }

      v10 = [AMSPromise promiseWithError:v17];
    }
  }

  return v10;
}

- (id)_recordUserChoiceForEngagementResult:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 expressCheckoutPath] != 4)
  {
    v11 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    v15 = "%{public}@: [%{public}@] Skipping recording user choice due to ineligibility";
    goto LABEL_12;
  }

  v5 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v6 = [v5 bag];
  v7 = [AMSFinanceExpressCheckoutResponse _isExpressCheckoutRecordUserChoiceEnabledForBag:v6];

  if (v7)
  {
    v8 = [(AMSFinanceExpressCheckoutResponse *)self _recordUserChoiceRequest];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__AMSFinanceExpressCheckoutResponse__recordUserChoiceForEngagementResult___block_invoke;
    v20[3] = &unk_1E73B3510;
    v20[4] = self;
    v9 = [v8 thenWithBlock:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__AMSFinanceExpressCheckoutResponse__recordUserChoiceForEngagementResult___block_invoke_83;
    v18[3] = &unk_1E73B7DC0;
    v18[4] = self;
    v19 = v4;
    v10 = [v9 continueWithBlock:v18];

    goto LABEL_14;
  }

  v11 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v22 = v16;
    v23 = 2114;
    v24 = v14;
    v15 = "%{public}@: [%{public}@] Skipping recording user choice due to not enabled by bag key";
LABEL_12:
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
  }

LABEL_13:

  v10 = [AMSPromise promiseWithResult:v4];
LABEL_14:

  return v10;
}

id __74__AMSFinanceExpressCheckoutResponse__recordUserChoiceForEngagementResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing network request for recording user choice", &v11, 0x16u);
  }

  v8 = [*(a1 + 32) session];
  v9 = [v8 dataTaskPromiseWithRequest:v3];

  return v9;
}

id __74__AMSFinanceExpressCheckoutResponse__recordUserChoiceForEngagementResult___block_invoke_83(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v11 = 138543874;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to perform network request for recording user choice with error:%{public}@", &v11, 0x20u);
    }
  }

  v9 = [AMSPromise promiseWithResult:*(a1 + 40)];

  return v9;
}

- (id)_recordUserChoiceRequest
{
  v3 = [AMSURLRequestEncoder alloc];
  v4 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v5 = [v4 bag];
  v6 = [(AMSURLRequestEncoder *)v3 initWithBag:v5];

  v7 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v8 = [v7 account];
  [(AMSURLRequestEncoder *)v6 setAccount:v8];

  v9 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v10 = [v9 bag];
  v11 = [v10 URLForKey:@"applicationUserChoiceUrl"];

  v12 = [(AMSURLRequestEncoder *)v6 requestWithMethod:2 bagURL:v11 parameters:&unk_1F0779D58];
  v13 = [v12 thenWithBlock:&__block_literal_global_93];

  return v13;
}

id __61__AMSFinanceExpressCheckoutResponse__recordUserChoiceRequest__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setHTTPMethod:@"POST"];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

- (id)_createClientDataForPaymentChoices:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
  v7 = [v6 confirmationTitle];
  v8 = @"one_time_buy";
  if (v7 == 6)
  {
    v8 = @"subscription";
  }

  v9 = v8;

  v10 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
  v11 = [v10 price];
  [v5 setObject:v11 forKeyedSubscript:@"contentPrice"];

  v12 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
  v13 = [v12 currencyCode];
  [v5 setObject:v13 forKeyedSubscript:@"purchaseCurrency"];

  [v5 setObject:v9 forKeyedSubscript:@"purchaseFrequency"];
  if ([(AMSFinanceExpressCheckoutResponse *)self expressCheckoutMode]== 2)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "cardsCount")}];
    [v5 setObject:v14 forKeyedSubscript:@"applePayCardsShown"];
  }

  return v5;
}

- (id)_createPageEventForPaymentChoices:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_buyParams;
  if (!v5)
  {
    v6 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
    v7 = [v6 purchaseInfo];
    v5 = [v7 buyParams];
  }

  v8 = [(AMSBuyParams *)v5 objectForKeyedSubscript:@"appAdamId"];
  v9 = [(AMSBuyParams *)v5 objectForKeyedSubscript:@"salableAdamId"];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v35 = @"parentAdamId";
    v36 = @"adamId";
    v37 = v8;
    v38 = v9;
    v12 = MEMORY[0x1E695DF20];
    v13 = &v37;
    v14 = &v35;
LABEL_10:
    v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:2];
    goto LABEL_11;
  }

  if (v9)
  {
    v31 = @"parentAdamId";
    v32 = @"adamId";
    v33 = v9;
    v34 = v9;
    v12 = MEMORY[0x1E695DF20];
    v13 = &v33;
    v14 = &v31;
    goto LABEL_10;
  }

  v15 = MEMORY[0x1E695E0F8];
LABEL_11:
  v29 = v8;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:@"finance" forKeyedSubscript:0x1F0726258];
  [v16 setObject:v15 forKeyedSubscript:0x1F07307B8];
  v17 = [v4 metrics];

  if (v17)
  {
    v18 = [v4 metrics];
    [v16 addEntriesFromDictionary:v18];
  }

  v19 = v4;
  v20 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties:v29];
  v21 = [v20 purchaseInfo];
  v22 = [v21 purchase];
  v23 = [v22 metricsOverlay];

  if (v23)
  {
    v24 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
    v25 = [v24 purchaseInfo];
    v26 = [v25 purchase];
    v27 = [v26 metricsOverlay];
    [v16 addEntriesFromDictionary:v27];
  }

  return v16;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v13 = a5;
  v8 = a6;
  v9 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v10 = [v9 purchaseInfo];

  v11 = [v10 delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 purchase];
    [v11 purchase:v12 handleAuthenticateRequest:v13 completion:v8];
  }

  else
  {
    v12 = AMSError(2, @"Purchase Authentication Failed", @"Purchase delegate not observing callback", 0);
    v8[2](v8, 0, v12);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v13 = a5;
  v8 = a6;
  v9 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v10 = [v9 purchaseInfo];

  v11 = [v10 delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 purchase];
    [v11 purchase:v12 handleDialogRequest:v13 completion:v8];
  }

  else
  {
    v12 = AMSError(2, @"Purchase Dialog Failed", @"Purchase delegate not observing callback", 0);
    v8[2](v8, 0, v12);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v13 = a5;
  v8 = a6;
  v9 = [(AMSFinanceExpressCheckoutResponse *)self parentProperties];
  v10 = [v9 purchaseInfo];

  v11 = [v10 delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 purchase];
    [v11 purchase:v12 handleEngagementRequest:v13 completion:v8];
  }

  else
  {
    v12 = AMSError(2, @"Purchase Engagement Failed", @"Purchase delegate not observing callback", 0);
    v8[2](v8, 0, v12);
  }
}

- (int64_t)_expressCheckoutModeFromPayload:(id)a3
{
  v3 = [a3 valueForKey:0x1F0729EF8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 valueForKey:@"expressCheckoutMode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 integerValue];
  return v7;
}

- (id)_buyParamFromPayload:(id)a3
{
  v3 = [a3 valueForKey:0x1F0729EF8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 valueForKey:@"touchIDButtonAction"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 valueForKey:@"buyParams"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;

    if (v8)
    {
      v9 = [[AMSBuyParams alloc] initWithString:v8];
      goto LABEL_12;
    }
  }

  else
  {

    v8 = 0;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (void)removeExpressCheckoutSession
{
  v3 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
  [v3 setMerchantSession:0];

  v4 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
  [v4 setApplePayClassic:0];

  v5 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
  v6 = [v5 responseDictionary];
  v9 = [AMSFinancePaymentSheetResponse fallbackTitleFromResponse:v6];

  if (v9)
  {
    v7 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
    [v7 setTitle:v9];

    v8 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
    [v8 setTitleType:0];
  }
}

+ (BOOL)isEligibleForBag:(id)a3
{
  v3 = a3;
  if ([AMSCardEnrollment isAURUMWithBag:v3])
  {
    v4 = [AMSFinanceExpressCheckoutResponse _isExpressCheckoutEnabledForBag:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isExpressCheckoutPayload:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a3 valueForKey:0x1F0729EF8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"expressCheckoutMode"];

  v6 = AMSSetLogKeyIfNeeded();
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = MEMORY[0x1E696AD98];
    v11 = v9;
    v12 = [v10 numberWithBool:v5 != 0];
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Express Checkout payload eligibility status: %{public}@", &v14, 0x20u);
  }

  return v5 != 0;
}

+ (BOOL)isExpressCheckoutShouldCheckForWalletBiometricsForBag:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = [v3 BOOLForKey:@"applePayExpressCheckoutShouldCheckForWalletBiometrics"];
  v22 = 0;
  v6 = [v5 valueWithError:&v22];
  v7 = v22;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v3 BOOLForKey:@"applePayExpressCheckoutShouldCheckForWalletBiometrics"];
    v21 = v7;
    v9 = [v8 valueWithError:&v21];
    v10 = v21;

    v11 = [v9 BOOLValue];
    v7 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v7)
  {
    v12 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543874;
      v24 = v14;
      v25 = 2114;
      v26 = v4;
      v27 = 2114;
      v28 = v7;
      v15 = v14;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bag key found for shouldCheckForWalletBiometrics, but the flag is default to enabled, if bag key does not exist , error: %{public}@", buf, 0x20u);
    }

    LOBYTE(v11) = 1;
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = MEMORY[0x1E696AD98];
      v18 = v16;
      v19 = [v17 numberWithBool:v11];
      *buf = 138543874;
      v24 = v16;
      v25 = 2114;
      v26 = v4;
      v27 = 2114;
      v28 = v19;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Express Checkout shouldCheckForWalletBiometrics from the bag: %{public}@", buf, 0x20u);
    }
  }

  return v11;
}

+ (BOOL)_isExpressCheckoutEnabledForBag:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = [v3 BOOLForKey:@"applePayExpressCheckoutEnabled"];
  v23 = 0;
  v6 = [v5 valueWithError:&v23];
  v7 = v23;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v3 BOOLForKey:@"applePayExpressCheckoutEnabled"];
    v22 = v7;
    v9 = [v8 valueWithError:&v22];
    v10 = v22;

    v11 = [v9 BOOLValue];
    v12 = v11;
    v7 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v7)
  {
    v13 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138544130;
      v25 = v15;
      v26 = 2114;
      v27 = v4;
      v28 = 2114;
      v29 = @"applePayExpressCheckoutEnabled";
      v30 = 2114;
      v31 = v7;
      v16 = v15;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bag key found: %{public}@, error: %{public}@", buf, 0x2Au);
    }

    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = MEMORY[0x1E696AD98];
      v19 = v17;
      v20 = [v18 numberWithBool:v12];
      *buf = 138543874;
      v25 = v17;
      v26 = 2114;
      v27 = v4;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Express Checkout bag enabled status: %{public}@", buf, 0x20u);
    }
  }

  return v12;
}

+ (BOOL)_isExpressCheckoutRecordUserChoiceEnabledForBag:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = [v3 BOOLForKey:@"applePayExpressCheckoutRecordUserChoiceEnabled"];
  v22 = 0;
  v6 = [v5 valueWithError:&v22];
  v7 = v22;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v3 BOOLForKey:@"applePayExpressCheckoutRecordUserChoiceEnabled"];
    v21 = v7;
    v9 = [v8 valueWithError:&v21];
    v10 = v21;

    v11 = [v9 BOOLValue];
    v7 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v7)
  {
    v12 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138544130;
      v24 = v14;
      v25 = 2114;
      v26 = v4;
      v27 = 2114;
      v28 = @"applePayExpressCheckoutEnabled";
      v29 = 2114;
      v30 = v7;
      v15 = v14;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bag key found: %{public}@, error: %{public}@", buf, 0x2Au);
    }

    LOBYTE(v11) = 1;
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = MEMORY[0x1E696AD98];
      v18 = v16;
      v19 = [v17 numberWithBool:v11];
      *buf = 138543874;
      v24 = v16;
      v25 = 2114;
      v26 = v4;
      v27 = 2114;
      v28 = v19;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Express Checkout Record User Choice bag enabled status: %{public}@", buf, 0x20u);
    }
  }

  return v11;
}

@end