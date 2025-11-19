@interface LSGetProductNameSuffix
@end

@implementation LSGetProductNameSuffix

CFStringRef ___LSGetProductNameSuffix_block_invoke()
{
  if (_LSGetProductName(void)::onceToken != -1)
  {
    ___LSGetProductNameSuffix_block_invoke_cold_1();
  }

  v0 = _LSGetProductName(void)::_cfBundlePlatform;
  v1 = CFEqual(_LSGetProductName(void)::_cfBundlePlatform, @"ipod");
  v2 = @"iphone";
  if (!v1)
  {
    v2 = v0;
  }

  result = CFStringCreateWithFormat(*MEMORY[0x1E695E4A8], 0, @"~%@", v2);
  _LSGetProductNameSuffix::suffix = result;
  return result;
}

@end