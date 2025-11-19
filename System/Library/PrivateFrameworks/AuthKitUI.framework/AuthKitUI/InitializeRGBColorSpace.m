@interface InitializeRGBColorSpace
@end

@implementation InitializeRGBColorSpace

CGColorSpaceRef ___InitializeRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  StandardRGB = result;
  return result;
}

@end