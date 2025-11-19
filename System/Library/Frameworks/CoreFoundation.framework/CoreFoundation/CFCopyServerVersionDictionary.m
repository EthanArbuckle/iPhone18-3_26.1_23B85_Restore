@interface CFCopyServerVersionDictionary
@end

@implementation CFCopyServerVersionDictionary

void ___CFCopyServerVersionDictionary_block_invoke()
{
  Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, @"/System/Library/CoreServices/ServerVersion.plist");
  v1 = _CFCopyVersionDictionary(Copy);
  CFRelease(Copy);
  _CFCopyServerVersionDictionary_result = v1;
}

@end