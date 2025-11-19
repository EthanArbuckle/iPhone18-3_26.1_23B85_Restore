@interface NSSet(Accounts)
- (id)ac_map:()Accounts;
- (id)ac_mapNullable:()Accounts;
@end

@implementation NSSet(Accounts)

- (id)ac_map:()Accounts
{
  v5 = a3;
  if (!v5)
  {
    [(NSSet(Accounts) *)a2 ac_map:a1];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __26__NSSet_Accounts__ac_map___block_invoke;
  v14 = &unk_1E7977598;
  v15 = v6;
  v16 = v5;
  v7 = v5;
  v8 = v6;
  [a1 enumerateObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

- (id)ac_mapNullable:()Accounts
{
  v5 = a3;
  if (!v5)
  {
    [(NSSet(Accounts) *)a2 ac_mapNullable:a1];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __34__NSSet_Accounts__ac_mapNullable___block_invoke;
  v14 = &unk_1E79775C0;
  v15 = v6;
  v16 = v5;
  v7 = v6;
  v8 = v5;
  [a1 enumerateObjectsUsingBlock:&v11];
  v9 = [v7 copy];

  return v9;
}

- (void)ac_map:()Accounts .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSSet+Accounts.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

- (void)ac_mapNullable:()Accounts .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSSet+Accounts.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end