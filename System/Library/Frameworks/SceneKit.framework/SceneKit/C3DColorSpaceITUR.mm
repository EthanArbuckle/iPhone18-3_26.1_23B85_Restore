@interface C3DColorSpaceITUR
@end

@implementation C3DColorSpaceITUR

CGColorSpaceRef __C3DColorSpaceITUR_709_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF488]);
  C3DColorSpaceITUR_709_kC3DColorSpaceITUR_709 = result;
  return result;
}

@end