@interface AdobeRGB1998Profile
@end

@implementation AdobeRGB1998Profile

void __create_AdobeRGB1998Profile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, AdobeRGB1998_data, 560, *MEMORY[0x1E695E498]);
  create_AdobeRGB1998Profile_profile = ColorSyncProfileCreateSingleton(5, v0, 0xF6D599D88283A8DELL, 0x38E13A4732B473E5, @"/System/Library/ColorSync/Profiles/AdobeRGB1998.icc", 0, 0);

  CFRelease(v0);
}

@end