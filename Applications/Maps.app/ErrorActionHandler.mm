@interface ErrorActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ErrorActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = actionCopy;
    v6 = objc_alloc_init(NSMutableDictionary);
    title = [v5 title];

    if (title)
    {
      title2 = [v5 title];
      [v6 setObject:title2 forKeyedSubscript:@"kMapsInterruptionTitle"];
    }

    message = [v5 message];

    if (message)
    {
      message2 = [v5 message];
      [v6 setObject:message2 forKeyedSubscript:@"kMapsInterruptionMessage"];
    }

    options = [v5 options];
    v12 = [options count];

    if (v12)
    {
      v27 = v6;
      v13 = objc_alloc_init(NSMutableArray);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v28 = v5;
      options2 = [v5 options];
      v15 = [options2 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
              objc_enumerationMutation(options2);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            title3 = [v19 title];
            cancels = [v19 cancels];
            handler = [v19 handler];
            v23 = [MapsInterruptionAction actionWithTitle:title3 cancels:cancels handler:handler];

            [v13 addObject:v23];
          }

          v16 = [options2 countByEnumeratingWithState:&v29 objects:v33 count:16];
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