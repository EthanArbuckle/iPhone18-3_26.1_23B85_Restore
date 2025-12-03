@interface AMSEngagementMessageEventResponse
- (AMSEngagementMessageEventResponse)initWithEnqueueResult:(id)result;
- (void)_processActions:(id)actions;
@end

@implementation AMSEngagementMessageEventResponse

- (AMSEngagementMessageEventResponse)initWithEnqueueResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = AMSEngagementMessageEventResponse;
  v5 = [(AMSEngagementMessageEventResponse *)&v10 init];
  if (v5)
  {
    data = [resultCopy data];
    [(AMSEngagementEnqueueResult *)v5 setData:data];

    actions = [resultCopy actions];
    [(AMSEngagementEnqueueResult *)v5 setActions:actions];

    actions2 = [resultCopy actions];
    [(AMSEngagementMessageEventResponse *)v5 _processActions:actions2];
  }

  return v5;
}

- (void)_processActions:(id)actions
{
  selfCopy = self;
  v22 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = actionsCopy;
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
        v10 = [v9 objectForKeyedSubscript:{@"actionClass", selfCopy}];
        v11 = [v10 isEqualToString:@"MessageAction"];

        if (v11)
        {
          v12 = [[AMSEngagementMessageEventServiceResponse alloc] initWithJSObject:v9];
          if (v12)
          {
            [array addObject:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if ([array count])
  {
    v13 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
    messageActions = selfCopy->_messageActions;
    selfCopy->_messageActions = v13;
  }
}

@end