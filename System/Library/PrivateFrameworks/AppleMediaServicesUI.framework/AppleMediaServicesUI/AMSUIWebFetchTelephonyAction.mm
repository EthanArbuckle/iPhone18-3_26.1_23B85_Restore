@interface AMSUIWebFetchTelephonyAction
- (AMSUIWebFetchTelephonyAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebFetchTelephonyAction

- (AMSUIWebFetchTelephonyAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AMSUIWebFetchTelephonyAction;
  v7 = [(AMSUIWebAction *)&v11 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"suppressPhoneNumber"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 objectForKeyedSubscript:@"suppressPhoneNumber"];
      v7->_suppressPhoneNumber = [v9 BOOLValue];
    }

    else
    {
      v7->_suppressPhoneNumber = 0;
    }
  }

  return v7;
}

- (id)runAction
{
  v57 = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = AMSUIWebFetchTelephonyAction;
  v3 = [(AMSUIWebAction *)&v48 runAction];
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v52 = v6;
    v53 = 2114;
    v54 = v7;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching telephony...", buf, 0x16u);
  }

  v8 = [(AMSUIWebAction *)self context];
  v9 = [v8 dataProvider];
  v10 = [v9 telephony];

  if (v10)
  {
    v11 = [MEMORY[0x1E698C968] sharedWebUIConfig];
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
      v52 = v13;
      v53 = 2114;
      v54 = v14;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully fetched telephony", buf, 0x16u);
    }

    if ([(AMSUIWebFetchTelephonyAction *)self suppressPhoneNumber])
    {
      v15 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v15)
      {
        v15 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = AMSLogKey();
        *buf = 138543618;
        v52 = v17;
        v53 = 2114;
        v54 = v18;
        _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Suppressing phone number", buf, 0x16u);
      }

      v19 = 0;
    }

    else
    {
      v19 = [v10 phoneNumber];
      if (v19)
      {
        v26 = [v10 formattedPhoneNumber:v19];
LABEL_24:
        v27 = MEMORY[0x1E698CAD0];
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = &stru_1F3921360;
        }

        v50[0] = v28;
        v49[0] = @"formattedPhoneNumber";
        v49[1] = @"mobileCountryCode";
        v29 = [v10 countryCode];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = &stru_1F3921360;
        }

        v50[1] = v31;
        v49[2] = @"mobileNetworkCode";
        v32 = [v10 networkCode];
        v33 = v32;
        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = &stru_1F3921360;
        }

        if (v19)
        {
          v35 = v19;
        }

        else
        {
          v35 = &stru_1F3921360;
        }

        v50[2] = v34;
        v50[3] = v35;
        v49[3] = @"phoneNumber";
        v49[4] = @"providerName";
        v36 = [v10 providerName];
        v37 = v36;
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = &stru_1F3921360;
        }

        v50[4] = v38;
        v49[5] = @"radioTechnology";
        v39 = [v10 radioTechnology];
        v40 = v39;
        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = &stru_1F3921360;
        }

        v50[5] = v41;
        v49[6] = @"radioType";
        v42 = [v10 radioType];
        v43 = v42;
        if (v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = &stru_1F3921360;
        }

        v50[6] = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:7];
        v25 = [v27 promiseWithResult:v45];

        goto LABEL_46;
      }
    }

    v26 = 0;
    goto LABEL_24;
  }

  v19 = AMSError();
  v20 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v20)
  {
    v20 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    v23 = AMSLogKey();
    v24 = AMSLogableError();
    *buf = 138543874;
    v52 = v22;
    v53 = 2114;
    v54 = v23;
    v55 = 2114;
    v56 = v24;
    _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch telephony: %{public}@", buf, 0x20u);
  }

  v25 = [MEMORY[0x1E698CAD0] promiseWithError:v19];
LABEL_46:

  v46 = *MEMORY[0x1E69E9840];

  return v25;
}

@end