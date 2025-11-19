@interface AXExtendedSRGBColorSpace
@end

@implementation AXExtendedSRGBColorSpace

CGColorSpaceRef ___AXExtendedSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  _AXExtendedSRGBColorSpace_ExtendedSRGBColorSpace = result;
  return result;
}

@end