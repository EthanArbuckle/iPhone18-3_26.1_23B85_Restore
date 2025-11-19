@interface CGColorSpaceCreateLinearITUR
@end

@implementation CGColorSpaceCreateLinearITUR

void __CGColorSpaceCreateLinearITUR_2020_block_invoke()
{
  CGColorSpaceCreateLinearITUR_2020_space = create_singleton(color_space_state_create_linear_itur_2020);
  CGColorSpaceSetProperty(CGColorSpaceCreateLinearITUR_2020_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceCreateLinearITUR_2020_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateLinearITUR_2020_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceCreateLinearITUR_2020_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateLinearITUR_2020_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedLinearITUR_2020");
  v0 = CGColorSpaceCreateLinearITUR_2020_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearITUR_2020");
}

@end