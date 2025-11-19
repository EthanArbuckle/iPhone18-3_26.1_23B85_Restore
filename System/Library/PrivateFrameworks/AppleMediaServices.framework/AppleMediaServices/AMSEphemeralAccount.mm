@interface AMSEphemeralAccount
- (id)accountPropertyForKey:(id)a3;
- (void)setAccountProperty:(id)a3 forKey:(id)a4;
@end

@implementation AMSEphemeralAccount

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedAccountsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      self = AMSLogKey();
      [v11 stringWithFormat:@"%@: [%@] ", v13, self];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    v15 = AMSHashIfNeeded(v6);
    *buf = 138543874;
    v17 = v14;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@: Ignoring attempt to set a property on ephemeral account. key = %@ | value = %@", buf, 0x20u);
    if (v10)
    {

      v14 = self;
    }
  }
}

- (id)accountPropertyForKey:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v3 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    *buf = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@: Reading property directly from ephemeral account. key = %@", buf, 0x16u);
    if (v8)
    {

      v12 = v3;
    }
  }

  v13 = [MEMORY[0x1E6959A28] ams_globalEphemeralAccountPropertiesForAccount:self];
  v14 = [v13 objectForKeyedSubscript:v5];
  v15 = +[AMSLogConfig sharedAccountsConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = AMSLogKey();
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = v19;
    if (v17)
    {
      self = AMSLogKey();
      [v18 stringWithFormat:@"%@: [%@] ", v20, self];
    }

    else
    {
      [v18 stringWithFormat:@"%@: ", v19];
    }
    v21 = ;
    v22 = AMSHashIfNeeded(v14);
    *buf = 138543874;
    v25 = v21;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_INFO, "%{public}@: Property directly from ephemeral account. key = %@ | value = %@", buf, 0x20u);
    if (v17)
    {

      v21 = self;
    }
  }

  return v14;
}

@end