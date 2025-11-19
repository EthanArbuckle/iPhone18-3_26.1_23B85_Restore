@interface AMSOpenManageDevices
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSOpenManageDevices)initWithBag:(id)a3;
- (id)open;
@end

@implementation AMSOpenManageDevices

- (AMSOpenManageDevices)initWithBag:(id)a3
{
  v5 = a3;
  v6 = [(AMSTask *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
  }

  return v7;
}

- (id)open
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__AMSOpenManageDevices_open__block_invoke;
  v5[3] = &unk_1E73B3588;
  v5[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v5];
  v3 = [v2 binaryPromiseAdapter];

  return v3;
}

id __28__AMSOpenManageDevices_open__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([AMSProcessInfo BOOLForEntitlement:@"com.apple.springboard.opensensitiveurl"])
  {
    v7 = [*(a1 + 32) bag];
    v8 = [v7 URLForKey:@"manageDevicesUrl"];

    v9 = [v8 valuePromise];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __28__AMSOpenManageDevices_open__block_invoke_16;
    v21[3] = &unk_1E73BA620;
    v21[4] = *(a1 + 32);
    v10 = [v9 continueWithBinaryPromiseBlock:v21];
    v11 = [v10 promiseAdapter];
  }

  else
  {
    v8 = AMSErrorWithFormat(0, @"Open Manage Devices Failed", @"Missing entitlement to open sensitive urls", v2, v3, v4, v5, v6, v20);
    v12 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = v16;
      if (v14)
      {
        a1 = AMSLogKey();
        [v15 stringWithFormat:@"%@: [%@] ", v17, a1];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      *buf = 138543618;
      v23 = v18;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@Open manage devices failed with error = %{public}@", buf, 0x16u);
      if (v14)
      {

        v18 = a1;
      }
    }

    v11 = [AMSPromise promiseWithError:v8];
  }

  return v11;
}

id __28__AMSOpenManageDevices_open__block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
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
        a1 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, a1];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      *buf = 138543618;
      v38 = v13;
      v39 = 2114;
      v40 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Open manage devices failed with error = %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = a1;
      }
    }

    v34 = [AMSBinaryPromise promiseWithError:v6];
LABEL_28:
    v35 = v34;
    goto LABEL_29;
  }

  if ([AMSOpenURL openStandardURL:v5])
  {
    v19 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = AMSLogKey();
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v24 = v23;
      if (v21)
      {
        a1 = AMSLogKey();
        [v22 stringWithFormat:@"%@: [%@] ", v24, a1];
      }

      else
      {
        [v22 stringWithFormat:@"%@: ", v23];
      }
      v25 = ;
      *buf = 138543362;
      v38 = v25;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Open manage devices succeeded", buf, 0xCu);
      if (v21)
      {

        v25 = a1;
      }
    }

    v34 = +[AMSBinaryPromise promiseWithSuccess];
    goto LABEL_28;
  }

  v26 = AMSErrorWithFormat(0, @"Open URL Failed", @"Unable to open the given URL: %@", v14, v15, v16, v17, v18, v5);
  v27 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v27)
  {
    v27 = +[AMSLogConfig sharedConfig];
  }

  v28 = [v27 OSLogObject];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = AMSLogKey();
    v30 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    v32 = v31;
    if (v29)
    {
      a1 = AMSLogKey();
      [v30 stringWithFormat:@"%@: [%@] ", v32, a1];
    }

    else
    {
      [v30 stringWithFormat:@"%@: ", v31];
    }
    v33 = ;
    *buf = 138543618;
    v38 = v33;
    v39 = 2114;
    v40 = v26;
    _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@Open manage devices failed with error = %{public}@", buf, 0x16u);
    if (v29)
    {

      v33 = a1;
    }
  }

  v35 = [AMSBinaryPromise promiseWithError:v26];

LABEL_29:

  return v35;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_141 != -1)
  {
    dispatch_once(&_MergedGlobals_141, &__block_literal_global_110);
  }

  v3 = qword_1ED6E3028;

  return v3;
}

void __37__AMSOpenManageDevices_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E3028;
  qword_1ED6E3028 = @"AMSDelegateAuthenticate";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E3030 != -1)
  {
    dispatch_once(&qword_1ED6E3030, &__block_literal_global_32_1);
  }

  v3 = qword_1ED6E3038;

  return v3;
}

void __44__AMSOpenManageDevices_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E3038;
  qword_1ED6E3038 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

@end