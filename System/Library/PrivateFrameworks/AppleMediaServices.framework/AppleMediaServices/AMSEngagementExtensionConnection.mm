@interface AMSEngagementExtensionConnection
- (AMSEngagementExtensionConnection)initWithPrincipalObject:(id)a3;
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (void)performRequestWithObject:(id)a3 completion:(id)a4;
@end

@implementation AMSEngagementExtensionConnection

- (AMSEngagementExtensionConnection)initWithPrincipalObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSEngagementExtensionConnection;
  v6 = [(AMSEngagementExtensionConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_principalObject, a3);
  }

  return v7;
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 processIdentifier];
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepting XPC connection from %d", &v10, 0x12u);
  }

  [v4 setExportedObject:self];
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CE048];
  [v4 setExportedInterface:v8];
  [v4 resume];

  return 1;
}

- (void)performRequestWithObject:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 principalClass];

  if (v8)
  {
    goto LABEL_2;
  }

  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 infoDictionary];
  v13 = [v12 objectForKeyedSubscript:@"NSExtension"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 objectForKeyedSubscript:@"NSExtensionPrincipalClass"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_15;
  }

  v16 = v15;

  if (!v16)
  {
LABEL_15:

    goto LABEL_16;
  }

  v8 = NSClassFromString(v16);

  if (v8)
  {
LABEL_2:
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = objc_opt_class();
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling primary class", &v20, 0xCu);
    }

    [(objc_class *)v8 performRequestWithObject:v5 completion:v6];
    goto LABEL_21;
  }

LABEL_16:
  v17 = +[AMSLogConfig sharedConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = 138543362;
    v21 = objc_opt_class();
    _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed to locate class", &v20, 0xCu);
  }

  v19 = AMSError(0, @"Extension Failure", @"Unable to locate principle class", 0);
  v6[2](v6, 0, v19);

LABEL_21:
}

@end