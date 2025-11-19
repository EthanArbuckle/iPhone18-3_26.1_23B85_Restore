@interface CFBinaryPlistCreateObjectFiltered
@end

@implementation CFBinaryPlistCreateObjectFiltered

BOOL ____CFBinaryPlistCreateObjectFiltered_block_invoke(uint64_t a1, int8x16_t *a2, CFIndex a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    *v9 = 7;
  }

  if (!*(a1 + 40))
  {
    return 1;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  if (v10 == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 56) >> 31 == 0;
    *(a1 + 56);
  }

  if (v12)
  {
    v17 = CFStringCreateWithBytes(v11, a2, a3, 0x600u, 0);
    v14 = v17;
    if (v17)
    {
      if (*(a1 + 72))
      {
        if (malloc_size(v17))
        {
          v19 = *(a1 + 72);
          v18 = *(a1 + 80);
          v20 = __NSCreateBPlistMappedString();
          if (v20)
          {
            v21 = v20;
            CFRelease(v14);
            v14 = v21;
          }
        }
      }

      v22 = *(a1 + 88);
      if (v22)
      {
        CFDictionarySetValue(v22, *(a1 + 96), v14);
      }
    }
  }

  else
  {
    v13 = _CFStringCreateWithBytesNoCopyDisallowROM(v11, a2, a3, 0x600uLL, 0, &__kCFAllocatorNull, a7, a8);
    v14 = v13;
    if (v10 == 2)
    {
      if (v13)
      {
        MutableCopy = CFStringCreateMutableCopy(*(a1 + 64), 0, v13);
        CFRelease(v14);
        v14 = MutableCopy;
      }
    }
  }

  **(a1 + 40) = v14;
  return v14 != 0;
}

BOOL ____CFBinaryPlistCreateObjectFiltered_block_invoke_2(uint64_t a1, int8x16_t *a2, CFIndex a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    *v9 = 7;
  }

  if (!*(a1 + 40))
  {
    return 1;
  }

  if (a3)
  {
    if (a3 < 0)
    {
      return 0;
    }

    a3 *= 2;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  if (v10 == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 56) >> 31 == 0;
    *(a1 + 56);
  }

  if (v12)
  {
    v17 = CFStringCreateWithBytes(v11, a2, a3, 0x10000100u, 0);
    v14 = v17;
    if (v17)
    {
      if (*(a1 + 72))
      {
        if (malloc_size(v17))
        {
          v19 = *(a1 + 72);
          v18 = *(a1 + 80);
          v20 = __NSCreateBPlistMappedString();
          if (v20)
          {
            v21 = v20;
            CFRelease(v14);
            v14 = v21;
          }
        }
      }

      v22 = *(a1 + 88);
      if (v22)
      {
        CFDictionarySetValue(v22, *(a1 + 96), v14);
      }
    }
  }

  else
  {
    v13 = _CFStringCreateWithBytesNoCopyDisallowROM(v11, a2, a3, 0x10000100uLL, 0, &__kCFAllocatorNull, a7, a8);
    v14 = v13;
    if (v10 == 2)
    {
      if (v13)
      {
        MutableCopy = CFStringCreateMutableCopy(*(a1 + 64), 0, v13);
        CFRelease(v14);
        v14 = MutableCopy;
      }
    }
  }

  **(a1 + 40) = v14;
  return v14 != 0;
}

@end