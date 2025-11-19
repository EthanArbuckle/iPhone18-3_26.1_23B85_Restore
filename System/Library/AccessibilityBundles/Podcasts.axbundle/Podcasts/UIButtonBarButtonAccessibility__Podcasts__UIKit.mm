@interface UIButtonBarButtonAccessibility__Podcasts__UIKit
- (BOOL)isAccessibilityElement;
@end

@implementation UIButtonBarButtonAccessibility__Podcasts__UIKit

- (BOOL)isAccessibilityElement
{
  v3 = [(UIButtonBarButtonAccessibility__Podcasts__UIKit *)self accessibilityLabel];
  if (v3)
  {
    v6.receiver = self;
    v6.super_class = UIButtonBarButtonAccessibility__Podcasts__UIKit;
    v4 = [(UIButtonBarButtonAccessibility__Podcasts__UIKit *)&v6 isAccessibilityElement];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end