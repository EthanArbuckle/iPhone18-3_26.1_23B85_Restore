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
  if ([self count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __42__NSDictionary_AAAFoundation__aaf_filter___block_invoke;
    v12 = &unk_1E831B950;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [self enumerateKeysAndObjectsUsingBlock:&v9];
    aaf_empty = [v6 copy];
  }

  else
  {
    aaf_empty = [MEMORY[0x1E695DF20] aaf_empty];
  }

  return aaf_empty;
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
  v6 = [self aaf_mapStoppable:v8];

  return v6;
}

- (id)aaf_mapStoppable:()AAAFoundation
{
  v4 = a3;
  if ([self count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __48__NSDictionary_AAAFoundation__aaf_mapStoppable___block_invoke;
    v12 = &unk_1E831B950;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [self enumerateKeysAndObjectsUsingBlock:&v9];
    aaf_empty = [v6 copy];
  }

  else
  {
    aaf_empty = [MEMORY[0x1E695DF20] aaf_empty];
  }

  return aaf_empty;
}

- (id)aaf_dictionaryByAddingValue:()AAAFoundation forKey:
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [self mutableCopy];
    [v8 setValue:v7 forKey:v6];

    selfCopy = [v8 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)aaf_dictionaryByAddingEntriesFromDictionary:()AAAFoundation
{
  v4 = a3;
  v5 = [self count];
  v6 = [v4 count];
  if (v5)
  {
    if (v6)
    {
      v7 = [self mutableCopy];
      [v7 addEntriesFromDictionary:v4];
      v8 = [v7 copy];

      goto LABEL_10;
    }

    selfCopy = self;
  }

  else
  {
    if (!v6)
    {
      aaf_empty = [MEMORY[0x1E695DF20] aaf_empty];
      goto LABEL_9;
    }

    selfCopy = v4;
  }

  aaf_empty = [selfCopy copy];
LABEL_9:
  v8 = aaf_empty;
LABEL_10:

  return v8;
}

- (id)aaf_toUrlQueryString
{
  if ([self count])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:@"/"];
    aaf_toUrlQueryItems = [self aaf_toUrlQueryItems];
    [v2 setQueryItems:aaf_toUrlQueryItems];

    percentEncodedQuery = [v2 percentEncodedQuery];
    v5 = [percentEncodedQuery stringByReplacingOccurrencesOfString:@"+" withString:@"%2B"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)aaf_toUrlQueryItems
{
  if ([self count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__NSDictionary_AAAFoundation__aaf_toUrlQueryItems__block_invoke;
    v6[3] = &unk_1E831B9A0;
    v7 = v2;
    v3 = v2;
    [self enumerateKeysAndObjectsUsingBlock:v6];
    aaf_empty = [v3 copy];
  }

  else
  {
    aaf_empty = [MEMORY[0x1E695DEC8] aaf_empty];
  }

  return aaf_empty;
}

@end