@interface CFBundleCopyLocTableProvenanceForDeviceAndPlatformVariants
@end

@implementation CFBundleCopyLocTableProvenanceForDeviceAndPlatformVariants

void ___CFBundleCopyLocTableProvenanceForDeviceAndPlatformVariants_block_invoke(uint64_t a1, CFStringRef theString)
{
  v4 = *(a1 + 32);
  v7.length = CFStringGetLength(theString) - v4;
  v7.location = v4;
  v5 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, theString, v7);
  if (!CFDictionaryGetValue(*(a1 + 40), v5))
  {
    CFDictionarySetValue(*(a1 + 40), v5, *(a1 + 48));
  }

  CFRelease(v5);
}

@end