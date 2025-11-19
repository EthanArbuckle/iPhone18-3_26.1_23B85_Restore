@interface CbYCrYFull
@end

@implementation CbYCrYFull

float __getBytesAtPositionCallback_CbYCrYFull_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = 0;
    v4 = a1[5];
    v5 = (a2 + a1[4] / 2 + 2);
    result = -128.0;
    do
    {
      v7 = *(v5 - 2);
      if (((v3 + *(a1 + 8)) & 4) != 0)
      {
        v8 = *(v5 - 2);
        if (v3)
        {
          v7 = *(v5 - 4);
        }

        else
        {
          v7 = 128;
        }
      }

      else if (v3 >= v2 - 4)
      {
        v8 = 128;
      }

      else
      {
        v8 = *v5;
      }

      v9 = *(v5 - 1);
      v10 = v8;
      v11 = (v4 + v3);
      v12 = v7 + -128.0;
      v13 = v10 + -128.0;
      *v11 = llroundf(fmaxf(fminf((v13 * 1.4075) + v9, 255.0), 0.0));
      v11[1] = llroundf(fmaxf(fminf((v9 + (v12 * -0.34549)) + (v13 * -0.71695), 255.0), 0.0));
      v11[2] = llroundf(fmaxf(fminf((v12 * 1.779) + v9, 255.0), 0.0));
      v11[3] = -1;
      v3 += 4;
      v2 = a1[6];
      v5 += 2;
    }

    while (v3 < v2);
  }

  return result;
}

@end