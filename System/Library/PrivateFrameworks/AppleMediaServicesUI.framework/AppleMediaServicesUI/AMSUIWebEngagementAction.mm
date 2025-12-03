@interface AMSUIWebEngagementAction
- (AMSUIWebEngagementAction)initWithJSObject:(id)object context:(id)context;
- (id)_resultFromMessageResponse:(id)response;
- (id)runAction;
@end

@implementation AMSUIWebEngagementAction

- (AMSUIWebEngagementAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v20.receiver = self;
  v20.super_class = AMSUIWebEngagementAction;
  v7 = [(AMSUIWebAction *)&v20 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"event"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    event = v7->_event;
    v7->_event = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"message"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = [v12 objectForKeyedSubscript:@"serviceType"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      messageServiceType = v7->_messageServiceType;
      v7->_messageServiceType = v14;

      v16 = [v12 objectForKeyedSubscript:@"placements"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      messagePlacements = v7->_messagePlacements;
      v7->_messagePlacements = v17;
    }
  }

  return v7;
}

- (id)runAction
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E698C8D8]);
  messageServiceType = [(AMSUIWebEngagementAction *)self messageServiceType];
  if (messageServiceType)
  {
    messagePlacements = [(AMSUIWebEngagementAction *)self messagePlacements];
    v6 = [messagePlacements count];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E698C8E0]);
      messageServiceType2 = [(AMSUIWebEngagementAction *)self messageServiceType];
      v9 = MEMORY[0x1E695DFD8];
      messagePlacements2 = [(AMSUIWebEngagementAction *)self messagePlacements];
      v11 = [v9 setWithArray:messagePlacements2];
      v12 = [v7 initWithServiceType:messageServiceType2 placements:v11];

      v13 = [v3 enqueueMessageEvent:v12];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __37__AMSUIWebEngagementAction_runAction__block_invoke;
      v27[3] = &unk_1E7F26028;
      v27[4] = self;
      messageServiceType = [v13 thenWithBlock:v27];
    }

    else
    {
      messageServiceType = 0;
    }
  }

  event = [(AMSUIWebEngagementAction *)self event];

  if (event)
  {
    event2 = [(AMSUIWebEngagementAction *)self event];
    v16 = [v3 enqueueData:event2];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __37__AMSUIWebEngagementAction_runAction__block_invoke_2;
    v26[3] = &unk_1E7F26050;
    v26[4] = self;
    v17 = [v16 thenWithBlock:v26];
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x1E698CAD0];
  v19 = messageServiceType;
  if (!messageServiceType)
  {
    v19 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  v28[0] = v19;
  v20 = v17;
  if (!v17)
  {
    v20 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  v28[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v22 = [v18 promiseWithAll:v21];

  if (v17)
  {
    if (messageServiceType)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (messageServiceType)
    {
      goto LABEL_14;
    }
  }

LABEL_14:
  v23 = [v22 thenWithBlock:&__block_literal_global_22];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

id __37__AMSUIWebEngagementAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 messageActions];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 32) _resultFromMessageResponse:*(*(&v15 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:v4 forKeyedSubscript:@"messageActions"];
  v12 = [MEMORY[0x1E698CAD0] promiseWithResult:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id __37__AMSUIWebEngagementAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 actions];
  [v5 setObject:v6 forKeyedSubscript:@"actions"];

  v7 = [v4 data];
  [v5 setObject:v7 forKeyedSubscript:@"data"];

  v8 = [v4 request];

  v9 = [*(a1 + 32) context];
  v10 = [v8 generateWebExportWithContext:v9];
  [v5 setObject:v10 forKeyedSubscript:@"engagementRequest"];

  v11 = [MEMORY[0x1E698CAD0] promiseWithResult:v5];

  return v11;
}

id __37__AMSUIWebEngagementAction_runAction__block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __37__AMSUIWebEngagementAction_runAction__block_invoke_4;
        v13[3] = &unk_1E7F24C88;
        v14 = v3;
        [v9 enumerateKeysAndObjectsUsingBlock:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E698CAD0] promiseWithResult:v3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_resultFromMessageResponse:(id)response
{
  if (response)
  {
    v4 = MEMORY[0x1E695DF90];
    responseCopy = response;
    v6 = objc_alloc_init(v4);
    fullScreenMessageRequest = [responseCopy fullScreenMessageRequest];
    makeDialogRequest = [fullScreenMessageRequest makeDialogRequest];
    generateWebExport = [makeDialogRequest generateWebExport];
    [v6 setObject:generateWebExport forKeyedSubscript:@"dialogRequest"];

    engagementRequest = [responseCopy engagementRequest];
    context = [(AMSUIWebAction *)self context];
    v12 = [engagementRequest generateWebExportWithContext:context];
    [v6 setObject:v12 forKeyedSubscript:@"engagementRequest"];

    serviceType = [responseCopy serviceType];
    [v6 setObject:serviceType forKeyedSubscript:@"serviceType"];

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    placements = [responseCopy placements];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__AMSUIWebEngagementAction__resultFromMessageResponse___block_invoke;
    v18[3] = &unk_1E7F26098;
    v19 = v14;
    v16 = v14;
    [placements enumerateKeysAndObjectsUsingBlock:v18];

    [v6 setObject:v16 forKeyedSubscript:@"placements"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __55__AMSUIWebEngagementAction__resultFromMessageResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 generateWebExport];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end