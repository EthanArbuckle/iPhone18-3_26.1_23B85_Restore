@interface AMSSubscriptionBag
+ (AMSSubscriptionBag)sharedInstance;
- (AMSSubscriptionBag)init;
- (BOOL)_generateSubscriptionBagRequestWithAccountIdentifier:(id)identifier transactionType:(unsigned int)type machineIDData:(id)data returningSubscriptionBagData:(id *)bagData error:(id *)error;
- (id)subscriptionBagSyncDataForAccount:(id)account;
@end

@implementation AMSSubscriptionBag

- (AMSSubscriptionBag)init
{
  v6.receiver = self;
  v6.super_class = AMSSubscriptionBag;
  v2 = [(AMSSubscriptionBag *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AMSFairPlayContext);
    fairPlayContext = v2->_fairPlayContext;
    v2->_fairPlayContext = v3;
  }

  return v2;
}

+ (AMSSubscriptionBag)sharedInstance
{
  if (_MergedGlobals_149 != -1)
  {
    dispatch_once(&_MergedGlobals_149, &__block_literal_global_133);
  }

  v3 = qword_1ED6E3118;

  return v3;
}

uint64_t __36__AMSSubscriptionBag_sharedInstance__block_invoke()
{
  qword_1ED6E3118 = objc_alloc_init(AMSSubscriptionBag);

  return MEMORY[0x1EEE66BB8]();
}

- (id)subscriptionBagSyncDataForAccount:(id)account
{
  v28 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  qi864985u0(-1, &v21, &v19 + 4, &v20, &v19);
  v5 = 0;
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    v8 = [v7 initWithBytesNoCopy:v21 length:HIDWORD(v19) freeWhenDone:0];
    ams_DSID = [accountCopy ams_DSID];
    v17 = 0;
    v18 = 0;
    [(AMSSubscriptionBag *)self _generateSubscriptionBagRequestWithAccountIdentifier:ams_DSID transactionType:303 machineIDData:v8 returningSubscriptionBagData:&v18 error:&v17];
    v5 = v18;
    v10 = v17;

    if (v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        v15 = AMSLogableError(v10);
        *buf = 138543874;
        v23 = v13;
        v24 = 2114;
        v25 = v14;
        v26 = 2114;
        v27 = v15;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating subscription bag request. error = %{public}@", buf, 0x20u);
      }
    }
  }

  if (v21)
  {
    jk24uiwqrg(v21);
  }

  if (v20)
  {
    jk24uiwqrg(v20);
  }

  return v5;
}

- (BOOL)_generateSubscriptionBagRequestWithAccountIdentifier:(id)identifier transactionType:(unsigned int)type machineIDData:(id)data returningSubscriptionBagData:(id *)bagData error:(id *)error
{
  v10 = *&type;
  identifierCopy = identifier;
  dataCopy = data;
  fairPlayContext = [(AMSSubscriptionBag *)self fairPlayContext];
  v27 = 0;
  v15 = [fairPlayContext fairplayContextIDWithError:&v27];
  v16 = v27;

  if (v16)
  {
    if (error)
    {
      v17 = v16;
      v18 = 0;
      *error = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    V3lNO(v15, [identifierCopy unsignedLongLongValue], v10, objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"), &v26, &v25);
    if (v19)
    {
      v16 = AMSError(505, @"Fairplay Error", 0, 0);
      v20 = 0;
    }

    else
    {
      if (v25)
      {
        v21 = objc_alloc(MEMORY[0x1E695DEF0]);
        v20 = [v21 initWithBytesNoCopy:v26 length:v25 deallocator:&__block_literal_global_6_1];
      }

      else
      {
        v20 = 0;
      }

      v16 = 0;
    }

    v22 = v20;
    *bagData = v20;
    if (error)
    {
      v23 = v16;
      *error = v16;
    }

    v18 = v16 == 0;
  }

  return v18;
}

@end