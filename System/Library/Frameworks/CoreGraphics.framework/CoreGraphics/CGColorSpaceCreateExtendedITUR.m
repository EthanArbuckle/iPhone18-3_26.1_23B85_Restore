@interface CGColorSpaceCreateExtendedITUR
@end

@implementation CGColorSpaceCreateExtendedITUR

void __CGColorSpaceCreateExtendedITUR_2020_block_invoke()
{
  CGColorSpaceCreateExtendedITUR_2020_space = create_singleton(color_space_state_create_extended_itur_2020);
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedITUR_2020_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceITUR_2020");
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedITUR_2020_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceExtendedLinearITUR_2020");
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedITUR_2020_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceCreateExtendedITUR_2020_space);
  v0 = CGColorSpaceCreateExtendedITUR_2020_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearITUR_2020");
}

@end