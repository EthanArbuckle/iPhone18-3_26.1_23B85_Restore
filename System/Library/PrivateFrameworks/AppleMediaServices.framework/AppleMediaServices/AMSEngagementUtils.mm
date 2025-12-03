@interface AMSEngagementUtils
+ (id)encodeModel:(id)model;
+ (id)modelFromData:(id)data class:(Class)class error:(id *)error;
@end

@implementation AMSEngagementUtils

+ (id)encodeModel:(id)model
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:model requiringSecureCoding:1 error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedEngagementConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = AMSLogableError(v4);
      *buf = 138543874;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialize engagement model, error = %{public}@", buf, 0x20u);
    }
  }

  return v3;
}

+ (id)modelFromData:(id)data class:(Class)class error:(id *)error
{
  v9 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:class fromData:data error:&v9];
  v7 = v9;
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return v6;
}

@end