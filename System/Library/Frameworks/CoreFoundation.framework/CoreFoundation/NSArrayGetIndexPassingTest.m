@interface NSArrayGetIndexPassingTest
@end

@implementation NSArrayGetIndexPassingTest

uint64_t ____NSArrayGetIndexPassingTest_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = atomic_load((*(*(result + 56) + 8) + 24));
  if ((v2 & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 80);
    v5 = *(result + 72) + v4 * a2;
    v6 = v4 + v5 - 1;
    if (v6 >= *(result + 88))
    {
      v7 = *(result + 88);
    }

    else
    {
      v7 = v6;
    }

    result = __NSArrayChunkIterate(*(result + 32), *(result + 96), v5, v7, *(result + 40), *(result + 48), (*(*(result + 64) + 8) + 24), 0, 0);
    atomic_store(result, (*(*(v3 + 56) + 8) + 24));
  }

  return result;
}

@end