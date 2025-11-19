@interface NSBundle
- (id)ccui_displayName;
@end

@implementation NSBundle

- (id)ccui_displayName
{
  v3 = [(NSBundle *)self objectForInfoDictionaryKey:_kCFBundleDisplayNameKey];
  if (!v3)
  {
    v3 = [(NSBundle *)self objectForInfoDictionaryKey:kCFBundleNameKey];
    if (!v3)
    {
      v3 = [(NSBundle *)self objectForInfoDictionaryKey:kCFBundleExecutableKey];
      if (!v3)
      {
        v3 = [(NSBundle *)self bundleIdentifier];
      }
    }
  }

  return v3;
}

@end