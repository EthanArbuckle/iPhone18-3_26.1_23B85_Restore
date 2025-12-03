@interface UINavigationButtonAccessibility__ChatKit__UIKit
- (id)accessibilityLabel;
@end

@implementation UINavigationButtonAccessibility__ChatKit__UIKit

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UINavigationButtonAccessibility__ChatKit__UIKit *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"composeButton"])
  {
    accessibilityLabel = accessibilityLocalizedString(@"compose.button.text");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationButtonAccessibility__ChatKit__UIKit;
    accessibilityLabel = [(UINavigationButtonAccessibility__ChatKit__UIKit *)&v7 accessibilityLabel];
  }

  v5 = accessibilityLabel;

  return v5;
}

@end