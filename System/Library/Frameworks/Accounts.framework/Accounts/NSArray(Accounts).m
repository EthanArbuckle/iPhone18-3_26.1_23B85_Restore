@interface NSArray(Accounts)
- (id)ac_filter:()Accounts;
- (id)ac_firstObjectPassingTest:()Accounts;
- (id)ac_map:()Accounts;
- (id)ac_mapNullable:()Accounts;
@end

@implementation NSArray(Accounts)

- (id)ac_filter:()Accounts
{
  v4 = a3;
  if (!v4)
  {
    [NSArray(Accounts) ac_filter:];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __31__NSArray_Accounts__ac_filter___block_invoke;
  v13 = &unk_1E7976F08;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)ac_firstObjectPassingTest:()Accounts
{
  v4 = a3;
  if (!v4)
  {
    [NSArray(Accounts) ac_firstObjectPassingTest:];
  }

  v5 = [a1 indexOfObjectPassingTest:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [a1 objectAtIndex:v5];
  }

  return v6;
}

- (id)ac_map:()Accounts
{
  v4 = a3;
  if (!v4)
  {
    [NSArray(Accounts) ac_map:];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __28__NSArray_Accounts__ac_map___block_invoke;
  v13 = &unk_1E7976F30;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v7 = v5;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v7 copy];

  return v8;
}

- (id)ac_mapNullable:()Accounts
{
  v4 = a3;
  if (!v4)
  {
    [NSArray(Accounts) ac_mapNullable:];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __36__NSArray_Accounts__ac_mapNullable___block_invoke;
  v13 = &unk_1E7976F08;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (void)ac_filter:()Accounts .cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)ac_firstObjectPassingTest:()Accounts .cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"predicate" object:? file:? lineNumber:? description:?];
}

- (void)ac_map:()Accounts .cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)ac_mapNullable:()Accounts .cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

@end