@interface GenericGrayGamma22Profile
@end

@implementation GenericGrayGamma22Profile

void __create_GenericGrayGamma22Profile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Generic_Gray_Gamma_2_2_Profile_data, 4508, *MEMORY[0x1E695E498]);
  create_GenericGrayGamma22Profile_profile = ColorSyncProfileCreateSingleton(2, v0, 0x66791D3DAEE412BALL, 0xAD78CFFBDCE4AD16, @"/System/Library/ColorSync/Profiles/Generic Gray Gamma 2.2 Profile.icc", 0, 0);

  CFRelease(v0);
}

@end