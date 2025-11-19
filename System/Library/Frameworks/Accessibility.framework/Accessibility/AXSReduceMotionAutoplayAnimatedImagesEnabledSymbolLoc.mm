@interface AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc
@end

@implementation AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc

void *__get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSReduceMotionAutoplayAnimatedImagesEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end