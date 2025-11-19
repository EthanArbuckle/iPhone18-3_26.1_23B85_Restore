@interface NSSet
@end

@implementation NSSet

uint64_t __33__NSSet_AAAFoundation__aaf_empty__block_invoke()
{
  aaf_empty__aaf_empty = [MEMORY[0x1E695DFD8] set];

  return MEMORY[0x1EEE66BB8]();
}

void __35__NSSet_AAAFoundation__aaf_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __41__NSSet_AAAFoundation__aaf_mapStoppable___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end