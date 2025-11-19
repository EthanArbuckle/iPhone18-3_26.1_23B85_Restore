@interface ASCLockupKeyDeveloperNameSymbolLoc
@end

@implementation ASCLockupKeyDeveloperNameSymbolLoc

uint64_t __get_ASCLockupKeyDeveloperNameSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = AppStoreComponentsLibrary();
  v2 = dlsym(v1, "_ASCLockupKeyDeveloperName");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  get_ASCLockupKeyDeveloperNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end