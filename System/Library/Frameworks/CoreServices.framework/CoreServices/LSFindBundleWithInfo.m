@interface LSFindBundleWithInfo
@end

@implementation LSFindBundleWithInfo

uint64_t ___LSFindBundleWithInfo_NoIOFiltered_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a3 + 12))
  {
    v5 = result;
    if (*(a3 + 292) == *(result + 56))
    {
      v6 = a2;
      result = *(result + 32);
      if (!result || (result = (*(result + 16))(result, v5[8], a2, a3), result))
      {
        *(*(v5[5] + 8) + 24) = v6;
        *(*(v5[6] + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return result;
}

@end