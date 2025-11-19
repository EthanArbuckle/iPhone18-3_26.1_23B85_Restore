@interface UITextFieldAccessibility__ChatKit__UIKit
- (BOOL)_accessibilityOverridesInvalidFrames;
@end

@implementation UITextFieldAccessibility__ChatKit__UIKit

- (BOOL)_accessibilityOverridesInvalidFrames
{
  v3 = [(UITextFieldAccessibility__ChatKit__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"GroupNameField"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UITextFieldAccessibility__ChatKit__UIKit;
  return [(UITextFieldAccessibility__ChatKit__UIKit *)&v6 _accessibilityOverridesInvalidFrames];
}

@end