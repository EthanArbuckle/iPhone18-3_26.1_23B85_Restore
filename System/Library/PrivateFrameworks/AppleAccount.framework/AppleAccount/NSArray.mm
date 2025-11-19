@interface NSArray
@end

@implementation NSArray

void __35__NSArray_AppleAccount__aa_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __32__NSArray_AppleAccount__aa_map___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:v2];
}

uint64_t __40__NSArray_AppleAccount__aa_mapNullable___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end