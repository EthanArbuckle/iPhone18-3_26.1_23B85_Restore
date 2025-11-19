@interface LSLazyLoadObjectForKey
@end

@implementation LSLazyLoadObjectForKey

void ___LSLazyLoadObjectForKey_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___LSLazyLoadObjectForKey_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v2 = (*(*(a1 + 48) + 16))();
    if (v2)
    {
      [*(a1 + 32) setObject:v2 forKeyedSubscript:*(a1 + 40)];
    }
  }

  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end