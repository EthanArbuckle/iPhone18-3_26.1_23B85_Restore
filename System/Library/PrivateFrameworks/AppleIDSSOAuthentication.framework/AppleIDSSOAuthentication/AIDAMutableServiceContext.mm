@interface AIDAMutableServiceContext
- (void)setAaSignInFlowControllerDelegate:(id)delegate;
- (void)setAaSignOutFlowControllerDelegate:(id)delegate;
- (void)setAuthenticationResults:(id)results;
@end

@implementation AIDAMutableServiceContext

- (void)setAuthenticationResults:(id)results
{
  resultsCopy = results;
  objc_storeStrong(&self->super._authenticationResults, results);
  v6 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBE8]];
  v7 = _AIDALogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      [(AIDAMutableServiceContext *)v6 setAuthenticationResults:v7];
    }
  }

  else if (v8)
  {
    [AIDAMutableServiceContext setAuthenticationResults:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 mutableCopy];
  telemetryTimeSeries = self->super.__telemetryTimeSeries;
  self->super.__telemetryTimeSeries = v10;
}

- (void)setAaSignInFlowControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(NSDictionary *)self->super._signInContexts mutableCopy];
  v6 = v5;
  if (v5)
  {
    dictionary = v5;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = dictionary;

  [v9 setObject:delegateCopy forKeyedSubscript:@"com.apple.AppleID.Service.Cloud"];
  [(AIDAMutableServiceContext *)self setSignInContexts:v9];
  aaSignInFlowControllerDelegate = self->super._aaSignInFlowControllerDelegate;
  self->super._aaSignInFlowControllerDelegate = delegateCopy;
}

- (void)setAaSignOutFlowControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(NSDictionary *)self->super._signOutContexts mutableCopy];
  v6 = v5;
  if (v5)
  {
    dictionary = v5;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = dictionary;

  [v9 setObject:delegateCopy forKeyedSubscript:@"com.apple.AppleID.Service.Cloud"];
  [(AIDAMutableServiceContext *)self setSignOutContexts:v9];
  aaSignOutFlowControllerDelegate = self->super._aaSignOutFlowControllerDelegate;
  self->super._aaSignOutFlowControllerDelegate = delegateCopy;
}

- (void)setAuthenticationResults:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DEB1B000, a2, OS_LOG_TYPE_DEBUG, "AIDAMutableServiceContext extracted time series from auth results: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end