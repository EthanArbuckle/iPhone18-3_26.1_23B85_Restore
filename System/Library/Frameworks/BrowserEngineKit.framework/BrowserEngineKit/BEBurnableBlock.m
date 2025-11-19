@interface BEBurnableBlock
@end

@implementation BEBurnableBlock

void __63___BEBurnableBlock_initWithTimeout_block_defaultInputProvider___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = (*(v2 + 16))();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [*(a1 + 32) performWithInput:v3];
}

@end