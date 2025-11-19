@interface UINavigationButtonAccessibility__ChatKit__UIKit
- (id)accessibilityLabel;
@end

@implementation UINavigationButtonAccessibility__ChatKit__UIKit

- (id)accessibilityLabel
{
  v3 = [(UINavigationButtonAccessibility__ChatKit__UIKit *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"composeButton"])
  {
    v4 = accessibilityLocalizedString(@"compose.button.text");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationButtonAccessibility__ChatKit__UIKit;
    v4 = [(UINavigationButtonAccessibility__ChatKit__UIKit *)&v7 accessibilityLabel];
  }

  v5 = v4;

  return v5;
}

@end