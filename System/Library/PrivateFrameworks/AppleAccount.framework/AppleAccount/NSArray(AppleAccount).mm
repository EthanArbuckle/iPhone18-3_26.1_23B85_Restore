@interface NSArray(AppleAccount)
- (id)aa_arrayByRemovingObject:()AppleAccount;
- (id)aa_filter:()AppleAccount;
- (id)aa_firstObjectPassingTest:()AppleAccount;
- (id)aa_map:()AppleAccount;
- (id)aa_mapNullable:()AppleAccount;
- (uint64_t)aa_isSubsetOfArray:()AppleAccount;
@end

@implementation NSArray(AppleAccount)

- (id)aa_arrayByRemovingObject:()AppleAccount
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObject:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)aa_filter:()AppleAccount
{
  v4 = a3;
  if (!v4)
  {
    [NSArray(AppleAccount) aa_filter:];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __35__NSArray_AppleAccount__aa_filter___block_invoke;
  v13 = &unk_1E7C9B430;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)aa_firstObjectPassingTest:()AppleAccount
{
  v4 = a3;
  if (!v4)
  {
    [NSArray(AppleAccount) aa_firstObjectPassingTest:];
  }

  v5 = [self indexOfObjectPassingTest:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [self objectAtIndex:v5];
  }

  return v6;
}

- (id)aa_map:()AppleAccount
{
  v4 = a3;
  if (!v4)
  {
    [NSArray(AppleAccount) aa_map:];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __32__NSArray_AppleAccount__aa_map___block_invoke;
  v13 = &unk_1E7C9B458;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v7 = v5;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [v7 copy];

  return v8;
}

- (id)aa_mapNullable:()AppleAccount
{
  v4 = a3;
  if (!v4)
  {
    [NSArray(AppleAccount) aa_mapNullable:];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__NSArray_AppleAccount__aa_mapNullable___block_invoke;
  v13 = &unk_1E7C9B430;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (uint64_t)aa_isSubsetOfArray:()AppleAccount
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:self];
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];

  v8 = [v6 isSubsetOfSet:v7];
  return v8;
}

- (void)aa_filter:()AppleAccount .cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)aa_firstObjectPassingTest:()AppleAccount .cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"predicate" object:? file:? lineNumber:? description:?];
}

- (void)aa_map:()AppleAccount .cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)aa_mapNullable:()AppleAccount .cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

@end