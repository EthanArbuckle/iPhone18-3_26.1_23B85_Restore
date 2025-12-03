@interface NSDictionary(AppleMediaServices)
- (id)ams_arrayUsingTransform:()AppleMediaServices;
- (id)ams_compactMapValues:()AppleMediaServices;
- (id)ams_componentsJoinedByString:()AppleMediaServices;
- (id)ams_dictionaryByAddingEntriesFromDictionary:()AppleMediaServices;
- (id)ams_dictionaryRemovingKeys:()AppleMediaServices;
- (id)ams_filterUsingTest:()AppleMediaServices;
- (id)ams_firstKeyObjectPassingTest:()AppleMediaServices;
- (id)ams_firstKeyPassingTest:()AppleMediaServices;
- (id)ams_firstObjectPassingTest:()AppleMediaServices;
- (id)ams_mapWithTransform:()AppleMediaServices;
- (id)ams_objectForCaseInsensitiveKey:()AppleMediaServices;
- (id)ams_objectForKey:()AppleMediaServices defaultValue:;
- (id)ams_sanitizedForSecureCoding;
- (id)hashedDescription;
@end

@implementation NSDictionary(AppleMediaServices)

- (id)ams_sanitizedForSecureCoding
{
  v1 = [self ams_filterUsingTest:&__block_literal_global_3_6];
  v2 = [v1 ams_mapWithTransform:&__block_literal_global_5_0];

  return v2;
}

- (id)hashedDescription
{
  v2 = [self ams_mapWithTransform:&__block_literal_global_158];
  v3 = [self ams_generateDescriptionWithSubObjects:v2];

  return v3;
}

- (id)ams_arrayUsingTransform:()AppleMediaServices
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __60__NSDictionary_AppleMediaServices__ams_arrayUsingTransform___block_invoke;
  v13 = &unk_1E73BE248;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v7 = v5;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v7 copy];

  return v8;
}

- (id)ams_compactMapValues:()AppleMediaServices
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __57__NSDictionary_AppleMediaServices__ams_compactMapValues___block_invoke;
  v13 = &unk_1E73BE248;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)ams_componentsJoinedByString:()AppleMediaServices
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  allKeys = [self allKeys];
  if ([allKeys count])
  {
    v7 = 0;
    do
    {
      v8 = [allKeys objectAtIndexedSubscript:v7];
      v9 = [self objectForKeyedSubscript:v8];
      [v5 appendFormat:@"%@:%@", v8, v9];
      if (v7 != [allKeys count] - 1)
      {
        [v5 appendString:v4];
      }

      ++v7;
    }

    while (v7 < [allKeys count]);
  }

  v10 = [v5 copy];

  return v10;
}

- (id)ams_dictionaryByAddingEntriesFromDictionary:()AppleMediaServices
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)ams_filterUsingTest:()AppleMediaServices
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __56__NSDictionary_AppleMediaServices__ams_filterUsingTest___block_invoke;
  v13 = &unk_1E73BE248;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)ams_firstKeyPassingTest:()AppleMediaServices
{
  v1 = [self ams_firstKeyObjectPassingTest:?];
  first = [v1 first];

  return first;
}

- (id)ams_firstKeyObjectPassingTest:()AppleMediaServices
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__79;
  v15 = __Block_byref_object_dispose__79;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__NSDictionary_AppleMediaServices__ams_firstKeyObjectPassingTest___block_invoke;
  v8[3] = &unk_1E73BE270;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)ams_firstObjectPassingTest:()AppleMediaServices
{
  v1 = [self ams_firstKeyObjectPassingTest:?];
  second = [v1 second];

  return second;
}

- (id)ams_mapWithTransform:()AppleMediaServices
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __57__NSDictionary_AppleMediaServices__ams_mapWithTransform___block_invoke;
  v13 = &unk_1E73BE248;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)ams_objectForCaseInsensitiveKey:()AppleMediaServices
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [self allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        if (![v4 caseInsensitiveCompare:*(*(&v12 + 1) + 8 * i)])
        {
          v10 = [self objectForKeyedSubscript:v4];
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)ams_objectForKey:()AppleMediaServices defaultValue:
{
  v6 = a4;
  v7 = [self objectForKeyedSubscript:a3];
  if (!v7)
  {
    v7 = v6;
  }

  return v7;
}

- (id)ams_dictionaryRemovingKeys:()AppleMediaServices
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObjectsForKeys:v4];

  v6 = [v5 copy];

  return v6;
}

@end