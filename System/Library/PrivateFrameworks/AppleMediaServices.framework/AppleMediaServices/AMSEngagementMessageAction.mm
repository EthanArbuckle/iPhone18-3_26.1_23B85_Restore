@interface AMSEngagementMessageAction
- (AMSEngagementMessageAction)initWithJSObject:(id)object;
- (id)exportObject;
- (id)makeDialogAction;
@end

@implementation AMSEngagementMessageAction

- (AMSEngagementMessageAction)initWithJSObject:(id)object
{
  objectCopy = object;
  v37.receiver = self;
  v37.super_class = AMSEngagementMessageAction;
  v5 = [(AMSEngagementMessageAction *)&v37 init];
  if (v5)
  {
    v6 = [objectCopy objectForKeyedSubscript:@"clickstreamMetricsEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v6;
    }

    else
    {
      v33 = 0;
    }

    v7 = [objectCopy objectForKeyedSubscript:@"deepLink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v7;
    }

    else
    {
      v36 = 0;
    }

    v8 = [objectCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      obj = v8;
    }

    else
    {
      obj = 0;
    }

    v9 = [objectCopy objectForKeyedSubscript:@"kind"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v9;
    }

    else
    {
      v34 = 0;
    }

    v10 = [objectCopy objectForKeyedSubscript:@"iconURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [objectCopy objectForKeyedSubscript:@"requiresDelegate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [objectCopy objectForKeyedSubscript:@"metricsEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [objectCopy objectForKeyedSubscript:@"parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [objectCopy objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [objectCopy objectForKeyedSubscript:@"title"];
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
      intValue = [v19 intValue];
    }

    else
    {
      intValue = 0;
    }

    title = v5->_title;
    v5->_style = intValue;
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

  clickstreamMetricsEvent = [(AMSEngagementMessageAction *)self clickstreamMetricsEvent];

  if (clickstreamMetricsEvent)
  {
    clickstreamMetricsEvent2 = [(AMSEngagementMessageAction *)self clickstreamMetricsEvent];
    [v7 setObject:clickstreamMetricsEvent2 forKeyedSubscript:@"clickstreamMetricsEvent"];
  }

  deepLink = [(AMSEngagementMessageAction *)self deepLink];

  if (deepLink)
  {
    deepLink2 = [(AMSEngagementMessageAction *)self deepLink];
    absoluteString = [deepLink2 absoluteString];
    [v7 setObject:absoluteString forKeyedSubscript:@"deepLink"];
  }

  identifier = [(AMSEngagementMessageAction *)self identifier];

  if (identifier)
  {
    identifier2 = [(AMSEngagementMessageAction *)self identifier];
    [v7 setObject:identifier2 forKeyedSubscript:@"identifier"];
  }

  kind = [(AMSEngagementMessageAction *)self kind];

  if (kind)
  {
    kind2 = [(AMSEngagementMessageAction *)self kind];
    [v7 setObject:kind2 forKeyedSubscript:@"kind"];
  }

  iconURL = [(AMSEngagementMessageAction *)self iconURL];

  if (iconURL)
  {
    iconURL2 = [(AMSEngagementMessageAction *)self iconURL];
    absoluteString2 = [iconURL2 absoluteString];
    [v7 setObject:absoluteString2 forKeyedSubscript:@"iconURL"];
  }

  metricsEvent = [(AMSEngagementMessageAction *)self metricsEvent];

  if (metricsEvent)
  {
    metricsEvent2 = [(AMSEngagementMessageAction *)self metricsEvent];
    underlyingDictionary = [metricsEvent2 underlyingDictionary];
    [v7 setObject:underlyingDictionary forKeyedSubscript:@"metricsEvent"];
  }

  parameters = [(AMSEngagementMessageAction *)self parameters];

  if (parameters)
  {
    parameters2 = [(AMSEngagementMessageAction *)self parameters];
    [v7 setObject:parameters2 forKeyedSubscript:@"parameters"];
  }

  parameters3 = [(AMSEngagementMessageAction *)self parameters];

  if (parameters3)
  {
    parameters4 = [(AMSEngagementMessageAction *)self parameters];
    [v7 setObject:parameters4 forKeyedSubscript:@"parameters"];
  }

  title = [(AMSEngagementMessageAction *)self title];

  if (title)
  {
    title2 = [(AMSEngagementMessageAction *)self title];
    [v7 setObject:title2 forKeyedSubscript:@"title"];
  }

  return v7;
}

- (id)makeDialogAction
{
  title = [(AMSEngagementMessageAction *)self title];
  v4 = [AMSDialogAction actionWithTitle:title];

  clickstreamMetricsEvent = [(AMSEngagementMessageAction *)self clickstreamMetricsEvent];
  [v4 setClickstreamMetricsEvent:clickstreamMetricsEvent];

  deepLink = [(AMSEngagementMessageAction *)self deepLink];
  [v4 setDeepLink:deepLink];

  iconURL = [(AMSEngagementMessageAction *)self iconURL];
  [v4 setIconURL:iconURL];

  kind = [(AMSEngagementMessageAction *)self kind];
  [v4 setKind:kind];

  metricsEvent = [(AMSEngagementMessageAction *)self metricsEvent];
  [v4 setMetricsEvent:metricsEvent];

  parameters = [(AMSEngagementMessageAction *)self parameters];
  [v4 setParameters:parameters];

  [v4 setRequiresDelegate:{-[AMSEngagementMessageAction requiresDelegate](self, "requiresDelegate")}];
  [v4 setStyle:{-[AMSEngagementMessageAction style](self, "style")}];
  identifier = [(AMSEngagementMessageAction *)self identifier];

  if (identifier)
  {
    identifier2 = [(AMSEngagementMessageAction *)self identifier];
    [v4 setIdentifier:identifier2];
  }

  return v4;
}

@end