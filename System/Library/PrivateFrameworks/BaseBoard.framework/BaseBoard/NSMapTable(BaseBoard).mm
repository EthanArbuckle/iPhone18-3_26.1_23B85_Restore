@interface NSMapTable(BaseBoard)
- (id)bs_filter:()BaseBoard;
- (id)bs_safeObjectForKey:()BaseBoard ofType:;
- (id)bs_takeObjectForKey:()BaseBoard;
- (void)bs_each:()BaseBoard;
- (void)bs_setSafeObject:()BaseBoard forKey:;
@end

@implementation NSMapTable(BaseBoard)

- (id)bs_safeObjectForKey:()BaseBoard ofType:
{
  v1 = [self objectForKey:?];
  if (v1 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)bs_each:()BaseBoard
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    selfCopy = self;
    v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(selfCopy);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          v9 = [selfCopy objectForKey:{v8, v10}];
          (*(a3 + 16))(a3, v8, v9);
        }

        v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (id)bs_filter:()BaseBoard
{
  v5 = [self copy];
  v6 = v5;
  if (a3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__NSMapTable_BaseBoard__bs_filter___block_invoke;
    v8[3] = &unk_1E72CAB20;
    v10 = a3;
    v9 = v5;
    [self bs_each:v8];
  }

  return v6;
}

- (void)bs_setSafeObject:()BaseBoard forKey:
{
  if (a3)
  {
    if (a4)
    {
      return [self setObject:? forKey:?];
    }
  }

  return self;
}

- (id)bs_takeObjectForKey:()BaseBoard
{
  v5 = [self objectForKey:?];
  if (v5)
  {
    [self removeObjectForKey:a3];
    v6 = v5;
  }

  return v5;
}

@end