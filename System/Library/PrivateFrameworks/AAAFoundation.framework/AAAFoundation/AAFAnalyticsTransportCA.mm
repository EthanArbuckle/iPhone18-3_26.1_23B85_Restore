@interface AAFAnalyticsTransportCA
- (void)sendEvent:(id)a3;
@end

@implementation AAFAnalyticsTransportCA

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (MEMORY[0x1EEE86508])
  {
    v6 = [v4 eventName];
    v7 = [v5 reportData];
    AnalyticsSendEvent();
  }

  else
  {
    v8 = _AAFLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AAFAnalyticsTransportCA *)self sendEvent:v8];
    }
  }
}

- (void)sendEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2048;
  v9 = a1;
  v4 = v7;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "<%@: %p> CoreAnalytics is not avaiable.", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end