@interface AMSUIPaymentVerificationMetrics
+ (id)_event;
+ (id)_metricsInstanceWithBag:(id)bag;
- (AMSUIPaymentVerificationMetrics)initWithBag:(id)bag appID:(id)d;
- (id)_propertiesWithPageId:(id)id displayReason:(id)reason;
- (id)_propertiesWithTargetId:(id)id pageId:(id)pageId displayReason:(id)reason;
- (void)enqueueEventWithPageId:(id)id displayReason:(id)reason;
- (void)enqueueEventWithTargetId:(id)id pageId:(id)pageId displayReason:(id)reason;
- (void)flushEvents;
@end

@implementation AMSUIPaymentVerificationMetrics

- (AMSUIPaymentVerificationMetrics)initWithBag:(id)bag appID:(id)d
{
  bagCopy = bag;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = AMSUIPaymentVerificationMetrics;
  v9 = [(AMSUIPaymentVerificationMetrics *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appID, d);
    objc_storeStrong(&v10->_bag, bag);
  }

  return v10;
}

- (void)enqueueEventWithPageId:(id)id displayReason:(id)reason
{
  reasonCopy = reason;
  idCopy = id;
  v8 = objc_opt_class();
  v9 = [(AMSUIPaymentVerificationMetrics *)self bag];
  v12 = [v8 _metricsInstanceWithBag:v9];

  _event = [objc_opt_class() _event];
  v11 = [(AMSUIPaymentVerificationMetrics *)self _propertiesWithPageId:idCopy displayReason:reasonCopy];

  [_event addPropertiesWithDictionary:v11];
  [v12 enqueueEvent:_event];
}

- (void)enqueueEventWithTargetId:(id)id pageId:(id)pageId displayReason:(id)reason
{
  reasonCopy = reason;
  pageIdCopy = pageId;
  idCopy = id;
  v11 = objc_opt_class();
  v12 = [(AMSUIPaymentVerificationMetrics *)self bag];
  v15 = [v11 _metricsInstanceWithBag:v12];

  _event = [objc_opt_class() _event];
  v14 = [(AMSUIPaymentVerificationMetrics *)self _propertiesWithTargetId:idCopy pageId:pageIdCopy displayReason:reasonCopy];

  [_event addPropertiesWithDictionary:v14];
  [v15 enqueueEvent:_event];
}

- (void)flushEvents
{
  v3 = objc_opt_class();
  v4 = [(AMSUIPaymentVerificationMetrics *)self bag];
  v6 = [v3 _metricsInstanceWithBag:v4];

  flush = [v6 flush];
}

+ (id)_metricsInstanceWithBag:(id)bag
{
  v3 = MEMORY[0x1E698CA00];
  bagCopy = bag;
  v5 = [[v3 alloc] initWithContainerID:@"com.apple.AppleMediaServices" bag:bagCopy];

  return v5;
}

+ (id)_event
{
  v2 = [objc_alloc(MEMORY[0x1E698CA08]) initWithTopic:@"xp_its_main"];

  return v2;
}

- (id)_propertiesWithPageId:(id)id displayReason:(id)reason
{
  v20[1] = *MEMORY[0x1E69E9840];
  idCopy = id;
  reasonCopy = reason;
  if (reasonCopy)
  {
    displayReason = reasonCopy;
LABEL_4:
    v19 = @"displayReason";
    v20[0] = displayReason;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    goto LABEL_5;
  }

  displayReason = [(AMSUIPaymentVerificationMetrics *)self displayReason];
  if (displayReason)
  {
    goto LABEL_4;
  }

  v9 = MEMORY[0x1E695E0F8];
LABEL_5:
  v17[0] = @"app";
  v17[1] = @"eventType";
  v10 = *MEMORY[0x1E698C6E0];
  v18[0] = @"commerce-app";
  v18[1] = v10;
  v17[2] = @"hostApp";
  appID = [(AMSUIPaymentVerificationMetrics *)self appID];
  v18[2] = appID;
  v18[3] = v9;
  v17[3] = @"pageDetails";
  v17[4] = @"pageId";
  if (idCopy)
  {
    v12 = idCopy;
  }

  else
  {
    v12 = &stru_1F3921360;
  }

  v17[5] = @"pageType";
  v13 = *MEMORY[0x1E698C6D0];
  v18[4] = v12;
  v18[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_propertiesWithTargetId:(id)id pageId:(id)pageId displayReason:(id)reason
{
  v24[1] = *MEMORY[0x1E69E9840];
  idCopy = id;
  pageIdCopy = pageId;
  reasonCopy = reason;
  if (reasonCopy)
  {
    displayReason = reasonCopy;
LABEL_4:
    v23 = @"displayReason";
    v24[0] = displayReason;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    goto LABEL_5;
  }

  displayReason = [(AMSUIPaymentVerificationMetrics *)self displayReason];
  if (displayReason)
  {
    goto LABEL_4;
  }

  v12 = MEMORY[0x1E695E0F8];
LABEL_5:
  v21[0] = @"actionDetails";
  v21[1] = @"actionType";
  v22[0] = v12;
  v22[1] = @"navigate";
  v21[2] = @"app";
  v21[3] = @"eventType";
  v13 = *MEMORY[0x1E698C6D8];
  v22[2] = @"commerce-app";
  v22[3] = v13;
  v21[4] = @"hostApp";
  appID = [(AMSUIPaymentVerificationMetrics *)self appID];
  v22[4] = appID;
  v22[5] = v12;
  v21[5] = @"pageDetails";
  v21[6] = @"pageId";
  if (pageIdCopy)
  {
    v15 = pageIdCopy;
  }

  else
  {
    v15 = &stru_1F3921360;
  }

  v16 = *MEMORY[0x1E698C6D0];
  v22[6] = v15;
  v22[7] = v16;
  v21[7] = @"pageType";
  v21[8] = @"targetId";
  if (idCopy)
  {
    v17 = idCopy;
  }

  else
  {
    v17 = &stru_1F3921360;
  }

  v21[9] = @"targetType";
  v22[8] = v17;
  v22[9] = @"button";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:10];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end