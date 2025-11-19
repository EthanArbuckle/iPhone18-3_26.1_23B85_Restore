@interface TPSDialAssistController
- (BOOL)supportsDialAssistForSubscriptionContext:(id)a3;
- (TPSDialAssistController)init;
@end

@implementation TPSDialAssistController

- (TPSDialAssistController)init
{
  v6.receiver = self;
  v6.super_class = TPSDialAssistController;
  v2 = [(TPSDialAssistController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TPSCarrierBundleController);
    carrierBundleController = v2->_carrierBundleController;
    v2->_carrierBundleController = v3;
  }

  return v2;
}

- (BOOL)supportsDialAssistForSubscriptionContext:(id)a3
{
  v5 = a3;
  v6 = [(TPSDialAssistController *)self carrierBundleController];
  v15 = 0;
  v7 = [v6 objectForKey:@"ShowDialAssist" subscriptionContext:v5 error:&v15];

  v8 = v15;
  if (v8)
  {
    v9 = TPSDialAssistLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromSelector(a2);
      *buf = 138412802;
      v17 = v12;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
    }
  }

  else
  {
    if (!v7)
    {
      v10 = 1;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 BOOLValue];
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end