@interface SBUIAccessibilityElementWithDefinitelyVisibleFrameButOnlyForSwitchInTigris
- (BOOL)_accessibilityHasVisibleFrame;
@end

@implementation SBUIAccessibilityElementWithDefinitelyVisibleFrameButOnlyForSwitchInTigris

- (BOOL)_accessibilityHasVisibleFrame
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBUIAccessibilityElementWithDefinitelyVisibleFrameButOnlyForSwitchInTigris;
  return [(SBUIAccessibilityElementWithDefinitelyVisibleFrameButOnlyForSwitchInTigris *)&v4 _accessibilityHasVisibleFrame];
}

@end