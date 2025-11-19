@interface CFBundleCopyLProjDirectoriesForURL
@end

@implementation CFBundleCopyLProjDirectoriesForURL

uint64_t ___CFBundleCopyLProjDirectoriesForURL_block_invoke(uint64_t a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5.length = *(a1 + 40);
  if (Length > v5.length)
  {
    v6 = Length;
    v5.location = Length - v5.length;
    if (CFStringCompareWithOptions(theString, *(a1 + 48), v5, 0) == kCFCompareEqualTo)
    {
      v10.length = v6 - *(a1 + 40);
      v10.location = 0;
      v7 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, theString, v10);
      v8 = *(*(*(a1 + 32) + 8) + 24);
      if (!v8)
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(*(a1 + 56), 0, &kCFTypeArrayCallBacks);
        v8 = *(*(*(a1 + 32) + 8) + 24);
      }

      CFArrayAppendValue(v8, v7);
      CFRelease(v7);
    }
  }

  return 1;
}

@end