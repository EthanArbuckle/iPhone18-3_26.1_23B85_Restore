@interface NSURL(SwiftHelper)
- (CFURLRef)_EX_URLForBundleExecutable;
@end

@implementation NSURL(SwiftHelper)

- (CFURLRef)_EX_URLForBundleExecutable
{
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v1 = Unique;
    v2 = CFBundleCopyExecutableURL(Unique);
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end