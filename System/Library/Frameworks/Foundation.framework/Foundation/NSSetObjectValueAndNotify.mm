@interface NSSetObjectValueAndNotify
@end

@implementation NSSetObjectValueAndNotify

uint64_t ___NSSetObjectValueAndNotify_block_invoke(uint64_t a1)
{
  MethodImplementation = class_getMethodImplementation(**(a1 + 48), *(a1 + 56));
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return (MethodImplementation)(v4, v3, v5);
}

@end