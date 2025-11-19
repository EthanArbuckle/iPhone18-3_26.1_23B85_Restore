@interface ASCLockupKeyTitleSymbolLoc
@end

@implementation ASCLockupKeyTitleSymbolLoc

uint64_t __get_ASCLockupKeyTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = AppStoreComponentsLibrary();
  v2 = dlsym(v1, "_ASCLockupKeyTitle");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  get_ASCLockupKeyTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end