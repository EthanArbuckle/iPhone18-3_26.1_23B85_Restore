@interface GenericLabProfile
@end

@implementation GenericLabProfile

void __create_GenericLabProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Generic_Lab_Profile_data, 3588, *MEMORY[0x1E695E498]);
  create_GenericLabProfile_profile = ColorSyncProfileCreateSingleton(27, v0, 0xC592F61D4A3BC000, 0x263ECD799E43830ELL, @"/System/Library/ColorSync/Profiles/Generic Lab Profile.icc", 0, 0);

  CFRelease(v0);
}

@end