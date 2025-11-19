@interface UIAccessibility.AccessibilityNavigationServicesEnabledObserver
- (void)update;
@end

@implementation UIAccessibility.AccessibilityNavigationServicesEnabledObserver

- (void)update
{

  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning() && !_AXSCommandAndControlEnabled())
  {
    IMAccessibilityIsFKAEnabledWithKeyboardAttached();
  }

  sub_1EED14();
}

@end