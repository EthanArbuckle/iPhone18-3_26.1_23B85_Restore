@interface UILabelAccessibility__Music__UIKit
- (BOOL)isAccessibilityElement;
@end

@implementation UILabelAccessibility__Music__UIKit

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(UILabelAccessibility__Music__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AXUIButtonLabelEmptyLabel"];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = UILabelAccessibility__Music__UIKit;
  return [(UILabelAccessibility__Music__UIKit *)&v6 isAccessibilityElement];
}

@end