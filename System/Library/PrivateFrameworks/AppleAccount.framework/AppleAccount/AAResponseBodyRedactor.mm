@interface AAResponseBodyRedactor
+ (id)redactedCopyForObject:(id)a3 forKeys:(id)a4;
+ (id)redactedCopyForResponse:(id)a3 forKeys:(id)a4;
@end

@implementation AAResponseBodyRedactor

+ (id)redactedCopyForResponse:(id)a3 forKeys:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [a1 redactedCopyForObject:v7 forKeys:v6];

  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)redactedCopyForObject:(id)a3 forKeys:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:v14];
          if ([v7 containsObject:v14])
          {
            [v8 setObject:@"<PRIVACY SENSITIVE>" forKeyedSubscript:v14];
          }

          else
          {
            v16 = [a1 redactedCopyForObject:v15 forKeys:v7];
            [v8 setObject:v16 forKeyedSubscript:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    v6 = v26;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = v6;
      v18 = v6;
      v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v28;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v28 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [a1 redactedCopyForObject:*(*(&v27 + 1) + 8 * j) forKeys:v7];
            [v8 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v20);
      }

      v6 = v17;
    }

    else
    {
      v8 = v6;
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v8;
}

@end