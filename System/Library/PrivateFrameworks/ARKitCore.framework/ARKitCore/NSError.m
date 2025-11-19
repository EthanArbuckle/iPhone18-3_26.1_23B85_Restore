@interface NSError
@end

@implementation NSError

id __43__NSError_ARAdditions__initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = a2;
  v4 = [[v2 alloc] initWithDictionary:v3];

  return v4;
}

void __42__NSError_ARAdditions__encodeToDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 encodeToDictionary];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v9];
  }

  else
  {
    v7 = *MEMORY[0x1E696A750];
    if ([v9 isEqualToString:*MEMORY[0x1E696A750]])
    {
      v8 = [v5 ar_map:&__block_literal_global_11_2];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
    }

    else
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v9];
    }
  }
}

@end