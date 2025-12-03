@interface UITextViewAccessibility__MobilePhone__UIKit
- (BOOL)_accessibilityActivateTextViewLink:(id)link;
@end

@implementation UITextViewAccessibility__MobilePhone__UIKit

- (BOOL)_accessibilityActivateTextViewLink:(id)link
{
  linkCopy = link;
  accessibilityContainer = [(UITextViewAccessibility__MobilePhone__UIKit *)self accessibilityContainer];
  v6 = [accessibilityContainer _accessibilityActivateTextViewLink:linkCopy];

  return v6;
}

@end