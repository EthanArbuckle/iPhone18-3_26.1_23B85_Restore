@interface AMSUIWebDiagnosticsPageModel
- (AMSUIWebDiagnosticsPageModel)initWithJSObject:(id)a3 context:(id)a4;
- (CGSize)windowSize;
- (id)createViewControllerForContainer:(id)a3;
- (void)_parseflowFromDictionary:(id)a3;
@end

@implementation AMSUIWebDiagnosticsPageModel

- (AMSUIWebDiagnosticsPageModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = AMSUIWebDiagnosticsPageModel;
  v8 = [(AMSUIWebDiagnosticsPageModel *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a4);
    v10 = [v6 objectForKeyedSubscript:@"requiredSerialNumbers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    requiredSerialNumbers = v9->_requiredSerialNumbers;
    v9->_requiredSerialNumbers = v11;

    v13 = [v6 objectForKeyedSubscript:@"selectableSerialNumbers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    selectableSerialNumbers = v9->_selectableSerialNumbers;
    v9->_selectableSerialNumbers = v14;

    v16 = [v6 objectForKeyedSubscript:@"sessionToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    sessionToken = v9->_sessionToken;
    v9->_sessionToken = v17;

    v19 = [v6 objectForKeyedSubscript:@"flow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    [(AMSUIWebDiagnosticsPageModel *)v9 _parseflowFromDictionary:v20];
  }

  return v9;
}

- (void)_parseflowFromDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [v4 objectForKeyedSubscript:@"destination"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    [(AMSUIWebDiagnosticsPageModel *)self setDestination:v6];
    v7 = [v11 objectForKeyedSubscript:@"serialNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    [(AMSUIWebDiagnosticsPageModel *)self setFlowSerialNumber:v8];
    v9 = [v11 objectForKeyedSubscript:@"sessionID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [(AMSUIWebDiagnosticsPageModel *)self setFlowSessionID:v10];
    v4 = v11;
  }
}

- (id)createViewControllerForContainer:(id)a3
{
  v4 = [AMSUIWebDiagnosticsWrapperViewController alloc];
  v5 = [(AMSUIWebDiagnosticsPageModel *)self context];
  v6 = [(AMSUIWebDiagnosticsWrapperViewController *)v4 initWithContext:v5];

  return v6;
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end