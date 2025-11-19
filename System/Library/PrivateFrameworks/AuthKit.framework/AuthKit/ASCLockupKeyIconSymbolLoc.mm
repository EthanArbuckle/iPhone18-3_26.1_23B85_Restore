@interface ASCLockupKeyIconSymbolLoc
@end

@implementation ASCLockupKeyIconSymbolLoc

uint64_t __get_ASCLockupKeyIconSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = AppStoreComponentsLibrary();
  v2 = dlsym(v1, "_ASCLockupKeyIcon");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  get_ASCLockupKeyIconSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end