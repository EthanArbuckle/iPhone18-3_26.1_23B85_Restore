@interface NSDictionary
@end

@implementation NSDictionary

void __39__NSDictionary_Accounts__ac_mapValues___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v7 + 16);
  v9 = a2;
  v10 = v8(v7, v9, a3, a4);
  [v6 setObject:v10 forKey:v9];
}

void __47__NSDictionary_Accounts__ac_mapValuesNullable___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKey:v4];
  }
}

@end