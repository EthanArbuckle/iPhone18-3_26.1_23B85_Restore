@interface NSBPlistMappedString
@end

@implementation NSBPlistMappedString

uint64_t __45___NSBPlistMappedString_getCharacters_range___block_invoke(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = dyld_program_sdk_at_least();
  v6 = a1[6];
  v7 = a1[7];
  if (v7 + v6 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7 + v6;
  }

  if (v7 + v6)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v8 - v6;
  if (v6 < a3)
  {
    v12 = a1[6];
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a3)
  {
    v10 = v11;
  }

  if (v5)
  {
    v13 = a1[7];
  }

  else
  {
    v13 = v10;
  }

  if ((v5 & 1) == 0)
  {
    v6 = v12;
  }

  if (v6 + v13 <= a3)
  {
    __CFStrConvertBytesToUnicode();
  }

  else
  {
    *(*(a1[4] + 8) + 24) = a3;
    *(*(a1[5] + 8) + 24) = 1;
  }

  return 1;
}

uint64_t __45___NSBPlistMappedString_getCharacters_range___block_invoke_2(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = dyld_program_sdk_at_least();
  v8 = a1[6];
  v7 = a1[7];
  if (v7 + v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7 + v8;
  }

  if (v7 + v8)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v9 - v8;
  if (v8 < a3)
  {
    v13 = a1[6];
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v11 = v12;
  }

  if ((v6 & 1) == 0)
  {
    v7 = v11;
    v8 = v13;
  }

  if (v8 + v7 <= a3)
  {
    if (v7)
    {
      v14 = (a2 + 2 * v8);
      v15 = a1[8];
      do
      {
        v16 = *v14++;
        *v15++ = bswap32(v16) >> 16;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = a3;
    *(*(a1[5] + 8) + 24) = 1;
  }

  return 1;
}

@end