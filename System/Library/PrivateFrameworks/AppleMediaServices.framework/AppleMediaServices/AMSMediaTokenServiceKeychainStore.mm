@interface AMSMediaTokenServiceKeychainStore
- (AMSMediaTokenServiceKeychainStore)initWithIdentifier:(id)identifier keychainAccessGroup:(id)group keychainAddFunc:(void *)func keychainCopyFunc:(void *)copyFunc keychainDeleteFunc:(void *)deleteFunc;
- (BOOL)storeToken:(id)token;
- (id)retrieveToken;
@end

@implementation AMSMediaTokenServiceKeychainStore

- (id)retrieveToken
{
  v25 = *MEMORY[0x1E69E9840];
  retrieveData = [(AMSKeychainStore *)self retrieveData];
  if (retrieveData)
  {
    v18 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:retrieveData error:&v18];
    v5 = v18;
    v6 = +[AMSLogConfig sharedMediaConfig];
    v7 = v6;
    if (v5)
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = v9;
        identifier = [(AMSKeychainStore *)self identifier];
        *buf = 138543874;
        v20 = v9;
        v21 = 2114;
        v22 = identifier;
        v23 = 2114;
        v24 = v5;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to unarchive media token data. Error: %{public}@", buf, 0x20u);
      }

      v12 = 0;
    }

    else
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = v14;
        identifier2 = [(AMSKeychainStore *)self identifier];
        *buf = 138543618;
        v20 = v14;
        v21 = 2114;
        v22 = identifier2;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrieved media token data from keychain", buf, 0x16u);
      }

      v12 = v4;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (AMSMediaTokenServiceKeychainStore)initWithIdentifier:(id)identifier keychainAccessGroup:(id)group keychainAddFunc:(void *)func keychainCopyFunc:(void *)copyFunc keychainDeleteFunc:(void *)deleteFunc
{
  v8.receiver = self;
  v8.super_class = AMSMediaTokenServiceKeychainStore;
  return [(AMSKeychainStore *)&v8 initWithIdentifier:identifier service:@"com.apple.AppleMediaServices.mediaToken" keychainAccessGroup:group keychainAddFunc:func keychainCopyFunc:copyFunc keychainDeleteFunc:deleteFunc];
}

- (BOOL)storeToken:(id)token
{
  v22 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  [(AMSKeychainStore *)self deleteData];
  if (tokenCopy)
  {
    v15 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v15];
    v6 = v15;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      v8 = +[AMSLogConfig sharedMediaConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = v10;
        identifier = [(AMSKeychainStore *)self identifier];
        *buf = 138543874;
        v17 = v10;
        v18 = 2114;
        v19 = identifier;
        v20 = 2114;
        v21 = v6;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to archive media token. Error: %{public}@", buf, 0x20u);
      }

      v13 = 0;
    }

    else
    {
      v13 = [(AMSKeychainStore *)self storeData:v5];
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end