@interface GenericGrayProfile
@end

@implementation GenericGrayProfile

void __create_GenericGrayProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Generic_Gray_Profile_data, 2020, *MEMORY[0x1E695E498]);
  create_GenericGrayProfile_profile = ColorSyncProfileCreateSingleton(1, v0, 0xF0FC5D0FD4191F4ALL, 0x46C7F6B9B6590F18, @"/System/Library/ColorSync/Profiles/Generic Gray Profile.icc", 0, 0);

  CFRelease(v0);
}

@end