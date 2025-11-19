@interface NSIndexSetEnumerate
@end

@implementation NSIndexSetEnumerate

uint64_t ____NSIndexSetEnumerate_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = atomic_load((*(*(result + 48) + 8) + 24));
  if ((v2 & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 72);
    v5 = *(result + 64) + v4 * a2;
    v6 = v4 + v5 - 1;
    if (v6 >= *(result + 80))
    {
      v7 = *(result + 80);
    }

    else
    {
      v7 = v6;
    }

    result = __NSIndexSetChunkIterate(*(result + 32), *(result + 88), v5, v7, *(result + 96), *(result + 104), *(result + 40), (*(*(result + 56) + 8) + 24));
    atomic_store(result, (*(*(v3 + 48) + 8) + 24));
  }

  return result;
}

@end