@interface AMSDialogRequest(AMSUIWeb)
- (id)_resultFromDialogAction:()AMSUIWeb;
- (id)_resultFromDialogTextField:()AMSUIWeb;
- (id)generateWebExport;
@end

@implementation AMSDialogRequest(AMSUIWeb)

- (id)generateWebExport
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  buttonActions = [self buttonActions];
  v5 = [buttonActions countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(buttonActions);
        }

        v9 = [self _resultFromDialogAction:*(*(&v35 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [buttonActions countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  [v2 setObject:v3 forKeyedSubscript:@"actions"];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  textFields = [self textFields];
  v12 = [textFields countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(textFields);
        }

        v16 = [self _resultFromDialogTextField:*(*(&v31 + 1) + 8 * j)];
        [v10 addObject:v16];
      }

      v13 = [textFields countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v13);
  }

  [v2 setObject:v10 forKeyedSubscript:@"textFields"];
  appearanceInfo = [self appearanceInfo];
  [v2 setObject:appearanceInfo forKeyedSubscript:@"appearanceInfo"];

  defaultAction = [self defaultAction];
  v19 = [self _resultFromDialogAction:defaultAction];
  [v2 setObject:v19 forKeyedSubscript:@"defaultAction"];

  iconURL = [self iconURL];
  absoluteString = [iconURL absoluteString];
  [v2 setObject:absoluteString forKeyedSubscript:@"iconURL"];

  identifier = [self identifier];
  [v2 setObject:identifier forKeyedSubscript:@"identifier"];

  message = [self message];
  [v2 setObject:message forKeyedSubscript:@"message"];

  metricsEvent = [self metricsEvent];
  underlyingDictionary = [metricsEvent underlyingDictionary];
  [v2 setObject:underlyingDictionary forKeyedSubscript:@"metrics"];

  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "style")}];
  [v2 setObject:v26 forKeyedSubscript:@"style"];

  title = [self title];
  [v2 setObject:title forKeyedSubscript:@"title"];

  userInfo = [self userInfo];
  [v2 setObject:userInfo forKeyedSubscript:@"userInfo"];

  v29 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_resultFromDialogAction:()AMSUIWeb
{
  v39[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deepLink = [v3 deepLink];
    absoluteString = [deepLink absoluteString];
    [v4 setObject:absoluteString forKeyedSubscript:@"deepLink"];

    identifier = [v3 identifier];
    [v4 setObject:identifier forKeyedSubscript:@"identifier"];

    metricsEvent = [v3 metricsEvent];
    underlyingDictionary = [metricsEvent underlyingDictionary];
    [v4 setObject:underlyingDictionary forKeyedSubscript:@"metrics"];

    request = [v3 request];
    if (request)
    {
      v38[0] = @"url";
      request2 = [v3 request];
      v36 = [request2 URL];
      absoluteString2 = [v36 absoluteString];
      v12 = absoluteString2;
      v13 = &stru_1F3921360;
      if (absoluteString2)
      {
        v13 = absoluteString2;
      }

      v39[0] = v13;
      v38[1] = @"headers";
      request3 = [v3 request];
      allHTTPHeaderFields = [request3 allHTTPHeaderFields];
      v15 = allHTTPHeaderFields;
      v16 = MEMORY[0x1E695E0F8];
      if (allHTTPHeaderFields)
      {
        v16 = allHTTPHeaderFields;
      }

      v39[1] = v16;
      v38[2] = @"body";
      request4 = [v3 request];
      hTTPBody = [request4 HTTPBody];
      if (hTTPBody)
      {
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        request5 = [v3 request];
        hTTPBody2 = [request5 HTTPBody];
        v19 = [v18 initWithData:? encoding:?];
      }

      else
      {
        v19 = 0;
      }

      v39[2] = v19;
      v38[3] = @"method";
      request6 = [v3 request];
      hTTPMethod = [request6 HTTPMethod];
      v22 = hTTPMethod;
      v23 = @"GET";
      if (hTTPMethod)
      {
        v23 = hTTPMethod;
      }

      v39[3] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];
      [v4 setObject:v24 forKeyedSubscript:@"request"];

      if (hTTPBody)
      {
      }
    }

    else
    {
      [v4 setObject:0 forKeyedSubscript:@"request"];
    }

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "style")}];
    [v4 setObject:v25 forKeyedSubscript:@"style"];

    title = [v3 title];
    [v4 setObject:title forKeyedSubscript:@"title"];

    iconURL = [v3 iconURL];
    absoluteString3 = [iconURL absoluteString];
    [v4 setObject:absoluteString3 forKeyedSubscript:@"iconURL"];

    userInfo = [v3 userInfo];
    [v4 setObject:userInfo forKeyedSubscript:@"userInfo"];
  }

  else
  {
    v4 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_resultFromDialogTextField:()AMSUIWeb
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "keyboardType")}];
    [v5 setObject:v6 forKeyedSubscript:@"keyboardType"];

    text = [v4 text];
    [v5 setObject:text forKeyedSubscript:@"text"];

    placeholder = [v4 placeholder];

    [v5 setObject:placeholder forKeyedSubscript:@"placeholder"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end