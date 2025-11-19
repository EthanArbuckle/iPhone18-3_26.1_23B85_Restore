@interface A008
@end

@implementation A008

void *__getBytesAtPositionCallback_A008_block_invoke(void *result, uint64_t a2)
{
  if (result[6])
  {
    v2 = 0;
    v3 = result[5];
    v4 = (a2 + result[4] / 4);
    do
    {
      v5 = v3 + v2;
      *v5 = 0;
      *(v5 + 2) = 0;
      v6 = *v4++;
      *(v5 + 3) = v6;
      v2 += 4;
    }

    while (v2 < result[6]);
  }

  return result;
}

@end