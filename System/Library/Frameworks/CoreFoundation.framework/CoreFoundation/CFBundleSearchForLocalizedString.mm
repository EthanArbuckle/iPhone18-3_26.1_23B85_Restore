@interface CFBundleSearchForLocalizedString
@end

@implementation CFBundleSearchForLocalizedString

uint64_t ___CFBundleSearchForLocalizedString_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___CFBundleSearchForLocalizedString_block_invoke_2;
  v7[3] = &unk_1E6DD14D0;
  v10 = a2;
  v11 = a4;
  v4 = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = v4;
  result = CFDictionaryApply(a3, v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___CFBundleSearchForLocalizedString_block_invoke_2(uint64_t a1, const void *a2, CFTypeRef cf1, _BYTE *a4)
{
  result = CFEqual(cf1, *(a1 + 40));
  if (result)
  {
    if (*(a1 + 48))
    {
      result = CFRetain(a2);
      **(a1 + 48) = result;
    }

    if (*(a1 + 56))
    {
      result = CFRetain(*(a1 + 64));
      **(a1 + 56) = result;
    }

    *a4 = 1;
    **(a1 + 72) = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

@end