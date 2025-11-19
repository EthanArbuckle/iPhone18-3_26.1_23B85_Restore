@interface AccessibilityNodeAccessibility__WidgetRenderer__SwiftUI
- (BOOL)accessibilityRespondsToUserInteraction;
@end

@implementation AccessibilityNodeAccessibility__WidgetRenderer__SwiftUI

- (BOOL)accessibilityRespondsToUserInteraction
{
  if (AXProcessIsWidgetRenderer())
  {
    return [(AccessibilityNodeAccessibility__WidgetRenderer__SwiftUI *)self safeBoolForKey:@"_accessibilityExplicitlyNonInteractable"]^ 1;
  }

  v4.receiver = self;
  v4.super_class = AccessibilityNodeAccessibility__WidgetRenderer__SwiftUI;
  return [(AccessibilityNodeAccessibility__WidgetRenderer__SwiftUI *)&v4 accessibilityRespondsToUserInteraction];
}

@end