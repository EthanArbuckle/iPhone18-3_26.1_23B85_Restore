@interface GETTER
@end

@implementation GETTER

id __GETTER_IMPL_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 objectForKey:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end