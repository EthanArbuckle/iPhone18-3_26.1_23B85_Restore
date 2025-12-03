@interface UILabelAccessibility__PassKitUI__UIKit
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UILabelAccessibility__PassKitUI__UIKit

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UILabelAccessibility__PassKitUI__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXPKAmountToFillLabel"];

  if (v4)
  {
    accessibilityLabel = accessibilityLocalizedString(@"pass.amount");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UILabelAccessibility__PassKitUI__UIKit;
    accessibilityLabel = [(UILabelAccessibility__PassKitUI__UIKit *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  accessibilityIdentification = [(UILabelAccessibility__PassKitUI__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXPKAmountToFillLabel"];

  if (v4 && ([(UILabelAccessibility__PassKitUI__UIKit *)self _accessibilityValueForKey:@"AXPKAmountLabelCurrencySymbol"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = MEMORY[0x29EDBA0F8];
    selfCopy = self;
    text = [(UILabelAccessibility__PassKitUI__UIKit *)selfCopy text];
    accessibilityValue = [v7 stringWithFormat:@"%@%@", v6, text];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UILabelAccessibility__PassKitUI__UIKit;
    accessibilityValue = [(UILabelAccessibility__PassKitUI__UIKit *)&v12 accessibilityValue];
  }

  return accessibilityValue;
}

@end