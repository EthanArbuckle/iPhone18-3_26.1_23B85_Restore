@interface NSSet
@end

@implementation NSSet

uint64_t __62__NSSet_AXSSDatabaseManager__ax_makeObjectsRespondToSelector___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v4 = [v6 performSelector:*(a1 + 40)];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

@end