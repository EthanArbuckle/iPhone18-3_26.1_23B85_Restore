@interface NSDictionary(FPMoveOperation)
- (id)fp_copyItemKeysAndValuesUnwrappedAndKeyMap:()FPMoveOperation;
- (id)fp_copyItemKeysUnwrappedAndKeyMap:()FPMoveOperation;
@end

@implementation NSDictionary(FPMoveOperation)

- (id)fp_copyItemKeysUnwrappedAndKeyMap:()FPMoveOperation
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 underlyingObject];
        if (v4)
        {
          v13 = [v4 objectForKeyedSubscript:v12];

          if (v13)
          {
            v14 = [v4 objectForKeyedSubscript:v12];

            v12 = v14;
          }
        }

        v15 = [v6 objectForKeyedSubscript:v11];
        [v5 setObject:v15 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fp_copyItemKeysAndValuesUnwrappedAndKeyMap:()FPMoveOperation
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 underlyingObject];
        if (v4)
        {
          v13 = [v4 objectForKeyedSubscript:v12];

          if (v13)
          {
            v14 = [v4 objectForKeyedSubscript:v12];

            v12 = v14;
          }
        }

        v15 = [v6 objectForKeyedSubscript:v11];
        v16 = [v15 underlyingObject];
        [v5 setObject:v16 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

@end