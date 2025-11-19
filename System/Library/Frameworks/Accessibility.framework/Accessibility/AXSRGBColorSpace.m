@interface AXSRGBColorSpace
@end

@implementation AXSRGBColorSpace

CGColorSpaceRef ___AXSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  _AXSRGBColorSpace_RGBColorSpace = result;
  return result;
}

@end