@interface AMSUIWebMetricsEvent
- (AMSUIWebMetricsEvent)initWithJSObject:(id)object context:(id)context;
@end

@implementation AMSUIWebMetricsEvent

- (AMSUIWebMetricsEvent)initWithJSObject:(id)object context:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v8 = [objectCopy objectForKeyedSubscript:@"topic"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v30.receiver = self;
    v30.super_class = AMSUIWebMetricsEvent;
    v10 = [(AMSUIWebMetricsEvent *)&v30 initWithTopic:v9];
    if (v10)
    {
      v11 = [objectCopy objectForKeyedSubscript:@"account"];
      v12 = [contextCopy iTunesAccountFromJSAccount:v11];
      [(AMSUIWebMetricsEvent *)v10 setAccount:v12];

      v13 = [objectCopy objectForKeyedSubscript:@"checkDiagnosticsAndUsageSetting"];
      if (objc_opt_respondsToSelector())
      {
        v14 = [objectCopy objectForKeyedSubscript:@"checkDiagnosticsAndUsageSetting"];
        -[AMSUIWebMetricsEvent setCheckDiagnosticsAndUsageSetting:](v10, "setCheckDiagnosticsAndUsageSetting:", [v14 BOOLValue]);
      }

      else
      {
        [(AMSUIWebMetricsEvent *)v10 setCheckDiagnosticsAndUsageSetting:0];
      }

      v20 = [objectCopy objectForKeyedSubscript:@"anonymous"];
      if (objc_opt_respondsToSelector())
      {
        v21 = [objectCopy objectForKeyedSubscript:@"anonymous"];
        -[AMSUIWebMetricsEvent setAnonymous:](v10, "setAnonymous:", [v21 BOOLValue]);
      }

      else
      {
        [(AMSUIWebMetricsEvent *)v10 setAnonymous:0];
      }

      v22 = [objectCopy objectForKeyedSubscript:@"suppressEngagement"];
      if (objc_opt_respondsToSelector())
      {
        v23 = [objectCopy objectForKeyedSubscript:@"suppressEngagement"];
        -[AMSUIWebMetricsEvent setSuppressEngagement:](v10, "setSuppressEngagement:", [v23 BOOLValue]);
      }

      else
      {
        [(AMSUIWebMetricsEvent *)v10 setSuppressEngagement:0];
      }

      metricsOverlay = [contextCopy metricsOverlay];

      if (metricsOverlay)
      {
        metricsOverlay2 = [contextCopy metricsOverlay];
        [(AMSUIWebMetricsEvent *)v10 addPropertiesWithDictionary:metricsOverlay2];
      }

      v26 = [objectCopy objectForKeyedSubscript:@"fields"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        [(AMSUIWebMetricsEvent *)v10 addPropertiesWithDictionary:v27];
      }
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543874;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      v35 = 2112;
      v36 = objectCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Metrics event does not contain topic: %@", buf, 0x20u);
    }

    selfCopy = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end