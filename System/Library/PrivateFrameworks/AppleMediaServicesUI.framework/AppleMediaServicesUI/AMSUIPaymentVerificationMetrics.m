@interface AMSUIPaymentVerificationMetrics
+ (id)_event;
+ (id)_metricsInstanceWithBag:(id)a3;
- (AMSUIPaymentVerificationMetrics)initWithBag:(id)a3 appID:(id)a4;
- (id)_propertiesWithPageId:(id)a3 displayReason:(id)a4;
- (id)_propertiesWithTargetId:(id)a3 pageId:(id)a4 displayReason:(id)a5;
- (void)enqueueEventWithPageId:(id)a3 displayReason:(id)a4;
- (void)enqueueEventWithTargetId:(id)a3 pageId:(id)a4 displayReason:(id)a5;
- (void)flushEvents;
@end

@implementation AMSUIPaymentVerificationMetrics

- (AMSUIPaymentVerificationMetrics)initWithBag:(id)a3 appID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSUIPaymentVerificationMetrics;
  v9 = [(AMSUIPaymentVerificationMetrics *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appID, a4);
    objc_storeStrong(&v10->_bag, a3);
  }

  return v10;
}

- (void)enqueueEventWithPageId:(id)a3 displayReason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(AMSUIPaymentVerificationMetrics *)self bag];
  v12 = [v8 _metricsInstanceWithBag:v9];

  v10 = [objc_opt_class() _event];
  v11 = [(AMSUIPaymentVerificationMetrics *)self _propertiesWithPageId:v7 displayReason:v6];

  [v10 addPropertiesWithDictionary:v11];
  [v12 enqueueEvent:v10];
}

- (void)enqueueEventWithTargetId:(id)a3 pageId:(id)a4 displayReason:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = [(AMSUIPaymentVerificationMetrics *)self bag];
  v15 = [v11 _metricsInstanceWithBag:v12];

  v13 = [objc_opt_class() _event];
  v14 = [(AMSUIPaymentVerificationMetrics *)self _propertiesWithTargetId:v10 pageId:v9 displayReason:v8];

  [v13 addPropertiesWithDictionary:v14];
  [v15 enqueueEvent:v13];
}

- (void)flushEvents
{
  v3 = objc_opt_class();
  v4 = [(AMSUIPaymentVerificationMetrics *)self bag];
  v6 = [v3 _metricsInstanceWithBag:v4];

  v5 = [v6 flush];
}

+ (id)_metricsInstanceWithBag:(id)a3
{
  v3 = MEMORY[0x1E698CA00];
  v4 = a3;
  v5 = [[v3 alloc] initWithContainerID:@"com.apple.AppleMediaServices" bag:v4];

  return v5;
}

+ (id)_event
{
  v2 = [objc_alloc(MEMORY[0x1E698CA08]) initWithTopic:@"xp_its_main"];

  return v2;
}

- (id)_propertiesWithPageId:(id)a3 displayReason:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
LABEL_4:
    v19 = @"displayReason";
    v20[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    goto LABEL_5;
  }

  v8 = [(AMSUIPaymentVerificationMetrics *)self displayReason];
  if (v8)
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
  v11 = [(AMSUIPaymentVerificationMetrics *)self appID];
  v18[2] = v11;
  v18[3] = v9;
  v17[3] = @"pageDetails";
  v17[4] = @"pageId";
  if (v6)
  {
    v12 = v6;
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

- (id)_propertiesWithTargetId:(id)a3 pageId:(id)a4 displayReason:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
LABEL_4:
    v23 = @"displayReason";
    v24[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    goto LABEL_5;
  }

  v11 = [(AMSUIPaymentVerificationMetrics *)self displayReason];
  if (v11)
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
  v14 = [(AMSUIPaymentVerificationMetrics *)self appID];
  v22[4] = v14;
  v22[5] = v12;
  v21[5] = @"pageDetails";
  v21[6] = @"pageId";
  if (v9)
  {
    v15 = v9;
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
  if (v8)
  {
    v17 = v8;
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