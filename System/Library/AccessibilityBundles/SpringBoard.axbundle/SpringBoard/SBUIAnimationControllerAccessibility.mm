@interface SBUIAnimationControllerAccessibility
- (void)beginAnimation;
@end

@implementation SBUIAnimationControllerAccessibility

- (void)beginAnimation
{
  v4.receiver = self;
  v4.super_class = SBUIAnimationControllerAccessibility;
  [(SBUIAnimationControllerAccessibility *)&v4 beginAnimation];
  v3 = [(SBUIAnimationControllerAccessibility *)self safeValueForKey:@"_transitionContainer"];
  [v3 _accessibilitySetAllowsSiblingsWhenOvergrown:1];
}

@end