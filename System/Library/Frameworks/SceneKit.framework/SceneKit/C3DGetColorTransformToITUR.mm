@interface C3DGetColorTransformToITUR
@end

@implementation C3DGetColorTransformToITUR

uint64_t __C3DGetColorTransformToITUR_709_block_invoke()
{
  if (C3DColorSpaceITUR_709_onceToken != -1)
  {
    C3DCGColorGetITUR_709Components_cold_1();
  }

  result = MEMORY[0x21CF06B50](C3DColorSpaceITUR_709_kC3DColorSpaceITUR_709, 0);
  C3DGetColorTransformToITUR_709_colorTransform = result;
  return result;
}

@end