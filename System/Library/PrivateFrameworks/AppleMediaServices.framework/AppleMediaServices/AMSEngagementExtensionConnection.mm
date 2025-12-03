@interface AMSEngagementExtensionConnection
- (AMSEngagementExtensionConnection)initWithPrincipalObject:(id)object;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (void)performRequestWithObject:(id)object completion:(id)completion;
@end

@implementation AMSEngagementExtensionConnection

- (AMSEngagementExtensionConnection)initWithPrincipalObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = AMSEngagementExtensionConnection;
  v6 = [(AMSEngagementExtensionConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_principalObject, object);
  }

  return v7;
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  v14 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = processIdentifier;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepting XPC connection from %d", &v10, 0x12u);
  }

  [connectionCopy setExportedObject:self];
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CE048];
  [connectionCopy setExportedInterface:v8];
  [connectionCopy resume];

  return 1;
}

- (void)performRequestWithObject:(id)object completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  completionCopy = completion;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  principalClass = [mainBundle principalClass];

  if (principalClass)
  {
    goto LABEL_2;
  }

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle2 infoDictionary];
  v13 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];

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

  principalClass = NSClassFromString(v16);

  if (principalClass)
  {
LABEL_2:
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = objc_opt_class();
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling primary class", &v20, 0xCu);
    }

    [(objc_class *)principalClass performRequestWithObject:objectCopy completion:completionCopy];
    goto LABEL_21;
  }

LABEL_16:
  v17 = +[AMSLogConfig sharedConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v17 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v20 = 138543362;
    v21 = objc_opt_class();
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to locate class", &v20, 0xCu);
  }

  v19 = AMSError(0, @"Extension Failure", @"Unable to locate principle class", 0);
  completionCopy[2](completionCopy, 0, v19);

LABEL_21:
}

@end