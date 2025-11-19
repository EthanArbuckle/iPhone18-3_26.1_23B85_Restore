@interface ROMMRGBProfile
@end

@implementation ROMMRGBProfile

void __create_ROMMRGBProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, ROMM_RGB_data, 568, *MEMORY[0x1E695E498]);
  create_ROMMRGBProfile_profile = ColorSyncProfileCreateSingleton(23, v0, 0xE601651D4C83290ALL, 0x215F07F7EE846D24, @"/System/Library/ColorSync/Profiles/ROMM RGB.icc", 0, 0);

  CFRelease(v0);
}

@end