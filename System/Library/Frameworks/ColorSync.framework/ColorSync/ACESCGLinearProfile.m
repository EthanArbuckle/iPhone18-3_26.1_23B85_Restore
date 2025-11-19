@interface ACESCGLinearProfile
@end

@implementation ACESCGLinearProfile

void __create_ACESCGLinearProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, ACESCG_Linear_data, 600, *MEMORY[0x1E695E498]);
  create_ACESCGLinearProfile_profile = ColorSyncProfileCreateSingleton(4, v0, 0x82E7BF8438EF974DLL, 0xAE5B64C6327DE136, @"/System/Library/ColorSync/Profiles/ACESCG Linear.icc", 0, 0);

  CFRelease(v0);
}

@end