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
  v4 = [a1 buttonActions];
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [a1 _resultFromDialogAction:*(*(&v35 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  [v2 setObject:v3 forKeyedSubscript:@"actions"];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [a1 textFields];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [a1 _resultFromDialogTextField:*(*(&v31 + 1) + 8 * j)];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v13);
  }

  [v2 setObject:v10 forKeyedSubscript:@"textFields"];
  v17 = [a1 appearanceInfo];
  [v2 setObject:v17 forKeyedSubscript:@"appearanceInfo"];

  v18 = [a1 defaultAction];
  v19 = [a1 _resultFromDialogAction:v18];
  [v2 setObject:v19 forKeyedSubscript:@"defaultAction"];

  v20 = [a1 iconURL];
  v21 = [v20 absoluteString];
  [v2 setObject:v21 forKeyedSubscript:@"iconURL"];

  v22 = [a1 identifier];
  [v2 setObject:v22 forKeyedSubscript:@"identifier"];

  v23 = [a1 message];
  [v2 setObject:v23 forKeyedSubscript:@"message"];

  v24 = [a1 metricsEvent];
  v25 = [v24 underlyingDictionary];
  [v2 setObject:v25 forKeyedSubscript:@"metrics"];

  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "style")}];
  [v2 setObject:v26 forKeyedSubscript:@"style"];

  v27 = [a1 title];
  [v2 setObject:v27 forKeyedSubscript:@"title"];

  v28 = [a1 userInfo];
  [v2 setObject:v28 forKeyedSubscript:@"userInfo"];

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
    v5 = [v3 deepLink];
    v6 = [v5 absoluteString];
    [v4 setObject:v6 forKeyedSubscript:@"deepLink"];

    v7 = [v3 identifier];
    [v4 setObject:v7 forKeyedSubscript:@"identifier"];

    v8 = [v3 metricsEvent];
    v9 = [v8 underlyingDictionary];
    [v4 setObject:v9 forKeyedSubscript:@"metrics"];

    v10 = [v3 request];
    if (v10)
    {
      v38[0] = @"url";
      v37 = [v3 request];
      v36 = [v37 URL];
      v11 = [v36 absoluteString];
      v12 = v11;
      v13 = &stru_1F3921360;
      if (v11)
      {
        v13 = v11;
      }

      v39[0] = v13;
      v38[1] = @"headers";
      v35 = [v3 request];
      v14 = [v35 allHTTPHeaderFields];
      v15 = v14;
      v16 = MEMORY[0x1E695E0F8];
      if (v14)
      {
        v16 = v14;
      }

      v39[1] = v16;
      v38[2] = @"body";
      v34 = [v3 request];
      v17 = [v34 HTTPBody];
      if (v17)
      {
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v33 = [v3 request];
        v32 = [v33 HTTPBody];
        v19 = [v18 initWithData:? encoding:?];
      }

      else
      {
        v19 = 0;
      }

      v39[2] = v19;
      v38[3] = @"method";
      v20 = [v3 request];
      v21 = [v20 HTTPMethod];
      v22 = v21;
      v23 = @"GET";
      if (v21)
      {
        v23 = v21;
      }

      v39[3] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];
      [v4 setObject:v24 forKeyedSubscript:@"request"];

      if (v17)
      {
      }
    }

    else
    {
      [v4 setObject:0 forKeyedSubscript:@"request"];
    }

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "style")}];
    [v4 setObject:v25 forKeyedSubscript:@"style"];

    v26 = [v3 title];
    [v4 setObject:v26 forKeyedSubscript:@"title"];

    v27 = [v3 iconURL];
    v28 = [v27 absoluteString];
    [v4 setObject:v28 forKeyedSubscript:@"iconURL"];

    v29 = [v3 userInfo];
    [v4 setObject:v29 forKeyedSubscript:@"userInfo"];
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

    v7 = [v4 text];
    [v5 setObject:v7 forKeyedSubscript:@"text"];

    v8 = [v4 placeholder];

    [v5 setObject:v8 forKeyedSubscript:@"placeholder"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end