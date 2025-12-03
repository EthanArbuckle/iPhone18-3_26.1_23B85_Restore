@interface NEFilterProvider
+ (__CFString)descriptionForAction:(uint64_t)action;
- (void)handleReport:(NEFilterReport *)report;
- (void)startFilterWithCompletionHandler:(void *)completionHandler;
- (void)stopFilterWithReason:(NEProviderStopReason)reason completionHandler:(void *)completionHandler;
@end

@implementation NEFilterProvider

- (void)handleReport:(NEFilterReport *)report
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = report;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: handleReport %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)stopFilterWithReason:(NEProviderStopReason)reason completionHandler:(void *)completionHandler
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = completionHandler;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2048;
    v12 = reason;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@: Stop Filter with reason %ld", &v9, 0x16u);
  }

  v6[2](v6);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startFilterWithCompletionHandler:(void *)completionHandler
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Start Filter", &v7, 0xCu);
  }

  v4[2](v4, 0);
  v6 = *MEMORY[0x1E69E9840];
}

+ (__CFString)descriptionForAction:(uint64_t)action
{
  objc_opt_self();
  if ((a2 - 1) >= 4)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid (%ld)", a2];
  }

  else
  {
    v3 = off_1E7F07740[a2 - 1];
  }

  return v3;
}

@end