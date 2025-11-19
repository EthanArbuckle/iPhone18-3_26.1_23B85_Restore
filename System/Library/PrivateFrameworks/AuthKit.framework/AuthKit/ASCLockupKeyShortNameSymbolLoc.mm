@interface ASCLockupKeyShortNameSymbolLoc
@end

@implementation ASCLockupKeyShortNameSymbolLoc

uint64_t __get_ASCLockupKeyShortNameSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = AppStoreComponentsLibrary();
  v2 = dlsym(v1, "_ASCLockupKeyShortName");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  get_ASCLockupKeyShortNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end