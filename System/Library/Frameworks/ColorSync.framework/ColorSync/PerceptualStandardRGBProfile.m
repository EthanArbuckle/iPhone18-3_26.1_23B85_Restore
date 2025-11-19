@interface PerceptualStandardRGBProfile
@end

@implementation PerceptualStandardRGBProfile

void __create_PerceptualStandardRGBProfile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, perceptual_standard_RGB_data, 54192, *MEMORY[0x1E695E498]);
  v1 = create(0, v0, 2, 0);
  if (v1)
  {
    *(v1 + 136) = xmmword_19A96E470;
  }

  create_PerceptualStandardRGBProfile_profile = v1;

  CFRelease(v0);
}

@end