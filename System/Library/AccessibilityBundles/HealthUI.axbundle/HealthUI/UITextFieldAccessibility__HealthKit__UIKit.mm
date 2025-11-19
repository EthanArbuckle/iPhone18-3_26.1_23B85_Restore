@interface UITextFieldAccessibility__HealthKit__UIKit
- (id)accessibilityValue;
@end

@implementation UITextFieldAccessibility__HealthKit__UIKit

- (id)accessibilityValue
{
  v3 = [(UITextFieldAccessibility__HealthKit__UIKit *)self text];
  v4 = AXBloodTypeStringFromString(v3, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UITextFieldAccessibility__HealthKit__UIKit;
    v6 = [(UITextFieldAccessibility__HealthKit__UIKit *)&v9 accessibilityValue];
  }

  v7 = v6;

  return v7;
}

@end