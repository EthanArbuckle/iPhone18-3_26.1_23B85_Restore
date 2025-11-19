@interface AMSEngagementMessageRequest(AMSUIWeb)
- (id)_resultFromMessageAction:()AMSUIWeb;
- (id)generateWebExport;
@end

@implementation AMSEngagementMessageRequest(AMSUIWeb)

- (id)generateWebExport
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [a1 actions];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [a1 _resultFromMessageAction:*(*(&v23 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  [v2 setObject:v3 forKeyedSubscript:@"actions"];
  v10 = [a1 appearanceInfo];
  [v2 setObject:v10 forKeyedSubscript:@"appearanceInfo"];

  v11 = [a1 defaultAction];
  v12 = [a1 _resultFromMessageAction:v11];
  [v2 setObject:v12 forKeyedSubscript:@"defaultAction"];

  v13 = [a1 iconURL];
  v14 = [v13 absoluteString];
  [v2 setObject:v14 forKeyedSubscript:@"iconURL"];

  v15 = [a1 subtitle];
  [v2 setObject:v15 forKeyedSubscript:@"message"];

  v16 = [a1 metricsEvent];
  v17 = [v16 underlyingDictionary];
  [v2 setObject:v17 forKeyedSubscript:@"metrics"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "presentationAction")}];
  [v2 setObject:v18 forKeyedSubscript:@"presentationAction"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "style")}];
  [v2 setObject:v19 forKeyedSubscript:@"style"];

  v20 = [a1 title];
  [v2 setObject:v20 forKeyedSubscript:@"title"];

  v21 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_resultFromMessageAction:()AMSUIWeb
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    v6 = [v4 deepLink];
    v7 = [v6 absoluteString];
    [v5 setObject:v7 forKeyedSubscript:@"deepLink"];

    v8 = [v4 metricsEvent];
    v9 = [v8 underlyingDictionary];
    [v5 setObject:v9 forKeyedSubscript:@"metrics"];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "style")}];
    [v5 setObject:v10 forKeyedSubscript:@"style"];

    v11 = [v4 title];
    [v5 setObject:v11 forKeyedSubscript:@"title"];

    v12 = [v4 iconURL];

    v13 = [v12 absoluteString];
    [v5 setObject:v13 forKeyedSubscript:@"iconURL"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end