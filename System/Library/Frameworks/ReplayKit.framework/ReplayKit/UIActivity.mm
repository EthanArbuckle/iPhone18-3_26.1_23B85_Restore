@interface UIActivity
@end

@implementation UIActivity

void __59__UIActivity_RPExtensions__streamActivitiesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v18 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 attributes];
        v9 = [v8 objectForKeyedSubscript:@"NSExtensionActivationRule"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v11 = [v7 attributes];
          v12 = [v11 objectForKeyedSubscript:@"NSExtensionActivationRule"];
          v13 = [v12 objectForKeyedSubscript:@"NSExtensionActivationSupportsReplayStreaming"];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            v15 = [objc_alloc(MEMORY[0x277D546E0]) initWithApplicationExtension:v7];
            [v18 addObject:v15];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 32) + 16))();
  v16 = *MEMORY[0x277D85DE8];
}

@end