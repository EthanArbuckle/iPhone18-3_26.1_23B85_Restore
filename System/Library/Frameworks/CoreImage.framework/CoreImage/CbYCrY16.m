@interface CbYCrY16
@end

@implementation CbYCrY16

void *__getBytesAtPositionCallback_CbYCrY16_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = 0;
    v4 = result[5];
    v5 = ((result[4] + (result[4] >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a2 - 4;
    do
    {
      v6 = *(v5 + v3 + 4);
      if (((v3 + *(result + 8)) & 4) != 0)
      {
        v7 = *(v5 + v3 + 4);
        if (v3)
        {
          v6 = *(v5 + v3);
        }

        else
        {
          v6 = 0x8000;
        }
      }

      else if (v3 >= v2 - 4)
      {
        v7 = 0x8000;
      }

      else
      {
        v7 = *(v5 + v3 + 8);
      }

      v8 = (v4 + v3);
      v9 = *(v5 + v3 + 6) + -4096.0;
      v10 = v6 + -32768.0;
      v11 = (v10 * 2.0232) + (v9 * 1.1678);
      v12 = v7 + -32768.0;
      v13 = ((v10 * -0.39291) + (v9 * 1.1678)) + (v12 * -0.81536);
      v14 = ((v12 * 1.6007) + (v9 * 1.1678)) * 0.00389105058;
      v15 = v13 * 0.00389105058;
      v16 = v11 * 0.00389105058;
      *v8 = llroundf(fmaxf(fminf(v14, 255.0), 0.0));
      v8[1] = llroundf(fmaxf(fminf(v15, 255.0), 0.0));
      v8[2] = llroundf(fmaxf(fminf(v16, 255.0), 0.0));
      v8[3] = -1;
      v3 += 4;
      v2 = result[6];
    }

    while (v3 < v2);
  }

  return result;
}

@end