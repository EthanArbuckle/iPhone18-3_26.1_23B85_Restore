@interface AMSBagFixedAccountProvider
- (AMSBagFixedAccountProvider)initWithAccount:(id)account;
- (BOOL)associatedAccountIsEqualToAccount:(id)account forMediaType:(id)type;
- (NSString)identity;
- (id)bagAccountPromiseForAccountMediaType:(id)type;
- (id)bagStorefrontForAccountMediaType:(id)type;
- (id)bagStorefrontPromiseForAccountMediaType:(id)type;
@end

@implementation AMSBagFixedAccountProvider

- (AMSBagFixedAccountProvider)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AMSBagFixedAccountProvider;
  v6 = [(AMSBagFixedAccountProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (BOOL)associatedAccountIsEqualToAccount:(id)account forMediaType:(id)type
{
  accountCopy = account;
  account = [(AMSBagFixedAccountProvider *)self account];
  identifier = [account identifier];
  identifier2 = [accountCopy identifier];

  LOBYTE(accountCopy) = [identifier isEqualToString:identifier2];
  return accountCopy;
}

- (id)bagStorefrontForAccountMediaType:(id)type
{
  typeCopy = type;
  account = [(AMSBagFixedAccountProvider *)self account];
  v6 = [account ams_storefrontForMediaType:typeCopy];

  return v6;
}

- (id)bagAccountPromiseForAccountMediaType:(id)type
{
  selfCopy = self;
  v26 = *MEMORY[0x1E69E9840];
  account = [(AMSBagFixedAccountProvider *)self account];

  if (account)
  {
    account2 = [selfCopy account];
    v6 = [AMSPromise promiseWithResult:account2];
  }

  else
  {
    v7 = +[AMSUnitTests isRunningUnitTests];
    v8 = +[AMSLogConfig sharedBagConfig];
    defaultCenter = v8;
    if (v7)
    {
      if (!v8)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 = AMSLogKey();
        v12 = MEMORY[0x1E696AEC0];
        v13 = objc_opt_class();
        v14 = v13;
        if (v11)
        {
          selfCopy = AMSLogKey();
          [v12 stringWithFormat:@"%@: [%@] ", v14, selfCopy];
        }

        else
        {
          [v12 stringWithFormat:@"%@: ", v13];
        }
        v15 = ;
        *buf = 138543362;
        v25 = v15;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Account instance was unexpectedly nil", buf, 0xCu);
        if (v11)
        {

          v15 = selfCopy;
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedBagConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v8)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v17 = AMSLogKey();
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = v19;
        if (v17)
        {
          selfCopy = AMSLogKey();
          [v18 stringWithFormat:@"%@: [%@] ", v20, selfCopy];
        }

        else
        {
          [v18 stringWithFormat:@"%@: ", v19];
        }
        v21 = ;
        *buf = 138543362;
        v25 = v21;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Account instance was unexpectedly nil", buf, 0xCu);
        if (v17)
        {

          v21 = selfCopy;
        }
      }
    }

    account2 = AMSError(0, @"Account instance was unexpectedly nil", 0, 0);
    v6 = [AMSPromise promiseWithError:account2];
  }

  v22 = v6;

  return v22;
}

- (id)bagStorefrontPromiseForAccountMediaType:(id)type
{
  typeCopy = type;
  account = [(AMSBagFixedAccountProvider *)self account];
  v6 = [AMSBagActiveAccountProvider _storefrontPromiseResultForAccountMediaType:typeCopy account:account];

  v7 = [AMSPromise promiseWithPromiseResult:v6];

  return v7;
}

- (NSString)identity
{
  v2 = MEMORY[0x1E696AEC0];
  account = [(AMSBagFixedAccountProvider *)self account];
  identifier = [account identifier];
  v5 = [v2 stringWithFormat:@"fixed-account-%@", identifier];

  return v5;
}

@end