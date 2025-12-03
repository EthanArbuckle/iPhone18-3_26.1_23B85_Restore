@interface AccessibilityNodeAccessibility__Maps__SwiftUI
- (CGPoint)accessibilityActivationPoint;
- (unint64_t)accessibilityTraits;
@end

@implementation AccessibilityNodeAccessibility__Maps__SwiftUI

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = AccessibilityNodeAccessibility__Maps__SwiftUI;
  accessibilityTraits = [(AccessibilityNodeAccessibility__Maps__SwiftUI *)&v8 accessibilityTraits];
  accessibilityIdentifier = [(AccessibilityNodeAccessibility__Maps__SwiftUI *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"CardHeader"];

  v6 = *MEMORY[0x29EDC7F80];
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

- (CGPoint)accessibilityActivationPoint
{
  accessibilityIdentifier = [(AccessibilityNodeAccessibility__Maps__SwiftUI *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"PlaceSummaryAccessoryViewImageView-PlaceSummaryTitleLabel-PlaceSummaryLabel-PlaceSummaryLabel-UserGeneratedGuideButton-PlaceSummaryActionButtonsGrid"];

  v5 = 5.0;
  v6 = 5.0;
  if ((v4 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = AccessibilityNodeAccessibility__Maps__SwiftUI;
    [(AccessibilityNodeAccessibility__Maps__SwiftUI *)&v7 accessibilityActivationPoint:5.0];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

@end