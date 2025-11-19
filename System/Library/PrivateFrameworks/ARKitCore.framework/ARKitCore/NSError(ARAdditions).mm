@interface NSError(ARAdditions)
- (id)encodeToDictionary;
- (id)initWithDictionary:()ARAdditions;
@end

@implementation NSError(ARAdditions)

- (id)initWithDictionary:()ARAdditions
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKeyedSubscript:@"userInfo"];
    v6 = [v5 mutableCopy];

    v7 = *MEMORY[0x1E696AA08];
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = *MEMORY[0x1E696A750];
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A750]];
    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDictionary:v8];
    [v6 setObject:v11 forKeyedSubscript:v7];

    v12 = [v10 ar_map:&__block_literal_global_116];
    [v6 setObject:v12 forKeyedSubscript:v9];

    v13 = [v4 objectForKeyedSubscript:@"domain"];
    v14 = [v4 objectForKeyedSubscript:@"code"];

    a1 = [a1 initWithDomain:v13 code:objc_msgSend(v14 userInfo:{"integerValue"), v6}];
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)encodeToDictionary
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [a1 userInfo];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__NSError_ARAdditions__encodeToDictionary__block_invoke;
  v10[3] = &unk_1E817E918;
  v11 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v6 = [a1 domain];
  [v2 setObject:v6 forKeyedSubscript:@"domain"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
  [v2 setObject:v7 forKeyedSubscript:@"code"];

  v8 = [v5 copy];
  [v2 setObject:v8 forKeyedSubscript:@"userInfo"];

  return v2;
}

@end