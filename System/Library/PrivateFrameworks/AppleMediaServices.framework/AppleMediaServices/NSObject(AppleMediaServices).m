@interface NSObject(AppleMediaServices)
- (id)ams_generateDescriptionWithSubObjects:()AppleMediaServices;
@end

@implementation NSObject(AppleMediaServices)

- (id)ams_generateDescriptionWithSubObjects:()AppleMediaServices
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p>", objc_opt_class(), a1];
  if ([v4 count])
  {
    [v5 appendString:@" {\n"];
    v6 = [v4 allKeys];
    v7 = [v6 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0x1E695D000uLL;
      v11 = *v32;
      v24 = *v32;
      do
      {
        v12 = 0;
        v25 = v9;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          v14 = [v4 objectForKeyedSubscript:v13];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v4;
            v16 = v10;
            [v5 appendFormat:@" %@ = {\n", v13];
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v17 = v14;
            v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v28;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v28 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  [v5 appendFormat:@"  %@, \n", *(*(&v27 + 1) + 8 * i)];
                }

                v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v19);
            }

            [v5 appendString:@"}"];
            v10 = v16;
            v4 = v15;
            v11 = v24;
            v9 = v25;
          }

          else
          {
            v22 = [v4 objectForKeyedSubscript:v13];
            [v5 appendFormat:@"  %@ = %@, \n", v13, v22];
          }

          ++v12;
        }

        while (v12 != v9);
        v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    [v5 appendString:@"}"];
  }

  return v5;
}

@end