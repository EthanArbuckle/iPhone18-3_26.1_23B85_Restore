@interface NSDictionary
@end

@implementation NSDictionary

void __42__NSDictionary_AAAFoundation__aaf_filter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void __48__NSDictionary_AAAFoundation__aaf_mapStoppable___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

void __50__NSDictionary_AAAFoundation__aaf_toUrlQueryItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AF60];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithName:v7 value:v6];

  [*(a1 + 32) addObject:v8];
}

@end