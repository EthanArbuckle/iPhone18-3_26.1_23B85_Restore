@interface AMSUIParentalVerificationIDCardTask
+ (id)_descriptorForMinimumAge:(int64_t)a3;
+ (id)_identityController;
+ (id)_identityRequestWithDescriptor:(id)a3 nonce:(id)a4;
+ (id)_requestDictFromMinimumAge:(int64_t)a3 walletData:(id)a4 nonce:(id)a5;
+ (int64_t)_minAgeFromObject:(id)a3;
- (AMSUIParentalVerificationIDCardTask)initWithAccount:(id)a3 accountParameters:(id)a4 bag:(id)a5 displayName:(id)a6 metrics:(id)a7 viewController:(id)a8;
- (id)_dataFromIDCardForMinimumAge:(int64_t)a3 nonce:(id)a4;
- (id)_promiseToFetchIDCardTokenURL:(id)a3 requestBody:(id)a4;
- (id)_promiseToLoadPVTURLWithBody:(id)a3;
- (id)_promiseToRequestIDCardData;
- (id)performTask;
@end

@implementation AMSUIParentalVerificationIDCardTask

- (AMSUIParentalVerificationIDCardTask)initWithAccount:(id)a3 accountParameters:(id)a4 bag:(id)a5 displayName:(id)a6 metrics:(id)a7 viewController:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = AMSUIParentalVerificationIDCardTask;
  v18 = [(AMSTask *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_originalAccount, a3);
    objc_storeStrong(&v19->_accountParameters, a4);
    objc_storeStrong(&v19->_bag, a5);
    objc_storeStrong(&v19->_displayName, a6);
    objc_storeStrong(&v19->_metrics, a7);
    objc_storeStrong(&v19->_viewController, a8);
  }

  return v19;
}

- (id)performTask
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v21 = 138543618;
    v22 = v5;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running AMSUIParentalVerificationIDCardTask", &v21, 0x16u);
  }

  v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C0]];
  v8 = [(AMSUIParentalVerificationIDCardTask *)self originalAccount];
  v9 = [(AMSUIParentalVerificationIDCardTask *)self accountParameters];
  v10 = [AMSUIPaymentVerificationProtocolHandler _accountToUseFromGivenAccount:v8 accountParameters:v9 accountStore:v7];

  if (v10)
  {
    [(AMSUIParentalVerificationIDCardTask *)self setAccount:v10];
    v11 = [(AMSUIParentalVerificationIDCardTask *)self _promiseToRequestIDCardData];
  }

  else
  {
    v12 = *MEMORY[0x1E698C548];
    v13 = AMSCustomError();
    v14 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v21 = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", &v21, 0x20u);
    }

    v11 = [MEMORY[0x1E698CAD0] promiseWithError:v13];
    v18 = [(AMSUIParentalVerificationIDCardTask *)self metrics];
    [v18 setDisplayReason:@"Missing account"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_promiseToRequestIDCardData
{
  v3 = [(AMSUIParentalVerificationIDCardTask *)self account];
  v4 = [v3 ams_altDSID];

  v5 = [(AMSUIParentalVerificationIDCardTask *)self accountParameters];
  v6 = [AMSUIParentalVerificationCore _minimumAgeFrom:v5];

  if (v6)
  {
    v7 = -[AMSUIParentalVerificationIDCardTask _dataFromIDCardForMinimumAge:nonce:](self, "_dataFromIDCardForMinimumAge:nonce:", [v6 integerValue], v4);
  }

  else
  {
    v8 = [(AMSUIParentalVerificationIDCardTask *)self bag];
    v9 = [v8 dictionaryForKey:@"parental-verification"];

    v10 = [v9 valuePromise];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__AMSUIParentalVerificationIDCardTask__promiseToRequestIDCardData__block_invoke;
    v12[3] = &unk_1E7F25470;
    v12[4] = self;
    v13 = v4;
    v7 = [v10 thenWithBlock:v12];
  }

  return v7;
}

uint64_t __66__AMSUIParentalVerificationIDCardTask__promiseToRequestIDCardData__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _minAgeFromObject:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 _dataFromIDCardForMinimumAge:v5 nonce:v7];
}

- (id)_dataFromIDCardForMinimumAge:(int64_t)a3 nonce:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v8 = [objc_opt_class() _descriptorForMinimumAge:a3];
  v9 = [objc_opt_class() _identityController];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__AMSUIParentalVerificationIDCardTask__dataFromIDCardForMinimumAge_nonce___block_invoke;
  v17[3] = &unk_1E7F25578;
  v17[4] = self;
  v18 = v8;
  v19 = v6;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  v22 = a3;
  v11 = v9;
  v12 = v6;
  v13 = v8;
  [v11 checkCanRequestDocument:v13 completion:v17];
  v14 = v21;
  v15 = v10;

  return v10;
}

void __74__AMSUIParentalVerificationIDCardTask__dataFromIDCardForMinimumAge_nonce___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [objc_opt_class() _identityRequestWithDescriptor:*(a1 + 40) nonce:*(a1 + 48)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__AMSUIParentalVerificationIDCardTask__dataFromIDCardForMinimumAge_nonce___block_invoke_2;
    v10[3] = &unk_1E7F25550;
    v10[4] = *(a1 + 32);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v11 = v6;
    v13 = v7;
    v12 = *(a1 + 48);
    [v5 requestDocument:v4 completion:v10];
  }

  else
  {
    v8 = [v3 metrics];
    [v8 setDisplayReason:@"No suitable ID card"];

    v9 = AMSError();
    [*(a1 + 64) finishWithError:v9];
  }
}

void __74__AMSUIParentalVerificationIDCardTask__dataFromIDCardForMinimumAge_nonce___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 encryptedData];

  if (v7)
  {
    v8 = [v5 encryptedData];
    v9 = *(a1 + 32);
    v10 = [objc_opt_class() _requestDictFromMinimumAge:*(a1 + 56) walletData:v8 nonce:*(a1 + 48)];
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) _promiseToLoadPVTURLWithBody:v10];
    [v11 finishWithPromise:v12];
  }

  else
  {
    v13 = [v6 code];
    v14 = [*(a1 + 32) metrics];
    v15 = v14;
    if (v13 == 2)
    {
      [v14 setDisplayReason:@"User closed wallet UI"];

      v16 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v16)
      {
        v16 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        v19 = objc_opt_class();
        v20 = AMSLogKey();
        *buf = 138543874;
        v39 = v19;
        v40 = 2114;
        v41 = v20;
        v42 = 2114;
        v43 = v6;
        _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ID Card UI was cancelled by user: %{public}@", buf, 0x20u);
      }

      v21 = *(a1 + 40);
      v22 = *MEMORY[0x1E698C548];
      v36 = @"really_cancelled";
      v37 = MEMORY[0x1E695E118];
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v24 = AMSCustomError();
      [v21 finishWithError:v24];
    }

    else
    {
      [v14 setDisplayReason:@"ID Card document request failed"];

      v25 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v25)
      {
        v25 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        v28 = objc_opt_class();
        v29 = AMSLogKey();
        *buf = 138543874;
        v39 = v28;
        v40 = 2114;
        v41 = v29;
        v42 = 2114;
        v43 = v6;
        _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Request document from wallet failed: %{public}@", buf, 0x20u);
      }

      v30 = *(a1 + 40);
      v31 = [*(a1 + 32) bag];
      v32 = [*(a1 + 32) viewController];
      v33 = [*(a1 + 32) metrics];
      v34 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v31 viewController:v32 metrics:v33 pageID:@"ContinueNoIDCard" flowName:@"Wallet ID card"];
      [v30 finishWithPromise:v34];
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

+ (id)_descriptorForMinimumAge:(int64_t)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69B8930] ageThresholdElementWithAge:a3];
  v4 = objc_alloc_init(getPKIdentityDriversLicenseDescriptorClass[0]());
  v20[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v6 = [MEMORY[0x1E69B8938] willNotStoreIntent];
  [v4 addElements:v5 withIntentToStore:v6];

  v7 = objc_alloc_init(getPKIdentityPhotoIDDescriptorClass[0]());
  v19 = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v9 = [MEMORY[0x1E69B8938] willNotStoreIntent];
  [v7 addElements:v8 withIntentToStore:v9];

  v10 = objc_alloc_init(getPKIdentityNationalIDCardDescriptorClass[0]());
  [v10 setRegionCode:@"JP"];
  v18 = v3;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v12 = [MEMORY[0x1E69B8938] willNotStoreIntent];
  [v10 addElements:v11 withIntentToStore:v12];

  v17[0] = v4;
  v17[1] = v7;
  v17[2] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v14 = [objc_alloc(getPKIdentityAnyOfDescriptorClass[0]()) initWithDescriptors:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)_identityController
{
  v2 = objc_alloc_init(getPKIdentityAuthorizationControllerClass[0]());

  return v2;
}

+ (id)_identityRequestWithDescriptor:(id)a3 nonce:(id)a4
{
  v6 = getPKIdentityRequestClass[0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6());
  [v9 setDescriptor:v8];

  v10 = [a1 _nonceFromString:v7];

  [v9 setNonce:v10];
  [v9 setMerchantIdentifier:@"com.apple.ams-identity-verification"];

  return v9;
}

- (id)_promiseToLoadPVTURLWithBody:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIParentalVerificationIDCardTask *)self metrics];
  [v5 enqueueEventWithPageId:@"ParentalVerificationIDCard" displayReason:0];

  v6 = [(AMSUIParentalVerificationIDCardTask *)self bag];
  v7 = [v6 URLForKey:@"verifyAgeMeadPvt"];

  v8 = [v7 valuePromise];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__AMSUIParentalVerificationIDCardTask__promiseToLoadPVTURLWithBody___block_invoke;
  v12[3] = &unk_1E7F25470;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  v10 = [v8 thenWithBlock:v12];

  return v10;
}

- (id)_promiseToFetchIDCardTokenURL:(id)a3 requestBody:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSUIParentalVerificationIDCardTask *)self account];
  v9 = [(AMSUIParentalVerificationIDCardTask *)self accountParameters];
  v10 = [(AMSUIParentalVerificationIDCardTask *)self bag];
  v11 = [AMSUIPaymentVerificationProtocolHandler _promiseToFetchURLResponseForAccount:v8 accountParameters:v9 url:v7 bag:v10 requestBody:v6 bodyEncoding:3 contentType:0];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__AMSUIParentalVerificationIDCardTask__promiseToFetchIDCardTokenURL_requestBody___block_invoke;
  v14[3] = &unk_1E7F25498;
  v14[4] = self;
  v12 = [v11 continueWithBlock:v14];

  return v12;
}

id __81__AMSUIParentalVerificationIDCardTask__promiseToFetchIDCardTokenURL_requestBody___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) metrics];
    [v7 setDisplayReason:@"ID card data fetch failed"];

    v8 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v31 = 138543874;
      v32 = v11;
      v33 = 2114;
      v34 = v12;
      v35 = 2114;
      v36 = v6;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fetch PVT for ID Card failed: %{public}@", &v31, 0x20u);
    }

    v13 = [*(a1 + 32) bag];
    v14 = [*(a1 + 32) viewController];
    v15 = [*(a1 + 32) metrics];
    v16 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v13 viewController:v14 metrics:v15 pageID:@"ContinueNoIDCard" flowName:@"Wallet ID card"];
LABEL_7:

    goto LABEL_10;
  }

  v17 = [v5 object];
  v13 = [AMSUIParentalVerificationCore _tokenFromObject:v17];

  v14 = [AMSUIParentalVerificationCore _tokenResultFromTokenString:v13];
  if (!v14)
  {
    v22 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v22)
    {
      v22 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = objc_opt_class();
      v26 = AMSLogKey();
      v27 = [v5 object];
      v31 = 138543874;
      v32 = v25;
      v33 = 2114;
      v34 = v26;
      v35 = 2114;
      v36 = v27;
      _os_log_impl(&dword_1BB036000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fetch PVT for ID Card response had no token: %{public}@", &v31, 0x20u);
    }

    v28 = [*(a1 + 32) metrics];
    [v28 setDisplayReason:@"ID card data failed"];

    v15 = [*(a1 + 32) bag];
    v29 = [*(a1 + 32) viewController];
    v30 = [*(a1 + 32) metrics];
    v16 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v15 viewController:v29 metrics:v30 pageID:@"ContinueNoIDCard" flowName:@"Wallet ID card"];

    goto LABEL_7;
  }

  v18 = [*(a1 + 32) metrics];
  [v18 enqueueEventWithPageId:@"ParentVerified" displayReason:@"IDCard"];

  v19 = [*(a1 + 32) metrics];
  [v19 flushEvents];

  v16 = [MEMORY[0x1E698CAD0] promiseWithResult:v14];
LABEL_10:

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)_requestDictFromMinimumAge:(int64_t)a3 walletData:(id)a4 nonce:(id)a5
{
  v17[3] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a4 base64EncodedStringWithOptions:1];
  v16[0] = @"ageThreshold";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_1F3921360;
  }

  v17[0] = v9;
  v17[1] = v11;
  v16[1] = @"digitalId";
  v16[2] = @"nonce";
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = &stru_1F3921360;
  }

  v17[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (int64_t)_minAgeFromObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"min-age"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v7 = 18;
    }
  }

  else
  {
    v7 = 18;
  }

  return v7;
}

@end