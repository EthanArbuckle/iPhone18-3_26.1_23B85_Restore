@interface CGColorSpaceCreateExtendedLinearITUR
@end

@implementation CGColorSpaceCreateExtendedLinearITUR

void __CGColorSpaceCreateExtendedLinearITUR_2020_block_invoke()
{
  CGColorSpaceCreateExtendedLinearITUR_2020_space = create_singleton(color_space_state_create_extended_linear_itur_2020);
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedLinearITUR_2020_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceLinearITUR_2020");
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedLinearITUR_2020_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceCreateExtendedLinearITUR_2020_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedLinearITUR_2020_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceCreateExtendedLinearITUR_2020_space);
  v0 = CGColorSpaceCreateExtendedLinearITUR_2020_space;
  v1 = CGColorSpaceCreateExtendedLinearITUR_2020_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", v1);
}

@end