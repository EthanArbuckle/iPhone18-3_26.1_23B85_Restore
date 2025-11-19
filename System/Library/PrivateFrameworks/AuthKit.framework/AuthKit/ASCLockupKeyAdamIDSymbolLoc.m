@interface ASCLockupKeyAdamIDSymbolLoc
@end

@implementation ASCLockupKeyAdamIDSymbolLoc

uint64_t __get_ASCLockupKeyAdamIDSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = AppStoreComponentsLibrary();
  v2 = dlsym(v1, "_ASCLockupKeyAdamID");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  get_ASCLockupKeyAdamIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end