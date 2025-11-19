@interface LSGetBundle
@end

@implementation LSGetBundle

void ___LSGetBundle_block_invoke()
{
  v0 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/Frameworks/CoreServices.framework", kCFURLPOSIXPathStyle, 1u);
  if (v0)
  {
    v1 = v0;
    _LSGetBundle::gBundleRef = _CFBundleCreateUnique();

    CFRelease(v1);
  }
}

@end