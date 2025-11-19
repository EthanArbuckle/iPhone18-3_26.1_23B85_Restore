@interface SAUIAddViews(AnalyticsContextVending)
- (id)af_dialogIdentifiersForAnalyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAUIAddViews(AnalyticsContextVending)

- (id)af_dialogIdentifiersForAnalyticsContext
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [a1 views];
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
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = a1;
  v19.super_class = &off_1F05AF988;
  objc_msgSendSuper2(&v19, sel_af_addEntriesToAnalyticsContext_, v4);
  v5 = [a1 dialogPhase];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"dialogPhase"];
  }

  v6 = [a1 af_dialogIdentifiersForAnalyticsContext];
  if ([v6 count])
  {
    [v4 setObject:v6 forKey:@"dialogIdentifiers"];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a1 views];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) af_analyticsContext];
        if (v13)
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [v4 setObject:v7 forKey:@"views"];
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end