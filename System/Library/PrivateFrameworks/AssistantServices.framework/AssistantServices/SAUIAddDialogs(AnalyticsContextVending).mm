@interface SAUIAddDialogs(AnalyticsContextVending)
- (id)af_dialogIdentifiersForAnalyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAUIAddDialogs(AnalyticsContextVending)

- (id)af_dialogIdentifiersForAnalyticsContext
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [a1 dialogs];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) af_dialogIdentifiersForAnalyticsContext];
        if ([v7 count])
        {
          if (!v4)
          {
            v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v4 addObjectsFromArray:v7];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = [v4 copy];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = a1;
  v18.super_class = &off_1F05B0980;
  objc_msgSendSuper2(&v18, sel_af_addEntriesToAnalyticsContext_, v4);
  v5 = [a1 af_dialogIdentifiersForAnalyticsContext];
  if ([v5 count])
  {
    [v4 setObject:v5 forKey:@"dialogIdentifiers"];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a1 dialogs];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) af_analyticsContext];
        if (v12)
        {
          [v6 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    [v4 setObject:v6 forKey:@"dialogs"];
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end