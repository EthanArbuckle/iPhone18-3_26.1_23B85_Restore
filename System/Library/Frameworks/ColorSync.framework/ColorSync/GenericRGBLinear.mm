@interface GenericRGBLinear
@end

@implementation GenericRGBLinear

void __create_GenericRGBLinear_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, Generic_RGB_Linear_data, 492, *MEMORY[0x1E695E498]);
  create_GenericRGBLinear_profile = ColorSyncProfileCreateSingleton(14, v0, 0xC9FEA2D55522F722, 0xC93D51EE795FC39CLL, @"/System/Library/ColorSync/Profiles/Generic RGB Linear.icc", 0, 0);

  CFRelease(v0);
}

@end