@interface C3DShapeBoundariesSort
@end

@implementation C3DShapeBoundariesSort

__n128 __C3DShapeBoundariesSort_block_invoke_2(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a3 + 6);
  v5 = a3[1];
  result = a3[2];
  v6 = *a3;
  v8 = a2[1];
  v7 = a2[2];
  v9 = *a2;
  *(a3 + 6) = *(a2 + 6);
  a3[1] = v8;
  a3[2] = v7;
  *a3 = v9;
  *a2 = v6;
  a2[1] = v5;
  a2[2] = result;
  *(a2 + 6) = v3;
  return result;
}

@end