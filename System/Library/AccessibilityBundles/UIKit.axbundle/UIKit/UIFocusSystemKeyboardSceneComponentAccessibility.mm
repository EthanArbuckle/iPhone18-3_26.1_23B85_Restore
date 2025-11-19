@interface UIFocusSystemKeyboardSceneComponentAccessibility
@end

@implementation UIFocusSystemKeyboardSceneComponentAccessibility

double __64___UIFocusSystemKeyboardSceneComponentAccessibility_focusSystem__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x29EDC7DD8] _scenesIncludingInternal:1];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end