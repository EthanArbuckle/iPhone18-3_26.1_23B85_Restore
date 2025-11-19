@interface ITUR2020Profile
@end

@implementation ITUR2020Profile

void __create_ITUR2020Profile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, ITU_2020_data, 556, *MEMORY[0x1E695E498]);
  create_ITUR2020Profile_profile = ColorSyncProfileCreateSingleton(15, v0, 0xB27E1129BDCD7920, 0x69BE8BF62DA6400FLL, @"/System/Library/ColorSync/Profiles/ITU-2020.icc", 3, 10);

  CFRelease(v0);
}

@end