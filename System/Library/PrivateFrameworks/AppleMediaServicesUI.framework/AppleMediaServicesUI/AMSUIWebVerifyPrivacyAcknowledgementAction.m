@interface AMSUIWebVerifyPrivacyAcknowledgementAction
- (AMSUIWebVerifyPrivacyAcknowledgementAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebVerifyPrivacyAcknowledgementAction

- (AMSUIWebVerifyPrivacyAcknowledgementAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIWebVerifyPrivacyAcknowledgementAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"privacyIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    privacyIdentifier = v7->_privacyIdentifier;
    v7->_privacyIdentifier = v9;
  }

  return v7;
}

- (id)runAction
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AMSUIWebVerifyPrivacyAcknowledgementAction;
  v3 = [(AMSUIWebAction *)&v12 runAction];
  v4 = MEMORY[0x1E698C790];
  v5 = [(AMSUIWebVerifyPrivacyAcknowledgementAction *)self privacyIdentifier];
  LODWORD(v4) = [v4 acknowledgementNeededForPrivacyIdentifier:v5];

  v6 = MEMORY[0x1E698CAD0];
  v13 = @"acknowledged";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4 ^ 1];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v6 promiseWithResult:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end