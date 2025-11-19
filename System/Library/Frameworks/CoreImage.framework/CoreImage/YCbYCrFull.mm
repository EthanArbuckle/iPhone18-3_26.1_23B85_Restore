@interface YCbYCrFull
@end

@implementation YCbYCrFull

void *__getBytesAtPositionCallback_YCbYCrFull_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = 0;
    v4 = result[5];
    v5 = (a2 + result[4] / 2);
    do
    {
      v6 = v5[1];
      if (((v3 + *(result + 8)) & 4) != 0)
      {
        v7 = v5[1];
        if (v3)
        {
          v6 = *(v5 - 1);
        }

        else
        {
          v6 = 128;
        }
      }

      else if (v3 >= v2 - 4)
      {
        v7 = 128;
      }

      else
      {
        v7 = v5[3];
      }

      v8 = *v5;
      v5 += 2;
      v9 = v7;
      v10 = (v4 + v3);
      v11 = v6 + -128.0;
      v12 = v9 + -128.0;
      *v10 = llroundf(fmaxf(fminf((v12 * 1.4075) + v8, 255.0), 0.0));
      v10[1] = llroundf(fmaxf(fminf((v8 + (v11 * -0.34549)) + (v12 * -0.71695), 255.0), 0.0));
      v10[2] = llroundf(fmaxf(fminf((v11 * 1.779) + v8, 255.0), 0.0));
      v10[3] = -1;
      v3 += 4;
      v2 = result[6];
    }

    while (v3 < v2);
  }

  return result;
}

@end