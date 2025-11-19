@interface SBUIViewControllerWrapperViewAccessibility
- (BOOL)_accessibilityInTodayViewController;
- (BOOL)shouldGroupAccessibilityChildren;
@end

@implementation SBUIViewControllerWrapperViewAccessibility

- (BOOL)_accessibilityInTodayViewController
{
  v2 = [(SBUIViewControllerWrapperViewAccessibility *)self subviews];
  v3 = [v2 indexOfObjectPassingTest:&__block_literal_global_22] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

uint64_t __81__SBUIViewControllerWrapperViewAccessibility__accessibilityInTodayViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Sbtodayviewcon.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)shouldGroupAccessibilityChildren
{
  if ([(SBUIViewControllerWrapperViewAccessibility *)self _accessibilityInTodayViewController])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SBUIViewControllerWrapperViewAccessibility;
  return [(SBUIViewControllerWrapperViewAccessibility *)&v4 shouldGroupAccessibilityChildren];
}

@end