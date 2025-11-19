@interface BT2020
@end

@implementation BT2020

void __BT2020_luminance_coefficients_block_invoke()
{
  BT2020_luminance_coefficients_coeffs_0 = 1049002141;
  BT2020_luminance_coefficients_coeffs_1 = 1059950952;
  BT2020_luminance_coefficients_coeffs_2 = 1030939791;
}

const void *__tags_define_BT2020_primaries_block_invoke()
{
  v0 = ColorSyncProfileCreateWithName(kColorSyncITUR2020Profile);
  tags_define_BT2020_primaries_r2020 = ColorSyncProfileGetTag(v0, @"rXYZ");
  tags_define_BT2020_primaries_g2020 = ColorSyncProfileGetTag(v0, @"gXYZ");
  result = ColorSyncProfileGetTag(v0, @"bXYZ");
  tags_define_BT2020_primaries_b2020 = result;
  return result;
}

@end