@interface AMSBagFixedAccountProvider
- (AMSBagFixedAccountProvider)initWithAccount:(id)a3;
- (BOOL)associatedAccountIsEqualToAccount:(id)a3 forMediaType:(id)a4;
- (NSString)identity;
- (id)bagAccountPromiseForAccountMediaType:(id)a3;
- (id)bagStorefrontForAccountMediaType:(id)a3;
- (id)bagStorefrontPromiseForAccountMediaType:(id)a3;
@end

@implementation AMSBagFixedAccountProvider

- (AMSBagFixedAccountProvider)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSBagFixedAccountProvider;
  v6 = [(AMSBagFixedAccountProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (BOOL)associatedAccountIsEqualToAccount:(id)a3 forMediaType:(id)a4
{
  v5 = a3;
  v6 = [(AMSBagFixedAccountProvider *)self account];
  v7 = [v6 identifier];
  v8 = [v5 identifier];

  LOBYTE(v5) = [v7 isEqualToString:v8];
  return v5;
}

- (id)bagStorefrontForAccountMediaType:(id)a3
{
  v4 = a3;
  v5 = [(AMSBagFixedAccountProvider *)self account];
  v6 = [v5 ams_storefrontForMediaType:v4];

  return v6;
}

- (id)bagAccountPromiseForAccountMediaType:(id)a3
{
  v3 = self;
  v26 = *MEMORY[0x1E69E9840];
  v4 = [(AMSBagFixedAccountProvider *)self account];

  if (v4)
  {
    v5 = [v3 account];
    v6 = [AMSPromise promiseWithResult:v5];
  }

  else
  {
    v7 = +[AMSUnitTests isRunningUnitTests];
    v8 = +[AMSLogConfig sharedBagConfig];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = AMSLogKey();
        v12 = MEMORY[0x1E696AEC0];
        v13 = objc_opt_class();
        v14 = v13;
        if (v11)
        {
          v3 = AMSLogKey();
          [v12 stringWithFormat:@"%@: [%@] ", v14, v3];
        }

        else
        {
          [v12 stringWithFormat:@"%@: ", v13];
        }
        v15 = ;
        *buf = 138543362;
        v25 = v15;
        _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@Account instance was unexpectedly nil", buf, 0xCu);
        if (v11)
        {

          v15 = v3;
        }
      }

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      v16 = +[AMSLogConfig sharedBagConfig];
      [v9 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v16 userInfo:0];
    }

    else
    {
      if (!v8)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v9 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v17 = AMSLogKey();
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = v19;
        if (v17)
        {
          v3 = AMSLogKey();
          [v18 stringWithFormat:@"%@: [%@] ", v20, v3];
        }

        else
        {
          [v18 stringWithFormat:@"%@: ", v19];
        }
        v21 = ;
        *buf = 138543362;
        v25 = v21;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_FAULT, "%{public}@Account instance was unexpectedly nil", buf, 0xCu);
        if (v17)
        {

          v21 = v3;
        }
      }
    }

    v5 = AMSError(0, @"Account instance was unexpectedly nil", 0, 0);
    v6 = [AMSPromise promiseWithError:v5];
  }

  v22 = v6;

  return v22;
}

- (id)bagStorefrontPromiseForAccountMediaType:(id)a3
{
  v4 = a3;
  v5 = [(AMSBagFixedAccountProvider *)self account];
  v6 = [AMSBagActiveAccountProvider _storefrontPromiseResultForAccountMediaType:v4 account:v5];

  v7 = [AMSPromise promiseWithPromiseResult:v6];

  return v7;
}

- (NSString)identity
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(AMSBagFixedAccountProvider *)self account];
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"fixed-account-%@", v4];

  return v5;
}

@end