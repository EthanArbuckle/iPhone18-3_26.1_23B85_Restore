@interface _WKWebExtensionDeclarativeNetRequestTranslator
+ (id)jsonObjectsFromData:(id)a3 errorStrings:(id *)a4;
+ (id)translateRules:(id)a3 errorStrings:(id *)a4;
@end

@implementation _WKWebExtensionDeclarativeNetRequestTranslator

+ (id)translateRules:(id)a3 errorStrings:(id *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v29;
  v6 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v6)
  {
    v7 = 0;
    v31 = *v44;
    v32 = v6;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v43 + 1) + 8 * i);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v10)
        {
          v11 = *v40;
          do
          {
            v12 = 0;
            do
            {
              if (*v40 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v39 + 1) + 8 * v12);
              v14 = [_WKWebExtensionDeclarativeNetRequestRule alloc];
              v38 = 0;
              v15 = [(_WKWebExtensionDeclarativeNetRequestRule *)v14 initWithDictionary:v13 errorString:&v38];
              v16 = v38;
              v17 = v16;
              if (v15)
              {
                [v4 addObject:v15];
              }

              else if (v16)
              {
                ++v7;
                if ([v5 count] <= 0x31)
                {
                  [v5 addObject:v17];
                }
              }

              ++v12;
            }

            while (v10 != v12);
            v18 = [v9 countByEnumeratingWithState:&v39 objects:v48 count:16];
            v10 = v18;
          }

          while (v18);
        }
      }

      v32 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v32);

    if (v7 >= 0x33)
    {
      [v5 addObject:@"Error limit hit. No longer omitting errors."];
    }
  }

  else
  {
  }

  if (a4)
  {
    *a4 = [v5 copy];
  }

  v19 = [v4 sortedArrayUsingComparator:{&__block_literal_global, a4}];
  v20 = [v19 mutableCopy];

  v21 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v23)
  {
    v24 = *v35;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = [*(*(&v34 + 1) + 8 * j) ruleInWebKitFormat];
        [v21 addObjectsFromArray:v26];
      }

      v23 = [v22 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v23);
  }

  return v21;
}

+ (id)jsonObjectsFromData:(id)a3 errorStrings:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v17 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v15;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    v7 = *MEMORY[0x1E696A278];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        v10 = WebKit::parseJSON(v9, 1, &v19);
        v11 = v19;
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 addObject:v10];
          }
        }

        if (v11)
        {
          v12 = [v11 userInfo];
          v13 = [v12 objectForKeyedSubscript:v7];
          [v4 addObject:v13];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  if (a4)
  {
    *a4 = [v4 copy];
  }

  return v17;
}

@end