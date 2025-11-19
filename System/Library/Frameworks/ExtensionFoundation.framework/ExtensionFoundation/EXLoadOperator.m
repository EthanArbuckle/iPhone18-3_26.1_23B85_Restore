@interface EXLoadOperator
@end

@implementation EXLoadOperator

void __33___EXLoadOperator_allocWithZone___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = &OBJC_METACLASS____EXLoadOperator;
  v2 = objc_msgSendSuper2(&v4, sel_allocWithZone_, v1);
  v3 = allocWithZone__factory;
  allocWithZone__factory = v2;
}

@end