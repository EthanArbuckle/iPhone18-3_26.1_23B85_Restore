@interface CFStorageEnumerateNodesInByteRangeWithBlock
@end

@implementation CFStorageEnumerateNodesInByteRangeWithBlock

void *____CFStorageEnumerateNodesInByteRangeWithBlock_block_invoke(void *result, uint64_t a2)
{
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    v2 = result;
    v3 = (result[6] + 16 * a2);
    if (v3[1] >= 1)
    {
      v4 = *(result[10] + 8 * a2);
      v5 = result[11];
      v6 = result[4];
      result = __CFStorageEnumerateNodesInByteRangeWithBlock(result[7], *(result[8] + 8 * a2), v4 + result[9], *v3 - v4);
      if (result)
      {
        *(*(v2[5] + 8) + 24) = 1;
      }
    }
  }

  return result;
}

@end