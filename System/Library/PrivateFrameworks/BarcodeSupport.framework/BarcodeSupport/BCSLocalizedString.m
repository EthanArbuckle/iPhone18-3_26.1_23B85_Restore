@interface BCSLocalizedString
@end

@implementation BCSLocalizedString

void ___BCSLocalizedString_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dyld_image_path_containing_address();
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  [v4 stringWithFileSystemRepresentation:v3 length:strlen(v3)];
  v9 = _CFBundleCopyFrameworkURLForExecutablePath();

  v5 = v9;
  if (!v9)
  {
    [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v3 isDirectory:0 relativeToURL:0];
    v5 = _CFBundleCopyBundleURLForExecutableURL();
  }

  v10 = v5;
  v6 = [MEMORY[0x277CCA8D8] bundleWithURL:v5];
  v7 = *(a1 + 32);
  v8 = *v7;
  *v7 = v6;
}

@end