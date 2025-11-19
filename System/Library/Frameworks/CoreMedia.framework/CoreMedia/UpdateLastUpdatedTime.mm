@interface UpdateLastUpdatedTime
@end

@implementation UpdateLastUpdatedTime

void __figMobileAsset_UpdateLastUpdatedTime_block_invoke(uint64_t a1)
{
  if (figMobileAsset_IsAssetTypeRegistered(*(a1 + 32)))
  {
    Value = CFDictionaryGetValue(_MergedGlobals_7, *(a1 + 32));
    Value[5] = CFAbsoluteTimeGetCurrent();
    v3 = *MEMORY[0x1E695E8B8];
    v4 = *MEMORY[0x1E695E898];
    v5 = CFPreferencesCopyValue(@"mobileAssetUpdateTimes", @"com.apple.celestial", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v6 = v5;
    if (v5 && (v7 = CFGetTypeID(v5), v7 == CFDictionaryGetTypeID()))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v15 = MutableCopy;
    FigCFDictionarySetDouble(MutableCopy, *(a1 + 32), Value[5], v9, v10, v11, v12, v13, v14);
    CFPreferencesSetValue(@"mobileAssetUpdateTimes", v15, @"com.apple.celestial", v3, v4);
    CFPreferencesSynchronize(@"com.apple.celestial", v3, v4);
  }

  else
  {
    v15 = 0;
    v6 = 0;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v15)
  {

    CFRelease(v15);
  }
}

@end