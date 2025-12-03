@interface NEFilterControlProvider
- (void)handleNewFlow:(NEFilterFlow *)flow completionHandler:(void *)completionHandler;
- (void)handleRemediationForFlow:(NEFilterFlow *)flow completionHandler:(void *)completionHandler;
- (void)notifyRulesChanged;
@end

@implementation NEFilterControlProvider

- (void)notifyRulesChanged
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: Notify rules changed", &v6, 0xCu);
  }

  context = [(NEProvider *)self context];
  [context notifyRulesChanged];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleRemediationForFlow:(NEFilterFlow *)flow completionHandler:(void *)completionHandler
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = flow;
  v7 = completionHandler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@: Handle remediation for flow: %@", &v10, 0x16u);
  }

  v7[2](v7, 0);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleNewFlow:(NEFilterFlow *)flow completionHandler:(void *)completionHandler
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = flow;
  v7 = completionHandler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@: Handle new flow: %@", &v10, 0x16u);
  }

  v7[2](v7, 0);
  v9 = *MEMORY[0x1E69E9840];
}

@end