@interface WebSafeColorsProfile
@end

@implementation WebSafeColorsProfile

void __create_WebSafeColorsProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, WebSafeColors_Profile_data, 11504, *MEMORY[0x1E695E498]);
  create_WebSafeColorsProfile_profile = ColorSyncProfileCreateSingleton(29, v0, 0x3FEBD58E84B1D53, 0x28AF40706F461B64, @"/Library/ColorSync/Profiles/WebSafeColors.icc", 0, 0);

  CFRelease(v0);
}

@end