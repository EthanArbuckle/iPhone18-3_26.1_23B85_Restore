@interface AMSUIWebRestrictedFeatureAction
- (AMSUIWebRestrictedFeatureAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)_featureWithIdentifier:(id)a3;
- (id)runAction;
@end

@implementation AMSUIWebRestrictedFeatureAction

- (AMSUIWebRestrictedFeatureAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = AMSUIWebRestrictedFeatureAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"enabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    enabled = v7->_enabled;
    v7->_enabled = v9;

    v11 = [v6 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    identifier = v7->_identifier;
    v7->_identifier = v12;
  }

  return v7;
}

- (id)runAction
{
  v29 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AMSUIWebRestrictedFeatureAction;
  v3 = [(AMSUIWebAction *)&v20 runAction];
  v4 = [(AMSUIWebRestrictedFeatureAction *)self identifier];
  v5 = [(AMSUIWebRestrictedFeatureAction *)self _featureWithIdentifier:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v7 = [(AMSUIWebRestrictedFeatureAction *)self enabled];
    if (v7)
    {
      if (([MEMORY[0x1E698CAC8] BOOLForEntitlement:@"com.apple.managedconfiguration.profiled-access"] & 1) == 0)
      {
        v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!v8)
        {
          v8 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v9 = [v8 OSLogObject];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = AMSLogKey();
          *buf = 138543874;
          v24 = v10;
          v25 = 2114;
          v26 = v11;
          v27 = 2114;
          v28 = @"com.apple.managedconfiguration.profiled-access";
          _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Missing %{public}@ entitlement", buf, 0x20u);
        }
      }

      [v6 setBoolValue:objc_msgSend(v7 forSetting:{"BOOLValue"), v5}];
    }

    v12 = MEMORY[0x1E698CAD0];
    v21[0] = @"locked";
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isBoolSettingLockedDownByRestrictions:", v5)}];
    v21[1] = @"state";
    v22[0] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "effectiveBoolValueForSetting:", v5)}];
    v22[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v16 = [v12 promiseWithResult:v15];
  }

  else
  {
    v17 = MEMORY[0x1E698CAD0];
    v6 = [(AMSUIWebRestrictedFeatureAction *)self _unknownIdentifierError];
    v16 = [v17 promiseWithError:v6];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_featureWithIdentifier:(id)a3
{
  v3 = _featureWithIdentifier__ams_once_token___COUNTER__;
  v4 = a3;
  if (v3 != -1)
  {
    [AMSUIWebRestrictedFeatureAction _featureWithIdentifier:];
  }

  v5 = [_featureWithIdentifier__ams_once_object___COUNTER__ objectForKey:v4];

  return v5;
}

void __58__AMSUIWebRestrictedFeatureAction__featureWithIdentifier___block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"explicitContentAllowed";
  v4[0] = *MEMORY[0x1E69ADE68];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = _featureWithIdentifier__ams_once_object___COUNTER__;
  _featureWithIdentifier__ams_once_object___COUNTER__ = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __51__AMSUIWebRestrictedFeatureAction__translateState___block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F394A7B0;
  v3[1] = &unk_1F394A7E0;
  v4[0] = &unk_1F394A7C8;
  v4[1] = &unk_1F394A7F8;
  v3[2] = &unk_1F394A810;
  v4[2] = &unk_1F394A828;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = _translateState__ams_once_object___COUNTER__;
  _translateState__ams_once_object___COUNTER__ = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end