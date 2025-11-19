@interface AMSEngagementMessageAction
- (AMSEngagementMessageAction)initWithJSObject:(id)a3;
- (id)exportObject;
- (id)makeDialogAction;
@end

@implementation AMSEngagementMessageAction

- (AMSEngagementMessageAction)initWithJSObject:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = AMSEngagementMessageAction;
  v5 = [(AMSEngagementMessageAction *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clickstreamMetricsEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v6;
    }

    else
    {
      v33 = 0;
    }

    v7 = [v4 objectForKeyedSubscript:@"deepLink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v7;
    }

    else
    {
      v36 = 0;
    }

    v8 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      obj = v8;
    }

    else
    {
      obj = 0;
    }

    v9 = [v4 objectForKeyedSubscript:@"kind"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v9;
    }

    else
    {
      v34 = 0;
    }

    v10 = [v4 objectForKeyedSubscript:@"iconURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 objectForKeyedSubscript:@"requiresDelegate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v4 objectForKeyedSubscript:@"metricsEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v4 objectForKeyedSubscript:@"parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v4 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v33;

    if (v33)
    {
      objc_storeStrong(&v5->_clickstreamMetricsEvent, v33);
    }

    if (v36)
    {
      v23 = [MEMORY[0x1E695DFF8] URLWithString:?];
      deepLink = v5->_deepLink;
      v5->_deepLink = v23;
    }

    objc_storeStrong(&v5->_identifier, obj);
    if (v11)
    {
      v25 = [MEMORY[0x1E695DFF8] URLWithString:v11];
      iconURL = v5->_iconURL;
      v5->_iconURL = v25;
    }

    objc_storeStrong(&v5->_kind, v34);
    if (v15)
    {
      v27 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v15];
      metricsEvent = v5->_metricsEvent;
      v5->_metricsEvent = v27;
    }

    v5->_requiresDelegate = [v13 BOOLValue];
    objc_storeStrong(&v5->_parameters, v17);
    if (v19)
    {
      v29 = [v19 intValue];
    }

    else
    {
      v29 = 0;
    }

    title = v5->_title;
    v5->_style = v29;
    v5->_title = v21;

    if (!v5->_deepLink && !v5->_requiresDelegate)
    {

      v31 = 0;
      goto LABEL_47;
    }
  }

  v31 = v5;
LABEL_47:

  return v31;
}

- (id)exportObject
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v30[0] = @"requiresDelegate";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSEngagementMessageAction requiresDelegate](self, "requiresDelegate")}];
  v30[1] = @"style";
  v31[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSEngagementMessageAction style](self, "style")}];
  v31[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v7 = [v3 dictionaryWithDictionary:v6];

  v8 = [(AMSEngagementMessageAction *)self clickstreamMetricsEvent];

  if (v8)
  {
    v9 = [(AMSEngagementMessageAction *)self clickstreamMetricsEvent];
    [v7 setObject:v9 forKeyedSubscript:@"clickstreamMetricsEvent"];
  }

  v10 = [(AMSEngagementMessageAction *)self deepLink];

  if (v10)
  {
    v11 = [(AMSEngagementMessageAction *)self deepLink];
    v12 = [v11 absoluteString];
    [v7 setObject:v12 forKeyedSubscript:@"deepLink"];
  }

  v13 = [(AMSEngagementMessageAction *)self identifier];

  if (v13)
  {
    v14 = [(AMSEngagementMessageAction *)self identifier];
    [v7 setObject:v14 forKeyedSubscript:@"identifier"];
  }

  v15 = [(AMSEngagementMessageAction *)self kind];

  if (v15)
  {
    v16 = [(AMSEngagementMessageAction *)self kind];
    [v7 setObject:v16 forKeyedSubscript:@"kind"];
  }

  v17 = [(AMSEngagementMessageAction *)self iconURL];

  if (v17)
  {
    v18 = [(AMSEngagementMessageAction *)self iconURL];
    v19 = [v18 absoluteString];
    [v7 setObject:v19 forKeyedSubscript:@"iconURL"];
  }

  v20 = [(AMSEngagementMessageAction *)self metricsEvent];

  if (v20)
  {
    v21 = [(AMSEngagementMessageAction *)self metricsEvent];
    v22 = [v21 underlyingDictionary];
    [v7 setObject:v22 forKeyedSubscript:@"metricsEvent"];
  }

  v23 = [(AMSEngagementMessageAction *)self parameters];

  if (v23)
  {
    v24 = [(AMSEngagementMessageAction *)self parameters];
    [v7 setObject:v24 forKeyedSubscript:@"parameters"];
  }

  v25 = [(AMSEngagementMessageAction *)self parameters];

  if (v25)
  {
    v26 = [(AMSEngagementMessageAction *)self parameters];
    [v7 setObject:v26 forKeyedSubscript:@"parameters"];
  }

  v27 = [(AMSEngagementMessageAction *)self title];

  if (v27)
  {
    v28 = [(AMSEngagementMessageAction *)self title];
    [v7 setObject:v28 forKeyedSubscript:@"title"];
  }

  return v7;
}

- (id)makeDialogAction
{
  v3 = [(AMSEngagementMessageAction *)self title];
  v4 = [AMSDialogAction actionWithTitle:v3];

  v5 = [(AMSEngagementMessageAction *)self clickstreamMetricsEvent];
  [v4 setClickstreamMetricsEvent:v5];

  v6 = [(AMSEngagementMessageAction *)self deepLink];
  [v4 setDeepLink:v6];

  v7 = [(AMSEngagementMessageAction *)self iconURL];
  [v4 setIconURL:v7];

  v8 = [(AMSEngagementMessageAction *)self kind];
  [v4 setKind:v8];

  v9 = [(AMSEngagementMessageAction *)self metricsEvent];
  [v4 setMetricsEvent:v9];

  v10 = [(AMSEngagementMessageAction *)self parameters];
  [v4 setParameters:v10];

  [v4 setRequiresDelegate:{-[AMSEngagementMessageAction requiresDelegate](self, "requiresDelegate")}];
  [v4 setStyle:{-[AMSEngagementMessageAction style](self, "style")}];
  v11 = [(AMSEngagementMessageAction *)self identifier];

  if (v11)
  {
    v12 = [(AMSEngagementMessageAction *)self identifier];
    [v4 setIdentifier:v12];
  }

  return v4;
}

@end