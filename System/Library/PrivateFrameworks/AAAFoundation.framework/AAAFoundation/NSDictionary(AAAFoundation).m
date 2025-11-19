@interface NSDictionary(AAAFoundation)
- (id)aaf_dictionaryByAddingEntriesFromDictionary:()AAAFoundation;
- (id)aaf_dictionaryByAddingValue:()AAAFoundation forKey:;
- (id)aaf_filter:()AAAFoundation;
- (id)aaf_map:()AAAFoundation;
- (id)aaf_mapStoppable:()AAAFoundation;
- (id)aaf_toUrlQueryItems;
- (id)aaf_toUrlQueryString;
@end

@implementation NSDictionary(AAAFoundation)

- (id)aaf_filter:()AAAFoundation
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1, "count")}];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __42__NSDictionary_AAAFoundation__aaf_filter___block_invoke;
    v12 = &unk_1E831B950;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [a1 enumerateKeysAndObjectsUsingBlock:&v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF20] aaf_empty];
  }

  return v7;
}

- (id)aaf_map:()AAAFoundation
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__NSDictionary_AAAFoundation__aaf_map___block_invoke;
  v8[3] = &unk_1E831B978;
  v9 = v4;
  v5 = v4;
  v6 = [a1 aaf_mapStoppable:v8];

  return v6;
}

- (id)aaf_mapStoppable:()AAAFoundation
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1, "count")}];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __48__NSDictionary_AAAFoundation__aaf_mapStoppable___block_invoke;
    v12 = &unk_1E831B950;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [a1 enumerateKeysAndObjectsUsingBlock:&v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF20] aaf_empty];
  }

  return v7;
}

- (id)aaf_dictionaryByAddingValue:()AAAFoundation forKey:
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [a1 mutableCopy];
    [v8 setValue:v7 forKey:v6];

    v9 = [v8 copy];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (id)aaf_dictionaryByAddingEntriesFromDictionary:()AAAFoundation
{
  v4 = a3;
  v5 = [a1 count];
  v6 = [v4 count];
  if (v5)
  {
    if (v6)
    {
      v7 = [a1 mutableCopy];
      [v7 addEntriesFromDictionary:v4];
      v8 = [v7 copy];

      goto LABEL_10;
    }

    v9 = a1;
  }

  else
  {
    if (!v6)
    {
      v10 = [MEMORY[0x1E695DF20] aaf_empty];
      goto LABEL_9;
    }

    v9 = v4;
  }

  v10 = [v9 copy];
LABEL_9:
  v8 = v10;
LABEL_10:

  return v8;
}

- (id)aaf_toUrlQueryString
{
  if ([a1 count])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:@"/"];
    v3 = [a1 aaf_toUrlQueryItems];
    [v2 setQueryItems:v3];

    v4 = [v2 percentEncodedQuery];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"+" withString:@"%2B"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)aaf_toUrlQueryItems
{
  if ([a1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__NSDictionary_AAAFoundation__aaf_toUrlQueryItems__block_invoke;
    v6[3] = &unk_1E831B9A0;
    v7 = v2;
    v3 = v2;
    [a1 enumerateKeysAndObjectsUsingBlock:v6];
    v4 = [v3 copy];
  }

  else
  {
    v4 = [MEMORY[0x1E695DEC8] aaf_empty];
  }

  return v4;
}

@end