@interface AYCbCr8
@end

@implementation AYCbCr8

void __getBytesAtPositionCallback_AYCbCr8_block_invoke(void *a1, uint64_t a2, float a3)
{
  if (a1[6])
  {
    v4 = 0;
    v5 = a1[5];
    v6 = a2 + a1[4];
    do
    {
      a3 = Convert_one_YCC_to_RGB(118, 601, (v5 + v4), (v6 + v4 + 1), a3);
      *(v5 + v4 + 3) = *(v6 + v4);
      v4 += 4;
    }

    while (v4 < a1[6]);
  }
}

@end