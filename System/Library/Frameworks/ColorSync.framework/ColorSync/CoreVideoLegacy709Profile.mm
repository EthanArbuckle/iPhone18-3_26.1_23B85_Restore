@interface CoreVideoLegacy709Profile
@end

@implementation CoreVideoLegacy709Profile

void __create_CoreVideoLegacy709Profile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, CoreVideoLegacy709_data, 660, *MEMORY[0x1E695E498]);
  v1 = create(0, v0, 2, 0);
  if (v1)
  {
    *(v1 + 136) = xmmword_19A96E460;
  }

  create_CoreVideoLegacy709Profile_profile = v1;

  CFRelease(v0);
}

@end