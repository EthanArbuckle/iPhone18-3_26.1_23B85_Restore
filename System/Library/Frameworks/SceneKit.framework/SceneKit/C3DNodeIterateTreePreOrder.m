@interface C3DNodeIterateTreePreOrder
@end

@implementation C3DNodeIterateTreePreOrder

uint64_t ___C3DNodeIterateTreePreOrder_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = _C3DNodeIterateTreePreOrder(a2, *(a1 + 32), *(a1 + 40));
  if (result == 3)
  {
    *a4 = 1;
  }

  return result;
}

@end