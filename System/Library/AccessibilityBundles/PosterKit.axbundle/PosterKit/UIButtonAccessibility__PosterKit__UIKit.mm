@interface UIButtonAccessibility__PosterKit__UIKit
- (id)accessibilityLabel;
@end

@implementation UIButtonAccessibility__PosterKit__UIKit

- (id)accessibilityLabel
{
  v5.receiver = self;
  v5.super_class = UIButtonAccessibility__PosterKit__UIKit;
  accessibilityLabel = [(UIButtonAccessibility__PosterKit__UIKit *)&v5 accessibilityLabel];
  if (([accessibilityLabel isEqualToString:@"square.2.stack.3d"] & 1) != 0 || (objc_msgSend(accessibilityLabel, "isEqualToString:", @"square.2.layers.3d") & 1) != 0 || objc_msgSend(accessibilityLabel, "isEqualToString:", @"square.2.layers.3d.fill"))
  {
    v3 = accessibilityLocalizedString(@"primary.action.button.depth.effect.label");

    accessibilityLabel = v3;
  }

  return accessibilityLabel;
}

@end