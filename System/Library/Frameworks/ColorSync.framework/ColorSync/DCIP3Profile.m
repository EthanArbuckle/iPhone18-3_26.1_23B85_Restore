@interface DCIP3Profile
@end

@implementation DCIP3Profile

void __create_DCIP3Profile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, DCI_P3_RGB_data, 556, *MEMORY[0x1E695E498]);
  create_DCIP3Profile_profile = ColorSyncProfileCreateSingleton(7, v0, 0x59B93261A1A0F5A0, 0x5FB18B06F3DF3918, @"/System/Library/ColorSync/Profiles/DCI(P3) RGB.icc", 0, 0);

  CFRelease(v0);
}

@end