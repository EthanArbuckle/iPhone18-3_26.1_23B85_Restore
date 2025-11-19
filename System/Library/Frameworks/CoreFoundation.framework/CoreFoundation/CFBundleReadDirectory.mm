@interface CFBundleReadDirectory
@end

@implementation CFBundleReadDirectory

uint64_t ___CFBundleReadDirectory_block_invoke(uint64_t a1, const __CFString *a2, const void *a3)
{
  cf[1] = *MEMORY[0x1E69E9840];
  v26 = 0;
  cf[0] = 0;
  key = 0;
  v24 = 0;
  if (*(a1 + 88))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  _CFBundleSplitFileName(a2, &key, &v26, cf, *(a1 + 32), *(a1 + 40), v6, &v24);
  if (!*(a1 + 89))
  {
    CFArrayAppendValue(*(a1 + 48), a3);
  }

  if (cf[0])
  {
    _CFBundleAddValueForType(cf[0], *(a1 + 56), *(a1 + 64), a3, *(a1 + 72), *(a1 + 90));
  }

  if (v26)
  {
    _CFBundleAddValueForType(v26, *(a1 + 56), *(a1 + 64), a3, *(a1 + 72), *(a1 + 90));
  }

  v7 = v24 & 0xFFFFFFFB;
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (v7 == 1)
  {
    if (Value)
    {
      goto LABEL_40;
    }

    v9 = *(a1 + 56);
    v10 = a2;
    goto LABEL_39;
  }

  if (!Value)
  {
    CFDictionarySetValue(*(a1 + 56), a2, a3);
  }

  if (!key)
  {
    goto LABEL_40;
  }

  v11 = CFDictionaryGetValue(*(a1 + 56), key);
  if (!v11)
  {
    goto LABEL_38;
  }

  v12 = v11;
  v13 = *(a1 + 80);
  if (!v13)
  {
    goto LABEL_21;
  }

  if (!CFStringHasPrefix(v11, v13))
  {
    goto LABEL_40;
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    Length = CFStringGetLength(v14);
    v16 = CFStringGetLength(v12) - Length;
  }

  else
  {
LABEL_21:
    v16 = CFStringGetLength(v12);
    Length = 0;
  }

  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v19 = *(a1 + 88);
  v30.location = Length;
  v30.length = v16;
  if (!CFStringFindWithOptions(v12, @"~", v30, 0, 0))
  {
    goto LABEL_27;
  }

  if (CFStringGetLength(v18) == 1 || (v31.location = Length, v31.length = v16, !CFStringFindWithOptions(v12, v18, v31, 0, 0)))
  {
    v28.location = Length;
    v28.length = v16;
    if (_CFBundleSupportedProductName(v12, v28))
    {
      goto LABEL_40;
    }

LABEL_27:
    v20 = 3;
    v21 = 1;
    goto LABEL_28;
  }

  v20 = 4;
  v21 = 2;
LABEL_28:
  v32.location = Length;
  v32.length = v16;
  if (!CFStringFindWithOptions(v12, @"-", v32, 0, 0))
  {
    v20 = v21;
    goto LABEL_33;
  }

  v33.location = Length;
  v33.length = v16;
  if (CFStringFindWithOptions(v12, v17, v33, 0, 0) || (v29.location = Length, v29.length = v16, v20 = v21, !_CFBundleSupportedPlatformName(v12, v29)))
  {
LABEL_33:
    if (v20 != 3)
    {
      if (v20 == 2)
      {
        if (v24 != 4)
        {
          goto LABEL_40;
        }
      }

      else if (v20 != 1)
      {
        goto LABEL_40;
      }
    }

LABEL_38:
    v9 = *(a1 + 56);
    v10 = key;
LABEL_39:
    CFDictionarySetValue(v9, v10, a3);
  }

LABEL_40:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (key)
  {
    CFRelease(key);
  }

  v22 = *MEMORY[0x1E69E9840];
  return 1;
}

@end