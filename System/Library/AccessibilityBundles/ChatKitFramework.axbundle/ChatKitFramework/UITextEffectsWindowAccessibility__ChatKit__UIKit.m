@interface UITextEffectsWindowAccessibility__ChatKit__UIKit
- (BOOL)_accessibilityWindowVisible;
@end

@implementation UITextEffectsWindowAccessibility__ChatKit__UIKit

- (BOOL)_accessibilityWindowVisible
{
  if (_AXCKIsActionWindowShowing())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UITextEffectsWindowAccessibility__ChatKit__UIKit;
  return [(UITextEffectsWindowAccessibility__ChatKit__UIKit *)&v4 _accessibilityWindowVisible];
}

@end