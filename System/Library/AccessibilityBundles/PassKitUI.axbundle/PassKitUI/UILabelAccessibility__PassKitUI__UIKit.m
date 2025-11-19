@interface UILabelAccessibility__PassKitUI__UIKit
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UILabelAccessibility__PassKitUI__UIKit

- (id)accessibilityLabel
{
  v3 = [(UILabelAccessibility__PassKitUI__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AXPKAmountToFillLabel"];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"pass.amount");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UILabelAccessibility__PassKitUI__UIKit;
    v5 = [(UILabelAccessibility__PassKitUI__UIKit *)&v7 accessibilityLabel];
  }

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(UILabelAccessibility__PassKitUI__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AXPKAmountToFillLabel"];

  if (v4 && ([(UILabelAccessibility__PassKitUI__UIKit *)self _accessibilityValueForKey:@"AXPKAmountLabelCurrencySymbol"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = MEMORY[0x29EDBA0F8];
    v8 = self;
    v9 = [(UILabelAccessibility__PassKitUI__UIKit *)v8 text];
    v10 = [v7 stringWithFormat:@"%@%@", v6, v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UILabelAccessibility__PassKitUI__UIKit;
    v10 = [(UILabelAccessibility__PassKitUI__UIKit *)&v12 accessibilityValue];
  }

  return v10;
}

@end