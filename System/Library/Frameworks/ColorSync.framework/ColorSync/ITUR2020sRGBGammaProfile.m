@interface ITUR2020sRGBGammaProfile
@end

@implementation ITUR2020sRGBGammaProfile

void __create_ITUR2020sRGBGammaProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, ITU_2020_sRGB_Gamma_data, 580, *MEMORY[0x1E695E498]);
  create_ITUR2020sRGBGammaProfile_profile = ColorSyncProfileCreateSingleton(17, v0, 0xDFBD2546F36E1D77, 0x73271EC979C26938, @"/System/Library/ColorSync/Profiles/ITU-2020-sRGB-gamma.icc", 3, 14);

  CFRelease(v0);
}

@end