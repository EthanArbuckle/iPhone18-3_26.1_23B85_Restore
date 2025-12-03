@interface PKPaletteToolViewAnimation
+ (void)performSelectionAnimations:(void *)animations completion:;
@end

@implementation PKPaletteToolViewAnimation

+ (void)performSelectionAnimations:(void *)animations completion:
{
  animationsCopy = animations;
  v5 = a2;
  objc_opt_self();
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v5 usingSpringWithDamping:animationsCopy initialSpringVelocity:0.55 options:0.0 animations:0.65 completion:0.0];
}

@end