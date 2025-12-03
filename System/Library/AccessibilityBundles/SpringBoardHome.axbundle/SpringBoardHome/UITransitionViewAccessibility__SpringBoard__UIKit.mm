@interface UITransitionViewAccessibility__SpringBoard__UIKit
- (BOOL)accessibilityViewIsModal;
@end

@implementation UITransitionViewAccessibility__SpringBoard__UIKit

- (BOOL)accessibilityViewIsModal
{
  if (accessibilityViewIsModal_onceToken != -1)
  {
    [UITransitionViewAccessibility__SpringBoard__UIKit accessibilityViewIsModal];
  }

  _accessibilityWindow = [(UITransitionViewAccessibility__SpringBoard__UIKit *)self _accessibilityWindow];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UITransitionViewAccessibility__SpringBoard__UIKit;
  return [(UITransitionViewAccessibility__SpringBoard__UIKit *)&v6 accessibilityViewIsModal];
}

@end