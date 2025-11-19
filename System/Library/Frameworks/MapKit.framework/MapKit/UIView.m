@interface UIView
@end

@implementation UIView

uint64_t __103__UIView_MKCrossPlatformOperations___mapkit_animateFromCurrentStateWithDuration_animations_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v2 setAnimationTimingFunction:v3];

  (*(*(a1 + 32) + 16))();
  v4 = MEMORY[0x1E6979518];

  return [v4 commit];
}

uint64_t __87__UIView_MKCrossPlatformOperations___mapkit_animateWithDuration_animations_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v2 setAnimationTimingFunction:v3];

  (*(*(a1 + 32) + 16))();
  v4 = MEMORY[0x1E6979518];

  return [v4 commit];
}

@end