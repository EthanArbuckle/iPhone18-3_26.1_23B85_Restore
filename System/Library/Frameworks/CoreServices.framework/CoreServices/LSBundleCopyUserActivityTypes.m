@interface LSBundleCopyUserActivityTypes
@end

@implementation LSBundleCopyUserActivityTypes

void ___LSBundleCopyUserActivityTypes_block_invoke(uint64_t a1)
{
  [(_LSDatabase *)*(a1 + 32) store];
  v2 = _CSStringCopyCFString();
  if (v2)
  {
    v3 = v2;
    CFSetAddValue(*(a1 + 40), v2);

    CFRelease(v3);
  }
}

@end