@interface CFBundleCopyInfoDictionaryInDirectoryWithVersion
@end

@implementation CFBundleCopyInfoDictionaryInDirectoryWithVersion

BOOL ___CFBundleCopyInfoDictionaryInDirectoryWithVersion_block_invoke(uint64_t a1, CFStringRef theString)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    Length = CFStringGetLength(theString);
    if (Length == *(a1 + 48))
    {
      v7.length = Length;
      v7.location = 0;
      if (CFStringCompareWithOptions(theString, @"Info-iphoneos.plist", v7, 9uLL) == kCFCompareEqualTo)
      {
        *(*(*(a1 + 32) + 8) + 24) = CFURLCreateWithString(&__kCFAllocatorSystemDefault, *(a1 + 56), *(a1 + 64));
      }
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = CFStringGetLength(theString);
    if (v5 == *(a1 + 72))
    {
      v8.length = v5;
      v8.location = 0;
      if (CFStringCompareWithOptions(theString, @"Info.plist", v8, 9uLL) == kCFCompareEqualTo)
      {
        *(*(*(a1 + 40) + 8) + 24) = CFURLCreateWithString(&__kCFAllocatorSystemDefault, *(a1 + 80), *(a1 + 64));
      }
    }
  }

  return !*(*(*(a1 + 40) + 8) + 24) || !*(*(*(a1 + 32) + 8) + 24);
}

@end