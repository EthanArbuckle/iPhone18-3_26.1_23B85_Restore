@interface AMSFinanceDelegateAuthenticateChallengeResponse
+ (BOOL)isDelegateAuthChallengeForTaskInfo:(id)info;
- (AMSFinanceDelegateAuthenticateChallengeResponse)initWithResponseDictionary:(id)dictionary taskInfo:(id)info;
- (id)performWithTaskInfo:(id)info;
@end

@implementation AMSFinanceDelegateAuthenticateChallengeResponse

- (AMSFinanceDelegateAuthenticateChallengeResponse)initWithResponseDictionary:(id)dictionary taskInfo:(id)info
{
  dictionaryCopy = dictionary;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = AMSFinanceDelegateAuthenticateChallengeResponse;
  v9 = [(AMSFinanceDelegateAuthenticateChallengeResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_responseDictionary, dictionary);
    objc_storeStrong(&v10->_taskInfo, info);
  }

  return v10;
}

+ (BOOL)isDelegateAuthChallengeForTaskInfo:(id)info
{
  v18 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = AMSSetLogKeyIfNeeded();
  response = [infoCopy response];

  v6 = [response ams_valueForHTTPHeaderField:@"X-Apple-DelegateAuth-Challenge"];

  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v6 != 0];
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Is delegate auth challenge? %{public}@", &v12, 0x20u);
  }

  return v6 != 0;
}

- (id)performWithTaskInfo:(id)info
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSSetLogKeyIfNeeded();
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Delegate auth action not implemented", &v8, 0x16u);
  }

  return 0;
}

@end