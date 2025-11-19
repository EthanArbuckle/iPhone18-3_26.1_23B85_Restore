@interface CFCopySystemVersionPlatformDictionary
@end

@implementation CFCopySystemVersionPlatformDictionary

void ___CFCopySystemVersionPlatformDictionary_block_invoke()
{
  Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, @"/System/Library/CoreServices/.SystemVersionPlatform.plist");
  v1 = _CFCopyVersionDictionary(Copy);
  CFRelease(Copy);
  if (!v1)
  {
    v1 = _CFCopySystemVersionDictionary();
  }

  _CFCopySystemVersionPlatformDictionary_result = v1;
}

@end