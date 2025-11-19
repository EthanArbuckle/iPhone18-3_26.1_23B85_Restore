@interface AXSClarityBoardEnabledSymbolLoc
@end

@implementation AXSClarityBoardEnabledSymbolLoc

void *__get_AXSClarityBoardEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSClarityBoardEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSClarityBoardEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end