@interface NSArray
@end

@implementation NSArray

void __37__NSArray_AAAFoundation__aaf_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __43__NSArray_AAAFoundation__aaf_mapStoppable___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end