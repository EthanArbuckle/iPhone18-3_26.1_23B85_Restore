@interface NSDictionary(Accounts)
- (id)ac_mapValues:()Accounts;
- (id)ac_mapValuesNullable:()Accounts;
@end

@implementation NSDictionary(Accounts)

- (id)ac_mapValues:()Accounts
{
  v5 = a3;
  if (!v5)
  {
    [(NSDictionary(Accounts) *)a2 ac_mapValues:self];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __39__NSDictionary_Accounts__ac_mapValues___block_invoke;
  v14 = &unk_1E7976F58;
  v15 = v6;
  v16 = v5;
  v7 = v5;
  v8 = v6;
  [self enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

- (id)ac_mapValuesNullable:()Accounts
{
  v5 = a3;
  if (!v5)
  {
    [(NSDictionary(Accounts) *)a2 ac_mapValuesNullable:self];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __47__NSDictionary_Accounts__ac_mapValuesNullable___block_invoke;
  v14 = &unk_1E7976F80;
  v15 = v6;
  v16 = v5;
  v7 = v6;
  v8 = v5;
  [self enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v7 copy];

  return v9;
}

- (void)ac_mapValues:()Accounts .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDictionary+Accounts.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

- (void)ac_mapValuesNullable:()Accounts .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDictionary+Accounts.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end