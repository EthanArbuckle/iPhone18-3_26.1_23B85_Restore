@interface UIButtonAccessibility__Social__UIKit
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UIButtonAccessibility__Social__UIKit

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UIButtonAccessibility__Social__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AccountSelector"];

  if (v4)
  {
    accessibilityLabel = accessibilityLocalizedString(@"account.selector.label");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIButtonAccessibility__Social__UIKit;
    accessibilityLabel = [(UIButtonAccessibility__Social__UIKit *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  accessibilityIdentification = [(UIButtonAccessibility__Social__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AccountSelector"];

  if (v4)
  {
    accessibilityHint = accessibilityLocalizedString(@"account.selector.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIButtonAccessibility__Social__UIKit;
    accessibilityHint = [(UIButtonAccessibility__Social__UIKit *)&v7 accessibilityHint];
  }

  return accessibilityHint;
}

- (id)accessibilityValue
{
  accessibilityIdentification = [(UIButtonAccessibility__Social__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AccountSelector"];

  if (v4)
  {
    selfCopy = self;
    v5 = &selRef_accessibilityLabel;
    v6 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v5 = &selRef_accessibilityValue;
    v6 = &selfCopy2;
  }

  v6[1] = UIButtonAccessibility__Social__UIKit;
  v7 = objc_msgSendSuper2(v6, *v5, selfCopy2);

  return v7;
}

@end