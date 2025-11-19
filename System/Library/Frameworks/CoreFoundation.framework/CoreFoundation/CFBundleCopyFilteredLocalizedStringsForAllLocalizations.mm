@interface CFBundleCopyFilteredLocalizedStringsForAllLocalizations
@end

@implementation CFBundleCopyFilteredLocalizedStringsForAllLocalizations

void ___CFBundleCopyFilteredLocalizedStringsForAllLocalizations_block_invoke(uint64_t a1, void *a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = a2;
  v3 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
  v4 = _copyStringTable(*(a1 + 32), *(a1 + 40), *(a1 + 48), v3, 0, 0);
  CFRelease(v3);
  Count = CFSetGetCount(*(a1 + 48));
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___CFBundleCopyFilteredLocalizedStringsForAllLocalizations_block_invoke_2;
  v9[3] = &__block_descriptor_48_e13_v24__0r_v8_16l;
  v9[4] = v4;
  v9[5] = Mutable;
  CFSetApply(v7, v9);
  if (CFDictionaryGetCount(Mutable) >= 1)
  {
    CFDictionarySetValue(*(a1 + 56), values[0], Mutable);
  }

  CFRelease(v4);
  CFRelease(Mutable);
  v8 = *MEMORY[0x1E69E9840];
}

void ___CFBundleCopyFilteredLocalizedStringsForAllLocalizations_block_invoke_2(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v5 = Value;
    v6 = *(a1 + 40);

    CFDictionarySetValue(v6, a2, v5);
  }
}

@end