@interface UIButtonBarButtonAccessibility__Podcasts__UIKit
- (BOOL)isAccessibilityElement;
@end

@implementation UIButtonBarButtonAccessibility__Podcasts__UIKit

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(UIButtonBarButtonAccessibility__Podcasts__UIKit *)self accessibilityLabel];
  if (accessibilityLabel)
  {
    v6.receiver = self;
    v6.super_class = UIButtonBarButtonAccessibility__Podcasts__UIKit;
    isAccessibilityElement = [(UIButtonBarButtonAccessibility__Podcasts__UIKit *)&v6 isAccessibilityElement];
  }

  else
  {
    isAccessibilityElement = 0;
  }

  return isAccessibilityElement;
}

@end