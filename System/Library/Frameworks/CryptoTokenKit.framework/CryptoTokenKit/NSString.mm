@interface NSString
+ (id)supportedAIDsOfExtension:(id)a3;
+ (void)parseAIDForAttribute:(id)a3 into:(id)a4;
@end

@implementation NSString

+ (id)supportedAIDsOfExtension:(id)a3
{
  v4 = [a3 attributes];
  v5 = [v4 objectForKeyedSubscript:TKTokenClassDriverApplicationIDKey];

  if (v5)
  {
    v6 = +[NSMutableArray array];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [a1 parseAIDForAttribute:*(*(&v13 + 1) + 8 * i) into:{v6, v13}];
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    else
    {
      [a1 parseAIDForAttribute:v5 into:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)parseAIDForAttribute:(id)a3 into:(id)a4
{
  v8 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 hexString];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = v8;
  }

  v7 = v6;
  if (v6)
  {
    [v5 addObject:v6];
  }

LABEL_7:
}

@end