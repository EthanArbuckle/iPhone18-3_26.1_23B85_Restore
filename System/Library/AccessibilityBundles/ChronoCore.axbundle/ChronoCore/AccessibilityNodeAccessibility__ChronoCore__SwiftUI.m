@interface AccessibilityNodeAccessibility__ChronoCore__SwiftUI
- (BOOL)accessibilityRespondsToUserInteraction;
@end

@implementation AccessibilityNodeAccessibility__ChronoCore__SwiftUI

- (BOOL)accessibilityRespondsToUserInteraction
{
  if (AXProcessIsChronod())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = AccessibilityNodeAccessibility__ChronoCore__SwiftUI;
  return [(AccessibilityNodeAccessibility__ChronoCore__SwiftUI *)&v4 accessibilityRespondsToUserInteraction];
}

@end