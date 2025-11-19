@interface NSDictionary(ARPersonDetectionData)
- (id)_recursiveObjectForKey:()ARPersonDetectionData visited:;
- (id)recursiveObjectForKey:()ARPersonDetectionData deleteKeys:;
@end

@implementation NSDictionary(ARPersonDetectionData)

- (id)recursiveObjectForKey:()ARPersonDetectionData deleteKeys:
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 addObject:v7];
  v9 = [a1 _recursiveObjectForKey:v7 visited:v8];
  [v8 removeObject:v7];

  [v6 addObjectsFromArray:v8];

  return v9;
}

- (id)_recursiveObjectForKey:()ARPersonDetectionData visited:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if (([v6 containsObject:v14] & 1) == 0)
          {
            [v6 addObject:v14];
            v15 = [a1 _recursiveObjectForKey:v14 visited:v6];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v15 allObjects];
              [v8 addObjectsFromArray:v16];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v7 = v18;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

@end