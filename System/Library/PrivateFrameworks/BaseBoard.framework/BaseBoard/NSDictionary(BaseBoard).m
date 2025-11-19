@interface NSDictionary(BaseBoard)
- (id)bs_dictionaryByAddingEntriesFromDictionary:()BaseBoard;
- (id)bs_filter:()BaseBoard;
- (uint64_t)bs_BOOLForKey:()BaseBoard;
- (uint64_t)bs_safeArrayForKey:()BaseBoard;
- (uint64_t)bs_safeDictionaryForKey:()BaseBoard;
- (uint64_t)bs_safeNumberForKey:()BaseBoard;
- (uint64_t)bs_safeStringForKey:()BaseBoard;
- (uint64_t)bs_safeURLForKey:()BaseBoard;
- (void)bs_each:()BaseBoard;
- (void)bs_safeObjectForKey:()BaseBoard ofType:;
@end

@implementation NSDictionary(BaseBoard)

- (uint64_t)bs_BOOLForKey:()BaseBoard
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)bs_safeNumberForKey:()BaseBoard
{
  v5 = objc_opt_class();

  return [a1 bs_safeObjectForKey:a3 ofType:v5];
}

- (uint64_t)bs_safeStringForKey:()BaseBoard
{
  v5 = objc_opt_class();

  return [a1 bs_safeObjectForKey:a3 ofType:v5];
}

- (uint64_t)bs_safeURLForKey:()BaseBoard
{
  v5 = objc_opt_class();

  return [a1 bs_safeObjectForKey:a3 ofType:v5];
}

- (uint64_t)bs_safeArrayForKey:()BaseBoard
{
  v5 = objc_opt_class();

  return [a1 bs_safeObjectForKey:a3 ofType:v5];
}

- (uint64_t)bs_safeDictionaryForKey:()BaseBoard
{
  v5 = objc_opt_class();

  return [a1 bs_safeObjectForKey:a3 ofType:v5];
}

- (void)bs_safeObjectForKey:()BaseBoard ofType:
{
  v1 = [a1 objectForKey:?];
  if (v1)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)bs_each:()BaseBoard
{
  if (a3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __35__NSDictionary_BaseBoard__bs_each___block_invoke;
    v3[3] = &unk_1E72CB260;
    v3[4] = a3;
    return [result enumerateKeysAndObjectsUsingBlock:v3];
  }

  return result;
}

- (id)bs_filter:()BaseBoard
{
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v6 = v5;
  if (a3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__NSDictionary_BaseBoard__bs_filter___block_invoke;
    v8[3] = &unk_1E72CAB20;
    v10 = a3;
    v9 = v5;
    [a1 bs_each:v8];
  }

  else
  {
    [v5 addEntriesFromDictionary:a1];
  }

  return v6;
}

- (id)bs_dictionaryByAddingEntriesFromDictionary:()BaseBoard
{
  if ([a3 count] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [a1 mutableCopy];
    v6 = v5;
    if (a3)
    {
      [v5 addEntriesFromDictionary:a3];
    }
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

@end