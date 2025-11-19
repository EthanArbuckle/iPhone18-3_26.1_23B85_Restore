@interface DisplayP3
@end

@implementation DisplayP3

void __DisplayP3_luminance_coefficients_block_invoke()
{
  DisplayP3_luminance_coefficients_coeffs_0 = 1047166714;
  DisplayP3_luminance_coefficients_coeffs_1 = 1060180800;
  DisplayP3_luminance_coefficients_coeffs_2 = 1034053642;
}

void __create_DisplayP3_709OETFProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Display_P3_ITU_709OETF_data, 568, *MEMORY[0x1E695E498]);
  create_DisplayP3_709OETFProfile_profile = ColorSyncProfileCreateSingleton(10, v0, 0xB3E433111801BD50, 0xD1400D5DFBE11BEBLL, @"/System/Library/ColorSync/Profiles/Display P3-ITU-709OETF.icc", 2, 0);

  CFRelease(v0);
}

void __create_DisplayP3_HLGProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Display_P3_HLG_data, 7168, *MEMORY[0x1E695E498]);
  create_DisplayP3_HLGProfile_profile = ColorSyncProfileCreateSingleton(9, v0, 0x6EF884CEA7181386, 0xDC7450C64BBE6A23, @"/System/Library/ColorSync/Profiles/Display P3-HLG.icc", 2, 0);

  CFRelease(v0);
}

void __create_DisplayP3_PQProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Display_P3_PQ_data, 13312, *MEMORY[0x1E695E498]);
  create_DisplayP3_PQProfile_profile = ColorSyncProfileCreateSingleton(12, v0, 0x8C5987200AC97799, 0x58B6D11F9BE59A4BLL, @"/System/Library/ColorSync/Profiles/Display P3-PQ.icc", 2, 0);

  CFRelease(v0);
}

const void *__tags_define_DisplayP3_primaries_block_invoke()
{
  v0 = ColorSyncProfileCreateWithName(kColorSyncDisplayP3Profile);
  tags_define_DisplayP3_primaries_rDP3 = ColorSyncProfileGetTag(v0, @"rXYZ");
  tags_define_DisplayP3_primaries_gDP3 = ColorSyncProfileGetTag(v0, @"gXYZ");
  result = ColorSyncProfileGetTag(v0, @"bXYZ");
  tags_define_DisplayP3_primaries_bDP3 = result;
  return result;
}

void __create_DisplayP3_Linear_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Display_P3_Linear_data, 536, *MEMORY[0x1E695E498]);
  create_DisplayP3_Linear_profile = ColorSyncProfileCreateSingleton(11, v0, 0xBBC5F8210C291D77, 0x9D6880E5907BC42BLL, @"/System/Library/ColorSync/Profiles/Display P3 Linear.icc", 2, 0);

  CFRelease(v0);
}

void __create_DisplayP3_legacy_Profile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Display_P3_legacy_data, 548, *MEMORY[0x1E695E498]);
  create_DisplayP3_legacy_Profile_profile = ColorSyncProfileCreateSingleton(0, v0, 0xCD46BD67980EBBE5, 0x98751BBD6E44BE4BLL, @"/System/Library/ColorSync/Profiles/Display P3.icc", 2, 6);

  CFRelease(v0);
}

void __create_DisplayP3_legacy_2_Profile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Display_P3_legacy_2_data, 548, *MEMORY[0x1E695E498]);
  create_DisplayP3_legacy_2_Profile_profile = ColorSyncProfileCreateSingleton(0, v0, 0x4D107F2582951ACALL, 0x8215EAD1D5139938, @"/System/Library/ColorSync/Profiles/Display P3.icc", 2, 6);

  CFRelease(v0);
}

@end