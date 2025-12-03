@interface NSDictionary(FPFrameworkAdditions)
- (id)fp_filter:()FPFrameworkAdditions;
- (id)fp_removingObjectsNotKindOfClasses:()FPFrameworkAdditions;
- (id)fp_valueForKeyPath:()FPFrameworkAdditions;
@end

@implementation NSDictionary(FPFrameworkAdditions)

- (id)fp_removingObjectsNotKindOfClasses:()FPFrameworkAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__NSDictionary_FPFrameworkAdditions__fp_removingObjectsNotKindOfClasses___block_invoke;
  v11[3] = &unk_1E793CF08;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)fp_filter:()FPFrameworkAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__NSDictionary_FPFrameworkAdditions__fp_filter___block_invoke;
  v11[3] = &unk_1E793EE08;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)fp_valueForKeyPath:()FPFrameworkAdditions
{
  v4 = a3;
  allKeys = [self allKeys];
  v6 = v4;
  v7 = v6;
  if (!v6 || ![v6 length])
  {
    v14 = 0;
    v19 = 0;
    LODWORD(v15) = 0;
    goto LABEL_21;
  }

  v8 = [v7 componentsSeparatedByString:@"."];
  if ([v8 count])
  {
    if (![v8 count])
    {
LABEL_8:
      v12 = v7;
      v13 = [v8 count];
      v14 = v12;
      if ([allKeys containsObject:v12])
      {
LABEL_12:
        v18 = [v14 length];
        if (v18 >= [v12 length])
        {
          v19 = 0;
        }

        else
        {
          v19 = [v12 substringFromIndex:{objc_msgSend(v14, "length") + 1}];
          v20 = v19;
        }

        LODWORD(v15) = 1;
        v16 = v14;
      }

      else
      {
        v15 = v13 - 1;
        v16 = v12;
        while (v15)
        {
          v17 = [v8 objectAtIndex:v15];
          v14 = [v16 substringWithRange:{0, objc_msgSend(v16, "length") + ~objc_msgSend(v17, "length")}];

          --v15;
          v16 = v14;
          if ([allKeys containsObject:v14])
          {
            goto LABEL_12;
          }
        }

        v14 = 0;
        v19 = 0;
      }

      goto LABEL_20;
    }

    v9 = 0;
    while (1)
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
      v11 = [v10 length];

      if (!v11)
      {
        break;
      }

      if (++v9 >= [v8 count])
      {
        goto LABEL_8;
      }
    }
  }

  v14 = 0;
  v19 = 0;
  LODWORD(v15) = 0;
LABEL_20:

LABEL_21:
  v21 = v14;
  v22 = v19;

  if (!v15)
  {
    v26 = 0;
    goto LABEL_31;
  }

  v23 = [self objectForKey:v21];
  v24 = v23;
  if (v23)
  {
    if (!v22)
    {
      v25 = v23;
      goto LABEL_29;
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [v24 fp_valueForKeyPath:v22];
LABEL_29:
      v26 = v25;
      goto LABEL_30;
    }
  }

  v26 = 0;
LABEL_30:

LABEL_31:

  return v26;
}

@end