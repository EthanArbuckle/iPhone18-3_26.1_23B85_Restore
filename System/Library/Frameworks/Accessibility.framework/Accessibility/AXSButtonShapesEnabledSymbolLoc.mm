@interface AXSButtonShapesEnabledSymbolLoc
@end

@implementation AXSButtonShapesEnabledSymbolLoc

void *__get_AXSButtonShapesEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSButtonShapesEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSButtonShapesEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end