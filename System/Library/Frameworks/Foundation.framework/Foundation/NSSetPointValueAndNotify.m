@interface NSSetPointValueAndNotify
@end

@implementation NSSetPointValueAndNotify

uint64_t ___NSSetPointValueAndNotify_block_invoke(uint64_t a1)
{
  MethodImplementation = class_getMethodImplementation(**(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5.n128_u64[0] = *(a1 + 56);
  v6.n128_u64[0] = *(a1 + 64);

  return (MethodImplementation)(v3, v4, v5, v6);
}

@end