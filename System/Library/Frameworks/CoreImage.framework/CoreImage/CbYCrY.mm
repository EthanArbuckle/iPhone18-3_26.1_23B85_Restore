@interface CbYCrY
@end

@implementation CbYCrY

void __getBytesAtPositionCallback_CbYCrY_block_invoke(void *a1, uint64_t a2, float a3)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = 0;
    v6 = a1[5];
    v7 = (a2 + a1[4] / 2 + 2);
    do
    {
      v8 = *(v7 - 2);
      if (((v5 + *(a1 + 8)) & 4) != 0)
      {
        v9 = *(v7 - 2);
        if (v5)
        {
          v8 = *(v7 - 4);
        }

        else
        {
          v8 = 0x80;
        }
      }

      else if (v5 >= v3 - 4)
      {
        v9 = 0x80;
      }

      else
      {
        v9 = *v7;
      }

      v10[0] = *(v7 - 1);
      v10[1] = v8;
      v10[2] = v9;
      a3 = Convert_one_YCC_to_RGB(118, 601, (v6 + v5), v10, a3);
      *(v6 + v5 + 3) = -1;
      v5 += 4;
      v3 = a1[6];
      v7 += 2;
    }

    while (v5 < v3);
  }
}

@end