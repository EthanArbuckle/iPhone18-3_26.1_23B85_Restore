@interface AMSUIPaymentVerificationProtocolHandler
+ (id)_accountToUseFromGivenAccount:(id)a3 accountParameters:(id)a4 accountStore:(id)a5;
+ (id)_encoderWithBag:(id)a3 account:(id)a4;
+ (id)_headersFromAccount:(id)a3;
+ (id)_headersFromAccountParameters:(id)a3;
+ (id)_promiseToFetchURLResponseForAccount:(id)a3 accountParameters:(id)a4 url:(id)a5 bag:(id)a6 requestBody:(id)a7 bodyEncoding:(int64_t)a8 contentType:(id)a9;
+ (id)_sessionWithBag:(id)a3 account:(id)a4 accountParameters:(id)a5;
+ (id)headersFromAccount:(id)a3 accountParameters:(id)a4;
+ (id)requestAddingHeaders:(id)a3 to:(id)a4;
+ (void)_setHeaders:(id)a3 on:(id)a4;
- (AMSUIPaymentVerificationProtocolHandler)initWithAccount:(id)a3 accountParameters:(id)a4;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
@end

@implementation AMSUIPaymentVerificationProtocolHandler

- (AMSUIPaymentVerificationProtocolHandler)initWithAccount:(id)a3 accountParameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSUIPaymentVerificationProtocolHandler;
  v9 = [(AMSURLProtocolHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    v11 = [v8 mutableCopy];
    accountParameters = v10->_accountParameters;
    v10->_accountParameters = v11;
  }

  return v10;
}

+ (id)requestAddingHeaders:(id)a3 to:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__AMSUIPaymentVerificationProtocolHandler_requestAddingHeaders_to___block_invoke;
  v8[3] = &unk_1E7F25730;
  v6 = v5;
  v9 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

+ (id)headersFromAccount:(id)a3 accountParameters:(id)a4
{
  if (a4)
  {
    [a1 _headersFromAccountParameters:a4];
  }

  else
  {
    [a1 _headersFromAccount:a3];
  }
  v4 = ;

  return v4;
}

+ (id)_headersFromAccount:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E698C8A8] deviceGUID];
  v5 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v27 = 0;
  v6 = [v5 ams_fetchGrandSlamTokenForAccount:v3 withIdentifier:@"com.apple.gs.ams.pvkit" error:&v27];
  v7 = v27;

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v8 = getAADeviceInfoClass_softClass;
  v31 = getAADeviceInfoClass_softClass;
  if (!getAADeviceInfoClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAADeviceInfoClass_block_invoke;
    v35 = &unk_1E7F241B0;
    v36 = &v28;
    __getAADeviceInfoClass_block_invoke(buf);
    v8 = v29[3];
  }

  v9 = v8;
  _Block_object_dispose(&v28, 8);
  v10 = [v8 currentInfo];
  v11 = [v10 clientInfoHeader];

  v12 = [MEMORY[0x1E698DD60] currentDevice];
  v13 = [v12 uniqueDeviceIdentifier];

  v14 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v15)
    {
      v15 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      *&buf[22] = 2114;
      v35 = v7;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch GS Token from account %{public}@", buf, 0x20u);
    }

    v14 = &stru_1F3921360;
  }

  v19 = *MEMORY[0x1E698C598];
  v32[0] = *MEMORY[0x1E698C588];
  v32[1] = v19;
  if (v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = &stru_1F3921360;
  }

  v33[0] = v14;
  v33[1] = v20;
  if (v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = &stru_1F3921360;
  }

  v22 = *MEMORY[0x1E698C590];
  v32[2] = *MEMORY[0x1E698C5A0];
  v32[3] = v22;
  if (v4)
  {
    v23 = v4;
  }

  else
  {
    v23 = &stru_1F3921360;
  }

  v33[2] = v21;
  v33[3] = v23;
  v32[4] = @"X-Guid";
  v32[5] = @"X-Apple-Payment-Verification";
  v33[4] = v23;
  v33[5] = @"1";
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)_headersFromAccountParameters:(id)a3
{
  v20[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698C8A8];
  v4 = a3;
  v5 = [v3 deviceGUID];
  v19[0] = *MEMORY[0x1E698C588];
  v6 = [v4 objectForKeyedSubscript:@"gsToken"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F3921360;
  }

  v20[0] = v8;
  v19[1] = *MEMORY[0x1E698C598];
  v9 = [v4 objectForKeyedSubscript:@"mmeClientInfo"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F3921360;
  }

  v20[1] = v11;
  v19[2] = *MEMORY[0x1E698C5A0];
  v12 = [v4 objectForKeyedSubscript:@"deviceId"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_1F3921360;
  }

  v14 = *MEMORY[0x1E698C590];
  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = &stru_1F3921360;
  }

  v20[2] = v13;
  v20[3] = v15;
  v19[3] = v14;
  v19[4] = @"X-Guid";
  v19[5] = @"X-Apple-Payment-Verification";
  v20[4] = v15;
  v20[5] = @"1";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (void)_setHeaders:(id)a3 on:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AMSUIPaymentVerificationProtocolHandler__setHeaders_on___block_invoke;
  v7[3] = &unk_1E7F25730;
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a6;
  v9 = MEMORY[0x1E698C968];
  v10 = a5;
  v11 = [v9 sharedConfig];
  if (!v11)
  {
    v11 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v25 = v13;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting GS token update", buf, 0x16u);
  }

  v15 = [v10 options];

  v16 = [v15 copy];
  [v16 setServiceIdentifier:@"com.apple.gs.ams.pvkit"];
  v17 = [(AMSUIPaymentVerificationProtocolHandler *)self account];
  v18 = [objc_alloc(MEMORY[0x1E698C7A8]) initWithAccount:v17 options:v16];
  v19 = [v18 performAuthKitUpdate];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __99__AMSUIPaymentVerificationProtocolHandler_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke;
  v22[3] = &unk_1E7F25758;
  v22[4] = self;
  v23 = v8;
  v20 = v8;
  [v19 addFinishBlock:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __99__AMSUIPaymentVerificationProtocolHandler_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 authenticationResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698DB98]];

  v9 = [v8 objectForKeyedSubscript:@"com.apple.gs.ams.pvkit"];
  if (v9)
  {
    v10 = [*(a1 + 32) accountParameters];
    [v10 setObject:v9 forKeyedSubscript:@"gsToken"];

    v11 = [MEMORY[0x1E698C968] sharedConfig];
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
      *v32 = 138543874;
      *&v32[4] = v14;
      *&v32[12] = 2114;
      *&v32[14] = v15;
      *&v32[22] = 2112;
      v33 = v9;
      v16 = "%{public}@: [%{public}@] Received an updated GS token %@";
      v17 = v12;
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 32;
LABEL_10:
      _os_log_impl(&dword_1BB036000, v17, v18, v16, v32, v19);
    }
  }

  else
  {
    v11 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = objc_opt_class();
      v15 = AMSLogKey();
      *v32 = 138543618;
      *&v32[4] = v21;
      *&v32[12] = 2114;
      *&v32[14] = v15;
      v16 = "%{public}@: [%{public}@] Unable to locate GS Token in auth result";
      v17 = v12;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 22;
      goto LABEL_10;
    }
  }

  if (v6)
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
      *v32 = 138543874;
      *&v32[4] = v25;
      *&v32[12] = 2114;
      *&v32[14] = v26;
      *&v32[22] = 2114;
      v33 = v6;
      _os_log_impl(&dword_1BB036000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] token update error: %{public}@", v32, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v27 = objc_alloc(MEMORY[0x1E698C7C0]);
    v28 = [v5 account];
    v29 = [v27 initWithAccount:v28];

    (*(*(a1 + 40) + 16))(*(a1 + 40), v29, 0, v30);
  }

  v31 = *MEMORY[0x1E69E9840];
}

+ (id)_encoderWithBag:(id)a3 account:(id)a4
{
  v5 = MEMORY[0x1E698CB88];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithBag:v7];

  [v8 setAccount:v6];
  v9 = objc_alloc_init(MEMORY[0x1E698C948]);
  [v9 setAuthenticationFallbackVisible:0];
  [v9 setDisplayAuthenticationReason:0];
  [v9 setStyle:{objc_msgSend(MEMORY[0x1E698C948], "preferredAttestationStyle")}];
  [v9 setPurpose:1];
  [v8 setKeychainOptions:v9];

  return v8;
}

+ (id)_sessionWithBag:(id)a3 account:(id)a4 accountParameters:(id)a5
{
  v7 = MEMORY[0x1E696AF80];
  v8 = MEMORY[0x1E698CAC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 currentProcess];
  v13 = [v7 ams_configurationWithProcessInfo:v12 bag:v11];

  v14 = [[AMSUIPaymentVerificationProtocolHandler alloc] initWithAccount:v10 accountParameters:v9];
  v15 = [objc_alloc(MEMORY[0x1E698CBA8]) initWithConfiguration:v13 delegate:v14 delegateQueue:0];
  [v15 setProtocolHandler:v14];

  return v15;
}

+ (id)_promiseToFetchURLResponseForAccount:(id)a3 accountParameters:(id)a4 url:(id)a5 bag:(id)a6 requestBody:(id)a7 bodyEncoding:(int64_t)a8 contentType:(id)a9
{
  v13 = a6;
  v14 = a9;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [AMSUIPaymentVerificationProtocolHandler _encoderWithBag:v13 account:v18];
  v20 = v19;
  if (v15)
  {
    [v19 setRequestEncoding:a8];
  }

  v21 = [AMSUIPaymentVerificationProtocolHandler _sessionWithBag:v13 account:v18 accountParameters:v17];
  v22 = [AMSUIPaymentVerificationProtocolHandler headersFromAccount:v18 accountParameters:v17];

  v23 = [v20 requestWithMethod:4 URL:v16 headers:v22 parameters:v15];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __143__AMSUIPaymentVerificationProtocolHandler__promiseToFetchURLResponseForAccount_accountParameters_url_bag_requestBody_bodyEncoding_contentType___block_invoke;
  v29[3] = &unk_1E7F25780;
  v30 = v14;
  v31 = v21;
  v24 = v21;
  v25 = v14;
  v26 = [v23 thenWithBlock:v29];

  return v26;
}

id __143__AMSUIPaymentVerificationProtocolHandler__promiseToFetchURLResponseForAccount_accountParameters_url_bag_requestBody_bodyEncoding_contentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    [v3 setValue:v5 forHTTPHeaderField:@"Content-Type"];
  }

  v6 = [*(a1 + 40) dataTaskPromiseWithRequest:v4];

  return v6;
}

+ (id)_accountToUseFromGivenAccount:(id)a3 accountParameters:(id)a4 accountStore:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [a4 objectForKeyedSubscript:@"altDsId"];
    v11 = [v8 ams_iTunesAccountWithAltDSID:v10];
    v12 = v11;
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      v13 = [v8 ams_activeiCloudAccount];
      v14 = [v13 ams_altDSID];
      v15 = [v14 isEqualToString:v10];

      if (v15)
      {
        v16 = [v8 ams_iTunesAccountForAccount:v13];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v13;
        }

        v9 = v18;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

@end