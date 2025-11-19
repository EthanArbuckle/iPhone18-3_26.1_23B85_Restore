@interface GenericGrayLinear
@end

@implementation GenericGrayLinear

void __create_GenericGrayLinear_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Generic_Gray_Linear_data, 356, *MEMORY[0x1E695E498]);
  create_GenericGrayLinear_profile = ColorSyncProfileCreateSingleton(3, v0, 0xFC3AA1A740CD5822, 0x1162A18CD8FE074FLL, @"/System/Library/ColorSync/Profiles/Generic Gray Linear.icc", 0, 0);

  CFRelease(v0);
}

@end