@interface AMSFairPlayDeviceIdentityResponseHandler
+ (id)handleResponse:(id)response request:(id)request buyParams:(id)params bag:(id)bag fairPlayDeviceIdentity:(id)identity;
@end

@implementation AMSFairPlayDeviceIdentityResponseHandler

+ (id)handleResponse:(id)response request:(id)request buyParams:(id)params bag:(id)bag fairPlayDeviceIdentity:(id)identity
{
  v44 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  paramsCopy = params;
  bagCopy = bag;
  identityCopy = identity;
  v16 = identityCopy;
  if (response && bagCopy && identityCopy)
  {
    v17 = [response ams_valueForHTTPHeaderField:@"X-Apple-FPDIAction"];
    if ([v17 ams_caseInsensitiveEquals:@"RP"])
    {
      v18 = +[AMSLogConfig sharedConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v20 = AMSLogKey();
        v21 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v22 = objc_opt_class();
        v23 = v22;
        if (v20)
        {
          v35 = AMSLogKey();
          [v21 stringWithFormat:@"%@: [%@] ", v23, v35];
        }

        else
        {
          [v21 stringWithFormat:@"%@: ", v22];
        }
        v24 = ;
        *buf = 138543362;
        v43 = v24;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling reprovision action", buf, 0xCu);
        self = selfCopy;
        if (v20)
        {

          v24 = v35;
        }
      }

      v26 = objc_alloc_init(AMSMutablePromise);
      v28 = [requestCopy URL];

      if (v28)
      {
        v37 = [requestCopy URL];
        v29 = v17;
        selfCopy2 = self;
        v31 = [[AMSSendableBag alloc] initWithWrappedBag:bagCopy];
        dictionaryForFPDI = [paramsCopy dictionaryForFPDI];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __104__AMSFairPlayDeviceIdentityResponseHandler_handleResponse_request_buyParams_bag_fairPlayDeviceIdentity___block_invoke;
        v38[3] = &unk_1E73B77B0;
        v39 = v16;
        v40 = v26;
        v41 = selfCopy2;
        v17 = v29;
        [v39 fpdiLevelFor:v37 bag:v31 buyParams:dictionaryForFPDI completionHandler:v38];

        v33 = v39;
      }

      else
      {
        v33 = +[AMSOptional optionalWithNil];
        [(AMSMutablePromise *)v26 finishWithResult:v33];
      }
    }

    else
    {
      v27 = +[AMSOptional optionalWithNil];
      v26 = [AMSPromise promiseWithResult:v27];
    }
  }

  else
  {
    v25 = +[AMSOptional optionalWithNil];
    v26 = [AMSPromise promiseWithResult:v25];
  }

  return v26;
}

void __104__AMSFairPlayDeviceIdentityResponseHandler_handleResponse_request_buyParams_bag_fairPlayDeviceIdentity___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        v3 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, v3];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      v15 = AMSLogableError(v6);
      *buf = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error handling reprovision action error = %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = v3;
      }
    }

    v16 = [v6 domain];
    if ([v16 isEqualToString:@"AMSErrorDomain"])
    {
      if ([v6 code] == 904)
      {

LABEL_18:
        v18 = *(a1 + 40);
        v19 = +[AMSOptional optionalWithNil];
        [v18 finishWithResult:v19];

        goto LABEL_19;
      }

      v17 = [v6 code];

      if (v17 == 204)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __104__AMSFairPlayDeviceIdentityResponseHandler_handleResponse_request_buyParams_bag_fairPlayDeviceIdentity___block_invoke_2;
    v20[3] = &unk_1E73B3680;
    v14 = *(a1 + 32);
    v21 = *(a1 + 40);
    [v14 resetSessionWithLevel:a2 completionHandler:v20];
  }

LABEL_19:
}

void __104__AMSFairPlayDeviceIdentityResponseHandler_handleResponse_request_buyParams_bag_fairPlayDeviceIdentity___block_invoke_2(uint64_t a1)
{
  v4 = +[AMSURLAction retryAction];
  [v4 setReason:@"fpdi"];
  [v4 setRetryIdentifier:0x1F07287B8];
  v2 = *(a1 + 32);
  v3 = [AMSOptional optionalWithValue:v4];
  [v2 finishWithResult:v3];
}

@end