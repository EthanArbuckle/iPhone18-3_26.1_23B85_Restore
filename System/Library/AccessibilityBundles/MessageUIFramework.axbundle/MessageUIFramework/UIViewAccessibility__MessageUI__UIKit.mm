@interface UIViewAccessibility__MessageUI__UIKit
- (BOOL)_accessibilityOverridesInvisibility;
@end

@implementation UIViewAccessibility__MessageUI__UIKit

- (BOOL)_accessibilityOverridesInvisibility
{
  if (![(UIViewAccessibility__MessageUI__UIKit *)self _axIsCheckingWhetherOverridesInvisibility])
  {
    [(UIViewAccessibility__MessageUI__UIKit *)self _axSetIsCheckingWhetherOverridesInvisibility:1];
    v5 = _AXSAutomationEnabled();
    if (v5 && (-[UIViewAccessibility__MessageUI__UIKit accessibilityIdentifier](self, "accessibilityIdentifier"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 isEqualToString:@"RecipientAtomContainerView"] & 1) != 0))
    {
      _accessibilityOverridesInvisibility = 1;
    }

    else
    {
      v7.receiver = self;
      v7.super_class = UIViewAccessibility__MessageUI__UIKit;
      _accessibilityOverridesInvisibility = [(UIViewAccessibility__MessageUI__UIKit *)&v7 _accessibilityOverridesInvisibility];
      if (!v5)
      {
LABEL_8:
        [(UIViewAccessibility__MessageUI__UIKit *)self _axSetIsCheckingWhetherOverridesInvisibility:0];
        return _accessibilityOverridesInvisibility;
      }
    }

    goto LABEL_8;
  }

  v8.receiver = self;
  v8.super_class = UIViewAccessibility__MessageUI__UIKit;
  return [(UIViewAccessibility__MessageUI__UIKit *)&v8 _accessibilityOverridesInvisibility];
}

@end