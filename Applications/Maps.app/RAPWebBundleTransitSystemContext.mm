@interface RAPWebBundleTransitSystemContext
- (NSDictionary)context;
@end

@implementation RAPWebBundleTransitSystemContext

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  system = [(RAPWebBundleTransitSystemContext *)self system];

  if (system)
  {
    system2 = [(RAPWebBundleTransitSystemContext *)self system];
    [v3 setObject:system2 forKeyedSubscript:@"system"];
  }

  v6 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  lines = [(RAPWebBundleTransitSystemContext *)self lines];
  v8 = [lines countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(lines);
        }

        context = [*(*(&v16 + 1) + 8 * i) context];
        [v6 addObject:context];
      }

      v9 = [lines countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v13 = [v6 copy];
    [v3 setObject:v13 forKeyedSubscript:@"lines"];
  }

  v14 = [v3 copy];

  return v14;
}

@end