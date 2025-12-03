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
  views = [self views];
  v2 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(views);
        }

        af_dialogIdentifiersForAnalyticsContext = [*(*(&v11 + 1) + 8 * i) af_dialogIdentifiersForAnalyticsContext];
        if ([af_dialogIdentifiersForAnalyticsContext count])
        {
          if (!v4)
          {
            v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v4 addObjectsFromArray:af_dialogIdentifiersForAnalyticsContext];
        }
      }

      v3 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v19.receiver = self;
  v19.super_class = &off_1F05AF988;
  objc_msgSendSuper2(&v19, sel_af_addEntriesToAnalyticsContext_, v4);
  dialogPhase = [self dialogPhase];
  if (dialogPhase)
  {
    [v4 setObject:dialogPhase forKey:@"dialogPhase"];
  }

  af_dialogIdentifiersForAnalyticsContext = [self af_dialogIdentifiersForAnalyticsContext];
  if ([af_dialogIdentifiersForAnalyticsContext count])
  {
    [v4 setObject:af_dialogIdentifiersForAnalyticsContext forKey:@"dialogIdentifiers"];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  views = [self views];
  v9 = [views countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(views);
        }

        af_analyticsContext = [*(*(&v15 + 1) + 8 * v12) af_analyticsContext];
        if (af_analyticsContext)
        {
          [v7 addObject:af_analyticsContext];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [views countByEnumeratingWithState:&v15 objects:v20 count:16];
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