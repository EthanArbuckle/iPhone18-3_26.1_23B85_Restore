@interface AXSPrefersNonBlinkingCursorIndicatorSymbolLoc
@end

@implementation AXSPrefersNonBlinkingCursorIndicatorSymbolLoc

void *__get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSPrefersNonBlinkingCursorIndicator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end