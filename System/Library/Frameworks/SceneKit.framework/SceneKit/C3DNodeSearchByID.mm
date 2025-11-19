@interface C3DNodeSearchByID
@end

@implementation C3DNodeSearchByID

uint64_t ___C3DNodeSearchByID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = _C3DNodeSearchByID(a2, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

@end