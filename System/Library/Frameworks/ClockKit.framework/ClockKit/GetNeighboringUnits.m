@interface GetNeighboringUnits
@end

@implementation GetNeighboringUnits

void *___GetNeighboringUnits_block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = result[7];
  v4 = *(*(result[5] + 8) + 24);
  if (v3 == a2)
  {
    *(*(result[4] + 8) + 24) = v4;
  }

  else if (v4 == v3)
  {
    *(*(result[6] + 8) + 24) = a2;
    *a3 = 1;
  }

  *(*(result[5] + 8) + 24) = a2;
  return result;
}

@end