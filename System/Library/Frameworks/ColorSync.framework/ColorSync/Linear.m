@interface Linear
@end

@implementation Linear

void __create_sRGB_Linear_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, sRGB_Linear_data, 548, *MEMORY[0x1E695E498]);
  create_sRGB_Linear_profile = ColorSyncProfileCreateSingleton(25, v0, 0xEDE7271E16CD0640, 0x35DA9FE53E4E543, @"/System/Library/ColorSync/Profiles/sRGB Linear.icc", 0, 0);

  CFRelease(v0);
}

@end