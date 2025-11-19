@interface AMSDeviceOfferEligibilityTask
- (AMSDeviceOfferEligibilityTask)initWithBag:(id)a3 deviceGUID:(id)a4 masterSerialNumber:(id)a5 urlSession:(id)a6;
- (id)_accountEligibilityEncoderWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5;
- (id)_accountEligibilityRequestParametersWithIdentifiers:(id)a3;
- (id)_deviceEligibilityEncoderWithBag:(id)a3 clientInfo:(id)a4;
- (id)_deviceEligibilityRequestParametersWithGroups:(id)a3;
- (id)_eligibilityRequest;
- (id)_offersDecodedFromResult:(id)a3;
- (id)performAccountEligibility:(id)a3 forOffers:(id)a4 clientInfo:(id)a5;
- (id)performAnonymousDeviceEligibility:(id)a3 clientInfo:(id)a4;
@end

@implementation AMSDeviceOfferEligibilityTask

- (AMSDeviceOfferEligibilityTask)initWithBag:(id)a3 deviceGUID:(id)a4 masterSerialNumber:(id)a5 urlSession:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AMSDeviceOfferEligibilityTask;
  v15 = [(AMSDeviceOfferEligibilityTask *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bag, a3);
    objc_storeStrong(&v16->_deviceGUID, a4);
    objc_storeStrong(&v16->_urlSession, a6);
    objc_storeStrong(&v16->_masterSerialNumber, a5);
  }

  return v16;
}

- (id)performAnonymousDeviceEligibility:(id)a3 clientInfo:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing anonymous device eligibility check.", buf, 0x16u);
    }

    v12 = [(AMSDeviceOfferEligibilityTask *)self _eligibilityRequest];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__AMSDeviceOfferEligibilityTask_performAnonymousDeviceEligibility_clientInfo___block_invoke;
    v21[3] = &unk_1E73B6D68;
    v21[4] = self;
    v22 = v7;
    v23 = v6;
    v13 = [v12 thenWithBlock:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__AMSDeviceOfferEligibilityTask_performAnonymousDeviceEligibility_clientInfo___block_invoke_2;
    v20[3] = &unk_1E73B3510;
    v20[4] = self;
    v14 = [v13 thenWithBlock:v20];
  }

  else
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No registration groups for device eligibility check - preemptively returning", buf, 0x16u);
    }

    v14 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F0]];
  }

  return v14;
}

id __78__AMSDeviceOfferEligibilityTask_performAnonymousDeviceEligibility_clientInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 bag];
  v6 = [v3 _deviceEligibilityEncoderWithBag:v5 clientInfo:*(a1 + 40)];

  v7 = [*(a1 + 32) _deviceEligibilityRequestParametersWithGroups:*(a1 + 48)];
  v8 = [v6 requestByEncodingRequest:v4 parameters:v7];

  return v8;
}

id __78__AMSDeviceOfferEligibilityTask_performAnonymousDeviceEligibility_clientInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 urlSession];
  v6 = [v5 dataTaskPromiseWithRequest:v4];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__AMSDeviceOfferEligibilityTask_performAnonymousDeviceEligibility_clientInfo___block_invoke_3;
  v9[3] = &unk_1E73B3F48;
  v9[4] = *(a1 + 32);
  v7 = [v6 thenWithBlock:v9];

  return v7;
}

id __78__AMSDeviceOfferEligibilityTask_performAnonymousDeviceEligibility_clientInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
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
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received anonymous device eligibility response.", &v11, 0x16u);
  }

  v8 = [*(a1 + 32) _offersDecodedFromResult:v3];

  v9 = [AMSPromise promiseWithResult:v8];

  return v9;
}

- (id)_deviceEligibilityRequestParametersWithGroups:(id)a3
{
  v4 = [a3 ams_mapWithTransform:&__block_literal_global_41];
  v5 = objc_opt_new();
  [v5 setObject:v4 forKeyedSubscript:@"companionDevices"];
  v6 = [(AMSDeviceOfferEligibilityTask *)self masterSerialNumber];
  [v5 setObject:v6 forKeyedSubscript:@"serialNumber"];

  v7 = [(AMSDeviceOfferEligibilityTask *)self deviceGUID];
  [v5 setObject:v7 forKeyedSubscript:@"guid"];

  v8 = [v5 copy];

  return v8;
}

id __79__AMSDeviceOfferEligibilityTask__deviceEligibilityRequestParametersWithGroups___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 registrationItems];

  v5 = [v4 ams_mapWithTransform:&__block_literal_global_27];

  [v3 setObject:v5 forKeyedSubscript:@"deviceGroup"];

  return v3;
}

id __79__AMSDeviceOfferEligibilityTask__deviceEligibilityRequestParametersWithGroups___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 serialNumber];
  [v3 setObject:v4 forKeyedSubscript:@"serialNumber"];

  v5 = [v2 model];
  [v3 setObject:v5 forKeyedSubscript:@"productType"];

  v6 = [v2 validationData];

  v7 = [v6 base64EncodedStringWithOptions:0];
  [v3 setObject:v7 forKeyedSubscript:@"certificate"];

  v8 = [v3 copy];

  return v8;
}

- (id)_deviceEligibilityEncoderWithBag:(id)a3 clientInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AMSURLRequestEncoder alloc] initWithBag:v6];

  [(AMSURLRequestEncoder *)v7 setRequestEncoding:2];
  [(AMSURLRequestEncoder *)v7 setDialogOptions:1];
  v8 = AMSLogKey();
  [(AMSURLRequestEncoder *)v7 setLogUUID:v8];

  [(AMSURLRequestEncoder *)v7 setEnableRemoteSecuritySigning:1];
  if (v5)
  {
    [(AMSURLRequestEncoder *)v7 setClientInfo:v5];
  }

  return v7;
}

- (id)performAccountEligibility:(id)a3 forOffers:(id)a4 clientInfo:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [v9 count])
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v33 = v13;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing account eligibility check against device offers.", buf, 0x16u);
    }

    v15 = MEMORY[0x1E695DFD8];
    v16 = [v9 ams_mapWithTransformIgnoresNil:&__block_literal_global_32];
    v17 = [v15 setWithArray:v16];

    v18 = [(AMSDeviceOfferEligibilityTask *)self _eligibilityRequest];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__AMSDeviceOfferEligibilityTask_performAccountEligibility_forOffers_clientInfo___block_invoke_2;
    v28[3] = &unk_1E73B6DD0;
    v28[4] = self;
    v29 = v8;
    v30 = v10;
    v31 = v17;
    v19 = v17;
    v20 = [v18 thenWithBlock:v28];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __80__AMSDeviceOfferEligibilityTask_performAccountEligibility_forOffers_clientInfo___block_invoke_3;
    v27[3] = &unk_1E73B3510;
    v27[4] = self;
    v21 = [v20 thenWithBlock:v27];
  }

  else
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
      *buf = 138543618;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] There are no offers to verify eligibility for - skipping account eligibility verification.", buf, 0x16u);
    }

    v21 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F0]];
  }

  return v21;
}

id __80__AMSDeviceOfferEligibilityTask_performAccountEligibility_forOffers_clientInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 bag];
  v6 = [v3 _accountEligibilityEncoderWithBag:v5 account:*(a1 + 40) clientInfo:*(a1 + 48)];

  v7 = [*(a1 + 32) _accountEligibilityRequestParametersWithIdentifiers:*(a1 + 56)];
  v8 = [v6 requestByEncodingRequest:v4 parameters:v7];

  return v8;
}

id __80__AMSDeviceOfferEligibilityTask_performAccountEligibility_forOffers_clientInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 urlSession];
  v6 = [v5 dataTaskPromiseWithRequest:v4];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__AMSDeviceOfferEligibilityTask_performAccountEligibility_forOffers_clientInfo___block_invoke_4;
  v9[3] = &unk_1E73B3F48;
  v9[4] = *(a1 + 32);
  v7 = [v6 thenWithBlock:v9];

  return v7;
}

id __80__AMSDeviceOfferEligibilityTask_performAccountEligibility_forOffers_clientInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
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
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received account eligibility response", &v11, 0x16u);
  }

  v8 = [*(a1 + 32) _offersDecodedFromResult:v3];

  v9 = [AMSPromise promiseWithResult:v8];

  return v9;
}

- (id)_accountEligibilityRequestParametersWithIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v6 = [v4 allObjects];
    [v5 setObject:v6 forKeyedSubscript:@"services"];

    v7 = [(AMSDeviceOfferEligibilityTask *)self masterSerialNumber];
    [v5 setObject:v7 forKeyedSubscript:@"serialNumber"];

    v8 = [(AMSDeviceOfferEligibilityTask *)self deviceGUID];
    [v5 setObject:v8 forKeyedSubscript:@"guid"];

    v9 = [v5 copy];
  }

  else
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No offer identifiers need account eligibility verification.", &v15, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_accountEligibilityEncoderWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5
{
  v8 = a4;
  v9 = [(AMSDeviceOfferEligibilityTask *)self _deviceEligibilityEncoderWithBag:a3 clientInfo:a5];
  [v9 setAccount:v8];

  return v9;
}

- (id)_offersDecodedFromResult:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKeyedSubscript:@"offers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__AMSDeviceOfferEligibilityTask__offersDecodedFromResult___block_invoke;
  v10[3] = &unk_1E73B6DF8;
  v10[4] = self;
  v8 = [v7 ams_mapWithTransform:v10];

  return v8;
}

AMSDeviceOffer *__58__AMSDeviceOfferEligibilityTask__offersDecodedFromResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Decoding %{public}@", &v9, 0x20u);
  }

  v7 = [[AMSDeviceOffer alloc] initWithDictionary:v2];

  return v7;
}

- (id)_eligibilityRequest
{
  v2 = [(AMSDeviceOfferEligibilityTask *)self bag];
  v3 = [v2 URLForKey:@"deviceOffersAnonymousEligibilityURL"];

  v4 = [v3 valuePromise];
  v5 = [v4 thenWithBlock:&__block_literal_global_42_0];

  return v5;
}

id __52__AMSDeviceOfferEligibilityTask__eligibilityRequest__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695AC18];
  v3 = a2;
  v4 = [[v2 alloc] initWithURL:v3];

  [v4 setHTTPMethod:@"POST"];
  v5 = [v4 copy];
  v6 = [AMSPromise promiseWithResult:v5];

  return v6;
}

@end