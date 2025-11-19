@interface UIButtonAccessibility__Social__UIKit
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UIButtonAccessibility__Social__UIKit

- (id)accessibilityLabel
{
  v3 = [(UIButtonAccessibility__Social__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AccountSelector"];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"account.selector.label");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIButtonAccessibility__Social__UIKit;
    v5 = [(UIButtonAccessibility__Social__UIKit *)&v7 accessibilityLabel];
  }

  return v5;
}

- (id)accessibilityHint
{
  v3 = [(UIButtonAccessibility__Social__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AccountSelector"];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"account.selector.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIButtonAccessibility__Social__UIKit;
    v5 = [(UIButtonAccessibility__Social__UIKit *)&v7 accessibilityHint];
  }

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(UIButtonAccessibility__Social__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AccountSelector"];

  if (v4)
  {
    v10 = self;
    v5 = &selRef_accessibilityLabel;
    v6 = &v10;
  }

  else
  {
    v9 = self;
    v5 = &selRef_accessibilityValue;
    v6 = &v9;
  }

  v6[1] = UIButtonAccessibility__Social__UIKit;
  v7 = objc_msgSendSuper2(v6, *v5, v9);

  return v7;
}

@end