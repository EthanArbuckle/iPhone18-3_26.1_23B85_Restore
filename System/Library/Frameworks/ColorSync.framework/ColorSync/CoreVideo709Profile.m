@interface CoreVideo709Profile
@end

@implementation CoreVideo709Profile

void __create_CoreVideo709Profile_block_invoke()
{
  v0 = CFDataCreateWithBytesNoCopy(0, CoreVideo709_data, 660, *MEMORY[0x1E695E498]);
  v1 = create(6, v0, 2, 1);
  if (v1)
  {
    *(v1 + 136) = xmmword_19A96E450;
  }

  create_CoreVideo709Profile_profile = v1;

  CFRelease(v0);
}

@end