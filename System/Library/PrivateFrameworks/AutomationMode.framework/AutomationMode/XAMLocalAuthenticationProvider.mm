@interface XAMLocalAuthenticationProvider
- (id)_makeAuthorizationContext;
- (id)authorizationWithError:(id *)error;
- (id)localizedAuthorizationReason;
- (void)requestAuthorizationWithReply:(id)reply;
@end

@implementation XAMLocalAuthenticationProvider

- (id)localizedAuthorizationReason
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Authorize UI Automation Prompt" value:@"Enable UI Automation" table:0];

  return v3;
}

- (id)_makeAuthorizationContext
{
  v2 = objc_opt_new();
  v3 = XAMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241927000, v3, OS_LOG_TYPE_DEFAULT, "Setting context caller name to XCTest", v5, 2u);
  }

  [v2 setOptionCallerName:@"XCTest"];

  return v2;
}

- (void)requestAuthorizationWithReply:(id)reply
{
  replyCopy = reply;
  _makeAuthorizationContext = [(XAMLocalAuthenticationProvider *)self _makeAuthorizationContext];
  localizedAuthorizationReason = [(XAMLocalAuthenticationProvider *)self localizedAuthorizationReason];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__XAMLocalAuthenticationProvider_requestAuthorizationWithReply___block_invoke;
  v9[3] = &unk_278CF9428;
  v10 = _makeAuthorizationContext;
  v11 = replyCopy;
  v7 = _makeAuthorizationContext;
  v8 = replyCopy;
  [v7 evaluatePolicy:2 localizedReason:localizedAuthorizationReason reply:v9];
}

uint64_t __64__XAMLocalAuthenticationProvider_requestAuthorizationWithReply___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  else
  {
    return (*(v3 + 16))(v3, 0);
  }
}

- (id)authorizationWithError:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  _makeAuthorizationContext = [(XAMLocalAuthenticationProvider *)self _makeAuthorizationContext];
  v16 = &unk_285385AC0;
  localizedAuthorizationReason = [(XAMLocalAuthenticationProvider *)self localizedAuthorizationReason];
  v17[0] = localizedAuthorizationReason;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v8 = [_makeAuthorizationContext evaluatePolicy:2 options:v7 error:error];

  v9 = XAMLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_241927000, v9, OS_LOG_TYPE_DEFAULT, "Sync evaluate policy returned %{public}@", &v14, 0xCu);
  }

  if (v8)
  {
    v10 = _makeAuthorizationContext;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

@end