@interface UIContextMenuCellContentViewAccessibility__Home__UIKit
- (id)accessibilityLabel;
@end

@implementation UIContextMenuCellContentViewAccessibility__Home__UIKit

- (id)accessibilityLabel
{
  v11.receiver = self;
  v11.super_class = UIContextMenuCellContentViewAccessibility__Home__UIKit;
  accessibilityLabel = [(UIContextMenuCellContentViewAccessibility__Home__UIKit *)&v11 accessibilityLabel];
  objc_opt_class();
  v4 = [(UIContextMenuCellContentViewAccessibility__Home__UIKit *)self safeValueForKey:@"iconImageView"];
  v5 = __UIAccessibilityCastAsClass();

  image = [v5 image];
  accessibilityIdentifier = [image accessibilityIdentifier];

  if ([accessibilityIdentifier isEqualToString:@"gear.badge"])
  {
    v10 = accessibilityLocalizedString(@"open.home.invitations");
    v8 = __UIAXStringForVariables();

    accessibilityLabel = v8;
  }

  return accessibilityLabel;
}

@end