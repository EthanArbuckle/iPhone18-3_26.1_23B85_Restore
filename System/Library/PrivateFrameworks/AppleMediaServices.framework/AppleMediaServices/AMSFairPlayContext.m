@interface AMSFairPlayContext
- (AMSFairPlayContext)init;
- (unsigned)fairplayContextIDWithError:(id *)a3;
- (void)dealloc;
- (void)destroyContext;
@end

@implementation AMSFairPlayContext

- (AMSFairPlayContext)init
{
  v19 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AMSFairPlayContext;
  v2 = [(AMSFairPlayContext *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v11 = 0;
    v4 = [(AMSFairPlayContext *)v2 fairplayContextIDWithError:&v11];
    v5 = v11;
    v3->_contextID = v4;
    if (!v4)
    {
      v6 = +[AMSLogConfig sharedConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        v9 = AMSLogKey();
        *buf = 138543874;
        v14 = v8;
        v15 = 2114;
        v16 = v9;
        v17 = 2114;
        v18 = v5;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] failed to intialize fairplay context. Error: %{public}@", buf, 0x20u);
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  [(AMSFairPlayContext *)self destroyContext];
  v3.receiver = self;
  v3.super_class = AMSFairPlayContext;
  [(AMSFairPlayContext *)&v3 dealloc];
}

- (void)destroyContext
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(AMSFairPlayContext *)self contextID])
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138543362;
      v6 = objc_opt_class();
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_INFO, "%{public}@: Destroying context", &v5, 0xCu);
    }

    VLxCLgDpiF([(AMSFairPlayContext *)self contextID]);
    self->_contextID = 0;
  }
}

- (unsigned)fairplayContextIDWithError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  p_contextID = &self->_contextID;
  if (self->_contextID)
  {
    df35957c4e0();
    if (!v6)
    {
      return *p_contextID;
    }

    v7 = v6;
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Fairplay context is invalid (%ld)", buf, 0x16u);
    }

    [(AMSFairPlayContext *)self destroyContext];
  }

  memset(buf, 0, sizeof(buf));
  if (AMSFairPlayGetHardwareInfo(buf) || ([MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize global context due to hardware info"], v10 = objc_claimAutoreleasedReturnValue(), AMSError(505, @"Fairplay Error", v10, 0), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v22 = 138543362;
      v23 = objc_opt_class();
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, "%{public}@: Creating context", v22, 0xCu);
    }

    v14 = [MEMORY[0x1E695DFF8] ams_realHomeDirectory];
    v15 = [v14 stringByAppendingPathComponent:@"/Media/iTunes_Control/iTunes"];

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"/private/var/mobile/Media/iTunes_Control/iTunes";
    }

    v17 = XtCqEf5X(0, buf, [(__CFString *)v16 UTF8String], p_contextID);
    if (v17)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize global context with status: %ld", v17];
      v11 = AMSError(505, @"Fairplay Error", v18, 0);
    }

    else
    {
      v11 = 0;
    }
  }

  if (a3)
  {
    v20 = v11;
    *a3 = v11;
  }

  v19 = *p_contextID;

  return v19;
}

@end