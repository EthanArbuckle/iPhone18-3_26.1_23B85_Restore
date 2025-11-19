@interface AXSPrefersHorizontalTextLayoutSymbolLoc
@end

@implementation AXSPrefersHorizontalTextLayoutSymbolLoc

void *__get_AXSPrefersHorizontalTextLayoutSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSPrefersHorizontalTextLayout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSPrefersHorizontalTextLayoutSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end