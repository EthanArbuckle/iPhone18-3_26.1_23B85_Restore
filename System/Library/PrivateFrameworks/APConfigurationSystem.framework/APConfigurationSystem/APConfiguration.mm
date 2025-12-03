@interface APConfiguration
+ (NSString)path;
- (APConfiguration)initWithConfig:(id)config notifier:(id)notifier;
- (NSString)identifier;
- (id)methodSignatureForSelector:(SEL)selector;
- (int64_t)version;
- (void)forwardInvocation:(id)invocation;
@end

@implementation APConfiguration

- (NSString)identifier
{
  v2 = objc_opt_class();

  return objc_msgSend_path(v2, v3, v4);
}

- (int64_t)version
{
  v3 = objc_msgSend_configDictionary(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"version");

  v8 = objc_msgSend_integerValue(v5, v6, v7);
  return v8;
}

+ (NSString)path
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = 138477827;
    v7 = objc_opt_class();
    v3 = v7;
    _os_log_impl(&dword_1CA1CE000, v2, OS_LOG_TYPE_ERROR, "[%{private}@] Error: Path needs to be implemented for each subclass.", &v6, 0xCu);
  }

  APSimulateCrash();
  v4 = *MEMORY[0x1E69E9840];
  return &stru_1F49DAC40;
}

- (APConfiguration)initWithConfig:(id)config notifier:(id)notifier
{
  configCopy = config;
  notifierCopy = notifier;
  v13.receiver = self;
  v13.super_class = APConfiguration;
  v8 = [(APConfiguration *)&v13 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setConfigDictionary_(v8, v9, configCopy);
    objc_msgSend_setNotifier_(v10, v11, notifierCopy);
  }

  return v10;
}

- (void)forwardInvocation:(id)invocation
{
  v38 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v7 = objc_msgSend_selector(invocationCopy, v5, v6);
  v8 = NSStringFromSelector(v7);
  v13 = objc_msgSend_ap_propertyName(v8, v9, v10);
  if (v13)
  {
    v14 = objc_msgSend_configDictionary(self, v11, v12);
    v16 = objc_msgSend_objectForKey_(v14, v15, @"properties");

    v33 = objc_msgSend_valueForKey_(v16, v17, v8);
    if (!v33)
    {
      v20 = APLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v35 = objc_opt_class();
        v36 = 2113;
        v37 = v13;
        v21 = v35;
        _os_log_impl(&dword_1CA1CE000, v20, OS_LOG_TYPE_ERROR, "[%{private}@] Error: Forward invocation for %{private}@ value is nil.", buf, 0x16u);
      }

      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v25 = objc_msgSend_stringWithFormat_(v22, v24, @"[%@] Error: Forward invocation for %@ value is nil.", v23, v13);
      CreateDiagnosticReport();
    }

    objc_msgSend_retainArguments(invocationCopy, v18, v19);
    objc_msgSend_setReturnValue_(invocationCopy, v26, &v33);
    v29 = objc_msgSend_notifier(self, v27, v28);
    objc_msgSend_recentlyAccessedObject_(v29, v30, self);
  }

  else
  {
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v35 = objc_opt_class();
      v31 = v35;
      _os_log_impl(&dword_1CA1CE000, v16, OS_LOG_TYPE_ERROR, "[%{private}@] Error: Forward invocation couldn't find property name.", buf, 0xCu);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = APConfiguration;
  v3 = [(APConfiguration *)&v6 methodSignatureForSelector:selector];
  if (!v3)
  {
    v3 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v4, "@@:");
  }

  return v3;
}

@end