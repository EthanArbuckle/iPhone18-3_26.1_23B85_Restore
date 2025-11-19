@interface FPLocalizableStringLookup
- (NSString)tableName;
- (id)localizedStringForKey:(id)a3;
- (void)setTableName:(id)a3;
@end

@implementation FPLocalizableStringLookup

- (void)setTableName:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(FPLocalizableStringLookup *)self setTableNames:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (NSString)tableName
{
  v2 = [(FPLocalizableStringLookup *)self tableNames];
  v3 = [v2 lastObject];

  return v3;
}

- (id)localizedStringForKey:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(FPLocalizableStringLookup *)self tableNames];
  v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v22)
  {
    v21 = *v24;
    v5 = @"UNLOCALIZED_FALLBACK_MARKER";
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        cfBundle = self->_cfBundle;
        v9 = self->_bundle;
        v10 = cfBundle;
        v11 = v7;
        v12 = v4;
        v13 = v4;
        if (v10)
        {
          v14 = CFBundleCopyLocalizedString(v10, v13, v5, v11);
        }

        else
        {
          v14 = [(NSBundle *)v9 localizedStringForKey:v13 value:v5 table:v11];
        }

        v15 = v14;
        v16 = v5;
        if ([v14 isEqualToString:v5])
        {
          v17 = 0;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {

          v4 = v12;
          goto LABEL_17;
        }

        v4 = v12;
        v5 = v16;
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v17 = v4;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end