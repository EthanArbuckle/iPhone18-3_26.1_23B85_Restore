@interface ITUR2020
@end

@implementation ITUR2020

void __create_ITUR2020_HLGProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, ITU_2020_HLG_data, 7332, *MEMORY[0x1E695E498]);
  create_ITUR2020_HLGProfile_profile = ColorSyncProfileCreateSingleton(0, v0, 0xEB6713A849320FACLL, 0x763F8C82605C0EC8, @"/System/Library/ColorSync/Profiles/ITU-2020-HLG.icc", 3, 0);

  CFRelease(v0);
}

void __create_ITUR2020_PQProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, ITU_2020_PQ_data, 13476, *MEMORY[0x1E695E498]);
  create_ITUR2020_PQProfile_profile = ColorSyncProfileCreateSingleton(0, v0, 0xD87ACDFAFC0D2215, 0xCDE9D50165028BF4, @"/System/Library/ColorSync/Profiles/ITU-2020-PQ.icc", 3, 0);

  CFRelease(v0);
}

void __create_ITUR2020_Linear_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, ITU_2020_Linear_data, 556, *MEMORY[0x1E695E498]);
  create_ITUR2020_Linear_profile = ColorSyncProfileCreateSingleton(16, v0, 0xAB764D93CE5099A0, 0xE06C4706A964715BLL, @"/System/Library/ColorSync/Profiles/ITU-2020-Linear.icc", 3, 0);

  CFRelease(v0);
}

@end