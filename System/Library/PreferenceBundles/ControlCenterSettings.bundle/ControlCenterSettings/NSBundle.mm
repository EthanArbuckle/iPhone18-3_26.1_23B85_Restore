@interface NSBundle
- (id)ccui_displayName;
@end

@implementation NSBundle

- (id)ccui_displayName
{
  bundleIdentifier = [(NSBundle *)self objectForInfoDictionaryKey:_kCFBundleDisplayNameKey];
  if (!bundleIdentifier)
  {
    bundleIdentifier = [(NSBundle *)self objectForInfoDictionaryKey:kCFBundleNameKey];
    if (!bundleIdentifier)
    {
      bundleIdentifier = [(NSBundle *)self objectForInfoDictionaryKey:kCFBundleExecutableKey];
      if (!bundleIdentifier)
      {
        bundleIdentifier = [(NSBundle *)self bundleIdentifier];
      }
    }
  }

  return bundleIdentifier;
}

@end