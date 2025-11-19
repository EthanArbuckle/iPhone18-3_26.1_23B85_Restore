@interface CGRectGetCenterSymbolLoc
@end

@implementation CGRectGetCenterSymbolLoc

void *__getAX_CGRectGetCenterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AX_CGRectGetCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAX_CGRectGetCenterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end