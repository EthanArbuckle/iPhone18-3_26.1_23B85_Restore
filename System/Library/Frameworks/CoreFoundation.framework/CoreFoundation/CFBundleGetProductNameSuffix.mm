@interface CFBundleGetProductNameSuffix
@end

@implementation CFBundleGetProductNameSuffix

CFStringRef ___CFBundleGetProductNameSuffix_block_invoke()
{
  if (_CFGetProductName_onceToken != -1)
  {
    ___CFBundleGetProductNameSuffix_block_invoke_cold_1();
  }

  v0 = _CFGetProductName__cfBundlePlatform;
  v1 = CFEqual(_CFGetProductName__cfBundlePlatform, @"ipod");
  v2 = @"iphone";
  if (!v1)
  {
    v2 = v0;
  }

  result = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"~%@", v2);
  _CFBundleGetProductNameSuffix__cfBundlePlatformSuffix = result;
  return result;
}

@end