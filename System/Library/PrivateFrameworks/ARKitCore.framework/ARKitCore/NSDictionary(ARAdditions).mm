@interface NSDictionary(ARAdditions)
+ (id)diff:()ARAdditions against:;
@end

@implementation NSDictionary(ARAdditions)

+ (id)diff:()ARAdditions against:
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"added"];

  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dictionary3 forKeyedSubscript:@"removed"];

  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dictionary4 forKeyedSubscript:@"modified"];

  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dictionary5 forKeyedSubscript:@"same"];

  if (v5 | v6)
  {
    v42 = dictionary;
    v12 = objc_opt_new();
    allKeys = [v5 allKeys];
    v14 = [allKeys count];

    if (v14)
    {
      allKeys2 = [v5 allKeys];
      [v12 addObjectsFromArray:allKeys2];
    }

    allKeys3 = [v6 allKeys];
    v17 = [allKeys3 count];

    if (v17)
    {
      allKeys4 = [v6 allKeys];
      [v12 addObjectsFromArray:allKeys4];
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = v12;
    v20 = v42;
    v44 = [v19 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v44)
    {
      v43 = *v46;
      v41 = v19;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v46 != v43)
          {
            objc_enumerationMutation(v19);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          v23 = [v5 objectForKeyedSubscript:{v22, v41}];
          v24 = [v6 objectForKeyedSubscript:v22];
          v25 = [v23 isEqual:v24];
          if (v23)
          {
            v26 = v24 == 0;
          }

          else
          {
            v26 = 1;
          }

          if (v26 || v25 == 0)
          {
            if (v23)
            {
              v28 = v24 == 0;
            }

            else
            {
              v28 = 0;
            }

            if (v28)
            {
              v35 = [v5 objectForKeyedSubscript:v22];
              v36 = v20;
              v37 = @"removed";
            }

            else
            {
              if (v23)
              {
                v29 = 1;
              }

              else
              {
                v29 = v24 == 0;
              }

              if (v29)
              {
                v49[0] = @"old";
                v35 = [v5 objectForKeyedSubscript:v22];
                v49[1] = @"new";
                v50[0] = v35;
                v30 = [v6 objectForKeyedSubscript:v22];
                v50[1] = v30;
                v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
                [v20 objectForKeyedSubscript:@"modified"];
                v32 = v5;
                v34 = v33 = v6;
                [v34 setObject:v31 forKeyedSubscript:v22];

                v6 = v33;
                v5 = v32;
                v20 = v42;

                v19 = v41;
                goto LABEL_31;
              }

              v35 = [v6 objectForKeyedSubscript:v22];
              v36 = v20;
              v37 = @"added";
            }
          }

          else
          {
            v35 = [v5 objectForKeyedSubscript:v22];
            v36 = v20;
            v37 = @"same";
          }

          v30 = [v36 objectForKeyedSubscript:v37];
          [v30 setObject:v35 forKeyedSubscript:v22];
LABEL_31:
        }

        v44 = [v19 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v44);
    }

    v38 = v20;
    v39 = [v20 copy];
  }

  else
  {
    v38 = dictionary;
    v39 = dictionary;
  }

  return v39;
}

@end