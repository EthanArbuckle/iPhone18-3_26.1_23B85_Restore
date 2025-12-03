@interface FPLocalizableStringLookup
- (NSString)tableName;
- (id)localizedStringForKey:(id)key;
- (void)setTableName:(id)name;
@end

@implementation FPLocalizableStringLookup

- (void)setTableName:(id)name
{
  v9 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = MEMORY[0x1E695DEC8];
  nameCopy2 = name;
  v6 = [v4 arrayWithObjects:&nameCopy count:1];

  [(FPLocalizableStringLookup *)self setTableNames:v6, nameCopy, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (NSString)tableName
{
  tableNames = [(FPLocalizableStringLookup *)self tableNames];
  lastObject = [tableNames lastObject];

  return lastObject;
}

- (id)localizedStringForKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
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
        v12 = keyCopy;
        v13 = keyCopy;
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

          keyCopy = v12;
          goto LABEL_17;
        }

        keyCopy = v12;
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

  v17 = keyCopy;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end