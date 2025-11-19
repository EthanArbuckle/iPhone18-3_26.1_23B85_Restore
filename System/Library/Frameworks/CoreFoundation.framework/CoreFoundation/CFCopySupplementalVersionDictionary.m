@interface CFCopySupplementalVersionDictionary
@end

@implementation CFCopySupplementalVersionDictionary

void ___CFCopySupplementalVersionDictionary_block_invoke()
{
  Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, @"/System/Cryptexes/OS/System/Library/CoreServices/SystemVersion.plist");
  v1 = _CFCopyVersionDictionary(Copy);
  CFRelease(Copy);
  if (!v1)
  {
    v1 = _CFCopySystemVersionDictionary();
  }

  _CFCopySupplementalVersionDictionary_result = v1;
}

@end