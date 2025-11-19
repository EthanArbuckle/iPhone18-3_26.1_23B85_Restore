@interface CFBundleGetMostAppropriateLocTableDeviceAndPlatformSpecificVariants
@end

@implementation CFBundleGetMostAppropriateLocTableDeviceAndPlatformSpecificVariants

CFTypeRef ___CFBundleGetMostAppropriateLocTableDeviceAndPlatformSpecificVariants_block_invoke(uint64_t a1, const __CFString *a2)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v13 = 0;
  ProductNameSuffix = _CFBundleGetProductNameSuffix();
  PlatformNameSuffix = _CFBundleGetPlatformNameSuffix();
  _CFBundleSplitFileName(a2, cf, 0, 0, ProductNameSuffix, PlatformNameSuffix, 2, &v13);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  result = CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
  v8 = valuePtr;
  if ((valuePtr & 1) != 0 && v13 > *(*(*(a1 + 32) + 8) + 24))
  {
    v9 = *(*(*(a1 + 40) + 8) + 24);
    if (v9)
    {
      CFRelease(v9);
    }

    result = CFRetain(a2);
    *(*(*(a1 + 40) + 8) + 24) = result;
    *(*(*(a1 + 32) + 8) + 24) = v13;
    v8 = valuePtr;
  }

  if ((v8 & 2) != 0 && v13 > *(*(*(a1 + 48) + 8) + 24))
  {
    v10 = *(*(*(a1 + 56) + 8) + 24);
    if (v10)
    {
      CFRelease(v10);
    }

    result = CFRetain(a2);
    *(*(*(a1 + 56) + 8) + 24) = result;
    *(*(*(a1 + 48) + 8) + 24) = v13;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end