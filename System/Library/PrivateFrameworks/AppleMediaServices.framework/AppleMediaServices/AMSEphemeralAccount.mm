@interface AMSEphemeralAccount
- (id)accountPropertyForKey:(id)key;
- (void)setAccountProperty:(id)property forKey:(id)key;
@end

@implementation AMSEphemeralAccount

- (void)setAccountProperty:(id)property forKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  keyCopy = key;
  v8 = +[AMSLogConfig sharedAccountsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    selfCopy = ;
    v15 = AMSHashIfNeeded(propertyCopy);
    *buf = 138543874;
    v17 = selfCopy;
    v18 = 2112;
    v19 = keyCopy;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Ignoring attempt to set a property on ephemeral account. key = %@ | value = %@", buf, 0x20u);
    if (v10)
    {

      selfCopy = self;
    }
  }
}

- (id)accountPropertyForKey:(id)key
{
  v30 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = +[AMSLogConfig sharedAccountsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    v27 = keyCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Reading property directly from ephemeral account. key = %@", buf, 0x16u);
    if (v8)
    {

      v12 = v3;
    }
  }

  v13 = [MEMORY[0x1E6959A28] ams_globalEphemeralAccountPropertiesForAccount:self];
  v14 = [v13 objectForKeyedSubscript:keyCopy];
  v15 = +[AMSLogConfig sharedAccountsConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
    selfCopy = ;
    v22 = AMSHashIfNeeded(v14);
    *buf = 138543874;
    v25 = selfCopy;
    v26 = 2112;
    v27 = keyCopy;
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: Property directly from ephemeral account. key = %@ | value = %@", buf, 0x20u);
    if (v17)
    {

      selfCopy = self;
    }
  }

  return v14;
}

@end