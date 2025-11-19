@interface NSNotification(EKAdditions)
- (uint64_t)cal_changeMayAffectAnyObjectOfType:()EKAdditions;
- (uint64_t)cal_changeMayAffectCalendarsOrSources;
@end

@implementation NSNotification(EKAdditions)

- (uint64_t)cal_changeMayAffectAnyObjectOfType:()EKAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a1 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"EKEventStoreChangedObjectIDsUserInfoKey"];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v14 + 1) + 8 * v10) entityType] == a3)
          {
            v11 = 1;
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (uint64_t)cal_changeMayAffectCalendarsOrSources
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"EKEventStoreChangedObjectIDsUserInfoKey"];

  if (v2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v13 + 1) + 8 * i) entityType];
          if (v8 == 1 || v8 == 6)
          {
            v10 = 1;
            goto LABEL_17;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v10 = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_17:
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end