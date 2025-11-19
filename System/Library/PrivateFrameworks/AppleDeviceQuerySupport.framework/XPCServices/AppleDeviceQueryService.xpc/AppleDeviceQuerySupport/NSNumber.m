@interface NSNumber
+ (id)BOOLFromData:(id)a3 needNegate:(BOOL)a4;
+ (id)integerFromCInt:(unint64_t)a3 size:(unint64_t)a4 isSigned:(BOOL)a5 needSwap:(BOOL)a6;
@end

@implementation NSNumber

+ (id)integerFromCInt:(unint64_t)a3 size:(unint64_t)a4 isSigned:(BOOL)a5 needSwap:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = 0;
  if (a3)
  {
    v11 = a3;
    do
    {
      ++v10;
      v12 = v11 >= 0x100;
      v11 >>= 8;
    }

    while (v12);
  }

  if (a4 > 8 || ((1 << a4) & 0x116) == 0)
  {
    v20 = [NSNumber numberWithUnsignedLong:a4];
    ZhuGeLog(524800, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/NSNumber+ZhuGe.m", "+[NSNumber(ZhuGe) integerFromCInt:size:isSigned:needSwap:]", 31, @"Required size is %@, while usually it should be %@ or %@ or %@ or %@", v21, v22, v23, v20);
  }

  if (v10 > a4)
  {
    v13 = [NSNumber numberWithUnsignedLong:v10];
    v28 = [NSNumber numberWithUnsignedLong:a4];
    ZhuGeLog(524800, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/NSNumber+ZhuGe.m", "+[NSNumber(ZhuGe) integerFromCInt:size:isSigned:needSwap:]", 36, @"Bits will be truncated since real size is %@, while required size is %@", v14, v15, v16, v13);

    v9 &= 0xFFFFFFFFFFFFFFFFLL >> (-8 * a4);
  }

  if (a4 > 2)
  {
    if (a4 - 3 < 2)
    {
      v18 = bswap32(v9);
      if (v6)
      {
        v19 = v18;
      }

      else
      {
        v19 = v9;
      }

      if (a5)
      {
        [NSNumber numberWithInt:v19];
      }

      else
      {
        [NSNumber numberWithUnsignedInt:v19];
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if (!a4)
  {
    v24 = &off_1000176F8;
    goto LABEL_36;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v17 = bswap32(v9) >> 16;
      if (!v6)
      {
        LOWORD(v17) = v9;
      }

      if (a5)
      {
        [NSNumber numberWithShort:v17];
      }

      else
      {
        [NSNumber numberWithUnsignedShort:v17];
      }

      goto LABEL_32;
    }

LABEL_27:
    v25 = bswap64(v9);
    if (v6)
    {
      v26 = v25;
    }

    else
    {
      v26 = v9;
    }

    if (a5)
    {
      [NSNumber numberWithLongLong:v26];
    }

    else
    {
      [NSNumber numberWithUnsignedLongLong:v26];
    }

    goto LABEL_32;
  }

  if (a5)
  {
    [NSNumber numberWithChar:v9];
  }

  else
  {
    [NSNumber numberWithUnsignedChar:v9];
  }

  v24 = LABEL_32:;
LABEL_36:

  return v24;
}

+ (id)BOOLFromData:(id)a3 needNegate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 bytes];
    v8 = [v6 length];
    if (*v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = memcmp(v7, v7 + 1, v8 - 1) != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [NSNumber numberWithBool:v9 ^ v4];

  return v10;
}

@end