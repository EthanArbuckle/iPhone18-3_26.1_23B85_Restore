@interface UITextFieldAccessibility__HealthKit__UIKit
- (id)accessibilityValue;
@end

@implementation UITextFieldAccessibility__HealthKit__UIKit

- (id)accessibilityValue
{
  text = [(UITextFieldAccessibility__HealthKit__UIKit *)self text];
  v4 = AXBloodTypeStringFromString(text, text);
  v5 = v4;
  if (v4)
  {
    accessibilityValue = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UITextFieldAccessibility__HealthKit__UIKit;
    accessibilityValue = [(UITextFieldAccessibility__HealthKit__UIKit *)&v9 accessibilityValue];
  }

  v7 = accessibilityValue;

  return v7;
}

@end