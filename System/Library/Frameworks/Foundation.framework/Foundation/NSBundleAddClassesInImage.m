@interface NSBundleAddClassesInImage
@end

@implementation NSBundleAddClassesInImage

NSString *___NSBundleAddClassesInImage_block_invoke(uint64_t a1, Class aClass, _BYTE *a3)
{
  result = NSStringFromClass(aClass);
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a3 = 1;
  return result;
}

@end