@interface ITUR709
@end

@implementation ITUR709

void __create_ITUR709_PQProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, ITU_709_PQ_data, 13332, *MEMORY[0x1E695E498]);
  create_ITUR709_PQProfile_profile = ColorSyncProfileCreateSingleton(22, v0, 0x2B8DC57EB96189ADLL, 0xA3C1C1D0D556288ALL, @"/System/Library/ColorSync/Profiles/ITU-709-PQ.icc", 1, 0);

  CFRelease(v0);
}

void __create_ITUR709_HLGProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, ITU_709_HLG_data, 7188, *MEMORY[0x1E695E498]);
  create_ITUR709_HLGProfile_profile = ColorSyncProfileCreateSingleton(21, v0, 0x38F895A3941D6361, 0x7C88837A512EA908, @"/System/Library/ColorSync/Profiles/ITU-709-HLG.icc", 1, 0);

  CFRelease(v0);
}

@end