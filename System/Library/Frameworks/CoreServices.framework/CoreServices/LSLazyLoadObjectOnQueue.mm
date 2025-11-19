@interface LSLazyLoadObjectOnQueue
@end

@implementation LSLazyLoadObjectOnQueue

void ___LSLazyLoadObjectOnQueue_block_invoke_2(uint64_t a1)
{
  v2 = **(a1 + 48);
  if (!v2)
  {
    v3 = (*(*(a1 + 32) + 16))();
    v4 = *(a1 + 48);
    v2 = v3;
    v5 = *v4;
    *v4 = v2;
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v2;
}

@end