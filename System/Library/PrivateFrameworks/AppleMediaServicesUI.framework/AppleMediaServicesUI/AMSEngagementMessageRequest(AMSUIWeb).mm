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
  actions = [self actions];
  v5 = [actions countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(actions);
        }

        v9 = [self _resultFromMessageAction:*(*(&v23 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [actions countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  [v2 setObject:v3 forKeyedSubscript:@"actions"];
  appearanceInfo = [self appearanceInfo];
  [v2 setObject:appearanceInfo forKeyedSubscript:@"appearanceInfo"];

  defaultAction = [self defaultAction];
  v12 = [self _resultFromMessageAction:defaultAction];
  [v2 setObject:v12 forKeyedSubscript:@"defaultAction"];

  iconURL = [self iconURL];
  absoluteString = [iconURL absoluteString];
  [v2 setObject:absoluteString forKeyedSubscript:@"iconURL"];

  subtitle = [self subtitle];
  [v2 setObject:subtitle forKeyedSubscript:@"message"];

  metricsEvent = [self metricsEvent];
  underlyingDictionary = [metricsEvent underlyingDictionary];
  [v2 setObject:underlyingDictionary forKeyedSubscript:@"metrics"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "presentationAction")}];
  [v2 setObject:v18 forKeyedSubscript:@"presentationAction"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "style")}];
  [v2 setObject:v19 forKeyedSubscript:@"style"];

  title = [self title];
  [v2 setObject:title forKeyedSubscript:@"title"];

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
    deepLink = [v4 deepLink];
    absoluteString = [deepLink absoluteString];
    [v5 setObject:absoluteString forKeyedSubscript:@"deepLink"];

    metricsEvent = [v4 metricsEvent];
    underlyingDictionary = [metricsEvent underlyingDictionary];
    [v5 setObject:underlyingDictionary forKeyedSubscript:@"metrics"];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "style")}];
    [v5 setObject:v10 forKeyedSubscript:@"style"];

    title = [v4 title];
    [v5 setObject:title forKeyedSubscript:@"title"];

    iconURL = [v4 iconURL];

    absoluteString2 = [iconURL absoluteString];
    [v5 setObject:absoluteString2 forKeyedSubscript:@"iconURL"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end