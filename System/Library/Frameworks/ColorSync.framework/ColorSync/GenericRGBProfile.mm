@interface GenericRGBProfile
@end

@implementation GenericRGBProfile

void __create_GenericRGBProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Generic_RGB_Profile_data, 1992, *MEMORY[0x1E695E498]);
  create_GenericRGBProfile_profile = ColorSyncProfileCreateSingleton(13, v0, 0xE664562ABCFD7792, 0x1F9AAFEE4550CA87, @"/System/Library/ColorSync/Profiles/Generic RGB Profile.icc", 0, 0);

  CFRelease(v0);
}

@end