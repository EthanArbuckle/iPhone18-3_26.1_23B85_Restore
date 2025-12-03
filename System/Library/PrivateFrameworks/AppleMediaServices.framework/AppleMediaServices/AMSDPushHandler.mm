@interface AMSDPushHandler
- (id)enabledParsables;
@end

@implementation AMSDPushHandler

- (id)enabledParsables
{
  v23[0] = @"24";
  v24[0] = objc_opt_class();
  v23[1] = @"26";
  v24[1] = objc_opt_class();
  v23[2] = AMSPushActionTypeFetchDataCache;
  v24[2] = objc_opt_class();
  v23[3] = AMSPushActionTypeDismissQRDialog;
  v24[3] = objc_opt_class();
  v23[4] = AMSPushActionTypeDSATCache;
  v24[4] = objc_opt_class();
  v3 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];
  v4 = [v3 mutableCopy];

  [v4 setObject:objc_opt_class() forKeyedSubscript:@"27"];
  [v4 setObject:objc_opt_class() forKeyedSubscript:@"41"];
  configuration = [(AMSDPushHandler *)self configuration];
  enabledActionTypes = [configuration enabledActionTypes];

  if (enabledActionTypes)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = enabledActionTypes;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v4 objectForKeyedSubscript:v13])
          {
            [v7 setObject:objc_msgSend(v4 forKeyedSubscript:{"objectForKeyedSubscript:", v13), v13}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = [v4 mutableCopy];
  }

  v17.receiver = self;
  v17.super_class = AMSDPushHandler;
  enabledParsables = [(AMSDPushHandler *)&v17 enabledParsables];
  v15 = [enabledParsables ams_dictionaryByAddingEntriesFromDictionary:v7];

  return v15;
}

@end