@interface AMSTimeout
+ (id)timeoutWithExpiration:(double)expiration;
- (AMSTimeout)initWithExpiration:(double)expiration clockSource:(id)source;
- (BOOL)hasExpired;
@end

@implementation AMSTimeout

+ (id)timeoutWithExpiration:(double)expiration
{
  v4 = [AMSTimeout alloc];
  v5 = objc_opt_new();
  v6 = [(AMSTimeout *)v4 initWithExpiration:v5 clockSource:expiration];

  return v6;
}

- (AMSTimeout)initWithExpiration:(double)expiration clockSource:(id)source
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = AMSTimeout;
  v8 = [(AMSTimeout *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clockSource, source);
    [sourceCopy currentTimestampWithOffset:expiration];
    v9->_expirationTimestamp = v10;
  }

  return v9;
}

- (BOOL)hasExpired
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_expired)
  {
    return 1;
  }

  clockSource = [(AMSTimeout *)self clockSource];
  [clockSource currentTimestampWithOffset:0.0];
  v6 = v5;

  [(AMSTimeout *)self timestampAtPreviousQuery];
  if (v6 < v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSLogKey();
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Current timestamp is older than the previous. A monotonic clock source was expected.", &v14, 0x16u);
    }
  }

  [(AMSTimeout *)self setTimestampAtPreviousQuery:v6];
  [(AMSTimeout *)self expirationTimestamp];
  result = v6 > v13;
  self->_expired = v6 > v13;
  return result;
}

@end