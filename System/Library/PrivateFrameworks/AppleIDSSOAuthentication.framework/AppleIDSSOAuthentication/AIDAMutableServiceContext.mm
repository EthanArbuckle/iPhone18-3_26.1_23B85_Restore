@interface AIDAMutableServiceContext
- (void)setAaSignInFlowControllerDelegate:(id)a3;
- (void)setAaSignOutFlowControllerDelegate:(id)a3;
- (void)setAuthenticationResults:(id)a3;
@end

@implementation AIDAMutableServiceContext

- (void)setAuthenticationResults:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->super._authenticationResults, a3);
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBE8]];
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

- (void)setAaSignInFlowControllerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->super._signInContexts mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = v7;

  [v9 setObject:v4 forKeyedSubscript:@"com.apple.AppleID.Service.Cloud"];
  [(AIDAMutableServiceContext *)self setSignInContexts:v9];
  aaSignInFlowControllerDelegate = self->super._aaSignInFlowControllerDelegate;
  self->super._aaSignInFlowControllerDelegate = v4;
}

- (void)setAaSignOutFlowControllerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->super._signOutContexts mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = v7;

  [v9 setObject:v4 forKeyedSubscript:@"com.apple.AppleID.Service.Cloud"];
  [(AIDAMutableServiceContext *)self setSignOutContexts:v9];
  aaSignOutFlowControllerDelegate = self->super._aaSignOutFlowControllerDelegate;
  self->super._aaSignOutFlowControllerDelegate = v4;
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