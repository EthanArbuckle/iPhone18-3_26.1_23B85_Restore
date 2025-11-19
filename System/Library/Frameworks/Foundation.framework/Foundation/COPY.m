@interface COPY
@end

@implementation COPY

void __COPY_SETTER_IMPL_block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) copyWithZone:0];
  [a2 setObject:v4 forKey:*(a1 + 40)];
}

uint64_t __COPY_GETTER_IMPL_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 objectForKey:{*(a1 + 32)), "copyWithZone:", 0}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end