@interface NSArrayGetIndexesPassingTest
@end

@implementation NSArrayGetIndexesPassingTest

uint64_t ____NSArrayGetIndexesPassingTest_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = atomic_load((*(*(result + 64) + 8) + 24));
  if ((v2 & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 80);
    v5 = *(result + 72) + v4 * a2;
    if (v4 + v5 - 1 >= *(result + 88))
    {
      v6 = *(result + 88);
    }

    else
    {
      v6 = v4 + v5 - 1;
    }

    result = __NSArrayChunkIterate(*(result + 32), *(result + 96), v5, v6, *(result + 40), *(result + 56), 0, *(result + 48), *(result + 104));
    atomic_store(result, (*(*(v3 + 64) + 8) + 24));
  }

  return result;
}

@end