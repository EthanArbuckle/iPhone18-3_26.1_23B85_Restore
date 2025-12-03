@interface AMSUIWebDiagnosticsPageModel
- (AMSUIWebDiagnosticsPageModel)initWithJSObject:(id)object context:(id)context;
- (CGSize)windowSize;
- (id)createViewControllerForContainer:(id)container;
- (void)_parseflowFromDictionary:(id)dictionary;
@end

@implementation AMSUIWebDiagnosticsPageModel

- (AMSUIWebDiagnosticsPageModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = AMSUIWebDiagnosticsPageModel;
  v8 = [(AMSUIWebDiagnosticsPageModel *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
    v10 = [objectCopy objectForKeyedSubscript:@"requiredSerialNumbers"];
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

    v13 = [objectCopy objectForKeyedSubscript:@"selectableSerialNumbers"];
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

    v16 = [objectCopy objectForKeyedSubscript:@"sessionToken"];
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

    v19 = [objectCopy objectForKeyedSubscript:@"flow"];
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

- (void)_parseflowFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v11 = dictionaryCopy;
    v5 = [dictionaryCopy objectForKeyedSubscript:@"destination"];
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
    dictionaryCopy = v11;
  }
}

- (id)createViewControllerForContainer:(id)container
{
  v4 = [AMSUIWebDiagnosticsWrapperViewController alloc];
  context = [(AMSUIWebDiagnosticsPageModel *)self context];
  v6 = [(AMSUIWebDiagnosticsWrapperViewController *)v4 initWithContext:context];

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