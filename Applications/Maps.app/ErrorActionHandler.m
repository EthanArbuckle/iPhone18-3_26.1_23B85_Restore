@interface ErrorActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ErrorActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = [v5 title];

    if (v7)
    {
      v8 = [v5 title];
      [v6 setObject:v8 forKeyedSubscript:@"kMapsInterruptionTitle"];
    }

    v9 = [v5 message];

    if (v9)
    {
      v10 = [v5 message];
      [v6 setObject:v10 forKeyedSubscript:@"kMapsInterruptionMessage"];
    }

    v11 = [v5 options];
    v12 = [v11 count];

    if (v12)
    {
      v27 = v6;
      v13 = objc_alloc_init(NSMutableArray);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v28 = v5;
      v14 = [v5 options];
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v30;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            v20 = [v19 title];
            v21 = [v19 cancels];
            v22 = [v19 handler];
            v23 = [MapsInterruptionAction actionWithTitle:v20 cancels:v21 handler:v22];

            [v13 addObject:v23];
          }

          v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v16);
      }

      v24 = [v13 copy];
      v6 = v27;
      [v27 setObject:v24 forKeyedSubscript:@"kMapsInterruptionActions"];

      v5 = v28;
    }

    v25 = +[UIApplication sharedMapsDelegate];
    v26 = [v6 copy];
    [v25 interruptApplicationWithKind:3 userInfo:v26 completionHandler:0];
  }
}

@end