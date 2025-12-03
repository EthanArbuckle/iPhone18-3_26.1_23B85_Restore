@interface NSDictionary(LSPluginQueryAdditions)
- (id)ls_parseQueryForIdentifiers:()LSPluginQueryAdditions;
- (uint64_t)ls_hashQuery;
@end

@implementation NSDictionary(LSPluginQueryAdditions)

- (id)ls_parseQueryForIdentifiers:()LSPluginQueryAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v6 = [self objectForKey:v4];
  if (_NSIsNSArray())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (_NSIsNSString())
          {
            ls_cleanForPluginQuery = [v11 ls_cleanForPluginQuery];
            if (ls_cleanForPluginQuery)
            {
              [v5 addObject:ls_cleanForPluginQuery];
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else if (_NSIsNSString())
  {
    ls_cleanForPluginQuery2 = [v6 ls_cleanForPluginQuery];
    if (ls_cleanForPluginQuery2)
    {
      [v5 addObject:ls_cleanForPluginQuery2];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (uint64_t)ls_hashQuery
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__NSDictionary_LSPluginQueryAdditions__ls_hashQuery__block_invoke;
  v3[3] = &unk_1E6A1D770;
  v3[4] = &v4;
  [self enumerateKeysAndObjectsUsingBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

@end