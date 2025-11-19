@interface AMSEngagementMessageEventResponse
- (AMSEngagementMessageEventResponse)initWithEnqueueResult:(id)a3;
- (void)_processActions:(id)a3;
@end

@implementation AMSEngagementMessageEventResponse

- (AMSEngagementMessageEventResponse)initWithEnqueueResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AMSEngagementMessageEventResponse;
  v5 = [(AMSEngagementMessageEventResponse *)&v10 init];
  if (v5)
  {
    v6 = [v4 data];
    [(AMSEngagementEnqueueResult *)v5 setData:v6];

    v7 = [v4 actions];
    [(AMSEngagementEnqueueResult *)v5 setActions:v7];

    v8 = [v4 actions];
    [(AMSEngagementMessageEventResponse *)v5 _processActions:v8];
  }

  return v5;
}

- (void)_processActions:(id)a3
{
  v15 = self;
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"actionClass", v15}];
        v11 = [v10 isEqualToString:@"MessageAction"];

        if (v11)
        {
          v12 = [[AMSEngagementMessageEventServiceResponse alloc] initWithJSObject:v9];
          if (v12)
          {
            [v16 addObject:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if ([v16 count])
  {
    v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
    messageActions = v15->_messageActions;
    v15->_messageActions = v13;
  }
}

@end