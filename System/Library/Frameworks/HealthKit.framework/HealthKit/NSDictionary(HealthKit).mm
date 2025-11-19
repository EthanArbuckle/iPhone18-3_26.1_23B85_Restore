@interface NSDictionary(HealthKit)
- (id)hk_allValuesBySortedKeys;
- (id)hk_dictionaryByAddingEntriesFromDictionary:()HealthKit;
- (id)hk_filter:()HealthKit;
- (id)hk_filterKeysWithBlock:()HealthKit;
- (id)hk_filteredDictionaryForKeys:()HealthKit;
- (id)hk_map:()HealthKit;
- (id)hk_replaceKeysFromSharedStringCache;
- (id)hk_sortedKeys;
- (uint64_t)hk_containsValuePassingTest:()HealthKit;
@end

@implementation NSDictionary(HealthKit)

- (id)hk_dictionaryByAddingEntriesFromDictionary:()HealthKit
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)hk_sortedKeys
{
  v1 = [a1 allKeys];
  v2 = [v1 sortedArrayUsingSelector:sel_compare_];

  return v2;
}

- (id)hk_allValuesBySortedKeys
{
  v2 = [a1 hk_sortedKeys];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__NSDictionary_HealthKit__hk_allValuesBySortedKeys__block_invoke;
  v5[3] = &unk_1E737B7A8;
  v5[4] = a1;
  v3 = [v2 hk_map:v5];

  return v3;
}

- (id)hk_filterKeysWithBlock:()HealthKit
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v16}];
        v13 = v4[2](v4, v12);

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)hk_filteredDictionaryForKeys:()HealthKit
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __56__NSDictionary_HealthKit__hk_filteredDictionaryForKeys___block_invoke;
  v13 = &unk_1E737B7D0;
  v14 = v4;
  v15 = v5;
  v6 = v5;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)hk_filter:()HealthKit
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __37__NSDictionary_HealthKit__hk_filter___block_invoke;
  v13 = &unk_1E737B7F8;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)hk_map:()HealthKit
{
  v5 = a3;
  if (!v5)
  {
    [(NSDictionary(HealthKit) *)a2 hk_map:a1];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __34__NSDictionary_HealthKit__hk_map___block_invoke;
  v14 = &unk_1E737B7F8;
  v15 = v6;
  v16 = v5;
  v7 = v6;
  v8 = v5;
  [a1 enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v7 copy];

  return v9;
}

- (uint64_t)hk_containsValuePassingTest:()HealthKit
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(NSDictionary(HealthKit) *)a2 hk_containsValuePassingTest:a1];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v6 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        v11 = v5[2](v5, v10);

        if (v11)
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)hk_replaceKeysFromSharedStringCache
{
  v2 = +[HKStringCache sharedCache];
  v3 = [v2 dictionaryReplacingKeysFromDictionary:a1];

  return v3;
}

- (void)hk_map:()HealthKit .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDictionary+HealthKit.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"map"}];
}

- (void)hk_containsValuePassingTest:()HealthKit .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDictionary+HealthKit.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"testHandler"}];
}

@end