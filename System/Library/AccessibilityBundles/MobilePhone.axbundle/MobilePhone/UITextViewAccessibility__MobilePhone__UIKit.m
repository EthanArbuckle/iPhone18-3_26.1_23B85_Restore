@interface UITextViewAccessibility__MobilePhone__UIKit
- (BOOL)_accessibilityActivateTextViewLink:(id)a3;
@end

@implementation UITextViewAccessibility__MobilePhone__UIKit

- (BOOL)_accessibilityActivateTextViewLink:(id)a3
{
  v4 = a3;
  v5 = [(UITextViewAccessibility__MobilePhone__UIKit *)self accessibilityContainer];
  v6 = [v5 _accessibilityActivateTextViewLink:v4];

  return v6;
}

@end